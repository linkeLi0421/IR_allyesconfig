; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/sti/sti_gdp.c_pt.bc'
source_filename = "../drivers/gpu/drm/sti/sti_gdp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_plane_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_info_list = type { ptr, ptr, i32, ptr }
%struct.gdp_format_to_str = type { i32, [20 x i8] }
%struct.atomic_t = type { i32 }
%struct.sti_gdp = type { %struct.sti_plane, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, i8, [2 x %struct.sti_gdp_node_list], ptr }
%struct.sti_plane = type { %struct.drm_plane, i32, i32, %struct.sti_fps_info }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
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
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.sti_fps_info = type { i8, i32, i32, i32, i32, i64, [128 x i8], [128 x i8] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.sti_gdp_node_list = type { ptr, i32, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.sti_gdp_node = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.86, ptr, i32, ptr, i8, i32 }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.86 = type { i32, ptr }
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.drm_info_node = type { ptr, ptr, %struct.list_head, ptr }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_planes_state = type { ptr, ptr, ptr, ptr }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.sti_compositor = type { ptr, ptr, %struct.sti_compositor_data, ptr, ptr, ptr, ptr, ptr, ptr, [2 x ptr], [1 x ptr], [2 x ptr], [2 x %struct.notifier_block] }
%struct.sti_compositor_data = type { i32, [9 x %struct.sti_compositor_subdev_descriptor] }
%struct.sti_compositor_subdev_descriptor = type { i32, i32, i32 }
%struct.drm_gem_cma_object = type { %struct.drm_gem_object, i32, ptr, ptr, i8 }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.83, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.83 = type { [4 x i8] }

@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to allocate memory for GDP\0A\00", [61 x i8] zeroinitializer }, align 32
@sti_gdp_plane_helpers_funcs = internal constant { %struct.drm_plane_funcs, [44 x i8] } { %struct.drm_plane_funcs { ptr @drm_atomic_helper_update_plane, ptr @drm_atomic_helper_disable_plane, ptr @drm_plane_cleanup, ptr @sti_plane_reset, ptr null, ptr @drm_atomic_helper_plane_duplicate_state, ptr @drm_atomic_helper_plane_destroy_state, ptr null, ptr null, ptr @sti_gdp_late_register, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@gdp_supported_formats = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 875713112, i32 875709016, i32 875713089, i32 875708993, i32 842093121, i32 892424769, i32 909199186, i32 875710290], [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to initialize universal plane\0A\00", [58 x i8] zeroinitializer }, align 32
@sti_gdp_helpers_funcs = internal constant { %struct.drm_plane_helper_funcs, [36 x i8] } { %struct.drm_plane_helper_funcs { ptr null, ptr null, ptr @sti_gdp_atomic_check, ptr @sti_gdp_atomic_update, ptr @sti_gdp_atomic_disable, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Vsync event received => disable %s\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"unsupported event: %lu\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Warning: cannot unregister VTG notifier\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to allocate memory for GDP node\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Mem alignment failed\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"node[%d].top_field=%p\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"node[%d].btm_field=%p\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"st,stih407-compositor\00", [42 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pix_gdp1\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pix_gdp2\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pix_gdp3\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pix_gdp4\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"GDP id not recognized\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Cannot get %s clock\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"main_parent\00", [20 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Cannot get main_parent clock\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"aux_parent\00", [21 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Cannot get aux_parent clock\0A\00", [35 x i8] zeroinitializer }, align 32
@gdp0_debugfs_files = internal global { [2 x %struct.drm_info_list], [32 x i8] } { [2 x %struct.drm_info_list] [%struct.drm_info_list { ptr @.str.21, ptr @gdp_dbg_show, i32 0, ptr null }, %struct.drm_info_list { ptr @.str.22, ptr @gdp_node_dbg_show, i32 0, ptr null }], [32 x i8] zeroinitializer }, align 32
@gdp1_debugfs_files = internal global { [2 x %struct.drm_info_list], [32 x i8] } { [2 x %struct.drm_info_list] [%struct.drm_info_list { ptr @.str.65, ptr @gdp_dbg_show, i32 0, ptr null }, %struct.drm_info_list { ptr @.str.66, ptr @gdp_node_dbg_show, i32 0, ptr null }], [32 x i8] zeroinitializer }, align 32
@gdp2_debugfs_files = internal global { [2 x %struct.drm_info_list], [32 x i8] } { [2 x %struct.drm_info_list] [%struct.drm_info_list { ptr @.str.67, ptr @gdp_dbg_show, i32 0, ptr null }, %struct.drm_info_list { ptr @.str.68, ptr @gdp_node_dbg_show, i32 0, ptr null }], [32 x i8] zeroinitializer }, align 32
@gdp3_debugfs_files = internal global { [2 x %struct.drm_info_list], [32 x i8] } { [2 x %struct.drm_info_list] [%struct.drm_info_list { ptr @.str.69, ptr @gdp_dbg_show, i32 0, ptr null }, %struct.drm_info_list { ptr @.str.70, ptr @gdp_node_dbg_show, i32 0, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gdp0\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gdp0_node\00", [22 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: (vaddr = 0x%p)\00", [45 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\0A  %-25s 0x%08X\00", [16 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"GAM_GDP_CTL\00", [20 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"GAM_GDP_AGC\00", [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"GAM_GDP_VPO\00", [20 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"GAM_GDP_VPS\00", [20 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"GAM_GDP_PML\00", [20 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"GAM_GDP_PMP\00", [20 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"GAM_GDP_SIZE\00", [19 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"GAM_GDP_NVN\00", [20 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"GAM_GDP_KEY1\00", [19 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"GAM_GDP_KEY2\00", [19 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"GAM_GDP_PPT\00", [20 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"GAM_GDP_CML\00", [20 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"GAM_GDP_MST\00", [20 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\0A\0A\00", [29 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"  Not connected to any DRM CRTC\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"  Connected to DRM CRTC #%d (%s)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\09Color:\00", [24 x i8] zeroinitializer }, align 32
@gdp_format_to_str = internal global { [9 x %struct.gdp_format_to_str], [40 x i8] } { [9 x %struct.gdp_format_to_str] [%struct.gdp_format_to_str { i32 0, [20 x i8] c"RGB565\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.gdp_format_to_str { i32 1, [20 x i8] c"RGB888\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.gdp_format_to_str { i32 2, [20 x i8] c"RGB888_32\00\00\00\00\00\00\00\00\00\00\00" }, %struct.gdp_format_to_str { i32 8388674, [20 x i8] c"XBGR8888\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.gdp_format_to_str { i32 4, [20 x i8] c"ARGB8565\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.gdp_format_to_str { i32 5, [20 x i8] c"ARGB8888\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.gdp_format_to_str { i32 8388677, [20 x i8] c"ABGR8888\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.gdp_format_to_str { i32 6, [20 x i8] c"ARGB1555\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.gdp_format_to_str { i32 7, [20 x i8] c"ARGB4444\00\00\00\00\00\00\00\00\00\00\00\00" }], [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"<UNKNOWN>\00", [22 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\09WaitNextVsync:%d\00", [46 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\09xdo:%4d\09ydo:%4d\00", [47 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\09xds:%4d\09yds:%4d\00", [47 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\09%d x %d\00", [23 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\09Virt @: %p\00", [20 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\09Not displayed on mixer!\00", [39 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\09BUFFER UNDERFLOW!\00", [45 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\0A%s[%d].top\00", [20 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\0A%s[%d].btm\00", [20 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\09@:0x%p\00", [24 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\0A\09CTL  0x%08X\00", [18 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\0A\09AGC  0x%08X\00", [18 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\0A\09VPO  0x%08X\00", [18 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\0A\09VPS  0x%08X\00", [18 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\0A\09PML  0x%08X\00", [18 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\0A\09PMP  0x%08X\00", [18 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\0A\09SIZE 0x%08X\00", [18 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\0A\09NVN  0x%08X\00", [18 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\0A\09KEY1 0x%08X\00", [18 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\0A\09KEY2 0x%08X\00", [18 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\0A\09PPT  0x%08X\00", [18 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\0A\09CML  0x%08X\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gdp1\00", [27 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gdp1_node\00", [22 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gdp2\00", [27 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gdp2_node\00", [22 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gdp3\00", [27 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gdp3_node\00", [22 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Format not supported by GDP %.4s\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Can't get CMA GEM object for fb\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Cannot set rate (%dHz) for gdp\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"CRTC:%d (%s) drm plane:%d (%s)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s dst=(%dx%d)@(%d,%d) - src=(%dx%d)@(%d,%d)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"No change, not posting cmd\0A\00", [36 x i8] zeroinitializer }, align 32
@sti_gdp_atomic_update.__UNIQUE_ID_ddebug352 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, i8 0, i8 -64, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sti_drm\00", [24 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sti_gdp_atomic_update\00", [42 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/gpu/drm/sti/sti_gdp.c\00", [34 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s %s top_node:0x%p btm_node:0x%p\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drm FB:%d format:%.4s phys@:0x%lx\0A\00", [61 x i8] zeroinitializer }, align 32
@sti_gdp_atomic_update.__UNIQUE_ID_ddebug353 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.82, i8 0, i8 -49, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Current NVN:0x%X\0A\00", [46 x i8] zeroinitializer }, align 32
@sti_gdp_atomic_update.__UNIQUE_ID_ddebug354 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.83, i8 0, i8 -48, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Posted buff: %lx current buff: %x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s first update (or invalid node)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"inconsistent NVN for %s: 0x%08X\0A\00", [63 x i8] zeroinitializer }, align 32
@sti_gdp_get_dst.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.77, ptr @.str.86, ptr @.str.79, ptr @.str.87, i8 0, i8 -104, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sti_gdp_get_dst\00", [16 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"WARNING: GDP scale not supported, will crop\0A\00", [51 x i8] zeroinitializer }, align 32
@sti_gdp_get_dst.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.77, ptr @.str.86, ptr @.str.79, ptr @.str.88, i8 0, i8 -103, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"WARNING: GDP scale not supported, will clamp\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Warning, NVN 0x%08X for %s does not match any node\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drm plane:%d not enabled\0A\00", [38 x i8] zeroinitializer }, align 32
@switch.table.sti_gdp_create = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], [16 x i8] zeroinitializer }, align 32
@switch.table.sti_gdp_late_register = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @gdp0_debugfs_files, ptr @gdp1_debugfs_files, ptr @gdp2_debugfs_files, ptr @gdp3_debugfs_files], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.91 = internal global [10 x i64] [i64 8, i64 32, i64 842093121, i64 875708993, i64 875709016, i64 875710290, i64 875713089, i64 875713112, i64 892424769, i64 909199186]
@__sancov_gen_cov_switch_values.92 = internal global [10 x i64] [i64 8, i64 32, i64 842093121, i64 875708993, i64 875709016, i64 875710290, i64 875713089, i64 875713112, i64 892424769, i64 909199186]
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 925, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant [28 x i8] c"sti_gdp_plane_helpers_funcs\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 904, i32 37 }
@___asan_gen_.99 = private unnamed_addr constant [22 x i8] c"gdp_supported_formats\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 135, i32 23 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 945, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant [22 x i8] c"sti_gdp_helpers_funcs\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 890, i32 44 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 494, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 508, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 458, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 467, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 528, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 535, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 541, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 551, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 556, i32 34 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 562, i32 15 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 565, i32 15 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 568, i32 15 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 571, i32 15 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 574, i32 4 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 580, i32 4 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 582, i32 49 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 584, i32 4 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 586, i32 48 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 588, i32 4 }
@___asan_gen_.165 = private unnamed_addr constant [19 x i8] c"gdp0_debugfs_files\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 296, i32 29 }
@___asan_gen_.168 = private unnamed_addr constant [19 x i8] c"gdp1_debugfs_files\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 301, i32 29 }
@___asan_gen_.171 = private unnamed_addr constant [19 x i8] c"gdp2_debugfs_files\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 306, i32 29 }
@___asan_gen_.174 = private unnamed_addr constant [19 x i8] c"gdp3_debugfs_files\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 311, i32 29 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 297, i32 4 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 298, i32 4 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 224, i32 16 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 227, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 229, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 230, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 232, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 234, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 235, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 236, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 238, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 240, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 241, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 242, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 244, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 245, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 248, i32 14 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 250, i32 15 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 252, i32 17 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 153, i32 14 }
@___asan_gen_.240 = private unnamed_addr constant [18 x i8] c"gdp_format_to_str\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 44, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 161, i32 15 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 163, i32 16 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 168, i32 16 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 173, i32 16 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 178, i32 16 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 198, i32 17 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 204, i32 15 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 210, i32 15 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 287, i32 17 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 289, i32 17 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 260, i32 16 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 261, i32 16 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 263, i32 16 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 264, i32 16 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 266, i32 16 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 268, i32 16 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 269, i32 16 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 270, i32 16 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 272, i32 16 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 273, i32 16 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 274, i32 16 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 275, i32 16 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 277, i32 16 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 302, i32 4 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 303, i32 4 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 307, i32 4 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 308, i32 4 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 312, i32 4 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 313, i32 4 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 654, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 660, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 684, i32 4 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 690, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 693, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 738, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 768, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 781, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 829, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 831, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 838, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 410, i32 2 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 609, i32 3 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 613, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 442, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.388 = private constant [33 x i8] c"../drivers/gpu/drm/sti/sti_gdp.c\00", align 1
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.388, i32 877, i32 3 }
@___asan_gen_.390 = private unnamed_addr constant [28 x i8] c"switch.table.sti_gdp_create\00", align 1
@___asan_gen_.391 = private unnamed_addr constant [35 x i8] c"switch.table.sti_gdp_late_register\00", align 1
@llvm.compiler.used = appending global [101 x ptr] [ptr @.str, ptr @sti_gdp_plane_helpers_funcs, ptr @gdp_supported_formats, ptr @.str.1, ptr @sti_gdp_helpers_funcs, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @gdp0_debugfs_files, ptr @gdp1_debugfs_files, ptr @gdp2_debugfs_files, ptr @gdp3_debugfs_files, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @gdp_format_to_str, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @switch.table.sti_gdp_create, ptr @switch.table.sti_gdp_late_register], section "llvm.metadata"
@0 = internal global [101 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_gdp_plane_helpers_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gdp_supported_formats to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_gdp_helpers_funcs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gdp0_debugfs_files to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gdp1_debugfs_files to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gdp2_debugfs_files to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gdp3_debugfs_files to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gdp_format_to_str to i32), i32 216, i32 256, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sti_gdp_create to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sti_gdp_late_register to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sti_gdp_create(ptr noundef %drm_dev, ptr noundef %dev, i32 noundef %desc, ptr noundef %baseaddr, i32 noundef %possible_crtcs, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  %dma_addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 896, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev1 = getelementptr inbounds %struct.sti_gdp, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %dev1, align 8
  %regs = getelementptr inbounds %struct.sti_gdp, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %baseaddr, ptr %regs, align 4
  %desc2 = getelementptr inbounds %struct.sti_plane, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %desc2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %desc, ptr %desc2, align 8
  %status = getelementptr inbounds %struct.sti_plane, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 4, ptr %status, align 4
  %vtg_field_nb = getelementptr inbounds %struct.sti_gdp, ptr %call.i, i32 0, i32 6
  %4 = ptrtoint ptr %vtg_field_nb to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @sti_gdp_field_cb, ptr %vtg_field_nb, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %5 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma_addr.i) #4
  %7 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %dma_addr.i, align 4, !annotation !207
  %call.i.i = call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 256, ptr noundef nonnull %dma_addr.i, i32 noundef 3264, i32 noundef 4) #4
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end.cleanup42.sink.split.i_crit_edge, label %if.end.i

if.end.cleanup42.sink.split.i_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup42.sink.split.i

if.end.i:                                         ; preds = %if.end
  %8 = call ptr @memset(ptr %call.i.i, i32 0, i32 256)
  %9 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dma_addr.i, align 4
  %and.i = and i32 %10, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.cleanup42.sink.split.i_crit_edge

if.end.i.cleanup42.sink.split.i_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup42.sink.split.i

if.end4.i:                                        ; preds = %if.end.i
  %arrayidx.i = getelementptr %struct.sti_gdp, ptr %call.i, i32 0, i32 8, i32 0
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i.i, ptr %arrayidx.i, align 4
  %top_field_paddr.i = getelementptr %struct.sti_gdp, ptr %call.i, i32 0, i32 8, i32 0, i32 1
  %12 = ptrtoint ptr %top_field_paddr.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %10, ptr %top_field_paddr.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.8, i32 noundef 0, ptr noundef nonnull %call.i.i) #4
  %13 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dma_addr.i, align 4
  %add.i = add i32 %14, 64
  store i32 %add.i, ptr %dma_addr.i, align 4
  %and7.i = and i32 %14, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %if.end4.i.cleanup42.sink.split.i_crit_edge

if.end4.i.cleanup42.sink.split.i_crit_edge:       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup42.sink.split.i

if.end10.i:                                       ; preds = %if.end4.i
  %add.ptr.i = getelementptr i8, ptr %call.i.i, i32 64
  %btm_field.i = getelementptr %struct.sti_gdp, ptr %call.i, i32 0, i32 8, i32 0, i32 2
  %15 = ptrtoint ptr %btm_field.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr.i, ptr %btm_field.i, align 4
  %btm_field_paddr.i = getelementptr %struct.sti_gdp, ptr %call.i, i32 0, i32 8, i32 0, i32 3
  %16 = ptrtoint ptr %btm_field_paddr.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add.i, ptr %btm_field_paddr.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.9, i32 noundef 0, ptr noundef %add.ptr.i) #4
  %17 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dma_addr.i, align 4
  %add16.i = add i32 %18, 64
  store i32 %add16.i, ptr %dma_addr.i, align 4
  %and.1.i = and i32 %18, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %tobool2.not.1.i = icmp eq i32 %and.1.i, 0
  br i1 %tobool2.not.1.i, label %if.end4.1.i, label %if.end10.i.cleanup42.sink.split.i_crit_edge

if.end10.i.cleanup42.sink.split.i_crit_edge:      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup42.sink.split.i

if.end4.1.i:                                      ; preds = %if.end10.i
  %add.ptr15.i = getelementptr i8, ptr %call.i.i, i32 128
  %arrayidx.1.i = getelementptr %struct.sti_gdp, ptr %call.i, i32 0, i32 8, i32 1
  %19 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr15.i, ptr %arrayidx.1.i, align 4
  %top_field_paddr.1.i = getelementptr %struct.sti_gdp, ptr %call.i, i32 0, i32 8, i32 1, i32 1
  %20 = ptrtoint ptr %top_field_paddr.1.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add16.i, ptr %top_field_paddr.1.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.8, i32 noundef 1, ptr noundef %add.ptr15.i) #4
  %21 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dma_addr.i, align 4
  %add.1.i = add i32 %22, 64
  store i32 %add.1.i, ptr %dma_addr.i, align 4
  %and7.1.i = and i32 %22, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.1.i)
  %tobool8.not.1.i = icmp eq i32 %and7.1.i, 0
  br i1 %tobool8.not.1.i, label %if.end10.1.i, label %if.end4.1.i.cleanup42.sink.split.i_crit_edge

if.end4.1.i.cleanup42.sink.split.i_crit_edge:     ; preds = %if.end4.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup42.sink.split.i

if.end10.1.i:                                     ; preds = %if.end4.1.i
  %add.ptr.1.i = getelementptr i8, ptr %call.i.i, i32 192
  %btm_field.1.i = getelementptr %struct.sti_gdp, ptr %call.i, i32 0, i32 8, i32 1, i32 2
  %23 = ptrtoint ptr %btm_field.1.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr.1.i, ptr %btm_field.1.i, align 4
  %btm_field_paddr.1.i = getelementptr %struct.sti_gdp, ptr %call.i, i32 0, i32 8, i32 1, i32 3
  %24 = ptrtoint ptr %btm_field_paddr.1.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add.1.i, ptr %btm_field_paddr.1.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.9, i32 noundef 1, ptr noundef %add.ptr.1.i) #4
  %25 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dma_addr.i, align 4
  %add16.1.i = add i32 %26, 64
  store i32 %add16.1.i, ptr %dma_addr.i, align 4
  %call17.i = call i32 @of_device_is_compatible(ptr noundef %6, ptr noundef nonnull @.str.10) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end10.1.i.sti_gdp_init.exit_crit_edge, label %if.then19.i

if.end10.1.i.sti_gdp_init.exit_crit_edge:         ; preds = %if.end10.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sti_gdp_init.exit

if.then19.i:                                      ; preds = %if.end10.1.i
  %27 = ptrtoint ptr %desc2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %desc2, align 8
  %switch.tableidx = add i32 %28, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %29 = icmp ult i32 %switch.tableidx, 4
  br i1 %29, label %switch.lookup, label %if.then19.i.cleanup42.sink.split.i_crit_edge

if.then19.i.cleanup42.sink.split.i_crit_edge:     ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup42.sink.split.i

switch.lookup:                                    ; preds = %if.then19.i
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.sti_gdp_create, i32 0, i32 %switch.tableidx
  %30 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %30)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %31 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev1, align 8
  %call24.i = call ptr @devm_clk_get(ptr noundef %32, ptr noundef nonnull %switch.load) #4
  %clk_pix.i = getelementptr inbounds %struct.sti_gdp, ptr %call.i, i32 0, i32 3
  %33 = ptrtoint ptr %clk_pix.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call24.i, ptr %clk_pix.i, align 8
  %cmp.i.i = icmp ugt ptr %call24.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then27.i, label %switch.lookup.if.end28.i_crit_edge

switch.lookup.if.end28.i_crit_edge:               ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end28.i

if.then27.i:                                      ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.16, ptr noundef nonnull %switch.load) #4
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then27.i, %switch.lookup.if.end28.i_crit_edge
  %34 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev1, align 8
  %call30.i = call ptr @devm_clk_get(ptr noundef %35, ptr noundef nonnull @.str.17) #4
  %clk_main_parent.i = getelementptr inbounds %struct.sti_gdp, ptr %call.i, i32 0, i32 4
  %36 = ptrtoint ptr %clk_main_parent.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call30.i, ptr %clk_main_parent.i, align 4
  %cmp.i80.i = icmp ugt ptr %call30.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i80.i, label %if.then33.i, label %if.end28.i.if.end34.i_crit_edge

if.end28.i.if.end34.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end34.i

if.then33.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18) #4
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.then33.i, %if.end28.i.if.end34.i_crit_edge
  %37 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev1, align 8
  %call36.i = call ptr @devm_clk_get(ptr noundef %38, ptr noundef nonnull @.str.19) #4
  %clk_aux_parent.i = getelementptr inbounds %struct.sti_gdp, ptr %call.i, i32 0, i32 5
  %39 = ptrtoint ptr %clk_aux_parent.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call36.i, ptr %clk_aux_parent.i, align 8
  %cmp.i81.i = icmp ugt ptr %call36.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i81.i, label %if.end34.i.cleanup42.sink.split.i_crit_edge, label %if.end34.i.sti_gdp_init.exit_crit_edge

if.end34.i.sti_gdp_init.exit_crit_edge:           ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sti_gdp_init.exit

if.end34.i.cleanup42.sink.split.i_crit_edge:      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup42.sink.split.i

cleanup42.sink.split.i:                           ; preds = %if.end34.i.cleanup42.sink.split.i_crit_edge, %if.then19.i.cleanup42.sink.split.i_crit_edge, %if.end4.1.i.cleanup42.sink.split.i_crit_edge, %if.end10.i.cleanup42.sink.split.i_crit_edge, %if.end4.i.cleanup42.sink.split.i_crit_edge, %if.end.i.cleanup42.sink.split.i_crit_edge, %if.end.cleanup42.sink.split.i_crit_edge
  %.str.20.sink.i = phi ptr [ @.str.6, %if.end.cleanup42.sink.split.i_crit_edge ], [ @.str.7, %if.end10.i.cleanup42.sink.split.i_crit_edge ], [ @.str.7, %if.end.i.cleanup42.sink.split.i_crit_edge ], [ @.str.7, %if.end4.1.i.cleanup42.sink.split.i_crit_edge ], [ @.str.7, %if.end4.i.cleanup42.sink.split.i_crit_edge ], [ @.str.15, %if.then19.i.cleanup42.sink.split.i_crit_edge ], [ @.str.20, %if.end34.i.cleanup42.sink.split.i_crit_edge ]
  call void (ptr, ...) @__drm_err(ptr noundef nonnull %.str.20.sink.i) #4
  br label %sti_gdp_init.exit

sti_gdp_init.exit:                                ; preds = %cleanup42.sink.split.i, %if.end34.i.sti_gdp_init.exit_crit_edge, %if.end10.1.i.sti_gdp_init.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_addr.i) #4
  %call5 = call i32 (ptr, ptr, i32, ptr, ptr, i32, ptr, i32, ptr, ...) @drm_universal_plane_init(ptr noundef %drm_dev, ptr noundef nonnull %call.i, i32 noundef %possible_crtcs, ptr noundef nonnull @sti_gdp_plane_helpers_funcs, ptr noundef nonnull @gdp_supported_formats, i32 noundef 8, ptr noundef null, i32 noundef %type, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.then7

if.then7:                                         ; preds = %sti_gdp_init.exit
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #4
  call void @devm_kfree(ptr noundef %dev, ptr noundef nonnull %call.i) #4
  br label %cleanup

if.end8:                                          ; preds = %sti_gdp_init.exit
  call void @__sanitizer_cov_trace_pc() #6
  %helper_private.i = getelementptr inbounds %struct.drm_plane, ptr %call.i, i32 0, i32 18
  %40 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @sti_gdp_helpers_funcs, ptr %helper_private.i, align 8
  call void @sti_plane_init_property(ptr noundef nonnull %call.i, i32 noundef %type) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then7, %if.then
  %retval.0 = phi ptr [ null, %if.then7 ], [ %call.i, %if.end8 ], [ null, %if.then ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sti_gdp_field_cb(ptr noundef %nb, i32 noundef %event, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr i8, ptr %nb, i32 -312
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp eq i32 %1, 3
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %nb, i32 -844
  %call = tail call ptr @sti_plane_to_str(ptr noundef %add.ptr) #4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.2, ptr noundef %call) #4
  %call.i = tail call ptr @sti_plane_to_str(ptr noundef %add.ptr) #4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.4, ptr noundef %call.i) #4
  %arrayidx.i = getelementptr i8, ptr %nb, i32 16
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %gam_gdp_ppt.i = getelementptr inbounds %struct.sti_gdp_node, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %gam_gdp_ppt.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gam_gdp_ppt.i, align 4
  %or.i = or i32 %5, 3
  store i32 %or.i, ptr %gam_gdp_ppt.i, align 4
  %btm_field.i = getelementptr i8, ptr %nb, i32 24
  %6 = ptrtoint ptr %btm_field.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %btm_field.i, align 4
  %gam_gdp_ppt3.i = getelementptr inbounds %struct.sti_gdp_node, ptr %7, i32 0, i32 13
  %8 = ptrtoint ptr %gam_gdp_ppt3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %gam_gdp_ppt3.i, align 4
  %or4.i = or i32 %9, 3
  store i32 %or4.i, ptr %gam_gdp_ppt3.i, align 4
  %arrayidx.1.i = getelementptr i8, ptr %nb, i32 32
  %10 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.1.i, align 4
  %gam_gdp_ppt.1.i = getelementptr inbounds %struct.sti_gdp_node, ptr %11, i32 0, i32 13
  %12 = ptrtoint ptr %gam_gdp_ppt.1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %gam_gdp_ppt.1.i, align 4
  %or.1.i = or i32 %13, 3
  store i32 %or.1.i, ptr %gam_gdp_ppt.1.i, align 4
  %btm_field.1.i = getelementptr i8, ptr %nb, i32 40
  %14 = ptrtoint ptr %btm_field.1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %btm_field.1.i, align 4
  %gam_gdp_ppt3.1.i = getelementptr inbounds %struct.sti_gdp_node, ptr %15, i32 0, i32 13
  %16 = ptrtoint ptr %gam_gdp_ppt3.1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %gam_gdp_ppt3.1.i, align 4
  %or4.1.i = or i32 %17, 3
  store i32 %or4.1.i, ptr %gam_gdp_ppt3.1.i, align 4
  %vtg.i = getelementptr i8, ptr %nb, i32 48
  %18 = ptrtoint ptr %vtg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vtg.i, align 4
  %call5.i = tail call i32 @sti_vtg_unregister_client(ptr noundef %19, ptr noundef %nb) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %if.then.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.5) #4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %clk_pix.i = getelementptr i8, ptr %nb, i32 -12
  %20 = ptrtoint ptr %clk_pix.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %clk_pix.i, align 8
  %tobool6.not.i = icmp eq ptr %21, null
  br i1 %tobool6.not.i, label %if.end.i.sti_gdp_disable.exit_crit_edge, label %if.then7.i

if.end.i.sti_gdp_disable.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sti_gdp_disable.exit

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_disable(ptr noundef nonnull %21) #4
  tail call void @clk_unprepare(ptr noundef nonnull %21) #4
  br label %sti_gdp_disable.exit

sti_gdp_disable.exit:                             ; preds = %if.then7.i, %if.end.i.sti_gdp_disable.exit_crit_edge
  %22 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 4, ptr %status, align 4
  %23 = ptrtoint ptr %vtg.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %vtg.i, align 4
  br label %if.end

if.end:                                           ; preds = %sti_gdp_disable.exit, %entry.if.end_crit_edge
  %24 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values)
  switch i32 %event, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %is_curr_top = getelementptr i8, ptr %nb, i32 12
  %25 = ptrtoint ptr %is_curr_top to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %is_curr_top, align 8
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %is_curr_top3 = getelementptr i8, ptr %nb, i32 12
  %26 = ptrtoint ptr %is_curr_top3 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %is_curr_top3, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3, i32 noundef %event) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb2, %sw.bb
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_universal_plane_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sti_plane_init_property(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sti_plane_to_str(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sti_vtg_unregister_client(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_update_plane(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_disable_plane(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_plane_cleanup(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sti_plane_reset(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_plane_duplicate_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_plane_destroy_state(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sti_gdp_late_register(ptr noundef %drm_plane) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %desc.i = getelementptr inbounds %struct.sti_plane, ptr %drm_plane, i32 0, i32 1
  %0 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %desc.i, align 8
  %switch.tableidx = add i32 %1, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 4
  br i1 %2, label %switch.lookup, label %entry.gdp_debugfs_init.exit_crit_edge

entry.gdp_debugfs_init.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %gdp_debugfs_init.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %drm_plane to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %drm_plane, align 8
  %primary = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %primary, align 4
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.sti_gdp_late_register, i32 0, i32 %switch.tableidx
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %data.i = getelementptr %struct.drm_info_list, ptr %switch.load, i32 0, i32 3
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %drm_plane, ptr %data.i, align 4
  %data.1.i = getelementptr %struct.drm_info_list, ptr %switch.load, i32 1, i32 3
  %9 = ptrtoint ptr %data.1.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %drm_plane, ptr %data.1.i, align 4
  %debugfs_root.i = getelementptr inbounds %struct.drm_minor, ptr %6, i32 0, i32 4
  %10 = ptrtoint ptr %debugfs_root.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %debugfs_root.i, align 4
  tail call void @drm_debugfs_create_files(ptr noundef nonnull %switch.load, i32 noundef 2, ptr noundef %11, ptr noundef %6) #4
  br label %gdp_debugfs_init.exit

gdp_debugfs_init.exit:                            ; preds = %switch.lookup, %entry.gdp_debugfs_init.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %switch.lookup ], [ -22, %entry.gdp_debugfs_init.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_debugfs_create_files(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gdp_dbg_show(ptr noundef %s, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %info_ent = getelementptr inbounds %struct.drm_info_node, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %info_ent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info_ent, align 4
  %data1 = getelementptr inbounds %struct.drm_info_list, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data1, align 4
  %mutex = getelementptr inbounds %struct.drm_plane, ptr %5, i32 0, i32 3
  %call = tail call i32 @drm_modeset_lock(ptr noundef %mutex, ptr noundef null) #4
  %state = getelementptr inbounds %struct.drm_plane, ptr %5, i32 0, i32 19
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state, align 4
  %crtc3 = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %crtc3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %crtc3, align 4
  tail call void @drm_modeset_unlock(ptr noundef %mutex) #4
  %call6 = tail call ptr @sti_plane_to_str(ptr noundef %5) #4
  %regs = getelementptr inbounds %struct.sti_gdp, ptr %5, i32 0, i32 2
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.23, ptr noundef %call6, ptr noundef %11) #4
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #4, !srcloc !208
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !209
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef %15) #4
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #4, !srcloc !208
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !210
  tail call fastcc void @gdp_dbg_ctl(ptr noundef %s, i32 noundef %19)
  %20 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs, align 4
  %add.ptr20 = getelementptr i8, ptr %21, i32 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #4, !srcloc !208
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !211
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.26, i32 noundef %23) #4
  %24 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs, align 4
  %add.ptr27 = getelementptr i8, ptr %25, i32 12
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27) #4, !srcloc !208
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !212
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.27, i32 noundef %27) #4
  %28 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs, align 4
  %add.ptr34 = getelementptr i8, ptr %29, i32 12
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr34) #4, !srcloc !208
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !213
  %and.i = and i32 %31, 65535
  %32 = lshr i32 %31, 16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.44, i32 noundef %and.i, i32 noundef %32) #4
  %33 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs, align 4
  %add.ptr41 = getelementptr i8, ptr %34, i32 16
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41) #4, !srcloc !208
  %36 = tail call i32 @llvm.bswap.i32(i32 %35)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !214
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.28, i32 noundef %36) #4
  %37 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs, align 4
  %add.ptr48 = getelementptr i8, ptr %38, i32 16
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr48) #4, !srcloc !208
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !215
  %and.i197 = and i32 %40, 65535
  %41 = lshr i32 %40, 16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.45, i32 noundef %and.i197, i32 noundef %41) #4
  %42 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs, align 4
  %add.ptr55 = getelementptr i8, ptr %43, i32 20
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr55) #4, !srcloc !208
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !216
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.29, i32 noundef %45) #4
  %46 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs, align 4
  %add.ptr62 = getelementptr i8, ptr %47, i32 24
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr62) #4, !srcloc !208
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !217
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.30, i32 noundef %49) #4
  %50 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs, align 4
  %add.ptr69 = getelementptr i8, ptr %51, i32 28
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr69) #4, !srcloc !208
  %53 = tail call i32 @llvm.bswap.i32(i32 %52)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !218
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.31, i32 noundef %53) #4
  %54 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs, align 4
  %add.ptr76 = getelementptr i8, ptr %55, i32 28
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr76) #4, !srcloc !208
  %57 = tail call i32 @llvm.bswap.i32(i32 %56)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !219
  %and.i198 = and i32 %57, 65535
  %58 = lshr i32 %57, 16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.46, i32 noundef %and.i198, i32 noundef %58) #4
  %59 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regs, align 4
  %add.ptr83 = getelementptr i8, ptr %60, i32 36
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr83) #4, !srcloc !208
  %62 = tail call i32 @llvm.bswap.i32(i32 %61)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !220
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.32, i32 noundef %62) #4
  %63 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regs, align 4
  %add.ptr90 = getelementptr i8, ptr %64, i32 36
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr90) #4, !srcloc !208
  %66 = tail call i32 @llvm.bswap.i32(i32 %65)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !221
  %top_field_paddr.i = getelementptr %struct.sti_gdp, ptr %5, i32 0, i32 8, i32 0, i32 1
  %67 = ptrtoint ptr %top_field_paddr.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %top_field_paddr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %66)
  %cmp1.i = icmp eq i32 %68, %66
  br i1 %cmp1.i, label %entry.if.then.i_crit_edge, label %if.end.i

entry.if.then.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i

if.then.i:                                        ; preds = %for.inc.i.if.then.i_crit_edge, %entry.if.then.i_crit_edge
  %i.027.lcssa.i = phi i32 [ 0, %entry.if.then.i_crit_edge ], [ 1, %for.inc.i.if.then.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.sti_gdp, ptr %5, i32 0, i32 8, i32 %i.027.lcssa.i
  br label %for.end.i

if.end.i:                                         ; preds = %entry
  %btm_field_paddr.i = getelementptr %struct.sti_gdp, ptr %5, i32 0, i32 8, i32 0, i32 3
  %69 = ptrtoint ptr %btm_field_paddr.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %btm_field_paddr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %66)
  %cmp6.i = icmp eq i32 %70, %66
  br i1 %cmp6.i, label %if.end.i.if.then7.i_crit_edge, label %for.inc.i

if.end.i.if.then7.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then7.i

if.then7.i:                                       ; preds = %if.end.1.i.if.then7.i_crit_edge, %if.end.i.if.then7.i_crit_edge
  %i.027.lcssa28.i = phi i32 [ 0, %if.end.i.if.then7.i_crit_edge ], [ 1, %if.end.1.i.if.then7.i_crit_edge ]
  %btm_field.i = getelementptr %struct.sti_gdp, ptr %5, i32 0, i32 8, i32 %i.027.lcssa28.i, i32 2
  br label %for.end.i

for.inc.i:                                        ; preds = %if.end.i
  %top_field_paddr.1.i = getelementptr %struct.sti_gdp, ptr %5, i32 0, i32 8, i32 1, i32 1
  %71 = ptrtoint ptr %top_field_paddr.1.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %top_field_paddr.1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %66)
  %cmp1.1.i = icmp eq i32 %72, %66
  br i1 %cmp1.1.i, label %for.inc.i.if.then.i_crit_edge, label %if.end.1.i

for.inc.i.if.then.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i

if.end.1.i:                                       ; preds = %for.inc.i
  %btm_field_paddr.1.i = getelementptr %struct.sti_gdp, ptr %5, i32 0, i32 8, i32 1, i32 3
  %73 = ptrtoint ptr %btm_field_paddr.1.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %btm_field_paddr.1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %66)
  %cmp6.1.i = icmp eq i32 %74, %66
  br i1 %cmp6.1.i, label %if.end.1.i.if.then7.i_crit_edge, label %if.end.1.i.gdp_dbg_nvn.exit_crit_edge

