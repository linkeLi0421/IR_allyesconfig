; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/mediatek/mtk_drm_crtc.c_pt.bc'
source_filename = "../drivers/gpu/drm/mediatek/mtk_drm_crtc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.drm_crtc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mtk_drm_crtc = type { %struct.drm_crtc, i8, i8, ptr, ptr, i32, i8, i8, %struct.cmdq_client, %struct.cmdq_pkt, i32, i32, ptr, ptr, i32, ptr, %struct.mutex, i8 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
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
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.cmdq_client = type { %struct.mbox_client, ptr }
%struct.mbox_client = type { ptr, i8, i32, i8, ptr, ptr, ptr }
%struct.cmdq_pkt = type { ptr, i32, i32, i32, %struct.cmdq_task_cb, %struct.cmdq_task_cb, ptr }
%struct.cmdq_task_cb = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.mtk_ddp_comp = type { ptr, i32, ptr, i32, ptr }
%struct.mtk_ddp_comp_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.87, ptr, i32, ptr, i8, i32 }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.87 = type { i32, ptr }
%struct.mtk_plane_state = type { %struct.drm_plane_state, %struct.mtk_plane_pending_state }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.mtk_plane_pending_state = type { i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8 }
%struct.mtk_drm_private = type { ptr, ptr, i32, ptr, ptr, ptr, [32 x ptr], [32 x %struct.mtk_ddp_comp], ptr, ptr }
%struct.mtk_mmsys_driver_data = type { ptr, i32, ptr, i32, ptr, i32, i8 }
%struct.mtk_crtc_state = type { %struct.drm_crtc_state, i8, i32, i32, i32 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.page = type { i32, %union.anon.2, %union.anon.75, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.75 = type { %struct.atomic_t }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.drm_pending_vblank_event = type { %struct.drm_pending_event, i32, i64, %union.anon.85 }
%struct.drm_pending_event = type { ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head }
%union.anon.85 = type { %struct.drm_event_vblank }
%struct.drm_event_vblank = type { %struct.drm_event, i64, i32, i32, i32, i32 }
%struct.drm_event = type { i32, i32 }
%struct.drm_connector_list_iter = type { ptr, ptr }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.86 }
%union.anon.86 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }

@mtk_drm_crtc_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 876, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"Not creating crtc %d because component %d is disabled or missing\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mtk_drm_crtc_create\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/gpu/drm/mediatek/mtk_drm_crtc.c\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mtk_drm_crtc_create._entry_ptr = internal global ptr @mtk_drm_crtc_create._entry, section ".printk_index", align 4
@mtk_drm_crtc_create._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 881, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Component %pOF not initialized\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@mtk_drm_crtc_create._entry_ptr.8 = internal global ptr @mtk_drm_crtc_create._entry.5, section ".printk_index", align 4
@mtk_drm_crtc_create._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 901, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to get mutex: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@mtk_drm_crtc_create._entry_ptr.11 = internal global ptr @mtk_drm_crtc_create._entry.9, section ".printk_index", align 4
@mtk_drm_crtc_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&mtk_crtc->hw_lock\00", [45 x i8] zeroinitializer }, align 32
@mtk_drm_crtc_create.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.1, ptr @.str.2, ptr @.str.14, i8 0, i8 -18, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mediatek_drm\00", [19 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"mtk_crtc %d failed to create mailbox client, writing register by CPU now\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mediatek,gce-events\00", [44 x i8] zeroinitializer }, align 32
@mtk_drm_crtc_create.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.1, ptr @.str.2, ptr @.str.16, i8 0, i8 -15, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"mtk_crtc %d failed to get mediatek,gce-events property\0A\00", [40 x i8] zeroinitializer }, align 32
@mtk_drm_crtc_create.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.13, ptr @.str.1, ptr @.str.2, ptr @.str.17, i8 0, i8 -13, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"mtk_crtc %d failed to create cmdq packet\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to find component for plane %d\0A\00", [57 x i8] zeroinitializer }, align 32
@mtk_crtc_funcs = internal constant { %struct.drm_crtc_funcs, [32 x i8] } { %struct.drm_crtc_funcs { ptr @mtk_drm_crtc_reset, ptr null, ptr null, ptr null, ptr null, ptr @mtk_drm_crtc_destroy, ptr @drm_atomic_helper_set_config, ptr @drm_atomic_helper_page_flip, ptr null, ptr null, ptr @mtk_drm_crtc_duplicate_state, ptr @mtk_drm_crtc_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_drm_crtc_enable_vblank, ptr @mtk_drm_crtc_disable_vblank, ptr null }, [32 x i8] zeroinitializer }, align 32
@mtk_crtc_helper_funcs = internal constant { %struct.drm_crtc_helper_funcs, [32 x i8] } { %struct.drm_crtc_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr @mtk_drm_crtc_mode_fixup, ptr null, ptr @mtk_drm_crtc_mode_set_nofb, ptr null, ptr null, ptr null, ptr null, ptr @mtk_drm_crtc_atomic_begin, ptr @mtk_drm_crtc_atomic_flush, ptr @mtk_drm_crtc_atomic_enable, ptr @mtk_drm_crtc_atomic_disable, ptr null }, [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.19 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"mtk_crtc %d CMDQ execute command timeout!\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"new event while there is still a pending event\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s %d\0A\00", [25 x i8] zeroinitializer }, align 32
@__func__.mtk_drm_crtc_atomic_enable = private unnamed_addr constant [27 x i8] c"mtk_drm_crtc_atomic_enable\00", align 1
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to get larb: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to enable power domain: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to enable mutex clock: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to enable component clocks: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to enable clock %d: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@__func__.mtk_drm_crtc_atomic_disable = private unnamed_addr constant [28 x i8] c"mtk_drm_crtc_atomic_disable\00", align 1
@mtk_drm_cmdq_pkt_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 130, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dma map failed, size=%u\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mtk_drm_cmdq_pkt_create\00", [40 x i8] zeroinitializer }, align 32
@mtk_drm_cmdq_pkt_create._entry_ptr = internal global ptr @mtk_drm_cmdq_pkt_create._entry, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 874, i32 4 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 881, i32 4 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 901, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 942, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 953, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 960, i32 8 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 964, i32 4 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 973, i32 5 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 272, i32 2 }
@___asan_gen_.88 = private unnamed_addr constant [15 x i8] c"mtk_crtc_funcs\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 746, i32 36 }
@___asan_gen_.91 = private unnamed_addr constant [22 x i8] c"mtk_crtc_helper_funcs\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 757, i32 43 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 605, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 722, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 662, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 666, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 354, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 360, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 366, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 233, i32 4 }
@___asan_gen_.118 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.125 = private constant [43 x i8] c"../drivers/gpu/drm/mediatek/mtk_drm_crtc.c\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 130, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.131 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 326, i32 6 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @mtk_drm_cmdq_pkt_create._entry, ptr @mtk_drm_cmdq_pkt_create._entry_ptr, ptr @mtk_drm_crtc_create._entry, ptr @mtk_drm_crtc_create._entry.5, ptr @mtk_drm_crtc_create._entry.9, ptr @mtk_drm_crtc_create._entry_ptr, ptr @mtk_drm_crtc_create._entry_ptr.11, ptr @mtk_drm_crtc_create._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.10, ptr @mtk_drm_crtc_create.__key, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @mtk_crtc_funcs, ptr @mtk_crtc_helper_funcs, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_drm_crtc_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_drm_crtc_create._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_drm_crtc_create._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_drm_crtc_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_crtc_funcs to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_crtc_helper_funcs to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_drm_cmdq_pkt_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mtk_drm_crtc_plane_check(ptr nocapture noundef readonly %crtc, ptr noundef %plane, ptr noundef %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %planes.i = getelementptr inbounds %struct.mtk_drm_crtc, ptr %crtc, i32 0, i32 4
  %0 = ptrtoint ptr %planes.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %planes.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %plane to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 528
  %ddp_comp_nr.i = getelementptr inbounds %struct.mtk_drm_crtc, ptr %crtc, i32 0, i32 14
  %2 = ptrtoint ptr %ddp_comp_nr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ddp_comp_nr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp46.not.i = icmp eq i32 %3, 0
  br i1 %cmp46.not.i, label %entry.mtk_drm_ddp_comp_for_plane.exit.thread_crit_edge, label %for.body.lr.ph.i

entry.mtk_drm_ddp_comp_for_plane.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_drm_ddp_comp_for_plane.exit.thread

for.body.lr.ph.i:                                 ; preds = %entry
  %ddp_comp.i = getelementptr inbounds %struct.mtk_drm_crtc, ptr %crtc, i32 0, i32 15
  br label %for.body.i

for.body.i:                                       ; preds = %mtk_ddp_comp_layer_nr.exit44.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %count.048.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add4.i, %mtk_ddp_comp_layer_nr.exit44.i.for.body.i_crit_edge ]
  %i.047.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %mtk_ddp_comp_layer_nr.exit44.i.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %ddp_comp.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ddp_comp.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %5, i32 %i.047.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %funcs.i.i = getelementptr inbounds %struct.mtk_ddp_comp, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %funcs.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %funcs.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %for.body.i.mtk_ddp_comp_layer_nr.exit.i_crit_edge, label %land.lhs.true.i.i

for.body.i.mtk_ddp_comp_layer_nr.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_ddp_comp_layer_nr.exit.i

land.lhs.true.i.i:                                ; preds = %for.body.i
  %layer_nr.i.i = getelementptr inbounds %struct.mtk_ddp_comp_funcs, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %layer_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %layer_nr.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %11, null
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.mtk_ddp_comp_layer_nr.exit.i_crit_edge, label %if.then.i.i

land.lhs.true.i.i.mtk_ddp_comp_layer_nr.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_ddp_comp_layer_nr.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %7, align 4
  %call.i.i = tail call i32 %11(ptr noundef %13) #9
  br label %mtk_ddp_comp_layer_nr.exit.i

mtk_ddp_comp_layer_nr.exit.i:                     ; preds = %if.then.i.i, %land.lhs.true.i.i.mtk_ddp_comp_layer_nr.exit.i_crit_edge, %for.body.i.mtk_ddp_comp_layer_nr.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ 0, %land.lhs.true.i.i.mtk_ddp_comp_layer_nr.exit.i_crit_edge ], [ 0, %for.body.i.mtk_ddp_comp_layer_nr.exit.i_crit_edge ]
  %add.i = add i32 %retval.0.i.i, %count.048.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.div.i, i32 %add.i)
  %cmp2.i = icmp ult i32 %sub.ptr.div.i, %add.i
  br i1 %cmp2.i, label %mtk_drm_ddp_comp_for_plane.exit, label %if.end.i

if.end.i:                                         ; preds = %mtk_ddp_comp_layer_nr.exit.i
  %14 = ptrtoint ptr %funcs.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %funcs.i.i, align 4
  %tobool.not.i37.i = icmp eq ptr %15, null
  br i1 %tobool.not.i37.i, label %if.end.i.mtk_ddp_comp_layer_nr.exit44.i_crit_edge, label %land.lhs.true.i40.i

if.end.i.mtk_ddp_comp_layer_nr.exit44.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_ddp_comp_layer_nr.exit44.i

land.lhs.true.i40.i:                              ; preds = %if.end.i
  %layer_nr.i38.i = getelementptr inbounds %struct.mtk_ddp_comp_funcs, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %layer_nr.i38.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %layer_nr.i38.i, align 4
  %tobool2.not.i39.i = icmp eq ptr %17, null
  br i1 %tobool2.not.i39.i, label %land.lhs.true.i40.i.mtk_ddp_comp_layer_nr.exit44.i_crit_edge, label %if.then.i42.i

land.lhs.true.i40.i.mtk_ddp_comp_layer_nr.exit44.i_crit_edge: ; preds = %land.lhs.true.i40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_ddp_comp_layer_nr.exit44.i

if.then.i42.i:                                    ; preds = %land.lhs.true.i40.i
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %7, align 4
  %call.i41.i = tail call i32 %17(ptr noundef %19) #9
  br label %mtk_ddp_comp_layer_nr.exit44.i

mtk_ddp_comp_layer_nr.exit44.i:                   ; preds = %if.then.i42.i, %land.lhs.true.i40.i.mtk_ddp_comp_layer_nr.exit44.i_crit_edge, %if.end.i.mtk_ddp_comp_layer_nr.exit44.i_crit_edge
  %retval.0.i43.i = phi i32 [ %call.i41.i, %if.then.i42.i ], [ 0, %land.lhs.true.i40.i.mtk_ddp_comp_layer_nr.exit44.i_crit_edge ], [ 0, %if.end.i.mtk_ddp_comp_layer_nr.exit44.i_crit_edge ]
  %add4.i = add i32 %retval.0.i43.i, %count.048.i
  %inc.i = add nuw i32 %i.047.i, 1
  %20 = ptrtoint ptr %ddp_comp_nr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ddp_comp_nr.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %21
  br i1 %cmp.i, label %mtk_ddp_comp_layer_nr.exit44.i.for.body.i_crit_edge, label %mtk_ddp_comp_layer_nr.exit44.i.mtk_drm_ddp_comp_for_plane.exit.thread_crit_edge

mtk_ddp_comp_layer_nr.exit44.i.mtk_drm_ddp_comp_for_plane.exit.thread_crit_edge: ; preds = %mtk_ddp_comp_layer_nr.exit44.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_drm_ddp_comp_for_plane.exit.thread

mtk_ddp_comp_layer_nr.exit44.i.for.body.i_crit_edge: ; preds = %mtk_ddp_comp_layer_nr.exit44.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

mtk_drm_ddp_comp_for_plane.exit.thread:           ; preds = %mtk_ddp_comp_layer_nr.exit44.i.mtk_drm_ddp_comp_for_plane.exit.thread_crit_edge, %entry.mtk_drm_ddp_comp_for_plane.exit.thread_crit_edge
  %index.i = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 17
  %22 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %index.i, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 272, i32 noundef 9, ptr noundef nonnull @.str.18, i32 noundef %23) #9
  br label %cleanup

mtk_drm_ddp_comp_for_plane.exit:                  ; preds = %mtk_ddp_comp_layer_nr.exit.i
  %sub.i = sub i32 %sub.ptr.div.i, %count.048.i
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %mtk_drm_ddp_comp_for_plane.exit.cleanup_crit_edge, label %if.then

mtk_drm_ddp_comp_for_plane.exit.cleanup_crit_edge: ; preds = %mtk_drm_ddp_comp_for_plane.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %mtk_drm_ddp_comp_for_plane.exit
  %24 = ptrtoint ptr %funcs.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %funcs.i.i, align 4
  %tobool.not.i = icmp eq ptr %25, null
  br i1 %tobool.not.i, label %if.then.cleanup_crit_edge, label %land.lhs.true.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.then
  %layer_check.i = getelementptr inbounds %struct.mtk_ddp_comp_funcs, ptr %25, i32 0, i32 9
  %26 = ptrtoint ptr %layer_check.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %layer_check.i, align 4
  %tobool2.not.i = icmp eq ptr %27, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %if.then.i4

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i4:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %7, align 4
  %call.i = tail call i32 %27(ptr noundef %29, i32 noundef %sub.i, ptr noundef %state) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i4, %land.lhs.true.i.cleanup_crit_edge, %if.then.cleanup_crit_edge, %mtk_drm_ddp_comp_for_plane.exit.cleanup_crit_edge, %mtk_drm_ddp_comp_for_plane.exit.thread
  %retval.0 = phi i32 [ 0, %mtk_drm_ddp_comp_for_plane.exit.cleanup_crit_edge ], [ 0, %mtk_drm_ddp_comp_for_plane.exit.thread ], [ %call.i, %if.then.i4 ], [ 0, %land.lhs.true.i.cleanup_crit_edge ], [ 0, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtk_drm_crtc_async_update(ptr noundef %crtc, ptr nocapture noundef readnone %plane, ptr nocapture noundef readnone %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr inbounds %struct.mtk_drm_crtc, ptr %crtc, i32 0, i32 1
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 8, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @mtk_drm_crtc_update_config(ptr noundef %crtc, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mtk_drm_crtc_update_config(ptr noundef %mtk_crtc, i1 noundef zeroext %needs_vblank) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdq_handle1 = getelementptr inbounds %struct.mtk_drm_crtc, ptr %mtk_crtc, i32 0, i32 9
  %0 = ptrtoint ptr %mtk_crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mtk_crtc, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %hw_lock = getelementptr inbounds %struct.mtk_drm_crtc, ptr %mtk_crtc, i32 0, i32 16
  tail call void @mutex_lock_nested(ptr noundef %hw_lock, i32 noundef 0) #9
  %config_updating = getelementptr inbounds %struct.mtk_drm_crtc, ptr %mtk_crtc, i32 0, i32 17
  %4 = ptrtoint ptr %config_updating to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %config_updating, align 4
  br i1 %needs_vblank, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pending_needs_vblank = getelementptr inbounds %struct.mtk_drm_crtc, ptr %mtk_crtc, i32 0, i32 2
  %5 = ptrtoint ptr %pending_needs_vblank to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %pending_needs_vblank, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %layer_nr = getelementptr inbounds %struct.mtk_drm_crtc, ptr %mtk_crtc, i32 0, i32 5
  %6 = ptrtoint ptr %layer_nr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %layer_nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp91.not = icmp eq i32 %7, 0
  br i1 %cmp91.not, label %if.end.if.end24_crit_edge, label %for.body.lr.ph

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

for.body.lr.ph:                                   ; preds = %if.end
  %planes = getelementptr inbounds %struct.mtk_drm_crtc, ptr %mtk_crtc, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %if.end16.for.body_crit_edge, %for.body.lr.ph
  %i.094 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end16.for.body_crit_edge ]
  %pending_async_planes.093 = phi i32 [ 0, %for.body.lr.ph ], [ %pending_async_planes.1, %if.end16.for.body_crit_edge ]
  %pending_planes.092 = phi i32 [ 0, %for.body.lr.ph ], [ %pending_planes.1, %if.end16.for.body_crit_edge ]
  %8 = ptrtoint ptr %planes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %planes, align 8
  %state = getelementptr %struct.drm_plane, ptr %9, i32 %i.094, i32 19
  %10 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %state, align 4
  %dirty = getelementptr inbounds %struct.mtk_plane_state, ptr %11, i32 0, i32 1, i32 10
  %12 = ptrtoint ptr %dirty to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %dirty, align 4, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool2.not = icmp eq i8 %13, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %pending = getelementptr inbounds %struct.mtk_plane_state, ptr %11, i32 0, i32 1
  %14 = ptrtoint ptr %pending to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %pending, align 4
  %15 = ptrtoint ptr %dirty to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %dirty, align 4
  %shl = shl nuw i32 1, %i.094
  %or = or i32 %shl, %pending_planes.092
  br label %if.end16

if.else:                                          ; preds = %for.body
  %async_dirty = getelementptr inbounds %struct.mtk_plane_state, ptr %11, i32 0, i32 1, i32 11
  %16 = ptrtoint ptr %async_dirty to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %async_dirty, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool8.not = icmp eq i8 %17, 0
  br i1 %tobool8.not, label %if.else.if.end16_crit_edge, label %if.then9

if.else.if.end16_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %async_config = getelementptr inbounds %struct.mtk_plane_state, ptr %11, i32 0, i32 1, i32 12
  %18 = ptrtoint ptr %async_config to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %async_config, align 2
  %19 = ptrtoint ptr %async_dirty to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %async_dirty, align 1
  %shl13 = shl nuw i32 1, %i.094
  %or14 = or i32 %shl13, %pending_async_planes.093
  br label %if.end16

if.end16:                                         ; preds = %if.then9, %if.else.if.end16_crit_edge, %if.then3
  %pending_planes.1 = phi i32 [ %or, %if.then3 ], [ %pending_planes.092, %if.then9 ], [ %pending_planes.092, %if.else.if.end16_crit_edge ]
  %pending_async_planes.1 = phi i32 [ %pending_async_planes.093, %if.then3 ], [ %or14, %if.then9 ], [ %pending_async_planes.093, %if.else.if.end16_crit_edge ]
  %inc = add nuw i32 %i.094, 1
  %20 = ptrtoint ptr %layer_nr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %layer_nr, align 4
  %cmp = icmp ult i32 %inc, %21
  br i1 %cmp, label %if.end16.for.body_crit_edge, label %for.end

if.end16.for.body_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pending_planes.1)
  %tobool17.not = icmp eq i32 %pending_planes.1, 0
  br i1 %tobool17.not, label %for.end.if.end20_crit_edge, label %if.then18

for.end.if.end20_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then18:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %pending_planes19 = getelementptr inbounds %struct.mtk_drm_crtc, ptr %mtk_crtc, i32 0, i32 6
  %22 = ptrtoint ptr %pending_planes19 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %pending_planes19, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %for.end.if.end20_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pending_async_planes.1)
  %tobool21.not = icmp eq i32 %pending_async_planes.1, 0
  br i1 %tobool21.not, label %if.end20.if.end24_crit_edge, label %if.then22

if.end20.if.end24_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end24

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %pending_async_planes23 = getelementptr inbounds %struct.mtk_drm_crtc, ptr %mtk_crtc, i32 0, i32 7
  %23 = ptrtoint ptr %pending_async_planes23 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %pending_async_planes23, align 1
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end20.if.end24_crit_edge, %if.end.if.end24_crit_edge
  %data = getelementptr inbounds %struct.mtk_drm_private, ptr %3, i32 0, i32 8
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data, align 4
  %shadow_register = getelementptr inbounds %struct.mtk_mmsys_driver_data, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %shadow_register to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %shadow_register, align 4, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool25.not = icmp eq i8 %27, 0
  br i1 %tobool25.not, label %if.end24.if.end28_crit_edge, label %if.then26

if.end24.if.end28_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %mutex = getelementptr inbounds %struct.mtk_drm_crtc, ptr %mtk_crtc, i32 0, i32 13
  %28 = ptrtoint ptr %mutex to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mutex, align 4
  tail call void @mtk_mutex_acquire(ptr noundef %29) #9
  tail call fastcc void @mtk_crtc_ddp_config(ptr noundef %mtk_crtc, ptr noundef null)
  %30 = ptrtoint ptr %mutex to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mutex, align 4
  tail call void @mtk_mutex_release(ptr noundef %31) #9
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end24.if.end28_crit_edge
  %chan = getelementptr inbounds %struct.mtk_drm_crtc, ptr %mtk_crtc, i32 0, i32 8, i32 1
  %32 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %chan, align 4
  %tobool29.not = icmp eq ptr %33, null
  br i1 %tobool29.not, label %if.end28.if.end48_crit_edge, label %if.then30

if.end28.if.end48_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.then30:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  %call33 = tail call i32 @mbox_flush(ptr noundef nonnull %33, i32 noundef 2000) #9
  %cmd_buf_size = getelementptr inbounds %struct.mtk_drm_crtc, ptr %mtk_crtc, i32 0, i32 9, i32 2
  %34 = ptrtoint ptr %cmd_buf_size to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %cmd_buf_size, align 4
  %cmdq_event = getelementptr inbounds %struct.mtk_drm_crtc, ptr %mtk_crtc, i32 0, i32 10
  %35 = ptrtoint ptr %cmdq_event to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cmdq_event, align 8
  %conv = trunc i32 %36 to i16
  %call34 = tail call i32 @cmdq_pkt_clear_event(ptr noundef %cmdq_handle1, i16 noundef zeroext %conv) #9
  %37 = ptrtoint ptr %cmdq_event to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cmdq_event, align 8
  %conv36 = trunc i32 %38 to i16
  %call37 = tail call i32 @cmdq_pkt_wfe(ptr noundef %cmdq_handle1, i16 noundef zeroext %conv36, i1 noundef zeroext false) #9
  tail call fastcc void @mtk_crtc_ddp_config(ptr noundef %mtk_crtc, ptr noundef %cmdq_handle1)
  %call38 = tail call i32 @cmdq_pkt_finalize(ptr noundef %cmdq_handle1) #9
  %39 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %chan, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 8
  %pa_base = getelementptr inbounds %struct.mtk_drm_crtc, ptr %mtk_crtc, i32 0, i32 9, i32 1
  %45 = ptrtoint ptr %pa_base to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pa_base, align 4
  %47 = ptrtoint ptr %cmd_buf_size to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %cmd_buf_size, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %44, i32 noundef %46, i32 noundef %48, i32 noundef 1) #9
  %cmdq_vblank_cnt = getelementptr inbounds %struct.mtk_drm_crtc, ptr %mtk_crtc, i32 0, i32 11
  %49 = ptrtoint ptr %cmdq_vblank_cnt to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 3, ptr %cmdq_vblank_cnt, align 4
  %50 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %chan, align 4
  %call45 = tail call i32 @mbox_send_message(ptr noundef %51, ptr noundef %cmdq_handle1) #9
  %52 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %chan, align 4
  tail call void @mbox_client_txdone(ptr noundef %53, i32 noundef 0) #9
  br label %if.end48

