; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/tilcdc/tilcdc_crtc.c_pt.bc'
source_filename = "../drivers/gpu/drm/tilcdc/tilcdc_crtc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.drm_crtc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.tilcdc_crtc = type { %struct.drm_crtc, %struct.drm_plane, ptr, ptr, %struct.mutex, i8, i8, %struct.wait_queue_head, i8, %struct.spinlock, i32, i64, i32, ptr, i8, i32, i8, %struct.work_struct, i32, ptr, %struct.completion }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.79, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.88, ptr, i32, ptr, i8, i32 }
%struct.anon.79 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.88 = type { i32, ptr }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.tilcdc_drm_private = type { ptr, ptr, i32, i32, i32, i32, i32, ptr, i32, %struct.notifier_block, ptr, ptr, i32, [8 x ptr], i32, [8 x ptr], ptr, ptr, i8, i8, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_gem_cma_object = type { %struct.drm_gem_object, i32, ptr, ptr, i8 }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.84, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.84 = type { [4 x i8] }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.tilcdc_panel_info = type { i32, i32, i32, i32, i32, i8, i8, i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.__drm_planes_state = type { ptr, ptr, ptr, ptr }

@tilcdc_crtc_update_fb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 608, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"already pending page flip!\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tilcdc_crtc_update_fb\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/gpu/drm/tilcdc/tilcdc_crtc.c\00", [59 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tilcdc_crtc_update_fb._entry_ptr = internal global ptr @tilcdc_crtc_update_fb._entry, section ".printk_index", align 4
@tilcdc_crtc_irq._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.tilcdc_crtc_irq = private unnamed_addr constant [16 x i8] c"tilcdc_crtc_irq\00", align 1
@tilcdc_crtc_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @__func__.tilcdc_crtc_irq, ptr @.str.2, i32 957, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s(0x%08x): FIFO underflow\00", [37 x i8] zeroinitializer }, align 32
@tilcdc_crtc_irq._entry_ptr = internal global ptr @tilcdc_crtc_irq._entry, section ".printk_index", align 4
@tilcdc_crtc_irq._rs.7 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@tilcdc_crtc_irq._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @__func__.tilcdc_crtc_irq, ptr @.str.2, i32 971, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s(0x%08x): Sync lost\00", [42 x i8] zeroinitializer }, align 32
@tilcdc_crtc_irq._entry_ptr.10 = internal global ptr @tilcdc_crtc_irq._entry.8, section ".printk_index", align 4
@tilcdc_crtc_irq._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @__func__.tilcdc_crtc_irq, ptr @.str.2, i32 986, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s(0x%08x): Sync lost flood detected, recovering\00", [47 x i8] zeroinitializer }, align 32
@tilcdc_crtc_irq._entry_ptr.13 = internal global ptr @tilcdc_crtc_irq._entry.11, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@tilcdc_crtc_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&tilcdc_crtc->enable_lock\00", [38 x i8] zeroinitializer }, align 32
@tilcdc_crtc_create.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&tilcdc_crtc->frame_done_wq\00", [36 x i8] zeroinitializer }, align 32
@tilcdc_crtc_create.__key.17 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&tilcdc_crtc->irq_lock\00", [41 x i8] zeroinitializer }, align 32
@tilcdc_crtc_create.__key.19 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"(work_completion)(&tilcdc_crtc->recover_work)\00", [50 x i8] zeroinitializer }, align 32
@tilcdc_crtc_funcs = internal constant { %struct.drm_crtc_funcs, [32 x i8] } { %struct.drm_crtc_funcs { ptr @tilcdc_crtc_reset, ptr null, ptr null, ptr null, ptr null, ptr @tilcdc_crtc_destroy, ptr @drm_atomic_helper_set_config, ptr @drm_atomic_helper_page_flip, ptr null, ptr null, ptr @drm_atomic_helper_crtc_duplicate_state, ptr @drm_atomic_helper_crtc_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tilcdc_crtc_enable_vblank, ptr @tilcdc_crtc_disable_vblank, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tilcdc crtc\00", [20 x i8] zeroinitializer }, align 32
@tilcdc_crtc_helper_funcs = internal constant { %struct.drm_crtc_helper_funcs, [32 x i8] } { %struct.drm_crtc_helper_funcs { ptr null, ptr null, ptr null, ptr @tilcdc_crtc_mode_valid, ptr @tilcdc_crtc_mode_fixup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tilcdc_crtc_atomic_check, ptr null, ptr @tilcdc_crtc_atomic_flush, ptr @tilcdc_crtc_atomic_enable, ptr @tilcdc_crtc_atomic_disable, ptr null }, [32 x i8] zeroinitializer }, align 32
@tilcdc_crtc_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 1063, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Port node not found in %pOF\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tilcdc_crtc_create\00", [45 x i8] zeroinitializer }, align 32
@tilcdc_crtc_create._entry_ptr = internal global ptr @tilcdc_crtc_create._entry, section ".printk_index", align 4
@tilcdc_crtc_off._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 515, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: timeout waiting for framedone\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tilcdc_crtc_off\00", [16 x i8] zeroinitializer }, align 32
@tilcdc_crtc_off._entry_ptr = internal global ptr @tilcdc_crtc_off._entry, section ".printk_index", align 4
@tilcdc_crtc_set_clk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 229, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"failed to set the pixel clock - unable to read current lcdc clock rate\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tilcdc_crtc_set_clk\00", [44 x i8] zeroinitializer }, align 32
@tilcdc_crtc_set_clk._entry_ptr = internal global ptr @tilcdc_crtc_set_clk._entry, section ".printk_index", align 4
@tilcdc_crtc_set_clk._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.2, i32 247, ptr @.str.30, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"effective pixel clock rate (%luHz) differs from the requested rate (%luHz)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@tilcdc_crtc_set_clk._entry_ptr.31 = internal global ptr @tilcdc_crtc_set_clk._entry.28, section ".printk_index", align 4
@.str.32 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"lcd_clk=%u, mode clock=%d, div=%u\0A\00", [61 x i8] zeroinitializer }, align 32
@tilcdc_crtc_set_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 307, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"invalid burst size\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tilcdc_crtc_set_mode\00", [43 x i8] zeroinitializer }, align 32
@tilcdc_crtc_set_mode._entry_ptr = internal global ptr @tilcdc_crtc_set_mode._entry, section ".printk_index", align 4
@.str.35 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%dx%d, hbp=%u, hfp=%u, hsw=%u, vbp=%u, vfp=%u, vsw=%u\0A\00", [41 x i8] zeroinitializer }, align 32
@tilcdc_crtc_set_mode._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.34, ptr @.str.2, i32 393, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"invalid pixel format\0A\00", [42 x i8] zeroinitializer }, align 32
@tilcdc_crtc_set_mode._entry_ptr.38 = internal global ptr @tilcdc_crtc_set_mode._entry.36, section ".printk_index", align 4
@tilcdc_crtc_load_palette._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.2, i32 130, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: Palette loading timeout\00", [36 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tilcdc_crtc_load_palette\00", [39 x i8] zeroinitializer }, align 32
@tilcdc_crtc_load_palette._entry_ptr = internal global ptr @tilcdc_crtc_load_palette._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.41 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@tilcdc_crtc_recover_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 575, ptr @.str.44, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: Reset CRTC\00", [17 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tilcdc_crtc_recover_work\00", [39 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@tilcdc_crtc_recover_work._entry_ptr = internal global ptr @tilcdc_crtc_recover_work._entry, section ".printk_index", align 4
@tilcdc_crtc_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.45, ptr @.str.2, i32 753, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tilcdc_crtc_reset\00", [46 x i8] zeroinitializer }, align 32
@tilcdc_crtc_reset._entry_ptr = internal global ptr @tilcdc_crtc_reset._entry, section ".printk_index", align 4
@.str.46 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Processing mode %dx%d@%d with pixel clock %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Pruning mode: Horizontal Back Porch out of range\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Pruning mode: Horizontal Front Porch out of range\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Pruning mode: Horizontal Sync Width out of range\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Pruning mode: Vertical Back Porch out of range\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Pruning mode: Vertical Front Porch out of range\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Pruning mode: Vertical Sync Width out of range\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Pruning mode: pixel clock too high\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Pruning mode: exceeds defined bandwidth limit\0A\00", [49 x i8] zeroinitializer }, align 32
@tilcdc_crtc_atomic_check.__UNIQUE_ID_ddebug331 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.55, ptr @.str.56, ptr @.str.2, ptr @.str.57, i8 0, i8 -86, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tilcdc\00", [25 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tilcdc_crtc_atomic_check\00", [39 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"CRTC primary plane must be present\00", [61 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16]
@__sancov_gen_cov_switch_values.58 = internal global [8 x i64] [i64 6, i64 32, i64 875709016, i64 875710274, i64 875710290, i64 875713112, i64 909199170, i64 909199186]
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 608, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 956, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 970, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 984, i32 5 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 1042, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 1044, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 1046, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 1047, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant [18 x i8] c"tilcdc_crtc_funcs\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 758, i32 36 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 1053, i32 6 }
@___asan_gen_.134 = private unnamed_addr constant [25 x i8] c"tilcdc_crtc_helper_funcs\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 859, i32 43 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 1062, i32 4 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 514, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 228, i32 4 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 245, i32 4 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 253, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 307, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 321, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 393, i32 4 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 130, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.207 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.207, i32 87, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 575, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 752, i32 4 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 791, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 803, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 808, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 813, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 818, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 823, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 828, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 837, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 852, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.261 = private constant [40 x i8] c"../drivers/gpu/drm/tilcdc/tilcdc_crtc.c\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.261, i32 681, i32 3 }
@llvm.compiler.used = appending global [81 x ptr] [ptr @tilcdc_crtc_create._entry, ptr @tilcdc_crtc_create._entry_ptr, ptr @tilcdc_crtc_irq._entry, ptr @tilcdc_crtc_irq._entry.11, ptr @tilcdc_crtc_irq._entry.8, ptr @tilcdc_crtc_irq._entry_ptr, ptr @tilcdc_crtc_irq._entry_ptr.10, ptr @tilcdc_crtc_irq._entry_ptr.13, ptr @tilcdc_crtc_load_palette._entry, ptr @tilcdc_crtc_load_palette._entry_ptr, ptr @tilcdc_crtc_off._entry, ptr @tilcdc_crtc_off._entry_ptr, ptr @tilcdc_crtc_recover_work._entry, ptr @tilcdc_crtc_recover_work._entry_ptr, ptr @tilcdc_crtc_reset._entry, ptr @tilcdc_crtc_reset._entry_ptr, ptr @tilcdc_crtc_set_clk._entry, ptr @tilcdc_crtc_set_clk._entry.28, ptr @tilcdc_crtc_set_clk._entry_ptr, ptr @tilcdc_crtc_set_clk._entry_ptr.31, ptr @tilcdc_crtc_set_mode._entry, ptr @tilcdc_crtc_set_mode._entry.36, ptr @tilcdc_crtc_set_mode._entry_ptr, ptr @tilcdc_crtc_set_mode._entry_ptr.38, ptr @tilcdc_crtc_update_fb._entry, ptr @tilcdc_crtc_update_fb._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @tilcdc_crtc_irq._rs, ptr @.str.5, ptr @.str.6, ptr @tilcdc_crtc_irq._rs.7, ptr @.str.9, ptr @.str.12, ptr @tilcdc_crtc_create.__key, ptr @.str.14, ptr @tilcdc_crtc_create.__key.15, ptr @.str.16, ptr @tilcdc_crtc_create.__key.17, ptr @.str.18, ptr @tilcdc_crtc_create.__key.19, ptr @.str.20, ptr @tilcdc_crtc_funcs, ptr @.str.21, ptr @tilcdc_crtc_helper_funcs, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @init_completion.__key, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57], section "llvm.metadata"
@0 = internal global [68 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tilcdc_crtc_update_fb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tilcdc_crtc_irq._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tilcdc_crtc_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tilcdc_crtc_irq._rs.7 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tilcdc_crtc_irq._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tilcdc_crtc_irq._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tilcdc_crtc_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tilcdc_crtc_create.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tilcdc_crtc_create.__key.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tilcdc_crtc_create.__key.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tilcdc_crtc_funcs to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tilcdc_crtc_helper_funcs to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tilcdc_crtc_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tilcdc_crtc_off._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tilcdc_crtc_set_clk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tilcdc_crtc_set_clk._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tilcdc_crtc_set_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tilcdc_crtc_set_mode._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tilcdc_crtc_load_palette._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tilcdc_crtc_recover_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tilcdc_crtc_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tilcdc_crtc_shutdown(ptr noundef %crtc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @tilcdc_crtc_off(ptr noundef %crtc, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tilcdc_crtc_off(ptr noundef %crtc, i1 noundef zeroext %shutdown) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %enable_lock = getelementptr inbounds %struct.tilcdc_crtc, ptr %crtc, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %enable_lock, i32 noundef 0) #7
  br i1 %shutdown, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %shutdown2 = getelementptr inbounds %struct.tilcdc_crtc, ptr %crtc, i32 0, i32 6
  %2 = ptrtoint ptr %shutdown2 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %shutdown2, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %enabled = getelementptr inbounds %struct.tilcdc_crtc, ptr %crtc, i32 0, i32 5
  %3 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %enabled, align 4, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool3.not = icmp eq i8 %4, 0
  br i1 %tobool3.not, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef %enable_lock) #7
  br label %cleanup69

if.end6:                                          ; preds = %if.end
  %frame_done = getelementptr inbounds %struct.tilcdc_crtc, ptr %crtc, i32 0, i32 8
  %5 = ptrtoint ptr %frame_done to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %frame_done, align 4
  %dev_private.i.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_private.i.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 40
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !127
  %11 = and i32 %10, -16777217
  %12 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_private.i.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %15, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %11) #7, !srcloc !129
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 512) #7
  %16 = ptrtoint ptr %frame_done to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %frame_done, align 4, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool11.not.not = icmp eq i8 %17, 0
  br i1 %tobool11.not.not, label %if.then21, label %if.end6.if.end54_crit_edge

if.end6.if.end54_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

if.then21:                                        ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #7
  %18 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #7
  %frame_done_wq = getelementptr inbounds %struct.tilcdc_crtc, ptr %crtc, i32 0, i32 7
  %call24110 = call i32 @prepare_to_wait_event(ptr noundef %frame_done_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #7
  %19 = ptrtoint ptr %frame_done to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %frame_done, align 4, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool27.not111.not = icmp eq i8 %20, 0
  br i1 %tobool27.not111.not, label %if.then21.cleanup_crit_edge, label %if.end47.thread

if.then21.cleanup_crit_edge:                      ; preds = %if.then21
  br label %cleanup

if.end47.thread:                                  ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  call void @finish_wait(ptr noundef %frame_done_wq, ptr noundef nonnull %__wq_entry) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #7
  br label %if.end54

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then21.cleanup_crit_edge
  %__ret22.1113 = phi i32 [ %__ret22.1, %cleanup.cleanup_crit_edge ], [ 50, %if.then21.cleanup_crit_edge ]
  %call44 = call i32 @schedule_timeout(i32 noundef %__ret22.1113) #7
  %call24 = call i32 @prepare_to_wait_event(ptr noundef %frame_done_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #7
  %21 = ptrtoint ptr %frame_done to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %frame_done, align 4, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool27.not = icmp eq i8 %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool31.not = icmp eq i32 %call44, 0
  %spec.store.select74 = select i1 %tobool31.not, i32 1, i32 %call44
  %__ret22.1 = select i1 %tobool27.not, i32 %call44, i32 %spec.store.select74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret22.1)
  %tobool37.not = icmp eq i32 %__ret22.1, 0
  %not.tobool27.not = xor i1 %tobool27.not, true
  %23 = select i1 %not.tobool27.not, i1 true, i1 %tobool37.not
  br i1 %23, label %if.end47, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end47:                                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret22.1)
  %phi.cmp = icmp eq i32 %__ret22.1, 0
  call void @finish_wait(ptr noundef %frame_done_wq, ptr noundef nonnull %__wq_entry) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #7
  br i1 %phi.cmp, label %do.end52, label %if.end47.if.end54_crit_edge