if.end.1.i.gdp_dbg_nvn.exit_crit_edge:            ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %gdp_dbg_nvn.exit

if.end.1.i.if.then7.i_crit_edge:                  ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then7.i

for.end.i:                                        ; preds = %if.then7.i, %if.then.i
  %base.0.in.i = phi ptr [ %arrayidx.i, %if.then.i ], [ %btm_field.i, %if.then7.i ]
  %75 = ptrtoint ptr %base.0.in.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %base.0.i = load ptr, ptr %base.0.in.i, align 4
  %tobool.not.i = icmp eq ptr %base.0.i, null
  br i1 %tobool.not.i, label %for.end.i.gdp_dbg_nvn.exit_crit_edge, label %if.then11.i

for.end.i.gdp_dbg_nvn.exit_crit_edge:             ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %gdp_dbg_nvn.exit

if.then11.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.47, ptr noundef nonnull %base.0.i) #4
  br label %gdp_dbg_nvn.exit

gdp_dbg_nvn.exit:                                 ; preds = %if.then11.i, %for.end.i.gdp_dbg_nvn.exit_crit_edge, %if.end.1.i.gdp_dbg_nvn.exit_crit_edge
  %76 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regs, align 4
  %add.ptr97 = getelementptr i8, ptr %77, i32 40
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr97) #4, !srcloc !208
  %79 = tail call i32 @llvm.bswap.i32(i32 %78)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !222
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.33, i32 noundef %79) #4
  %80 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %regs, align 4
  %add.ptr104 = getelementptr i8, ptr %81, i32 44
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr104) #4, !srcloc !208
  %83 = tail call i32 @llvm.bswap.i32(i32 %82)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !223
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.34, i32 noundef %83) #4
  %84 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regs, align 4
  %add.ptr111 = getelementptr i8, ptr %85, i32 52
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr111) #4, !srcloc !208
  %87 = tail call i32 @llvm.bswap.i32(i32 %86)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !224
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.35, i32 noundef %87) #4
  %88 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %regs, align 4
  %add.ptr118 = getelementptr i8, ptr %89, i32 52
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr118) #4, !srcloc !208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !225
  %91 = and i32 %90, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool.not.i200 = icmp eq i32 %91, 0
  br i1 %tobool.not.i200, label %gdp_dbg_nvn.exit.gdp_dbg_ppt.exit_crit_edge, label %if.then.i201