if.end48:                                         ; preds = %if.then30, %if.end28.if.end48_crit_edge
  %54 = ptrtoint ptr %config_updating to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %config_updating, align 4
  tail call void @mutex_unlock(ptr noundef %hw_lock) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mtk_drm_crtc_create(ptr noundef %drm_dev, ptr noundef readonly %path, i32 noundef %path_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %drm_dev, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %dev1 = getelementptr inbounds %struct.drm_device, ptr %drm_dev, i32 0, i32 2
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %num_pipes = getelementptr inbounds %struct.mtk_drm_private, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %num_pipes to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_pipes, align 4
  %tobool.not = icmp eq ptr %path, null
  br i1 %tobool.not, label %entry.cleanup189_crit_edge, label %for.cond.preheader

entry.cleanup189_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup189

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %path_len)
  %cmp345.not = icmp eq i32 %path_len, 0
  br i1 %cmp345.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond:                                         ; preds = %if.end6
  %inc = add nuw i32 %i.0346, 1
  %exitcond.not = icmp eq i32 %inc, %path_len
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0346 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %path, i32 %i.0346
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr %struct.mtk_drm_private, ptr %1, i32 0, i32 6, i32 %7
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx2, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %do.end, label %if.end6

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str, i32 noundef %5, i32 noundef %7) #12
  br label %cleanup189

if.end6:                                          ; preds = %for.body
  %arrayidx3 = getelementptr %struct.mtk_drm_private, ptr %1, i32 0, i32 7, i32 %7
  %10 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx3, align 4
  %tobool8.not = icmp eq ptr %11, null
  br i1 %tobool8.not, label %do.end12, label %for.cond

do.end12:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6, ptr noundef nonnull %9) #12
  br label %cleanup189

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 1200, i32 noundef 3520) #9
  %tobool16.not = icmp eq ptr %call.i, null
  br i1 %tobool16.not, label %for.end.cleanup189_crit_edge, label %if.end18

for.end.cleanup189_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup189

if.end18:                                         ; preds = %for.end
  %mmsys_dev = getelementptr inbounds %struct.mtk_drm_private, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %mmsys_dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mmsys_dev, align 4
  %mmsys_dev19 = getelementptr inbounds %struct.mtk_drm_crtc, ptr %call.i, i32 0, i32 12
  %14 = ptrtoint ptr %mmsys_dev19 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %mmsys_dev19, align 8
  %ddp_comp_nr = getelementptr inbounds %struct.mtk_drm_crtc, ptr %call.i, i32 0, i32 14
  %15 = ptrtoint ptr %ddp_comp_nr to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %path_len, ptr %ddp_comp_nr, align 8
  %16 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %path_len, i32 4) #9
  %17 = extractvalue { i32, i1 } %16, 1
  br i1 %17, label %devm_kmalloc_array.exit.thread, label %devm_kmalloc_array.exit, !prof !76

devm_kmalloc_array.exit.thread:                   ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %ddp_comp22332 = getelementptr inbounds %struct.mtk_drm_crtc, ptr %call.i, i32 0, i32 15
  %18 = ptrtoint ptr %ddp_comp22332 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %ddp_comp22332, align 4
  br label %cleanup189

devm_kmalloc_array.exit:                          ; preds = %if.end18
  %19 = extractvalue { i32, i1 } %16, 0
  %call5.i = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef %19, i32 noundef 3264) #9
  %ddp_comp22 = getelementptr inbounds %struct.mtk_drm_crtc, ptr %call.i, i32 0, i32 15
  %20 = ptrtoint ptr %ddp_comp22 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call5.i, ptr %ddp_comp22, align 4
  %tobool24.not = icmp eq ptr %call5.i, null
  br i1 %tobool24.not, label %devm_kmalloc_array.exit.cleanup189_crit_edge, label %if.end26

devm_kmalloc_array.exit.cleanup189_crit_edge:     ; preds = %devm_kmalloc_array.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup189

if.end26:                                         ; preds = %devm_kmalloc_array.exit
  %mutex_dev = getelementptr inbounds %struct.mtk_drm_private, ptr %1, i32 0, i32 4
  %21 = ptrtoint ptr %mutex_dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mutex_dev, align 4
  %call27 = tail call ptr @mtk_mutex_get(ptr noundef %22) #9
  %mutex = getelementptr inbounds %struct.mtk_drm_crtc, ptr %call.i, i32 0, i32 13
  %23 = ptrtoint ptr %mutex to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call27, ptr %mutex, align 4
  %cmp.i = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then30, label %for.cond37.preheader

for.cond37.preheader:                             ; preds = %if.end26
  %24 = ptrtoint ptr %ddp_comp_nr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ddp_comp_nr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp39347.not = icmp eq i32 %25, 0
  br i1 %cmp39347.not, label %for.cond37.preheader.for.end69_crit_edge, label %for.cond37.preheader.for.body40_crit_edge

for.cond37.preheader.for.body40_crit_edge:        ; preds = %for.cond37.preheader
  br label %for.body40

for.cond37.preheader.for.end69_crit_edge:         ; preds = %for.cond37.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end69

if.then30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %call27 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.10, i32 noundef %26) #12
  br label %cleanup189

for.cond62.preheader:                             ; preds = %if.end58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp64352.not = icmp eq i32 %65, 0
  br i1 %cmp64352.not, label %for.cond62.preheader.for.end69_crit_edge, label %if.end.i302.peel

for.cond62.preheader.for.end69_crit_edge:         ; preds = %for.cond62.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end69

if.end.i302.peel:                                 ; preds = %for.cond62.preheader
  %27 = ptrtoint ptr %ddp_comp22 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ddp_comp22, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %funcs.i.peel = getelementptr inbounds %struct.mtk_ddp_comp, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %funcs.i.peel to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %funcs.i.peel, align 4
  %tobool.not.i.peel = icmp eq ptr %32, null
  br i1 %tobool.not.i.peel, label %if.end.i302.peel.mtk_drm_crtc_num_comp_planes.exit.peel_crit_edge, label %land.lhs.true.i.i.peel

if.end.i302.peel.mtk_drm_crtc_num_comp_planes.exit.peel_crit_edge: ; preds = %if.end.i302.peel
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_drm_crtc_num_comp_planes.exit.peel

land.lhs.true.i.i.peel:                           ; preds = %if.end.i302.peel
  %layer_nr.i.i.peel = getelementptr inbounds %struct.mtk_ddp_comp_funcs, ptr %32, i32 0, i32 8
  %33 = ptrtoint ptr %layer_nr.i.i.peel to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %layer_nr.i.i.peel, align 4
  %tobool2.not.i.i.peel = icmp eq ptr %34, null
  br i1 %tobool2.not.i.i.peel, label %land.lhs.true.i.i.peel.mtk_drm_crtc_num_comp_planes.exit.peel_crit_edge, label %if.then.i.i.peel

land.lhs.true.i.i.peel.mtk_drm_crtc_num_comp_planes.exit.peel_crit_edge: ; preds = %land.lhs.true.i.i.peel
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_drm_crtc_num_comp_planes.exit.peel

if.then.i.i.peel:                                 ; preds = %land.lhs.true.i.i.peel
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %30, align 4
  %call.i.i.peel = tail call i32 %34(ptr noundef %36) #9
  br label %mtk_drm_crtc_num_comp_planes.exit.peel

mtk_drm_crtc_num_comp_planes.exit.peel:           ; preds = %if.then.i.i.peel, %land.lhs.true.i.i.peel.mtk_drm_crtc_num_comp_planes.exit.peel_crit_edge, %if.end.i302.peel.mtk_drm_crtc_num_comp_planes.exit.peel_crit_edge
  %retval.0.i303.peel = phi i32 [ 0, %if.end.i302.peel.mtk_drm_crtc_num_comp_planes.exit.peel_crit_edge ], [ %call.i.i.peel, %if.then.i.i.peel ], [ 0, %land.lhs.true.i.i.peel.mtk_drm_crtc_num_comp_planes.exit.peel_crit_edge ]
  %37 = ptrtoint ptr %ddp_comp_nr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ddp_comp_nr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %38)
  %cmp64.peel = icmp ugt i32 %38, 1
  br i1 %cmp64.peel, label %if.end.i302.peel369, label %mtk_drm_crtc_num_comp_planes.exit.peel.for.end69_crit_edge

mtk_drm_crtc_num_comp_planes.exit.peel.for.end69_crit_edge: ; preds = %mtk_drm_crtc_num_comp_planes.exit.peel
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end69

if.end.i302.peel369:                              ; preds = %mtk_drm_crtc_num_comp_planes.exit.peel
  %39 = ptrtoint ptr %ddp_comp22 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ddp_comp22, align 4
  %arrayidx.i.peel370 = getelementptr ptr, ptr %40, i32 1
  %41 = ptrtoint ptr %arrayidx.i.peel370 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx.i.peel370, align 4
  %funcs.i.peel371 = getelementptr inbounds %struct.mtk_ddp_comp, ptr %42, i32 0, i32 4
  %43 = ptrtoint ptr %funcs.i.peel371 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %funcs.i.peel371, align 4
  %tobool.not.i.peel372 = icmp eq ptr %44, null
  br i1 %tobool.not.i.peel372, label %if.end.i302.peel369.mtk_drm_crtc_num_comp_planes.exit.peel383_crit_edge, label %land.lhs.true.i.peel375

if.end.i302.peel369.mtk_drm_crtc_num_comp_planes.exit.peel383_crit_edge: ; preds = %if.end.i302.peel369
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_drm_crtc_num_comp_planes.exit.peel383

land.lhs.true.i.peel375:                          ; preds = %if.end.i302.peel369
  %bgclr_in_on.i.peel376 = getelementptr inbounds %struct.mtk_ddp_comp_funcs, ptr %44, i32 0, i32 12
  %45 = ptrtoint ptr %bgclr_in_on.i.peel376 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bgclr_in_on.i.peel376, align 4
  %tobool5.not.i.peel377 = icmp eq ptr %46, null
  br i1 %tobool5.not.i.peel377, label %land.lhs.true.i.peel375.mtk_drm_crtc_num_comp_planes.exit.peel383_crit_edge, label %land.lhs.true.i.i.peel378

land.lhs.true.i.peel375.mtk_drm_crtc_num_comp_planes.exit.peel383_crit_edge: ; preds = %land.lhs.true.i.peel375
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_drm_crtc_num_comp_planes.exit.peel383

land.lhs.true.i.i.peel378:                        ; preds = %land.lhs.true.i.peel375
  %layer_nr.i.i.peel379 = getelementptr inbounds %struct.mtk_ddp_comp_funcs, ptr %44, i32 0, i32 8
  %47 = ptrtoint ptr %layer_nr.i.i.peel379 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %layer_nr.i.i.peel379, align 4
  %tobool2.not.i.i.peel380 = icmp eq ptr %48, null
  br i1 %tobool2.not.i.i.peel380, label %land.lhs.true.i.i.peel378.mtk_drm_crtc_num_comp_planes.exit.peel383_crit_edge, label %if.then.i.i.peel381

land.lhs.true.i.i.peel378.mtk_drm_crtc_num_comp_planes.exit.peel383_crit_edge: ; preds = %land.lhs.true.i.i.peel378
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_drm_crtc_num_comp_planes.exit.peel383

if.then.i.i.peel381:                              ; preds = %land.lhs.true.i.i.peel378
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %42, align 4
  %call.i.i.peel382 = tail call i32 %48(ptr noundef %50) #9
  br label %mtk_drm_crtc_num_comp_planes.exit.peel383

mtk_drm_crtc_num_comp_planes.exit.peel383:        ; preds = %if.then.i.i.peel381, %land.lhs.true.i.i.peel378.mtk_drm_crtc_num_comp_planes.exit.peel383_crit_edge, %land.lhs.true.i.peel375.mtk_drm_crtc_num_comp_planes.exit.peel383_crit_edge, %if.end.i302.peel369.mtk_drm_crtc_num_comp_planes.exit.peel383_crit_edge
  %retval.0.i303.peel384 = phi i32 [ 0, %if.end.i302.peel369.mtk_drm_crtc_num_comp_planes.exit.peel383_crit_edge ], [ 0, %land.lhs.true.i.peel375.mtk_drm_crtc_num_comp_planes.exit.peel383_crit_edge ], [ %call.i.i.peel382, %if.then.i.i.peel381 ], [ 0, %land.lhs.true.i.i.peel378.mtk_drm_crtc_num_comp_planes.exit.peel383_crit_edge ]
  %add.peel385 = add i32 %retval.0.i303.peel384, %retval.0.i303.peel
  %51 = ptrtoint ptr %ddp_comp_nr to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %ddp_comp_nr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %52)
  %cmp64.peel387 = icmp ugt i32 %52, 2
  br i1 %cmp64.peel387, label %mtk_drm_crtc_num_comp_planes.exit.peel383.for.body65_crit_edge, label %mtk_drm_crtc_num_comp_planes.exit.peel383.for.end69_crit_edge

mtk_drm_crtc_num_comp_planes.exit.peel383.for.end69_crit_edge: ; preds = %mtk_drm_crtc_num_comp_planes.exit.peel383
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end69

mtk_drm_crtc_num_comp_planes.exit.peel383.for.body65_crit_edge: ; preds = %mtk_drm_crtc_num_comp_planes.exit.peel383
  br label %for.body65

for.body40:                                       ; preds = %if.end58.for.body40_crit_edge, %for.cond37.preheader.for.body40_crit_edge
  %gamma_lut_size.0350 = phi i32 [ %gamma_lut_size.2, %if.end58.for.body40_crit_edge ], [ 0, %for.cond37.preheader.for.body40_crit_edge ]
  %has_ctm.0.off0349 = phi i1 [ %has_ctm.1.off0, %if.end58.for.body40_crit_edge ], [ false, %for.cond37.preheader.for.body40_crit_edge ]
  %i.1348 = phi i32 [ %inc60, %if.end58.for.body40_crit_edge ], [ 0, %for.cond37.preheader.for.body40_crit_edge ]
  %arrayidx42 = getelementptr i32, ptr %path, i32 %i.1348
  %53 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx42, align 4
  %arrayidx45 = getelementptr %struct.mtk_drm_private, ptr %1, i32 0, i32 7, i32 %54
  %55 = ptrtoint ptr %ddp_comp22 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ddp_comp22, align 4
  %arrayidx47 = getelementptr ptr, ptr %56, i32 %i.1348
  %57 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %arrayidx45, ptr %arrayidx47, align 4
  %funcs = getelementptr %struct.mtk_drm_private, ptr %1, i32 0, i32 7, i32 %54, i32 4
  %58 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %funcs, align 4
  %tobool48.not = icmp eq ptr %59, null
  br i1 %tobool48.not, label %for.body40.if.end58_crit_edge, label %if.then49

for.body40.if.end58_crit_edge:                    ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58

if.then49:                                        ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #11
  %gamma_set = getelementptr inbounds %struct.mtk_ddp_comp_funcs, ptr %59, i32 0, i32 11
  %60 = ptrtoint ptr %gamma_set to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %gamma_set, align 4
  %tobool51.not = icmp eq ptr %61, null
  %spec.select = select i1 %tobool51.not, i32 %gamma_lut_size.0350, i32 512
  %ctm_set = getelementptr inbounds %struct.mtk_ddp_comp_funcs, ptr %59, i32 0, i32 14
  %62 = ptrtoint ptr %ctm_set to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ctm_set, align 4
  %tobool55.not = icmp ne ptr %63, null
  %spec.select293 = select i1 %tobool55.not, i1 true, i1 %has_ctm.0.off0349
  br label %if.end58

if.end58:                                         ; preds = %if.then49, %for.body40.if.end58_crit_edge
  %has_ctm.1.off0 = phi i1 [ %has_ctm.0.off0349, %for.body40.if.end58_crit_edge ], [ %spec.select293, %if.then49 ]
  %gamma_lut_size.2 = phi i32 [ %gamma_lut_size.0350, %for.body40.if.end58_crit_edge ], [ %spec.select, %if.then49 ]
  %inc60 = add nuw i32 %i.1348, 1
  %64 = ptrtoint ptr %ddp_comp_nr to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %ddp_comp_nr, align 8
  %cmp39 = icmp ult i32 %inc60, %65
  br i1 %cmp39, label %if.end58.for.body40_crit_edge, label %for.cond62.preheader

if.end58.for.body40_crit_edge:                    ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body40

for.body65:                                       ; preds = %mtk_drm_crtc_num_comp_planes.exit.for.body65_crit_edge, %mtk_drm_crtc_num_comp_planes.exit.peel383.for.body65_crit_edge
  %num_comp_planes.0355 = phi i32 [ %add, %mtk_drm_crtc_num_comp_planes.exit.for.body65_crit_edge ], [ %add.peel385, %mtk_drm_crtc_num_comp_planes.exit.peel383.for.body65_crit_edge ]
  %i.2353 = phi i32 [ %inc68, %mtk_drm_crtc_num_comp_planes.exit.for.body65_crit_edge ], [ 2, %mtk_drm_crtc_num_comp_planes.exit.peel383.for.body65_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.2353)
  %cmp.i301 = icmp sgt i32 %i.2353, 1
  br i1 %cmp.i301, label %for.body65.mtk_drm_crtc_num_comp_planes.exit_crit_edge, label %if.end.i302

for.body65.mtk_drm_crtc_num_comp_planes.exit_crit_edge: ; preds = %for.body65
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_drm_crtc_num_comp_planes.exit

if.end.i302:                                      ; preds = %for.body65
  %66 = ptrtoint ptr %ddp_comp22 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ddp_comp22, align 4
  %arrayidx.i = getelementptr ptr, ptr %67, i32 %i.2353
  %68 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx.i, align 4
  %funcs.i = getelementptr inbounds %struct.mtk_ddp_comp, ptr %69, i32 0, i32 4
  %70 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %funcs.i, align 4
  %tobool.not.i = icmp eq ptr %71, null
  br i1 %tobool.not.i, label %if.end.i302.mtk_drm_crtc_num_comp_planes.exit_crit_edge, label %land.lhs.true.i.i

if.end.i302.mtk_drm_crtc_num_comp_planes.exit_crit_edge: ; preds = %if.end.i302
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_drm_crtc_num_comp_planes.exit

land.lhs.true.i.i:                                ; preds = %if.end.i302
  %layer_nr.i.i = getelementptr inbounds %struct.mtk_ddp_comp_funcs, ptr %71, i32 0, i32 8
  %72 = ptrtoint ptr %layer_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %layer_nr.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %73, null
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.mtk_drm_crtc_num_comp_planes.exit_crit_edge, label %if.then.i.i

land.lhs.true.i.i.mtk_drm_crtc_num_comp_planes.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_drm_crtc_num_comp_planes.exit

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %74 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %69, align 4
  %call.i.i = tail call i32 %73(ptr noundef %75) #9
  br label %mtk_drm_crtc_num_comp_planes.exit

mtk_drm_crtc_num_comp_planes.exit:                ; preds = %if.then.i.i, %land.lhs.true.i.i.mtk_drm_crtc_num_comp_planes.exit_crit_edge, %if.end.i302.mtk_drm_crtc_num_comp_planes.exit_crit_edge, %for.body65.mtk_drm_crtc_num_comp_planes.exit_crit_edge
  %retval.0.i303 = phi i32 [ 0, %for.body65.mtk_drm_crtc_num_comp_planes.exit_crit_edge ], [ 0, %if.end.i302.mtk_drm_crtc_num_comp_planes.exit_crit_edge ], [ %call.i.i, %if.then.i.i ], [ 0, %land.lhs.true.i.i.mtk_drm_crtc_num_comp_planes.exit_crit_edge ]
  %add = add i32 %retval.0.i303, %num_comp_planes.0355
  %inc68 = add nuw i32 %i.2353, 1
  %76 = ptrtoint ptr %ddp_comp_nr to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %ddp_comp_nr, align 8
  %cmp64 = icmp ult i32 %inc68, %77
  br i1 %cmp64, label %mtk_drm_crtc_num_comp_planes.exit.for.body65_crit_edge, label %mtk_drm_crtc_num_comp_planes.exit.for.end69_crit_edge, !llvm.loop !77

mtk_drm_crtc_num_comp_planes.exit.for.end69_crit_edge: ; preds = %mtk_drm_crtc_num_comp_planes.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end69

mtk_drm_crtc_num_comp_planes.exit.for.body65_crit_edge: ; preds = %mtk_drm_crtc_num_comp_planes.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body65

for.end69:                                        ; preds = %mtk_drm_crtc_num_comp_planes.exit.for.end69_crit_edge, %mtk_drm_crtc_num_comp_planes.exit.peel383.for.end69_crit_edge, %mtk_drm_crtc_num_comp_planes.exit.peel.for.end69_crit_edge, %for.cond62.preheader.for.end69_crit_edge, %for.cond37.preheader.for.end69_crit_edge
  %gamma_lut_size.0.lcssa393 = phi i32 [ %gamma_lut_size.2, %for.cond62.preheader.for.end69_crit_edge ], [ %gamma_lut_size.2, %mtk_drm_crtc_num_comp_planes.exit.peel383.for.end69_crit_edge ], [ %gamma_lut_size.2, %mtk_drm_crtc_num_comp_planes.exit.peel.for.end69_crit_edge ], [ 0, %for.cond37.preheader.for.end69_crit_edge ], [ %gamma_lut_size.2, %mtk_drm_crtc_num_comp_planes.exit.for.end69_crit_edge ]
  %has_ctm.0.off0.lcssa392 = phi i1 [ %has_ctm.1.off0, %for.cond62.preheader.for.end69_crit_edge ], [ %has_ctm.1.off0, %mtk_drm_crtc_num_comp_planes.exit.peel383.for.end69_crit_edge ], [ %has_ctm.1.off0, %mtk_drm_crtc_num_comp_planes.exit.peel.for.end69_crit_edge ], [ false, %for.cond37.preheader.for.end69_crit_edge ], [ %has_ctm.1.off0, %mtk_drm_crtc_num_comp_planes.exit.for.end69_crit_edge ]
  %num_comp_planes.0.lcssa = phi i32 [ 0, %for.cond62.preheader.for.end69_crit_edge ], [ %add.peel385, %mtk_drm_crtc_num_comp_planes.exit.peel383.for.end69_crit_edge ], [ %retval.0.i303.peel, %mtk_drm_crtc_num_comp_planes.exit.peel.for.end69_crit_edge ], [ 0, %for.cond37.preheader.for.end69_crit_edge ], [ %add, %mtk_drm_crtc_num_comp_planes.exit.for.end69_crit_edge ]
  %78 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num_comp_planes.0.lcssa, i32 528) #9
  %79 = extractvalue { i32, i1 } %78, 1
  br i1 %79, label %for.end69.devm_kcalloc.exit_crit_edge, label %if.end.i.i, !prof !76

for.end69.devm_kcalloc.exit_crit_edge:            ; preds = %for.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %devm_kcalloc.exit

if.end.i.i:                                       ; preds = %for.end69
  call void @__sanitizer_cov_trace_pc() #11
  %80 = extractvalue { i32, i1 } %78, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef %80, i32 noundef 3520) #9
  br label %devm_kcalloc.exit

devm_kcalloc.exit:                                ; preds = %if.end.i.i, %for.end69.devm_kcalloc.exit_crit_edge
  %retval.0.i.i = phi ptr [ %call5.i.i, %if.end.i.i ], [ null, %for.end69.devm_kcalloc.exit_crit_edge ]
  %planes = getelementptr inbounds %struct.mtk_drm_crtc, ptr %call.i, i32 0, i32 4
  %81 = ptrtoint ptr %planes to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %retval.0.i.i, ptr %planes, align 8
  %82 = ptrtoint ptr %ddp_comp_nr to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %ddp_comp_nr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp73357.not = icmp eq i32 %83, 0
  br i1 %cmp73357.not, label %devm_kcalloc.exit.for.end81_crit_edge, label %for.body74.lr.ph

devm_kcalloc.exit.for.end81_crit_edge:            ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end81

for.body74.lr.ph:                                 ; preds = %devm_kcalloc.exit
  %layer_nr.i = getelementptr inbounds %struct.mtk_drm_crtc, ptr %call.i, i32 0, i32 5
  %shl.i = shl nuw i32 1, %5
  br label %for.body74

for.body74:                                       ; preds = %for.inc79.for.body74_crit_edge, %for.body74.lr.ph
  %i.3358 = phi i32 [ 0, %for.body74.lr.ph ], [ %inc80, %for.inc79.for.body74_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.3358)
  %cmp.i.i = icmp sgt i32 %i.3358, 1
  br i1 %cmp.i.i, label %for.body74.for.inc79_crit_edge, label %if.end.i.i304

for.body74.for.inc79_crit_edge:                   ; preds = %for.body74
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc79

if.end.i.i304:                                    ; preds = %for.body74
  %84 = ptrtoint ptr %ddp_comp22 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ddp_comp22, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %85, i32 %i.3358
  %86 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx.i.i, align 4
  %funcs.i.i = getelementptr inbounds %struct.mtk_ddp_comp, ptr %87, i32 0, i32 4
  %88 = ptrtoint ptr %funcs.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %funcs.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %89, null
  br i1 %tobool.not.i.i, label %if.end.i.i304.for.inc79_crit_edge, label %if.end2.i.i

if.end.i.i304.for.inc79_crit_edge:                ; preds = %if.end.i.i304
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc79

if.end2.i.i:                                      ; preds = %if.end.i.i304
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.3358)
  %cmp3.i.i = icmp eq i32 %i.3358, 1
  br i1 %cmp3.i.i, label %land.lhs.true.i.i305, label %if.end2.i.i.land.lhs.true.i.i.i_crit_edge

if.end2.i.i.land.lhs.true.i.i.i_crit_edge:        ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i.i.i

land.lhs.true.i.i305:                             ; preds = %if.end2.i.i
  %bgclr_in_on.i.i = getelementptr inbounds %struct.mtk_ddp_comp_funcs, ptr %89, i32 0, i32 12
  %90 = ptrtoint ptr %bgclr_in_on.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %bgclr_in_on.i.i, align 4
  %tobool5.not.i.i = icmp eq ptr %91, null
  br i1 %tobool5.not.i.i, label %land.lhs.true.i.i305.for.inc79_crit_edge, label %land.lhs.true.i.i305.land.lhs.true.i.i.i_crit_edge