if.end47.if.end54_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

do.end52:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  %dev53 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %24 = ptrtoint ptr %dev53 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev53, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25) #10
  br label %if.end54

if.end54:                                         ; preds = %do.end52, %if.end47.if.end54_crit_edge, %if.end47.thread, %if.end6.if.end54_crit_edge
  call void @drm_crtc_vblank_off(ptr noundef %crtc) #7
  %26 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %crtc, align 8
  %event_lock = getelementptr inbounds %struct.drm_device, ptr %27, i32 0, i32 28
  call void @_raw_spin_lock_irq(ptr noundef %event_lock) #7
  %state = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %28 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %state, align 4
  %event = getelementptr inbounds %struct.drm_crtc_state, ptr %29, i32 0, i32 18
  %30 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %event, align 4
  %tobool56.not = icmp eq ptr %31, null
  br i1 %tobool56.not, label %if.end54.if.end62_crit_edge, label %if.then57

if.end54.if.end62_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

if.then57:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  call void @drm_crtc_send_vblank_event(ptr noundef %crtc, ptr noundef nonnull %31) #7
  %32 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %state, align 4
  %event61 = getelementptr inbounds %struct.drm_crtc_state, ptr %33, i32 0, i32 18
  %34 = ptrtoint ptr %event61 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %event61, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.then57, %if.end54.if.end62_crit_edge
  %35 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %crtc, align 8
  %event_lock64 = getelementptr inbounds %struct.drm_device, ptr %36, i32 0, i32 28
  call void @_raw_spin_unlock_irq(ptr noundef %event_lock64) #7
  %37 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev_private.i.i, align 4
  %rev.i = getelementptr inbounds %struct.tilcdc_drm_private, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %rev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %cmp.i = icmp eq i32 %40, 1
  %41 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %38, align 4
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i.i = getelementptr i8, ptr %42, i32 40
  %43 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !126
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !127
  %44 = and i32 %43, -2013265921
  %45 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev_private.i.i, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  %add.ptr.i4.i.i = getelementptr i8, ptr %48, i32 40
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 %44) #7, !srcloc !129
  %49 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev_private.i.i, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %add.ptr.i.i5.i = getelementptr i8, ptr %52, i32 64
  %53 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i5.i) #7, !srcloc !126
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !127
  %54 = and i32 %53, -67108865
  %55 = ptrtoint ptr %dev_private.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev_private.i.i, align 4
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %56, align 4
  %add.ptr.i4.i7.i = getelementptr i8, ptr %58, i32 64
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i7.i, i32 %54) #7, !srcloc !129
  br label %tilcdc_crtc_disable_irqs.exit

if.else.i:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i103 = getelementptr i8, ptr %42, i32 100
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i103, i32 1694564352) #7, !srcloc !129
  br label %tilcdc_crtc_disable_irqs.exit

tilcdc_crtc_disable_irqs.exit:                    ; preds = %if.else.i, %if.then.i
  %dev65 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %59 = ptrtoint ptr %dev65 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev65, align 4
  %call.i = call i32 @__pm_runtime_idle(ptr noundef %60, i32 noundef 4) #7
  %61 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %enabled, align 4
  call void @mutex_unlock(ptr noundef %enable_lock) #7
  br label %cleanup69

cleanup69:                                        ; preds = %tilcdc_crtc_disable_irqs.exit, %if.then4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tilcdc_crtc_update_fb(ptr noundef %crtc, ptr noundef %fb, ptr noundef %event) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %event2 = getelementptr inbounds %struct.tilcdc_crtc, ptr %crtc, i32 0, i32 3
  %0 = ptrtoint ptr %event2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %event2, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %crtc, align 8
  %dev3 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %event2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %event, ptr %event2, align 4
  %enable_lock = getelementptr inbounds %struct.tilcdc_crtc, ptr %crtc, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %enable_lock, i32 noundef 0) #7
  %enabled = getelementptr inbounds %struct.tilcdc_crtc, ptr %crtc, i32 0, i32 5
  %7 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %enabled, align 4, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool5.not = icmp eq i8 %8, 0
  br i1 %tobool5.not, label %if.end.if.end24_crit_edge, label %if.then6

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then6:                                         ; preds = %if.end
  %irq_lock = getelementptr inbounds %struct.tilcdc_crtc, ptr %crtc, i32 0, i32 9
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #7
  %last_vblank = getelementptr inbounds %struct.tilcdc_crtc, ptr %crtc, i32 0, i32 11
  %9 = ptrtoint ptr %last_vblank to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %last_vblank, align 8
  %hvtotal_us = getelementptr inbounds %struct.tilcdc_crtc, ptr %crtc, i32 0, i32 12
  %11 = ptrtoint ptr %hvtotal_us to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hvtotal_us, align 8
  %conv15 = zext i32 %12 to i64
  %mul.i = mul nuw nsw i64 %conv15, 1000
  %call17 = tail call i64 @ktime_get() #7
  %add.i = sub i64 %10, %call17
  %sub = add i64 %add.i, %mul.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub)
  %cmp8.i.i = icmp slt i64 %sub, 0
  %13 = tail call i64 @llvm.abs.i64(i64 %sub, i1 false) #7
  %14 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %13, i32 0) #11, !srcloc !130
  %asmresult.i.i.i = extractvalue { i64, i32 } %14, 0
  %asmresult4.i.i.i = extractvalue { i64, i32 } %14, 1
  %15 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %13, i64 %asmresult.i.i.i, i32 %asmresult4.i.i.i) #11, !srcloc !131
  %asmresult10.i.i.i = extractvalue { i64, i32 } %15, 0
  %tmp.0.i.i = lshr i64 %asmresult10.i.i.i, 9
  %sub210.i.i = sub nsw i64 0, %tmp.0.i.i
  %cond213.i.i = select i1 %cmp8.i.i, i64 %sub210.i.i, i64 %tmp.0.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 1000, i64 %cond213.i.i)
  %cmp19 = icmp slt i64 %cond213.i.i, 1000
  br i1 %cmp19, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  %next_fb = getelementptr inbounds %struct.tilcdc_crtc, ptr %crtc, i32 0, i32 13
  %16 = ptrtoint ptr %next_fb to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %fb, ptr %next_fb, align 4
  br label %if.end22

if.else:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %crtc, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_private.i, align 4
  %call.i = tail call ptr @drm_fb_cma_get_gem_obj(ptr noundef %fb, i32 noundef 0) #7
  %paddr.i = getelementptr inbounds %struct.drm_gem_cma_object, ptr %call.i, i32 0, i32 1
  %21 = ptrtoint ptr %paddr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %paddr.i, align 8
  %offsets.i = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 7
  %23 = ptrtoint ptr %offsets.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %offsets.i, align 8
  %add.i39 = add i32 %24, %22
  %y.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 15
  %25 = ptrtoint ptr %y.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %y.i, align 8
  %pitches.i = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 6
  %27 = ptrtoint ptr %pitches.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pitches.i, align 8
  %mul.i40 = mul i32 %28, %26
  %add3.i = add i32 %add.i39, %mul.i40
  %x.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 14
  %29 = ptrtoint ptr %x.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %x.i, align 4
  %format.i = getelementptr inbounds %struct.drm_framebuffer, ptr %fb, i32 0, i32 4
  %31 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %format.i, align 8
  %33 = getelementptr inbounds %struct.drm_format_info, ptr %32, i32 0, i32 3
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %33, align 2
  %conv.i = zext i8 %35 to i32
  %mul5.i = mul i32 %30, %conv.i
  %add6.i = add i32 %add3.i, %mul5.i
  %vdisplay.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 12, i32 6
  %36 = ptrtoint ptr %vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %vdisplay.i, align 2
  %conv7.i = zext i16 %37 to i32
  %mul10.i = mul i32 %28, %conv7.i
  %add11.i = add i32 %add6.i, %mul10.i
  %rev.i = getelementptr inbounds %struct.tilcdc_drm_private, ptr %20, i32 0, i32 2
  %38 = ptrtoint ptr %rev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %39)
  %cmp.i = icmp eq i32 %39, 1
  %sub.i = sext i1 %cmp.i to i32
  %spec.select.i = add i32 %add11.i, %sub.i
  %conv13.i = zext i32 %spec.select.i to i64
  %shl.i = shl nuw i64 %conv13.i, 32
  %conv14.i = zext i32 %add6.i to i64
  %or.i = or i64 %shl.i, %conv14.i
  %40 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev_private.i, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 4
  %add.ptr.i.i = getelementptr i8, ptr %43, i32 68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !132
  tail call void @arm_heavy_mb() #7
  %44 = tail call i64 @llvm.bswap.i64(i64 %or.i) #7
  %45 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store8_noabort(i32 %45)
  store volatile i64 %44, ptr %add.ptr.i.i, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then21
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock, i32 noundef %call10) #7
  br label %if.end24

if.end24:                                         ; preds = %if.end22, %if.end.if.end24_crit_edge
  tail call void @mutex_unlock(ptr noundef %enable_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %do.end
  %retval.0 = phi i32 [ -16, %do.end ], [ 0, %if.end24 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @tilcdc_crtc_set_panel_info(ptr nocapture noundef writeonly %crtc, ptr noundef %info) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %info1 = getelementptr inbounds %struct.tilcdc_crtc, ptr %crtc, i32 0, i32 2
  %0 = ptrtoint ptr %info1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %info, ptr %info1, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @tilcdc_crtc_set_simulate_vesa_sync(ptr nocapture noundef writeonly %crtc, i1 noundef zeroext %simulate_vesa_sync) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %simulate_vesa_sync to i8
  %simulate_vesa_sync1 = getelementptr inbounds %struct.tilcdc_crtc, ptr %crtc, i32 0, i32 14
  %0 = ptrtoint ptr %simulate_vesa_sync1 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %frombool, ptr %simulate_vesa_sync1, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tilcdc_crtc_update_clk(ptr noundef %crtc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %mutex = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 4
  %call = tail call i32 @drm_modeset_lock(ptr noundef %mutex, ptr noundef null) #7
  %lcd_fck_rate = getelementptr inbounds %struct.tilcdc_crtc, ptr %crtc, i32 0, i32 10
  %4 = ptrtoint ptr %lcd_fck_rate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %lcd_fck_rate, align 4
  %clk = getelementptr inbounds %struct.tilcdc_drm_private, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  %call2 = tail call i32 @clk_get_rate(ptr noundef %7) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %call2)
  %cmp.not = icmp eq i32 %5, %call2
  br i1 %cmp.not, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then:                                          ; preds = %entry
  %state.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %state.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.then.if.end9_crit_edge, label %land.lhs.true.i

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

land.lhs.true.i:                                  ; preds = %if.then
  %enable.i = getelementptr inbounds %struct.drm_crtc_state, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %enable.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %enable.i, align 4, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool2.not.i = icmp eq i8 %11, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end9_crit_edge, label %tilcdc_crtc_is_on.exit

land.lhs.true.i.if.end9_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

tilcdc_crtc_is_on.exit:                           ; preds = %land.lhs.true.i
  %active.i = getelementptr inbounds %struct.drm_crtc_state, ptr %9, i32 0, i32 2
  %12 = ptrtoint ptr %active.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %active.i, align 1, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool4.i.not = icmp eq i8 %13, 0
  br i1 %tobool4.i.not, label %tilcdc_crtc_is_on.exit.if.end9_crit_edge, label %if.then4

tilcdc_crtc_is_on.exit.if.end9_crit_edge:         ; preds = %tilcdc_crtc_is_on.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then4:                                         ; preds = %tilcdc_crtc_is_on.exit
  call void @__sanitizer_cov_trace_pc() #9
  %dev5 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev5, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %15, i32 noundef 4) #7
  tail call fastcc void @tilcdc_crtc_off(ptr noundef %crtc, i1 noundef zeroext false) #7
  tail call fastcc void @tilcdc_crtc_set_clk(ptr noundef %crtc)
  tail call fastcc void @tilcdc_crtc_enable(ptr noundef %crtc)
  %16 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev5, align 4
  %call.i20 = tail call i32 @__pm_runtime_idle(ptr noundef %17, i32 noundef 4) #7
  br label %if.end9

if.end9:                                          ; preds = %if.then4, %tilcdc_crtc_is_on.exit.if.end9_crit_edge, %land.lhs.true.i.if.end9_crit_edge, %if.then.if.end9_crit_edge, %entry.if.end9_crit_edge
  tail call void @drm_modeset_unlock(ptr noundef %mutex) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_modeset_lock(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tilcdc_crtc_set_clk(ptr nocapture noundef %crtc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %mode = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 12
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode, align 4
  %mul = mul i32 %5, 1000
  %clk = getelementptr inbounds %struct.tilcdc_drm_private, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  %mul2 = mul i32 %5, 2000
  %call = tail call i32 @clk_set_rate(ptr noundef %7, i32 noundef %mul2) #7
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 4
  %call4 = tail call i32 @clk_get_rate(ptr noundef %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %div.i = udiv i32 %mul, 100
  %div1.i = udiv i32 %call4, 200
  %sub.i = sub nsw i32 %div1.i, %div.i
  %mul.i = mul i32 %sub.i, 100
  %div2.i = sdiv i32 %mul.i, %div.i
  %10 = tail call i32 @llvm.abs.i32(i32 %div2.i, i1 false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %10)
  %cmp6 = icmp ugt i32 %10, 5
  br i1 %cmp6, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.if.end21_crit_edge

lor.lhs.false.if.end21_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %dev8 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.26) #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  %div1061 = lshr exact i32 %mul, 1
  %add = add i32 %call4, %div1061
  %div11 = udiv i32 %add, %mul
  %div12 = udiv i32 %call4, %div11
  %div.i62 = udiv i32 %mul, 100
  %div1.i63 = udiv i32 %div12, 100
  %sub.i64 = sub nsw i32 %div1.i63, %div.i62
  %mul.i65 = mul i32 %sub.i64, 100
  %div2.i66 = sdiv i32 %mul.i65, %div.i62
  %13 = tail call i32 @llvm.abs.i32(i32 %div2.i66, i1 false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %13)
  %cmp14 = icmp ugt i32 %13, 5
  br i1 %cmp14, label %do.end18, label %if.end.if.end21_crit_edge

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

do.end18:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev19 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev19, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %15, ptr noundef nonnull @.str.29, i32 noundef %div12, i32 noundef %mul) #10
  br label %if.end21

if.end21:                                         ; preds = %do.end18, %if.end.if.end21_crit_edge, %lor.lhs.false.if.end21_crit_edge
  %clkdiv.0 = phi i32 [ %div11, %do.end18 ], [ %div11, %if.end.if.end21_crit_edge ], [ 2, %lor.lhs.false.if.end21_crit_edge ]
  %lcd_fck_rate = getelementptr inbounds %struct.tilcdc_crtc, ptr %crtc, i32 0, i32 10
  %16 = ptrtoint ptr %lcd_fck_rate to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call4, ptr %lcd_fck_rate, align 4
  %17 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mode, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.32, i32 noundef %call4, i32 noundef %18, i32 noundef %clkdiv.0) #7
  %shl = shl i32 %clkdiv.0, 8
  %or = or i32 %shl, 1
  %19 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_private, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %add.ptr.i = getelementptr i8, ptr %22, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  tail call void @arm_heavy_mb() #7
  %23 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %23) #7, !srcloc !129
  %rev = getelementptr inbounds %struct.tilcdc_drm_private, ptr %3, i32 0, i32 2
  %24 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp25 = icmp eq i32 %25, 2
  br i1 %cmp25, label %if.then26, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then26:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev_private, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %add.ptr.i.i = getelementptr i8, ptr %29, i32 108
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !127
  %31 = or i32 %30, 117440512
  %32 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev_private, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %35, i32 108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %31) #7, !srcloc !129
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %if.end21.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tilcdc_crtc_enable(ptr noundef %crtc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %enable_lock = getelementptr inbounds %struct.tilcdc_crtc, ptr %crtc, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %enable_lock, i32 noundef 0) #7
  %enabled = getelementptr inbounds %struct.tilcdc_crtc, ptr %crtc, i32 0, i32 5
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled, align 4, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %shutdown = getelementptr inbounds %struct.tilcdc_crtc, ptr %crtc, i32 0, i32 6
  %4 = ptrtoint ptr %shutdown to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %shutdown, align 1, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %dev4 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev4, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #7
  %8 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %crtc, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_private.i, align 4
  %rev.i = getelementptr inbounds %struct.tilcdc_drm_private, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %rev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp.not.i = icmp eq i32 %13, 2
  br i1 %cmp.not.i, label %if.end.i, label %if.end.reset.exit_crit_edge