gdp_dbg_nvn.exit.gdp_dbg_ppt.exit_crit_edge:      ; preds = %gdp_dbg_nvn.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %gdp_dbg_ppt.exit

if.then.i201:                                     ; preds = %gdp_dbg_nvn.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.48) #4
  br label %gdp_dbg_ppt.exit

gdp_dbg_ppt.exit:                                 ; preds = %if.then.i201, %gdp_dbg_nvn.exit.gdp_dbg_ppt.exit_crit_edge
  %92 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %regs, align 4
  %add.ptr125 = getelementptr i8, ptr %93, i32 60
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr125) #4, !srcloc !208
  %95 = tail call i32 @llvm.bswap.i32(i32 %94)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !226
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.36, i32 noundef %95) #4
  %96 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %regs, align 4
  %add.ptr132 = getelementptr i8, ptr %97, i32 104
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr132) #4, !srcloc !208
  %99 = tail call i32 @llvm.bswap.i32(i32 %98)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !227
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.37, i32 noundef %99) #4
  %100 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %regs, align 4
  %add.ptr139 = getelementptr i8, ptr %101, i32 104
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr139) #4, !srcloc !208
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !228
  %103 = and i32 %102, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool.not.i204 = icmp eq i32 %103, 0
  br i1 %tobool.not.i204, label %gdp_dbg_ppt.exit.gdp_dbg_mst.exit_crit_edge, label %if.then.i205