land.lhs.true.i.i305.land.lhs.true.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i305
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i.i.i

land.lhs.true.i.i305.for.inc79_crit_edge:         ; preds = %land.lhs.true.i.i305
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc79

land.lhs.true.i.i.i:                              ; preds = %land.lhs.true.i.i305.land.lhs.true.i.i.i_crit_edge, %if.end2.i.i.land.lhs.true.i.i.i_crit_edge
  %layer_nr.i.i.i = getelementptr inbounds %struct.mtk_ddp_comp_funcs, ptr %89, i32 0, i32 8
  %92 = ptrtoint ptr %layer_nr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %layer_nr.i.i.i, align 4
  %tobool2.not.i.i.i = icmp eq ptr %93, null
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i.i.i.for.inc79_crit_edge, label %mtk_drm_crtc_num_comp_planes.exit.i

land.lhs.true.i.i.i.for.inc79_crit_edge:          ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc79

mtk_drm_crtc_num_comp_planes.exit.i:              ; preds = %land.lhs.true.i.i.i
  %94 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %87, align 4
  %call.i.i.i = tail call i32 %93(ptr noundef %95) #9
  %96 = ptrtoint ptr %ddp_comp22 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %ddp_comp22, align 4
  %arrayidx.i307 = getelementptr ptr, ptr %97, i32 %i.3358
  %98 = ptrtoint ptr %arrayidx.i307 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %arrayidx.i307, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp26.i = icmp sgt i32 %call.i.i.i, 0
  br i1 %cmp26.i, label %for.body.lr.ph.i, label %mtk_drm_crtc_num_comp_planes.exit.i.for.inc79_crit_edge

mtk_drm_crtc_num_comp_planes.exit.i.for.inc79_crit_edge: ; preds = %mtk_drm_crtc_num_comp_planes.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc79

for.body.lr.ph.i:                                 ; preds = %mtk_drm_crtc_num_comp_planes.exit.i
  %sub.i.i = add nsw i32 %call.i.i.i, -1
  %funcs.i22.i = getelementptr inbounds %struct.mtk_ddp_comp, ptr %99, i32 0, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i313.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.027.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc7.i, %if.end.i313.for.body.i_crit_edge ]
  %100 = ptrtoint ptr %planes to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %planes, align 8
  %102 = ptrtoint ptr %layer_nr.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %layer_nr.i, align 4
  %arrayidx1.i = getelementptr %struct.drm_plane, ptr %101, i32 %103
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %cmp.i20.i = icmp eq i32 %103, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %103)
  %cmp1.i.i = icmp eq i32 %sub.i.i, %103
  %..i.i = select i1 %cmp1.i.i, i32 2, i32 0
  %retval.0.i21.i = select i1 %cmp.i20.i, i32 1, i32 %..i.i
  %104 = ptrtoint ptr %funcs.i22.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %funcs.i22.i, align 4
  %tobool.not.i23.i = icmp eq ptr %105, null
  br i1 %tobool.not.i23.i, label %for.body.i.mtk_ddp_comp_supported_rotations.exit.i_crit_edge, label %land.lhs.true.i24.i

for.body.i.mtk_ddp_comp_supported_rotations.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_ddp_comp_supported_rotations.exit.i

land.lhs.true.i24.i:                              ; preds = %for.body.i
  %supported_rotations.i.i = getelementptr inbounds %struct.mtk_ddp_comp_funcs, ptr %105, i32 0, i32 7
  %106 = ptrtoint ptr %supported_rotations.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %supported_rotations.i.i, align 4
  %tobool2.not.i.i308 = icmp eq ptr %107, null
  br i1 %tobool2.not.i.i308, label %land.lhs.true.i24.i.mtk_ddp_comp_supported_rotations.exit.i_crit_edge, label %if.then.i.i310

land.lhs.true.i24.i.mtk_ddp_comp_supported_rotations.exit.i_crit_edge: ; preds = %land.lhs.true.i24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_ddp_comp_supported_rotations.exit.i

if.then.i.i310:                                   ; preds = %land.lhs.true.i24.i
  call void @__sanitizer_cov_trace_pc() #11
  %108 = ptrtoint ptr %99 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %99, align 4
  %call.i.i309 = tail call i32 %107(ptr noundef %109) #9
  br label %mtk_ddp_comp_supported_rotations.exit.i

mtk_ddp_comp_supported_rotations.exit.i:          ; preds = %if.then.i.i310, %land.lhs.true.i24.i.mtk_ddp_comp_supported_rotations.exit.i_crit_edge, %for.body.i.mtk_ddp_comp_supported_rotations.exit.i_crit_edge
  %retval.0.i25.i = phi i32 [ %call.i.i309, %if.then.i.i310 ], [ 0, %land.lhs.true.i24.i.mtk_ddp_comp_supported_rotations.exit.i_crit_edge ], [ 0, %for.body.i.mtk_ddp_comp_supported_rotations.exit.i_crit_edge ]
  %call5.i311 = tail call i32 @mtk_plane_init(ptr noundef %drm_dev, ptr noundef %arrayidx1.i, i32 noundef %shl.i, i32 noundef %retval.0.i21.i, i32 noundef %retval.0.i25.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i311)
  %tobool.not.i312 = icmp eq i32 %call5.i311, 0
  br i1 %tobool.not.i312, label %if.end.i313, label %mtk_ddp_comp_supported_rotations.exit.i.cleanup189_crit_edge

mtk_ddp_comp_supported_rotations.exit.i.cleanup189_crit_edge: ; preds = %mtk_ddp_comp_supported_rotations.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup189

if.end.i313:                                      ; preds = %mtk_ddp_comp_supported_rotations.exit.i
  %110 = ptrtoint ptr %layer_nr.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %layer_nr.i, align 4
  %inc.i = add i32 %111, 1
  store i32 %inc.i, ptr %layer_nr.i, align 4
  %inc7.i = add nuw nsw i32 %i.027.i, 1
  %exitcond.not.i = icmp eq i32 %inc7.i, %call.i.i.i
  br i1 %exitcond.not.i, label %if.end.i313.for.inc79_crit_edge, label %if.end.i313.for.body.i_crit_edge

if.end.i313.for.body.i_crit_edge:                 ; preds = %if.end.i313
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.end.i313.for.inc79_crit_edge:                  ; preds = %if.end.i313
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc79

for.inc79:                                        ; preds = %if.end.i313.for.inc79_crit_edge, %mtk_drm_crtc_num_comp_planes.exit.i.for.inc79_crit_edge, %land.lhs.true.i.i.i.for.inc79_crit_edge, %land.lhs.true.i.i305.for.inc79_crit_edge, %if.end.i.i304.for.inc79_crit_edge, %for.body74.for.inc79_crit_edge
  %inc80 = add nuw i32 %i.3358, 1
  %112 = ptrtoint ptr %ddp_comp_nr to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %ddp_comp_nr, align 8
  %cmp73 = icmp ult i32 %inc80, %113
  br i1 %cmp73, label %for.inc79.for.body74_crit_edge, label %for.inc79.for.end81_crit_edge

for.inc79.for.end81_crit_edge:                    ; preds = %for.inc79
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end81

for.inc79.for.body74_crit_edge:                   ; preds = %for.inc79
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body74

for.end81:                                        ; preds = %for.inc79.for.end81_crit_edge, %devm_kcalloc.exit.for.end81_crit_edge
  %layer_nr.i315 = getelementptr inbounds %struct.mtk_drm_crtc, ptr %call.i, i32 0, i32 5
  %114 = ptrtoint ptr %layer_nr.i315 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %layer_nr.i315, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %cmp1.not.i = icmp eq i32 %115, 0
  br i1 %cmp1.not.i, label %for.end81.for.end.i_crit_edge, label %for.body.lr.ph.i317

for.end81.for.end.i_crit_edge:                    ; preds = %for.end81
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.lr.ph.i317:                              ; preds = %for.end81
  %116 = ptrtoint ptr %planes to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %planes, align 8
  br label %for.body.i319

for.body.i319:                                    ; preds = %for.inc.i.for.body.i319_crit_edge, %for.body.lr.ph.i317
  %i.04.i = phi i32 [ 0, %for.body.lr.ph.i317 ], [ %inc.i320, %for.inc.i.for.body.i319_crit_edge ]
  %cursor.03.i = phi ptr [ null, %for.body.lr.ph.i317 ], [ %cursor.1.i, %for.inc.i.for.body.i319_crit_edge ]
  %primary.02.i = phi ptr [ null, %for.body.lr.ph.i317 ], [ %primary.1.i, %for.inc.i.for.body.i319_crit_edge ]
  %arrayidx.i318 = getelementptr %struct.drm_plane, ptr %117, i32 %i.04.i
  %type.i = getelementptr %struct.drm_plane, ptr %117, i32 %i.04.i, i32 16
  %118 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %type.i, align 8
  %120 = zext i32 %119 to i64
  call void @__sanitizer_cov_trace_switch(i64 %120, ptr @__sancov_gen_cov_switch_values)
  switch i32 %119, label %for.inc.fold.split.i [
    i32 1, label %for.body.i319.for.inc.i_crit_edge
    i32 2, label %if.then8.i
  ]

for.body.i319.for.inc.i_crit_edge:                ; preds = %for.body.i319
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then8.i:                                       ; preds = %for.body.i319
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

for.inc.fold.split.i:                             ; preds = %for.body.i319
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %for.inc.fold.split.i, %if.then8.i, %for.body.i319.for.inc.i_crit_edge
  %primary.1.i = phi ptr [ %primary.02.i, %if.then8.i ], [ %arrayidx.i318, %for.body.i319.for.inc.i_crit_edge ], [ %primary.02.i, %for.inc.fold.split.i ]
  %cursor.1.i = phi ptr [ %arrayidx.i318, %if.then8.i ], [ %cursor.03.i, %for.body.i319.for.inc.i_crit_edge ], [ %cursor.03.i, %for.inc.fold.split.i ]
  %inc.i320 = add nuw i32 %i.04.i, 1
  %exitcond.not.i321 = icmp eq i32 %inc.i320, %115
  br i1 %exitcond.not.i321, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i319_crit_edge

for.inc.i.for.body.i319_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i319

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.end81.for.end.i_crit_edge
  %primary.0.lcssa.i = phi ptr [ null, %for.end81.for.end.i_crit_edge ], [ %primary.1.i, %for.inc.i.for.end.i_crit_edge ]
  %cursor.0.lcssa.i = phi ptr [ null, %for.end81.for.end.i_crit_edge ], [ %cursor.1.i, %for.inc.i.for.end.i_crit_edge ]
  %call.i322 = tail call i32 (ptr, ptr, ptr, ptr, ptr, ptr, ...) @drm_crtc_init_with_planes(ptr noundef %drm_dev, ptr noundef nonnull %call.i, ptr noundef %primary.0.lcssa.i, ptr noundef %cursor.0.lcssa.i, ptr noundef nonnull @mtk_crtc_funcs, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i322)
  %tobool.not.i323 = icmp eq i32 %call.i322, 0
  br i1 %tobool.not.i323, label %mtk_drm_crtc_init.exit.thread, label %mtk_drm_crtc_init.exit

mtk_drm_crtc_init.exit.thread:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %helper_private.i.i = getelementptr inbounds %struct.drm_crtc, ptr %call.i, i32 0, i32 19
  %121 = ptrtoint ptr %helper_private.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr @mtk_crtc_helper_funcs, ptr %helper_private.i.i, align 8
  br label %if.end85

mtk_drm_crtc_init.exit:                           ; preds = %for.end.i
  tail call void @drm_crtc_cleanup(ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i322)
  %cmp83 = icmp slt i32 %call.i322, 0
  br i1 %cmp83, label %mtk_drm_crtc_init.exit.cleanup189_crit_edge, label %mtk_drm_crtc_init.exit.if.end85_crit_edge

mtk_drm_crtc_init.exit.if.end85_crit_edge:        ; preds = %mtk_drm_crtc_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end85

mtk_drm_crtc_init.exit.cleanup189_crit_edge:      ; preds = %mtk_drm_crtc_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup189

if.end85:                                         ; preds = %mtk_drm_crtc_init.exit.if.end85_crit_edge, %mtk_drm_crtc_init.exit.thread
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %gamma_lut_size.0.lcssa393)
  %tobool86.not = icmp eq i32 %gamma_lut_size.0.lcssa393, 0
  br i1 %tobool86.not, label %if.end85.if.end89_crit_edge, label %if.then87

if.end85.if.end89_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end89

if.then87:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #11
  %call88 = tail call i32 @drm_mode_crtc_set_gamma_size(ptr noundef nonnull %call.i, i32 noundef %gamma_lut_size.0.lcssa393) #9
  br label %if.end89

if.end89:                                         ; preds = %if.then87, %if.end85.if.end89_crit_edge
  %gamma_lut_size.0.lcssa394 = phi i32 [ %gamma_lut_size.0.lcssa393, %if.then87 ], [ 0, %if.end85.if.end89_crit_edge ]
  tail call void @drm_crtc_enable_color_mgmt(ptr noundef nonnull %call.i, i32 noundef 0, i1 noundef zeroext %has_ctm.0.off0.lcssa392, i32 noundef %gamma_lut_size.0.lcssa394) #9
  %122 = ptrtoint ptr %num_pipes to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %num_pipes, align 4
  %inc93 = add i32 %123, 1
  store i32 %inc93, ptr %num_pipes, align 4
  %hw_lock = getelementptr inbounds %struct.mtk_drm_crtc, ptr %call.i, i32 0, i32 16
  tail call void @__mutex_init(ptr noundef %hw_lock, ptr noundef nonnull @.str.12, ptr noundef nonnull @mtk_drm_crtc_create.__key) #9
  %124 = ptrtoint ptr %mmsys_dev19 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %mmsys_dev19, align 8
  %cmdq_client = getelementptr inbounds %struct.mtk_drm_crtc, ptr %call.i, i32 0, i32 8
  %126 = ptrtoint ptr %cmdq_client to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %125, ptr %cmdq_client, align 4
  %tx_block = getelementptr inbounds %struct.mtk_drm_crtc, ptr %call.i, i32 0, i32 8, i32 0, i32 1
  %127 = ptrtoint ptr %tx_block to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 0, ptr %tx_block, align 4
  %knows_txdone = getelementptr inbounds %struct.mtk_drm_crtc, ptr %call.i, i32 0, i32 8, i32 0, i32 3
  %128 = ptrtoint ptr %knows_txdone to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 1, ptr %knows_txdone, align 4
  %rx_callback = getelementptr inbounds %struct.mtk_drm_crtc, ptr %call.i, i32 0, i32 8, i32 0, i32 4
  %129 = ptrtoint ptr %rx_callback to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr @ddp_cmdq_cb, ptr %rx_callback, align 4
  %index.i = getelementptr inbounds %struct.drm_crtc, ptr %call.i, i32 0, i32 8
  %130 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %index.i, align 4
  %call109 = tail call ptr @mbox_request_channel(ptr noundef %cmdq_client, i32 noundef %131) #9
  %chan = getelementptr inbounds %struct.mtk_drm_crtc, ptr %call.i, i32 0, i32 8, i32 1
  %132 = ptrtoint ptr %chan to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %call109, ptr %chan, align 4
  %cmp.i324 = icmp ugt ptr %call109, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i324, label %do.body115, label %if.end128

do.body115:                                       ; preds = %if.end89
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_drm_crtc_create.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_drm_crtc_create, %if.then120)) #9
          to label %if.end128.thread [label %if.then120], !srcloc !79

if.then120:                                       ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #11
  %133 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %index.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtk_drm_crtc_create.__UNIQUE_ID_ddebug319, ptr noundef %3, ptr noundef nonnull @.str.14, i32 noundef %134) #9
  br label %if.end128.thread

if.end128.thread:                                 ; preds = %if.then120, %do.body115
  %135 = ptrtoint ptr %chan to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr null, ptr %chan, align 4
  br label %cleanup189

if.end128:                                        ; preds = %if.end89
  %tobool131.not = icmp eq ptr %call109, null
  br i1 %tobool131.not, label %if.end128.cleanup189_crit_edge, label %if.then132

if.end128.cleanup189_crit_edge:                   ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup189

if.then132:                                       ; preds = %if.end128
  %mutex_node = getelementptr inbounds %struct.mtk_drm_private, ptr %1, i32 0, i32 3
  %136 = ptrtoint ptr %mutex_node to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %mutex_node, align 4
  %138 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %index.i, align 4
  %cmdq_event = getelementptr inbounds %struct.mtk_drm_crtc, ptr %call.i, i32 0, i32 10
  %call135 = tail call i32 @of_property_read_u32_index(ptr noundef %137, ptr noundef nonnull @.str.15, i32 noundef %139, ptr noundef %cmdq_event) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135)
  %tobool136.not = icmp eq i32 %call135, 0
  br i1 %tobool136.not, label %if.else, label %do.body138

do.body138:                                       ; preds = %if.then132
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_drm_crtc_create.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_drm_crtc_create, %if.then150)) #9
          to label %do.end155 [label %if.then150], !srcloc !79

if.then150:                                       ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #11
  %140 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %index.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtk_drm_crtc_create.__UNIQUE_ID_ddebug320, ptr noundef %3, ptr noundef nonnull @.str.16, i32 noundef %141) #9
  br label %do.end155

do.end155:                                        ; preds = %if.then150, %do.body138
  %142 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %chan, align 4
  tail call void @mbox_free_channel(ptr noundef %143) #9
  %144 = ptrtoint ptr %chan to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr null, ptr %chan, align 4
  br label %cleanup189

if.else:                                          ; preds = %if.then132
  %cmdq_handle = getelementptr inbounds %struct.mtk_drm_crtc, ptr %call.i, i32 0, i32 9
  %call161 = tail call fastcc i32 @mtk_drm_cmdq_pkt_create(ptr noundef %cmdq_client, ptr noundef %cmdq_handle)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call161)
  %tobool162.not = icmp eq i32 %call161, 0
  br i1 %tobool162.not, label %if.else.cleanup189_crit_edge, label %do.body164

if.else.cleanup189_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup189

do.body164:                                       ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_drm_crtc_create.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_drm_crtc_create, %if.then176)) #9
          to label %do.end181 [label %if.then176], !srcloc !79

if.then176:                                       ; preds = %do.body164
  call void @__sanitizer_cov_trace_pc() #11
  %145 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %index.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtk_drm_crtc_create.__UNIQUE_ID_ddebug321, ptr noundef %3, ptr noundef nonnull @.str.17, i32 noundef %146) #9
  br label %do.end181

do.end181:                                        ; preds = %if.then176, %do.body164
  %147 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %chan, align 4
  tail call void @mbox_free_channel(ptr noundef %148) #9
  %149 = ptrtoint ptr %chan to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr null, ptr %chan, align 4
  br label %cleanup189