if.end.reset.exit_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %reset.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %15, i32 112
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !127
  %17 = or i32 %16, 134217728
  %18 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_private.i, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %add.ptr.i4.i.i = getelementptr i8, ptr %21, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i, i32 %17) #7, !srcloc !129
  tail call void @usleep_range_state(i32 noundef 250, i32 noundef 1000, i32 noundef 2) #7
  %22 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev_private.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %add.ptr.i.i6.i = getelementptr i8, ptr %25, i32 112
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i6.i) #7, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !127
  %27 = and i32 %26, -134217729
  %28 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev_private.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %add.ptr.i4.i7.i = getelementptr i8, ptr %31, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i7.i, i32 %27) #7, !srcloc !129
  br label %reset.exit

reset.exit:                                       ; preds = %if.end.i, %if.end.reset.exit_crit_edge
  %32 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %crtc, align 8
  %dev_private.i33 = getelementptr inbounds %struct.drm_device, ptr %33, i32 0, i32 5
  %34 = ptrtoint ptr %dev_private.i33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev_private.i33, align 4
  %info2.i = getelementptr inbounds %struct.tilcdc_crtc, ptr %crtc, i32 0, i32 2
  %36 = ptrtoint ptr %info2.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %info2.i, align 8
  %state.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %38 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %state.i, align 4
  %primary.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 6
  %40 = ptrtoint ptr %primary.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %primary.i, align 4
  %state3.i = getelementptr inbounds %struct.drm_plane, ptr %41, i32 0, i32 19
  %42 = ptrtoint ptr %state3.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %state3.i, align 4
  %fb4.i = getelementptr inbounds %struct.drm_plane_state, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %fb4.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %fb4.i, align 4
  %tobool.not.i = icmp eq ptr %37, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end28.i, !prof !133

do.end.i:                                         ; preds = %reset.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 282, i32 noundef 9, ptr noundef null) #7
  br label %tilcdc_crtc_set_mode.exit

if.end28.i:                                       ; preds = %reset.exit
  %tobool30.not.i = icmp eq ptr %45, null
  br i1 %tobool30.not.i, label %do.end48.i, label %if.end64.i, !prof !133

do.end48.i:                                       ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 285, i32 noundef 9, ptr noundef null) #7
  br label %tilcdc_crtc_set_mode.exit

if.end64.i:                                       ; preds = %if.end28.i
  %46 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %35, align 4
  %add.ptr.i.i = getelementptr i8, ptr %47, i32 64
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !127
  %49 = and i32 %48, -1879506945
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #7
  %dma_burst_sz.i = getelementptr inbounds %struct.tilcdc_panel_info, ptr %37, i32 0, i32 2
  %51 = ptrtoint ptr %dma_burst_sz.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %dma_burst_sz.i, align 4
  %53 = zext i32 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values)
  switch i32 %52, label %do.end75.i [
    i32 1, label %if.end64.i.sw.epilog.i_crit_edge
    i32 2, label %sw.bb65.i
    i32 4, label %sw.bb67.i
    i32 8, label %sw.bb69.i
    i32 16, label %sw.bb71.i
  ]

if.end64.i.sw.epilog.i_crit_edge:                 ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i

sw.bb65.i:                                        ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #9
  %or66.i = or i32 %50, 16
  br label %sw.epilog.i

sw.bb67.i:                                        ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #9
  %or68.i = or i32 %50, 32
  br label %sw.epilog.i

sw.bb69.i:                                        ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #9
  %or70.i = or i32 %50, 48
  br label %sw.epilog.i

sw.bb71.i:                                        ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #9
  %or72.i = or i32 %50, 64
  br label %sw.epilog.i

do.end75.i:                                       ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev76.i = getelementptr inbounds %struct.drm_device, ptr %33, i32 0, i32 2
  %54 = ptrtoint ptr %dev76.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev76.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.33) #10
  br label %tilcdc_crtc_set_mode.exit

sw.epilog.i:                                      ; preds = %sw.bb71.i, %sw.bb69.i, %sw.bb67.i, %sw.bb65.i, %if.end64.i.sw.epilog.i_crit_edge
  %reg.0.i = phi i32 [ %or72.i, %sw.bb71.i ], [ %or70.i, %sw.bb69.i ], [ %or68.i, %sw.bb67.i ], [ %or66.i, %sw.bb65.i ], [ %50, %if.end64.i.sw.epilog.i_crit_edge ]
  %fifo_th.i = getelementptr inbounds %struct.tilcdc_panel_info, ptr %37, i32 0, i32 10
  %56 = ptrtoint ptr %fifo_th.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %fifo_th.i, align 4
  %shl.i = shl i32 %57, 8
  %or77.i = or i32 %shl.i, %reg.0.i
  %58 = ptrtoint ptr %dev_private.i33 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev_private.i33, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %59, align 4
  %add.ptr.i348.i = getelementptr i8, ptr %61, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  tail call void @arm_heavy_mb() #7
  %62 = tail call i32 @llvm.bswap.i32(i32 %or77.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i348.i, i32 %62) #7, !srcloc !129
  %htotal.i = getelementptr inbounds %struct.drm_crtc_state, ptr %39, i32 0, i32 7, i32 4
  %63 = ptrtoint ptr %htotal.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %htotal.i, align 2
  %conv.i = zext i16 %64 to i32
  %hsync_end.i = getelementptr inbounds %struct.drm_crtc_state, ptr %39, i32 0, i32 7, i32 3
  %65 = ptrtoint ptr %hsync_end.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %hsync_end.i, align 4
  %conv78.i = zext i16 %66 to i32
  %sub.i = sub nsw i32 %conv.i, %conv78.i
  %hsync_start.i = getelementptr inbounds %struct.drm_crtc_state, ptr %39, i32 0, i32 7, i32 2
  %67 = ptrtoint ptr %hsync_start.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %hsync_start.i, align 2
  %conv79.i = zext i16 %68 to i32
  %hdisplay.i = getelementptr inbounds %struct.drm_crtc_state, ptr %39, i32 0, i32 7, i32 1
  %69 = ptrtoint ptr %hdisplay.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %hdisplay.i, align 4
  %conv80.i = zext i16 %70 to i32
  %sub81.i = sub nsw i32 %conv79.i, %conv80.i
  %sub86.i = sub nsw i32 %conv78.i, %conv79.i
  %vtotal.i = getelementptr inbounds %struct.drm_crtc_state, ptr %39, i32 0, i32 7, i32 9
  %71 = ptrtoint ptr %vtotal.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %vtotal.i, align 4
  %conv87.i = zext i16 %72 to i32
  %vsync_end.i = getelementptr inbounds %struct.drm_crtc_state, ptr %39, i32 0, i32 7, i32 8
  %73 = ptrtoint ptr %vsync_end.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %vsync_end.i, align 2
  %conv88.i = zext i16 %74 to i32
  %sub89.i = sub nsw i32 %conv87.i, %conv88.i
  %vsync_start.i = getelementptr inbounds %struct.drm_crtc_state, ptr %39, i32 0, i32 7, i32 7
  %75 = ptrtoint ptr %vsync_start.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %vsync_start.i, align 4
  %conv90.i = zext i16 %76 to i32
  %vdisplay.i = getelementptr inbounds %struct.drm_crtc_state, ptr %39, i32 0, i32 7, i32 6
  %77 = ptrtoint ptr %vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %vdisplay.i, align 2
  %conv91.i = zext i16 %78 to i32
  %sub92.i = sub nsw i32 %conv90.i, %conv91.i
  %sub97.i = sub nsw i32 %conv88.i, %conv90.i
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.35, i32 noundef %conv80.i, i32 noundef %conv91.i, i32 noundef %sub.i, i32 noundef %sub81.i, i32 noundef %sub86.i, i32 noundef %sub89.i, i32 noundef %sub92.i, i32 noundef %sub97.i) #7
  %79 = ptrtoint ptr %dev_private.i33 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev_private.i33, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %80, align 4
  %add.ptr.i350.i = getelementptr i8, ptr %82, i32 52
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i350.i) #7, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !127
  %84 = and i32 %83, -16715521
  %85 = tail call i32 @llvm.bswap.i32(i32 %84) #7
  %86 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %37, align 4
  %shl104.i = shl i32 %87, 8
  %ac_bias_intrpt.i = getelementptr inbounds %struct.tilcdc_panel_info, ptr %37, i32 0, i32 1
  %88 = ptrtoint ptr %ac_bias_intrpt.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %ac_bias_intrpt.i, align 4
  %shl105.i = shl i32 %89, 16
  %or106.i = or i32 %shl104.i, %85
  %or107.i = or i32 %or106.i, %shl105.i
  %rev.i34 = getelementptr inbounds %struct.tilcdc_drm_private, ptr %35, i32 0, i32 2
  %90 = ptrtoint ptr %rev.i34 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %rev.i34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %91)
  %cmp.i = icmp eq i32 %91, 2
  br i1 %cmp.i, label %if.then109.i, label %sw.epilog.i.if.end122.i_crit_edge

sw.epilog.i.if.end122.i_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end122.i

if.then109.i:                                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  %and110.i = and i32 %or107.i, -2013265972
  %sub111.i = add nsw i32 %sub81.i, 1023
  %and112.i = lshr i32 %sub111.i, 8
  %shr.i = and i32 %and112.i, 3
  %sub114.i = add nsw i32 %sub.i, 1023
  %and115.i = lshr i32 %sub114.i, 4
  %shr116.i = and i32 %and115.i, 48
  %sub118.i = shl i32 %sub86.i, 21
  %and119.i = add i32 %sub118.i, 2145386496
  %shl120.i = and i32 %and119.i, 2013265920
  %or113.i = or i32 %shl120.i, %shr116.i
  %or117.i = or i32 %or113.i, %shr.i
  %or121.i = or i32 %or117.i, %and110.i
  br label %if.end122.i

if.end122.i:                                      ; preds = %if.then109.i, %sw.epilog.i.if.end122.i_crit_edge
  %reg.1.i = phi i32 [ %or121.i, %if.then109.i ], [ %or107.i, %sw.epilog.i.if.end122.i_crit_edge ]
  %92 = ptrtoint ptr %dev_private.i33 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev_private.i33, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %93, align 4
  %add.ptr.i352.i = getelementptr i8, ptr %95, i32 52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  tail call void @arm_heavy_mb() #7
  %96 = tail call i32 @llvm.bswap.i32(i32 %reg.1.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i352.i, i32 %96) #7, !srcloc !129
  %97 = ptrtoint ptr %hdisplay.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %hdisplay.i, align 4
  %99 = lshr i16 %98, 4
  %100 = zext i16 %99 to i32
  %sub126.i = add nsw i32 %100, -1
  %shl127.i = shl nsw i32 %sub126.i, 4
  %sub128.i = shl i32 %sub.i, 24
  %shl130.i = add i32 %sub128.i, -16777216
  %sub132.i = shl i32 %sub81.i, 16
  %and133.i = add i32 %sub132.i, 16711680
  %shl134.i = and i32 %and133.i, 16711680
  %sub136.i = shl nsw i32 %sub86.i, 10
  %and137.i = add nsw i32 %sub136.i, 64512
  %shl138.i = and i32 %and137.i, 64512
  %101 = ptrtoint ptr %rev.i34 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %rev.i34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %102)
  %cmp141.i = icmp eq i32 %102, 2
  %and148.i = lshr i32 %sub126.i, 3
  %103 = and i32 %and148.i, 8
  %or150.i = select i1 %cmp141.i, i32 %103, i32 0
  %or131.i = or i32 %shl138.i, %shl130.i
  %or135.i = or i32 %or131.i, %shl134.i
  %or139.i = or i32 %shl127.i, %or135.i
  %reg.2.i = or i32 %or139.i, %or150.i
  %104 = ptrtoint ptr %dev_private.i33 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dev_private.i33, align 4
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %105, align 4
  %add.ptr.i354.i = getelementptr i8, ptr %107, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  tail call void @arm_heavy_mb() #7
  %108 = tail call i32 @llvm.bswap.i32(i32 %reg.2.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i354.i, i32 %108) #7, !srcloc !129
  %109 = ptrtoint ptr %vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %vdisplay.i, align 2
  %111 = add i16 %110, 1023
  %112 = and i16 %111, 1023
  %and155.i = zext i16 %112 to i32
  %shl157.i = shl i32 %sub89.i, 24
  %or158.i = or i32 %shl157.i, %and155.i
  %and159.i = shl i32 %sub92.i, 16
  %shl160.i = and i32 %and159.i, 16711680
  %or161.i = or i32 %or158.i, %shl160.i
  %sub162.i = shl nsw i32 %sub97.i, 10
  %and163.i = add nsw i32 %sub162.i, 64512
  %shl164.i = and i32 %and163.i, 64512
  %or165.i = or i32 %or161.i, %shl164.i
  %113 = ptrtoint ptr %dev_private.i33 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dev_private.i33, align 4
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %114, align 4
  %add.ptr.i356.i = getelementptr i8, ptr %116, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  tail call void @arm_heavy_mb() #7
  %117 = tail call i32 @llvm.bswap.i32(i32 %or165.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i356.i, i32 %117) #7, !srcloc !129
  %118 = ptrtoint ptr %rev.i34 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %rev.i34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %119)
  %cmp167.i = icmp eq i32 %119, 2
  br i1 %cmp167.i, label %if.then169.i, label %if.end122.i.if.end177.i_crit_edge

if.end122.i.if.end177.i_crit_edge:                ; preds = %if.end122.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end177.i

if.then169.i:                                     ; preds = %if.end122.i
  %120 = ptrtoint ptr %vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %vdisplay.i, align 2
  %122 = add i16 %121, 2047
  %123 = and i16 %122, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %123)
  %tobool174.not.i = icmp eq i16 %123, 0
  %124 = ptrtoint ptr %dev_private.i33 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %dev_private.i33, align 4
  %126 = ptrtoint ptr %125 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %125, align 4
  %add.ptr.i.i358.i = getelementptr i8, ptr %127, i32 52
  %128 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i358.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  br i1 %tobool174.not.i, label %if.else.i, label %if.then175.i

if.then175.i:                                     ; preds = %if.then169.i
  call void @__sanitizer_cov_trace_pc() #9
  %129 = or i32 %128, 4
  %130 = ptrtoint ptr %dev_private.i33 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %dev_private.i33, align 4
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %131, align 4
  %add.ptr.i4.i.i35 = getelementptr i8, ptr %133, i32 52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i35, i32 %129) #7, !srcloc !129
  br label %if.end177.i

if.else.i:                                        ; preds = %if.then169.i
  call void @__sanitizer_cov_trace_pc() #9
  %134 = and i32 %128, -5
  %135 = ptrtoint ptr %dev_private.i33 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %dev_private.i33, align 4
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %136, align 4
  %add.ptr.i4.i359.i = getelementptr i8, ptr %138, i32 52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i359.i, i32 %134) #7, !srcloc !129
  br label %if.end177.i

if.end177.i:                                      ; preds = %if.else.i, %if.then175.i, %if.end122.i.if.end177.i_crit_edge
  %139 = ptrtoint ptr %dev_private.i33 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %dev_private.i33, align 4
  %141 = ptrtoint ptr %140 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %140, align 4
  %add.ptr.i361.i = getelementptr i8, ptr %142, i32 40
  %143 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i361.i) #7, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !127
  %144 = and i32 %143, 2098065657
  %145 = tail call i32 @llvm.bswap.i32(i32 %144) #7
  %tft_alt_mode.i = getelementptr inbounds %struct.tilcdc_panel_info, ptr %37, i32 0, i32 5
  %146 = ptrtoint ptr %tft_alt_mode.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %tft_alt_mode.i, align 4, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %147)
  %tobool181.not.i = icmp eq i8 %147, 0
  %spec.select.v.i = select i1 %tobool181.not.i, i32 128, i32 8388736
  %spec.select.i = or i32 %spec.select.v.i, %145
  %148 = ptrtoint ptr %rev.i34 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %rev.i34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %149)
  %cmp186.i = icmp eq i32 %149, 2
  br i1 %cmp186.i, label %if.then188.i, label %if.end177.i.if.end201.i_crit_edge