gdp_dbg_ppt.exit.gdp_dbg_mst.exit_crit_edge:      ; preds = %gdp_dbg_ppt.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %gdp_dbg_mst.exit

if.then.i205:                                     ; preds = %gdp_dbg_ppt.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.49) #4
  br label %gdp_dbg_mst.exit

gdp_dbg_mst.exit:                                 ; preds = %if.then.i205, %gdp_dbg_ppt.exit.gdp_dbg_mst.exit_crit_edge
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.38) #4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %gdp_dbg_mst.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.39) #4
  br label %if.end

if.else:                                          ; preds = %gdp_dbg_mst.exit
  call void @__sanitizer_cov_trace_pc() #6
  %base = getelementptr inbounds %struct.drm_crtc, ptr %9, i32 0, i32 5
  %104 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %base, align 8
  %add.ptr144 = getelementptr i8, ptr %9, i32 -16
  %call145 = tail call ptr @sti_mixer_to_str(ptr noundef %add.ptr144) #4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.40, i32 noundef %105, ptr noundef %call145) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gdp_node_dbg_show(ptr noundef %s, ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %info_ent = getelementptr inbounds %struct.drm_info_node, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %info_ent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info_ent, align 4
  %data = getelementptr inbounds %struct.drm_info_list, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %call = tail call ptr @sti_plane_to_str(ptr noundef %5) #4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.50, ptr noundef %call, i32 noundef 0) #4
  %arrayidx = getelementptr %struct.sti_gdp, ptr %5, i32 0, i32 8, i32 0
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  tail call fastcc void @gdp_node_dump_node(ptr noundef %s, ptr noundef %7)
  %call2 = tail call ptr @sti_plane_to_str(ptr noundef %5) #4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.51, ptr noundef %call2, i32 noundef 0) #4
  %btm_field = getelementptr %struct.sti_gdp, ptr %5, i32 0, i32 8, i32 0, i32 2
  %8 = ptrtoint ptr %btm_field to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %btm_field, align 4
  tail call fastcc void @gdp_node_dump_node(ptr noundef %s, ptr noundef %9)
  %call.1 = tail call ptr @sti_plane_to_str(ptr noundef %5) #4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.50, ptr noundef %call.1, i32 noundef 1) #4
  %arrayidx.1 = getelementptr %struct.sti_gdp, ptr %5, i32 0, i32 8, i32 1
  %10 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.1, align 4
  tail call fastcc void @gdp_node_dump_node(ptr noundef %s, ptr noundef %11)
  %call2.1 = tail call ptr @sti_plane_to_str(ptr noundef %5) #4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.51, ptr noundef %call2.1, i32 noundef 1) #4
  %btm_field.1 = getelementptr %struct.sti_gdp, ptr %5, i32 0, i32 8, i32 1, i32 2
  %12 = ptrtoint ptr %btm_field.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %btm_field.1, align 4
  tail call fastcc void @gdp_node_dump_node(ptr noundef %s, ptr noundef %13)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_modeset_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gdp_dbg_ctl(ptr noundef %s, i32 noundef %val) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.41) #4
  %and = and i32 %val, 31
  %0 = load i32, ptr @gdp_format_to_str, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %and)
  %cmp1 = icmp eq i32 %0, %and
  br i1 %cmp1, label %entry.for.end.thread_crit_edge, label %for.inc

entry.for.end.thread_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.inc.7.for.end.thread_crit_edge, %for.inc.6.for.end.thread_crit_edge, %for.inc.5.for.end.thread_crit_edge, %for.inc.4.for.end.thread_crit_edge, %for.inc.3.for.end.thread_crit_edge, %for.inc.2.for.end.thread_crit_edge, %for.inc.1.for.end.thread_crit_edge, %for.inc.for.end.thread_crit_edge, %entry.for.end.thread_crit_edge
  %i.017.lcssa = phi i32 [ 0, %entry.for.end.thread_crit_edge ], [ 1, %for.inc.for.end.thread_crit_edge ], [ 2, %for.inc.1.for.end.thread_crit_edge ], [ 3, %for.inc.2.for.end.thread_crit_edge ], [ 4, %for.inc.3.for.end.thread_crit_edge ], [ 5, %for.inc.4.for.end.thread_crit_edge ], [ 6, %for.inc.5.for.end.thread_crit_edge ], [ 7, %for.inc.6.for.end.thread_crit_edge ], [ 8, %for.inc.7.for.end.thread_crit_edge ]
  %name = getelementptr [9 x %struct.gdp_format_to_str], ptr @gdp_format_to_str, i32 0, i32 %i.017.lcssa, i32 1
  tail call void @seq_puts(ptr noundef %s, ptr noundef %name) #4
  br label %if.end5

for.inc:                                          ; preds = %entry
  %1 = load i32, ptr getelementptr inbounds ([9 x %struct.gdp_format_to_str], ptr @gdp_format_to_str, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %and)
  %cmp1.1 = icmp eq i32 %1, %and
  br i1 %cmp1.1, label %for.inc.for.end.thread_crit_edge, label %for.inc.1

for.inc.for.end.thread_crit_edge:                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.thread

for.inc.1:                                        ; preds = %for.inc
  %2 = load i32, ptr getelementptr inbounds ([9 x %struct.gdp_format_to_str], ptr @gdp_format_to_str, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %and)
  %cmp1.2 = icmp eq i32 %2, %and
  br i1 %cmp1.2, label %for.inc.1.for.end.thread_crit_edge, label %for.inc.2

for.inc.1.for.end.thread_crit_edge:               ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.thread

for.inc.2:                                        ; preds = %for.inc.1
  %3 = load i32, ptr getelementptr inbounds ([9 x %struct.gdp_format_to_str], ptr @gdp_format_to_str, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %and)
  %cmp1.3 = icmp eq i32 %3, %and
  br i1 %cmp1.3, label %for.inc.2.for.end.thread_crit_edge, label %for.inc.3

for.inc.2.for.end.thread_crit_edge:               ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.thread

for.inc.3:                                        ; preds = %for.inc.2
  %4 = load i32, ptr getelementptr inbounds ([9 x %struct.gdp_format_to_str], ptr @gdp_format_to_str, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %and)
  %cmp1.4 = icmp eq i32 %4, %and
  br i1 %cmp1.4, label %for.inc.3.for.end.thread_crit_edge, label %for.inc.4

for.inc.3.for.end.thread_crit_edge:               ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.thread

for.inc.4:                                        ; preds = %for.inc.3
  %5 = load i32, ptr getelementptr inbounds ([9 x %struct.gdp_format_to_str], ptr @gdp_format_to_str, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %and)
  %cmp1.5 = icmp eq i32 %5, %and
  br i1 %cmp1.5, label %for.inc.4.for.end.thread_crit_edge, label %for.inc.5

for.inc.4.for.end.thread_crit_edge:               ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.thread

for.inc.5:                                        ; preds = %for.inc.4
  %6 = load i32, ptr getelementptr inbounds ([9 x %struct.gdp_format_to_str], ptr @gdp_format_to_str, i32 0, i32 6), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %and)
  %cmp1.6 = icmp eq i32 %6, %and
  br i1 %cmp1.6, label %for.inc.5.for.end.thread_crit_edge, label %for.inc.6

for.inc.5.for.end.thread_crit_edge:               ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.thread

for.inc.6:                                        ; preds = %for.inc.5
  %7 = load i32, ptr getelementptr inbounds ([9 x %struct.gdp_format_to_str], ptr @gdp_format_to_str, i32 0, i32 7), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %and)
  %cmp1.7 = icmp eq i32 %7, %and
  br i1 %cmp1.7, label %for.inc.6.for.end.thread_crit_edge, label %for.inc.7

for.inc.6.for.end.thread_crit_edge:               ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.thread

for.inc.7:                                        ; preds = %for.inc.6
  %8 = load i32, ptr getelementptr inbounds ([9 x %struct.gdp_format_to_str], ptr @gdp_format_to_str, i32 0, i32 8), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %and)
  %cmp1.8 = icmp eq i32 %8, %and
  br i1 %cmp1.8, label %for.inc.7.for.end.thread_crit_edge, label %if.then4

for.inc.7.for.end.thread_crit_edge:               ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.thread

if.then4:                                         ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.42) #4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %for.end.thread
  %val.lobit = lshr i32 %val, 31
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.43, i32 noundef %val.lobit) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sti_mixer_to_str(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gdp_node_dump_node(ptr noundef %s, ptr noundef %node) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.52, ptr noundef %node) #4
  %0 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %node, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.53, i32 noundef %1) #4
  %2 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %node, align 4
  tail call fastcc void @gdp_dbg_ctl(ptr noundef %s, i32 noundef %3)
  %gam_gdp_agc = getelementptr inbounds %struct.sti_gdp_node, ptr %node, i32 0, i32 1
  %4 = ptrtoint ptr %gam_gdp_agc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gam_gdp_agc, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.54, i32 noundef %5) #4
  %gam_gdp_vpo = getelementptr inbounds %struct.sti_gdp_node, ptr %node, i32 0, i32 3
  %6 = ptrtoint ptr %gam_gdp_vpo to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %gam_gdp_vpo, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.55, i32 noundef %7) #4
  %8 = ptrtoint ptr %gam_gdp_vpo to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %gam_gdp_vpo, align 4
  %and.i = and i32 %9, 65535
  %10 = lshr i32 %9, 16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.44, i32 noundef %and.i, i32 noundef %10) #4
  %gam_gdp_vps = getelementptr inbounds %struct.sti_gdp_node, ptr %node, i32 0, i32 4
  %11 = ptrtoint ptr %gam_gdp_vps to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %gam_gdp_vps, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.56, i32 noundef %12) #4
  %13 = ptrtoint ptr %gam_gdp_vps to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %gam_gdp_vps, align 4
  %and.i40 = and i32 %14, 65535
  %15 = lshr i32 %14, 16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.45, i32 noundef %and.i40, i32 noundef %15) #4
  %gam_gdp_pml = getelementptr inbounds %struct.sti_gdp_node, ptr %node, i32 0, i32 5
  %16 = ptrtoint ptr %gam_gdp_pml to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %gam_gdp_pml, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.57, i32 noundef %17) #4
  %gam_gdp_pmp = getelementptr inbounds %struct.sti_gdp_node, ptr %node, i32 0, i32 6
  %18 = ptrtoint ptr %gam_gdp_pmp to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %gam_gdp_pmp, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.58, i32 noundef %19) #4
  %gam_gdp_size = getelementptr inbounds %struct.sti_gdp_node, ptr %node, i32 0, i32 7
  %20 = ptrtoint ptr %gam_gdp_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %gam_gdp_size, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.59, i32 noundef %21) #4
  %22 = ptrtoint ptr %gam_gdp_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %gam_gdp_size, align 4
  %and.i41 = and i32 %23, 65535
  %24 = lshr i32 %23, 16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.46, i32 noundef %and.i41, i32 noundef %24) #4
  %gam_gdp_nvn = getelementptr inbounds %struct.sti_gdp_node, ptr %node, i32 0, i32 9
  %25 = ptrtoint ptr %gam_gdp_nvn to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %gam_gdp_nvn, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.60, i32 noundef %26) #4
  %gam_gdp_key1 = getelementptr inbounds %struct.sti_gdp_node, ptr %node, i32 0, i32 10
  %27 = ptrtoint ptr %gam_gdp_key1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %gam_gdp_key1, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.61, i32 noundef %28) #4
  %gam_gdp_key2 = getelementptr inbounds %struct.sti_gdp_node, ptr %node, i32 0, i32 11
  %29 = ptrtoint ptr %gam_gdp_key2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %gam_gdp_key2, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.62, i32 noundef %30) #4
  %gam_gdp_ppt = getelementptr inbounds %struct.sti_gdp_node, ptr %node, i32 0, i32 13
  %31 = ptrtoint ptr %gam_gdp_ppt to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %gam_gdp_ppt, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.63, i32 noundef %32) #4
  %33 = ptrtoint ptr %gam_gdp_ppt to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %gam_gdp_ppt, align 4
  %and.i42 = and i32 %34, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i42)
  %tobool.not.i = icmp eq i32 %and.i42, 0
  br i1 %tobool.not.i, label %entry.gdp_dbg_ppt.exit_crit_edge, label %if.then.i

entry.gdp_dbg_ppt.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %gdp_dbg_ppt.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.48) #4
  br label %gdp_dbg_ppt.exit