cleanup189:                                       ; preds = %do.end181, %if.else.cleanup189_crit_edge, %do.end155, %if.end128.cleanup189_crit_edge, %if.end128.thread, %mtk_drm_crtc_init.exit.cleanup189_crit_edge, %mtk_ddp_comp_supported_rotations.exit.i.cleanup189_crit_edge, %if.then30, %devm_kmalloc_array.exit.cleanup189_crit_edge, %devm_kmalloc_array.exit.thread, %for.end.cleanup189_crit_edge, %do.end12, %do.end, %entry.cleanup189_crit_edge
  %retval.2 = phi i32 [ %26, %if.then30 ], [ 0, %entry.cleanup189_crit_edge ], [ -12, %for.end.cleanup189_crit_edge ], [ -12, %devm_kmalloc_array.exit.cleanup189_crit_edge ], [ %call.i322, %mtk_drm_crtc_init.exit.cleanup189_crit_edge ], [ 0, %do.end155 ], [ 0, %do.end181 ], [ 0, %if.else.cleanup189_crit_edge ], [ 0, %if.end128.cleanup189_crit_edge ], [ -12, %devm_kmalloc_array.exit.thread ], [ 0, %if.end128.thread ], [ 0, %do.end ], [ -19, %do.end12 ], [ %call5.i311, %mtk_ddp_comp_supported_rotations.exit.i.cleanup189_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mtk_mutex_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_crtc_set_gamma_size(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_enable_color_mgmt(ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ddp_cmdq_cb(ptr nocapture noundef %cl, ptr nocapture noundef readonly %mssg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mssg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mssg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %state4 = getelementptr i8, ptr %cl, i32 -288
  %2 = ptrtoint ptr %state4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state4, align 4
  %pending_config = getelementptr inbounds %struct.mtk_crtc_state, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %pending_config to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %pending_config, align 4
  %pending_planes = getelementptr i8, ptr %cl, i32 -4
  %5 = ptrtoint ptr %pending_planes to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %pending_planes, align 8, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %if.end.if.end10_crit_edge, label %for.cond.preheader

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

for.cond.preheader:                               ; preds = %if.end
  %layer_nr = getelementptr i8, ptr %cl, i32 -8
  %7 = ptrtoint ptr %layer_nr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %layer_nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp647.not = icmp eq i32 %8, 0
  br i1 %cmp647.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %planes = getelementptr i8, ptr %cl, i32 -12
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.048 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %9 = ptrtoint ptr %planes to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %planes, align 8
  %state7 = getelementptr %struct.drm_plane, ptr %10, i32 %i.048, i32 19
  %11 = ptrtoint ptr %state7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %state7, align 4
  %pending = getelementptr inbounds %struct.mtk_plane_state, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %pending to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %pending, align 4
  %inc = add nuw i32 %i.048, 1
  %14 = ptrtoint ptr %layer_nr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %layer_nr, align 4
  %cmp6 = icmp ult i32 %inc, %15
  br i1 %cmp6, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %16 = ptrtoint ptr %pending_planes to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %pending_planes, align 8
  br label %if.end10

if.end10:                                         ; preds = %for.end, %if.end.if.end10_crit_edge
  %pending_async_planes = getelementptr i8, ptr %cl, i32 -3
  %17 = ptrtoint ptr %pending_async_planes to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %pending_async_planes, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool11.not = icmp eq i8 %18, 0
  br i1 %tobool11.not, label %if.end10.if.end28_crit_edge, label %for.cond13.preheader

if.end10.if.end28_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

for.cond13.preheader:                             ; preds = %if.end10
  %layer_nr14 = getelementptr i8, ptr %cl, i32 -8
  %19 = ptrtoint ptr %layer_nr14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %layer_nr14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp1549.not = icmp eq i32 %20, 0
  br i1 %cmp1549.not, label %for.cond13.preheader.for.end26_crit_edge, label %for.body16.lr.ph

for.cond13.preheader.for.end26_crit_edge:         ; preds = %for.cond13.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end26

for.body16.lr.ph:                                 ; preds = %for.cond13.preheader
  %planes18 = getelementptr i8, ptr %cl, i32 -12
  br label %for.body16

for.body16:                                       ; preds = %for.body16.for.body16_crit_edge, %for.body16.lr.ph
  %i.150 = phi i32 [ 0, %for.body16.lr.ph ], [ %inc25, %for.body16.for.body16_crit_edge ]
  %21 = ptrtoint ptr %planes18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %planes18, align 8
  %state21 = getelementptr %struct.drm_plane, ptr %22, i32 %i.150, i32 19
  %23 = ptrtoint ptr %state21 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %state21, align 4
  %async_config = getelementptr inbounds %struct.mtk_plane_state, ptr %24, i32 0, i32 1, i32 12
  %25 = ptrtoint ptr %async_config to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %async_config, align 2
  %inc25 = add nuw i32 %i.150, 1
  %26 = ptrtoint ptr %layer_nr14 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %layer_nr14, align 4
  %cmp15 = icmp ult i32 %inc25, %27
  br i1 %cmp15, label %for.body16.for.body16_crit_edge, label %for.body16.for.end26_crit_edge

for.body16.for.end26_crit_edge:                   ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end26

for.body16.for.body16_crit_edge:                  ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body16

for.end26:                                        ; preds = %for.body16.for.end26_crit_edge, %for.cond13.preheader.for.end26_crit_edge
  %28 = ptrtoint ptr %pending_async_planes to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %pending_async_planes, align 1
  br label %if.end28

if.end28:                                         ; preds = %for.end26, %if.end10.if.end28_crit_edge
  %cmdq_vblank_cnt = getelementptr i8, ptr %cl, i32 72
  %29 = ptrtoint ptr %cmdq_vblank_cnt to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %cmdq_vblank_cnt, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mbox_request_channel(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mbox_free_channel(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mtk_drm_cmdq_pkt_create(ptr noundef %client, ptr noundef %pkt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 4096) #13
  %1 = ptrtoint ptr %pkt to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %pkt, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef %pkt) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %buf_size = getelementptr inbounds %struct.cmdq_pkt, ptr %pkt, i32 0, i32 3
  %2 = ptrtoint ptr %buf_size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4096, ptr %buf_size, align 4
  %cl = getelementptr inbounds %struct.cmdq_pkt, ptr %pkt, i32 0, i32 6
  %3 = ptrtoint ptr %cl to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %client, ptr %cl, align 4
  %chan = getelementptr inbounds %struct.cmdq_client, ptr %client, i32 0, i32 1
  %4 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chan, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call7.i.i) #9
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.end
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !80

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %9) #9
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %13, %if.end.i.i ], [ %11, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.29, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.30, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #9
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  tail call void @debug_dma_mapping_error(ptr noundef %9, i32 noundef -1) #9
  br label %do.end

dma_map_single_attrs.exit:                        ; preds = %if.end
  tail call void @debug_dma_map_single(ptr noundef %9, ptr noundef nonnull %call7.i.i, i32 noundef 4096) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %14 = load ptr, ptr @mem_map, align 4
  %15 = ptrtoint ptr %call7.i.i to i32
  %sub.i = add i32 %15, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %14, i32 %shr.i
  %and.i = and i32 %15, 4088
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %9, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef 4096, i32 noundef 1, i32 noundef 0) #9
  tail call void @debug_dma_mapping_error(ptr noundef %9, i32 noundef %call41.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.do.end_crit_edge, label %if.end11

dma_map_single_attrs.exit.do.end_crit_edge:       ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %dma_map_single_attrs.exit.do.end_crit_edge, %dma_map_single_attrs.exit.thread
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.27, i32 noundef 4096) #12
  %16 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pkt, align 4
  tail call void @kfree(ptr noundef %17) #9
  tail call void @kfree(ptr noundef %pkt) #9
  br label %cleanup

if.end11:                                         ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #11
  %pa_base = getelementptr inbounds %struct.cmdq_pkt, ptr %pkt, i32 0, i32 1
  %18 = ptrtoint ptr %pa_base to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call41.i, ptr %pa_base, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end, %if.then
  %retval.0 = phi i32 [ -12, %do.end ], [ 0, %if.end11 ], [ -12, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_mutex_acquire(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mtk_crtc_ddp_config(ptr nocapture noundef %crtc, ptr noundef %cmdq_handle) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state1, align 4
  %ddp_comp = getelementptr inbounds %struct.mtk_drm_crtc, ptr %crtc, i32 0, i32 15
  %2 = ptrtoint ptr %ddp_comp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ddp_comp, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %pending_config = getelementptr inbounds %struct.mtk_crtc_state, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %pending_config to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pending_config, align 4, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then:                                          ; preds = %entry
  %pending_width = getelementptr inbounds %struct.mtk_crtc_state, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %pending_width to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pending_width, align 4
  %pending_height = getelementptr inbounds %struct.mtk_crtc_state, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %pending_height to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pending_height, align 4
  %pending_vrefresh = getelementptr inbounds %struct.mtk_crtc_state, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %pending_vrefresh to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pending_vrefresh, align 4
  %funcs.i = getelementptr inbounds %struct.mtk_ddp_comp, ptr %5, i32 0, i32 4
  %14 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %funcs.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.then.mtk_ddp_comp_config.exit_crit_edge, label %land.lhs.true.i

if.then.mtk_ddp_comp_config.exit_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_ddp_comp_config.exit

land.lhs.true.i:                                  ; preds = %if.then
  %config.i = getelementptr inbounds %struct.mtk_ddp_comp_funcs, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %config.i, align 4
  %tobool2.not.i = icmp eq ptr %17, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.mtk_ddp_comp_config.exit_crit_edge, label %if.then.i

land.lhs.true.i.mtk_ddp_comp_config.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_ddp_comp_config.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %5, align 4
  tail call void %17(ptr noundef %19, i32 noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef 0, ptr noundef %cmdq_handle) #9
  br label %mtk_ddp_comp_config.exit

mtk_ddp_comp_config.exit:                         ; preds = %if.then.i, %land.lhs.true.i.mtk_ddp_comp_config.exit_crit_edge, %if.then.mtk_ddp_comp_config.exit_crit_edge
  %tobool3.not = icmp eq ptr %cmdq_handle, null
  br i1 %tobool3.not, label %if.then4, label %mtk_ddp_comp_config.exit.if.end6_crit_edge

mtk_ddp_comp_config.exit.if.end6_crit_edge:       ; preds = %mtk_ddp_comp_config.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then4:                                         ; preds = %mtk_ddp_comp_config.exit
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %pending_config to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %pending_config, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %mtk_ddp_comp_config.exit.if.end6_crit_edge, %entry.if.end6_crit_edge
  %pending_planes = getelementptr inbounds %struct.mtk_drm_crtc, ptr %crtc, i32 0, i32 6
  %21 = ptrtoint ptr %pending_planes to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %pending_planes, align 8, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool7.not = icmp eq i8 %22, 0
  br i1 %tobool7.not, label %if.end6.if.end29_crit_edge, label %for.cond.preheader

if.end6.if.end29_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

for.cond.preheader:                               ; preds = %if.end6
  %layer_nr = getelementptr inbounds %struct.mtk_drm_crtc, ptr %crtc, i32 0, i32 5
  %23 = ptrtoint ptr %layer_nr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %layer_nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp175.not = icmp eq i32 %24, 0
  br i1 %cmp175.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %planes = getelementptr inbounds %struct.mtk_drm_crtc, ptr %crtc, i32 0, i32 4
  %ddp_comp_nr.i = getelementptr inbounds %struct.mtk_drm_crtc, ptr %crtc, i32 0, i32 14
  %tobool19.not = icmp eq ptr %cmdq_handle, null
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.0177 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %25 = ptrtoint ptr %planes to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %planes, align 8
  %state10 = getelementptr %struct.drm_plane, ptr %26, i32 %i.0177, i32 19
  %27 = ptrtoint ptr %state10 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %state10, align 4
  %pending = getelementptr inbounds %struct.mtk_plane_state, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %pending to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %pending, align 4, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool12.not = icmp eq i8 %30, 0
  br i1 %tobool12.not, label %for.body.cleanup_crit_edge, label %if.end14

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %for.body
  %arrayidx9.idx = mul i32 %i.0177, 528
  %sub.ptr.div.i = sdiv exact i32 %arrayidx9.idx, 528
  %31 = ptrtoint ptr %ddp_comp_nr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ddp_comp_nr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp46.not.i = icmp eq i32 %32, 0
  br i1 %cmp46.not.i, label %if.end14.mtk_drm_ddp_comp_for_plane.exit.thread_crit_edge, label %if.end14.for.body.i_crit_edge

if.end14.for.body.i_crit_edge:                    ; preds = %if.end14
  br label %for.body.i

if.end14.mtk_drm_ddp_comp_for_plane.exit.thread_crit_edge: ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_drm_ddp_comp_for_plane.exit.thread

for.body.i:                                       ; preds = %mtk_ddp_comp_layer_nr.exit44.i.for.body.i_crit_edge, %if.end14.for.body.i_crit_edge
  %count.048.i = phi i32 [ %add4.i, %mtk_ddp_comp_layer_nr.exit44.i.for.body.i_crit_edge ], [ 0, %if.end14.for.body.i_crit_edge ]
  %i.047.i = phi i32 [ %inc.i, %mtk_ddp_comp_layer_nr.exit44.i.for.body.i_crit_edge ], [ 0, %if.end14.for.body.i_crit_edge ]
  %33 = ptrtoint ptr %ddp_comp to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ddp_comp, align 4
  %arrayidx.i = getelementptr ptr, ptr %34, i32 %i.047.i
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.i, align 4
  %funcs.i.i = getelementptr inbounds %struct.mtk_ddp_comp, ptr %36, i32 0, i32 4
  %37 = ptrtoint ptr %funcs.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %funcs.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %38, null
  br i1 %tobool.not.i.i, label %for.body.i.mtk_ddp_comp_layer_nr.exit.i_crit_edge, label %land.lhs.true.i.i

for.body.i.mtk_ddp_comp_layer_nr.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_ddp_comp_layer_nr.exit.i

land.lhs.true.i.i:                                ; preds = %for.body.i
  %layer_nr.i.i = getelementptr inbounds %struct.mtk_ddp_comp_funcs, ptr %38, i32 0, i32 8
  %39 = ptrtoint ptr %layer_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %layer_nr.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %40, null
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.mtk_ddp_comp_layer_nr.exit.i_crit_edge, label %if.then.i.i

land.lhs.true.i.i.mtk_ddp_comp_layer_nr.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_ddp_comp_layer_nr.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %36, align 4
  %call.i.i = tail call i32 %40(ptr noundef %42) #9
  br label %mtk_ddp_comp_layer_nr.exit.i

mtk_ddp_comp_layer_nr.exit.i:                     ; preds = %if.then.i.i, %land.lhs.true.i.i.mtk_ddp_comp_layer_nr.exit.i_crit_edge, %for.body.i.mtk_ddp_comp_layer_nr.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ 0, %land.lhs.true.i.i.mtk_ddp_comp_layer_nr.exit.i_crit_edge ], [ 0, %for.body.i.mtk_ddp_comp_layer_nr.exit.i_crit_edge ]
  %add.i = add i32 %retval.0.i.i, %count.048.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.div.i, i32 %add.i)
  %cmp2.i = icmp ult i32 %sub.ptr.div.i, %add.i
  br i1 %cmp2.i, label %mtk_drm_ddp_comp_for_plane.exit, label %if.end.i

if.end.i:                                         ; preds = %mtk_ddp_comp_layer_nr.exit.i
  %43 = ptrtoint ptr %funcs.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %funcs.i.i, align 4
  %tobool.not.i37.i = icmp eq ptr %44, null
  br i1 %tobool.not.i37.i, label %if.end.i.mtk_ddp_comp_layer_nr.exit44.i_crit_edge, label %land.lhs.true.i40.i

if.end.i.mtk_ddp_comp_layer_nr.exit44.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_ddp_comp_layer_nr.exit44.i

land.lhs.true.i40.i:                              ; preds = %if.end.i
  %layer_nr.i38.i = getelementptr inbounds %struct.mtk_ddp_comp_funcs, ptr %44, i32 0, i32 8
  %45 = ptrtoint ptr %layer_nr.i38.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %layer_nr.i38.i, align 4
  %tobool2.not.i39.i = icmp eq ptr %46, null
  br i1 %tobool2.not.i39.i, label %land.lhs.true.i40.i.mtk_ddp_comp_layer_nr.exit44.i_crit_edge, label %if.then.i42.i

land.lhs.true.i40.i.mtk_ddp_comp_layer_nr.exit44.i_crit_edge: ; preds = %land.lhs.true.i40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_ddp_comp_layer_nr.exit44.i

if.then.i42.i:                                    ; preds = %land.lhs.true.i40.i
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %36, align 4
  %call.i41.i = tail call i32 %46(ptr noundef %48) #9
  br label %mtk_ddp_comp_layer_nr.exit44.i

mtk_ddp_comp_layer_nr.exit44.i:                   ; preds = %if.then.i42.i, %land.lhs.true.i40.i.mtk_ddp_comp_layer_nr.exit44.i_crit_edge, %if.end.i.mtk_ddp_comp_layer_nr.exit44.i_crit_edge
  %retval.0.i43.i = phi i32 [ %call.i41.i, %if.then.i42.i ], [ 0, %land.lhs.true.i40.i.mtk_ddp_comp_layer_nr.exit44.i_crit_edge ], [ 0, %if.end.i.mtk_ddp_comp_layer_nr.exit44.i_crit_edge ]
  %add4.i = add i32 %retval.0.i43.i, %count.048.i
  %inc.i = add nuw i32 %i.047.i, 1
  %49 = ptrtoint ptr %ddp_comp_nr.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ddp_comp_nr.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %50
  br i1 %cmp.i, label %mtk_ddp_comp_layer_nr.exit44.i.for.body.i_crit_edge, label %mtk_ddp_comp_layer_nr.exit44.i.mtk_drm_ddp_comp_for_plane.exit.thread_crit_edge

mtk_ddp_comp_layer_nr.exit44.i.mtk_drm_ddp_comp_for_plane.exit.thread_crit_edge: ; preds = %mtk_ddp_comp_layer_nr.exit44.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_drm_ddp_comp_for_plane.exit.thread

mtk_ddp_comp_layer_nr.exit44.i.for.body.i_crit_edge: ; preds = %mtk_ddp_comp_layer_nr.exit44.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

mtk_drm_ddp_comp_for_plane.exit.thread:           ; preds = %mtk_ddp_comp_layer_nr.exit44.i.mtk_drm_ddp_comp_for_plane.exit.thread_crit_edge, %if.end14.mtk_drm_ddp_comp_for_plane.exit.thread_crit_edge
  %index.i = getelementptr %struct.drm_plane, ptr %26, i32 %i.0177, i32 17
  %51 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %index.i, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 272, i32 noundef 9, ptr noundef nonnull @.str.18, i32 noundef %52) #9
  br label %if.end18

mtk_drm_ddp_comp_for_plane.exit:                  ; preds = %mtk_ddp_comp_layer_nr.exit.i
  %sub.i = sub i32 %sub.ptr.div.i, %count.048.i
  %tobool16.not = icmp eq ptr %36, null
  br i1 %tobool16.not, label %mtk_drm_ddp_comp_for_plane.exit.if.end18_crit_edge, label %if.then17

mtk_drm_ddp_comp_for_plane.exit.if.end18_crit_edge: ; preds = %mtk_drm_ddp_comp_for_plane.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then17:                                        ; preds = %mtk_drm_ddp_comp_for_plane.exit
  %53 = ptrtoint ptr %funcs.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %funcs.i.i, align 4
  %tobool.not.i106 = icmp eq ptr %54, null
  br i1 %tobool.not.i106, label %if.then17.if.end18_crit_edge, label %land.lhs.true.i108

if.then17.if.end18_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

land.lhs.true.i108:                               ; preds = %if.then17
  %layer_config.i = getelementptr inbounds %struct.mtk_ddp_comp_funcs, ptr %54, i32 0, i32 10
  %55 = ptrtoint ptr %layer_config.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %layer_config.i, align 4
  %tobool2.not.i107 = icmp eq ptr %56, null
  br i1 %tobool2.not.i107, label %land.lhs.true.i108.if.end18_crit_edge, label %if.then.i109

land.lhs.true.i108.if.end18_crit_edge:            ; preds = %land.lhs.true.i108
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then.i109:                                     ; preds = %land.lhs.true.i108
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %36, align 4
  tail call void %56(ptr noundef %58, i32 noundef %sub.i, ptr noundef %28, ptr noundef %cmdq_handle) #9
  br label %if.end18

if.end18:                                         ; preds = %if.then.i109, %land.lhs.true.i108.if.end18_crit_edge, %if.then17.if.end18_crit_edge, %mtk_drm_ddp_comp_for_plane.exit.if.end18_crit_edge, %mtk_drm_ddp_comp_for_plane.exit.thread
  br i1 %tobool19.not, label %if.then20, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %59 = ptrtoint ptr %pending to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 0, ptr %pending, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %if.end18.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %inc = add nuw i32 %i.0177, 1
  %60 = ptrtoint ptr %layer_nr to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %layer_nr, align 4
  %cmp = icmp ult i32 %inc, %61
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %tobool25.not = icmp eq ptr %cmdq_handle, null
  br i1 %tobool25.not, label %if.then26, label %for.end.if.end29_crit_edge

for.end.if.end29_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then26:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %62 = ptrtoint ptr %pending_planes to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %pending_planes, align 8
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %for.end.if.end29_crit_edge, %if.end6.if.end29_crit_edge
  %pending_async_planes = getelementptr inbounds %struct.mtk_drm_crtc, ptr %crtc, i32 0, i32 7
  %63 = ptrtoint ptr %pending_async_planes to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %pending_async_planes, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool30.not = icmp eq i8 %64, 0
  br i1 %tobool30.not, label %if.end29.if.end66_crit_edge, label %for.cond32.preheader

if.end29.if.end66_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

for.cond32.preheader:                             ; preds = %if.end29
  %layer_nr33 = getelementptr inbounds %struct.mtk_drm_crtc, ptr %crtc, i32 0, i32 5
  %65 = ptrtoint ptr %layer_nr33 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %layer_nr33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp34180.not = icmp eq i32 %66, 0
  br i1 %cmp34180.not, label %for.cond32.preheader.for.end61_crit_edge, label %for.body35.lr.ph

for.cond32.preheader.for.end61_crit_edge:         ; preds = %for.cond32.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end61

for.body35.lr.ph:                                 ; preds = %for.cond32.preheader
  %planes37 = getelementptr inbounds %struct.mtk_drm_crtc, ptr %crtc, i32 0, i32 4
  %ddp_comp_nr.i116 = getelementptr inbounds %struct.mtk_drm_crtc, ptr %crtc, i32 0, i32 14
  %tobool50.not = icmp eq ptr %cmdq_handle, null
  br label %for.body35

for.body35:                                       ; preds = %cleanup55.for.body35_crit_edge, %for.body35.lr.ph
  %i.1182 = phi i32 [ 0, %for.body35.lr.ph ], [ %inc60, %cleanup55.for.body35_crit_edge ]
  %67 = ptrtoint ptr %planes37 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %planes37, align 8
  %state40 = getelementptr %struct.drm_plane, ptr %68, i32 %i.1182, i32 19
  %69 = ptrtoint ptr %state40 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %state40, align 4
  %async_config = getelementptr inbounds %struct.mtk_plane_state, ptr %70, i32 0, i32 1, i32 12
  %71 = ptrtoint ptr %async_config to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %async_config, align 2, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool43.not = icmp eq i8 %72, 0
  br i1 %tobool43.not, label %for.body35.cleanup55_crit_edge, label %if.end45

for.body35.cleanup55_crit_edge:                   ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup55

if.end45:                                         ; preds = %for.body35
  %arrayidx38.idx = mul i32 %i.1182, 528
  %sub.ptr.div.i115 = sdiv exact i32 %arrayidx38.idx, 528
  %73 = ptrtoint ptr %ddp_comp_nr.i116 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %ddp_comp_nr.i116, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp46.not.i117 = icmp eq i32 %74, 0
  br i1 %cmp46.not.i117, label %if.end45.mtk_drm_ddp_comp_for_plane.exit152.thread_crit_edge, label %if.end45.for.body.i125_crit_edge

if.end45.for.body.i125_crit_edge:                 ; preds = %if.end45
  br label %for.body.i125

if.end45.mtk_drm_ddp_comp_for_plane.exit152.thread_crit_edge: ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_drm_ddp_comp_for_plane.exit152.thread

for.body.i125:                                    ; preds = %mtk_ddp_comp_layer_nr.exit44.i148.for.body.i125_crit_edge, %if.end45.for.body.i125_crit_edge
  %count.048.i120 = phi i32 [ %add4.i145, %mtk_ddp_comp_layer_nr.exit44.i148.for.body.i125_crit_edge ], [ 0, %if.end45.for.body.i125_crit_edge ]
  %i.047.i121 = phi i32 [ %inc.i146, %mtk_ddp_comp_layer_nr.exit44.i148.for.body.i125_crit_edge ], [ 0, %if.end45.for.body.i125_crit_edge ]
  %75 = ptrtoint ptr %ddp_comp to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ddp_comp, align 4
  %arrayidx.i122 = getelementptr ptr, ptr %76, i32 %i.047.i121
  %77 = ptrtoint ptr %arrayidx.i122 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx.i122, align 4
  %funcs.i.i123 = getelementptr inbounds %struct.mtk_ddp_comp, ptr %78, i32 0, i32 4
  %79 = ptrtoint ptr %funcs.i.i123 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %funcs.i.i123, align 4
  %tobool.not.i.i124 = icmp eq ptr %80, null
  br i1 %tobool.not.i.i124, label %for.body.i125.mtk_ddp_comp_layer_nr.exit.i134_crit_edge, label %land.lhs.true.i.i128

for.body.i125.mtk_ddp_comp_layer_nr.exit.i134_crit_edge: ; preds = %for.body.i125
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_ddp_comp_layer_nr.exit.i134

land.lhs.true.i.i128:                             ; preds = %for.body.i125
  %layer_nr.i.i126 = getelementptr inbounds %struct.mtk_ddp_comp_funcs, ptr %80, i32 0, i32 8
  %81 = ptrtoint ptr %layer_nr.i.i126 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %layer_nr.i.i126, align 4
  %tobool2.not.i.i127 = icmp eq ptr %82, null
  br i1 %tobool2.not.i.i127, label %land.lhs.true.i.i128.mtk_ddp_comp_layer_nr.exit.i134_crit_edge, label %if.then.i.i130

land.lhs.true.i.i128.mtk_ddp_comp_layer_nr.exit.i134_crit_edge: ; preds = %land.lhs.true.i.i128
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_ddp_comp_layer_nr.exit.i134

if.then.i.i130:                                   ; preds = %land.lhs.true.i.i128
  call void @__sanitizer_cov_trace_pc() #11
  %83 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %78, align 4
  %call.i.i129 = tail call i32 %82(ptr noundef %84) #9
  br label %mtk_ddp_comp_layer_nr.exit.i134

mtk_ddp_comp_layer_nr.exit.i134:                  ; preds = %if.then.i.i130, %land.lhs.true.i.i128.mtk_ddp_comp_layer_nr.exit.i134_crit_edge, %for.body.i125.mtk_ddp_comp_layer_nr.exit.i134_crit_edge
  %retval.0.i.i131 = phi i32 [ %call.i.i129, %if.then.i.i130 ], [ 0, %land.lhs.true.i.i128.mtk_ddp_comp_layer_nr.exit.i134_crit_edge ], [ 0, %for.body.i125.mtk_ddp_comp_layer_nr.exit.i134_crit_edge ]
  %add.i132 = add i32 %retval.0.i.i131, %count.048.i120
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.div.i115, i32 %add.i132)
  %cmp2.i133 = icmp ult i32 %sub.ptr.div.i115, %add.i132
  br i1 %cmp2.i133, label %mtk_drm_ddp_comp_for_plane.exit152, label %if.end.i138

if.end.i138:                                      ; preds = %mtk_ddp_comp_layer_nr.exit.i134
  %85 = ptrtoint ptr %funcs.i.i123 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %funcs.i.i123, align 4
  %tobool.not.i37.i137 = icmp eq ptr %86, null
  br i1 %tobool.not.i37.i137, label %if.end.i138.mtk_ddp_comp_layer_nr.exit44.i148_crit_edge, label %land.lhs.true.i40.i141

if.end.i138.mtk_ddp_comp_layer_nr.exit44.i148_crit_edge: ; preds = %if.end.i138
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_ddp_comp_layer_nr.exit44.i148

land.lhs.true.i40.i141:                           ; preds = %if.end.i138
  %layer_nr.i38.i139 = getelementptr inbounds %struct.mtk_ddp_comp_funcs, ptr %86, i32 0, i32 8
  %87 = ptrtoint ptr %layer_nr.i38.i139 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %layer_nr.i38.i139, align 4
  %tobool2.not.i39.i140 = icmp eq ptr %88, null
  br i1 %tobool2.not.i39.i140, label %land.lhs.true.i40.i141.mtk_ddp_comp_layer_nr.exit44.i148_crit_edge, label %if.then.i42.i143

land.lhs.true.i40.i141.mtk_ddp_comp_layer_nr.exit44.i148_crit_edge: ; preds = %land.lhs.true.i40.i141
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_ddp_comp_layer_nr.exit44.i148

if.then.i42.i143:                                 ; preds = %land.lhs.true.i40.i141
  call void @__sanitizer_cov_trace_pc() #11
  %89 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %78, align 4
  %call.i41.i142 = tail call i32 %88(ptr noundef %90) #9
  br label %mtk_ddp_comp_layer_nr.exit44.i148

mtk_ddp_comp_layer_nr.exit44.i148:                ; preds = %if.then.i42.i143, %land.lhs.true.i40.i141.mtk_ddp_comp_layer_nr.exit44.i148_crit_edge, %if.end.i138.mtk_ddp_comp_layer_nr.exit44.i148_crit_edge
  %retval.0.i43.i144 = phi i32 [ %call.i41.i142, %if.then.i42.i143 ], [ 0, %land.lhs.true.i40.i141.mtk_ddp_comp_layer_nr.exit44.i148_crit_edge ], [ 0, %if.end.i138.mtk_ddp_comp_layer_nr.exit44.i148_crit_edge ]
  %add4.i145 = add i32 %retval.0.i43.i144, %count.048.i120
  %inc.i146 = add nuw i32 %i.047.i121, 1
  %91 = ptrtoint ptr %ddp_comp_nr.i116 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %ddp_comp_nr.i116, align 8
  %cmp.i147 = icmp ult i32 %inc.i146, %92
  br i1 %cmp.i147, label %mtk_ddp_comp_layer_nr.exit44.i148.for.body.i125_crit_edge, label %mtk_ddp_comp_layer_nr.exit44.i148.mtk_drm_ddp_comp_for_plane.exit152.thread_crit_edge

mtk_ddp_comp_layer_nr.exit44.i148.mtk_drm_ddp_comp_for_plane.exit152.thread_crit_edge: ; preds = %mtk_ddp_comp_layer_nr.exit44.i148
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_drm_ddp_comp_for_plane.exit152.thread

mtk_ddp_comp_layer_nr.exit44.i148.for.body.i125_crit_edge: ; preds = %mtk_ddp_comp_layer_nr.exit44.i148
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i125

mtk_drm_ddp_comp_for_plane.exit152.thread:        ; preds = %mtk_ddp_comp_layer_nr.exit44.i148.mtk_drm_ddp_comp_for_plane.exit152.thread_crit_edge, %if.end45.mtk_drm_ddp_comp_for_plane.exit152.thread_crit_edge
  %index.i149 = getelementptr %struct.drm_plane, ptr %68, i32 %i.1182, i32 17
  %93 = ptrtoint ptr %index.i149 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %index.i149, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 272, i32 noundef 9, ptr noundef nonnull @.str.18, i32 noundef %94) #9
  br label %if.end49

mtk_drm_ddp_comp_for_plane.exit152:               ; preds = %mtk_ddp_comp_layer_nr.exit.i134
  %sub.i135 = sub i32 %sub.ptr.div.i115, %count.048.i120
  %tobool47.not = icmp eq ptr %78, null
  br i1 %tobool47.not, label %mtk_drm_ddp_comp_for_plane.exit152.if.end49_crit_edge, label %if.then48