if.end177.i.if.end201.i_crit_edge:                ; preds = %if.end177.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end201.i

if.then188.i:                                     ; preds = %if.end177.i
  %format.i = getelementptr inbounds %struct.drm_framebuffer, ptr %45, i32 0, i32 4
  %150 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %format.i, align 8
  %152 = ptrtoint ptr %151 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %151, align 4
  %154 = zext i32 %153 to i64
  call void @__sanitizer_cov_trace_switch(i64 %154, ptr @__sancov_gen_cov_switch_values.58)
  switch i32 %153, label %do.end198.i [
    i32 909199170, label %if.then188.i.if.end201.i_crit_edge
    i32 909199186, label %if.then188.i.if.end201.i_crit_edge50
    i32 875709016, label %if.then188.i.sw.bb191.i_crit_edge
    i32 875713112, label %if.then188.i.sw.bb191.i_crit_edge51
    i32 875710274, label %if.then188.i.sw.bb193.i_crit_edge
    i32 875710290, label %if.then188.i.sw.bb193.i_crit_edge52
  ]

if.then188.i.sw.bb193.i_crit_edge52:              ; preds = %if.then188.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb193.i

if.then188.i.sw.bb193.i_crit_edge:                ; preds = %if.then188.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb193.i

if.then188.i.sw.bb191.i_crit_edge51:              ; preds = %if.then188.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb191.i

if.then188.i.sw.bb191.i_crit_edge:                ; preds = %if.then188.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb191.i

if.then188.i.if.end201.i_crit_edge50:             ; preds = %if.then188.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end201.i

if.then188.i.if.end201.i_crit_edge:               ; preds = %if.then188.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end201.i

sw.bb191.i:                                       ; preds = %if.then188.i.sw.bb191.i_crit_edge, %if.then188.i.sw.bb191.i_crit_edge51
  %or192.i = or i32 %spec.select.i, 67108864
  br label %sw.bb193.i

sw.bb193.i:                                       ; preds = %sw.bb191.i, %if.then188.i.sw.bb193.i_crit_edge, %if.then188.i.sw.bb193.i_crit_edge52
  %reg.4.i = phi i32 [ %spec.select.i, %if.then188.i.sw.bb193.i_crit_edge ], [ %spec.select.i, %if.then188.i.sw.bb193.i_crit_edge52 ], [ %or192.i, %sw.bb191.i ]
  %or194.i = or i32 %reg.4.i, 33554432
  br label %if.end201.i

do.end198.i:                                      ; preds = %if.then188.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev199.i = getelementptr inbounds %struct.drm_device, ptr %33, i32 0, i32 2
  %155 = ptrtoint ptr %dev199.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %dev199.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %156, ptr noundef nonnull @.str.37) #10
  br label %tilcdc_crtc_set_mode.exit

if.end201.i:                                      ; preds = %sw.bb193.i, %if.then188.i.if.end201.i_crit_edge, %if.then188.i.if.end201.i_crit_edge50, %if.end177.i.if.end201.i_crit_edge
  %reg.5.i = phi i32 [ %or194.i, %sw.bb193.i ], [ %spec.select.i, %if.then188.i.if.end201.i_crit_edge ], [ %spec.select.i, %if.then188.i.if.end201.i_crit_edge50 ], [ %spec.select.i, %if.end177.i.if.end201.i_crit_edge ]
  %fdd.i = getelementptr inbounds %struct.tilcdc_panel_info, ptr %37, i32 0, i32 4
  %157 = ptrtoint ptr %fdd.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %fdd.i, align 4
  %shl202.i = shl i32 %158, 12
  %or203.i = or i32 %shl202.i, %reg.5.i
  %159 = ptrtoint ptr %dev_private.i33 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %dev_private.i33, align 4
  %161 = ptrtoint ptr %160 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %160, align 4
  %add.ptr.i363.i = getelementptr i8, ptr %162, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  tail call void @arm_heavy_mb() #7
  %163 = tail call i32 @llvm.bswap.i32(i32 %or203.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i363.i, i32 %163) #7, !srcloc !129
  %invert_pxl_clk.i = getelementptr inbounds %struct.tilcdc_panel_info, ptr %37, i32 0, i32 6
  %164 = ptrtoint ptr %invert_pxl_clk.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %invert_pxl_clk.i, align 1, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %165)
  %tobool204.not.i = icmp eq i8 %165, 0
  %166 = ptrtoint ptr %dev_private.i33 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %dev_private.i33, align 4
  %168 = ptrtoint ptr %167 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %167, align 4
  %add.ptr.i.i369.i = getelementptr i8, ptr %169, i32 52
  %170 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i369.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  br i1 %tobool204.not.i, label %if.else206.i, label %if.then205.i

if.then205.i:                                     ; preds = %if.end201.i
  call void @__sanitizer_cov_trace_pc() #9
  %171 = or i32 %170, 16384
  %172 = ptrtoint ptr %dev_private.i33 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %dev_private.i33, align 4
  %174 = ptrtoint ptr %173 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %173, align 4
  %add.ptr.i4.i367.i = getelementptr i8, ptr %175, i32 52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i367.i, i32 %171) #7, !srcloc !129
  br label %if.end207.i

if.else206.i:                                     ; preds = %if.end201.i
  call void @__sanitizer_cov_trace_pc() #9
  %176 = and i32 %170, -16385
  %177 = ptrtoint ptr %dev_private.i33 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %dev_private.i33, align 4
  %179 = ptrtoint ptr %178 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %178, align 4
  %add.ptr.i4.i371.i = getelementptr i8, ptr %180, i32 52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i371.i, i32 %176) #7, !srcloc !129
  br label %if.end207.i

if.end207.i:                                      ; preds = %if.else206.i, %if.then205.i
  %sync_ctrl.i = getelementptr inbounds %struct.tilcdc_panel_info, ptr %37, i32 0, i32 8
  %181 = ptrtoint ptr %sync_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %sync_ctrl.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %182)
  %tobool208.not.i = icmp eq i32 %182, 0
  %183 = ptrtoint ptr %dev_private.i33 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %dev_private.i33, align 4
  %185 = ptrtoint ptr %184 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %184, align 4
  %add.ptr.i.i377.i = getelementptr i8, ptr %186, i32 52
  %187 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i377.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  br i1 %tobool208.not.i, label %if.else210.i, label %if.then209.i

if.then209.i:                                     ; preds = %if.end207.i
  call void @__sanitizer_cov_trace_pc() #9
  %188 = or i32 %187, 2
  %189 = ptrtoint ptr %dev_private.i33 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %dev_private.i33, align 4
  %191 = ptrtoint ptr %190 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %190, align 4
  %add.ptr.i4.i375.i = getelementptr i8, ptr %192, i32 52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i375.i, i32 %188) #7, !srcloc !129
  br label %if.end211.i

if.else210.i:                                     ; preds = %if.end207.i
  call void @__sanitizer_cov_trace_pc() #9
  %193 = and i32 %187, -3
  %194 = ptrtoint ptr %dev_private.i33 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %dev_private.i33, align 4
  %196 = ptrtoint ptr %195 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %195, align 4
  %add.ptr.i4.i379.i = getelementptr i8, ptr %197, i32 52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i379.i, i32 %193) #7, !srcloc !129
  br label %if.end211.i

if.end211.i:                                      ; preds = %if.else210.i, %if.then209.i
  %sync_edge.i = getelementptr inbounds %struct.tilcdc_panel_info, ptr %37, i32 0, i32 7
  %198 = ptrtoint ptr %sync_edge.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %sync_edge.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %199)
  %tobool212.not.i = icmp eq i32 %199, 0
  %200 = ptrtoint ptr %dev_private.i33 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %dev_private.i33, align 4
  %202 = ptrtoint ptr %201 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %201, align 4
  %add.ptr.i.i385.i = getelementptr i8, ptr %203, i32 52
  %204 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i385.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  br i1 %tobool212.not.i, label %if.else214.i, label %if.then213.i

if.then213.i:                                     ; preds = %if.end211.i
  call void @__sanitizer_cov_trace_pc() #9
  %205 = or i32 %204, 1
  %206 = ptrtoint ptr %dev_private.i33 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %dev_private.i33, align 4
  %208 = ptrtoint ptr %207 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %207, align 4
  %add.ptr.i4.i383.i = getelementptr i8, ptr %209, i32 52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i383.i, i32 %205) #7, !srcloc !129
  br label %if.end215.i

if.else214.i:                                     ; preds = %if.end211.i
  call void @__sanitizer_cov_trace_pc() #9
  %210 = and i32 %204, -2
  %211 = ptrtoint ptr %dev_private.i33 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %dev_private.i33, align 4
  %213 = ptrtoint ptr %212 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %212, align 4
  %add.ptr.i4.i387.i = getelementptr i8, ptr %214, i32 52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i387.i, i32 %210) #7, !srcloc !129
  br label %if.end215.i

if.end215.i:                                      ; preds = %if.else214.i, %if.then213.i
  %flags.i = getelementptr inbounds %struct.drm_crtc_state, ptr %39, i32 0, i32 7, i32 11
  %215 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %flags.i, align 4
  %and216.i = and i32 %216, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and216.i)
  %tobool217.not.i = icmp eq i32 %and216.i, 0
  %217 = ptrtoint ptr %dev_private.i33 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %dev_private.i33, align 4
  %219 = ptrtoint ptr %218 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %218, align 4
  %add.ptr.i.i393.i = getelementptr i8, ptr %220, i32 52
  %221 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i393.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  br i1 %tobool217.not.i, label %if.else219.i, label %if.then218.i

if.then218.i:                                     ; preds = %if.end215.i
  call void @__sanitizer_cov_trace_pc() #9
  %222 = or i32 %221, 8192
  %223 = ptrtoint ptr %dev_private.i33 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %dev_private.i33, align 4
  %225 = ptrtoint ptr %224 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %224, align 4
  %add.ptr.i4.i391.i = getelementptr i8, ptr %226, i32 52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i391.i, i32 %222) #7, !srcloc !129
  br label %if.end220.i

if.else219.i:                                     ; preds = %if.end215.i
  call void @__sanitizer_cov_trace_pc() #9
  %227 = and i32 %221, -8193
  %228 = ptrtoint ptr %dev_private.i33 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %dev_private.i33, align 4
  %230 = ptrtoint ptr %229 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %229, align 4
  %add.ptr.i4.i395.i = getelementptr i8, ptr %231, i32 52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i395.i, i32 %227) #7, !srcloc !129
  br label %if.end220.i

if.end220.i:                                      ; preds = %if.else219.i, %if.then218.i
  %232 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %flags.i, align 4
  %and222.i = and i32 %233, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and222.i)
  %tobool223.not.i = icmp eq i32 %and222.i, 0
  %234 = ptrtoint ptr %dev_private.i33 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %dev_private.i33, align 4
  %236 = ptrtoint ptr %235 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %235, align 4
  %add.ptr.i.i401.i = getelementptr i8, ptr %237, i32 52
  %238 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i401.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  br i1 %tobool223.not.i, label %if.else225.i, label %if.then224.i

if.then224.i:                                     ; preds = %if.end220.i
  call void @__sanitizer_cov_trace_pc() #9
  %239 = or i32 %238, 4096
  %240 = ptrtoint ptr %dev_private.i33 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %dev_private.i33, align 4
  %242 = ptrtoint ptr %241 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %241, align 4
  %add.ptr.i4.i399.i = getelementptr i8, ptr %243, i32 52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i399.i, i32 %239) #7, !srcloc !129
  br label %if.end226.i

if.else225.i:                                     ; preds = %if.end220.i
  call void @__sanitizer_cov_trace_pc() #9
  %244 = and i32 %238, -4097
  %245 = ptrtoint ptr %dev_private.i33 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %dev_private.i33, align 4
  %247 = ptrtoint ptr %246 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %246, align 4
  %add.ptr.i4.i403.i = getelementptr i8, ptr %248, i32 52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i403.i, i32 %244) #7, !srcloc !129
  br label %if.end226.i

if.end226.i:                                      ; preds = %if.else225.i, %if.then224.i
  %raster_order.i = getelementptr inbounds %struct.tilcdc_panel_info, ptr %37, i32 0, i32 9
  %249 = ptrtoint ptr %raster_order.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %raster_order.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %250)
  %tobool227.not.i = icmp eq i32 %250, 0
  %251 = ptrtoint ptr %dev_private.i33 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %dev_private.i33, align 4
  %253 = ptrtoint ptr %252 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %252, align 4
  %add.ptr.i.i409.i = getelementptr i8, ptr %254, i32 40
  %255 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i409.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  br i1 %tobool227.not.i, label %if.else229.i, label %if.then228.i

if.then228.i:                                     ; preds = %if.end226.i
  call void @__sanitizer_cov_trace_pc() #9
  %256 = or i32 %255, 65536
  %257 = ptrtoint ptr %dev_private.i33 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %dev_private.i33, align 4
  %259 = ptrtoint ptr %258 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %258, align 4
  %add.ptr.i4.i407.i = getelementptr i8, ptr %260, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i407.i, i32 %256) #7, !srcloc !129
  br label %if.end230.i

if.else229.i:                                     ; preds = %if.end226.i
  call void @__sanitizer_cov_trace_pc() #9
  %261 = and i32 %255, -65537
  %262 = ptrtoint ptr %dev_private.i33 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %dev_private.i33, align 4
  %264 = ptrtoint ptr %263 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %263, align 4
  %add.ptr.i4.i411.i = getelementptr i8, ptr %265, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i411.i, i32 %261) #7, !srcloc !129
  br label %if.end230.i

if.end230.i:                                      ; preds = %if.else229.i, %if.then228.i
  tail call fastcc void @tilcdc_crtc_set_clk(ptr noundef %crtc) #7
  %266 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %crtc, align 8
  %dev_private.i412.i = getelementptr inbounds %struct.drm_device, ptr %267, i32 0, i32 5
  %268 = ptrtoint ptr %dev_private.i412.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %dev_private.i412.i, align 4
  %palette_loaded.i.i = getelementptr inbounds %struct.tilcdc_crtc, ptr %crtc, i32 0, i32 20
  %270 = ptrtoint ptr %palette_loaded.i.i to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 0, ptr %palette_loaded.i.i, align 4
  %palette_dma_handle.i.i = getelementptr inbounds %struct.tilcdc_crtc, ptr %crtc, i32 0, i32 18
  %271 = ptrtoint ptr %palette_dma_handle.i.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %palette_dma_handle.i.i, align 8
  %273 = load ptr, ptr %dev_private.i412.i, align 4
  %274 = ptrtoint ptr %273 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %273, align 4
  %add.ptr.i.i413.i = getelementptr i8, ptr %275, i32 68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  tail call void @arm_heavy_mb() #7
  %276 = tail call i32 @llvm.bswap.i32(i32 %272) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i413.i, i32 %276) #7, !srcloc !129
  %277 = ptrtoint ptr %palette_dma_handle.i.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %palette_dma_handle.i.i, align 8
  %sub.i.i = add i32 %278, 31
  %279 = ptrtoint ptr %dev_private.i412.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %dev_private.i412.i, align 4
  %281 = ptrtoint ptr %280 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %280, align 4
  %add.ptr.i31.i.i = getelementptr i8, ptr %282, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  tail call void @arm_heavy_mb() #7
  %283 = tail call i32 @llvm.bswap.i32(i32 %sub.i.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31.i.i, i32 %283) #7, !srcloc !129
  %284 = ptrtoint ptr %dev_private.i412.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %dev_private.i412.i, align 4
  %286 = ptrtoint ptr %285 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %285, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %287, i32 40
  %288 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #7, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !127
  %289 = and i32 %288, -12289
  %290 = or i32 %289, 4096
  %291 = ptrtoint ptr %dev_private.i412.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %dev_private.i412.i, align 4
  %293 = ptrtoint ptr %292 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %292, align 4
  %add.ptr.i2.i.i.i = getelementptr i8, ptr %294, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i.i, i32 %290) #7, !srcloc !129
  %rev.i.i = getelementptr inbounds %struct.tilcdc_drm_private, ptr %269, i32 0, i32 2
  %295 = ptrtoint ptr %rev.i.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %rev.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %296)
  %cmp.i.i = icmp eq i32 %296, 1
  %297 = ptrtoint ptr %dev_private.i412.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %dev_private.i412.i, align 4
  %299 = ptrtoint ptr %298 to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %298, align 4
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end230.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i33.i.i = getelementptr i8, ptr %300, i32 40
  %301 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i33.i.i) #7, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !127
  %302 = or i32 %301, 268435456
  %303 = ptrtoint ptr %dev_private.i412.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %dev_private.i412.i, align 4
  %305 = ptrtoint ptr %304 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %304, align 4
  %add.ptr.i4.i.i.i = getelementptr i8, ptr %306, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i.i, i32 %302) #7, !srcloc !129
  br label %if.end.i.i