gdp_dbg_ppt.exit:                                 ; preds = %if.then.i, %entry.gdp_dbg_ppt.exit_crit_edge
  %gam_gdp_cml = getelementptr inbounds %struct.sti_gdp_node, ptr %node, i32 0, i32 15
  %35 = ptrtoint ptr %gam_gdp_cml to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %gam_gdp_cml, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.64, i32 noundef %36) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sti_gdp_atomic_check(ptr noundef %drm_plane, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %planes.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 3
  %0 = ptrtoint ptr %planes.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %planes.i, align 4
  %index.i.i = getelementptr inbounds %struct.drm_plane, ptr %drm_plane, i32 0, i32 17
  %2 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i.i, align 4
  %new_state.i = getelementptr %struct.__drm_planes_state, ptr %1, i32 %3, i32 3
  %4 = ptrtoint ptr %new_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %new_state.i, align 4
  %crtc4 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %crtc4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %crtc4, align 4
  %fb5 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %fb5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fb5, align 4
  %tobool.not = icmp eq ptr %7, null
  %tobool6.not = icmp eq ptr %9, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool6.not
  br i1 %or.cond, label %entry.cleanup112_crit_edge, label %if.end

entry.cleanup112_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup112

if.end:                                           ; preds = %entry
  %add.ptr9 = getelementptr i8, ptr %7, i32 -16
  %call10 = tail call ptr @drm_atomic_get_crtc_state(ptr noundef %state, ptr noundef nonnull %7) #4
  %mode11 = getelementptr inbounds %struct.drm_crtc_state, ptr %call10, i32 0, i32 8
  %crtc_x = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 4
  %10 = ptrtoint ptr %crtc_x to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %crtc_x, align 4
  %crtc_y = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 5
  %12 = ptrtoint ptr %crtc_y to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %crtc_y, align 4
  %crtc_w = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 6
  %14 = ptrtoint ptr %crtc_w to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %crtc_w, align 4
  %hdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %call10, i32 0, i32 8, i32 1
  %16 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %hdisplay, align 4
  %conv = zext i16 %17 to i32
  %sub = sub i32 %conv, %11
  %18 = tail call i32 @llvm.umin.i32(i32 %15, i32 %sub)
  %crtc_h = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 7
  %19 = ptrtoint ptr %crtc_h to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %crtc_h, align 4
  %vdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %call10, i32 0, i32 8, i32 6
  %21 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %vdisplay, align 2
  %conv27 = zext i16 %22 to i32
  %sub28 = sub i32 %conv27, %13
  %23 = tail call i32 @llvm.umin.i32(i32 %20, i32 %sub28)
  %src_x36 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 8
  %24 = ptrtoint ptr %src_x36 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %src_x36, align 4
  %shr = lshr i32 %25, 16
  %src_y37 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 9
  %26 = ptrtoint ptr %src_y37 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %src_y37, align 4
  %shr38 = lshr i32 %27, 16
  %src_w39 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 11
  %28 = ptrtoint ptr %src_w39 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %src_w39, align 4
  %shr40 = lshr i32 %29, 16
  %30 = tail call i32 @llvm.umin.i32(i32 %shr40, i32 3840)
  %src_h55 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 10
  %31 = ptrtoint ptr %src_h55 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %src_h55, align 4
  %shr56 = lshr i32 %32, 16
  %33 = tail call i32 @llvm.umin.i32(i32 %shr56, i32 2160)
  %format71 = getelementptr inbounds %struct.drm_framebuffer, ptr %9, i32 0, i32 4
  %34 = ptrtoint ptr %format71 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %format71, align 8
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %35, align 4
  %38 = zext i32 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %37, label %if.then76 [
    i32 875713112, label %if.end.if.end79_crit_edge
    i32 875709016, label %if.end.if.end79_crit_edge184
    i32 875713089, label %if.end.if.end79_crit_edge185
    i32 875708993, label %if.end.if.end79_crit_edge186
    i32 842093121, label %if.end.if.end79_crit_edge187
    i32 892424769, label %if.end.if.end79_crit_edge188
    i32 909199186, label %if.end.if.end79_crit_edge189
    i32 875710290, label %if.end.if.end79_crit_edge190
  ]

if.end.if.end79_crit_edge190:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end79

if.end.if.end79_crit_edge189:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end79

if.end.if.end79_crit_edge188:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end79

if.end.if.end79_crit_edge187:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end79

if.end.if.end79_crit_edge186:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end79

if.end.if.end79_crit_edge185:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end79

if.end.if.end79_crit_edge184:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end79

if.end.if.end79_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end79

if.then76:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.71, ptr noundef %35) #4
  br label %cleanup112

if.end79:                                         ; preds = %if.end.if.end79_crit_edge, %if.end.if.end79_crit_edge184, %if.end.if.end79_crit_edge185, %if.end.if.end79_crit_edge186, %if.end.if.end79_crit_edge187, %if.end.if.end79_crit_edge188, %if.end.if.end79_crit_edge189, %if.end.if.end79_crit_edge190
  %call80 = tail call ptr @drm_fb_cma_get_gem_obj(ptr noundef nonnull %9, i32 noundef 0) #4
  %tobool81.not = icmp eq ptr %call80, null
  br i1 %tobool81.not, label %if.then82, label %if.end83

if.then82:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.72) #4
  br label %cleanup112

if.end83:                                         ; preds = %if.end79
  %39 = ptrtoint ptr %mode11 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mode11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool84.not = icmp eq i32 %40, 0
  br i1 %tobool84.not, label %if.end83.if.end105_crit_edge, label %land.lhs.true

if.end83.if.end105_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end105

land.lhs.true:                                    ; preds = %if.end83
  %clk_pix = getelementptr inbounds %struct.sti_gdp, ptr %drm_plane, i32 0, i32 3
  %41 = ptrtoint ptr %clk_pix to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %clk_pix, align 8
  %tobool85.not = icmp eq ptr %42, null
  br i1 %tobool85.not, label %land.lhs.true.if.end105_crit_edge, label %if.then86

land.lhs.true.if.end105_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end105

if.then86:                                        ; preds = %land.lhs.true
  %mul = mul i32 %40, 1000
  %id = getelementptr i8, ptr %7, i32 -8
  %43 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp88 = icmp eq i32 %44, 0
  %clk_main_parent = getelementptr inbounds %struct.sti_gdp, ptr %drm_plane, i32 0, i32 4
  %clk_aux_parent = getelementptr inbounds %struct.sti_gdp, ptr %drm_plane, i32 0, i32 5
  %clkp.0.in = select i1 %cmp88, ptr %clk_main_parent, ptr %clk_aux_parent
  %45 = ptrtoint ptr %clkp.0.in to i32
  call void @__asan_load4_noabort(i32 %45)
  %clkp.0 = load ptr, ptr %clkp.0.in, align 4
  %tobool92.not = icmp eq ptr %clkp.0, null
  br i1 %tobool92.not, label %if.then86.if.end96_crit_edge, label %if.then93

if.then86.if.end96_crit_edge:                     ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end96

if.then93:                                        ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #6
  %call95 = tail call i32 @clk_set_parent(ptr noundef nonnull %42, ptr noundef nonnull %clkp.0) #4
  br label %if.end96

if.end96:                                         ; preds = %if.then93, %if.then86.if.end96_crit_edge
  %46 = ptrtoint ptr %clk_pix to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %clk_pix, align 8
  %call98 = tail call i32 @clk_set_rate(ptr noundef %47, i32 noundef %mul) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %cmp99 = icmp slt i32 %call98, 0
  br i1 %cmp99, label %if.then101, label %if.end96.if.end105_crit_edge

if.end96.if.end105_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end105

if.then101:                                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.73, i32 noundef %mul) #4
  br label %cleanup112

if.end105:                                        ; preds = %if.end96.if.end105_crit_edge, %land.lhs.true.if.end105_crit_edge, %if.end83.if.end105_crit_edge
  %base = getelementptr inbounds %struct.drm_crtc, ptr %7, i32 0, i32 5
  %48 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %base, align 8
  %call107 = tail call ptr @sti_mixer_to_str(ptr noundef %add.ptr9) #4
  %base108 = getelementptr inbounds %struct.drm_plane, ptr %drm_plane, i32 0, i32 4
  %50 = ptrtoint ptr %base108 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %base108, align 4
  %call110 = tail call ptr @sti_plane_to_str(ptr noundef %drm_plane) #4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.74, i32 noundef %49, ptr noundef %call107, i32 noundef %51, ptr noundef %call110) #4
  %call111 = tail call ptr @sti_plane_to_str(ptr noundef %drm_plane) #4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.75, ptr noundef %call111, i32 noundef %18, i32 noundef %23, i32 noundef %11, i32 noundef %13, i32 noundef %30, i32 noundef %33, i32 noundef %shr, i32 noundef %shr38) #4
  br label %cleanup112

cleanup112:                                       ; preds = %if.end105, %if.then101, %if.then82, %if.then76, %entry.cleanup112_crit_edge
  %retval.1 = phi i32 [ -22, %if.then76 ], [ 0, %if.end105 ], [ -22, %if.then82 ], [ 0, %entry.cleanup112_crit_edge ], [ -22, %if.then101 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sti_gdp_atomic_update(ptr noundef %drm_plane, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %planes.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 3
  %0 = ptrtoint ptr %planes.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %planes.i, align 4
  %index.i.i = getelementptr inbounds %struct.drm_plane, ptr %drm_plane, i32 0, i32 17
  %2 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i.i, align 4
  %old_state.i = getelementptr %struct.__drm_planes_state, ptr %1, i32 %3, i32 2
  %4 = ptrtoint ptr %old_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %old_state.i, align 4
  %new_state.i = getelementptr %struct.__drm_planes_state, ptr %1, i32 %3, i32 3
  %6 = ptrtoint ptr %new_state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %new_state.i, align 4
  %crtc5 = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %crtc5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %crtc5, align 4
  %fb6 = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %fb6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fb6, align 4
  %tobool.not = icmp eq ptr %9, null
  %tobool7.not = icmp eq ptr %11, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool7.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %fb8 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 2
  %12 = ptrtoint ptr %fb8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fb8, align 4
  %cmp = icmp eq ptr %13, %11
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end38_crit_edge

if.end.if.end38_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end38

land.lhs.true:                                    ; preds = %if.end
  %crtc_x = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 4
  %14 = ptrtoint ptr %crtc_x to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %crtc_x, align 4
  %crtc_x10 = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 4
  %16 = ptrtoint ptr %crtc_x10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %crtc_x10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp11 = icmp eq i32 %15, %17
  br i1 %cmp11, label %land.lhs.true12, label %land.lhs.true.if.end38_crit_edge

land.lhs.true.if.end38_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end38

land.lhs.true12:                                  ; preds = %land.lhs.true
  %crtc_y = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 5
  %18 = ptrtoint ptr %crtc_y to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %crtc_y, align 4
  %crtc_y13 = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 5
  %20 = ptrtoint ptr %crtc_y13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %crtc_y13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp14 = icmp eq i32 %19, %21
  br i1 %cmp14, label %land.lhs.true15, label %land.lhs.true12.if.end38_crit_edge

land.lhs.true12.if.end38_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end38

land.lhs.true15:                                  ; preds = %land.lhs.true12
  %crtc_w = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 6
  %22 = ptrtoint ptr %crtc_w to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %crtc_w, align 4
  %crtc_w16 = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 6
  %24 = ptrtoint ptr %crtc_w16 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %crtc_w16, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %25)
  %cmp17 = icmp eq i32 %23, %25
  br i1 %cmp17, label %land.lhs.true18, label %land.lhs.true15.if.end38_crit_edge

land.lhs.true15.if.end38_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end38

land.lhs.true18:                                  ; preds = %land.lhs.true15
  %crtc_h = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 7
  %26 = ptrtoint ptr %crtc_h to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %crtc_h, align 4
  %crtc_h19 = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 7
  %28 = ptrtoint ptr %crtc_h19 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %crtc_h19, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp20 = icmp eq i32 %27, %29
  br i1 %cmp20, label %land.lhs.true21, label %land.lhs.true18.if.end38_crit_edge

land.lhs.true18.if.end38_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end38

land.lhs.true21:                                  ; preds = %land.lhs.true18
  %src_x22 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 8
  %30 = ptrtoint ptr %src_x22 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %src_x22, align 4
  %src_x23 = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 8
  %32 = ptrtoint ptr %src_x23 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %src_x23, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %33)
  %cmp24 = icmp eq i32 %31, %33
  br i1 %cmp24, label %land.lhs.true25, label %land.lhs.true21.if.end38_crit_edge

land.lhs.true21.if.end38_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end38

land.lhs.true25:                                  ; preds = %land.lhs.true21
  %src_y26 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 9
  %34 = ptrtoint ptr %src_y26 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %src_y26, align 4
  %src_y27 = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 9
  %36 = ptrtoint ptr %src_y27 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %src_y27, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %37)
  %cmp28 = icmp eq i32 %35, %37
  br i1 %cmp28, label %land.lhs.true29, label %land.lhs.true25.if.end38_crit_edge

land.lhs.true25.if.end38_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end38

land.lhs.true29:                                  ; preds = %land.lhs.true25
  %src_w30 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 11
  %38 = ptrtoint ptr %src_w30 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %src_w30, align 4
  %src_w31 = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 11
  %40 = ptrtoint ptr %src_w31 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %src_w31, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %41)
  %cmp32 = icmp eq i32 %39, %41
  br i1 %cmp32, label %land.lhs.true33, label %land.lhs.true29.if.end38_crit_edge

land.lhs.true29.if.end38_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end38

land.lhs.true33:                                  ; preds = %land.lhs.true29
  %src_h34 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 10
  %42 = ptrtoint ptr %src_h34 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %src_h34, align 4
  %src_h35 = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 10
  %44 = ptrtoint ptr %src_h35 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %src_h35, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %45)
  %cmp36 = icmp eq i32 %43, %45
  br i1 %cmp36, label %if.then37, label %land.lhs.true33.if.end38_crit_edge

land.lhs.true33.if.end38_crit_edge:               ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end38

if.then37:                                        ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.76) #4
  br label %cleanup.sink.split

if.end38:                                         ; preds = %land.lhs.true33.if.end38_crit_edge, %land.lhs.true29.if.end38_crit_edge, %land.lhs.true25.if.end38_crit_edge, %land.lhs.true21.if.end38_crit_edge, %land.lhs.true18.if.end38_crit_edge, %land.lhs.true15.if.end38_crit_edge, %land.lhs.true12.if.end38_crit_edge, %land.lhs.true.if.end38_crit_edge, %if.end.if.end38_crit_edge
  %vtg = getelementptr inbounds %struct.sti_gdp, ptr %drm_plane, i32 0, i32 9
  %46 = ptrtoint ptr %vtg to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %vtg, align 4
  %tobool39.not = icmp eq ptr %47, null
  br i1 %tobool39.not, label %if.then40, label %if.end38.if.end50_crit_edge

if.end38.if.end50_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end50

if.then40:                                        ; preds = %if.end38
  %dev = getelementptr inbounds %struct.sti_gdp, ptr %drm_plane, i32 0, i32 1
  %48 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %49, i32 0, i32 8
  %50 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %driver_data.i, align 4
  %id = getelementptr i8, ptr %9, i32 -8
  %52 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %id, align 8
  %arrayidx = getelementptr %struct.sti_compositor, ptr %51, i32 0, i32 11, i32 %53
  %54 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx, align 4
  %56 = ptrtoint ptr %vtg to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %55, ptr %vtg, align 4
  %vtg_field_nb = getelementptr inbounds %struct.sti_gdp, ptr %drm_plane, i32 0, i32 6
  %call48 = tail call i32 @sti_vtg_register_client(ptr noundef %55, ptr noundef %vtg_field_nb, ptr noundef nonnull %9) #4
  %clk_pix = getelementptr inbounds %struct.sti_gdp, ptr %drm_plane, i32 0, i32 3
  %57 = ptrtoint ptr %clk_pix to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %clk_pix, align 8
  %call.i = tail call i32 @clk_prepare(ptr noundef %58) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then40.if.end50_crit_edge