mtk_drm_ddp_comp_for_plane.exit152.if.end49_crit_edge: ; preds = %mtk_drm_ddp_comp_for_plane.exit152
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

if.then48:                                        ; preds = %mtk_drm_ddp_comp_for_plane.exit152
  %95 = ptrtoint ptr %funcs.i.i123 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %funcs.i.i123, align 4
  %tobool.not.i154 = icmp eq ptr %96, null
  br i1 %tobool.not.i154, label %if.then48.if.end49_crit_edge, label %land.lhs.true.i157

if.then48.if.end49_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

land.lhs.true.i157:                               ; preds = %if.then48
  %layer_config.i155 = getelementptr inbounds %struct.mtk_ddp_comp_funcs, ptr %96, i32 0, i32 10
  %97 = ptrtoint ptr %layer_config.i155 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %layer_config.i155, align 4
  %tobool2.not.i156 = icmp eq ptr %98, null
  br i1 %tobool2.not.i156, label %land.lhs.true.i157.if.end49_crit_edge, label %if.then.i158

land.lhs.true.i157.if.end49_crit_edge:            ; preds = %land.lhs.true.i157
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49

if.then.i158:                                     ; preds = %land.lhs.true.i157
  call void @__sanitizer_cov_trace_pc() #11
  %99 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %78, align 4
  tail call void %98(ptr noundef %100, i32 noundef %sub.i135, ptr noundef %70, ptr noundef %cmdq_handle) #9
  br label %if.end49

if.end49:                                         ; preds = %if.then.i158, %land.lhs.true.i157.if.end49_crit_edge, %if.then48.if.end49_crit_edge, %mtk_drm_ddp_comp_for_plane.exit152.if.end49_crit_edge, %mtk_drm_ddp_comp_for_plane.exit152.thread
  br i1 %tobool50.not, label %if.then51, label %if.end49.cleanup55_crit_edge

if.end49.cleanup55_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup55

if.then51:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  %101 = ptrtoint ptr %async_config to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 0, ptr %async_config, align 2
  br label %cleanup55

cleanup55:                                        ; preds = %if.then51, %if.end49.cleanup55_crit_edge, %for.body35.cleanup55_crit_edge
  %inc60 = add nuw i32 %i.1182, 1
  %102 = ptrtoint ptr %layer_nr33 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %layer_nr33, align 4
  %cmp34 = icmp ult i32 %inc60, %103
  br i1 %cmp34, label %cleanup55.for.body35_crit_edge, label %cleanup55.for.end61_crit_edge

cleanup55.for.end61_crit_edge:                    ; preds = %cleanup55
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end61

cleanup55.for.body35_crit_edge:                   ; preds = %cleanup55
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body35

for.end61:                                        ; preds = %cleanup55.for.end61_crit_edge, %for.cond32.preheader.for.end61_crit_edge
  %tobool62.not = icmp eq ptr %cmdq_handle, null
  br i1 %tobool62.not, label %if.then63, label %for.end61.if.end66_crit_edge

for.end61.if.end66_crit_edge:                     ; preds = %for.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

if.then63:                                        ; preds = %for.end61
  call void @__sanitizer_cov_trace_pc() #11
  %104 = ptrtoint ptr %pending_async_planes to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 0, ptr %pending_async_planes, align 1
  br label %if.end66