if.else.i.i:                                      ; preds = %if.end230.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i36.i.i = getelementptr i8, ptr %300, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36.i.i, i32 1073741824) #7, !srcloc !129
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.else.i.i, %if.then.i.i
  %307 = ptrtoint ptr %dev_private.i412.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %dev_private.i412.i, align 4
  %rev.i.i.i.i = getelementptr inbounds %struct.tilcdc_drm_private, ptr %308, i32 0, i32 2
  %309 = ptrtoint ptr %rev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %rev.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %310)
  %cmp.i.i.i.i = icmp eq i32 %310, 2
  %cond.i.i.i.i = select i1 %cmp.i.i.i.i, i32 92, i32 8
  %311 = ptrtoint ptr %308 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %308, align 4
  %add.ptr.i.i38.i.i = getelementptr i8, ptr %312, i32 %cond.i.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i38.i.i, i32 -1) #7, !srcloc !129
  %313 = ptrtoint ptr %dev_private.i412.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %dev_private.i412.i, align 4
  %315 = ptrtoint ptr %314 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %314, align 4
  %add.ptr.i.i40.i.i = getelementptr i8, ptr %316, i32 40
  %317 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i40.i.i) #7, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !127
  %318 = or i32 %317, 16777216
  %319 = ptrtoint ptr %dev_private.i412.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %dev_private.i412.i, align 4
  %321 = ptrtoint ptr %320 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %320, align 4
  %add.ptr.i4.i42.i.i = getelementptr i8, ptr %322, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i42.i.i, i32 %318) #7, !srcloc !129
  %call4.i.i = tail call i32 @wait_for_completion_timeout(ptr noundef %palette_loaded.i.i, i32 noundef 5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %cmp5.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %cmp5.i.i, label %do.end.i.i, label %if.end.i.i.if.end8.i.i_crit_edge

if.end.i.i.if.end8.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev7.i.i = getelementptr inbounds %struct.drm_device, ptr %267, i32 0, i32 2
  %323 = ptrtoint ptr %dev7.i.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %dev7.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %324, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40) #10
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %do.end.i.i, %if.end.i.i.if.end8.i.i_crit_edge
  %325 = ptrtoint ptr %dev_private.i412.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %dev_private.i412.i, align 4
  %327 = ptrtoint ptr %326 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %326, align 4
  %add.ptr.i.i44.i.i = getelementptr i8, ptr %328, i32 40
  %329 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i44.i.i) #7, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !127
  %330 = and i32 %329, -16777217
  %331 = ptrtoint ptr %dev_private.i412.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %dev_private.i412.i, align 4
  %333 = ptrtoint ptr %332 to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %332, align 4
  %add.ptr.i4.i45.i.i = getelementptr i8, ptr %334, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i45.i.i, i32 %330) #7, !srcloc !129
  %335 = ptrtoint ptr %rev.i.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %rev.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %336)
  %cmp10.i.i = icmp eq i32 %336, 1
  %337 = ptrtoint ptr %dev_private.i412.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %dev_private.i412.i, align 4
  %339 = ptrtoint ptr %338 to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %338, align 4
  br i1 %cmp10.i.i, label %if.then11.i.i, label %if.else12.i.i

if.then11.i.i:                                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i47.i.i = getelementptr i8, ptr %340, i32 40
  %341 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i47.i.i) #7, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !127
  %342 = and i32 %341, -268435457
  %343 = ptrtoint ptr %dev_private.i412.i to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %dev_private.i412.i, align 4
  %345 = ptrtoint ptr %344 to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %344, align 4
  %add.ptr.i4.i49.i.i = getelementptr i8, ptr %346, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i49.i.i, i32 %342) #7, !srcloc !129
  br label %tilcdc_crtc_load_palette.exit.i

if.else12.i.i:                                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i51.i.i = getelementptr i8, ptr %340, i32 100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i51.i.i, i32 1073741824) #7, !srcloc !129
  br label %tilcdc_crtc_load_palette.exit.i

tilcdc_crtc_load_palette.exit.i:                  ; preds = %if.else12.i.i, %if.then11.i.i
  %347 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %crtc, align 8
  %dev_private.i414.i = getelementptr inbounds %struct.drm_device, ptr %348, i32 0, i32 5
  %349 = ptrtoint ptr %dev_private.i414.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %dev_private.i414.i, align 4
  %call.i.i = tail call ptr @drm_fb_cma_get_gem_obj(ptr noundef nonnull %45, i32 noundef 0) #7
  %paddr.i.i = getelementptr inbounds %struct.drm_gem_cma_object, ptr %call.i.i, i32 0, i32 1
  %351 = ptrtoint ptr %paddr.i.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load i32, ptr %paddr.i.i, align 8
  %offsets.i.i = getelementptr inbounds %struct.drm_framebuffer, ptr %45, i32 0, i32 7
  %353 = ptrtoint ptr %offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load i32, ptr %offsets.i.i, align 8
  %add.i.i = add i32 %354, %352
  %y.i.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 15
  %355 = ptrtoint ptr %y.i.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load i32, ptr %y.i.i, align 8
  %pitches.i.i = getelementptr inbounds %struct.drm_framebuffer, ptr %45, i32 0, i32 6
  %357 = ptrtoint ptr %pitches.i.i to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load i32, ptr %pitches.i.i, align 8
  %mul.i.i = mul i32 %358, %356
  %add3.i.i = add i32 %add.i.i, %mul.i.i
  %x.i.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 14
  %359 = ptrtoint ptr %x.i.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load i32, ptr %x.i.i, align 4
  %format.i.i = getelementptr inbounds %struct.drm_framebuffer, ptr %45, i32 0, i32 4
  %361 = ptrtoint ptr %format.i.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %format.i.i, align 8
  %363 = getelementptr inbounds %struct.drm_format_info, ptr %362, i32 0, i32 3
  %364 = ptrtoint ptr %363 to i32
  call void @__asan_load1_noabort(i32 %364)
  %365 = load i8, ptr %363, align 2
  %conv.i.i = zext i8 %365 to i32
  %mul5.i.i = mul i32 %360, %conv.i.i
  %add6.i.i = add i32 %add3.i.i, %mul5.i.i
  %vdisplay.i.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 12, i32 6
  %366 = ptrtoint ptr %vdisplay.i.i to i32
  call void @__asan_load2_noabort(i32 %366)
  %367 = load i16, ptr %vdisplay.i.i, align 2
  %conv7.i.i = zext i16 %367 to i32
  %mul10.i.i = mul i32 %358, %conv7.i.i
  %add11.i.i = add i32 %add6.i.i, %mul10.i.i
  %rev.i415.i = getelementptr inbounds %struct.tilcdc_drm_private, ptr %350, i32 0, i32 2
  %368 = ptrtoint ptr %rev.i415.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load i32, ptr %rev.i415.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %369)
  %cmp.i416.i = icmp eq i32 %369, 1
  %sub.i417.i = sext i1 %cmp.i416.i to i32
  %spec.select.i.i = add i32 %add11.i.i, %sub.i417.i
  %conv13.i.i = zext i32 %spec.select.i.i to i64
  %shl.i.i = shl nuw i64 %conv13.i.i, 32
  %conv14.i.i = zext i32 %add6.i.i to i64
  %or.i418.i = or i64 %shl.i.i, %conv14.i.i
  %370 = ptrtoint ptr %dev_private.i414.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %dev_private.i414.i, align 4
  %372 = ptrtoint ptr %371 to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %371, align 4
  %add.ptr.i.i419.i = getelementptr i8, ptr %373, i32 68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !132
  tail call void @arm_heavy_mb() #7
  %374 = tail call i64 @llvm.bswap.i64(i64 %or.i418.i) #7
  %375 = ptrtoint ptr %add.ptr.i.i419.i to i32
  call void @__asan_store8_noabort(i32 %375)
  store volatile i64 %374, ptr %add.ptr.i.i419.i, align 8
  %hwmode.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 13
  %376 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %state.i, align 4
  %adjusted_mode232.i = getelementptr inbounds %struct.drm_crtc_state, ptr %377, i32 0, i32 7
  %378 = call ptr @memcpy(ptr %hwmode.i, ptr %adjusted_mode232.i, i32 112)
  %htotal.i.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 13, i32 4
  %379 = ptrtoint ptr %htotal.i.i to i32
  call void @__asan_load2_noabort(i32 %379)
  %380 = load i16, ptr %htotal.i.i, align 2
  %conv.i420.i = zext i16 %380 to i64
  %mul.i421.i = mul nuw nsw i64 %conv.i420.i, 1000
  %vtotal.i.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 13, i32 9
  %381 = ptrtoint ptr %vtotal.i.i to i32
  call void @__asan_load2_noabort(i32 %381)
  %382 = load i16, ptr %vtotal.i.i, align 4
  %conv1.i.i = zext i16 %382 to i64
  %mul2.i.i = mul nuw nsw i64 %mul.i421.i, %conv1.i.i
  %383 = ptrtoint ptr %hwmode.i to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load i32, ptr %hwmode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul2.i.i)
  %cmp164.i.i.i.i = icmp ult i64 %mul2.i.i, 4294967296
  br i1 %cmp164.i.i.i.i, label %if.then168.i.i.i.i, label %if.else174.i.i.i.i, !prof !134

if.then168.i.i.i.i:                               ; preds = %tilcdc_crtc_load_palette.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv169.i.i.i.i = trunc i64 %mul2.i.i to i32
  %div172.i.i.i.i = udiv i32 %conv169.i.i.i.i, %384
  br label %tilcdc_mode_hvtotal.exit.i

if.else174.i.i.i.i:                               ; preds = %tilcdc_crtc_load_palette.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %385 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %384, i64 %mul2.i.i) #11, !srcloc !135
  %asmresult1.i.i.i.i.i = extractvalue { i64, i64 } %385, 1
  %extract.t7.i.i = trunc i64 %asmresult1.i.i.i.i.i to i32
  br label %tilcdc_mode_hvtotal.exit.i

tilcdc_mode_hvtotal.exit.i:                       ; preds = %if.else174.i.i.i.i, %if.then168.i.i.i.i
  %dividend.addr.0.i.i.off0.i.i = phi i32 [ %div172.i.i.i.i, %if.then168.i.i.i.i ], [ %extract.t7.i.i, %if.else174.i.i.i.i ]
  %hvtotal_us.i = getelementptr inbounds %struct.tilcdc_crtc, ptr %crtc, i32 0, i32 12
  %386 = ptrtoint ptr %hvtotal_us.i to i32
  call void @__asan_store4_noabort(i32 %386)
  store i32 %dividend.addr.0.i.i.off0.i.i, ptr %hvtotal_us.i, align 8
  br label %tilcdc_crtc_set_mode.exit

tilcdc_crtc_set_mode.exit:                        ; preds = %tilcdc_mode_hvtotal.exit.i, %do.end198.i, %do.end75.i, %do.end48.i, %do.end.i
  %dev_private.i36 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %387 = ptrtoint ptr %dev_private.i36 to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %dev_private.i36, align 4
  %rev.i.i.i = getelementptr inbounds %struct.tilcdc_drm_private, ptr %388, i32 0, i32 2
  %389 = ptrtoint ptr %rev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load i32, ptr %rev.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %390)
  %cmp.i.i.i = icmp eq i32 %390, 2
  %cond.i.i.i = select i1 %cmp.i.i.i, i32 92, i32 8
  %391 = ptrtoint ptr %388 to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %388, align 4
  %add.ptr.i.i.i37 = getelementptr i8, ptr %392, i32 %cond.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i37, i32 -1) #7, !srcloc !129
  %393 = ptrtoint ptr %rev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load i32, ptr %rev.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %394)
  %cmp.i38 = icmp eq i32 %394, 1
  %395 = ptrtoint ptr %dev_private.i36 to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %dev_private.i36, align 4
  %397 = ptrtoint ptr %396 to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %396, align 4
  br i1 %cmp.i38, label %if.then.i, label %if.else.i41

if.then.i:                                        ; preds = %tilcdc_crtc_set_mode.exit
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i5.i = getelementptr i8, ptr %398, i32 40
  %399 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i5.i) #7, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !127
  %400 = or i32 %399, 1744830464
  %401 = ptrtoint ptr %dev_private.i36 to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load ptr, ptr %dev_private.i36, align 4
  %403 = ptrtoint ptr %402 to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %402, align 4
  %add.ptr.i4.i.i39 = getelementptr i8, ptr %404, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i.i39, i32 %400) #7, !srcloc !129
  br label %tilcdc_crtc_enable_irqs.exit

if.else.i41:                                      ; preds = %tilcdc_crtc_set_mode.exit
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i40 = getelementptr i8, ptr %398, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i40, i32 620756992) #7, !srcloc !129
  br label %tilcdc_crtc_enable_irqs.exit

tilcdc_crtc_enable_irqs.exit:                     ; preds = %if.else.i41, %if.then.i
  %405 = ptrtoint ptr %dev_private.i36 to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %dev_private.i36, align 4
  %407 = ptrtoint ptr %406 to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %406, align 4
  %add.ptr.i.i43 = getelementptr i8, ptr %408, i32 64
  %409 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i43) #7, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !127
  %410 = and i32 %409, -16777217
  %411 = ptrtoint ptr %dev_private.i36 to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load ptr, ptr %dev_private.i36, align 4
  %413 = ptrtoint ptr %412 to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %412, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %414, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %410) #7, !srcloc !129
  %415 = ptrtoint ptr %dev_private.i36 to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %dev_private.i36, align 4
  %417 = ptrtoint ptr %416 to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load ptr, ptr %416, align 4
  %add.ptr.i.i45 = getelementptr i8, ptr %418, i32 40
  %419 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i45) #7, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !127
  %420 = and i32 %419, -12289
  %421 = or i32 %420, 8192
  %422 = ptrtoint ptr %dev_private.i36 to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %dev_private.i36, align 4
  %424 = ptrtoint ptr %423 to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load ptr, ptr %423, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %425, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %421) #7, !srcloc !129
  %irq_lock = getelementptr inbounds %struct.tilcdc_crtc, ptr %crtc, i32 0, i32 9
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #7
  %call11 = tail call i64 @ktime_get() #7
  %last_vblank = getelementptr inbounds %struct.tilcdc_crtc, ptr %crtc, i32 0, i32 11
  %426 = ptrtoint ptr %last_vblank to i32
  call void @__asan_store8_noabort(i32 %426)
  store i64 %call11, ptr %last_vblank, align 8
  %427 = ptrtoint ptr %dev_private.i36 to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %dev_private.i36, align 4
  %429 = ptrtoint ptr %428 to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load ptr, ptr %428, align 4
  %add.ptr.i.i47 = getelementptr i8, ptr %430, i32 40
  %431 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i47) #7, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !127
  %432 = or i32 %431, 16777216
  %433 = ptrtoint ptr %dev_private.i36 to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load ptr, ptr %dev_private.i36, align 4
  %435 = ptrtoint ptr %434 to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load ptr, ptr %434, align 4
  %add.ptr.i4.i49 = getelementptr i8, ptr %436, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i49, i32 %432) #7, !srcloc !129
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock, i32 noundef %call8) #7
  tail call void @drm_crtc_vblank_on(ptr noundef %crtc) #7
  %437 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %437)
  store i8 1, ptr %enabled, align 4
  br label %cleanup