if.then40.if.end50_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end50

if.end.i:                                         ; preds = %if.then40
  %call1.i = tail call i32 @clk_enable(ptr noundef %58) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end50_crit_edge, label %if.then3.i

if.end.i.if.end50_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end50

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unprepare(ptr noundef %58) #4
  br label %if.end50

if.end50:                                         ; preds = %if.then3.i, %if.end.i.if.end50_crit_edge, %if.then40.if.end50_crit_edge, %if.end38.if.end50_crit_edge
  %mode51 = getelementptr inbounds %struct.drm_crtc, ptr %9, i32 0, i32 12
  %crtc_x52 = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 4
  %59 = ptrtoint ptr %crtc_x52 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %crtc_x52, align 4
  %crtc_y53 = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 5
  %61 = ptrtoint ptr %crtc_y53 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %crtc_y53, align 4
  %crtc_w54 = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 6
  %63 = ptrtoint ptr %crtc_w54 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %crtc_w54, align 4
  %hdisplay = getelementptr inbounds %struct.drm_crtc, ptr %9, i32 0, i32 12, i32 1
  %65 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %hdisplay, align 4
  %conv = zext i16 %66 to i32
  %sub = sub i32 %conv, %60
  %67 = tail call i32 @llvm.umin.i32(i32 %64, i32 %sub)
  %crtc_h64 = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 7
  %68 = ptrtoint ptr %crtc_h64 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %crtc_h64, align 4
  %vdisplay = getelementptr inbounds %struct.drm_crtc, ptr %9, i32 0, i32 12, i32 6
  %70 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %vdisplay, align 2
  %conv72 = zext i16 %71 to i32
  %sub73 = sub i32 %conv72, %62
  %72 = tail call i32 @llvm.umin.i32(i32 %69, i32 %sub73)
  %src_x81 = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 8
  %73 = ptrtoint ptr %src_x81 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %src_x81, align 4
  %shr = lshr i32 %74, 16
  %src_y82 = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 9
  %75 = ptrtoint ptr %src_y82 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %src_y82, align 4
  %shr83 = lshr i32 %76, 16
  %src_w84 = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 11
  %77 = ptrtoint ptr %src_w84 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %src_w84, align 4
  %shr85 = lshr i32 %78, 16
  %79 = tail call i32 @llvm.umin.i32(i32 %shr85, i32 3840)
  %src_h100 = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 10
  %80 = ptrtoint ptr %src_h100 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %src_h100, align 4
  %shr101 = lshr i32 %81, 16
  %82 = tail call i32 @llvm.umin.i32(i32 %shr101, i32 2160)
  %regs.i = getelementptr inbounds %struct.sti_gdp, ptr %drm_plane, i32 0, i32 2
  %83 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %84, i32 36
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #4, !srcloc !208
  %86 = tail call i32 @llvm.bswap.i32(i32 %85) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !229
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool.not.i432 = icmp eq i32 %85, 0
  br i1 %tobool.not.i432, label %if.end50.end.i_crit_edge, label %for.body.preheader.i

if.end50.end.i_crit_edge:                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #6
  br label %end.i

for.body.preheader.i:                             ; preds = %if.end50
  %btm_field_paddr.i = getelementptr %struct.sti_gdp, ptr %drm_plane, i32 0, i32 8, i32 0, i32 3
  %87 = ptrtoint ptr %btm_field_paddr.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %btm_field_paddr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %86, i32 %88)
  %cmp2.not.i = icmp eq i32 %86, %88
  br i1 %cmp2.not.i, label %for.body.preheader.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.preheader.i.for.inc.i_crit_edge:         ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.preheader.i
  %top_field_paddr.i = getelementptr %struct.sti_gdp, ptr %drm_plane, i32 0, i32 8, i32 0, i32 1
  %89 = ptrtoint ptr %top_field_paddr.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %top_field_paddr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %86, i32 %90)
  %cmp5.not.i = icmp eq i32 %86, %90
  br i1 %cmp5.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %land.lhs.true.i.cleanup.loopexit.i_crit_edge

land.lhs.true.i.cleanup.loopexit.i_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.loopexit.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.preheader.i.for.inc.i_crit_edge
  %btm_field_paddr.1.i = getelementptr %struct.sti_gdp, ptr %drm_plane, i32 0, i32 8, i32 1, i32 3
  %91 = ptrtoint ptr %btm_field_paddr.1.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %btm_field_paddr.1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %86, i32 %92)
  %cmp2.not.1.i = icmp eq i32 %86, %92
  br i1 %cmp2.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %land.lhs.true.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1.i

land.lhs.true.1.i:                                ; preds = %for.inc.i
  %top_field_paddr.1.i = getelementptr %struct.sti_gdp, ptr %drm_plane, i32 0, i32 8, i32 1, i32 1
  %93 = ptrtoint ptr %top_field_paddr.1.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %top_field_paddr.1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %86, i32 %94)
  %cmp5.not.1.i = icmp eq i32 %86, %94
  br i1 %cmp5.not.1.i, label %land.lhs.true.1.i.for.inc.1.i_crit_edge, label %land.lhs.true.1.i.cleanup.loopexit.i_crit_edge

land.lhs.true.1.i.cleanup.loopexit.i_crit_edge:   ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.loopexit.i

land.lhs.true.1.i.for.inc.1.i_crit_edge:          ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %land.lhs.true.1.i.for.inc.1.i_crit_edge, %for.inc.i.for.inc.1.i_crit_edge
  %call10.i = tail call ptr @sti_plane_to_str(ptr noundef %drm_plane) #4
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.85, ptr noundef %call10.i, i32 noundef %86) #4
  br label %end.i

end.i:                                            ; preds = %for.inc.1.i, %if.end50.end.i_crit_edge
  %node_list11.i = getelementptr inbounds %struct.sti_gdp, ptr %drm_plane, i32 0, i32 8
  br label %sti_gdp_get_free_nodes.exit

cleanup.loopexit.i:                               ; preds = %land.lhs.true.1.i.cleanup.loopexit.i_crit_edge, %land.lhs.true.i.cleanup.loopexit.i_crit_edge
  %i.026.lcssa.i = phi i32 [ 0, %land.lhs.true.i.cleanup.loopexit.i_crit_edge ], [ 1, %land.lhs.true.1.i.cleanup.loopexit.i_crit_edge ]
  %arrayidx.le.i = getelementptr %struct.sti_gdp, ptr %drm_plane, i32 0, i32 8, i32 %i.026.lcssa.i
  br label %sti_gdp_get_free_nodes.exit

sti_gdp_get_free_nodes.exit:                      ; preds = %cleanup.loopexit.i, %end.i
  %retval.0.i433 = phi ptr [ %node_list11.i, %end.i ], [ %arrayidx.le.i, %cleanup.loopexit.i ]
  %95 = ptrtoint ptr %retval.0.i433 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %retval.0.i433, align 4
  %btm_field118 = getelementptr inbounds %struct.sti_gdp_node_list, ptr %retval.0.i433, i32 0, i32 2
  %97 = ptrtoint ptr %btm_field118 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %btm_field118, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sti_gdp_atomic_update.__UNIQUE_ID_ddebug352, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sti_gdp_atomic_update, %if.then124)) #4
          to label %do.end [label %if.then124], !srcloc !230

if.then124:                                       ; preds = %sti_gdp_get_free_nodes.exit
  call void @__sanitizer_cov_trace_pc() #6
  %dev125 = getelementptr inbounds %struct.sti_gdp, ptr %drm_plane, i32 0, i32 1
  %99 = ptrtoint ptr %dev125 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dev125, align 8
  %call126 = tail call ptr @sti_plane_to_str(ptr noundef %drm_plane) #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sti_gdp_atomic_update.__UNIQUE_ID_ddebug352, ptr noundef %100, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.78, ptr noundef %call126, ptr noundef %96, ptr noundef %98) #4
  br label %do.end

do.end:                                           ; preds = %if.then124, %sti_gdp_get_free_nodes.exit
  %gam_gdp_agc = getelementptr inbounds %struct.sti_gdp_node, ptr %96, i32 0, i32 1
  %101 = ptrtoint ptr %gam_gdp_agc to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 8421504, ptr %gam_gdp_agc, align 4
  %102 = ptrtoint ptr %96 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 -2147483648, ptr %96, align 4
  %format128 = getelementptr inbounds %struct.drm_framebuffer, ptr %11, i32 0, i32 4
  %103 = ptrtoint ptr %format128 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %format128, align 8
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %104, align 4
  %107 = zext i32 %106 to i64
  call void @__sanitizer_cov_trace_switch(i64 %107, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %106, label %sw.epilog.i [
    i32 875713112, label %do.end.sw.epilog.i435_crit_edge
    i32 875709016, label %sw.bb1.i
    i32 875713089, label %do.end.sti_gdp_get_alpharange.exit_crit_edge
    i32 875708993, label %sw.bb3.i
    i32 842093121, label %sw.bb4.i
    i32 892424769, label %sw.bb5.i
    i32 909199186, label %sw.bb6.i
    i32 875710290, label %sw.bb7.i
  ]

do.end.sti_gdp_get_alpharange.exit_crit_edge:     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sti_gdp_get_alpharange.exit

do.end.sw.epilog.i435_crit_edge:                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i435

sw.bb1.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i435

sw.bb3.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sti_gdp_get_alpharange.exit

sw.bb4.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i435

sw.bb5.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i435

sw.bb6.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i435

sw.bb7.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i435

sw.epilog.i:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.i435

sw.epilog.i435:                                   ; preds = %sw.epilog.i, %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb1.i, %do.end.sw.epilog.i435_crit_edge
  %retval.0.i434.ph = phi i32 [ -2147483646, %do.end.sw.epilog.i435_crit_edge ], [ -2139094974, %sw.bb1.i ], [ -2147483641, %sw.bb4.i ], [ -2147483642, %sw.bb5.i ], [ -2147483648, %sw.bb6.i ], [ -2147483647, %sw.bb7.i ], [ -1, %sw.epilog.i ]
  br label %sti_gdp_get_alpharange.exit

sti_gdp_get_alpharange.exit:                      ; preds = %sw.epilog.i435, %sw.bb3.i, %do.end.sti_gdp_get_alpharange.exit_crit_edge
  %or465 = phi i32 [ %retval.0.i434.ph, %sw.epilog.i435 ], [ -2139094971, %sw.bb3.i ], [ -2147483643, %do.end.sti_gdp_get_alpharange.exit_crit_edge ]
  %retval.0.i436 = phi i32 [ 0, %sw.epilog.i435 ], [ 32, %sw.bb3.i ], [ 32, %do.end.sti_gdp_get_alpharange.exit_crit_edge ]
  %or134 = or i32 %retval.0.i436, %or465
  %108 = ptrtoint ptr %96 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %or134, ptr %96, align 4
  %gam_gdp_ppt = getelementptr inbounds %struct.sti_gdp_node, ptr %96, i32 0, i32 13
  %109 = ptrtoint ptr %gam_gdp_ppt to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %gam_gdp_ppt, align 4
  %and = and i32 %110, -4
  store i32 %and, ptr %gam_gdp_ppt, align 4
  %call135 = tail call ptr @drm_fb_cma_get_gem_obj(ptr noundef nonnull %11, i32 noundef 0) #4
  %base = getelementptr inbounds %struct.drm_framebuffer, ptr %11, i32 0, i32 2
  %111 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %base, align 4
  %113 = ptrtoint ptr %format128 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %format128, align 8
  %paddr = getelementptr inbounds %struct.drm_gem_cma_object, ptr %call135, i32 0, i32 1
  %115 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %paddr, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.81, i32 noundef %112, ptr noundef %114, i32 noundef %116) #4
  %117 = ptrtoint ptr %format128 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %format128, align 8
  %119 = getelementptr inbounds %struct.drm_format_info, ptr %118, i32 0, i32 3
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %119, align 2
  %conv141 = zext i8 %121 to i32
  %122 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %paddr, align 8
  %offsets = getelementptr inbounds %struct.drm_framebuffer, ptr %11, i32 0, i32 7
  %124 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %offsets, align 8
  %add = add i32 %125, %123
  %gam_gdp_pml = getelementptr inbounds %struct.sti_gdp_node, ptr %96, i32 0, i32 5
  %mul = mul nuw nsw i32 %shr, %conv141
  %add145 = add i32 %add, %mul
  %126 = ptrtoint ptr %gam_gdp_pml to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %add145, ptr %gam_gdp_pml, align 4
  %pitches = getelementptr inbounds %struct.drm_framebuffer, ptr %11, i32 0, i32 6
  %127 = ptrtoint ptr %pitches to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %pitches, align 8
  %mul147 = mul i32 %128, %shr83
  %add149 = add i32 %mul147, %add145
  store i32 %add149, ptr %gam_gdp_pml, align 4
  %dev150 = getelementptr inbounds %struct.sti_gdp, ptr %drm_plane, i32 0, i32 1
  %129 = ptrtoint ptr %dev150 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %dev150, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %79)
  %cmp.i = icmp eq i32 %67, %79
  br i1 %cmp.i, label %sti_gdp_get_alpharange.exit.sti_gdp_get_dst.exit_crit_edge, label %if.end.i437

sti_gdp_get_alpharange.exit.sti_gdp_get_dst.exit_crit_edge: ; preds = %sti_gdp_get_alpharange.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %sti_gdp_get_dst.exit

if.end.i437:                                      ; preds = %sti_gdp_get_alpharange.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %79)
  %cmp1.i = icmp slt i32 %67, %79
  br i1 %cmp1.i, label %do.body.i, label %do.body8.i

do.body.i:                                        ; preds = %if.end.i437
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sti_gdp_get_dst.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sti_gdp_atomic_update, %if.then5.i)) #4
          to label %sti_gdp_get_dst.exit [label %if.then5.i], !srcloc !230

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sti_gdp_get_dst.__UNIQUE_ID_ddebug318, ptr noundef %130, ptr noundef nonnull @.str.87) #4
  br label %sti_gdp_get_dst.exit