if.end66:                                         ; preds = %if.then63, %for.end61.if.end66_crit_edge, %if.end29.if.end66_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_mutex_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mbox_flush(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cmdq_pkt_clear_event(ptr noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cmdq_pkt_wfe(ptr noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cmdq_pkt_finalize(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mbox_send_message(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mbox_client_txdone(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_plane_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_init_with_planes(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_cleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_drm_crtc_reset(ptr noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__drm_atomic_helper_crtc_destroy_state(ptr noundef nonnull %1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state1, align 4
  tail call void @kfree(ptr noundef %3) #9
  %4 = ptrtoint ptr %state1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %state1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 300) #13
  %tobool6.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool6.not, label %if.end.if.end8_crit_edge, label %if.then7

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__drm_atomic_helper_crtc_reset(ptr noundef %crtc, ptr noundef nonnull %call7.i.i) #9
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end.if.end8_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_drm_crtc_destroy(ptr noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.mtk_drm_crtc, ptr %crtc, i32 0, i32 13
  %0 = ptrtoint ptr %mutex to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mutex, align 4
  tail call void @mtk_mutex_put(ptr noundef %1) #9
  %cmdq_handle = getelementptr inbounds %struct.mtk_drm_crtc, ptr %crtc, i32 0, i32 9
  %cl.i = getelementptr inbounds %struct.mtk_drm_crtc, ptr %crtc, i32 0, i32 9, i32 6
  %2 = ptrtoint ptr %cl.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cl.i, align 4
  %chan.i = getelementptr inbounds %struct.cmdq_client, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chan.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 8
  %pa_base.i = getelementptr inbounds %struct.mtk_drm_crtc, ptr %crtc, i32 0, i32 9, i32 1
  %10 = ptrtoint ptr %pa_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pa_base.i, align 4
  %buf_size.i = getelementptr inbounds %struct.mtk_drm_crtc, ptr %crtc, i32 0, i32 9, i32 3
  %12 = ptrtoint ptr %buf_size.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %buf_size.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %9, i32 noundef %11, i32 noundef %13, i32 noundef 1, i32 noundef 0) #9
  %14 = ptrtoint ptr %cmdq_handle to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cmdq_handle, align 4
  tail call void @kfree(ptr noundef %15) #9
  tail call void @kfree(ptr noundef %cmdq_handle) #9
  %chan = getelementptr inbounds %struct.mtk_drm_crtc, ptr %crtc, i32 0, i32 8, i32 1
  %16 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chan, align 4
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mbox_free_channel(ptr noundef nonnull %17) #9
  %18 = ptrtoint ptr %chan to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %chan, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @drm_crtc_cleanup(ptr noundef %crtc) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_set_config(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_page_flip(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mtk_drm_crtc_duplicate_state(ptr noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 300) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @__drm_atomic_helper_crtc_duplicate_state(ptr noundef %crtc, ptr noundef nonnull %call7.i.i) #9
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %call7.i.i, align 8
  %cmp.not = icmp eq ptr %2, %crtc
  br i1 %cmp.not, label %if.end.if.end17_crit_edge, label %do.end, !prof !80

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 193, i32 noundef 9, ptr noundef null) #9
  br label %if.end17

if.end17:                                         ; preds = %do.end, %if.end.if.end17_crit_edge
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %crtc, ptr %call7.i.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_drm_crtc_destroy_state(ptr nocapture noundef readnone %crtc, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__drm_atomic_helper_crtc_destroy_state(ptr noundef %state) #9
  tail call void @kfree(ptr noundef %state) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_drm_crtc_enable_vblank(ptr noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ddp_comp = getelementptr inbounds %struct.mtk_drm_crtc, ptr %crtc, i32 0, i32 15
  %0 = ptrtoint ptr %ddp_comp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ddp_comp, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %funcs.i = getelementptr inbounds %struct.mtk_ddp_comp, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.mtk_ddp_comp_enable_vblank.exit_crit_edge, label %land.lhs.true.i

entry.mtk_ddp_comp_enable_vblank.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_ddp_comp_enable_vblank.exit

land.lhs.true.i:                                  ; preds = %entry
  %enable_vblank.i = getelementptr inbounds %struct.mtk_ddp_comp_funcs, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %enable_vblank.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %enable_vblank.i, align 4
  %tobool2.not.i = icmp eq ptr %7, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.mtk_ddp_comp_enable_vblank.exit_crit_edge, label %if.then.i

land.lhs.true.i.mtk_ddp_comp_enable_vblank.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_ddp_comp_enable_vblank.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  tail call void %7(ptr noundef %9, ptr noundef nonnull @mtk_crtc_ddp_irq, ptr noundef %crtc) #9
  br label %mtk_ddp_comp_enable_vblank.exit

mtk_ddp_comp_enable_vblank.exit:                  ; preds = %if.then.i, %land.lhs.true.i.mtk_ddp_comp_enable_vblank.exit_crit_edge, %entry.mtk_ddp_comp_enable_vblank.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_drm_crtc_disable_vblank(ptr nocapture noundef readonly %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ddp_comp = getelementptr inbounds %struct.mtk_drm_crtc, ptr %crtc, i32 0, i32 15
  %0 = ptrtoint ptr %ddp_comp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ddp_comp, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %funcs.i = getelementptr inbounds %struct.mtk_ddp_comp, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.mtk_ddp_comp_disable_vblank.exit_crit_edge, label %land.lhs.true.i

entry.mtk_ddp_comp_disable_vblank.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_ddp_comp_disable_vblank.exit

land.lhs.true.i:                                  ; preds = %entry
  %disable_vblank.i = getelementptr inbounds %struct.mtk_ddp_comp_funcs, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %disable_vblank.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %disable_vblank.i, align 4
  %tobool2.not.i = icmp eq ptr %7, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.mtk_ddp_comp_disable_vblank.exit_crit_edge, label %if.then.i

land.lhs.true.i.mtk_ddp_comp_disable_vblank.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_ddp_comp_disable_vblank.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  tail call void %7(ptr noundef %9) #9
  br label %mtk_ddp_comp_disable_vblank.exit

mtk_ddp_comp_disable_vblank.exit:                 ; preds = %if.then.i, %land.lhs.true.i.mtk_ddp_comp_disable_vblank.exit_crit_edge, %entry.mtk_ddp_comp_disable_vblank.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_crtc_destroy_state(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_crtc_reset(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_mutex_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_crtc_duplicate_state(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_crtc_ddp_irq(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %data1 = getelementptr inbounds %struct.mtk_drm_private, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data1, align 4
  %shadow_register = getelementptr inbounds %struct.mtk_mmsys_driver_data, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %shadow_register to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %shadow_register, align 4, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %chan = getelementptr inbounds %struct.mtk_drm_crtc, ptr %data, i32 0, i32 8, i32 1
  %8 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chan, align 4
  %tobool2.not = icmp eq ptr %9, null
  br i1 %tobool2.not, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @mtk_crtc_ddp_config(ptr noundef %data, ptr noundef null)
  br label %if.end8

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %cmdq_vblank_cnt = getelementptr inbounds %struct.mtk_drm_crtc, ptr %data, i32 0, i32 11
  %10 = ptrtoint ptr %cmdq_vblank_cnt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cmdq_vblank_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.not = icmp eq i32 %11, 0
  br i1 %cmp.not, label %if.else.if.end8_crit_edge, label %land.lhs.true3

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

land.lhs.true3:                                   ; preds = %if.else
  %dec = add i32 %11, -1
  %12 = ptrtoint ptr %cmdq_vblank_cnt to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %dec, ptr %cmdq_vblank_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp5 = icmp eq i32 %dec, 0
  br i1 %cmp5, label %if.then6, label %land.lhs.true3.if.end8_crit_edge

land.lhs.true3.if.end8_crit_edge:                 ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.then6:                                         ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  %index.i = getelementptr inbounds %struct.drm_crtc, ptr %data, i32 0, i32 8
  %13 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %index.i, align 4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.19, i32 noundef %14) #9
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %land.lhs.true3.if.end8_crit_edge, %if.else.if.end8_crit_edge, %if.then
  %call.i = tail call zeroext i1 @drm_crtc_handle_vblank(ptr noundef %data) #9
  %config_updating.i = getelementptr inbounds %struct.mtk_drm_crtc, ptr %data, i32 0, i32 17
  %15 = ptrtoint ptr %config_updating.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %config_updating.i, align 4, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i = icmp eq i8 %16, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.end8.mtk_drm_finish_page_flip.exit_crit_edge

if.end8.mtk_drm_finish_page_flip.exit_crit_edge:  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_drm_finish_page_flip.exit

land.lhs.true.i:                                  ; preds = %if.end8
  %pending_needs_vblank.i = getelementptr inbounds %struct.mtk_drm_crtc, ptr %data, i32 0, i32 2
  %17 = ptrtoint ptr %pending_needs_vblank.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %pending_needs_vblank.i, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool1.not.i = icmp eq i8 %18, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.mtk_drm_finish_page_flip.exit_crit_edge, label %if.then.i

land.lhs.true.i.mtk_drm_finish_page_flip.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_drm_finish_page_flip.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data, align 8
  %event_lock.i.i = getelementptr inbounds %struct.drm_device, ptr %20, i32 0, i32 28
  %call2.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock.i.i) #9
  %event.i.i = getelementptr inbounds %struct.mtk_drm_crtc, ptr %data, i32 0, i32 3
  %21 = ptrtoint ptr %event.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %event.i.i, align 4
  tail call void @drm_crtc_send_vblank_event(ptr noundef %data, ptr noundef %22) #9
  tail call void @drm_crtc_vblank_put(ptr noundef %data) #9
  %23 = ptrtoint ptr %event.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %event.i.i, align 4
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data, align 8
  %event_lock7.i.i = getelementptr inbounds %struct.drm_device, ptr %25, i32 0, i32 28
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock7.i.i, i32 noundef %call2.i.i) #9
  %26 = ptrtoint ptr %pending_needs_vblank.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %pending_needs_vblank.i, align 1
  br label %mtk_drm_finish_page_flip.exit

mtk_drm_finish_page_flip.exit:                    ; preds = %if.then.i, %land.lhs.true.i.mtk_drm_finish_page_flip.exit_crit_edge, %if.end8.mtk_drm_finish_page_flip.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_crtc_handle_vblank(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_send_vblank_event(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @mtk_drm_crtc_mode_fixup(ptr nocapture noundef readnone %crtc, ptr nocapture noundef readnone %mode, ptr nocapture noundef readnone %adjusted_mode) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_drm_crtc_mode_set_nofb(ptr noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state1, align 4
  %mode = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 12
  %hdisplay = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 12, i32 1
  %2 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %hdisplay, align 4
  %conv = zext i16 %3 to i32
  %pending_width = getelementptr inbounds %struct.mtk_crtc_state, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %pending_width to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %pending_width, align 4
  %vdisplay = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 12, i32 6
  %5 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %vdisplay, align 2
  %conv3 = zext i16 %6 to i32
  %pending_height = getelementptr inbounds %struct.mtk_crtc_state, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %pending_height to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv3, ptr %pending_height, align 4
  %call5 = tail call i32 @drm_mode_vrefresh(ptr noundef %mode) #9
  %pending_vrefresh = getelementptr inbounds %struct.mtk_crtc_state, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %pending_vrefresh to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call5, ptr %pending_vrefresh, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !81
  tail call void @arm_heavy_mb() #9
  %pending_config = getelementptr inbounds %struct.mtk_crtc_state, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %pending_config to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %pending_config, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_drm_crtc_atomic_begin(ptr noundef %crtc, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
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
  %event = getelementptr inbounds %struct.mtk_drm_crtc, ptr %crtc, i32 0, i32 3
  %6 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %event, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %event3 = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 18
  %8 = ptrtoint ptr %event3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %event3, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.20) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %event6 = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 18
  %10 = ptrtoint ptr %event6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %event6, align 4
  %tobool7.not = icmp eq ptr %11, null
  br i1 %tobool7.not, label %if.end.if.end39_crit_edge, label %if.then8

if.end.if.end39_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.then8:                                         ; preds = %if.end
  %12 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index.i.i, align 4
  %pipe = getelementptr inbounds %struct.drm_pending_vblank_event, ptr %11, i32 0, i32 1
  %14 = ptrtoint ptr %pipe to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %pipe, align 4
  %call12 = tail call i32 @drm_crtc_vblank_get(ptr noundef %crtc) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp.not = icmp eq i32 %call12, 0
  br i1 %cmp.not, label %if.then8.if.end27_crit_edge, label %do.end, !prof !80

if.then8.if.end27_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

do.end:                                           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 726, i32 noundef 9, ptr noundef null) #9
  br label %if.end27

if.end27:                                         ; preds = %do.end, %if.then8.if.end27_crit_edge
  %15 = ptrtoint ptr %event6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %event6, align 4
  %17 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %event, align 4
  store ptr null, ptr %event6, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.end27, %if.end.if.end39_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_drm_crtc_atomic_flush(ptr noundef %crtc, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state1, align 4
  %color_mgmt_changed = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %color_mgmt_changed to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %color_mgmt_changed, align 2
  %3 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %bf.cast.not = icmp eq i8 %3, 0
  br i1 %bf.cast.not, label %entry.if.end_crit_edge, label %for.cond.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.cond.preheader:                               ; preds = %entry
  %ddp_comp_nr = getelementptr inbounds %struct.mtk_drm_crtc, ptr %crtc, i32 0, i32 14
  %4 = ptrtoint ptr %ddp_comp_nr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ddp_comp_nr, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp22.not = icmp eq i32 %5, 0
  br i1 %cmp22.not, label %for.cond.preheader.if.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %ddp_comp = getelementptr inbounds %struct.mtk_drm_crtc, ptr %crtc, i32 0, i32 15
  br label %for.body

for.body:                                         ; preds = %mtk_ddp_ctm_set.exit.for.body_crit_edge, %for.body.lr.ph
  %i.023 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %mtk_ddp_ctm_set.exit.for.body_crit_edge ]
  %6 = ptrtoint ptr %ddp_comp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ddp_comp, align 4
  %arrayidx = getelementptr ptr, ptr %7, i32 %i.023
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %10 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %state1, align 4
  %funcs.i = getelementptr inbounds %struct.mtk_ddp_comp, ptr %9, i32 0, i32 4
  %12 = ptrtoint ptr %funcs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %funcs.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %for.body.mtk_ddp_gamma_set.exit_crit_edge, label %land.lhs.true.i

for.body.mtk_ddp_gamma_set.exit_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_ddp_gamma_set.exit

land.lhs.true.i:                                  ; preds = %for.body
  %gamma_set.i = getelementptr inbounds %struct.mtk_ddp_comp_funcs, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %gamma_set.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %gamma_set.i, align 4
  %tobool2.not.i = icmp eq ptr %15, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.mtk_ddp_gamma_set.exit_crit_edge, label %if.then.i

land.lhs.true.i.mtk_ddp_gamma_set.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_ddp_gamma_set.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %9, align 4
  tail call void %15(ptr noundef %17, ptr noundef %11) #9
  br label %mtk_ddp_gamma_set.exit

mtk_ddp_gamma_set.exit:                           ; preds = %if.then.i, %land.lhs.true.i.mtk_ddp_gamma_set.exit_crit_edge, %for.body.mtk_ddp_gamma_set.exit_crit_edge
  %18 = ptrtoint ptr %ddp_comp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ddp_comp, align 4
  %arrayidx4 = getelementptr ptr, ptr %19, i32 %i.023
  %20 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx4, align 4
  %22 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %state1, align 4
  %funcs.i17 = getelementptr inbounds %struct.mtk_ddp_comp, ptr %21, i32 0, i32 4
  %24 = ptrtoint ptr %funcs.i17 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %funcs.i17, align 4
  %tobool.not.i18 = icmp eq ptr %25, null
  br i1 %tobool.not.i18, label %mtk_ddp_gamma_set.exit.mtk_ddp_ctm_set.exit_crit_edge, label %land.lhs.true.i20

mtk_ddp_gamma_set.exit.mtk_ddp_ctm_set.exit_crit_edge: ; preds = %mtk_ddp_gamma_set.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_ddp_ctm_set.exit

land.lhs.true.i20:                                ; preds = %mtk_ddp_gamma_set.exit
  %ctm_set.i = getelementptr inbounds %struct.mtk_ddp_comp_funcs, ptr %25, i32 0, i32 14
  %26 = ptrtoint ptr %ctm_set.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ctm_set.i, align 4
  %tobool2.not.i19 = icmp eq ptr %27, null
  br i1 %tobool2.not.i19, label %land.lhs.true.i20.mtk_ddp_ctm_set.exit_crit_edge, label %if.then.i21

land.lhs.true.i20.mtk_ddp_ctm_set.exit_crit_edge: ; preds = %land.lhs.true.i20
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_ddp_ctm_set.exit

if.then.i21:                                      ; preds = %land.lhs.true.i20
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %21, align 4
  tail call void %27(ptr noundef %29, ptr noundef %23) #9
  br label %mtk_ddp_ctm_set.exit

mtk_ddp_ctm_set.exit:                             ; preds = %if.then.i21, %land.lhs.true.i20.mtk_ddp_ctm_set.exit_crit_edge, %mtk_ddp_gamma_set.exit.mtk_ddp_ctm_set.exit_crit_edge
  %inc = add nuw i32 %i.023, 1
  %30 = ptrtoint ptr %ddp_comp_nr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ddp_comp_nr, align 8
  %cmp = icmp ult i32 %inc, %31
  br i1 %cmp, label %mtk_ddp_ctm_set.exit.for.body_crit_edge, label %mtk_ddp_ctm_set.exit.if.end_crit_edge

mtk_ddp_ctm_set.exit.if.end_crit_edge:            ; preds = %mtk_ddp_ctm_set.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

mtk_ddp_ctm_set.exit.for.body_crit_edge:          ; preds = %mtk_ddp_ctm_set.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end:                                           ; preds = %mtk_ddp_ctm_set.exit.if.end_crit_edge, %for.cond.preheader.if.end_crit_edge, %entry.if.end_crit_edge
  %event = getelementptr inbounds %struct.mtk_drm_crtc, ptr %crtc, i32 0, i32 3
  %32 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %event, align 4
  %tobool = icmp ne ptr %33, null
  tail call fastcc void @mtk_drm_crtc_update_config(ptr noundef %crtc, i1 noundef zeroext %tobool)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_drm_crtc_atomic_enable(ptr noundef %crtc, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  %conn_iter.i = alloca %struct.drm_connector_list_iter, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ddp_comp = getelementptr inbounds %struct.mtk_drm_crtc, ptr %crtc, i32 0, i32 15
  %0 = ptrtoint ptr %ddp_comp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ddp_comp, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %base = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 5
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.mtk_drm_crtc_atomic_enable, i32 noundef %5) #9
  %larb_dev = getelementptr inbounds %struct.mtk_ddp_comp, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %larb_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %larb_dev, align 4
  %call1 = tail call i32 @mtk_smi_larb_get(ptr noundef %7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.22, i32 noundef %call1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %conn_iter.i) #9
  %8 = ptrtoint ptr %conn_iter.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %conn_iter.i, align 4, !annotation !82
  %9 = getelementptr inbounds %struct.drm_connector_list_iter, ptr %conn_iter.i, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 -1 to ptr), ptr %9, align 4, !annotation !82
  %state.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %11 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %state.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end23.i, !prof !76

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 330, i32 noundef 9, ptr noundef null) #9
  br label %if.then4

if.end23.i:                                       ; preds = %if.end
  %adjusted_mode.i = getelementptr inbounds %struct.drm_crtc_state, ptr %12, i32 0, i32 7
  %hdisplay.i = getelementptr inbounds %struct.drm_crtc_state, ptr %12, i32 0, i32 7, i32 1
  %13 = ptrtoint ptr %hdisplay.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %hdisplay.i, align 4
  %conv.i = zext i16 %14 to i32
  %vdisplay.i = getelementptr inbounds %struct.drm_crtc_state, ptr %12, i32 0, i32 7, i32 6
  %15 = ptrtoint ptr %vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %vdisplay.i, align 2
  %conv27.i = zext i16 %16 to i32
  %call.i = tail call i32 @drm_mode_vrefresh(ptr noundef %adjusted_mode.i) #9
  %17 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %crtc, align 8
  %encoder_list.i = getelementptr inbounds %struct.drm_device, ptr %18, i32 0, i32 30, i32 16
  %19 = ptrtoint ptr %encoder_list.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn249.i = load ptr, ptr %encoder_list.i, align 4
  %cmp.not252.i = icmp eq ptr %.pn249.i, %encoder_list.i
  br i1 %cmp.not252.i, label %if.end23.i.for.end.i_crit_edge, label %if.end23.i.for.body.i_crit_edge

if.end23.i.for.body.i_crit_edge:                  ; preds = %if.end23.i
  br label %for.body.i

if.end23.i.for.end.i_crit_edge:                   ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end23.i.for.body.i_crit_edge
  %20 = phi ptr [ %29, %for.inc.i.for.body.i_crit_edge ], [ %18, %if.end23.i.for.body.i_crit_edge ]
  %.pn254.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn249.i, %if.end23.i.for.body.i_crit_edge ]
  %bpc.0253.i = phi i32 [ %bpc.3.i, %for.inc.i.for.body.i_crit_edge ], [ 10, %if.end23.i.for.body.i_crit_edge ]
  %encoder.0255.i = getelementptr i8, ptr %.pn254.i, i32 -4
  %crtc37.i = getelementptr i8, ptr %.pn254.i, i32 48
  %21 = ptrtoint ptr %crtc37.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %crtc37.i, align 4
  %cmp38.not.i = icmp eq ptr %22, %crtc
  br i1 %cmp38.not.i, label %if.end41.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end41.i:                                       ; preds = %for.body.i
  call void @drm_connector_list_iter_begin(ptr noundef %20, ptr noundef nonnull %conn_iter.i) #9
  br label %while.cond.outer.i

while.cond.outer.i:                               ; preds = %if.end49.i, %if.end41.i
  %bpc.1.ph.i = phi i32 [ %bpc.2.i, %if.end49.i ], [ %bpc.0253.i, %if.end41.i ]
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %while.cond.outer.i
  %call43.i = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %conn_iter.i) #9
  %tobool44.not.i = icmp eq ptr %call43.i, null
  br i1 %tobool44.not.i, label %while.end.i, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  %encoder45.i = getelementptr inbounds %struct.drm_connector, ptr %call43.i, i32 0, i32 41
  %23 = ptrtoint ptr %encoder45.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %encoder45.i, align 4
  %cmp46.not.i = icmp eq ptr %24, %encoder.0255.i
  br i1 %cmp46.not.i, label %if.end49.i, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i

if.end49.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %bpc50.i = getelementptr inbounds %struct.drm_connector, ptr %call43.i, i32 0, i32 20, i32 2
  %25 = ptrtoint ptr %bpc50.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bpc50.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp51.not.i = icmp ne i32 %26, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %bpc.1.ph.i, i32 %26)
  %cmp55.i = icmp ugt i32 %bpc.1.ph.i, %26
  %or.cond.i = select i1 %cmp51.not.i, i1 %cmp55.i, i1 false
  %bpc.2.i = select i1 %or.cond.i, i32 %26, i32 %bpc.1.ph.i
  br label %while.cond.outer.i

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @drm_connector_list_iter_end(ptr noundef nonnull %conn_iter.i) #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %while.end.i, %for.body.i.for.inc.i_crit_edge
  %bpc.3.i = phi i32 [ %bpc.0253.i, %for.body.i.for.inc.i_crit_edge ], [ %bpc.1.ph.i, %while.end.i ]
  %27 = ptrtoint ptr %.pn254.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn.i = load ptr, ptr %.pn254.i, align 4
  %28 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %crtc, align 8
  %encoder_list33.i = getelementptr inbounds %struct.drm_device, ptr %29, i32 0, i32 30, i32 16
  %cmp.not.i = icmp eq ptr %.pn.i, %encoder_list33.i
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end23.i.for.end.i_crit_edge
  %bpc.0.lcssa.i = phi i32 [ 10, %if.end23.i.for.end.i_crit_edge ], [ %bpc.3.i, %for.inc.i.for.end.i_crit_edge ]
  %.lcssa248.i = phi ptr [ %18, %if.end23.i.for.end.i_crit_edge ], [ %29, %for.inc.i.for.end.i_crit_edge ]
  %dev67.i = getelementptr inbounds %struct.drm_device, ptr %.lcssa248.i, i32 0, i32 2
  %30 = ptrtoint ptr %dev67.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev67.i, align 4
  %call.i.i = call i32 @__pm_runtime_resume(ptr noundef %31, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end72.i

if.then.i.i:                                      ; preds = %for.end.i
  %usage_count.i.i.i = getelementptr inbounds %struct.device, ptr %31, i32 0, i32 12, i32 13
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !83
  call void @llvm.prefetch.p0(ptr %usage_count.i.i.i, i32 1, i32 3, i32 1) #9
  %32 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i.i, ptr %usage_count.i.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i.i) #9, !srcloc !84
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %if.then.i.i.if.then71.i_crit_edge, label %do.end11.i.i.i.i.i.i

if.then.i.i.if.then71.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then71.i

do.end11.i.i.i.i.i.i:                             ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !85
  br label %if.then71.i

if.then71.i:                                      ; preds = %do.end11.i.i.i.i.i.i, %if.then.i.i.if.then71.i_crit_edge
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.23, i32 noundef %call.i.i) #9
  br label %if.then4

if.end72.i:                                       ; preds = %for.end.i
  %mutex.i = getelementptr inbounds %struct.mtk_drm_crtc, ptr %crtc, i32 0, i32 13
  %33 = ptrtoint ptr %mutex.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mutex.i, align 4
  %call73.i = call i32 @mtk_mutex_prepare(ptr noundef %34) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73.i)
  %cmp74.i = icmp slt i32 %call73.i, 0
  br i1 %cmp74.i, label %if.then76.i, label %if.end77.i

if.then76.i:                                      ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.24, i32 noundef %call73.i) #9
  br label %err_pm_runtime_put.i

if.end77.i:                                       ; preds = %if.end72.i
  %ddp_comp_nr.i.i = getelementptr inbounds %struct.mtk_drm_crtc, ptr %crtc, i32 0, i32 14
  %35 = ptrtoint ptr %ddp_comp_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ddp_comp_nr.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp23.not.i.i = icmp eq i32 %36, 0
  br i1 %cmp23.not.i.i, label %if.end77.i.for.body86.lr.ph.i_crit_edge, label %if.end77.i.for.body.i.i_crit_edge

if.end77.i.for.body.i.i_crit_edge:                ; preds = %if.end77.i
  br label %for.body.i.i

if.end77.i.for.body86.lr.ph.i_crit_edge:          ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body86.lr.ph.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end77.i.for.body.i.i_crit_edge
  %i.024.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.end77.i.for.body.i.i_crit_edge ]
  %37 = ptrtoint ptr %ddp_comp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ddp_comp, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %38, i32 %i.024.i.i
  %39 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx.i.i, align 4
  %funcs.i.i.i = getelementptr inbounds %struct.mtk_ddp_comp, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %funcs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %funcs.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %42, null
  br i1 %tobool.not.i.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %tobool2.not.i.i.i = icmp eq ptr %44, null
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i.i.i.for.inc.i.i_crit_edge, label %mtk_ddp_comp_clk_enable.exit.i.i

land.lhs.true.i.i.i.for.inc.i.i_crit_edge:        ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

mtk_ddp_comp_clk_enable.exit.i.i:                 ; preds = %land.lhs.true.i.i.i
  %45 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %40, align 4
  %call.i.i.i = call i32 %44(ptr noundef %46) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %mtk_ddp_comp_clk_enable.exit.i.i.for.inc.i.i_crit_edge, label %if.then.i200.i

mtk_ddp_comp_clk_enable.exit.i.i.for.inc.i.i_crit_edge: ; preds = %mtk_ddp_comp_clk_enable.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.then.i200.i:                                   ; preds = %mtk_ddp_comp_clk_enable.exit.i.i
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.26, i32 noundef %i.024.i.i, i32 noundef %call.i.i.i) #9
  %dec26.i.i = add i32 %i.024.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec26.i.i)
  %cmp127.i.i = icmp sgt i32 %dec26.i.i, -1
  br i1 %cmp127.i.i, label %if.then.i200.i.while.body.i.i_crit_edge, label %if.then.i200.i.mtk_crtc_ddp_clk_enable.exit.i_crit_edge

if.then.i200.i.mtk_crtc_ddp_clk_enable.exit.i_crit_edge: ; preds = %if.then.i200.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_crtc_ddp_clk_enable.exit.i

if.then.i200.i.while.body.i.i_crit_edge:          ; preds = %if.then.i200.i
  br label %while.body.i.i

for.inc.i.i:                                      ; preds = %mtk_ddp_comp_clk_enable.exit.i.i.for.inc.i.i_crit_edge, %land.lhs.true.i.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw i32 %i.024.i.i, 1
  %47 = ptrtoint ptr %ddp_comp_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ddp_comp_nr.i.i, align 8
  %cmp.i201.i = icmp ult i32 %inc.i.i, %48
  br i1 %cmp.i201.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.for.cond83.preheader.i_crit_edge

for.inc.i.i.for.cond83.preheader.i_crit_edge:     ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond83.preheader.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

while.body.i.i:                                   ; preds = %mtk_ddp_comp_clk_disable.exit.i.i.while.body.i.i_crit_edge, %if.then.i200.i.while.body.i.i_crit_edge
  %dec28.i.i = phi i32 [ %dec.i.i, %mtk_ddp_comp_clk_disable.exit.i.i.while.body.i.i_crit_edge ], [ %dec26.i.i, %if.then.i200.i.while.body.i.i_crit_edge ]
  %49 = ptrtoint ptr %ddp_comp to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ddp_comp, align 4
  %arrayidx3.i.i = getelementptr ptr, ptr %50, i32 %dec28.i.i
  %51 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx3.i.i, align 4
  %funcs.i14.i.i = getelementptr inbounds %struct.mtk_ddp_comp, ptr %52, i32 0, i32 4
  %53 = ptrtoint ptr %funcs.i14.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %funcs.i14.i.i, align 4
  %tobool.not.i15.i.i = icmp eq ptr %54, null
  br i1 %tobool.not.i15.i.i, label %while.body.i.i.mtk_ddp_comp_clk_disable.exit.i.i_crit_edge, label %land.lhs.true.i17.i.i

while.body.i.i.mtk_ddp_comp_clk_disable.exit.i.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_ddp_comp_clk_disable.exit.i.i

land.lhs.true.i17.i.i:                            ; preds = %while.body.i.i
  %clk_disable.i.i.i = getelementptr inbounds %struct.mtk_ddp_comp_funcs, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %clk_disable.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %clk_disable.i.i.i, align 4
  %tobool2.not.i16.i.i = icmp eq ptr %56, null
  br i1 %tobool2.not.i16.i.i, label %land.lhs.true.i17.i.i.mtk_ddp_comp_clk_disable.exit.i.i_crit_edge, label %if.then.i18.i.i

land.lhs.true.i17.i.i.mtk_ddp_comp_clk_disable.exit.i.i_crit_edge: ; preds = %land.lhs.true.i17.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_ddp_comp_clk_disable.exit.i.i

if.then.i18.i.i:                                  ; preds = %land.lhs.true.i17.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %52, align 4
  call void %56(ptr noundef %58) #9
  br label %mtk_ddp_comp_clk_disable.exit.i.i

mtk_ddp_comp_clk_disable.exit.i.i:                ; preds = %if.then.i18.i.i, %land.lhs.true.i17.i.i.mtk_ddp_comp_clk_disable.exit.i.i_crit_edge, %while.body.i.i.mtk_ddp_comp_clk_disable.exit.i.i_crit_edge
  %dec.i.i = add i32 %dec28.i.i, -1
  %cmp1.i.i = icmp sgt i32 %dec.i.i, -1
  br i1 %cmp1.i.i, label %mtk_ddp_comp_clk_disable.exit.i.i.while.body.i.i_crit_edge, label %mtk_ddp_comp_clk_disable.exit.i.i.mtk_crtc_ddp_clk_enable.exit.i_crit_edge

mtk_ddp_comp_clk_disable.exit.i.i.mtk_crtc_ddp_clk_enable.exit.i_crit_edge: ; preds = %mtk_ddp_comp_clk_disable.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_crtc_ddp_clk_enable.exit.i

mtk_ddp_comp_clk_disable.exit.i.i.while.body.i.i_crit_edge: ; preds = %mtk_ddp_comp_clk_disable.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i.i

mtk_crtc_ddp_clk_enable.exit.i:                   ; preds = %mtk_ddp_comp_clk_disable.exit.i.i.mtk_crtc_ddp_clk_enable.exit.i_crit_edge, %if.then.i200.i.mtk_crtc_ddp_clk_enable.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp79.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp79.i, label %if.then81.i, label %for.cond83.preheaderthread-pre-split.i

for.cond83.preheaderthread-pre-split.i:           ; preds = %mtk_crtc_ddp_clk_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %59 = ptrtoint ptr %ddp_comp_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %.pr303.i = load i32, ptr %ddp_comp_nr.i.i, align 8
  br label %for.cond83.preheader.i

for.cond83.preheader.i:                           ; preds = %for.cond83.preheaderthread-pre-split.i, %for.inc.i.i.for.cond83.preheader.i_crit_edge
  %60 = phi i32 [ %.pr303.i, %for.cond83.preheaderthread-pre-split.i ], [ %48, %for.inc.i.i.for.cond83.preheader.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %60)
  %cmp84258.not.i = icmp eq i32 %60, 1
  br i1 %cmp84258.not.i, label %for.cond83.preheader.i.for.end95.i_crit_edge, label %for.cond83.preheader.i.for.body86.lr.ph.i_crit_edge

for.cond83.preheader.i.for.body86.lr.ph.i_crit_edge: ; preds = %for.cond83.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body86.lr.ph.i

for.cond83.preheader.i.for.end95.i_crit_edge:     ; preds = %for.cond83.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end95.i

for.body86.lr.ph.i:                               ; preds = %for.cond83.preheader.i.for.body86.lr.ph.i_crit_edge, %if.end77.i.for.body86.lr.ph.i_crit_edge
  %mmsys_dev.i = getelementptr inbounds %struct.mtk_drm_crtc, ptr %crtc, i32 0, i32 12
  br label %for.body86.i

if.then81.i:                                      ; preds = %mtk_crtc_ddp_clk_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.25, i32 noundef %call.i.i.i) #9
  %61 = ptrtoint ptr %mutex.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %mutex.i, align 4
  call void @mtk_mutex_unprepare(ptr noundef %62) #9
  br label %err_pm_runtime_put.i

for.body86.i:                                     ; preds = %for.body86.i.for.body86.i_crit_edge, %for.body86.lr.ph.i
  %i.0259.i = phi i32 [ 0, %for.body86.lr.ph.i ], [ %add.i, %for.body86.i.for.body86.i_crit_edge ]
  %63 = ptrtoint ptr %mmsys_dev.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mmsys_dev.i, align 8
  %65 = ptrtoint ptr %ddp_comp to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ddp_comp, align 4
  %arrayidx.i = getelementptr ptr, ptr %66, i32 %i.0259.i
  %67 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx.i, align 4
  %id.i = getelementptr inbounds %struct.mtk_ddp_comp, ptr %68, i32 0, i32 3
  %69 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %id.i, align 4
  %add.i = add nuw i32 %i.0259.i, 1
  %arrayidx88.i = getelementptr ptr, ptr %66, i32 %add.i
  %71 = ptrtoint ptr %arrayidx88.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx88.i, align 4
  %id89.i = getelementptr inbounds %struct.mtk_ddp_comp, ptr %72, i32 0, i32 3
  %73 = ptrtoint ptr %id89.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %id89.i, align 4
  call void @mtk_mmsys_ddp_connect(ptr noundef %64, i32 noundef %70, i32 noundef %74) #9
  %75 = ptrtoint ptr %mutex.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %mutex.i, align 4
  %77 = ptrtoint ptr %ddp_comp to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ddp_comp, align 4
  %arrayidx92.i = getelementptr ptr, ptr %78, i32 %i.0259.i
  %79 = ptrtoint ptr %arrayidx92.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx92.i, align 4
  %id93.i = getelementptr inbounds %struct.mtk_ddp_comp, ptr %80, i32 0, i32 3
  %81 = ptrtoint ptr %id93.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %id93.i, align 4
  call void @mtk_mutex_add_comp(ptr noundef %76, i32 noundef %82) #9
  %83 = ptrtoint ptr %ddp_comp_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %ddp_comp_nr.i.i, align 8
  %sub.i = add i32 %84, -1
  %cmp84.i = icmp ult i32 %add.i, %sub.i
  br i1 %cmp84.i, label %for.body86.i.for.body86.i_crit_edge, label %for.body86.i.for.end95.i_crit_edge

for.body86.i.for.end95.i_crit_edge:               ; preds = %for.body86.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end95.i

for.body86.i.for.body86.i_crit_edge:              ; preds = %for.body86.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body86.i

for.end95.i:                                      ; preds = %for.body86.i.for.end95.i_crit_edge, %for.cond83.preheader.i.for.end95.i_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %for.cond83.preheader.i.for.end95.i_crit_edge ], [ %add.i, %for.body86.i.for.end95.i_crit_edge ]
  %85 = ptrtoint ptr %mutex.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %mutex.i, align 4
  %87 = ptrtoint ptr %ddp_comp to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %ddp_comp, align 4
  %arrayidx98.i = getelementptr ptr, ptr %88, i32 %i.0.lcssa.i
  %89 = ptrtoint ptr %arrayidx98.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %arrayidx98.i, align 4
  %id99.i = getelementptr inbounds %struct.mtk_ddp_comp, ptr %90, i32 0, i32 3
  %91 = ptrtoint ptr %id99.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %id99.i, align 4
  call void @mtk_mutex_add_comp(ptr noundef %86, i32 noundef %92) #9
  %93 = ptrtoint ptr %mutex.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %mutex.i, align 4
  call void @mtk_mutex_enable(ptr noundef %94) #9
  %95 = ptrtoint ptr %ddp_comp_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %ddp_comp_nr.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %cmp103261.not.i = icmp eq i32 %96, 0
  br i1 %cmp103261.not.i, label %for.end95.i.for.cond115.preheader.i_crit_edge, label %if.end111.peel.i

for.end95.i.for.cond115.preheader.i_crit_edge:    ; preds = %for.end95.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond115.preheader.i

if.end111.peel.i:                                 ; preds = %for.end95.i
  %97 = ptrtoint ptr %ddp_comp to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %ddp_comp, align 4
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %98, align 4
  %funcs.i205.peel.i = getelementptr inbounds %struct.mtk_ddp_comp, ptr %100, i32 0, i32 4
  %101 = ptrtoint ptr %funcs.i205.peel.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %funcs.i205.peel.i, align 4
  %tobool.not.i206.peel.i = icmp eq ptr %102, null
  br i1 %tobool.not.i206.peel.i, label %if.end111.peel.i.mtk_ddp_comp_start.exit.peel.i_crit_edge, label %land.lhs.true.i208.peel.i

if.end111.peel.i.mtk_ddp_comp_start.exit.peel.i_crit_edge: ; preds = %if.end111.peel.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_ddp_comp_start.exit.peel.i

land.lhs.true.i208.peel.i:                        ; preds = %if.end111.peel.i
  %config.i.peel.i = getelementptr inbounds %struct.mtk_ddp_comp_funcs, ptr %102, i32 0, i32 2
  %103 = ptrtoint ptr %config.i.peel.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %config.i.peel.i, align 4
  %tobool2.not.i207.peel.i = icmp eq ptr %104, null
  br i1 %tobool2.not.i207.peel.i, label %land.lhs.true.i208.peel.i.mtk_ddp_comp_config.exit.peel.i_crit_edge, label %if.then.i209.peel.i

land.lhs.true.i208.peel.i.mtk_ddp_comp_config.exit.peel.i_crit_edge: ; preds = %land.lhs.true.i208.peel.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_ddp_comp_config.exit.peel.i

if.then.i209.peel.i:                              ; preds = %land.lhs.true.i208.peel.i
  call void @__sanitizer_cov_trace_pc() #11
  %105 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %100, align 4
  call void %104(ptr noundef %106, i32 noundef %conv.i, i32 noundef %conv27.i, i32 noundef %call.i, i32 noundef %bpc.0.lcssa.i, ptr noundef null) #9
  br label %mtk_ddp_comp_config.exit.peel.i

mtk_ddp_comp_config.exit.peel.i:                  ; preds = %if.then.i209.peel.i, %land.lhs.true.i208.peel.i.mtk_ddp_comp_config.exit.peel.i_crit_edge
  %107 = ptrtoint ptr %funcs.i205.peel.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %.pr.peel.i = load ptr, ptr %funcs.i205.peel.i, align 4
  %tobool.not.i211.peel.i = icmp eq ptr %.pr.peel.i, null
  br i1 %tobool.not.i211.peel.i, label %mtk_ddp_comp_config.exit.peel.i.mtk_ddp_comp_start.exit.peel.i_crit_edge, label %land.lhs.true.i213.peel.i

mtk_ddp_comp_config.exit.peel.i.mtk_ddp_comp_start.exit.peel.i_crit_edge: ; preds = %mtk_ddp_comp_config.exit.peel.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_ddp_comp_start.exit.peel.i

land.lhs.true.i213.peel.i:                        ; preds = %mtk_ddp_comp_config.exit.peel.i
  %start.i.peel.i = getelementptr inbounds %struct.mtk_ddp_comp_funcs, ptr %.pr.peel.i, i32 0, i32 3
  %108 = ptrtoint ptr %start.i.peel.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %start.i.peel.i, align 4
  %tobool2.not.i212.peel.i = icmp eq ptr %109, null
  br i1 %tobool2.not.i212.peel.i, label %land.lhs.true.i213.peel.i.mtk_ddp_comp_start.exit.peel.i_crit_edge, label %if.then.i214.peel.i

land.lhs.true.i213.peel.i.mtk_ddp_comp_start.exit.peel.i_crit_edge: ; preds = %land.lhs.true.i213.peel.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_ddp_comp_start.exit.peel.i

if.then.i214.peel.i:                              ; preds = %land.lhs.true.i213.peel.i
  call void @__sanitizer_cov_trace_pc() #11
  %110 = ptrtoint ptr %100 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %100, align 4
  call void %109(ptr noundef %111) #9
  br label %mtk_ddp_comp_start.exit.peel.i

mtk_ddp_comp_start.exit.peel.i:                   ; preds = %if.then.i214.peel.i, %land.lhs.true.i213.peel.i.mtk_ddp_comp_start.exit.peel.i_crit_edge, %mtk_ddp_comp_config.exit.peel.i.mtk_ddp_comp_start.exit.peel.i_crit_edge, %if.end111.peel.i.mtk_ddp_comp_start.exit.peel.i_crit_edge
  %112 = ptrtoint ptr %ddp_comp_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %ddp_comp_nr.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %113)
  %cmp103.peel.i = icmp ugt i32 %113, 1
  br i1 %cmp103.peel.i, label %if.then110.peel276.i, label %mtk_ddp_comp_start.exit.peel.i.for.cond115.preheader.i_crit_edge

mtk_ddp_comp_start.exit.peel.i.for.cond115.preheader.i_crit_edge: ; preds = %mtk_ddp_comp_start.exit.peel.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond115.preheader.i

if.then110.peel276.i:                             ; preds = %mtk_ddp_comp_start.exit.peel.i
  %114 = ptrtoint ptr %ddp_comp to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %ddp_comp, align 4
  %arrayidx107.peel274.i = getelementptr ptr, ptr %115, i32 1
  %116 = ptrtoint ptr %arrayidx107.peel274.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %arrayidx107.peel274.i, align 4
  %funcs.i.peel277.i = getelementptr inbounds %struct.mtk_ddp_comp, ptr %117, i32 0, i32 4
  %118 = ptrtoint ptr %funcs.i.peel277.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %funcs.i.peel277.i, align 4
  %tobool.not.i203.peel278.i = icmp eq ptr %119, null
  br i1 %tobool.not.i203.peel278.i, label %if.then110.peel276.i.mtk_ddp_comp_start.exit.peel297.i_crit_edge, label %land.lhs.true.i.peel279.i

if.then110.peel276.i.mtk_ddp_comp_start.exit.peel297.i_crit_edge: ; preds = %if.then110.peel276.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_ddp_comp_start.exit.peel297.i

land.lhs.true.i.peel279.i:                        ; preds = %if.then110.peel276.i
  %bgclr_in_on.i.peel280.i = getelementptr inbounds %struct.mtk_ddp_comp_funcs, ptr %119, i32 0, i32 12
  %120 = ptrtoint ptr %bgclr_in_on.i.peel280.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %bgclr_in_on.i.peel280.i, align 4
  %tobool2.not.i.peel281.i = icmp eq ptr %121, null
  br i1 %tobool2.not.i.peel281.i, label %land.lhs.true.i.peel279.i.if.end111.peel283.i_crit_edge, label %if.then.i204.peel282.i

land.lhs.true.i.peel279.i.if.end111.peel283.i_crit_edge: ; preds = %land.lhs.true.i.peel279.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end111.peel283.i

if.then.i204.peel282.i:                           ; preds = %land.lhs.true.i.peel279.i
  call void @__sanitizer_cov_trace_pc() #11
  %122 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %117, align 4
  call void %121(ptr noundef %123) #9
  br label %if.end111.peel283.i

if.end111.peel283.i:                              ; preds = %if.then.i204.peel282.i, %land.lhs.true.i.peel279.i.if.end111.peel283.i_crit_edge
  %124 = ptrtoint ptr %funcs.i.peel277.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %.pr = load ptr, ptr %funcs.i.peel277.i, align 4
  %tobool.not.i206.peel285.i = icmp eq ptr %.pr, null
  br i1 %tobool.not.i206.peel285.i, label %if.end111.peel283.i.mtk_ddp_comp_start.exit.peel297.i_crit_edge, label %land.lhs.true.i208.peel286.i

if.end111.peel283.i.mtk_ddp_comp_start.exit.peel297.i_crit_edge: ; preds = %if.end111.peel283.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_ddp_comp_start.exit.peel297.i

land.lhs.true.i208.peel286.i:                     ; preds = %if.end111.peel283.i
  %config.i.peel287.i = getelementptr inbounds %struct.mtk_ddp_comp_funcs, ptr %.pr, i32 0, i32 2
  %125 = ptrtoint ptr %config.i.peel287.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %config.i.peel287.i, align 4
  %tobool2.not.i207.peel288.i = icmp eq ptr %126, null
  br i1 %tobool2.not.i207.peel288.i, label %land.lhs.true.i208.peel286.i.mtk_ddp_comp_config.exit.peel290.i_crit_edge, label %if.then.i209.peel289.i

land.lhs.true.i208.peel286.i.mtk_ddp_comp_config.exit.peel290.i_crit_edge: ; preds = %land.lhs.true.i208.peel286.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_ddp_comp_config.exit.peel290.i

if.then.i209.peel289.i:                           ; preds = %land.lhs.true.i208.peel286.i
  call void @__sanitizer_cov_trace_pc() #11
  %127 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %117, align 4
  call void %126(ptr noundef %128, i32 noundef %conv.i, i32 noundef %conv27.i, i32 noundef %call.i, i32 noundef %bpc.0.lcssa.i, ptr noundef null) #9
  br label %mtk_ddp_comp_config.exit.peel290.i

mtk_ddp_comp_config.exit.peel290.i:               ; preds = %if.then.i209.peel289.i, %land.lhs.true.i208.peel286.i.mtk_ddp_comp_config.exit.peel290.i_crit_edge
  %129 = ptrtoint ptr %funcs.i.peel277.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %.pr.peel291.i = load ptr, ptr %funcs.i.peel277.i, align 4
  %tobool.not.i211.peel292.i = icmp eq ptr %.pr.peel291.i, null
  br i1 %tobool.not.i211.peel292.i, label %mtk_ddp_comp_config.exit.peel290.i.mtk_ddp_comp_start.exit.peel297.i_crit_edge, label %land.lhs.true.i213.peel293.i

mtk_ddp_comp_config.exit.peel290.i.mtk_ddp_comp_start.exit.peel297.i_crit_edge: ; preds = %mtk_ddp_comp_config.exit.peel290.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_ddp_comp_start.exit.peel297.i

land.lhs.true.i213.peel293.i:                     ; preds = %mtk_ddp_comp_config.exit.peel290.i
  %start.i.peel294.i = getelementptr inbounds %struct.mtk_ddp_comp_funcs, ptr %.pr.peel291.i, i32 0, i32 3
  %130 = ptrtoint ptr %start.i.peel294.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %start.i.peel294.i, align 4
  %tobool2.not.i212.peel295.i = icmp eq ptr %131, null
  br i1 %tobool2.not.i212.peel295.i, label %land.lhs.true.i213.peel293.i.mtk_ddp_comp_start.exit.peel297.i_crit_edge, label %if.then.i214.peel296.i

land.lhs.true.i213.peel293.i.mtk_ddp_comp_start.exit.peel297.i_crit_edge: ; preds = %land.lhs.true.i213.peel293.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_ddp_comp_start.exit.peel297.i

if.then.i214.peel296.i:                           ; preds = %land.lhs.true.i213.peel293.i
  call void @__sanitizer_cov_trace_pc() #11
  %132 = ptrtoint ptr %117 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %117, align 4
  call void %131(ptr noundef %133) #9
  br label %mtk_ddp_comp_start.exit.peel297.i

mtk_ddp_comp_start.exit.peel297.i:                ; preds = %if.then.i214.peel296.i, %land.lhs.true.i213.peel293.i.mtk_ddp_comp_start.exit.peel297.i_crit_edge, %mtk_ddp_comp_config.exit.peel290.i.mtk_ddp_comp_start.exit.peel297.i_crit_edge, %if.end111.peel283.i.mtk_ddp_comp_start.exit.peel297.i_crit_edge, %if.then110.peel276.i.mtk_ddp_comp_start.exit.peel297.i_crit_edge
  %134 = ptrtoint ptr %ddp_comp_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %ddp_comp_nr.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %135)
  %cmp103.peel299.i = icmp ugt i32 %135, 2
  br i1 %cmp103.peel299.i, label %mtk_ddp_comp_start.exit.peel297.i.if.end111.i_crit_edge, label %mtk_ddp_comp_start.exit.peel297.i.for.cond115.preheader.i_crit_edge