cleanup:                                          ; preds = %tilcdc_crtc_enable_irqs.exit, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  tail call void @mutex_unlock(ptr noundef %enable_lock) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tilcdc_crtc_irq(ptr noundef %crtc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %rev.i.i = getelementptr inbounds %struct.tilcdc_drm_private, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %rev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rev.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.i.i = icmp eq i32 %5, 2
  %cond.i.i = select i1 %cmp.i.i, i32 92, i32 8
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %cond.i.i
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !126
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !127
  %10 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_private, align 4
  %rev.i.i141 = getelementptr inbounds %struct.tilcdc_drm_private, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %rev.i.i141 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rev.i.i141, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp.i.i142 = icmp eq i32 %13, 2
  %cond.i.i143 = select i1 %cmp.i.i142, i32 92, i32 8
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 4
  %add.ptr.i.i144 = getelementptr i8, ptr %15, i32 %cond.i.i143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i144, i32 %8) #7, !srcloc !129
  %and = and i32 %9, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end22_crit_edge, label %if.then

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then:                                          ; preds = %entry
  %call2 = tail call i64 @ktime_get() #7
  %irq_lock = getelementptr inbounds %struct.tilcdc_crtc, ptr %crtc, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %irq_lock) #7
  %last_vblank = getelementptr inbounds %struct.tilcdc_crtc, ptr %crtc, i32 0, i32 11
  %16 = ptrtoint ptr %last_vblank to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %call2, ptr %last_vblank, align 8
  %next_fb = getelementptr inbounds %struct.tilcdc_crtc, ptr %crtc, i32 0, i32 13
  %17 = ptrtoint ptr %next_fb to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %next_fb, align 4
  %tobool3.not = icmp eq ptr %18, null
  br i1 %tobool3.not, label %if.then10.critedge, label %if.then4

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %crtc, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev_private.i, align 4
  %call.i = tail call ptr @drm_fb_cma_get_gem_obj(ptr noundef nonnull %18, i32 noundef 0) #7
  %paddr.i = getelementptr inbounds %struct.drm_gem_cma_object, ptr %call.i, i32 0, i32 1
  %23 = ptrtoint ptr %paddr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %paddr.i, align 8
  %offsets.i = getelementptr inbounds %struct.drm_framebuffer, ptr %18, i32 0, i32 7
  %25 = ptrtoint ptr %offsets.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %offsets.i, align 8
  %add.i = add i32 %26, %24
  %y.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 15
  %27 = ptrtoint ptr %y.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %y.i, align 8
  %pitches.i = getelementptr inbounds %struct.drm_framebuffer, ptr %18, i32 0, i32 6
  %29 = ptrtoint ptr %pitches.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pitches.i, align 8
  %mul.i = mul i32 %30, %28
  %add3.i = add i32 %add.i, %mul.i
  %x.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 14
  %31 = ptrtoint ptr %x.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %x.i, align 4
  %format.i = getelementptr inbounds %struct.drm_framebuffer, ptr %18, i32 0, i32 4
  %33 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %format.i, align 8
  %35 = getelementptr inbounds %struct.drm_format_info, ptr %34, i32 0, i32 3
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %35, align 2
  %conv.i = zext i8 %37 to i32
  %mul5.i = mul i32 %32, %conv.i
  %add6.i = add i32 %add3.i, %mul5.i
  %vdisplay.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 12, i32 6
  %38 = ptrtoint ptr %vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %vdisplay.i, align 2
  %conv7.i = zext i16 %39 to i32
  %mul10.i = mul i32 %30, %conv7.i
  %add11.i = add i32 %add6.i, %mul10.i
  %rev.i = getelementptr inbounds %struct.tilcdc_drm_private, ptr %22, i32 0, i32 2
  %40 = ptrtoint ptr %rev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %41)
  %cmp.i = icmp eq i32 %41, 1
  %sub.i = sext i1 %cmp.i to i32
  %spec.select.i = add i32 %add11.i, %sub.i
  %conv13.i = zext i32 %spec.select.i to i64
  %shl.i = shl nuw i64 %conv13.i, 32
  %conv14.i = zext i32 %add6.i to i64
  %or.i = or i64 %shl.i, %conv14.i
  %42 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev_private.i, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %add.ptr.i.i145 = getelementptr i8, ptr %45, i32 68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !132
  tail call void @arm_heavy_mb() #7
  %46 = tail call i64 @llvm.bswap.i64(i64 %or.i) #7
  %47 = ptrtoint ptr %add.ptr.i.i145 to i32
  call void @__asan_store8_noabort(i32 %47)
  store volatile i64 %46, ptr %add.ptr.i.i145, align 8
  %48 = ptrtoint ptr %next_fb to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %next_fb, align 4
  tail call void @_raw_spin_unlock(ptr noundef %irq_lock) #7
  %call8.c = tail call zeroext i1 @drm_crtc_handle_vblank(ptr noundef %crtc) #7
  br label %if.end17

if.then10.critedge:                               ; preds = %if.then
  tail call void @_raw_spin_unlock(ptr noundef %irq_lock) #7
  %call8.c139 = tail call zeroext i1 @drm_crtc_handle_vblank(ptr noundef %crtc) #7
  %event_lock = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 28
  tail call void @_raw_spin_lock(ptr noundef %event_lock) #7
  %event11 = getelementptr inbounds %struct.tilcdc_crtc, ptr %crtc, i32 0, i32 3
  %49 = ptrtoint ptr %event11 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %event11, align 4
  store ptr null, ptr %event11, align 4
  %tobool13.not = icmp eq ptr %50, null
  br i1 %tobool13.not, label %if.then10.critedge.if.end15_crit_edge, label %if.then14

if.then10.critedge.if.end15_crit_edge:            ; preds = %if.then10.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then14:                                        ; preds = %if.then10.critedge
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @drm_crtc_send_vblank_event(ptr noundef %crtc, ptr noundef nonnull %50) #7
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %if.then10.critedge.if.end15_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %event_lock) #7
  br label %if.end17

if.end17:                                         ; preds = %if.end15, %if.then4
  %frame_intact = getelementptr inbounds %struct.tilcdc_crtc, ptr %crtc, i32 0, i32 16
  %51 = ptrtoint ptr %frame_intact to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %frame_intact, align 8, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool18.not = icmp eq i8 %52, 0
  br i1 %tobool18.not, label %if.else, label %if.then19

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %sync_lost_count = getelementptr inbounds %struct.tilcdc_crtc, ptr %crtc, i32 0, i32 15
  %53 = ptrtoint ptr %sync_lost_count to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %sync_lost_count, align 4
  br label %if.end22

if.else:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %frame_intact to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 1, ptr %frame_intact, align 8
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then19, %entry.if.end22_crit_edge
  %and23 = and i32 %9, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end22.if.end34_crit_edge, label %do.body

if.end22.if.end34_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

do.body:                                          ; preds = %if.end22
  %call26 = tail call i32 @___ratelimit(ptr noundef nonnull @tilcdc_crtc_irq._rs, ptr noundef nonnull @__func__.tilcdc_crtc_irq) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %do.body.if.end34_crit_edge, label %do.end

do.body.if.end34_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev30 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %55 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev30, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.tilcdc_crtc_irq, i32 noundef %9) #10
  br label %if.end34

if.end34:                                         ; preds = %do.end, %do.body.if.end34_crit_edge, %if.end22.if.end34_crit_edge
  %and35 = and i32 %9, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end34.if.end41_crit_edge, label %if.then37

if.end34.if.end41_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.then37:                                        ; preds = %if.end34
  %palette_loaded = getelementptr inbounds %struct.tilcdc_crtc, ptr %crtc, i32 0, i32 20
  tail call void @complete(ptr noundef %palette_loaded) #7
  %57 = ptrtoint ptr %rev.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %rev.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %58)
  %cmp = icmp eq i32 %58, 1
  %59 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev_private, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 4
  br i1 %cmp, label %if.then38, label %if.else39

if.then38:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i147 = getelementptr i8, ptr %62, i32 40
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i147) #7, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !127
  %64 = and i32 %63, -268435457
  %65 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev_private, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %68, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %64) #7, !srcloc !129
  br label %if.end41

if.else39:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %62, i32 100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1073741824) #7, !srcloc !129
  br label %if.end41

if.end41:                                         ; preds = %if.else39, %if.then38, %if.end34.if.end41_crit_edge
  %and42 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.end41.if.end77_crit_edge, label %do.body45

if.end41.if.end77_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end77

do.body45:                                        ; preds = %if.end41
  %call46 = tail call i32 @___ratelimit(ptr noundef nonnull @tilcdc_crtc_irq._rs.7, ptr noundef nonnull @__func__.tilcdc_crtc_irq) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %do.body45.do.end55_crit_edge, label %do.end51

do.body45.do.end55_crit_edge:                     ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end55

do.end51:                                         ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #9
  %dev52 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %69 = ptrtoint ptr %dev52 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev52, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %70, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.tilcdc_crtc_irq, i32 noundef %9) #10
  br label %do.end55

do.end55:                                         ; preds = %do.end51, %do.body45.do.end55_crit_edge
  %frame_intact56 = getelementptr inbounds %struct.tilcdc_crtc, ptr %crtc, i32 0, i32 16
  %71 = ptrtoint ptr %frame_intact56 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 0, ptr %frame_intact56, align 8
  %72 = ptrtoint ptr %rev.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %rev.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %73)
  %cmp58 = icmp eq i32 %73, 1
  br i1 %cmp58, label %if.then59, label %if.else65

if.then59:                                        ; preds = %do.end55
  %74 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev_private, align 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %75, align 4
  %add.ptr.i150 = getelementptr i8, ptr %77, i32 40
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i150) #7, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !127
  %79 = and i32 %78, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool62.not = icmp eq i32 %79, 0
  br i1 %tobool62.not, label %if.then59.if.end77_crit_edge, label %if.then63

if.then59.if.end77_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end77

if.then63:                                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #9
  %80 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev_private, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %81, align 4
  %add.ptr.i.i152 = getelementptr i8, ptr %83, i32 40
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i152) #7, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !127
  %85 = and i32 %84, -16777217
  %86 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev_private, align 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %87, align 4
  %add.ptr.i4.i154 = getelementptr i8, ptr %89, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i154, i32 %85) #7, !srcloc !129
  %90 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev_private, align 4
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %91, align 4
  %add.ptr.i.i156 = getelementptr i8, ptr %93, i32 40
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i156) #7, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !127
  %95 = or i32 %94, 16777216
  %96 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev_private, align 4
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %97, align 4
  %add.ptr.i4.i158 = getelementptr i8, ptr %99, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i158, i32 %95) #7, !srcloc !129
  br label %if.end77

if.else65:                                        ; preds = %do.end55
  %sync_lost_count66 = getelementptr inbounds %struct.tilcdc_crtc, ptr %crtc, i32 0, i32 15
  %100 = ptrtoint ptr %sync_lost_count66 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %sync_lost_count66, align 4
  %inc = add i32 %101, 1
  store i32 %inc, ptr %sync_lost_count66, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %101)
  %cmp67 = icmp sgt i32 %101, 50
  br i1 %cmp67, label %do.end71, label %if.else65.if.end77_crit_edge

if.else65.if.end77_crit_edge:                     ; preds = %if.else65
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end77

do.end71:                                         ; preds = %if.else65
  call void @__sanitizer_cov_trace_pc() #9
  %dev72 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %102 = ptrtoint ptr %dev72 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev72, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %103, ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.tilcdc_crtc_irq, i32 noundef %9) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %104 = load ptr, ptr @system_wq, align 4
  %recover_work = getelementptr inbounds %struct.tilcdc_crtc, ptr %crtc, i32 0, i32 17
  %call.i159 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %104, ptr noundef %recover_work) #7
  %105 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dev_private, align 4
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %106, align 4
  %add.ptr.i161 = getelementptr i8, ptr %108, i32 100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i161, i32 67108864) #7, !srcloc !129
  %109 = ptrtoint ptr %sync_lost_count66 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 0, ptr %sync_lost_count66, align 4
  br label %if.end77

if.end77:                                         ; preds = %do.end71, %if.else65.if.end77_crit_edge, %if.then63, %if.then59.if.end77_crit_edge, %if.end41.if.end77_crit_edge
  %and78 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  br i1 %tobool79.not, label %if.end77.if.end85thread-pre-split_crit_edge, label %if.then80

if.end77.if.end85thread-pre-split_crit_edge:      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85thread-pre-split

if.then80:                                        ; preds = %if.end77
  %frame_done = getelementptr inbounds %struct.tilcdc_crtc, ptr %crtc, i32 0, i32 8
  %110 = ptrtoint ptr %frame_done to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 1, ptr %frame_done, align 4
  %frame_done_wq = getelementptr inbounds %struct.tilcdc_crtc, ptr %crtc, i32 0, i32 7
  tail call void @__wake_up(ptr noundef %frame_done_wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #7
  %111 = ptrtoint ptr %rev.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %rev.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %112)
  %cmp82 = icmp eq i32 %112, 1
  br i1 %cmp82, label %if.then83, label %if.then80.if.end85_crit_edge

if.then80.if.end85_crit_edge:                     ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85

if.then83:                                        ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #9
  %113 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dev_private, align 4
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %114, align 4
  %add.ptr.i.i163 = getelementptr i8, ptr %116, i32 40
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i163) #7, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !127
  %118 = and i32 %117, -134217729
  %119 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %dev_private, align 4
  %121 = ptrtoint ptr %120 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %120, align 4
  %add.ptr.i4.i165 = getelementptr i8, ptr %122, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i165, i32 %118) #7, !srcloc !129
  br label %if.end85thread-pre-split

if.end85thread-pre-split:                         ; preds = %if.then83, %if.end77.if.end85thread-pre-split_crit_edge
  %123 = ptrtoint ptr %rev.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %.pr = load i32, ptr %rev.i.i, align 4
  br label %if.end85

if.end85:                                         ; preds = %if.end85thread-pre-split, %if.then80.if.end85_crit_edge
  %124 = phi i32 [ %.pr, %if.end85thread-pre-split ], [ %112, %if.then80.if.end85_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %124)
  %cmp87 = icmp eq i32 %124, 2
  br i1 %cmp87, label %if.then88, label %if.end85.if.end89_crit_edge

if.end85.if.end89_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end89

if.then88:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #9
  %125 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dev_private, align 4
  %127 = ptrtoint ptr %126 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %126, align 4
  %add.ptr.i167 = getelementptr i8, ptr %128, i32 104
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i167, i32 0) #7, !srcloc !129
  br label %if.end89