do.body8.i:                                       ; preds = %if.end.i437
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sti_gdp_get_dst.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sti_gdp_atomic_update, %if.then20.i)) #4
          to label %sti_gdp_get_dst.exit [label %if.then20.i], !srcloc !230

if.then20.i:                                      ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sti_gdp_get_dst.__UNIQUE_ID_ddebug319, ptr noundef %130, ptr noundef nonnull @.str.88) #4
  br label %sti_gdp_get_dst.exit

sti_gdp_get_dst.exit:                             ; preds = %if.then20.i, %do.body8.i, %if.then5.i, %do.body.i, %sti_gdp_get_alpharange.exit.sti_gdp_get_dst.exit_crit_edge
  %retval.0.i438 = phi i32 [ %67, %sti_gdp_get_alpharange.exit.sti_gdp_get_dst.exit_crit_edge ], [ %67, %if.then5.i ], [ %79, %if.then20.i ], [ %67, %do.body.i ], [ %79, %do.body8.i ]
  %131 = ptrtoint ptr %dev150 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %dev150, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %82)
  %cmp.i439 = icmp eq i32 %72, %82
  br i1 %cmp.i439, label %sti_gdp_get_dst.exit.sti_gdp_get_dst.exit447_crit_edge, label %if.end.i441

sti_gdp_get_dst.exit.sti_gdp_get_dst.exit447_crit_edge: ; preds = %sti_gdp_get_dst.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %sti_gdp_get_dst.exit447

if.end.i441:                                      ; preds = %sti_gdp_get_dst.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %82)
  %cmp1.i440 = icmp slt i32 %72, %82
  br i1 %cmp1.i440, label %do.body.i442, label %do.body8.i444

do.body.i442:                                     ; preds = %if.end.i441
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sti_gdp_get_dst.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sti_gdp_atomic_update, %if.then5.i443)) #4
          to label %sti_gdp_get_dst.exit447 [label %if.then5.i443], !srcloc !230

if.then5.i443:                                    ; preds = %do.body.i442
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sti_gdp_get_dst.__UNIQUE_ID_ddebug318, ptr noundef %132, ptr noundef nonnull @.str.87) #4
  br label %sti_gdp_get_dst.exit447

do.body8.i444:                                    ; preds = %if.end.i441
  call void @__sanitizer_cov_trace_pc() #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sti_gdp_get_dst.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sti_gdp_atomic_update, %if.then20.i445)) #4
          to label %sti_gdp_get_dst.exit447 [label %if.then20.i445], !srcloc !230

if.then20.i445:                                   ; preds = %do.body8.i444
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sti_gdp_get_dst.__UNIQUE_ID_ddebug319, ptr noundef %132, ptr noundef nonnull @.str.88) #4
  br label %sti_gdp_get_dst.exit447

sti_gdp_get_dst.exit447:                          ; preds = %if.then20.i445, %do.body8.i444, %if.then5.i443, %do.body.i442, %sti_gdp_get_dst.exit.sti_gdp_get_dst.exit447_crit_edge
  %retval.0.i446 = phi i32 [ %72, %sti_gdp_get_dst.exit.sti_gdp_get_dst.exit447_crit_edge ], [ %72, %if.then5.i443 ], [ %82, %if.then20.i445 ], [ %72, %do.body.i442 ], [ %82, %do.body8.i444 ]
  %133 = ptrtoint ptr %mode51 to i32
  call void @__asan_loadN_noabort(i32 %133, i32 112)
  %call154 = tail call i32 @sti_vtg_get_line_number(ptr noundef byval(%struct.drm_display_mode) align 4 %mode51, i32 noundef %62) #4
  %add155 = add i32 %62, -1
  %sub156 = add i32 %add155, %retval.0.i446
  %call157 = tail call i32 @sti_vtg_get_line_number(ptr noundef byval(%struct.drm_display_mode) align 4 %mode51, i32 noundef %sub156) #4
  %call158 = tail call i32 @sti_vtg_get_pixel_number(ptr noundef byval(%struct.drm_display_mode) align 4 %mode51, i32 noundef %60) #4
  %add159 = add i32 %60, -1
  %sub160 = add i32 %add159, %retval.0.i438
  %call161 = tail call i32 @sti_vtg_get_pixel_number(ptr noundef byval(%struct.drm_display_mode) align 4 %mode51, i32 noundef %sub160) #4
  %shl = shl i32 %call154, 16
  %or162 = or i32 %call158, %shl
  %gam_gdp_vpo = getelementptr inbounds %struct.sti_gdp_node, ptr %96, i32 0, i32 3
  %134 = ptrtoint ptr %gam_gdp_vpo to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %or162, ptr %gam_gdp_vpo, align 4
  %shl163 = shl i32 %call157, 16
  %or164 = or i32 %call161, %shl163
  %gam_gdp_vps = getelementptr inbounds %struct.sti_gdp_node, ptr %96, i32 0, i32 4
  %135 = ptrtoint ptr %gam_gdp_vps to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %or164, ptr %gam_gdp_vps, align 4
  %136 = ptrtoint ptr %pitches to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %pitches, align 8
  %gam_gdp_pmp = getelementptr inbounds %struct.sti_gdp_node, ptr %96, i32 0, i32 6
  %138 = ptrtoint ptr %gam_gdp_pmp to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %137, ptr %gam_gdp_pmp, align 4
  %shl167 = shl nuw nsw i32 %82, 16
  %or168 = or i32 %retval.0.i438, %shl167
  %gam_gdp_size = getelementptr inbounds %struct.sti_gdp_node, ptr %96, i32 0, i32 7
  %139 = ptrtoint ptr %gam_gdp_size to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %or168, ptr %gam_gdp_size, align 4
  %140 = call ptr @memcpy(ptr %98, ptr %96, i32 64)
  %btm_field_paddr = getelementptr inbounds %struct.sti_gdp_node_list, ptr %retval.0.i433, i32 0, i32 3
  %141 = ptrtoint ptr %btm_field_paddr to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %btm_field_paddr, align 4
  %gam_gdp_nvn = getelementptr inbounds %struct.sti_gdp_node, ptr %96, i32 0, i32 9
  %143 = ptrtoint ptr %gam_gdp_nvn to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %142, ptr %gam_gdp_nvn, align 4
  %top_field_paddr = getelementptr inbounds %struct.sti_gdp_node_list, ptr %retval.0.i433, i32 0, i32 1
  %144 = ptrtoint ptr %top_field_paddr to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %top_field_paddr, align 4
  %gam_gdp_nvn169 = getelementptr inbounds %struct.sti_gdp_node, ptr %98, i32 0, i32 9
  %146 = ptrtoint ptr %gam_gdp_nvn169 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %145, ptr %gam_gdp_nvn169, align 4
  %flags = getelementptr inbounds %struct.drm_crtc, ptr %9, i32 0, i32 12, i32 11
  %147 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %flags, align 4
  %and170 = and i32 %148, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and170)
  %tobool171.not = icmp eq i32 %and170, 0
  br i1 %tobool171.not, label %sti_gdp_get_dst.exit447.if.end178_crit_edge, label %if.then172

sti_gdp_get_dst.exit447.if.end178_crit_edge:      ; preds = %sti_gdp_get_dst.exit447
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end178

if.then172:                                       ; preds = %sti_gdp_get_dst.exit447
  call void @__sanitizer_cov_trace_pc() #6
  %149 = ptrtoint ptr %gam_gdp_pml to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %gam_gdp_pml, align 4
  %151 = ptrtoint ptr %pitches to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %pitches, align 8
  %add176 = add i32 %152, %150
  %gam_gdp_pml177 = getelementptr inbounds %struct.sti_gdp_node, ptr %98, i32 0, i32 5
  %153 = ptrtoint ptr %gam_gdp_pml177 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %add176, ptr %gam_gdp_pml177, align 4
  br label %if.end178

if.end178:                                        ; preds = %if.then172, %sti_gdp_get_dst.exit447.if.end178_crit_edge
  %154 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %regs.i, align 4
  %add.ptr.i449 = getelementptr i8, ptr %155, i32 36
  %156 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i449) #4, !srcloc !208
  %157 = tail call i32 @llvm.bswap.i32(i32 %156) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !231
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %156)
  %tobool.not.i450 = icmp eq i32 %156, 0
  br i1 %tobool.not.i450, label %if.end178.end.i458_crit_edge, label %for.body.preheader.i452

if.end178.end.i458_crit_edge:                     ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #6
  br label %end.i458

for.body.preheader.i452:                          ; preds = %if.end178
  %btm_field_paddr.i451 = getelementptr %struct.sti_gdp, ptr %drm_plane, i32 0, i32 8, i32 0, i32 3
  %158 = ptrtoint ptr %btm_field_paddr.i451 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %btm_field_paddr.i451, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %157, i32 %159)
  %cmp2.i = icmp eq i32 %157, %159
  br i1 %cmp2.i, label %for.body.preheader.i452.cleanup.loopexit.i460_crit_edge, label %lor.lhs.false.i

for.body.preheader.i452.cleanup.loopexit.i460_crit_edge: ; preds = %for.body.preheader.i452
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.loopexit.i460

lor.lhs.false.i:                                  ; preds = %for.body.preheader.i452
  %top_field_paddr.i453 = getelementptr %struct.sti_gdp, ptr %drm_plane, i32 0, i32 8, i32 0, i32 1
  %160 = ptrtoint ptr %top_field_paddr.i453 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %top_field_paddr.i453, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %157, i32 %161)
  %cmp5.i = icmp eq i32 %157, %161
  br i1 %cmp5.i, label %lor.lhs.false.i.cleanup.loopexit.i460_crit_edge, label %for.inc.i455

lor.lhs.false.i.cleanup.loopexit.i460_crit_edge:  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.loopexit.i460

for.inc.i455:                                     ; preds = %lor.lhs.false.i
  %btm_field_paddr.1.i454 = getelementptr %struct.sti_gdp, ptr %drm_plane, i32 0, i32 8, i32 1, i32 3
  %162 = ptrtoint ptr %btm_field_paddr.1.i454 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %btm_field_paddr.1.i454, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %157, i32 %163)
  %cmp2.1.i = icmp eq i32 %157, %163
  br i1 %cmp2.1.i, label %for.inc.i455.cleanup.loopexit.i460_crit_edge, label %lor.lhs.false.1.i

for.inc.i455.cleanup.loopexit.i460_crit_edge:     ; preds = %for.inc.i455
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.loopexit.i460

lor.lhs.false.1.i:                                ; preds = %for.inc.i455
  %top_field_paddr.1.i456 = getelementptr %struct.sti_gdp, ptr %drm_plane, i32 0, i32 8, i32 1, i32 1
  %164 = ptrtoint ptr %top_field_paddr.1.i456 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %top_field_paddr.1.i456, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %157, i32 %165)
  %cmp5.1.i = icmp eq i32 %157, %165
  br i1 %cmp5.1.i, label %lor.lhs.false.1.i.cleanup.loopexit.i460_crit_edge, label %lor.lhs.false.1.i.end.i458_crit_edge

lor.lhs.false.1.i.end.i458_crit_edge:             ; preds = %lor.lhs.false.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %end.i458

lor.lhs.false.1.i.cleanup.loopexit.i460_crit_edge: ; preds = %lor.lhs.false.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.loopexit.i460

end.i458:                                         ; preds = %lor.lhs.false.1.i.end.i458_crit_edge, %if.end178.end.i458_crit_edge
  %call10.i457 = tail call ptr @sti_plane_to_str(ptr noundef %drm_plane) #4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.89, i32 noundef %157, ptr noundef %call10.i457) #4
  br label %sti_gdp_get_current_nodes.exit

cleanup.loopexit.i460:                            ; preds = %lor.lhs.false.1.i.cleanup.loopexit.i460_crit_edge, %for.inc.i455.cleanup.loopexit.i460_crit_edge, %lor.lhs.false.i.cleanup.loopexit.i460_crit_edge, %for.body.preheader.i452.cleanup.loopexit.i460_crit_edge
  %i.023.lcssa.i = phi i32 [ 0, %lor.lhs.false.i.cleanup.loopexit.i460_crit_edge ], [ 0, %for.body.preheader.i452.cleanup.loopexit.i460_crit_edge ], [ 1, %for.inc.i455.cleanup.loopexit.i460_crit_edge ], [ 1, %lor.lhs.false.1.i.cleanup.loopexit.i460_crit_edge ]
  %arrayidx.le.i459 = getelementptr %struct.sti_gdp, ptr %drm_plane, i32 0, i32 8, i32 %i.023.lcssa.i
  br label %sti_gdp_get_current_nodes.exit

sti_gdp_get_current_nodes.exit:                   ; preds = %cleanup.loopexit.i460, %end.i458
  %retval.0.i461 = phi ptr [ null, %end.i458 ], [ %arrayidx.le.i459, %cleanup.loopexit.i460 ]
  %166 = ptrtoint ptr %top_field_paddr to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %top_field_paddr, align 4
  %168 = ptrtoint ptr %btm_field_paddr to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %btm_field_paddr, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sti_gdp_atomic_update.__UNIQUE_ID_ddebug353, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sti_gdp_atomic_update, %if.then194)) #4
          to label %do.body203 [label %if.then194], !srcloc !230

if.then194:                                       ; preds = %sti_gdp_get_current_nodes.exit
  call void @__sanitizer_cov_trace_pc() #6
  %170 = ptrtoint ptr %dev150 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %dev150, align 8
  %172 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %regs.i, align 4
  %add.ptr196 = getelementptr i8, ptr %173, i32 36
  %174 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr196) #4, !srcloc !208
  %175 = tail call i32 @llvm.bswap.i32(i32 %174)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !232
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sti_gdp_atomic_update.__UNIQUE_ID_ddebug353, ptr noundef %171, ptr noundef nonnull @.str.82, i32 noundef %175) #4
  br label %do.body203

do.body203:                                       ; preds = %if.then194, %sti_gdp_get_current_nodes.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sti_gdp_atomic_update.__UNIQUE_ID_ddebug354, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sti_gdp_atomic_update, %if.then215)) #4
          to label %do.end227 [label %if.then215], !srcloc !230