mtk_ddp_comp_start.exit.peel297.i.for.cond115.preheader.i_crit_edge: ; preds = %mtk_ddp_comp_start.exit.peel297.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond115.preheader.i

mtk_ddp_comp_start.exit.peel297.i.if.end111.i_crit_edge: ; preds = %mtk_ddp_comp_start.exit.peel297.i
  br label %if.end111.i

for.cond115.preheader.i:                          ; preds = %mtk_ddp_comp_start.exit.i.for.cond115.preheader.i_crit_edge, %mtk_ddp_comp_start.exit.peel297.i.for.cond115.preheader.i_crit_edge, %mtk_ddp_comp_start.exit.peel.i.for.cond115.preheader.i_crit_edge, %for.end95.i.for.cond115.preheader.i_crit_edge
  %layer_nr.i = getelementptr inbounds %struct.mtk_drm_crtc, ptr %crtc, i32 0, i32 5
  %136 = ptrtoint ptr %layer_nr.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %layer_nr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %cmp116263.not.i = icmp eq i32 %137, 0
  br i1 %cmp116263.not.i, label %for.cond115.preheader.i.if.end6_crit_edge, label %for.body118.lr.ph.i

for.cond115.preheader.i.if.end6_crit_edge:        ; preds = %for.cond115.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

for.body118.lr.ph.i:                              ; preds = %for.cond115.preheader.i
  %planes.i = getelementptr inbounds %struct.mtk_drm_crtc, ptr %crtc, i32 0, i32 4
  br label %for.body118.i

if.end111.i:                                      ; preds = %mtk_ddp_comp_start.exit.i.if.end111.i_crit_edge, %mtk_ddp_comp_start.exit.peel297.i.if.end111.i_crit_edge
  %i.1262.i = phi i32 [ %inc113.i, %mtk_ddp_comp_start.exit.i.if.end111.i_crit_edge ], [ 2, %mtk_ddp_comp_start.exit.peel297.i.if.end111.i_crit_edge ]
  %138 = ptrtoint ptr %ddp_comp to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %ddp_comp, align 4
  %arrayidx107.i = getelementptr ptr, ptr %139, i32 %i.1262.i
  %140 = ptrtoint ptr %arrayidx107.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %arrayidx107.i, align 4
  %funcs.i205.i = getelementptr inbounds %struct.mtk_ddp_comp, ptr %141, i32 0, i32 4
  %142 = ptrtoint ptr %funcs.i205.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %funcs.i205.i, align 4
  %tobool.not.i206.i = icmp eq ptr %143, null
  br i1 %tobool.not.i206.i, label %if.end111.i.mtk_ddp_comp_start.exit.i_crit_edge, label %land.lhs.true.i208.i

if.end111.i.mtk_ddp_comp_start.exit.i_crit_edge:  ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_ddp_comp_start.exit.i

land.lhs.true.i208.i:                             ; preds = %if.end111.i
  %config.i.i = getelementptr inbounds %struct.mtk_ddp_comp_funcs, ptr %143, i32 0, i32 2
  %144 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %config.i.i, align 4
  %tobool2.not.i207.i = icmp eq ptr %145, null
  br i1 %tobool2.not.i207.i, label %land.lhs.true.i208.i.mtk_ddp_comp_config.exit.i_crit_edge, label %if.then.i209.i

land.lhs.true.i208.i.mtk_ddp_comp_config.exit.i_crit_edge: ; preds = %land.lhs.true.i208.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_ddp_comp_config.exit.i

if.then.i209.i:                                   ; preds = %land.lhs.true.i208.i
  call void @__sanitizer_cov_trace_pc() #11
  %146 = ptrtoint ptr %141 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %141, align 4
  call void %145(ptr noundef %147, i32 noundef %conv.i, i32 noundef %conv27.i, i32 noundef %call.i, i32 noundef %bpc.0.lcssa.i, ptr noundef null) #9
  br label %mtk_ddp_comp_config.exit.i

mtk_ddp_comp_config.exit.i:                       ; preds = %if.then.i209.i, %land.lhs.true.i208.i.mtk_ddp_comp_config.exit.i_crit_edge
  %148 = ptrtoint ptr %funcs.i205.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %.pr.i = load ptr, ptr %funcs.i205.i, align 4
  %tobool.not.i211.i = icmp eq ptr %.pr.i, null
  br i1 %tobool.not.i211.i, label %mtk_ddp_comp_config.exit.i.mtk_ddp_comp_start.exit.i_crit_edge, label %land.lhs.true.i213.i

mtk_ddp_comp_config.exit.i.mtk_ddp_comp_start.exit.i_crit_edge: ; preds = %mtk_ddp_comp_config.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_ddp_comp_start.exit.i

land.lhs.true.i213.i:                             ; preds = %mtk_ddp_comp_config.exit.i
  %start.i.i = getelementptr inbounds %struct.mtk_ddp_comp_funcs, ptr %.pr.i, i32 0, i32 3
  %149 = ptrtoint ptr %start.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %start.i.i, align 4
  %tobool2.not.i212.i = icmp eq ptr %150, null
  br i1 %tobool2.not.i212.i, label %land.lhs.true.i213.i.mtk_ddp_comp_start.exit.i_crit_edge, label %if.then.i214.i

land.lhs.true.i213.i.mtk_ddp_comp_start.exit.i_crit_edge: ; preds = %land.lhs.true.i213.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_ddp_comp_start.exit.i

if.then.i214.i:                                   ; preds = %land.lhs.true.i213.i
  call void @__sanitizer_cov_trace_pc() #11
  %151 = ptrtoint ptr %141 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %141, align 4
  call void %150(ptr noundef %152) #9
  br label %mtk_ddp_comp_start.exit.i

mtk_ddp_comp_start.exit.i:                        ; preds = %if.then.i214.i, %land.lhs.true.i213.i.mtk_ddp_comp_start.exit.i_crit_edge, %mtk_ddp_comp_config.exit.i.mtk_ddp_comp_start.exit.i_crit_edge, %if.end111.i.mtk_ddp_comp_start.exit.i_crit_edge
  %inc113.i = add nuw i32 %i.1262.i, 1
  %153 = ptrtoint ptr %ddp_comp_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %ddp_comp_nr.i.i, align 8
  %cmp103.i = icmp ult i32 %inc113.i, %154
  br i1 %cmp103.i, label %mtk_ddp_comp_start.exit.i.if.end111.i_crit_edge, label %mtk_ddp_comp_start.exit.i.for.cond115.preheader.i_crit_edge, !llvm.loop !86

mtk_ddp_comp_start.exit.i.for.cond115.preheader.i_crit_edge: ; preds = %mtk_ddp_comp_start.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond115.preheader.i

mtk_ddp_comp_start.exit.i.if.end111.i_crit_edge:  ; preds = %mtk_ddp_comp_start.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end111.i

for.body118.i:                                    ; preds = %if.end126.i.for.body118.i_crit_edge, %for.body118.lr.ph.i
  %i.2264.i = phi i32 [ 0, %for.body118.lr.ph.i ], [ %inc128.i, %if.end126.i.for.body118.i_crit_edge ]
  %155 = ptrtoint ptr %planes.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %planes.i, align 8
  %state121.i = getelementptr %struct.drm_plane, ptr %156, i32 %i.2264.i, i32 19
  %157 = ptrtoint ptr %state121.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %state121.i, align 4
  %arrayidx119.idx.i = mul i32 %i.2264.i, 528
  %sub.ptr.div.i.i = sdiv exact i32 %arrayidx119.idx.i, 528
  %159 = ptrtoint ptr %ddp_comp_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %ddp_comp_nr.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %cmp46.not.i.i = icmp eq i32 %160, 0
  br i1 %cmp46.not.i.i, label %for.body118.i.mtk_drm_ddp_comp_for_plane.exit.thread.i_crit_edge, label %for.body118.i.for.body.i221.i_crit_edge

for.body118.i.for.body.i221.i_crit_edge:          ; preds = %for.body118.i
  br label %for.body.i221.i

for.body118.i.mtk_drm_ddp_comp_for_plane.exit.thread.i_crit_edge: ; preds = %for.body118.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_drm_ddp_comp_for_plane.exit.thread.i

for.body.i221.i:                                  ; preds = %mtk_ddp_comp_layer_nr.exit44.i.i.for.body.i221.i_crit_edge, %for.body118.i.for.body.i221.i_crit_edge
  %count.048.i.i = phi i32 [ %add4.i.i, %mtk_ddp_comp_layer_nr.exit44.i.i.for.body.i221.i_crit_edge ], [ 0, %for.body118.i.for.body.i221.i_crit_edge ]
  %i.047.i.i = phi i32 [ %inc.i226.i, %mtk_ddp_comp_layer_nr.exit44.i.i.for.body.i221.i_crit_edge ], [ 0, %for.body118.i.for.body.i221.i_crit_edge ]
  %161 = ptrtoint ptr %ddp_comp to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %ddp_comp, align 4
  %arrayidx.i218.i = getelementptr ptr, ptr %162, i32 %i.047.i.i
  %163 = ptrtoint ptr %arrayidx.i218.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %arrayidx.i218.i, align 4
  %funcs.i.i219.i = getelementptr inbounds %struct.mtk_ddp_comp, ptr %164, i32 0, i32 4
  %165 = ptrtoint ptr %funcs.i.i219.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %funcs.i.i219.i, align 4
  %tobool.not.i.i220.i = icmp eq ptr %166, null
  br i1 %tobool.not.i.i220.i, label %for.body.i221.i.mtk_ddp_comp_layer_nr.exit.i.i_crit_edge, label %land.lhs.true.i.i223.i

for.body.i221.i.mtk_ddp_comp_layer_nr.exit.i.i_crit_edge: ; preds = %for.body.i221.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_ddp_comp_layer_nr.exit.i.i

land.lhs.true.i.i223.i:                           ; preds = %for.body.i221.i
  %layer_nr.i.i.i = getelementptr inbounds %struct.mtk_ddp_comp_funcs, ptr %166, i32 0, i32 8
  %167 = ptrtoint ptr %layer_nr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %layer_nr.i.i.i, align 4
  %tobool2.not.i.i222.i = icmp eq ptr %168, null
  br i1 %tobool2.not.i.i222.i, label %land.lhs.true.i.i223.i.mtk_ddp_comp_layer_nr.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true.i.i223.i.mtk_ddp_comp_layer_nr.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i223.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_ddp_comp_layer_nr.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true.i.i223.i
  call void @__sanitizer_cov_trace_pc() #11
  %169 = ptrtoint ptr %164 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %164, align 4
  %call.i.i224.i = call i32 %168(ptr noundef %170) #9
  br label %mtk_ddp_comp_layer_nr.exit.i.i

mtk_ddp_comp_layer_nr.exit.i.i:                   ; preds = %if.then.i.i.i, %land.lhs.true.i.i223.i.mtk_ddp_comp_layer_nr.exit.i.i_crit_edge, %for.body.i221.i.mtk_ddp_comp_layer_nr.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %call.i.i224.i, %if.then.i.i.i ], [ 0, %land.lhs.true.i.i223.i.mtk_ddp_comp_layer_nr.exit.i.i_crit_edge ], [ 0, %for.body.i221.i.mtk_ddp_comp_layer_nr.exit.i.i_crit_edge ]
  %add.i.i = add i32 %retval.0.i.i.i, %count.048.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.div.i.i, i32 %add.i.i)
  %cmp2.i.i = icmp ult i32 %sub.ptr.div.i.i, %add.i.i
  br i1 %cmp2.i.i, label %mtk_drm_ddp_comp_for_plane.exit.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %mtk_ddp_comp_layer_nr.exit.i.i
  %171 = ptrtoint ptr %funcs.i.i219.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %funcs.i.i219.i, align 4
  %tobool.not.i37.i.i = icmp eq ptr %172, null
  br i1 %tobool.not.i37.i.i, label %if.end.i.i.mtk_ddp_comp_layer_nr.exit44.i.i_crit_edge, label %land.lhs.true.i40.i.i

if.end.i.i.mtk_ddp_comp_layer_nr.exit44.i.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_ddp_comp_layer_nr.exit44.i.i

land.lhs.true.i40.i.i:                            ; preds = %if.end.i.i
  %layer_nr.i38.i.i = getelementptr inbounds %struct.mtk_ddp_comp_funcs, ptr %172, i32 0, i32 8
  %173 = ptrtoint ptr %layer_nr.i38.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %layer_nr.i38.i.i, align 4
  %tobool2.not.i39.i.i = icmp eq ptr %174, null
  br i1 %tobool2.not.i39.i.i, label %land.lhs.true.i40.i.i.mtk_ddp_comp_layer_nr.exit44.i.i_crit_edge, label %if.then.i42.i.i

land.lhs.true.i40.i.i.mtk_ddp_comp_layer_nr.exit44.i.i_crit_edge: ; preds = %land.lhs.true.i40.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_ddp_comp_layer_nr.exit44.i.i

if.then.i42.i.i:                                  ; preds = %land.lhs.true.i40.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %175 = ptrtoint ptr %164 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %164, align 4
  %call.i41.i.i = call i32 %174(ptr noundef %176) #9
  br label %mtk_ddp_comp_layer_nr.exit44.i.i

mtk_ddp_comp_layer_nr.exit44.i.i:                 ; preds = %if.then.i42.i.i, %land.lhs.true.i40.i.i.mtk_ddp_comp_layer_nr.exit44.i.i_crit_edge, %if.end.i.i.mtk_ddp_comp_layer_nr.exit44.i.i_crit_edge
  %retval.0.i43.i.i = phi i32 [ %call.i41.i.i, %if.then.i42.i.i ], [ 0, %land.lhs.true.i40.i.i.mtk_ddp_comp_layer_nr.exit44.i.i_crit_edge ], [ 0, %if.end.i.i.mtk_ddp_comp_layer_nr.exit44.i.i_crit_edge ]
  %add4.i.i = add i32 %retval.0.i43.i.i, %count.048.i.i
  %inc.i226.i = add nuw i32 %i.047.i.i, 1
  %177 = ptrtoint ptr %ddp_comp_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %ddp_comp_nr.i.i, align 8
  %cmp.i227.i = icmp ult i32 %inc.i226.i, %178
  br i1 %cmp.i227.i, label %mtk_ddp_comp_layer_nr.exit44.i.i.for.body.i221.i_crit_edge, label %mtk_ddp_comp_layer_nr.exit44.i.i.mtk_drm_ddp_comp_for_plane.exit.thread.i_crit_edge

mtk_ddp_comp_layer_nr.exit44.i.i.mtk_drm_ddp_comp_for_plane.exit.thread.i_crit_edge: ; preds = %mtk_ddp_comp_layer_nr.exit44.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_drm_ddp_comp_for_plane.exit.thread.i

mtk_ddp_comp_layer_nr.exit44.i.i.for.body.i221.i_crit_edge: ; preds = %mtk_ddp_comp_layer_nr.exit44.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i221.i

mtk_drm_ddp_comp_for_plane.exit.thread.i:         ; preds = %mtk_ddp_comp_layer_nr.exit44.i.i.mtk_drm_ddp_comp_for_plane.exit.thread.i_crit_edge, %for.body118.i.mtk_drm_ddp_comp_for_plane.exit.thread.i_crit_edge
  %index.i.i = getelementptr %struct.drm_plane, ptr %156, i32 %i.2264.i, i32 17
  %179 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %index.i.i, align 4
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 272, i32 noundef 9, ptr noundef nonnull @.str.18, i32 noundef %180) #9
  br label %if.end126.i

mtk_drm_ddp_comp_for_plane.exit.i:                ; preds = %mtk_ddp_comp_layer_nr.exit.i.i
  %sub.i.i = sub i32 %sub.ptr.div.i.i, %count.048.i.i
  %tobool124.not.i = icmp eq ptr %164, null
  br i1 %tobool124.not.i, label %mtk_drm_ddp_comp_for_plane.exit.i.if.end126.i_crit_edge, label %if.then125.i

mtk_drm_ddp_comp_for_plane.exit.i.if.end126.i_crit_edge: ; preds = %mtk_drm_ddp_comp_for_plane.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end126.i

if.then125.i:                                     ; preds = %mtk_drm_ddp_comp_for_plane.exit.i
  %181 = ptrtoint ptr %funcs.i.i219.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %funcs.i.i219.i, align 4
  %tobool.not.i230.i = icmp eq ptr %182, null
  br i1 %tobool.not.i230.i, label %if.then125.i.if.end126.i_crit_edge, label %land.lhs.true.i232.i

if.then125.i.if.end126.i_crit_edge:               ; preds = %if.then125.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end126.i

land.lhs.true.i232.i:                             ; preds = %if.then125.i
  %layer_config.i.i = getelementptr inbounds %struct.mtk_ddp_comp_funcs, ptr %182, i32 0, i32 10
  %183 = ptrtoint ptr %layer_config.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %layer_config.i.i, align 4
  %tobool2.not.i231.i = icmp eq ptr %184, null
  br i1 %tobool2.not.i231.i, label %land.lhs.true.i232.i.if.end126.i_crit_edge, label %if.then.i233.i

land.lhs.true.i232.i.if.end126.i_crit_edge:       ; preds = %land.lhs.true.i232.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end126.i

if.then.i233.i:                                   ; preds = %land.lhs.true.i232.i
  call void @__sanitizer_cov_trace_pc() #11
  %185 = ptrtoint ptr %164 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %164, align 4
  call void %184(ptr noundef %186, i32 noundef %sub.i.i, ptr noundef %158, ptr noundef null) #9
  br label %if.end126.i

if.end126.i:                                      ; preds = %if.then.i233.i, %land.lhs.true.i232.i.if.end126.i_crit_edge, %if.then125.i.if.end126.i_crit_edge, %mtk_drm_ddp_comp_for_plane.exit.i.if.end126.i_crit_edge, %mtk_drm_ddp_comp_for_plane.exit.thread.i
  %inc128.i = add nuw i32 %i.2264.i, 1
  %187 = ptrtoint ptr %layer_nr.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %layer_nr.i, align 4
  %cmp116.i = icmp ult i32 %inc128.i, %188
  br i1 %cmp116.i, label %if.end126.i.for.body118.i_crit_edge, label %if.end126.i.if.end6_crit_edge

if.end126.i.if.end6_crit_edge:                    ; preds = %if.end126.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.end126.i.for.body118.i_crit_edge:              ; preds = %if.end126.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body118.i

err_pm_runtime_put.i:                             ; preds = %if.then81.i, %if.then76.i
  %189 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %crtc, align 8
  %dev132.i = getelementptr inbounds %struct.drm_device, ptr %190, i32 0, i32 2
  %191 = ptrtoint ptr %dev132.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %dev132.i, align 4
  %call.i235.i = call i32 @__pm_runtime_idle(ptr noundef %192, i32 noundef 5) #9
  br label %if.then4

if.then4:                                         ; preds = %err_pm_runtime_put.i, %if.then71.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %conn_iter.i) #9
  %193 = ptrtoint ptr %larb_dev to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %larb_dev, align 4
  call void @mtk_smi_larb_put(ptr noundef %194) #9
  br label %cleanup

if.end6:                                          ; preds = %if.end126.i.if.end6_crit_edge, %for.cond115.preheader.i.if.end6_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %conn_iter.i) #9
  call void @drm_crtc_vblank_on(ptr noundef %crtc) #9
  %enabled = getelementptr inbounds %struct.mtk_drm_crtc, ptr %crtc, i32 0, i32 1
  %195 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %195)
  store i8 1, ptr %enabled, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then4, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_drm_crtc_atomic_disable(ptr noundef %crtc, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ddp_comp = getelementptr inbounds %struct.mtk_drm_crtc, ptr %crtc, i32 0, i32 15
  %0 = ptrtoint ptr %ddp_comp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ddp_comp, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %base = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 5
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.mtk_drm_crtc_atomic_disable, i32 noundef %5) #9
  %enabled = getelementptr inbounds %struct.mtk_drm_crtc, ptr %crtc, i32 0, i32 1
  %6 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %enabled, align 8, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %layer_nr = getelementptr inbounds %struct.mtk_drm_crtc, ptr %crtc, i32 0, i32 5
  %8 = ptrtoint ptr %layer_nr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %layer_nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp21.not = icmp eq i32 %9, 0
  br i1 %cmp21.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %planes = getelementptr inbounds %struct.mtk_drm_crtc, ptr %crtc, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.022 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %10 = ptrtoint ptr %planes to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %planes, align 8
  %state2 = getelementptr %struct.drm_plane, ptr %11, i32 %i.022, i32 19
  %12 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %state2, align 4
  %pending = getelementptr inbounds %struct.mtk_plane_state, ptr %13, i32 0, i32 1
  %enable = getelementptr inbounds %struct.mtk_plane_state, ptr %13, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %enable to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %enable, align 1
  %15 = ptrtoint ptr %pending to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %pending, align 4
  %inc = add nuw i32 %i.022, 1
  %16 = ptrtoint ptr %layer_nr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %layer_nr, align 4
  %cmp = icmp ult i32 %inc, %17
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %pending_planes = getelementptr inbounds %struct.mtk_drm_crtc, ptr %crtc, i32 0, i32 6
  %18 = ptrtoint ptr %pending_planes to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %pending_planes, align 8
  tail call fastcc void @mtk_drm_crtc_update_config(ptr noundef %crtc, i1 noundef zeroext false)
  tail call void @drm_crtc_wait_one_vblank(ptr noundef %crtc) #9
  tail call void @drm_crtc_vblank_off(ptr noundef %crtc) #9
  %19 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %crtc, align 8
  %ddp_comp_nr.i = getelementptr inbounds %struct.mtk_drm_crtc, ptr %crtc, i32 0, i32 14
  %21 = ptrtoint ptr %ddp_comp_nr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ddp_comp_nr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp91.not.i = icmp eq i32 %22, 0
  br i1 %cmp91.not.i, label %for.end.for.end13.i_crit_edge, label %for.body.lr.ph.i

for.end.for.end13.i_crit_edge:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end13.i

for.body.lr.ph.i:                                 ; preds = %for.end
  %23 = ptrtoint ptr %ddp_comp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ddp_comp, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %funcs.i.peel.i = getelementptr inbounds %struct.mtk_ddp_comp, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %funcs.i.peel.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %funcs.i.peel.i, align 4
  %tobool.not.i.peel.i = icmp eq ptr %28, null
  br i1 %tobool.not.i.peel.i, label %for.body.lr.ph.i.for.inc.peel.i_crit_edge, label %land.lhs.true.i.peel.i

for.body.lr.ph.i.for.inc.peel.i_crit_edge:        ; preds = %for.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.peel.i