if.end89:                                         ; preds = %if.then88, %if.end85.if.end89_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_crtc_handle_vblank(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_send_vblank_event(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tilcdc_crtc_create(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %dev1 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 1864, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %palette_loaded = getelementptr inbounds %struct.tilcdc_crtc, ptr %call.i, i32 0, i32 20
  %4 = ptrtoint ptr %palette_loaded to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %palette_loaded, align 4
  %wait.i = getelementptr inbounds %struct.tilcdc_crtc, ptr %call.i, i32 0, i32 20, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.41, ptr noundef nonnull @init_completion.__key) #7
  %5 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev1, align 4
  %palette_dma_handle = getelementptr inbounds %struct.tilcdc_crtc, ptr %call.i, i32 0, i32 18
  %call.i82 = tail call ptr @dmam_alloc_attrs(ptr noundef %6, i32 noundef 32, ptr noundef %palette_dma_handle, i32 noundef 3520, i32 noundef 0) #7
  %palette_base = getelementptr inbounds %struct.tilcdc_crtc, ptr %call.i, i32 0, i32 19
  %7 = ptrtoint ptr %palette_base to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i82, ptr %palette_base, align 4
  %tobool5.not = icmp eq ptr %call.i82, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %8 = ptrtoint ptr %call.i82 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 16384, ptr %call.i82, align 2
  %primary = getelementptr inbounds %struct.tilcdc_crtc, ptr %call.i, i32 0, i32 1
  %call9 = tail call i32 @tilcdc_plane_init(ptr noundef %dev, ptr noundef %primary) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %if.end7.fail_crit_edge, label %do.body

if.end7.fail_crit_edge:                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

do.body:                                          ; preds = %if.end7
  %enable_lock = getelementptr inbounds %struct.tilcdc_crtc, ptr %call.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %enable_lock, ptr noundef nonnull @.str.14, ptr noundef nonnull @tilcdc_crtc_create.__key) #7
  %frame_done_wq = getelementptr inbounds %struct.tilcdc_crtc, ptr %call.i, i32 0, i32 7
  tail call void @__init_waitqueue_head(ptr noundef %frame_done_wq, ptr noundef nonnull @.str.16, ptr noundef nonnull @tilcdc_crtc_create.__key.15) #7
  %irq_lock = getelementptr inbounds %struct.tilcdc_crtc, ptr %call.i, i32 0, i32 9
  tail call void @__raw_spin_lock_init(ptr noundef %irq_lock, ptr noundef nonnull @.str.18, ptr noundef nonnull @tilcdc_crtc_create.__key.17, i16 noundef signext 3) #7
  %recover_work = getelementptr inbounds %struct.tilcdc_crtc, ptr %call.i, i32 0, i32 17
  tail call void @__init_work(ptr noundef %recover_work, i32 noundef 0) #7
  %9 = ptrtoint ptr %recover_work to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -64, ptr %recover_work, align 4
  %lockdep_map = getelementptr inbounds %struct.tilcdc_crtc, ptr %call.i, i32 0, i32 17, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.20, ptr noundef nonnull @tilcdc_crtc_create.__key.19, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry23 = getelementptr inbounds %struct.tilcdc_crtc, ptr %call.i, i32 0, i32 17, i32 1
  %10 = ptrtoint ptr %entry23 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %entry23, ptr %entry23, align 4
  %prev.i = getelementptr inbounds %struct.tilcdc_crtc, ptr %call.i, i32 0, i32 17, i32 1, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %entry23, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.tilcdc_crtc, ptr %call.i, i32 0, i32 17, i32 2
  %12 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @tilcdc_crtc_recover_work, ptr %func, align 4
  %call28 = tail call i32 (ptr, ptr, ptr, ptr, ptr, ptr, ...) @drm_crtc_init_with_planes(ptr noundef %dev, ptr noundef nonnull %call.i, ptr noundef %primary, ptr noundef null, ptr noundef nonnull @tilcdc_crtc_funcs, ptr noundef nonnull @.str.21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %do.body.fail_crit_edge, label %if.end31

do.body.fail_crit_edge:                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.end31:                                         ; preds = %do.body
  %helper_private.i = getelementptr inbounds %struct.drm_crtc, ptr %call.i, i32 0, i32 19
  %13 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @tilcdc_crtc_helper_funcs, ptr %helper_private.i, align 8
  %is_componentized = getelementptr inbounds %struct.tilcdc_drm_private, ptr %1, i32 0, i32 19
  %14 = ptrtoint ptr %is_componentized to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %is_componentized, align 1, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool32.not = icmp eq i8 %15, 0
  br i1 %tobool32.not, label %if.end31.if.end46_crit_edge, label %if.then33

if.end31.if.end46_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

if.then33:                                        ; preds = %if.end31
  %16 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev1, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 27
  %18 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %of_node, align 8
  %call35 = tail call ptr @of_graph_get_port_by_id(ptr noundef %19, i32 noundef 0) #7
  %port = getelementptr inbounds %struct.drm_crtc, ptr %call.i, i32 0, i32 1
  %20 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call35, ptr %port, align 4
  %tobool37.not = icmp eq ptr %call35, null
  br i1 %tobool37.not, label %do.end41, label %if.then33.if.end46_crit_edge

if.then33.if.end46_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

do.end41:                                         ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev1, align 4
  %of_node44 = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 27
  %23 = ptrtoint ptr %of_node44 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %of_node44, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.22, ptr noundef %24) #10
  br label %fail

if.end46:                                         ; preds = %if.then33.if.end46_crit_edge, %if.end31.if.end46_crit_edge
  %crtc47 = getelementptr inbounds %struct.tilcdc_drm_private, ptr %1, i32 0, i32 11
  %25 = ptrtoint ptr %crtc47 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i, ptr %crtc47, align 4
  br label %cleanup

fail:                                             ; preds = %do.end41, %do.body.fail_crit_edge, %if.end7.fail_crit_edge
  %ret.0 = phi i32 [ %call9, %if.end7.fail_crit_edge ], [ %call28, %do.body.fail_crit_edge ], [ -22, %do.end41 ]
  %26 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call.i, align 8
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev_private.i, align 4
  tail call fastcc void @tilcdc_crtc_off(ptr noundef nonnull %call.i, i1 noundef zeroext true) #7
  %wq.i = getelementptr inbounds %struct.tilcdc_drm_private, ptr %29, i32 0, i32 10
  %30 = ptrtoint ptr %wq.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %wq.i, align 4
  tail call void @flush_workqueue(ptr noundef %31) #7
  %port.i = getelementptr inbounds %struct.drm_crtc, ptr %call.i, i32 0, i32 1
  %32 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %port.i, align 4
  tail call void @of_node_put(ptr noundef %33) #7
  tail call void @drm_crtc_cleanup(ptr noundef nonnull %call.i) #7
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end46, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %fail ], [ 0, %if.end46 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tilcdc_plane_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tilcdc_crtc_recover_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1756
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %dev1 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43) #10
  %mutex = getelementptr i8, ptr %work, i32 -1736
  %call = tail call i32 @drm_modeset_lock(ptr noundef %mutex, ptr noundef null) #7
  %state.i = getelementptr i8, ptr %work, i32 -1032
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %state.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.out_crit_edge, label %land.lhs.true.i

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

land.lhs.true.i:                                  ; preds = %entry
  %enable.i = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %enable.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %enable.i, align 4, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not.i = icmp eq i8 %7, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.out_crit_edge, label %tilcdc_crtc_is_on.exit

land.lhs.true.i.out_crit_edge:                    ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

tilcdc_crtc_is_on.exit:                           ; preds = %land.lhs.true.i
  %active.i = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %active.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %active.i, align 1, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool4.i.not = icmp eq i8 %9, 0
  br i1 %tobool4.i.not, label %tilcdc_crtc_is_on.exit.out_crit_edge, label %if.end

tilcdc_crtc_is_on.exit.out_crit_edge:             ; preds = %tilcdc_crtc_is_on.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %tilcdc_crtc_is_on.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @tilcdc_crtc_off(ptr noundef %add.ptr, i1 noundef zeroext false) #7
  tail call fastcc void @tilcdc_crtc_enable(ptr noundef %add.ptr)
  br label %out

out:                                              ; preds = %if.end, %tilcdc_crtc_is_on.exit.out_crit_edge, %land.lhs.true.i.out_crit_edge, %entry.out_crit_edge
  tail call void @drm_modeset_unlock(ptr noundef %mutex) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_init_with_planes(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_port_by_id(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tilcdc_crtc_destroy(ptr noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  tail call fastcc void @tilcdc_crtc_off(ptr noundef %crtc, i1 noundef zeroext true) #7
  %wq = getelementptr inbounds %struct.tilcdc_drm_private, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wq, align 4
  tail call void @flush_workqueue(ptr noundef %5) #7
  %port = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 1
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %port, align 4
  tail call void @of_node_put(ptr noundef %7) #7
  tail call void @drm_crtc_cleanup(ptr noundef %crtc) #7
  ret void
}

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
declare dso_local void @drm_crtc_vblank_off(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_fb_cma_get_gem_obj(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_on(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmam_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tilcdc_crtc_reset(ptr noundef %crtc) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  tail call void @drm_atomic_helper_crtc_reset(ptr noundef %crtc) #7
  %dev2 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #7
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 40
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !127
  %9 = and i32 %8, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %entry.if.end51_crit_edge, label %if.then

entry.if.end51_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

if.then:                                          ; preds = %entry
  %10 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_private.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %add.ptr.i75 = getelementptr i8, ptr %13, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i75, i32 16777216) #7, !srcloc !129
  %14 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_private.i, align 4
  %rev.i.i = getelementptr inbounds %struct.tilcdc_drm_private, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %rev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rev.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp.i.i = icmp eq i32 %17, 2
  %cond.i.i = select i1 %cmp.i.i, i32 92, i32 8
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %15, align 4
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 %cond.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -1) #7, !srcloc !129
  %frame_done = getelementptr inbounds %struct.tilcdc_crtc, ptr %crtc, i32 0, i32 8
  %20 = ptrtoint ptr %frame_done to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %frame_done, align 4
  %21 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev_private.i, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %add.ptr.i.i77 = getelementptr i8, ptr %24, i32 40
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i77) #7, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !127
  %26 = and i32 %25, -16777217
  %27 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev_private.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %30, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %26) #7, !srcloc !129
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 750) #7
  %31 = ptrtoint ptr %frame_done to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %frame_done, align 4, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool9.not.not = icmp eq i8 %32, 0
  br i1 %tobool9.not.not, label %if.then17, label %if.then.if.end51_crit_edge

if.then.if.end51_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

if.then17:                                        ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #7
  %33 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #7
  %frame_done_wq = getelementptr inbounds %struct.tilcdc_crtc, ptr %crtc, i32 0, i32 7
  %call2085 = call i32 @prepare_to_wait_event(ptr noundef %frame_done_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #7
  %34 = ptrtoint ptr %frame_done to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %frame_done, align 4, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool23.not86.not = icmp eq i8 %35, 0
  br i1 %tobool23.not86.not, label %if.then17.cleanup_crit_edge, label %if.end43.thread

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  br label %cleanup

if.end43.thread:                                  ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  call void @finish_wait(ptr noundef %frame_done_wq, ptr noundef nonnull %__wq_entry) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #7
  br label %if.end51

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then17.cleanup_crit_edge
  %__ret18.188 = phi i32 [ %__ret18.1, %cleanup.cleanup_crit_edge ], [ 50, %if.then17.cleanup_crit_edge ]
  %call40 = call i32 @schedule_timeout(i32 noundef %__ret18.188) #7
  %call20 = call i32 @prepare_to_wait_event(ptr noundef %frame_done_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #7
  %36 = ptrtoint ptr %frame_done to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %frame_done, align 4, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool23.not = icmp eq i8 %37, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool27.not = icmp eq i32 %call40, 0
  %spec.store.select54 = select i1 %tobool27.not, i32 1, i32 %call40
  %__ret18.1 = select i1 %tobool23.not, i32 %call40, i32 %spec.store.select54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret18.1)
  %tobool33.not = icmp eq i32 %__ret18.1, 0
  %not.tobool23.not = xor i1 %tobool23.not, true
  %38 = select i1 %not.tobool23.not, i1 true, i1 %tobool33.not
  br i1 %38, label %if.end43, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end43:                                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret18.1)
  %phi.cmp = icmp eq i32 %__ret18.1, 0
  call void @finish_wait(ptr noundef %frame_done_wq, ptr noundef nonnull %__wq_entry) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #7
  br i1 %phi.cmp, label %do.end48, label %if.end43.if.end51_crit_edge

if.end43.if.end51_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

do.end48:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev2, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.45) #10
  br label %if.end51

if.end51:                                         ; preds = %do.end48, %if.end43.if.end51_crit_edge, %if.end43.thread, %if.then.if.end51_crit_edge, %entry.if.end51_crit_edge
  %41 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev2, align 4
  %call.i78 = call i32 @__pm_runtime_idle(ptr noundef %42, i32 noundef 4) #7
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tilcdc_crtc_enable_vblank(ptr noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %irq_lock = getelementptr inbounds %struct.tilcdc_crtc, ptr %crtc, i32 0, i32 9
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #7
  %4 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_private, align 4
  %rev.i.i = getelementptr inbounds %struct.tilcdc_drm_private, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %rev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rev.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp.i.i = icmp eq i32 %7, 2
  %cond.i.i = select i1 %cmp.i.i, i32 92, i32 8
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 %cond.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 65536) #7, !srcloc !129
  %rev = getelementptr inbounds %struct.tilcdc_drm_private, ptr %3, i32 0, i32 2
  %10 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp7 = icmp eq i32 %11, 1
  %12 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_private, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  br i1 %cmp7, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i16 = getelementptr i8, ptr %15, i32 64
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i16) #7, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !127
  %17 = or i32 %16, 67108864
  %18 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_private, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %21, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %17) #7, !srcloc !129
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i18 = getelementptr i8, ptr %15, i32 96
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i18) #7, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !127
  %23 = or i32 %22, 65536
  %24 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev_private, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %add.ptr.i4.i20 = getelementptr i8, ptr %27, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i20, i32 %23) #7, !srcloc !129
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock, i32 noundef %call4) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tilcdc_crtc_disable_vblank(ptr noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %irq_lock = getelementptr inbounds %struct.tilcdc_crtc, ptr %crtc, i32 0, i32 9
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #7
  %rev = getelementptr inbounds %struct.tilcdc_drm_private, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %rev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp7 = icmp eq i32 %5, 1
  %6 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_private, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  br i1 %cmp7, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 64
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !127
  %11 = and i32 %10, -67108865
  %12 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_private, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %15, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %11) #7, !srcloc !129
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i15 = getelementptr i8, ptr %9, i32 96
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i15) #7, !srcloc !126
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !127
  %17 = and i32 %16, -65537
  %18 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_private, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %add.ptr.i4.i17 = getelementptr i8, ptr %21, i32 96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i17, i32 %17) #7, !srcloc !129
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock, i32 noundef %call4) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_crtc_reset(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tilcdc_crtc_mode_valid(ptr nocapture noundef readonly %crtc, ptr noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 1
  %4 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %hdisplay, align 4
  %conv = zext i16 %5 to i32
  %max_width = getelementptr inbounds %struct.tilcdc_drm_private, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %max_width to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_width, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv)
  %cmp = icmp uge i32 %7, %conv
  %and = and i32 %conv, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %or.cond = and i1 %cmp, %tobool.not
  br i1 %or.cond, label %if.end5, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %entry
  %vdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 6
  %8 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %vdisplay, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %9)
  %cmp7 = icmp ugt i16 %9, 2048
  br i1 %cmp7, label %if.end5.cleanup_crit_edge, label %if.end10

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %conv6 = zext i16 %9 to i32
  %call = tail call i32 @drm_mode_vrefresh(ptr noundef %mode) #7
  %10 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mode, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.46, i32 noundef %conv, i32 noundef %conv6, i32 noundef %call, i32 noundef %11) #7
  %htotal = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 4
  %12 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %htotal, align 2
  %conv15 = zext i16 %13 to i32
  %hsync_end = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 3
  %14 = ptrtoint ptr %hsync_end to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %hsync_end, align 4
  %conv16 = zext i16 %15 to i32
  %hsync_start = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 2
  %16 = ptrtoint ptr %hsync_start to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %hsync_start, align 2
  %conv17 = zext i16 %17 to i32
  %18 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %hdisplay, align 4
  %conv19 = zext i16 %19 to i32
  %vtotal = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 9
  %20 = ptrtoint ptr %vtotal to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %vtotal, align 4
  %conv26 = zext i16 %21 to i32
  %vsync_end = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 8
  %22 = ptrtoint ptr %vsync_end to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %vsync_end, align 2
  %conv27 = zext i16 %23 to i32
  %sub28 = sub nsw i32 %conv26, %conv27
  %vsync_start = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 7
  %24 = ptrtoint ptr %vsync_start to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %vsync_start, align 4
  %conv29 = zext i16 %25 to i32
  %26 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %vdisplay, align 2
  %conv31 = zext i16 %27 to i32
  %sub32 = sub nsw i32 %conv29, %conv31
  %28 = xor i32 %conv16, -1
  %sub38 = add nsw i32 %28, %conv15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %sub38)
  %tobool40.not = icmp ult i32 %sub38, 1024
  br i1 %tobool40.not, label %if.end42, label %if.end10.cleanup.sink.split_crit_edge