if.then215:                                       ; preds = %do.body203
  call void @__sanitizer_cov_trace_pc() #6
  %176 = ptrtoint ptr %dev150 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %dev150, align 8
  %178 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %paddr, align 8
  %180 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %regs.i, align 4
  %add.ptr221 = getelementptr i8, ptr %181, i32 20
  %182 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr221) #4, !srcloc !208
  %183 = tail call i32 @llvm.bswap.i32(i32 %182)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !233
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sti_gdp_atomic_update.__UNIQUE_ID_ddebug354, ptr noundef %177, ptr noundef nonnull @.str.83, i32 noundef %179, i32 noundef %183) #4
  br label %do.end227

do.end227:                                        ; preds = %if.then215, %do.body203
  %tobool228.not = icmp eq ptr %retval.0.i461, null
  br i1 %tobool228.not, label %if.then229, label %if.end242

if.then229:                                       ; preds = %do.end227
  call void @__sanitizer_cov_trace_pc() #6
  %call230 = tail call ptr @sti_plane_to_str(ptr noundef %drm_plane) #4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.84, ptr noundef %call230) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !234
  tail call void @arm_heavy_mb() #4
  %is_curr_top = getelementptr inbounds %struct.sti_gdp, ptr %drm_plane, i32 0, i32 7
  %184 = ptrtoint ptr %is_curr_top to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %is_curr_top, align 8, !range !235
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %185)
  %tobool234.not = icmp eq i8 %185, 0
  %.423 = select i1 %tobool234.not, i32 %167, i32 %169
  %186 = tail call i32 @llvm.bswap.i32(i32 %.423)
  %187 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %regs.i, align 4
  %add.ptr241 = getelementptr i8, ptr %188, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr241, i32 %186) #4, !srcloc !236
  br label %end

if.end242:                                        ; preds = %do.end227
  %189 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %flags, align 4
  %and244 = and i32 %190, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and244)
  %tobool245.not = icmp eq i32 %and244, 0
  br i1 %tobool245.not, label %do.body259, label %if.then246

if.then246:                                       ; preds = %if.end242
  %is_curr_top247 = getelementptr inbounds %struct.sti_gdp, ptr %drm_plane, i32 0, i32 7
  %191 = ptrtoint ptr %is_curr_top247 to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %is_curr_top247, align 8, !range !235
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %192)
  %tobool248.not = icmp eq i8 %192, 0
  br i1 %tobool248.not, label %do.body252, label %if.then249

if.then249:                                       ; preds = %if.then246
  call void @__sanitizer_cov_trace_pc() #6
  %btm_field250 = getelementptr inbounds %struct.sti_gdp_node_list, ptr %retval.0.i461, i32 0, i32 2
  %193 = ptrtoint ptr %btm_field250 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %btm_field250, align 4
  %gam_gdp_nvn251 = getelementptr inbounds %struct.sti_gdp_node, ptr %194, i32 0, i32 9
  %195 = ptrtoint ptr %gam_gdp_nvn251 to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %167, ptr %gam_gdp_nvn251, align 4
  br label %end

do.body252:                                       ; preds = %if.then246
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !237
  tail call void @arm_heavy_mb() #4
  %196 = tail call i32 @llvm.bswap.i32(i32 %167)
  %197 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %regs.i, align 4
  %add.ptr256 = getelementptr i8, ptr %198, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr256, i32 %196) #4, !srcloc !236
  br label %end

do.body259:                                       ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !238
  tail call void @arm_heavy_mb() #4
  %199 = tail call i32 @llvm.bswap.i32(i32 %167)
  %200 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %regs.i, align 4
  %add.ptr263 = getelementptr i8, ptr %201, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr263, i32 %199) #4, !srcloc !236
  br label %end

end:                                              ; preds = %do.body259, %do.body252, %if.then249, %if.then229
  tail call void @sti_plane_update_fps(ptr noundef %drm_plane, i1 noundef zeroext true, i1 noundef zeroext false) #4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %end, %if.then37
  %status265 = getelementptr inbounds %struct.sti_plane, ptr %drm_plane, i32 0, i32 2
  %202 = ptrtoint ptr %status265 to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 1, ptr %status265, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sti_gdp_atomic_disable(ptr noundef %drm_plane, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %planes.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 3
  %0 = ptrtoint ptr %planes.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %planes.i, align 4
  %index.i.i = getelementptr inbounds %struct.drm_plane, ptr %drm_plane, i32 0, i32 17
  %2 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i.i, align 4
  %old_state.i = getelementptr %struct.__drm_planes_state, ptr %1, i32 %3, i32 2
  %4 = ptrtoint ptr %old_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %old_state.i, align 4
  %crtc = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %crtc, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %base = getelementptr inbounds %struct.drm_plane, ptr %drm_plane, i32 0, i32 4
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.90, i32 noundef %9) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %base2 = getelementptr inbounds %struct.drm_crtc, ptr %7, i32 0, i32 5
  %10 = ptrtoint ptr %base2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %base2, align 8
  %add.ptr7 = getelementptr i8, ptr %7, i32 -16
  %call8 = tail call ptr @sti_mixer_to_str(ptr noundef %add.ptr7) #4
  %base9 = getelementptr inbounds %struct.drm_plane, ptr %drm_plane, i32 0, i32 4
  %12 = ptrtoint ptr %base9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %base9, align 4
  %call11 = tail call ptr @sti_plane_to_str(ptr noundef %drm_plane) #4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.74, i32 noundef %11, ptr noundef %call8, i32 noundef %13, ptr noundef %call11) #4
  %status = getelementptr inbounds %struct.sti_plane, ptr %drm_plane, i32 0, i32 2
  %14 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %status, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_crtc_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_fb_cma_get_gem_obj(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sti_vtg_register_client(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sti_vtg_get_line_number(ptr noundef byval(%struct.drm_display_mode) align 4, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sti_vtg_get_pixel_number(ptr noundef byval(%struct.drm_display_mode) align 4, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sti_plane_update_fps(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 101)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 101)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !172, !173, !174, !175, !177, !179, !180, !182, !183, !185, !187, !189, !190, !191, !193, !194, !196}
!llvm.module.flags = !{!198, !199, !200, !201, !202, !203, !204, !205}
!llvm.ident = !{!206}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 925, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 945, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 494, i32 3}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 508, i32 3}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 458, i32 2}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 467, i32 3}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 528, i32 3}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 535, i32 4}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 541, i32 3}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 551, i32 3}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 556, i32 34}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 562, i32 15}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 565, i32 15}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 568, i32 15}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 571, i32 15}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 574, i32 4}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 580, i32 4}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 582, i32 49}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 584, i32 4}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 586, i32 48}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 588, i32 4}
!42 = !{ptr @sti_gdp_plane_helpers_funcs, !43, !"sti_gdp_plane_helpers_funcs", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 904, i32 37}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 297, i32 4}
!46 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 298, i32 4}
!48 = !{ptr @gdp0_debugfs_files, !49, !"gdp0_debugfs_files", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 296, i32 29}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 224, i32 16}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 227, i32 2}
!54 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 229, i32 2}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 230, i32 2}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 232, i32 2}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 234, i32 2}
!63 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 235, i32 2}
!65 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 236, i32 2}
!67 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 238, i32 2}
!69 = !{ptr @.str.33, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 240, i32 2}
!71 = !{ptr @.str.34, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 241, i32 2}
!73 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 242, i32 2}
!75 = !{ptr @.str.36, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 244, i32 2}
!77 = !{ptr @.str.37, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 245, i32 2}
!79 = !{ptr @.str.38, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 248, i32 14}
!81 = !{ptr @.str.39, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 250, i32 15}
!83 = !{ptr @.str.40, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 252, i32 17}
!85 = !{ptr @.str.41, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 153, i32 14}
!87 = !{ptr @.str.42, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 161, i32 15}
!89 = !{ptr @.str.43, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 163, i32 16}
!91 = !{ptr @gdp_format_to_str, !92, !"gdp_format_to_str", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 44, i32 3}
!93 = !{ptr @.str.44, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 168, i32 16}
!95 = !{ptr @.str.45, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 173, i32 16}
!97 = !{ptr @.str.46, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 178, i32 16}
!99 = !{ptr @.str.47, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 198, i32 17}
!101 = !{ptr @.str.48, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 204, i32 15}
!103 = !{ptr @.str.49, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 210, i32 15}
!105 = !{ptr @.str.50, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 287, i32 17}
!107 = !{ptr @.str.51, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 289, i32 17}
!109 = !{ptr @.str.52, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 260, i32 16}
!111 = !{ptr @.str.53, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 261, i32 16}
!113 = !{ptr @.str.54, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 263, i32 16}
!115 = !{ptr @.str.55, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 264, i32 16}
!117 = !{ptr @.str.56, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 266, i32 16}
!119 = !{ptr @.str.57, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 268, i32 16}
!121 = !{ptr @.str.58, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 269, i32 16}
!123 = !{ptr @.str.59, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 270, i32 16}
!125 = !{ptr @.str.60, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 272, i32 16}
!127 = !{ptr @.str.61, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 273, i32 16}
!129 = !{ptr @.str.62, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 274, i32 16}
!131 = !{ptr @.str.63, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 275, i32 16}
!133 = !{ptr @.str.64, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 277, i32 16}
!135 = !{ptr @.str.65, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 302, i32 4}
!137 = !{ptr @.str.66, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 303, i32 4}
!139 = !{ptr @gdp1_debugfs_files, !140, !"gdp1_debugfs_files", i1 false, i1 false}
!140 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 301, i32 29}
!141 = !{ptr @.str.67, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 307, i32 4}
!143 = !{ptr @.str.68, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 308, i32 4}
!145 = !{ptr @gdp2_debugfs_files, !146, !"gdp2_debugfs_files", i1 false, i1 false}
!146 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 306, i32 29}
!147 = !{ptr @.str.69, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 312, i32 4}
!149 = !{ptr @.str.70, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 313, i32 4}
!151 = !{ptr @gdp3_debugfs_files, !152, !"gdp3_debugfs_files", i1 false, i1 false}
!152 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 311, i32 29}
!153 = !{ptr @gdp_supported_formats, !154, !"gdp_supported_formats", i1 false, i1 false}
!154 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 135, i32 23}
!155 = !{ptr @sti_gdp_helpers_funcs, !156, !"sti_gdp_helpers_funcs", i1 false, i1 false}
!156 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 890, i32 44}
!157 = !{ptr @.str.71, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 654, i32 3}
!159 = !{ptr @.str.72, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 660, i32 3}
!161 = !{ptr @.str.73, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 684, i32 4}
!163 = !{ptr @.str.74, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 690, i32 2}
!165 = !{ptr @.str.75, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 693, i32 2}
!167 = !{ptr @.str.76, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 738, i32 3}
!169 = !{ptr @.str.77, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 768, i32 2}
!171 = !{ptr @.str.78, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @.str.79, !170, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @.str.80, !170, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @sti_gdp_atomic_update.__UNIQUE_ID_ddebug352, !170, !"__UNIQUE_ID_ddebug352", i1 false, i1 false}
!175 = !{ptr @.str.81, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 781, i32 2}
!177 = !{ptr @.str.82, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 829, i32 2}
!179 = !{ptr @sti_gdp_atomic_update.__UNIQUE_ID_ddebug353, !178, !"__UNIQUE_ID_ddebug353", i1 false, i1 false}
!180 = !{ptr @.str.83, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 831, i32 2}
!182 = !{ptr @sti_gdp_atomic_update.__UNIQUE_ID_ddebug354, !181, !"__UNIQUE_ID_ddebug354", i1 false, i1 false}
!183 = !{ptr @.str.84, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 838, i32 3}
!185 = !{ptr @.str.85, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 410, i32 2}
!187 = !{ptr @.str.86, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 609, i32 3}
!189 = !{ptr @.str.87, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @sti_gdp_get_dst.__UNIQUE_ID_ddebug318, !188, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!191 = !{ptr @.str.88, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 613, i32 2}
!193 = !{ptr @sti_gdp_get_dst.__UNIQUE_ID_ddebug319, !192, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!194 = !{ptr @.str.89, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 442, i32 2}
!196 = !{ptr @.str.90, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/gpu/drm/sti/sti_gdp.c", i32 877, i32 3}
!198 = !{i32 1, !"wchar_size", i32 2}
!199 = !{i32 1, !"min_enum_size", i32 4}
!200 = !{i32 8, !"branch-target-enforcement", i32 0}
!201 = !{i32 8, !"sign-return-address", i32 0}
!202 = !{i32 8, !"sign-return-address-all", i32 0}
!203 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!204 = !{i32 7, !"uwtable", i32 1}
!205 = !{i32 7, !"frame-pointer", i32 2}
!206 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!207 = !{!"auto-init"}
!208 = !{i64 6241370}
!209 = !{i64 2156802286}
!210 = !{i64 2156802773}
!211 = !{i64 2156803389}
!212 = !{i64 2156804005}
!213 = !{i64 2156804492}
!214 = !{i64 2156805108}
!215 = !{i64 2156805595}
!216 = !{i64 2156806211}
!217 = !{i64 2156806827}
!218 = !{i64 2156807446}
!219 = !{i64 2156807933}
!220 = !{i64 2156808549}
!221 = !{i64 2156809036}
!222 = !{i64 2156809655}
!223 = !{i64 2156810274}
!224 = !{i64 2156810890}
!225 = !{i64 2156811377}
!226 = !{i64 2156811993}
!227 = !{i64 2156812609}
!228 = !{i64 2156813096}
!229 = !{i64 2156818481}
!230 = !{i64 2148345887, i64 2148345892, i64 2148345905, i64 2148345949, i64 2148345983, i64 2148346004}
!231 = !{i64 2156819074}
!232 = !{i64 2156993336}
!233 = !{i64 2156996458}
!234 = !{i64 2156996836}
!235 = !{i8 0, i8 2}
!236 = !{i64 6240952}
!237 = !{i64 2156997406}
!238 = !{i64 2156997846}