land.lhs.true.i.peel.i:                           ; preds = %for.body.lr.ph.i
  %stop.i.peel.i = getelementptr inbounds %struct.mtk_ddp_comp_funcs, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %stop.i.peel.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %stop.i.peel.i, align 4
  %tobool2.not.i.peel.i = icmp eq ptr %30, null
  br i1 %tobool2.not.i.peel.i, label %land.lhs.true.i.peel.i.for.inc.peel.i_crit_edge, label %if.then.i.peel.i

land.lhs.true.i.peel.i.for.inc.peel.i_crit_edge:  ; preds = %land.lhs.true.i.peel.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.peel.i

if.then.i.peel.i:                                 ; preds = %land.lhs.true.i.peel.i
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %26, align 4
  tail call void %30(ptr noundef %32) #9
  br label %for.inc.peel.i

for.inc.peel.i:                                   ; preds = %if.then.i.peel.i, %land.lhs.true.i.peel.i.for.inc.peel.i_crit_edge, %for.body.lr.ph.i.for.inc.peel.i_crit_edge
  %33 = ptrtoint ptr %ddp_comp_nr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ddp_comp_nr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cmp.peel.i = icmp ugt i32 %34, 1
  br i1 %cmp.peel.i, label %for.body.peel.next.i, label %for.inc.peel.i.for.cond5.preheader.i_crit_edge

for.inc.peel.i.for.cond5.preheader.i_crit_edge:   ; preds = %for.inc.peel.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond5.preheader.i

for.body.peel.next.i:                             ; preds = %for.inc.peel.i
  %35 = ptrtoint ptr %ddp_comp to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ddp_comp, align 4
  %arrayidx.peel100.i = getelementptr ptr, ptr %36, i32 1
  %37 = ptrtoint ptr %arrayidx.peel100.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.peel100.i, align 4
  %funcs.i.peel101.i = getelementptr inbounds %struct.mtk_ddp_comp, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %funcs.i.peel101.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %funcs.i.peel101.i, align 4
  %tobool.not.i.peel102.i = icmp eq ptr %40, null
  br i1 %tobool.not.i.peel102.i, label %for.body.peel.next.i.if.then.peel109.i_crit_edge, label %land.lhs.true.i.peel103.i

for.body.peel.next.i.if.then.peel109.i_crit_edge: ; preds = %for.body.peel.next.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.peel109.i

land.lhs.true.i.peel103.i:                        ; preds = %for.body.peel.next.i
  %stop.i.peel104.i = getelementptr inbounds %struct.mtk_ddp_comp_funcs, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %stop.i.peel104.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %stop.i.peel104.i, align 4
  %tobool2.not.i.peel105.i = icmp eq ptr %42, null
  br i1 %tobool2.not.i.peel105.i, label %land.lhs.true.i.peel103.i.if.then.peel109.i_crit_edge, label %if.then.i.peel106.i

land.lhs.true.i.peel103.i.if.then.peel109.i_crit_edge: ; preds = %land.lhs.true.i.peel103.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.peel109.i

if.then.i.peel106.i:                              ; preds = %land.lhs.true.i.peel103.i
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %38, align 4
  tail call void %42(ptr noundef %44) #9
  br label %if.then.peel109.i

if.then.peel109.i:                                ; preds = %if.then.i.peel106.i, %land.lhs.true.i.peel103.i.if.then.peel109.i_crit_edge, %for.body.peel.next.i.if.then.peel109.i_crit_edge
  %45 = ptrtoint ptr %ddp_comp to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ddp_comp, align 4
  %arrayidx4.peel110.i = getelementptr ptr, ptr %46, i32 1
  %47 = ptrtoint ptr %arrayidx4.peel110.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx4.peel110.i, align 4
  %funcs.i86.peel111.i = getelementptr inbounds %struct.mtk_ddp_comp, ptr %48, i32 0, i32 4
  %49 = ptrtoint ptr %funcs.i86.peel111.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %funcs.i86.peel111.i, align 4
  %tobool.not.i87.peel112.i = icmp eq ptr %50, null
  br i1 %tobool.not.i87.peel112.i, label %if.then.peel109.i.for.inc.peel117.i_crit_edge, label %land.lhs.true.i89.peel113.i

if.then.peel109.i.for.inc.peel117.i_crit_edge:    ; preds = %if.then.peel109.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.peel117.i

land.lhs.true.i89.peel113.i:                      ; preds = %if.then.peel109.i
  %bgclr_in_off.i.peel114.i = getelementptr inbounds %struct.mtk_ddp_comp_funcs, ptr %50, i32 0, i32 13
  %51 = ptrtoint ptr %bgclr_in_off.i.peel114.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bgclr_in_off.i.peel114.i, align 4
  %tobool2.not.i88.peel115.i = icmp eq ptr %52, null
  br i1 %tobool2.not.i88.peel115.i, label %land.lhs.true.i89.peel113.i.for.inc.peel117.i_crit_edge, label %if.then.i90.peel116.i

land.lhs.true.i89.peel113.i.for.inc.peel117.i_crit_edge: ; preds = %land.lhs.true.i89.peel113.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.peel117.i

if.then.i90.peel116.i:                            ; preds = %land.lhs.true.i89.peel113.i
  call void @__sanitizer_cov_trace_pc() #11
  %53 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %48, align 4
  tail call void %52(ptr noundef %54) #9
  br label %for.inc.peel117.i

for.inc.peel117.i:                                ; preds = %if.then.i90.peel116.i, %land.lhs.true.i89.peel113.i.for.inc.peel117.i_crit_edge, %if.then.peel109.i.for.inc.peel117.i_crit_edge
  %55 = ptrtoint ptr %ddp_comp_nr.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %ddp_comp_nr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %56)
  %cmp.peel119.i = icmp ugt i32 %56, 2
  br i1 %cmp.peel119.i, label %for.inc.peel117.i.for.body.i_crit_edge, label %for.inc.peel117.i.for.cond5.preheader.i_crit_edge

for.inc.peel117.i.for.cond5.preheader.i_crit_edge: ; preds = %for.inc.peel117.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond5.preheader.i

for.inc.peel117.i.for.body.i_crit_edge:           ; preds = %for.inc.peel117.i
  br label %for.body.i

for.cond5.preheader.i:                            ; preds = %for.inc.i.for.cond5.preheader.i_crit_edge, %for.inc.peel117.i.for.cond5.preheader.i_crit_edge, %for.inc.peel.i.for.cond5.preheader.i_crit_edge
  %57 = phi i32 [ %34, %for.inc.peel.i.for.cond5.preheader.i_crit_edge ], [ %56, %for.inc.peel117.i.for.cond5.preheader.i_crit_edge ], [ %69, %for.inc.i.for.cond5.preheader.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp793.not.i = icmp eq i32 %57, 0
  br i1 %cmp793.not.i, label %for.cond5.preheader.i.for.end13.i_crit_edge, label %for.body8.lr.ph.i

for.cond5.preheader.i.for.end13.i_crit_edge:      ; preds = %for.cond5.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end13.i

for.body8.lr.ph.i:                                ; preds = %for.cond5.preheader.i
  %mutex.i = getelementptr inbounds %struct.mtk_drm_crtc, ptr %crtc, i32 0, i32 13
  br label %for.body8.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.inc.peel117.i.for.body.i_crit_edge
  %i.092.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 2, %for.inc.peel117.i.for.body.i_crit_edge ]
  %58 = ptrtoint ptr %ddp_comp to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ddp_comp, align 4
  %arrayidx.i = getelementptr ptr, ptr %59, i32 %i.092.i
  %60 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx.i, align 4
  %funcs.i.i = getelementptr inbounds %struct.mtk_ddp_comp, ptr %61, i32 0, i32 4
  %62 = ptrtoint ptr %funcs.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %funcs.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %63, null
  br i1 %tobool.not.i.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

land.lhs.true.i.i:                                ; preds = %for.body.i
  %stop.i.i = getelementptr inbounds %struct.mtk_ddp_comp_funcs, ptr %63, i32 0, i32 4
  %64 = ptrtoint ptr %stop.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %stop.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %65, null
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.for.inc.i_crit_edge, label %if.then.i.i

land.lhs.true.i.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %66 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %61, align 4
  tail call void %65(ptr noundef %67) #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i.i, %land.lhs.true.i.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.092.i, 1
  %68 = ptrtoint ptr %ddp_comp_nr.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %ddp_comp_nr.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %69
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.cond5.preheader.i_crit_edge, !llvm.loop !87

for.inc.i.for.cond5.preheader.i_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond5.preheader.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body8.i:                                      ; preds = %for.body8.i.for.body8.i_crit_edge, %for.body8.lr.ph.i
  %i.194.i = phi i32 [ 0, %for.body8.lr.ph.i ], [ %inc12.i, %for.body8.i.for.body8.i_crit_edge ]
  %70 = ptrtoint ptr %mutex.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %mutex.i, align 4
  %72 = ptrtoint ptr %ddp_comp to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ddp_comp, align 4
  %arrayidx10.i = getelementptr ptr, ptr %73, i32 %i.194.i
  %74 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx10.i, align 4
  %id.i = getelementptr inbounds %struct.mtk_ddp_comp, ptr %75, i32 0, i32 3
  %76 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %id.i, align 4
  tail call void @mtk_mutex_remove_comp(ptr noundef %71, i32 noundef %77) #9
  %inc12.i = add nuw i32 %i.194.i, 1
  %78 = ptrtoint ptr %ddp_comp_nr.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %ddp_comp_nr.i, align 8
  %cmp7.i = icmp ult i32 %inc12.i, %79
  br i1 %cmp7.i, label %for.body8.i.for.body8.i_crit_edge, label %for.body8.i.for.end13.i_crit_edge

for.body8.i.for.end13.i_crit_edge:                ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end13.i

for.body8.i.for.body8.i_crit_edge:                ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body8.i

for.end13.i:                                      ; preds = %for.body8.i.for.end13.i_crit_edge, %for.cond5.preheader.i.for.end13.i_crit_edge, %for.end.for.end13.i_crit_edge
  %mutex14.i = getelementptr inbounds %struct.mtk_drm_crtc, ptr %crtc, i32 0, i32 13
  %80 = ptrtoint ptr %mutex14.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %mutex14.i, align 4
  tail call void @mtk_mutex_disable(ptr noundef %81) #9
  %82 = ptrtoint ptr %ddp_comp_nr.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %ddp_comp_nr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %83)
  %cmp1796.not.i = icmp eq i32 %83, 1
  br i1 %cmp1796.not.i, label %for.end13.i.for.end31.i_crit_edge, label %for.body18.lr.ph.i

for.end13.i.for.end31.i_crit_edge:                ; preds = %for.end13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end31.i

for.body18.lr.ph.i:                               ; preds = %for.end13.i
  %mmsys_dev.i = getelementptr inbounds %struct.mtk_drm_crtc, ptr %crtc, i32 0, i32 12
  br label %for.body18.i

for.body18.i:                                     ; preds = %for.body18.i.for.body18.i_crit_edge, %for.body18.lr.ph.i
  %i.297.i = phi i32 [ 0, %for.body18.lr.ph.i ], [ %add.i, %for.body18.i.for.body18.i_crit_edge ]
  %84 = ptrtoint ptr %mmsys_dev.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %mmsys_dev.i, align 8
  %86 = ptrtoint ptr %ddp_comp to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ddp_comp, align 4
  %arrayidx20.i = getelementptr ptr, ptr %87, i32 %i.297.i
  %88 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx20.i, align 4
  %id21.i = getelementptr inbounds %struct.mtk_ddp_comp, ptr %89, i32 0, i32 3
  %90 = ptrtoint ptr %id21.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %id21.i, align 4
  %add.i = add nuw i32 %i.297.i, 1
  %arrayidx23.i = getelementptr ptr, ptr %87, i32 %add.i
  %92 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %arrayidx23.i, align 4
  %id24.i = getelementptr inbounds %struct.mtk_ddp_comp, ptr %93, i32 0, i32 3
  %94 = ptrtoint ptr %id24.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %id24.i, align 4
  tail call void @mtk_mmsys_ddp_disconnect(ptr noundef %85, i32 noundef %91, i32 noundef %95) #9
  %96 = ptrtoint ptr %mutex14.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %mutex14.i, align 4
  %98 = ptrtoint ptr %ddp_comp to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %ddp_comp, align 4
  %arrayidx27.i = getelementptr ptr, ptr %99, i32 %i.297.i
  %100 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %arrayidx27.i, align 4
  %id28.i = getelementptr inbounds %struct.mtk_ddp_comp, ptr %101, i32 0, i32 3
  %102 = ptrtoint ptr %id28.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %id28.i, align 4
  tail call void @mtk_mutex_remove_comp(ptr noundef %97, i32 noundef %103) #9
  %104 = ptrtoint ptr %ddp_comp_nr.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %ddp_comp_nr.i, align 8
  %sub.i = add i32 %105, -1
  %cmp17.i = icmp ult i32 %add.i, %sub.i
  br i1 %cmp17.i, label %for.body18.i.for.body18.i_crit_edge, label %for.body18.i.for.end31.i_crit_edge

for.body18.i.for.end31.i_crit_edge:               ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end31.i

for.body18.i.for.body18.i_crit_edge:              ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body18.i

for.end31.i:                                      ; preds = %for.body18.i.for.end31.i_crit_edge, %for.end13.i.for.end31.i_crit_edge
  %i.2.lcssa.i = phi i32 [ 0, %for.end13.i.for.end31.i_crit_edge ], [ %add.i, %for.body18.i.for.end31.i_crit_edge ]
  %106 = ptrtoint ptr %mutex14.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %mutex14.i, align 4
  %108 = ptrtoint ptr %ddp_comp to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %ddp_comp, align 4
  %arrayidx34.i = getelementptr ptr, ptr %109, i32 %i.2.lcssa.i
  %110 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %arrayidx34.i, align 4
  %id35.i = getelementptr inbounds %struct.mtk_ddp_comp, ptr %111, i32 0, i32 3
  %112 = ptrtoint ptr %id35.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %id35.i, align 4
  tail call void @mtk_mutex_remove_comp(ptr noundef %107, i32 noundef %113) #9
  %114 = ptrtoint ptr %ddp_comp_nr.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %ddp_comp_nr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %cmp4.not.i.i = icmp eq i32 %115, 0
  br i1 %cmp4.not.i.i, label %for.end31.i.mtk_crtc_ddp_clk_disable.exit.i_crit_edge, label %for.end31.i.for.body.i.i_crit_edge

for.end31.i.for.body.i.i_crit_edge:               ; preds = %for.end31.i
  br label %for.body.i.i

for.end31.i.mtk_crtc_ddp_clk_disable.exit.i_crit_edge: ; preds = %for.end31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_crtc_ddp_clk_disable.exit.i

for.body.i.i:                                     ; preds = %mtk_ddp_comp_clk_disable.exit.i.i.for.body.i.i_crit_edge, %for.end31.i.for.body.i.i_crit_edge
  %i.05.i.i = phi i32 [ %inc.i.i, %mtk_ddp_comp_clk_disable.exit.i.i.for.body.i.i_crit_edge ], [ 0, %for.end31.i.for.body.i.i_crit_edge ]
  %116 = ptrtoint ptr %ddp_comp to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %ddp_comp, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %117, i32 %i.05.i.i
  %118 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %arrayidx.i.i, align 4
  %funcs.i.i.i = getelementptr inbounds %struct.mtk_ddp_comp, ptr %119, i32 0, i32 4
  %120 = ptrtoint ptr %funcs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %funcs.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %121, null
  br i1 %tobool.not.i.i.i, label %for.body.i.i.mtk_ddp_comp_clk_disable.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

for.body.i.i.mtk_ddp_comp_clk_disable.exit.i.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_ddp_comp_clk_disable.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i
  %clk_disable.i.i.i = getelementptr inbounds %struct.mtk_ddp_comp_funcs, ptr %121, i32 0, i32 1
  %122 = ptrtoint ptr %clk_disable.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %clk_disable.i.i.i, align 4
  %tobool2.not.i.i.i = icmp eq ptr %123, null
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i.i.i.mtk_ddp_comp_clk_disable.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true.i.i.i.mtk_ddp_comp_clk_disable.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_ddp_comp_clk_disable.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %124 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %119, align 4
  tail call void %123(ptr noundef %125) #9
  br label %mtk_ddp_comp_clk_disable.exit.i.i

mtk_ddp_comp_clk_disable.exit.i.i:                ; preds = %if.then.i.i.i, %land.lhs.true.i.i.i.mtk_ddp_comp_clk_disable.exit.i.i_crit_edge, %for.body.i.i.mtk_ddp_comp_clk_disable.exit.i.i_crit_edge
  %inc.i.i = add nuw i32 %i.05.i.i, 1
  %126 = ptrtoint ptr %ddp_comp_nr.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %ddp_comp_nr.i, align 8
  %cmp.i.i = icmp ult i32 %inc.i.i, %127
  br i1 %cmp.i.i, label %mtk_ddp_comp_clk_disable.exit.i.i.for.body.i.i_crit_edge, label %mtk_ddp_comp_clk_disable.exit.i.i.mtk_crtc_ddp_clk_disable.exit.i_crit_edge

mtk_ddp_comp_clk_disable.exit.i.i.mtk_crtc_ddp_clk_disable.exit.i_crit_edge: ; preds = %mtk_ddp_comp_clk_disable.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_crtc_ddp_clk_disable.exit.i

mtk_ddp_comp_clk_disable.exit.i.i.for.body.i.i_crit_edge: ; preds = %mtk_ddp_comp_clk_disable.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

mtk_crtc_ddp_clk_disable.exit.i:                  ; preds = %mtk_ddp_comp_clk_disable.exit.i.i.mtk_crtc_ddp_clk_disable.exit.i_crit_edge, %for.end31.i.mtk_crtc_ddp_clk_disable.exit.i_crit_edge
  %128 = ptrtoint ptr %mutex14.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %mutex14.i, align 4
  tail call void @mtk_mutex_unprepare(ptr noundef %129) #9
  %dev37.i = getelementptr inbounds %struct.drm_device, ptr %20, i32 0, i32 2
  %130 = ptrtoint ptr %dev37.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %dev37.i, align 4
  %call.i.i = tail call i32 @__pm_runtime_idle(ptr noundef %131, i32 noundef 5) #9
  %state.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %132 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %state.i, align 4
  %event.i = getelementptr inbounds %struct.drm_crtc_state, ptr %133, i32 0, i32 18
  %134 = ptrtoint ptr %event.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %event.i, align 4
  %tobool.not.i = icmp eq ptr %135, null
  br i1 %tobool.not.i, label %mtk_crtc_ddp_clk_disable.exit.i.mtk_crtc_ddp_hw_fini.exit_crit_edge, label %land.lhs.true.i

mtk_crtc_ddp_clk_disable.exit.i.mtk_crtc_ddp_hw_fini.exit_crit_edge: ; preds = %mtk_crtc_ddp_clk_disable.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_crtc_ddp_hw_fini.exit

land.lhs.true.i:                                  ; preds = %mtk_crtc_ddp_clk_disable.exit.i
  %active.i = getelementptr inbounds %struct.drm_crtc_state, ptr %133, i32 0, i32 2
  %136 = ptrtoint ptr %active.i to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %active.i, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %tobool39.not.i = icmp eq i8 %137, 0
  br i1 %tobool39.not.i, label %if.then40.i, label %land.lhs.true.i.mtk_crtc_ddp_hw_fini.exit_crit_edge

land.lhs.true.i.mtk_crtc_ddp_hw_fini.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_crtc_ddp_hw_fini.exit

if.then40.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %138 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %crtc, align 8
  %event_lock.i = getelementptr inbounds %struct.drm_device, ptr %139, i32 0, i32 28
  tail call void @_raw_spin_lock_irq(ptr noundef %event_lock.i) #9
  %140 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %state.i, align 4
  %event43.i = getelementptr inbounds %struct.drm_crtc_state, ptr %141, i32 0, i32 18
  %142 = ptrtoint ptr %event43.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %event43.i, align 4
  tail call void @drm_crtc_send_vblank_event(ptr noundef %crtc, ptr noundef %143) #9
  %144 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %state.i, align 4
  %event45.i = getelementptr inbounds %struct.drm_crtc_state, ptr %145, i32 0, i32 18
  %146 = ptrtoint ptr %event45.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr null, ptr %event45.i, align 4
  %147 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %crtc, align 8
  %event_lock47.i = getelementptr inbounds %struct.drm_device, ptr %148, i32 0, i32 28
  tail call void @_raw_spin_unlock_irq(ptr noundef %event_lock47.i) #9
  br label %mtk_crtc_ddp_hw_fini.exit

mtk_crtc_ddp_hw_fini.exit:                        ; preds = %if.then40.i, %land.lhs.true.i.mtk_crtc_ddp_hw_fini.exit_crit_edge, %mtk_crtc_ddp_clk_disable.exit.i.mtk_crtc_ddp_hw_fini.exit_crit_edge
  %larb_dev = getelementptr inbounds %struct.mtk_ddp_comp, ptr %3, i32 0, i32 2
  %149 = ptrtoint ptr %larb_dev to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %larb_dev, align 4
  tail call void @mtk_smi_larb_put(ptr noundef %150) #9
  %151 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 0, ptr %enabled, align 8
  br label %cleanup

cleanup:                                          ; preds = %mtk_crtc_ddp_hw_fini.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_vblank_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_smi_larb_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_smi_larb_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_on(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_list_iter_begin(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_connector_list_iter_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_list_iter_end(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_mutex_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_mmsys_ddp_connect(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_mutex_add_comp(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_mutex_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_mutex_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_wait_one_vblank(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_off(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_mutex_remove_comp(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_mutex_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_mmsys_ddp_disconnect(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !19, !20, !22, !23, !24, !26, !28, !29, !31, !32, !34, !36, !38, !40, !42, !44, !45, !47, !49, !51, !53, !55, !57, !59, !60, !61, !62, !64, !65}
!llvm.module.flags = !{!66, !67, !68, !69, !70, !71, !72, !73}
!llvm.ident = !{!74}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_crtc.c", i32 874, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mtk_drm_crtc_create._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mtk_drm_crtc_create._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_crtc.c", i32 881, i32 4}
!10 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @mtk_drm_crtc_create._entry.5, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @mtk_drm_crtc_create._entry_ptr.8, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.10, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_crtc.c", i32 901, i32 3}
!15 = !{ptr @mtk_drm_crtc_create._entry.9, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @mtk_drm_crtc_create._entry_ptr.11, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @mtk_drm_crtc_create.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_crtc.c", i32 942, i32 2}
!19 = !{ptr @.str.12, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_crtc.c", i32 953, i32 3}
!22 = !{ptr @.str.14, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @mtk_drm_crtc_create.__UNIQUE_ID_ddebug319, !21, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!24 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_crtc.c", i32 960, i32 8}
!26 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_crtc.c", i32 964, i32 4}
!28 = !{ptr @mtk_drm_crtc_create.__UNIQUE_ID_ddebug320, !27, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!29 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_crtc.c", i32 973, i32 5}
!31 = !{ptr @mtk_drm_crtc_create.__UNIQUE_ID_ddebug321, !30, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!32 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_crtc.c", i32 272, i32 2}
!34 = !{ptr @mtk_crtc_funcs, !35, !"mtk_crtc_funcs", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_crtc.c", i32 746, i32 36}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_crtc.c", i32 605, i32 3}
!38 = !{ptr @mtk_crtc_helper_funcs, !39, !"mtk_crtc_helper_funcs", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_crtc.c", i32 757, i32 43}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_crtc.c", i32 722, i32 3}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_crtc.c", i32 662, i32 2}
!44 = !{ptr @__func__.mtk_drm_crtc_atomic_enable, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_crtc.c", i32 666, i32 3}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_crtc.c", i32 354, i32 3}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_crtc.c", i32 360, i32 3}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_crtc.c", i32 366, i32 3}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_crtc.c", i32 233, i32 4}
!55 = !{ptr @__func__.mtk_drm_crtc_atomic_disable, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_crtc.c", i32 687, i32 2}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/mediatek/mtk_drm_crtc.c", i32 130, i32 3}
!59 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @mtk_drm_cmdq_pkt_create._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @mtk_drm_cmdq_pkt_create._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = distinct !{null, !63, !"__already_done", i1 false, i1 false}
!63 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!64 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!66 = !{i32 1, !"wchar_size", i32 2}
!67 = !{i32 1, !"min_enum_size", i32 4}
!68 = !{i32 8, !"branch-target-enforcement", i32 0}
!69 = !{i32 8, !"sign-return-address", i32 0}
!70 = !{i32 8, !"sign-return-address-all", i32 0}
!71 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!72 = !{i32 7, !"uwtable", i32 1}
!73 = !{i32 7, !"frame-pointer", i32 2}
!74 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!75 = !{i8 0, i8 2}
!76 = !{!"branch_weights", i32 1, i32 2000}
!77 = distinct !{!77, !78}
!78 = !{!"llvm.loop.peeled.count", i32 2}
!79 = !{i64 2148746504, i64 2148746509, i64 2148746522, i64 2148746566, i64 2148746600, i64 2148746621}
!80 = !{!"branch_weights", i32 2000, i32 1}
!81 = !{i64 2156880625}
!82 = !{!"auto-init"}
!83 = !{i64 2148264108}
!84 = !{i64 748931, i64 748956, i64 748978, i64 748994, i64 749006, i64 749026, i64 749050, i64 749066, i64 749078}
!85 = !{i64 2148264296}
!86 = distinct !{!86, !78}
!87 = distinct !{!87, !78}