if.end10.cleanup.sink.split_crit_edge:            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end42:                                         ; preds = %if.end10
  %29 = xor i32 %conv19, -1
  %sub43 = add nsw i32 %29, %conv17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %sub43)
  %tobool45.not = icmp ult i32 %sub43, 1024
  br i1 %tobool45.not, label %if.end47, label %if.end42.cleanup.sink.split_crit_edge

if.end42.cleanup.sink.split_crit_edge:            ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end47:                                         ; preds = %if.end42
  %30 = xor i32 %conv17, -1
  %sub48 = add nsw i32 %30, %conv16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %sub48)
  %tobool50.not = icmp ult i32 %sub48, 1024
  br i1 %tobool50.not, label %if.end52, label %if.end47.cleanup.sink.split_crit_edge

if.end47.cleanup.sink.split_crit_edge:            ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end52:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %sub28)
  %tobool54.not = icmp ult i32 %sub28, 256
  br i1 %tobool54.not, label %if.end56, label %if.end52.cleanup.sink.split_crit_edge

if.end52.cleanup.sink.split_crit_edge:            ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end56:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %sub32)
  %tobool58.not = icmp ult i32 %sub32, 256
  br i1 %tobool58.not, label %if.end60, label %if.end56.cleanup.sink.split_crit_edge

if.end56.cleanup.sink.split_crit_edge:            ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end60:                                         ; preds = %if.end56
  %31 = xor i32 %conv29, -1
  %sub61 = add nsw i32 %31, %conv27
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %sub61)
  %tobool63.not = icmp ult i32 %sub61, 64
  br i1 %tobool63.not, label %if.end65, label %if.end60.cleanup.sink.split_crit_edge

if.end60.cleanup.sink.split_crit_edge:            ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end65:                                         ; preds = %if.end60
  %32 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mode, align 4
  %max_pixelclock = getelementptr inbounds %struct.tilcdc_drm_private, ptr %3, i32 0, i32 5
  %34 = ptrtoint ptr %max_pixelclock to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %max_pixelclock, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %35)
  %cmp67 = icmp ugt i32 %33, %35
  br i1 %cmp67, label %if.end65.cleanup.sink.split_crit_edge, label %if.end70

if.end65.cleanup.sink.split_crit_edge:            ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end70:                                         ; preds = %if.end65
  %36 = ptrtoint ptr %max_width to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %max_width, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %conv19)
  %cmp74 = icmp ult i32 %37, %conv19
  br i1 %cmp74, label %if.end70.cleanup_crit_edge, label %if.end77

if.end70.cleanup_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end77:                                         ; preds = %if.end70
  %mul = mul nuw i32 %conv31, %conv19
  %call82 = tail call i32 @drm_mode_vrefresh(ptr noundef %mode) #7
  %mul83 = mul i32 %mul, %call82
  %max_bandwidth = getelementptr inbounds %struct.tilcdc_drm_private, ptr %3, i32 0, i32 4
  %38 = ptrtoint ptr %max_bandwidth to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %max_bandwidth, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul83, i32 %39)
  %cmp84 = icmp ugt i32 %mul83, %39
  br i1 %cmp84, label %if.end77.cleanup.sink.split_crit_edge, label %if.end77.cleanup_crit_edge

if.end77.cleanup_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end77.cleanup.sink.split_crit_edge:            ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end77.cleanup.sink.split_crit_edge, %if.end65.cleanup.sink.split_crit_edge, %if.end60.cleanup.sink.split_crit_edge, %if.end56.cleanup.sink.split_crit_edge, %if.end52.cleanup.sink.split_crit_edge, %if.end47.cleanup.sink.split_crit_edge, %if.end42.cleanup.sink.split_crit_edge, %if.end10.cleanup.sink.split_crit_edge
  %.str.54.sink = phi ptr [ @.str.47, %if.end10.cleanup.sink.split_crit_edge ], [ @.str.48, %if.end42.cleanup.sink.split_crit_edge ], [ @.str.49, %if.end47.cleanup.sink.split_crit_edge ], [ @.str.50, %if.end52.cleanup.sink.split_crit_edge ], [ @.str.51, %if.end56.cleanup.sink.split_crit_edge ], [ @.str.52, %if.end60.cleanup.sink.split_crit_edge ], [ @.str.53, %if.end65.cleanup.sink.split_crit_edge ], [ @.str.54, %if.end77.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ 24, %if.end10.cleanup.sink.split_crit_edge ], [ 24, %if.end42.cleanup.sink.split_crit_edge ], [ 22, %if.end47.cleanup.sink.split_crit_edge ], [ 28, %if.end52.cleanup.sink.split_crit_edge ], [ 28, %if.end56.cleanup.sink.split_crit_edge ], [ 26, %if.end60.cleanup.sink.split_crit_edge ], [ 15, %if.end65.cleanup.sink.split_crit_edge ], [ -2, %if.end77.cleanup.sink.split_crit_edge ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull %.str.54.sink) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end77.cleanup_crit_edge, %if.end70.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 11, %entry.cleanup_crit_edge ], [ 12, %if.end5.cleanup_crit_edge ], [ 5, %if.end70.cleanup_crit_edge ], [ 0, %if.end77.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @tilcdc_crtc_mode_fixup(ptr nocapture noundef readonly %crtc, ptr nocapture noundef readonly %mode, ptr nocapture noundef %adjusted_mode) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %simulate_vesa_sync = getelementptr inbounds %struct.tilcdc_crtc, ptr %crtc, i32 0, i32 14
  %0 = ptrtoint ptr %simulate_vesa_sync to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %simulate_vesa_sync, align 8, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %hsync_end = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 3
  %2 = ptrtoint ptr %hsync_end to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %hsync_end, align 4
  %hsync_start = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 2
  %4 = ptrtoint ptr %hsync_start to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %hsync_start, align 2
  %sub = sub i16 %3, %5
  %hskew = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 5
  %6 = ptrtoint ptr %hskew to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %sub, ptr %hskew, align 4
  %flags = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 11
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %or = or i32 %8, 512
  store i32 %or, ptr %flags, align 4
  %flags3 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 11
  %9 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags3, align 4
  %and = and i32 %10, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  %or11 = and i32 %8, -516
  %storemerge.v = select i1 %tobool4.not, i32 514, i32 513
  %storemerge = or i32 %storemerge.v, %or11
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %storemerge, ptr %flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tilcdc_crtc_atomic_check(ptr noundef readonly %crtc, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %active = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %active, align 1, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %planes = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 3
  %8 = ptrtoint ptr %planes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %planes, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %primary = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 6
  %12 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %primary, align 4
  %cmp.not = icmp eq ptr %11, %13
  br i1 %cmp.not, label %lor.lhs.false, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

lor.lhs.false:                                    ; preds = %if.end
  %state3 = getelementptr inbounds %struct.__drm_planes_state, ptr %9, i32 0, i32 1
  %14 = ptrtoint ptr %state3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %state3, align 4
  %cmp4 = icmp eq ptr %15, null
  br i1 %cmp4, label %lor.lhs.false.do.body_crit_edge, label %lor.lhs.false5

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %crtc9 = getelementptr inbounds %struct.drm_plane_state, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %crtc9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %crtc9, align 4
  %cmp10.not = icmp eq ptr %17, %crtc
  br i1 %cmp10.not, label %lor.lhs.false5.cleanup_crit_edge, label %lor.lhs.false5.do.body_crit_edge

lor.lhs.false5.do.body_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

lor.lhs.false5.cleanup_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %lor.lhs.false5.do.body_crit_edge, %lor.lhs.false.do.body_crit_edge, %if.end.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tilcdc_crtc_atomic_check.__UNIQUE_ID_ddebug331, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tilcdc_crtc_atomic_check, %if.then16)) #7
          to label %cleanup [label %if.then16], !srcloc !136

if.then16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %crtc, align 8
  %dev17 = getelementptr inbounds %struct.drm_device, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev17, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tilcdc_crtc_atomic_check.__UNIQUE_ID_ddebug331, ptr noundef %21, ptr noundef nonnull @.str.57) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %do.body, %lor.lhs.false5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -22, %if.then16 ], [ 0, %lor.lhs.false5.cleanup_crit_edge ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tilcdc_crtc_atomic_flush(ptr noundef %crtc, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state1, align 4
  %event = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %event, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %crtc, align 8
  %event_lock = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 28
  tail call void @_raw_spin_lock_irq(ptr noundef %event_lock) #7
  %6 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state1, align 4
  %event3 = getelementptr inbounds %struct.drm_crtc_state, ptr %7, i32 0, i32 18
  %8 = ptrtoint ptr %event3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %event3, align 4
  tail call void @drm_crtc_send_vblank_event(ptr noundef %crtc, ptr noundef %9) #7
  %10 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %state1, align 4
  %event5 = getelementptr inbounds %struct.drm_crtc_state, ptr %11, i32 0, i32 18
  %12 = ptrtoint ptr %event5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %event5, align 4
  %13 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %crtc, align 8
  %event_lock7 = getelementptr inbounds %struct.drm_device, ptr %14, i32 0, i32 28
  tail call void @_raw_spin_unlock_irq(ptr noundef %event_lock7) #7
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tilcdc_crtc_atomic_enable(ptr noundef %crtc, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @tilcdc_crtc_enable(ptr noundef %crtc)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tilcdc_crtc_atomic_disable(ptr noundef %crtc, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @tilcdc_crtc_off(ptr noundef %crtc, i1 noundef zeroext false) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_cleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !14, !15, !17, !18, !19, !20, !22, !23, !24, !26, !27, !29, !30, !32, !33, !35, !36, !38, !40, !41, !42, !43, !45, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !58, !60, !62, !63, !64, !65, !67, !69, !70, !71, !73, !74, !75, !76, !78, !79, !81, !82, !83, !84, !85, !87, !89, !90, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !114, !115}
!llvm.module.flags = !{!116, !117, !118, !119, !120, !121, !122, !123}
!llvm.ident = !{!124}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_crtc.c", i32 608, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @tilcdc_crtc_update_fb._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @tilcdc_crtc_update_fb._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_crtc.c", i32 956, i32 3}
!10 = !{ptr @tilcdc_crtc_irq._rs, !9, !"_rs", i1 false, i1 false}
!11 = !{ptr @__func__.tilcdc_crtc_irq, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @tilcdc_crtc_irq._entry, !9, !"_entry", i1 false, i1 false}
!14 = !{ptr @tilcdc_crtc_irq._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @tilcdc_crtc_irq._rs.7, !16, !"_rs", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_crtc.c", i32 970, i32 3}
!17 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @tilcdc_crtc_irq._entry.8, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @tilcdc_crtc_irq._entry_ptr.10, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_crtc.c", i32 984, i32 5}
!22 = !{ptr @tilcdc_crtc_irq._entry.11, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @tilcdc_crtc_irq._entry_ptr.13, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @tilcdc_crtc_create.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_crtc.c", i32 1042, i32 2}
!26 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @tilcdc_crtc_create.__key.15, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_crtc.c", i32 1044, i32 2}
!29 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @tilcdc_crtc_create.__key.17, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_crtc.c", i32 1046, i32 2}
!32 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @tilcdc_crtc_create.__key.19, !34, !"__key", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_crtc.c", i32 1047, i32 2}
!35 = !{ptr @.str.20, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.21, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_crtc.c", i32 1053, i32 6}
!38 = !{ptr @.str.22, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_crtc.c", i32 1062, i32 4}
!40 = !{ptr @.str.23, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @tilcdc_crtc_create._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @tilcdc_crtc_create._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.24, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_crtc.c", i32 514, i32 3}
!45 = !{ptr @.str.25, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @tilcdc_crtc_off._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @tilcdc_crtc_off._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.26, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_crtc.c", i32 228, i32 4}
!50 = !{ptr @.str.27, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @tilcdc_crtc_set_clk._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @tilcdc_crtc_set_clk._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.29, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_crtc.c", i32 245, i32 4}
!55 = !{ptr @.str.30, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @tilcdc_crtc_set_clk._entry.28, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @tilcdc_crtc_set_clk._entry_ptr.31, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.32, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_crtc.c", i32 253, i32 2}
!60 = !{ptr @.str.33, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_crtc.c", i32 307, i32 3}
!62 = !{ptr @.str.34, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @tilcdc_crtc_set_mode._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @tilcdc_crtc_set_mode._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.35, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_crtc.c", i32 321, i32 2}
!67 = !{ptr @.str.37, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_crtc.c", i32 393, i32 4}
!69 = !{ptr @tilcdc_crtc_set_mode._entry.36, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @tilcdc_crtc_set_mode._entry_ptr.38, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.39, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_crtc.c", i32 130, i32 3}
!73 = !{ptr @.str.40, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @tilcdc_crtc_load_palette._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @tilcdc_crtc_load_palette._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @init_completion.__key, !77, !"__key", i1 false, i1 false}
!77 = !{!"../include/linux/completion.h", i32 87, i32 2}
!78 = !{ptr @.str.41, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.42, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_crtc.c", i32 575, i32 2}
!81 = !{ptr @.str.43, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.44, !80, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @tilcdc_crtc_recover_work._entry, !80, !"_entry", i1 false, i1 false}
!84 = !{ptr @tilcdc_crtc_recover_work._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @tilcdc_crtc_funcs, !86, !"tilcdc_crtc_funcs", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_crtc.c", i32 758, i32 36}
!87 = !{ptr @.str.45, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_crtc.c", i32 752, i32 4}
!89 = !{ptr @tilcdc_crtc_reset._entry, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @tilcdc_crtc_reset._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @tilcdc_crtc_helper_funcs, !92, !"tilcdc_crtc_helper_funcs", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_crtc.c", i32 859, i32 43}
!93 = !{ptr @.str.46, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_crtc.c", i32 791, i32 2}
!95 = !{ptr @.str.47, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_crtc.c", i32 803, i32 3}
!97 = !{ptr @.str.48, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_crtc.c", i32 808, i32 3}
!99 = !{ptr @.str.49, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_crtc.c", i32 813, i32 3}
!101 = !{ptr @.str.50, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_crtc.c", i32 818, i32 3}
!103 = !{ptr @.str.51, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_crtc.c", i32 823, i32 3}
!105 = !{ptr @.str.52, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_crtc.c", i32 828, i32 3}
!107 = !{ptr @.str.53, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_crtc.c", i32 837, i32 3}
!109 = !{ptr @.str.54, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_crtc.c", i32 852, i32 3}
!111 = !{ptr @.str.55, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/gpu/drm/tilcdc/tilcdc_crtc.c", i32 681, i32 3}
!113 = !{ptr @.str.56, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.57, !112, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @tilcdc_crtc_atomic_check.__UNIQUE_ID_ddebug331, !112, !"__UNIQUE_ID_ddebug331", i1 false, i1 false}
!116 = !{i32 1, !"wchar_size", i32 2}
!117 = !{i32 1, !"min_enum_size", i32 4}
!118 = !{i32 8, !"branch-target-enforcement", i32 0}
!119 = !{i32 8, !"sign-return-address", i32 0}
!120 = !{i32 8, !"sign-return-address-all", i32 0}
!121 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!122 = !{i32 7, !"uwtable", i32 1}
!123 = !{i32 7, !"frame-pointer", i32 2}
!124 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!125 = !{i8 0, i8 2}
!126 = !{i64 6252141}
!127 = !{i64 2153792490}
!128 = !{i64 2153793845}
!129 = !{i64 6251723}
!130 = !{i64 501872, i64 501899, i64 501921, i64 501949}
!131 = !{i64 502280, i64 502307, i64 502340, i64 502361, i64 502388, i64 502414}
!132 = !{i64 2157050135}
!133 = !{!"branch_weights", i32 1, i32 2000}
!134 = !{!"branch_weights", i32 2000, i32 1}
!135 = !{i64 2148009600, i64 2148009880, i64 2148010214, i64 2148010548}
!136 = !{i64 2148783927, i64 2148783932, i64 2148783945, i64 2148783989, i64 2148784023, i64 2148784044}
