; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/ast/ast_mode.c_pt.bc'
source_filename = "../drivers/gpu/drm/ast/ast_mode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_mode_config_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_mode_config_helper_funcs = type { ptr, ptr }
%struct.drm_plane_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_plane_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ast_vbios_stdtable = type { i8, [4 x i8], [25 x i8], [20 x i8], [9 x i8] }
%struct.ast_vbios_enhtable = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ast_vbios_dclk_info = type { i8, i8, i8 }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_buf_map = type { %union.anon.84, i8 }
%union.anon.84 = type { ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.90, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
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
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.anon.90 = type { i32, ptr }
%struct.ast_private = type { %struct.drm_device, ptr, ptr, ptr, i32, i8, i32, i32, i32, %struct.drm_plane, %struct.ast_cursor_plane, %struct.drm_crtc, %struct.drm_encoder, %struct.ast_connector, i8, i32, i32, i8, ptr, ptr }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.ast_cursor_plane = type { %struct.drm_plane, [2 x %struct.anon.91], i32 }
%struct.anon.91 = type { ptr, %struct.dma_buf_map, i64 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.ast_connector = type { %struct.drm_connector, ptr }
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
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_planes_state = type { ptr, ptr, ptr, ptr }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.ast_crtc_state = type { %struct.drm_crtc_state, ptr, %struct.ast_vbios_mode_info }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.ast_vbios_mode_info = type { ptr, ptr }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.83, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.83 = type { [4 x i8] }
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
%struct.drm_shadow_plane_state = type { %struct.drm_plane_state, [4 x %struct.dma_buf_map], [4 x %struct.dma_buf_map] }

@ast_mode_config_funcs = internal constant { %struct.drm_mode_config_funcs, [60 x i8] } { %struct.drm_mode_config_funcs { ptr @drm_gem_fb_create, ptr null, ptr null, ptr @drm_vram_helper_mode_valid, ptr @drm_atomic_helper_check, ptr @drm_atomic_helper_commit, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@ast_mode_config_helper_funcs = internal constant { %struct.drm_mode_config_helper_funcs, [24 x i8] } { %struct.drm_mode_config_helper_funcs { ptr @drm_atomic_helper_commit_tail_rpm, ptr null }, [24 x i8] zeroinitializer }, align 32
@ast_primary_plane_funcs = internal constant { %struct.drm_plane_funcs, [44 x i8] } { %struct.drm_plane_funcs { ptr @drm_atomic_helper_update_plane, ptr @drm_atomic_helper_disable_plane, ptr @drm_plane_cleanup, ptr @drm_atomic_helper_plane_reset, ptr null, ptr @drm_atomic_helper_plane_duplicate_state, ptr @drm_atomic_helper_plane_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@ast_primary_plane_formats = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 875713112, i32 909199186, i32 538982467], [20 x i8] zeroinitializer }, align 32
@ast_primary_plane_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 641, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"[drm] *ERROR* drm_universal_plane_init() failed: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ast_primary_plane_init\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/gpu/drm/ast/ast_mode.c\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ast_primary_plane_init._entry_ptr = internal global ptr @ast_primary_plane_init._entry, section ".printk_index", align 4
@ast_primary_plane_helper_funcs = internal constant { %struct.drm_plane_helper_funcs, [36 x i8] } { %struct.drm_plane_helper_funcs { ptr @drm_gem_vram_plane_helper_prepare_fb, ptr @drm_gem_vram_plane_helper_cleanup_fb, ptr @ast_primary_plane_helper_atomic_check, ptr @ast_primary_plane_helper_atomic_update, ptr @ast_primary_plane_helper_atomic_disable, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ast_primary_plane_helper_atomic_update.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s %s: %s\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drm_WARN_ON_ONCE(gpu_addr < 0)\00", [33 x i8] zeroinitializer }, align 32
@ast_cursor_plane_funcs = internal constant { %struct.drm_plane_funcs, [44 x i8] } { %struct.drm_plane_funcs { ptr @drm_atomic_helper_update_plane, ptr @drm_atomic_helper_disable_plane, ptr @ast_cursor_plane_destroy, ptr @drm_gem_reset_shadow_plane, ptr null, ptr @drm_gem_duplicate_shadow_plane_state, ptr @drm_gem_destroy_shadow_plane_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@ast_cursor_plane_formats = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 875713089], [28 x i8] zeroinitializer }, align 32
@ast_cursor_plane_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 958, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"[drm] *ERROR* drm_universal_plane failed(): %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ast_cursor_plane_init\00", [42 x i8] zeroinitializer }, align 32
@ast_cursor_plane_init._entry_ptr = internal global ptr @ast_cursor_plane_init._entry, section ".printk_index", align 4
@ast_cursor_plane_helper_funcs = internal constant { %struct.drm_plane_helper_funcs, [36 x i8] } { %struct.drm_plane_helper_funcs { ptr @drm_gem_prepare_shadow_fb, ptr @drm_gem_cleanup_shadow_fb, ptr @ast_cursor_plane_helper_atomic_check, ptr @ast_cursor_plane_helper_atomic_update, ptr @ast_cursor_plane_helper_atomic_disable, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ast_crtc_funcs = internal constant { %struct.drm_crtc_funcs, [32 x i8] } { %struct.drm_crtc_funcs { ptr @ast_crtc_reset, ptr null, ptr null, ptr null, ptr null, ptr @drm_crtc_cleanup, ptr @drm_atomic_helper_set_config, ptr @drm_atomic_helper_page_flip, ptr null, ptr null, ptr @ast_crtc_atomic_duplicate_state, ptr @ast_crtc_atomic_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@ast_crtc_helper_funcs = internal constant { %struct.drm_crtc_helper_funcs, [32 x i8] } { %struct.drm_crtc_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ast_crtc_helper_atomic_check, ptr null, ptr @ast_crtc_helper_atomic_flush, ptr @ast_crtc_helper_atomic_enable, ptr @ast_crtc_helper_atomic_disable, ptr null }, [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drm_WARN_ON(!crtc->state)\00", [38 x i8] zeroinitializer }, align 32
@ast_crtc_helper_atomic_check.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drm_WARN_ON_ONCE(!format)\00", [38 x i8] zeroinitializer }, align 32
@vbios_stdtable = internal constant { [5 x %struct.ast_vbios_stdtable], [89 x i8] } { [5 x %struct.ast_vbios_stdtable] [%struct.ast_vbios_stdtable { i8 103, [4 x i8] c"\00\03\00\02", [25 x i8] c"_OP\82U\81\BF\1F\00O\0D\0E\00\00\00\00\9C\8E\8F(\1F\96\B9\A3\FF", [20 x i8] c"\00\01\02\03\04\05\14\0789:;<=>?\0C\00\0F\08", [9 x i8] c"\00\00\00\00\00\10\0E\00\FF" }, %struct.ast_vbios_stdtable { i8 -29, [4 x i8] c"\01\0F\00\06", [25 x i8] c"_OP\82U\81\0B>\00@\00\00\00\00\00\00\E9\8B\DF(\00\E7\04\E3\FF", [20 x i8] c"\00\01\02\03\04\05\14\0789:;<=>?\01\00\0F\00", [9 x i8] c"\00\00\00\00\00\00\05\0F\FF" }, %struct.ast_vbios_stdtable { i8 47, [4 x i8] c"\01\0F\00\0E", [25 x i8] c"_OP\82T\80\0B>\00@\00\00\00\00\00\00\EA\8C\DF(@\E7\04\A3\FF", [20 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\01\00\00\00", [9 x i8] c"\00\00\00\00\00@\05\0F\FF" }, %struct.ast_vbios_stdtable { i8 47, [4 x i8] c"\01\0F\00\0E", [25 x i8] c"_OP\82T\80\0B>\00@\00\00\00\00\00\00\EA\8C\DF(@\E7\04\A3\FF", [20 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\01\00\00\00", [9 x i8] c"\00\00\00\00\00\00\05\0F\FF" }, %struct.ast_vbios_stdtable { i8 47, [4 x i8] c"\01\0F\00\0E", [25 x i8] c"_OP\82T\80\0B>\00@\00\00\00\00\00\00\EA\8C\DF(@\E7\04\A3\FF", [20 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\01\00\00\00", [9 x i8] c"\00\00\00\00\00\00\05\0F\FF" }], [89 x i8] zeroinitializer }, align 32
@res_640x480 = internal constant { [5 x %struct.ast_vbios_enhtable], [92 x i8] } { [5 x %struct.ast_vbios_enhtable] [%struct.ast_vbios_enhtable { i32 800, i32 640, i32 8, i32 96, i32 525, i32 480, i32 2, i32 2, i32 0, i32 5169, i32 60, i32 1, i32 46 }, %struct.ast_vbios_enhtable { i32 832, i32 640, i32 16, i32 40, i32 520, i32 480, i32 1, i32 3, i32 2, i32 5169, i32 72, i32 2, i32 46 }, %struct.ast_vbios_enhtable { i32 840, i32 640, i32 16, i32 64, i32 500, i32 480, i32 1, i32 3, i32 2, i32 5121, i32 75, i32 3, i32 46 }, %struct.ast_vbios_enhtable { i32 832, i32 640, i32 56, i32 56, i32 509, i32 480, i32 1, i32 3, i32 3, i32 5121, i32 85, i32 4, i32 46 }, %struct.ast_vbios_enhtable { i32 832, i32 640, i32 56, i32 56, i32 509, i32 480, i32 1, i32 3, i32 3, i32 5121, i32 255, i32 4, i32 46 }], [92 x i8] zeroinitializer }, align 32
@res_800x600 = internal constant { [6 x %struct.ast_vbios_enhtable], [72 x i8] } { [6 x %struct.ast_vbios_enhtable] [%struct.ast_vbios_enhtable { i32 1024, i32 800, i32 24, i32 72, i32 625, i32 600, i32 1, i32 2, i32 3, i32 10241, i32 56, i32 1, i32 48 }, %struct.ast_vbios_enhtable { i32 1056, i32 800, i32 40, i32 128, i32 628, i32 600, i32 1, i32 4, i32 4, i32 10241, i32 60, i32 2, i32 48 }, %struct.ast_vbios_enhtable { i32 1040, i32 800, i32 56, i32 120, i32 666, i32 600, i32 37, i32 6, i32 6, i32 10241, i32 72, i32 3, i32 48 }, %struct.ast_vbios_enhtable { i32 1056, i32 800, i32 16, i32 80, i32 625, i32 600, i32 1, i32 3, i32 5, i32 10241, i32 75, i32 4, i32 48 }, %struct.ast_vbios_enhtable { i32 1048, i32 800, i32 32, i32 64, i32 631, i32 600, i32 1, i32 3, i32 7, i32 10241, i32 84, i32 5, i32 48 }, %struct.ast_vbios_enhtable { i32 1048, i32 800, i32 32, i32 64, i32 631, i32 600, i32 1, i32 3, i32 7, i32 10241, i32 255, i32 5, i32 48 }], [72 x i8] zeroinitializer }, align 32
@res_1024x768 = internal constant { [5 x %struct.ast_vbios_enhtable], [92 x i8] } { [5 x %struct.ast_vbios_enhtable] [%struct.ast_vbios_enhtable { i32 1344, i32 1024, i32 24, i32 136, i32 806, i32 768, i32 3, i32 6, i32 8, i32 5121, i32 60, i32 1, i32 49 }, %struct.ast_vbios_enhtable { i32 1328, i32 1024, i32 24, i32 136, i32 806, i32 768, i32 3, i32 6, i32 9, i32 5121, i32 70, i32 2, i32 49 }, %struct.ast_vbios_enhtable { i32 1312, i32 1024, i32 16, i32 96, i32 800, i32 768, i32 1, i32 3, i32 10, i32 10241, i32 75, i32 3, i32 49 }, %struct.ast_vbios_enhtable { i32 1376, i32 1024, i32 48, i32 96, i32 808, i32 768, i32 1, i32 3, i32 11, i32 10241, i32 84, i32 4, i32 49 }, %struct.ast_vbios_enhtable { i32 1376, i32 1024, i32 48, i32 96, i32 808, i32 768, i32 1, i32 3, i32 11, i32 10241, i32 255, i32 4, i32 49 }], [92 x i8] zeroinitializer }, align 32
@res_1280x800 = internal constant { [3 x %struct.ast_vbios_enhtable], [36 x i8] } { [3 x %struct.ast_vbios_enhtable] [%struct.ast_vbios_enhtable { i32 1440, i32 1280, i32 48, i32 32, i32 823, i32 800, i32 3, i32 6, i32 21, i32 23305, i32 60, i32 1, i32 53 }, %struct.ast_vbios_enhtable { i32 1680, i32 1280, i32 72, i32 128, i32 831, i32 800, i32 3, i32 6, i32 17, i32 9993, i32 60, i32 2, i32 53 }, %struct.ast_vbios_enhtable { i32 1680, i32 1280, i32 72, i32 128, i32 831, i32 800, i32 3, i32 6, i32 17, i32 9993, i32 255, i32 2, i32 53 }], [36 x i8] zeroinitializer }, align 32
@res_1280x1024 = internal constant { [4 x %struct.ast_vbios_enhtable], [48 x i8] } { [4 x %struct.ast_vbios_enhtable] [%struct.ast_vbios_enhtable { i32 1688, i32 1280, i32 48, i32 112, i32 1066, i32 1024, i32 1, i32 3, i32 12, i32 10241, i32 60, i32 1, i32 50 }, %struct.ast_vbios_enhtable { i32 1688, i32 1280, i32 16, i32 144, i32 1066, i32 1024, i32 1, i32 3, i32 13, i32 10241, i32 75, i32 2, i32 50 }, %struct.ast_vbios_enhtable { i32 1728, i32 1280, i32 64, i32 160, i32 1072, i32 1024, i32 1, i32 3, i32 14, i32 10241, i32 85, i32 3, i32 50 }, %struct.ast_vbios_enhtable { i32 1728, i32 1280, i32 64, i32 160, i32 1072, i32 1024, i32 1, i32 3, i32 14, i32 10241, i32 255, i32 3, i32 50 }], [48 x i8] zeroinitializer }, align 32
@res_1360x768 = internal constant { [2 x %struct.ast_vbios_enhtable], [56 x i8] } { [2 x %struct.ast_vbios_enhtable] [%struct.ast_vbios_enhtable { i32 1792, i32 1360, i32 64, i32 112, i32 795, i32 768, i32 3, i32 6, i32 24, i32 11017, i32 60, i32 1, i32 57 }, %struct.ast_vbios_enhtable { i32 1792, i32 1360, i32 64, i32 112, i32 795, i32 768, i32 3, i32 6, i32 24, i32 27401, i32 255, i32 1, i32 57 }], [56 x i8] zeroinitializer }, align 32
@res_1440x900 = internal constant { [3 x %struct.ast_vbios_enhtable], [36 x i8] } { [3 x %struct.ast_vbios_enhtable] [%struct.ast_vbios_enhtable { i32 1600, i32 1440, i32 48, i32 32, i32 926, i32 900, i32 3, i32 6, i32 22, i32 23305, i32 60, i32 1, i32 54 }, %struct.ast_vbios_enhtable { i32 1904, i32 1440, i32 80, i32 152, i32 934, i32 900, i32 3, i32 6, i32 18, i32 9993, i32 60, i32 2, i32 54 }, %struct.ast_vbios_enhtable { i32 1904, i32 1440, i32 80, i32 152, i32 934, i32 900, i32 3, i32 6, i32 18, i32 9993, i32 255, i32 2, i32 54 }], [36 x i8] zeroinitializer }, align 32
@res_1600x900 = internal constant { [3 x %struct.ast_vbios_enhtable], [36 x i8] } { [3 x %struct.ast_vbios_enhtable] [%struct.ast_vbios_enhtable { i32 1760, i32 1600, i32 48, i32 32, i32 926, i32 900, i32 3, i32 5, i32 25, i32 23305, i32 60, i32 1, i32 58 }, %struct.ast_vbios_enhtable { i32 2112, i32 1600, i32 88, i32 168, i32 934, i32 900, i32 3, i32 5, i32 26, i32 9993, i32 60, i32 2, i32 58 }, %struct.ast_vbios_enhtable { i32 2112, i32 1600, i32 88, i32 168, i32 934, i32 900, i32 3, i32 5, i32 26, i32 9993, i32 255, i32 2, i32 58 }], [36 x i8] zeroinitializer }, align 32
@res_1600x1200 = internal constant { [2 x %struct.ast_vbios_enhtable], [56 x i8] } { [2 x %struct.ast_vbios_enhtable] [%struct.ast_vbios_enhtable { i32 2160, i32 1600, i32 64, i32 192, i32 1250, i32 1200, i32 1, i32 3, i32 15, i32 10241, i32 60, i32 1, i32 51 }, %struct.ast_vbios_enhtable { i32 2160, i32 1600, i32 64, i32 192, i32 1250, i32 1200, i32 1, i32 3, i32 15, i32 10241, i32 255, i32 1, i32 51 }], [56 x i8] zeroinitializer }, align 32
@res_1680x1050 = internal constant { [3 x %struct.ast_vbios_enhtable], [36 x i8] } { [3 x %struct.ast_vbios_enhtable] [%struct.ast_vbios_enhtable { i32 1840, i32 1680, i32 48, i32 32, i32 1080, i32 1050, i32 3, i32 6, i32 23, i32 23305, i32 60, i32 1, i32 55 }, %struct.ast_vbios_enhtable { i32 2240, i32 1680, i32 104, i32 176, i32 1089, i32 1050, i32 3, i32 6, i32 19, i32 9993, i32 60, i32 2, i32 55 }, %struct.ast_vbios_enhtable { i32 2240, i32 1680, i32 104, i32 176, i32 1089, i32 1050, i32 3, i32 6, i32 19, i32 9993, i32 255, i32 2, i32 55 }], [36 x i8] zeroinitializer }, align 32
@res_1920x1080 = internal constant { [2 x %struct.ast_vbios_enhtable], [56 x i8] } { [2 x %struct.ast_vbios_enhtable] [%struct.ast_vbios_enhtable { i32 2200, i32 1920, i32 88, i32 44, i32 1125, i32 1080, i32 4, i32 5, i32 20, i32 27401, i32 60, i32 1, i32 56 }, %struct.ast_vbios_enhtable { i32 2200, i32 1920, i32 88, i32 44, i32 1125, i32 1080, i32 4, i32 5, i32 20, i32 27401, i32 255, i32 1, i32 56 }], [56 x i8] zeroinitializer }, align 32
@res_1920x1200 = internal constant { [2 x %struct.ast_vbios_enhtable], [56 x i8] } { [2 x %struct.ast_vbios_enhtable] [%struct.ast_vbios_enhtable { i32 2080, i32 1920, i32 48, i32 32, i32 1235, i32 1200, i32 3, i32 6, i32 16, i32 23305, i32 60, i32 1, i32 52 }, %struct.ast_vbios_enhtable { i32 2080, i32 1920, i32 48, i32 32, i32 1235, i32 1200, i32 3, i32 6, i32 16, i32 23305, i32 255, i32 1, i32 52 }], [56 x i8] zeroinitializer }, align 32
@dclk_table_ast2500 = internal constant { [27 x %struct.ast_vbios_dclk_info], [47 x i8] } { [27 x %struct.ast_vbios_dclk_info] [%struct.ast_vbios_dclk_info { i8 44, i8 -25, i8 3 }, %struct.ast_vbios_dclk_info { i8 -107, i8 98, i8 3 }, %struct.ast_vbios_dclk_info { i8 103, i8 99, i8 1 }, %struct.ast_vbios_dclk_info { i8 118, i8 99, i8 1 }, %struct.ast_vbios_dclk_info { i8 -18, i8 103, i8 1 }, %struct.ast_vbios_dclk_info { i8 -126, i8 98, i8 1 }, %struct.ast_vbios_dclk_info { i8 -58, i8 100, i8 1 }, %struct.ast_vbios_dclk_info { i8 -108, i8 98, i8 1 }, %struct.ast_vbios_dclk_info { i8 -128, i8 100, i8 0 }, %struct.ast_vbios_dclk_info { i8 123, i8 99, i8 0 }, %struct.ast_vbios_dclk_info { i8 103, i8 98, i8 0 }, %struct.ast_vbios_dclk_info { i8 124, i8 98, i8 0 }, %struct.ast_vbios_dclk_info { i8 -114, i8 98, i8 0 }, %struct.ast_vbios_dclk_info { i8 -123, i8 36, i8 0 }, %struct.ast_vbios_dclk_info { i8 103, i8 34, i8 0 }, %struct.ast_vbios_dclk_info { i8 106, i8 34, i8 0 }, %struct.ast_vbios_dclk_info { i8 77, i8 76, i8 -128 }, %struct.ast_vbios_dclk_info { i8 104, i8 111, i8 -128 }, %struct.ast_vbios_dclk_info { i8 40, i8 73, i8 -128 }, %struct.ast_vbios_dclk_info { i8 55, i8 73, i8 -128 }, %struct.ast_vbios_dclk_info { i8 31, i8 69, i8 -128 }, %struct.ast_vbios_dclk_info { i8 71, i8 108, i8 -128 }, %struct.ast_vbios_dclk_info { i8 37, i8 101, i8 -128 }, %struct.ast_vbios_dclk_info { i8 88, i8 1, i8 66 }, %struct.ast_vbios_dclk_info { i8 50, i8 103, i8 -128 }, %struct.ast_vbios_dclk_info { i8 106, i8 109, i8 -128 }, %struct.ast_vbios_dclk_info { i8 68, i8 32, i8 67 }], [47 x i8] zeroinitializer }, align 32
@dclk_table = internal constant { [27 x %struct.ast_vbios_dclk_info], [47 x i8] } { [27 x %struct.ast_vbios_dclk_info] [%struct.ast_vbios_dclk_info { i8 44, i8 -25, i8 3 }, %struct.ast_vbios_dclk_info { i8 -107, i8 98, i8 3 }, %struct.ast_vbios_dclk_info { i8 103, i8 99, i8 1 }, %struct.ast_vbios_dclk_info { i8 118, i8 99, i8 1 }, %struct.ast_vbios_dclk_info { i8 -18, i8 103, i8 1 }, %struct.ast_vbios_dclk_info { i8 -126, i8 98, i8 1 }, %struct.ast_vbios_dclk_info { i8 -58, i8 100, i8 1 }, %struct.ast_vbios_dclk_info { i8 -108, i8 98, i8 1 }, %struct.ast_vbios_dclk_info { i8 -128, i8 100, i8 0 }, %struct.ast_vbios_dclk_info { i8 123, i8 99, i8 0 }, %struct.ast_vbios_dclk_info { i8 103, i8 98, i8 0 }, %struct.ast_vbios_dclk_info { i8 124, i8 98, i8 0 }, %struct.ast_vbios_dclk_info { i8 -114, i8 98, i8 0 }, %struct.ast_vbios_dclk_info { i8 -123, i8 36, i8 0 }, %struct.ast_vbios_dclk_info { i8 103, i8 34, i8 0 }, %struct.ast_vbios_dclk_info { i8 106, i8 34, i8 0 }, %struct.ast_vbios_dclk_info { i8 77, i8 76, i8 -128 }, %struct.ast_vbios_dclk_info { i8 104, i8 111, i8 -128 }, %struct.ast_vbios_dclk_info { i8 40, i8 73, i8 -128 }, %struct.ast_vbios_dclk_info { i8 55, i8 73, i8 -128 }, %struct.ast_vbios_dclk_info { i8 31, i8 69, i8 -128 }, %struct.ast_vbios_dclk_info { i8 71, i8 108, i8 -128 }, %struct.ast_vbios_dclk_info { i8 37, i8 101, i8 -128 }, %struct.ast_vbios_dclk_info { i8 119, i8 88, i8 -128 }, %struct.ast_vbios_dclk_info { i8 50, i8 103, i8 -128 }, %struct.ast_vbios_dclk_info { i8 106, i8 109, i8 -128 }, %struct.ast_vbios_dclk_info { i8 59, i8 44, i8 -127 }], [47 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@ast_connector_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 1325, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"[drm] *ERROR* failed to add ddc bus for connector\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ast_connector_init\00", [45 x i8] zeroinitializer }, align 32
@ast_connector_init._entry_ptr = internal global ptr @ast_connector_init._entry, section ".printk_index", align 4
@ast_connector_funcs = internal constant { %struct.drm_connector_funcs, [36 x i8] } { %struct.drm_connector_funcs { ptr null, ptr @drm_atomic_helper_connector_reset, ptr null, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr null, ptr null, ptr @drm_connector_cleanup, ptr @drm_atomic_helper_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ast_connector_helper_funcs = internal constant { %struct.drm_connector_helper_funcs, [56 x i8] } { %struct.drm_connector_helper_funcs { ptr @ast_get_modes, ptr null, ptr @ast_mode_valid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@switch.table.ast_mode_config_init = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 1920, i32 1600, i32 1920, i32 1600, i32 1920, i32 1920, i32 1920], [36 x i8] zeroinitializer }, align 32
@switch.table.ast_mode_config_init.13 = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 2048, i32 1200, i32 2048, i32 1200, i32 2048, i32 2048, i32 2048], [36 x i8] zeroinitializer }, align 32
@switch.table.ast_crtc_helper_atomic_check = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr getelementptr inbounds ([5 x %struct.ast_vbios_stdtable], ptr @vbios_stdtable, i32 0, i32 2), ptr getelementptr inbounds ([5 x %struct.ast_vbios_stdtable], ptr @vbios_stdtable, i32 0, i32 3), ptr getelementptr inbounds ([5 x %struct.ast_vbios_stdtable], ptr @vbios_stdtable, i32 0, i32 4), ptr getelementptr inbounds ([5 x %struct.ast_vbios_stdtable], ptr @vbios_stdtable, i32 0, i32 4)], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.14 = internal global [11 x i64] [i64 9, i64 16, i64 640, i64 800, i64 1024, i64 1280, i64 1360, i64 1440, i64 1600, i64 1680, i64 1920]
@__sancov_gen_cov_switch_values.15 = internal global [9 x i64] [i64 7, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.16 = internal global [7 x i64] [i64 5, i64 16, i64 1280, i64 1360, i64 1440, i64 1600, i64 1680]
@__sancov_gen_cov_switch_values.17 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 3, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.18 = internal global [7 x i64] [i64 5, i64 16, i64 640, i64 800, i64 1024, i64 1280, i64 1600]
@___asan_gen_.19 = private unnamed_addr constant [22 x i8] c"ast_mode_config_funcs\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 1356, i32 43 }
@___asan_gen_.22 = private unnamed_addr constant [29 x i8] c"ast_mode_config_helper_funcs\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 1352, i32 1 }
@___asan_gen_.25 = private unnamed_addr constant [24 x i8] c"ast_primary_plane_funcs\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 620, i32 37 }
@___asan_gen_.28 = private unnamed_addr constant [26 x i8] c"ast_primary_plane_formats\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 531, i32 23 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 641, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant [31 x i8] c"ast_primary_plane_helper_funcs\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 613, i32 44 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 595, i32 6 }
@___asan_gen_.58 = private unnamed_addr constant [23 x i8] c"ast_cursor_plane_funcs\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 899, i32 37 }
@___asan_gen_.61 = private unnamed_addr constant [25 x i8] c"ast_cursor_plane_formats\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 757, i32 23 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 958, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant [30 x i8] c"ast_cursor_plane_helper_funcs\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 874, i32 44 }
@___asan_gen_.76 = private unnamed_addr constant [15 x i8] c"ast_crtc_funcs\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 1159, i32 36 }
@___asan_gen_.79 = private unnamed_addr constant [22 x i8] c"ast_crtc_helper_funcs\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 1106, i32 43 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 1133, i32 6 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 1021, i32 6 }
@___asan_gen_.88 = private unnamed_addr constant [15 x i8] c"vbios_stdtable\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 142, i32 40 }
@___asan_gen_.91 = private unnamed_addr constant [12 x i8] c"res_640x480\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 215, i32 40 }
@___asan_gen_.94 = private unnamed_addr constant [12 x i8] c"res_800x600\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 228, i32 40 }
@___asan_gen_.97 = private unnamed_addr constant [13 x i8] c"res_1024x768\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 244, i32 40 }
@___asan_gen_.100 = private unnamed_addr constant [13 x i8] c"res_1280x800\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 305, i32 40 }
@___asan_gen_.103 = private unnamed_addr constant [14 x i8] c"res_1280x1024\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 257, i32 40 }
@___asan_gen_.106 = private unnamed_addr constant [13 x i8] c"res_1360x768\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 276, i32 40 }
@___asan_gen_.109 = private unnamed_addr constant [13 x i8] c"res_1440x900\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 316, i32 40 }
@___asan_gen_.112 = private unnamed_addr constant [13 x i8] c"res_1600x900\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 284, i32 40 }
@___asan_gen_.115 = private unnamed_addr constant [14 x i8] c"res_1600x1200\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 268, i32 40 }
@___asan_gen_.118 = private unnamed_addr constant [14 x i8] c"res_1680x1050\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 326, i32 40 }
@___asan_gen_.121 = private unnamed_addr constant [14 x i8] c"res_1920x1080\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 294, i32 40 }
@___asan_gen_.124 = private unnamed_addr constant [14 x i8] c"res_1920x1200\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 336, i32 40 }
@___asan_gen_.127 = private unnamed_addr constant [19 x i8] c"dclk_table_ast2500\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 112, i32 41 }
@___asan_gen_.130 = private unnamed_addr constant [11 x i8] c"dclk_table\00", align 1
@___asan_gen_.131 = private unnamed_addr constant [36 x i8] c"../drivers/gpu/drm/ast/ast_tables.h\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.131, i32 82, i32 41 }
@___asan_gen_.133 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.139 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 1325, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant [20 x i8] c"ast_connector_funcs\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 1308, i32 41 }
@___asan_gen_.145 = private unnamed_addr constant [27 x i8] c"ast_connector_helper_funcs\00", align 1
@___asan_gen_.146 = private constant [34 x i8] c"../drivers/gpu/drm/ast/ast_mode.c\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 1303, i32 48 }
@___asan_gen_.148 = private unnamed_addr constant [34 x i8] c"switch.table.ast_mode_config_init\00", align 1
@___asan_gen_.149 = private unnamed_addr constant [37 x i8] c"switch.table.ast_mode_config_init.13\00", align 1
@___asan_gen_.150 = private unnamed_addr constant [42 x i8] c"switch.table.ast_crtc_helper_atomic_check\00", align 1
@llvm.compiler.used = appending global [49 x ptr] [ptr @ast_connector_init._entry, ptr @ast_connector_init._entry_ptr, ptr @ast_cursor_plane_init._entry, ptr @ast_cursor_plane_init._entry_ptr, ptr @ast_primary_plane_init._entry, ptr @ast_primary_plane_init._entry_ptr, ptr @ast_mode_config_funcs, ptr @ast_mode_config_helper_funcs, ptr @ast_primary_plane_funcs, ptr @ast_primary_plane_formats, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @ast_primary_plane_helper_funcs, ptr @.str.5, ptr @.str.6, ptr @ast_cursor_plane_funcs, ptr @ast_cursor_plane_formats, ptr @.str.7, ptr @.str.8, ptr @ast_cursor_plane_helper_funcs, ptr @ast_crtc_funcs, ptr @ast_crtc_helper_funcs, ptr @.str.9, ptr @.str.10, ptr @vbios_stdtable, ptr @res_640x480, ptr @res_800x600, ptr @res_1024x768, ptr @res_1280x800, ptr @res_1280x1024, ptr @res_1360x768, ptr @res_1440x900, ptr @res_1600x900, ptr @res_1600x1200, ptr @res_1680x1050, ptr @res_1920x1080, ptr @res_1920x1200, ptr @dclk_table_ast2500, ptr @dclk_table, ptr @.str.11, ptr @.str.12, ptr @ast_connector_funcs, ptr @ast_connector_helper_funcs, ptr @switch.table.ast_mode_config_init, ptr @switch.table.ast_mode_config_init.13, ptr @switch.table.ast_crtc_helper_atomic_check], section "llvm.metadata"
@0 = internal global [46 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast_mode_config_funcs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast_mode_config_helper_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast_primary_plane_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast_primary_plane_formats to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast_primary_plane_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast_primary_plane_helper_funcs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast_cursor_plane_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast_cursor_plane_formats to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast_cursor_plane_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast_cursor_plane_helper_funcs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast_crtc_funcs to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast_crtc_helper_funcs to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vbios_stdtable to i32), i32 295, i32 384, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @res_640x480 to i32), i32 260, i32 352, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @res_800x600 to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @res_1024x768 to i32), i32 260, i32 352, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @res_1280x800 to i32), i32 156, i32 192, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @res_1280x1024 to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @res_1360x768 to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @res_1440x900 to i32), i32 156, i32 192, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @res_1600x900 to i32), i32 156, i32 192, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @res_1600x1200 to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @res_1680x1050 to i32), i32 156, i32 192, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @res_1920x1080 to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @res_1920x1200 to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dclk_table_ast2500 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dclk_table to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast_connector_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast_connector_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast_connector_helper_funcs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ast_mode_config_init to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ast_mode_config_init.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ast_crtc_helper_atomic_check to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ast_mode_config_init(ptr noundef %ast) local_unnamed_addr #0 align 64 {
entry:
  %map.i = alloca %struct.dma_buf_map, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.drm_device, ptr %ast, i32 0, i32 2
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %call = tail call i32 @drmm_mode_config_init(ptr noundef %ast) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %funcs = getelementptr inbounds %struct.drm_device, ptr %ast, i32 0, i32 30, i32 27
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @ast_mode_config_funcs, ptr %funcs, align 4
  %min_width = getelementptr inbounds %struct.drm_device, ptr %ast, i32 0, i32 30, i32 23
  %3 = ptrtoint ptr %min_width to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %min_width, align 4
  %min_height = getelementptr inbounds %struct.drm_device, ptr %ast, i32 0, i32 30, i32 24
  %4 = ptrtoint ptr %min_height to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %min_height, align 4
  %preferred_depth = getelementptr inbounds %struct.drm_device, ptr %ast, i32 0, i32 30, i32 91
  %5 = ptrtoint ptr %preferred_depth to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 24, ptr %preferred_depth, align 4
  %prefer_shadow = getelementptr inbounds %struct.drm_device, ptr %ast, i32 0, i32 30, i32 92
  %6 = ptrtoint ptr %prefer_shadow to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %prefer_shadow, align 4
  %resource = getelementptr i8, ptr %1, i32 936
  %7 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %resource, align 8
  %fb_base = getelementptr inbounds %struct.drm_device, ptr %ast, i32 0, i32 30, i32 28
  %9 = ptrtoint ptr %fb_base to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %fb_base, align 4
  %chip = getelementptr inbounds %struct.ast_private, ptr %ast, i32 0, i32 4
  %10 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %chip, align 8
  %switch.tableidx = add i32 %11, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %12 = icmp ult i32 %switch.tableidx, 7
  br i1 %12, label %switch.lookup, label %if.end.if.end25_crit_edge

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.ast_mode_config_init, i32 0, i32 %switch.tableidx
  %13 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %13)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep87 = getelementptr inbounds [7 x i32], ptr @switch.table.ast_mode_config_init.13, i32 0, i32 %switch.tableidx
  %14 = ptrtoint ptr %switch.gep87 to i32
  call void @__asan_load4_noabort(i32 %14)
  %switch.load88 = load i32, ptr %switch.gep87, align 4
  br label %if.end25

if.end25:                                         ; preds = %switch.lookup, %if.end.if.end25_crit_edge
  %.sink86 = phi i32 [ %switch.load, %switch.lookup ], [ 1600, %if.end.if.end25_crit_edge ]
  %.sink = phi i32 [ %switch.load88, %switch.lookup ], [ 1200, %if.end.if.end25_crit_edge ]
  %max_width22 = getelementptr inbounds %struct.drm_device, ptr %ast, i32 0, i32 30, i32 25
  %15 = ptrtoint ptr %max_width22 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %.sink86, ptr %max_width22, align 4
  %max_height24 = getelementptr inbounds %struct.drm_device, ptr %ast, i32 0, i32 30, i32 26
  %16 = ptrtoint ptr %max_height24 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %.sink, ptr %max_height24, align 4
  %helper_private = getelementptr inbounds %struct.drm_device, ptr %ast, i32 0, i32 30, i32 103
  %17 = ptrtoint ptr %helper_private to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @ast_mode_config_helper_funcs, ptr %helper_private, align 4
  %primary_plane1.i = getelementptr inbounds %struct.ast_private, ptr %ast, i32 0, i32 9
  %call.i = tail call i32 (ptr, ptr, i32, ptr, ptr, i32, ptr, i32, ptr, ...) @drm_universal_plane_init(ptr noundef %ast, ptr noundef %primary_plane1.i, i32 noundef 1, ptr noundef nonnull @ast_primary_plane_funcs, ptr noundef nonnull @ast_primary_plane_formats, i32 noundef 3, ptr noundef null, i32 noundef 1, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end30, label %ast_primary_plane_init.exit

ast_primary_plane_init.exit:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str, i32 noundef %call.i) #9
  br label %cleanup

if.end30:                                         ; preds = %if.end25
  %helper_private.i.i = getelementptr inbounds %struct.ast_private, ptr %ast, i32 0, i32 9, i32 18
  %20 = ptrtoint ptr %helper_private.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @ast_primary_plane_helper_funcs, ptr %helper_private.i.i, align 8
  %cursor_plane.i = getelementptr inbounds %struct.ast_private, ptr %ast, i32 0, i32 10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %map.i) #6
  %21 = ptrtoint ptr %map.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 -1, ptr %map.i, align 8, !annotation !92
  %call.i68 = tail call ptr @drm_gem_vram_create(ptr noundef %ast, i32 noundef 12288, i32 noundef 0) #6
  %cmp.i.i = icmp ugt ptr %call.i68, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end30.if.then.i_crit_edge, label %if.end.i70

if.end30.if.then.i_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.then.i:                                        ; preds = %if.end15.i.if.then.i_crit_edge, %if.end30.if.then.i_crit_edge
  %i.088.lcssa.i = phi i32 [ 0, %if.end30.if.then.i_crit_edge ], [ 1, %if.end15.i.if.then.i_crit_edge ]
  %call.lcssa.i = phi ptr [ %call.i68, %if.end30.if.then.i_crit_edge ], [ %call.1.i, %if.end15.i.if.then.i_crit_edge ]
  %22 = ptrtoint ptr %call.lcssa.i to i32
  br label %while.cond.i

if.end.i70:                                       ; preds = %if.end30
  %call5.i = tail call i32 @drm_gem_vram_pin(ptr noundef %call.i68, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool.not.i69 = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i69, label %if.end7.i, label %if.end.i70.err_drm_gem_vram_put.i_crit_edge

if.end.i70.err_drm_gem_vram_put.i_crit_edge:      ; preds = %if.end.i70
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_drm_gem_vram_put.i

if.end7.i:                                        ; preds = %if.end.i70
  %call8.i = call i32 @drm_gem_vram_vmap(ptr noundef %call.i68, ptr noundef nonnull %map.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %if.end7.i.err_drm_gem_vram_unpin.i_crit_edge

if.end7.i.err_drm_gem_vram_unpin.i_crit_edge:     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_drm_gem_vram_unpin.i

if.end11.i:                                       ; preds = %if.end7.i
  %call12.i = call i64 @drm_gem_vram_offset(ptr noundef %call.i68) #6
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call12.i)
  %cmp13.i = icmp slt i64 %call12.i, 0
  %extract.t.i = trunc i64 %call12.i to i32
  br i1 %cmp13.i, label %if.end11.i.err_drm_gem_vram_vunmap.i_crit_edge, label %if.end15.i

if.end11.i.err_drm_gem_vram_vunmap.i_crit_edge:   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_drm_gem_vram_vunmap.i

if.end15.i:                                       ; preds = %if.end11.i
  %arrayidx.i = getelementptr %struct.ast_private, ptr %ast, i32 0, i32 10, i32 1, i32 0
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i68, ptr %arrayidx.i, align 8
  %map19.i = getelementptr %struct.ast_private, ptr %ast, i32 0, i32 10, i32 1, i32 0, i32 1
  %24 = ptrtoint ptr %map.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %map.i, align 8
  %26 = ptrtoint ptr %map19.i to i32
  call void @__asan_storeN_noabort(i32 %26, i32 8)
  store i64 %25, ptr %map19.i, align 4
  %off22.i = getelementptr %struct.ast_private, ptr %ast, i32 0, i32 10, i32 1, i32 0, i32 2
  %27 = ptrtoint ptr %off22.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %call12.i, ptr %off22.i, align 8
  %call.1.i = call ptr @drm_gem_vram_create(ptr noundef %ast, i32 noundef 12288, i32 noundef 0) #6
  %cmp.i.1.i = icmp ugt ptr %call.1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1.i, label %if.end15.i.if.then.i_crit_edge, label %if.end.1.i

if.end15.i.if.then.i_crit_edge:                   ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.end.1.i:                                       ; preds = %if.end15.i
  %call5.1.i = call i32 @drm_gem_vram_pin(ptr noundef %call.1.i, i32 noundef 6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.1.i)
  %tobool.not.1.i = icmp eq i32 %call5.1.i, 0
  br i1 %tobool.not.1.i, label %if.end7.1.i, label %if.end.1.i.err_drm_gem_vram_put.i_crit_edge

if.end.1.i.err_drm_gem_vram_put.i_crit_edge:      ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_drm_gem_vram_put.i

if.end7.1.i:                                      ; preds = %if.end.1.i
  %call8.1.i = call i32 @drm_gem_vram_vmap(ptr noundef %call.1.i, ptr noundef nonnull %map.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.1.i)
  %tobool9.not.1.i = icmp eq i32 %call8.1.i, 0
  br i1 %tobool9.not.1.i, label %if.end11.1.i, label %if.end7.1.i.err_drm_gem_vram_unpin.i_crit_edge

if.end7.1.i.err_drm_gem_vram_unpin.i_crit_edge:   ; preds = %if.end7.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_drm_gem_vram_unpin.i

if.end11.1.i:                                     ; preds = %if.end7.1.i
  %call12.1.i = call i64 @drm_gem_vram_offset(ptr noundef %call.1.i) #6
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call12.1.i)
  %cmp13.1.i = icmp slt i64 %call12.1.i, 0
  %extract.t103.i = trunc i64 %call12.1.i to i32
  br i1 %cmp13.1.i, label %if.end11.1.i.err_drm_gem_vram_vunmap.i_crit_edge, label %if.end15.1.i

if.end11.1.i.err_drm_gem_vram_vunmap.i_crit_edge: ; preds = %if.end11.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_drm_gem_vram_vunmap.i

if.end15.1.i:                                     ; preds = %if.end11.1.i
  %arrayidx.1.i = getelementptr %struct.ast_private, ptr %ast, i32 0, i32 10, i32 1, i32 1
  %28 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.1.i, ptr %arrayidx.1.i, align 8
  %map19.1.i = getelementptr %struct.ast_private, ptr %ast, i32 0, i32 10, i32 1, i32 1, i32 1
  %29 = ptrtoint ptr %map.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %map.i, align 8
  %31 = ptrtoint ptr %map19.1.i to i32
  call void @__asan_storeN_noabort(i32 %31, i32 8)
  store i64 %30, ptr %map19.1.i, align 4
  %off22.1.i = getelementptr %struct.ast_private, ptr %ast, i32 0, i32 10, i32 1, i32 1, i32 2
  %32 = ptrtoint ptr %off22.1.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %call12.1.i, ptr %off22.1.i, align 8
  %call23.i = call i32 (ptr, ptr, i32, ptr, ptr, i32, ptr, i32, ptr, ...) @drm_universal_plane_init(ptr noundef %ast, ptr noundef %cursor_plane.i, i32 noundef 1, ptr noundef nonnull @ast_cursor_plane_funcs, ptr noundef nonnull @ast_cursor_plane_formats, i32 noundef 1, ptr noundef null, i32 noundef 2, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %ast_cursor_plane_init.exit.thread, label %do.end.i71

do.end.i71:                                       ; preds = %if.end15.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.7, i32 noundef %call23.i) #9
  br label %while.cond.i

ast_cursor_plane_init.exit.thread:                ; preds = %if.end15.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %helper_private.i.i72 = getelementptr inbounds %struct.ast_private, ptr %ast, i32 0, i32 10, i32 0, i32 18
  %35 = ptrtoint ptr %helper_private.i.i72 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @ast_cursor_plane_helper_funcs, ptr %helper_private.i.i72, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %map.i) #6
  br label %if.end34

while.cond.i:                                     ; preds = %err_drm_gem_vram_put.i, %do.end.i71, %if.then.i
  %i.1.i = phi i32 [ %i.4.i, %err_drm_gem_vram_put.i ], [ %i.088.lcssa.i, %if.then.i ], [ 2, %do.end.i71 ]
  %ret.1.i = phi i32 [ %ret.4.i, %err_drm_gem_vram_put.i ], [ %22, %if.then.i ], [ %call23.i, %do.end.i71 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1.i)
  %tobool28.not.i = icmp eq i32 %i.1.i, 0
  br i1 %tobool28.not.i, label %ast_cursor_plane_init.exit, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  %dec.i = add i32 %i.1.i, -1
  %arrayidx30.i = getelementptr %struct.ast_private, ptr %ast, i32 0, i32 10, i32 1, i32 %dec.i
  %36 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx30.i, align 8
  %map34.i = getelementptr %struct.ast_private, ptr %ast, i32 0, i32 10, i32 1, i32 %dec.i, i32 1
  %38 = ptrtoint ptr %map34.i to i32
  call void @__asan_loadN_noabort(i32 %38, i32 8)
  %39 = load i64, ptr %map34.i, align 4
  %40 = ptrtoint ptr %map.i to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %39, ptr %map.i, align 8
  br label %err_drm_gem_vram_vunmap.i

err_drm_gem_vram_vunmap.i:                        ; preds = %while.body.i, %if.end11.1.i.err_drm_gem_vram_vunmap.i_crit_edge, %if.end11.i.err_drm_gem_vram_vunmap.i_crit_edge
  %i.2.i = phi i32 [ %dec.i, %while.body.i ], [ 0, %if.end11.i.err_drm_gem_vram_vunmap.i_crit_edge ], [ 1, %if.end11.1.i.err_drm_gem_vram_vunmap.i_crit_edge ]
  %gbo.0.i = phi ptr [ %37, %while.body.i ], [ %call.i68, %if.end11.i.err_drm_gem_vram_vunmap.i_crit_edge ], [ %call.1.i, %if.end11.1.i.err_drm_gem_vram_vunmap.i_crit_edge ]
  %ret.2.i = phi i32 [ %ret.1.i, %while.body.i ], [ %extract.t.i, %if.end11.i.err_drm_gem_vram_vunmap.i_crit_edge ], [ %extract.t103.i, %if.end11.1.i.err_drm_gem_vram_vunmap.i_crit_edge ]
  call void @drm_gem_vram_vunmap(ptr noundef %gbo.0.i, ptr noundef nonnull %map.i) #6
  br label %err_drm_gem_vram_unpin.i

err_drm_gem_vram_unpin.i:                         ; preds = %err_drm_gem_vram_vunmap.i, %if.end7.1.i.err_drm_gem_vram_unpin.i_crit_edge, %if.end7.i.err_drm_gem_vram_unpin.i_crit_edge
  %i.3.i = phi i32 [ %i.2.i, %err_drm_gem_vram_vunmap.i ], [ 0, %if.end7.i.err_drm_gem_vram_unpin.i_crit_edge ], [ 1, %if.end7.1.i.err_drm_gem_vram_unpin.i_crit_edge ]
  %gbo.1.i = phi ptr [ %gbo.0.i, %err_drm_gem_vram_vunmap.i ], [ %call.i68, %if.end7.i.err_drm_gem_vram_unpin.i_crit_edge ], [ %call.1.i, %if.end7.1.i.err_drm_gem_vram_unpin.i_crit_edge ]
  %ret.3.i = phi i32 [ %ret.2.i, %err_drm_gem_vram_vunmap.i ], [ %call8.i, %if.end7.i.err_drm_gem_vram_unpin.i_crit_edge ], [ %call8.1.i, %if.end7.1.i.err_drm_gem_vram_unpin.i_crit_edge ]
  %call35.i = call i32 @drm_gem_vram_unpin(ptr noundef %gbo.1.i) #6
  br label %err_drm_gem_vram_put.i

err_drm_gem_vram_put.i:                           ; preds = %err_drm_gem_vram_unpin.i, %if.end.1.i.err_drm_gem_vram_put.i_crit_edge, %if.end.i70.err_drm_gem_vram_put.i_crit_edge
  %i.4.i = phi i32 [ %i.3.i, %err_drm_gem_vram_unpin.i ], [ 0, %if.end.i70.err_drm_gem_vram_put.i_crit_edge ], [ 1, %if.end.1.i.err_drm_gem_vram_put.i_crit_edge ]
  %gbo.2.i = phi ptr [ %gbo.1.i, %err_drm_gem_vram_unpin.i ], [ %call.i68, %if.end.i70.err_drm_gem_vram_put.i_crit_edge ], [ %call.1.i, %if.end.1.i.err_drm_gem_vram_put.i_crit_edge ]
  %ret.4.i = phi i32 [ %ret.3.i, %err_drm_gem_vram_unpin.i ], [ %call5.i, %if.end.i70.err_drm_gem_vram_put.i_crit_edge ], [ %call5.1.i, %if.end.1.i.err_drm_gem_vram_put.i_crit_edge ]
  call void @drm_gem_vram_put(ptr noundef %gbo.2.i) #6
  br label %while.cond.i

ast_cursor_plane_init.exit:                       ; preds = %while.cond.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %map.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %tobool32.not = icmp eq i32 %ret.1.i, 0
  br i1 %tobool32.not, label %ast_cursor_plane_init.exit.if.end34_crit_edge, label %ast_cursor_plane_init.exit.cleanup_crit_edge

ast_cursor_plane_init.exit.cleanup_crit_edge:     ; preds = %ast_cursor_plane_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

ast_cursor_plane_init.exit.if.end34_crit_edge:    ; preds = %ast_cursor_plane_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.end34:                                         ; preds = %ast_cursor_plane_init.exit.if.end34_crit_edge, %ast_cursor_plane_init.exit.thread
  %crtc1.i = getelementptr inbounds %struct.ast_private, ptr %ast, i32 0, i32 11
  %call2.i = call i32 (ptr, ptr, ptr, ptr, ptr, ptr, ...) @drm_crtc_init_with_planes(ptr noundef %ast, ptr noundef %crtc1.i, ptr noundef %primary_plane1.i, ptr noundef %cursor_plane.i, ptr noundef nonnull @ast_crtc_funcs, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i74 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i74, label %if.end.i76, label %if.end34.ast_crtc_init.exit_crit_edge

if.end34.ast_crtc_init.exit_crit_edge:            ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %ast_crtc_init.exit

if.end.i76:                                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i = call i32 @drm_mode_crtc_set_gamma_size(ptr noundef %crtc1.i, i32 noundef 256) #6
  %helper_private.i.i75 = getelementptr inbounds %struct.ast_private, ptr %ast, i32 0, i32 11, i32 19
  %41 = ptrtoint ptr %helper_private.i.i75 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @ast_crtc_helper_funcs, ptr %helper_private.i.i75, align 8
  br label %ast_crtc_init.exit

ast_crtc_init.exit:                               ; preds = %if.end.i76, %if.end34.ast_crtc_init.exit_crit_edge
  %encoder1.i = getelementptr inbounds %struct.ast_private, ptr %ast, i32 0, i32 12
  %call2.i77 = call i32 @drm_simple_encoder_init(ptr noundef %ast, ptr noundef %encoder1.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i77)
  %tobool.not.i78 = icmp eq i32 %call2.i77, 0
  br i1 %tobool.not.i78, label %if.end.i79, label %ast_crtc_init.exit.ast_encoder_init.exit_crit_edge

ast_crtc_init.exit.ast_encoder_init.exit_crit_edge: ; preds = %ast_crtc_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %ast_encoder_init.exit

if.end.i79:                                       ; preds = %ast_crtc_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  %possible_crtcs.i = getelementptr inbounds %struct.ast_private, ptr %ast, i32 0, i32 12, i32 6
  %42 = ptrtoint ptr %possible_crtcs.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %possible_crtcs.i, align 4
  br label %ast_encoder_init.exit

ast_encoder_init.exit:                            ; preds = %if.end.i79, %ast_crtc_init.exit.ast_encoder_init.exit_crit_edge
  %connector.i = getelementptr inbounds %struct.ast_private, ptr %ast, i32 0, i32 13
  %call3.i80 = call ptr @ast_i2c_create(ptr noundef %ast) #6
  %i2c.i = getelementptr inbounds %struct.ast_private, ptr %ast, i32 0, i32 13, i32 1
  %43 = ptrtoint ptr %i2c.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call3.i80, ptr %i2c.i, align 8
  %tobool.not.i81 = icmp eq ptr %call3.i80, null
  br i1 %tobool.not.i81, label %if.end.i82, label %ast_encoder_init.exit.if.then8.i_crit_edge

ast_encoder_init.exit.if.then8.i_crit_edge:       ; preds = %ast_encoder_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then8.i

if.end.i82:                                       ; preds = %ast_encoder_init.exit
  %44 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.11) #9
  %46 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pr.i = load ptr, ptr %i2c.i, align 8
  %tobool7.not.i = icmp eq ptr %.pr.i, null
  br i1 %tobool7.not.i, label %if.else.i, label %if.end.i82.if.then8.i_crit_edge

if.end.i82.if.then8.i_crit_edge:                  ; preds = %if.end.i82
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then8.i

if.then8.i:                                       ; preds = %if.end.i82.if.then8.i_crit_edge, %ast_encoder_init.exit.if.then8.i_crit_edge
  %47 = phi ptr [ %.pr.i, %if.end.i82.if.then8.i_crit_edge ], [ %call3.i80, %ast_encoder_init.exit.if.then8.i_crit_edge ]
  %call10.i = call i32 @drm_connector_init_with_ddc(ptr noundef %ast, ptr noundef %connector.i, ptr noundef nonnull @ast_connector_funcs, i32 noundef 1, ptr noundef nonnull %47) #6
  br label %ast_connector_init.exit

if.else.i:                                        ; preds = %if.end.i82
  call void @__sanitizer_cov_trace_pc() #8
  %call11.i = call i32 @drm_connector_init(ptr noundef %ast, ptr noundef %connector.i, ptr noundef nonnull @ast_connector_funcs, i32 noundef 1) #6
  br label %ast_connector_init.exit

ast_connector_init.exit:                          ; preds = %if.else.i, %if.then8.i
  %helper_private.i.i83 = getelementptr inbounds %struct.ast_private, ptr %ast, i32 0, i32 13, i32 0, i32 35
  %48 = ptrtoint ptr %helper_private.i.i83 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @ast_connector_helper_funcs, ptr %helper_private.i.i83, align 4
  %interlace_allowed.i = getelementptr inbounds %struct.ast_private, ptr %ast, i32 0, i32 13, i32 0, i32 12
  %49 = ptrtoint ptr %interlace_allowed.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %interlace_allowed.i, align 8
  %doublescan_allowed.i = getelementptr inbounds %struct.ast_private, ptr %ast, i32 0, i32 13, i32 0, i32 13
  %50 = ptrtoint ptr %doublescan_allowed.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %doublescan_allowed.i, align 1
  %polled.i = getelementptr inbounds %struct.ast_private, ptr %ast, i32 0, i32 13, i32 0, i32 33
  %51 = ptrtoint ptr %polled.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 2, ptr %polled.i, align 4
  %call13.i = call i32 @drm_connector_attach_encoder(ptr noundef %connector.i, ptr noundef %encoder1.i) #6
  call void @drm_mode_config_reset(ptr noundef %ast) #6
  br label %cleanup

cleanup:                                          ; preds = %ast_connector_init.exit, %ast_cursor_plane_init.exit.cleanup_crit_edge, %ast_primary_plane_init.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %ast_connector_init.exit ], [ %call, %entry.cleanup_crit_edge ], [ %call.i, %ast_primary_plane_init.exit ], [ %ret.1.i, %ast_cursor_plane_init.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drmm_mode_config_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_config_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_fb_create(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_vram_helper_mode_valid(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_commit(ptr noundef, ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_commit_tail_rpm(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_universal_plane_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_update_plane(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_disable_plane(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_plane_cleanup(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_plane_reset(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_plane_duplicate_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_plane_destroy_state(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_vram_plane_helper_prepare_fb(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_vram_plane_helper_cleanup_fb(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ast_primary_plane_helper_atomic_check(ptr nocapture noundef readonly %plane, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %planes.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 3
  %0 = ptrtoint ptr %planes.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %planes.i, align 4
  %index.i.i = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 17
  %2 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i.i, align 4
  %new_state.i = getelementptr %struct.__drm_planes_state, ptr %1, i32 %3, i32 3
  %4 = ptrtoint ptr %new_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %new_state.i, align 4
  %crtc = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %crtc, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %crtcs.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  %8 = ptrtoint ptr %crtcs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %crtcs.i, align 4
  %index.i.i21 = getelementptr inbounds %struct.drm_crtc, ptr %7, i32 0, i32 8
  %10 = ptrtoint ptr %index.i.i21 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %index.i.i21, align 4
  %new_state.i22 = getelementptr %struct.__drm_crtcs_state, ptr %9, i32 %11, i32 3
  %12 = ptrtoint ptr %new_state.i22 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %new_state.i22, align 4
  %call3 = tail call i32 @drm_atomic_helper_check_plane_state(ptr noundef %5, ptr noundef %13, i32 noundef 65536, i32 noundef 65536, i1 noundef zeroext false, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %visible = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 22
  %14 = ptrtoint ptr %visible to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %visible, align 4, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool7.not = icmp eq i8 %15, 0
  br i1 %tobool7.not, label %if.end6.cleanup_crit_edge, label %if.end9

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 2
  %16 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fb, align 4
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %format, align 8
  %format10 = getelementptr inbounds %struct.ast_crtc_state, ptr %13, i32 0, i32 1
  %20 = ptrtoint ptr %format10 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %format10, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ 0, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ast_primary_plane_helper_atomic_update(ptr nocapture noundef readonly %plane, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %planes.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 3
  %0 = ptrtoint ptr %planes.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %planes.i, align 4
  %index.i.i = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 17
  %2 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i.i, align 4
  %old_state.i = getelementptr %struct.__drm_planes_state, ptr %1, i32 %3, i32 2
  %4 = ptrtoint ptr %old_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %old_state.i, align 4
  %6 = ptrtoint ptr %plane to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %plane, align 8
  %new_state.i = getelementptr %struct.__drm_planes_state, ptr %1, i32 %3, i32 3
  %8 = ptrtoint ptr %new_state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %new_state.i, align 4
  %fb4 = getelementptr inbounds %struct.drm_plane_state, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %fb4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fb4, align 4
  %fb5 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 2
  %12 = ptrtoint ptr %fb5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fb5, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %11, i32 0, i32 4
  %14 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %format, align 8
  %format6 = getelementptr inbounds %struct.drm_framebuffer, ptr %13, i32 0, i32 4
  %16 = ptrtoint ptr %format6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %format6, align 8
  %cmp.not = icmp eq ptr %15, %17
  br i1 %cmp.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %crtc = getelementptr inbounds %struct.drm_plane_state, ptr %9, i32 0, i32 1
  %18 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %crtc, align 4
  %state7 = getelementptr inbounds %struct.drm_crtc, ptr %19, i32 0, i32 22
  %20 = ptrtoint ptr %state7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %state7, align 4
  %format9 = getelementptr inbounds %struct.drm_framebuffer, ptr %11, i32 0, i32 4
  %22 = ptrtoint ptr %format9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %format9, align 8
  %24 = getelementptr inbounds %struct.drm_format_info, ptr %23, i32 0, i32 3
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %24, align 2
  %conv.i = zext i8 %26 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 3
  %27 = zext i32 %mul.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values)
  switch i32 %mul.i, label %if.then.ast_set_color_reg.exit_crit_edge [
    i32 8, label %sw.bb.i
    i32 32, label %sw.bb2.i
    i32 16, label %sw.bb1.i
  ]

if.then.ast_set_color_reg.exit_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %ast_set_color_reg.exit

sw.bb.i:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %ast_set_color_reg.exit

sw.bb1.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %ast_set_color_reg.exit

sw.bb2.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %ast_set_color_reg.exit

ast_set_color_reg.exit:                           ; preds = %sw.bb2.i, %sw.bb1.i, %sw.bb.i, %if.then.ast_set_color_reg.exit_crit_edge
  %jregA0.0.i = phi i8 [ 0, %if.then.ast_set_color_reg.exit_crit_edge ], [ 112, %sw.bb1.i ], [ 112, %sw.bb2.i ], [ 112, %sw.bb.i ]
  %jregA3.0.i = phi i8 [ 0, %if.then.ast_set_color_reg.exit_crit_edge ], [ 4, %sw.bb1.i ], [ 8, %sw.bb2.i ], [ 1, %sw.bb.i ]
  %jregA8.0.i = phi i8 [ 0, %if.then.ast_set_color_reg.exit_crit_edge ], [ 2, %sw.bb1.i ], [ 2, %sw.bb2.i ], [ 0, %sw.bb.i ]
  tail call void @ast_set_index_reg_mask(ptr noundef %7, i32 noundef 84, i8 noundef zeroext -96, i8 noundef zeroext -113, i8 noundef zeroext %jregA0.0.i) #6
  tail call void @ast_set_index_reg_mask(ptr noundef %7, i32 noundef 84, i8 noundef zeroext -93, i8 noundef zeroext -16, i8 noundef zeroext %jregA3.0.i) #6
  tail call void @ast_set_index_reg_mask(ptr noundef %7, i32 noundef 84, i8 noundef zeroext -88, i8 noundef zeroext -3, i8 noundef zeroext %jregA8.0.i) #6
  %28 = ptrtoint ptr %format9 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %format9, align 8
  %30 = getelementptr inbounds %struct.drm_format_info, ptr %29, i32 0, i32 3
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %30, align 2
  %switch.tableidx = add i8 %32, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %switch.tableidx)
  %33 = icmp ult i8 %switch.tableidx, 4
  br i1 %33, label %switch.lookup, label %ast_set_color_reg.exit.if.end_crit_edge

ast_set_color_reg.exit.if.end_crit_edge:          ; preds = %ast_set_color_reg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

switch.lookup:                                    ; preds = %ast_set_color_reg.exit
  %switch.cast = zext i8 %switch.tableidx to i32
  %switch.shiftamt = shl nuw nsw i32 %switch.cast, 3
  %switch.downshift = lshr i32 1077948432, %switch.shiftamt
  %34 = trunc i32 %switch.downshift to i16
  %conv1.i.i = shl i16 %34, 8
  %or.i.i = or i16 %conv1.i.i, 140
  %ioregs.i.i.i = getelementptr inbounds %struct.ast_private, ptr %7, i32 0, i32 2
  %35 = ptrtoint ptr %ioregs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ioregs.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %36, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @arm_heavy_mb() #6
  %37 = tail call i16 @llvm.bswap.i16(i16 %or.i.i) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i, i16 %37) #6, !srcloc !95
  %38 = ptrtoint ptr %ioregs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ioregs.i.i.i, align 8
  %add.ptr.i.i13.i = getelementptr i8, ptr %39, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i13.i, i16 -28416) #6, !srcloc !95
  %enh_table.i = getelementptr inbounds %struct.ast_crtc_state, ptr %21, i32 0, i32 2, i32 1
  %40 = ptrtoint ptr %enh_table.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %enh_table.i, align 4
  %flags.i = getelementptr inbounds %struct.ast_vbios_enhtable, ptr %41, i32 0, i32 9
  %42 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %flags.i, align 4
  %and4.i = and i32 %43, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool.not.i, label %switch.lookup.if.end_crit_edge, label %if.then.i

switch.lookup.if.end_crit_edge:                   ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then.i:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  %44 = ptrtoint ptr %ioregs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ioregs.i.i.i, align 8
  %add.ptr.i.i15.i = getelementptr i8, ptr %45, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i15.i, i16 -28248) #6, !srcloc !95
  %46 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %30, align 2
  %mul.i90 = shl i8 %47, 3
  %conv1.i16.i = zext i8 %mul.i90 to i16
  %shl.i17.i = shl nuw i16 %conv1.i16.i, 8
  %or.i18.i = or i16 %shl.i17.i, 146
  %48 = ptrtoint ptr %ioregs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ioregs.i.i.i, align 8
  %add.ptr.i.i20.i = getelementptr i8, ptr %49, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @arm_heavy_mb() #6
  %50 = tail call i16 @llvm.bswap.i16(i16 %or.i18.i) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i20.i, i16 %50) #6, !srcloc !95
  br label %if.end

if.end:                                           ; preds = %if.then.i, %switch.lookup.if.end_crit_edge, %ast_set_color_reg.exit.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %obj = getelementptr inbounds %struct.drm_framebuffer, ptr %11, i32 0, i32 15
  %51 = ptrtoint ptr %obj to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %obj, align 4
  %call12 = tail call i64 @drm_gem_vram_offset(ptr noundef %52) #6
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call12)
  %cmp13 = icmp slt i64 %call12, 0
  br i1 %cmp13, label %land.rhs, label %if.end58

land.rhs:                                         ; preds = %if.end
  %.b84 = load i1, ptr @ast_primary_plane_helper_atomic_update.__already_done, align 1
  br i1 %.b84, label %land.rhs.cleanup_crit_edge, label %if.then21, !prof !96

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then21:                                        ; preds = %land.rhs
  store i1 true, ptr @ast_primary_plane_helper_atomic_update.__already_done, align 1
  %dev31 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 2
  %53 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev31, align 4
  %call32 = tail call ptr @dev_driver_string(ptr noundef %54) #6
  %55 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev31, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i91 = icmp eq ptr %58, null
  br i1 %tobool.not.i91, label %if.end.i, label %if.then21.dev_name.exit_crit_edge

if.then21.dev_name.exit_crit_edge:                ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  %59 = ptrtoint ptr %56 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %56, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then21.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %60, %if.end.i ], [ %58, %if.then21.dev_name.exit_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 595, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef %call32, ptr noundef %retval.0.i, ptr noundef nonnull @.str.6) #6
  br label %cleanup

if.end58:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %pitches.i = getelementptr inbounds %struct.drm_framebuffer, ptr %11, i32 0, i32 6
  %61 = ptrtoint ptr %pitches.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %pitches.i, align 8
  %63 = trunc i32 %62 to i16
  %64 = shl i16 %63, 5
  %conv1.i.i92 = and i16 %64, -256
  %or.i.i93 = or i16 %conv1.i.i92, 19
  %ioregs.i.i.i94 = getelementptr inbounds %struct.ast_private, ptr %7, i32 0, i32 2
  %65 = ptrtoint ptr %ioregs.i.i.i94 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ioregs.i.i.i94, align 8
  %add.ptr.i.i.i95 = getelementptr i8, ptr %66, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @arm_heavy_mb() #6
  %67 = tail call i16 @llvm.bswap.i16(i16 %or.i.i93) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i95, i16 %67) #6, !srcloc !95
  %conv1.i = lshr i32 %62, 11
  %68 = trunc i32 %conv1.i to i8
  %conv6.i = and i8 %68, 63
  %conv1.i9.i = zext i8 %conv6.i to i16
  %shl.i10.i = shl nuw nsw i16 %conv1.i9.i, 8
  %or.i11.i = or i16 %shl.i10.i, 176
  %69 = ptrtoint ptr %ioregs.i.i.i94 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ioregs.i.i.i94, align 8
  %add.ptr.i.i13.i96 = getelementptr i8, ptr %70, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @arm_heavy_mb() #6
  %71 = tail call i16 @llvm.bswap.i16(i16 %or.i11.i) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i13.i96, i16 %71) #6, !srcloc !95
  %72 = trunc i64 %call12 to i16
  %73 = shl i16 %72, 6
  %conv1.i.i97 = and i16 %73, -256
  %or.i.i98 = or i16 %conv1.i.i97, 13
  %74 = ptrtoint ptr %ioregs.i.i.i94 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %ioregs.i.i.i94, align 8
  %add.ptr.i.i.i100 = getelementptr i8, ptr %75, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @arm_heavy_mb() #6
  %76 = tail call i16 @llvm.bswap.i16(i16 %or.i.i98) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i100, i16 %76) #6, !srcloc !95
  %sh.diff.i105 = lshr i64 %call12, 2
  %tr.sh.diff.i = trunc i64 %sh.diff.i105 to i16
  %conv1.i11.i = and i16 %tr.sh.diff.i, -256
  %or.i13.i = or i16 %conv1.i11.i, 12
  %77 = ptrtoint ptr %ioregs.i.i.i94 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ioregs.i.i.i94, align 8
  %add.ptr.i.i15.i101 = getelementptr i8, ptr %78, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @arm_heavy_mb() #6
  %79 = tail call i16 @llvm.bswap.i16(i16 %or.i13.i) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i15.i101, i16 %79) #6, !srcloc !95
  %sh.diff21.i106 = lshr i64 %call12, 10
  %tr.sh.diff22.i = trunc i64 %sh.diff21.i106 to i16
  %conv1.i16.i102 = and i16 %tr.sh.diff22.i, -256
  %or.i18.i103 = or i16 %conv1.i16.i102, 175
  %80 = ptrtoint ptr %ioregs.i.i.i94 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ioregs.i.i.i94, align 8
  %add.ptr.i.i20.i104 = getelementptr i8, ptr %81, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @arm_heavy_mb() #6
  %82 = tail call i16 @llvm.bswap.i16(i16 %or.i18.i103) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i20.i104, i16 %82) #6, !srcloc !95
  tail call void @ast_set_index_reg_mask(ptr noundef %7, i32 noundef 68, i8 noundef zeroext 1, i8 noundef zeroext -33, i8 noundef zeroext 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end58, %dev_name.exit, %land.rhs.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ast_primary_plane_helper_atomic_disable(ptr nocapture noundef readonly %plane, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %plane to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plane, align 8
  tail call void @ast_set_index_reg_mask(ptr noundef %1, i32 noundef 68, i8 noundef zeroext 1, i8 noundef zeroext -33, i8 noundef zeroext 32) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check_plane_state(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @drm_gem_vram_offset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ast_set_index_reg_mask(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_vram_create(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_vram_pin(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_vram_vmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_vram_vunmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_vram_unpin(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_vram_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ast_cursor_plane_destroy(ptr noundef %plane) #0 align 64 {
entry:
  %map = alloca %struct.dma_buf_map, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %map) #6
  %arrayidx = getelementptr %struct.ast_cursor_plane, ptr %plane, i32 0, i32 1, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 8
  %map4 = getelementptr %struct.ast_cursor_plane, ptr %plane, i32 0, i32 1, i32 0, i32 1
  %2 = ptrtoint ptr %map4 to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %3 = load i64, ptr %map4, align 4
  %4 = ptrtoint ptr %map to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %map, align 8
  call void @drm_gem_vram_vunmap(ptr noundef %1, ptr noundef nonnull %map) #6
  %call5 = call i32 @drm_gem_vram_unpin(ptr noundef %1) #6
  call void @drm_gem_vram_put(ptr noundef %1) #6
  %arrayidx.1 = getelementptr %struct.ast_cursor_plane, ptr %plane, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx.1, align 8
  %map4.1 = getelementptr %struct.ast_cursor_plane, ptr %plane, i32 0, i32 1, i32 1, i32 1
  %7 = ptrtoint ptr %map4.1 to i32
  call void @__asan_loadN_noabort(i32 %7, i32 8)
  %8 = load i64, ptr %map4.1, align 4
  %9 = ptrtoint ptr %map to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %8, ptr %map, align 8
  call void @drm_gem_vram_vunmap(ptr noundef %6, ptr noundef nonnull %map) #6
  %call5.1 = call i32 @drm_gem_vram_unpin(ptr noundef %6) #6
  call void @drm_gem_vram_put(ptr noundef %6) #6
  call void @drm_plane_cleanup(ptr noundef %plane) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %map) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_reset_shadow_plane(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_duplicate_shadow_plane_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_destroy_shadow_plane_state(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prepare_shadow_fb(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_cleanup_shadow_fb(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ast_cursor_plane_helper_atomic_check(ptr nocapture noundef readonly %plane, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %planes.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 3
  %0 = ptrtoint ptr %planes.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %planes.i, align 4
  %index.i.i = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 17
  %2 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i.i, align 4
  %new_state.i = getelementptr %struct.__drm_planes_state, ptr %1, i32 %3, i32 3
  %4 = ptrtoint ptr %new_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %new_state.i, align 4
  %fb1 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %fb1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fb1, align 4
  %crtc = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %crtc, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %crtcs.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  %10 = ptrtoint ptr %crtcs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %crtcs.i, align 4
  %index.i.i24 = getelementptr inbounds %struct.drm_crtc, ptr %9, i32 0, i32 8
  %12 = ptrtoint ptr %index.i.i24 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index.i.i24, align 4
  %new_state.i25 = getelementptr %struct.__drm_crtcs_state, ptr %11, i32 %13, i32 3
  %14 = ptrtoint ptr %new_state.i25 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %new_state.i25, align 4
  %call4 = tail call i32 @drm_atomic_helper_check_plane_state(ptr noundef %5, ptr noundef %15, i32 noundef 65536, i32 noundef 65536, i1 noundef zeroext true, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %visible = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 22
  %16 = ptrtoint ptr %visible to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %visible, align 4, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool8.not = icmp eq i8 %17, 0
  br i1 %tobool8.not, label %if.end7.cleanup_crit_edge, label %if.end10

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %width = getelementptr inbounds %struct.drm_framebuffer, ptr %7, i32 0, i32 9
  %18 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %width, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %19)
  %cmp = icmp ugt i32 %19, 64
  br i1 %cmp, label %if.end10.cleanup_crit_edge, label %lor.lhs.false

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %height = getelementptr inbounds %struct.drm_framebuffer, ptr %7, i32 0, i32 10
  %20 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %height, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %21)
  %cmp11 = icmp ugt i32 %21, 64
  %spec.select = select i1 %cmp11, i32 -22, i32 0
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %if.end10.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ], [ -22, %if.end10.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ast_cursor_plane_helper_atomic_update(ptr nocapture noundef %plane, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %planes.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 3
  %0 = ptrtoint ptr %planes.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %planes.i, align 4
  %index.i.i = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 17
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
  %fb4 = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %fb4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fb4, align 4
  %10 = ptrtoint ptr %plane to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %plane, align 8
  %next_hwc_index = getelementptr inbounds %struct.ast_cursor_plane, ptr %plane, i32 0, i32 2
  %12 = ptrtoint ptr %next_hwc_index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %next_hwc_index, align 8
  %map = getelementptr %struct.ast_cursor_plane, ptr %plane, i32 0, i32 1, i32 %13, i32 1
  %14 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %14)
  %dst_map.sroa.0.0.copyload50 = load ptr, ptr %map, align 4
  %off = getelementptr %struct.ast_cursor_plane, ptr %plane, i32 0, i32 1, i32 %13, i32 2
  %15 = ptrtoint ptr %off to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %off, align 8
  %width = getelementptr inbounds %struct.drm_framebuffer, ptr %9, i32 0, i32 9
  %17 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %width, align 8
  %height = getelementptr inbounds %struct.drm_framebuffer, ptr %9, i32 0, i32 10
  %19 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %height, align 4
  %shl.neg.i = mul i32 %18, -2
  %sub.i = add i32 %shl.neg.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp190.i = icmp sgt i32 %20, 0
  br i1 %cmp190.i, label %for.cond3.preheader.lr.ph.i, label %entry.ast_update_cursor_image.exit_crit_edge

entry.ast_update_cursor_image.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ast_update_cursor_image.exit

for.cond3.preheader.lr.ph.i:                      ; preds = %entry
  %data = getelementptr inbounds %struct.drm_shadow_plane_state, ptr %7, i32 0, i32 2
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %src_map.sroa.0.0.copyload48 = load ptr, ptr %data, align 4
  %shr.i = ashr i32 %18, 1
  %and.i = and i32 %18, 1
  %add.ptr.i = getelementptr i8, ptr %dst_map.sroa.0.0.copyload50, i32 %sub.i
  %.neg.i = mul i32 %20, -128
  %mul.i = add i32 %.neg.i, 8192
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp4176.not.i = icmp ult i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp51183.not.i = icmp eq i32 %and.i, 0
  %umax.i = tail call i32 @llvm.umax.i32(i32 %shr.i, i32 1) #6
  br label %for.cond3.preheader.i

for.cond3.preheader.i:                            ; preds = %for.end85.i.for.cond3.preheader.i_crit_edge, %for.cond3.preheader.lr.ph.i
  %j.0194.i = phi i32 [ 0, %for.cond3.preheader.lr.ph.i ], [ %inc88.i, %for.end85.i.for.cond3.preheader.i_crit_edge ]
  %srcxor.0193.i = phi ptr [ %src_map.sroa.0.0.copyload48, %for.cond3.preheader.lr.ph.i ], [ %srcxor.2.lcssa.i, %for.end85.i.for.cond3.preheader.i_crit_edge ]
  %dstxor.0192.i = phi ptr [ %add.ptr2.i, %for.cond3.preheader.lr.ph.i ], [ %add.ptr86.i, %for.end85.i.for.cond3.preheader.i_crit_edge ]
  %csum.0191.i = phi i32 [ 0, %for.cond3.preheader.lr.ph.i ], [ %csum.2.lcssa.i, %for.end85.i.for.cond3.preheader.i_crit_edge ]
  br i1 %cmp4176.not.i, label %for.cond3.preheader.i.for.cond50.preheader.i_crit_edge, label %for.cond3.preheader.i.for.body5.i_crit_edge

for.cond3.preheader.i.for.body5.i_crit_edge:      ; preds = %for.cond3.preheader.i
  br label %for.body5.i

for.cond3.preheader.i.for.cond50.preheader.i_crit_edge: ; preds = %for.cond3.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond50.preheader.i

for.cond50.preheader.i:                           ; preds = %for.body5.i.for.cond50.preheader.i_crit_edge, %for.cond3.preheader.i.for.cond50.preheader.i_crit_edge
  %csum.1.lcssa.i = phi i32 [ %csum.0191.i, %for.cond3.preheader.i.for.cond50.preheader.i_crit_edge ], [ %add.i, %for.body5.i.for.cond50.preheader.i_crit_edge ]
  %dstxor.1.lcssa.i = phi ptr [ %dstxor.0192.i, %for.cond3.preheader.i.for.cond50.preheader.i_crit_edge ], [ %add.ptr48.i, %for.body5.i.for.cond50.preheader.i_crit_edge ]
  %srcxor.1.lcssa.i = phi ptr [ %srcxor.0193.i, %for.cond3.preheader.i.for.cond50.preheader.i_crit_edge ], [ %add.ptr49.i, %for.body5.i.for.cond50.preheader.i_crit_edge ]
  br i1 %cmp51183.not.i, label %for.cond50.preheader.i.for.end85.i_crit_edge, label %for.body53.i

for.cond50.preheader.i.for.end85.i_crit_edge:     ; preds = %for.cond50.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end85.i

for.body5.i:                                      ; preds = %for.body5.i.for.body5.i_crit_edge, %for.cond3.preheader.i.for.body5.i_crit_edge
  %i.0180.i = phi i32 [ %inc.i, %for.body5.i.for.body5.i_crit_edge ], [ 0, %for.cond3.preheader.i.for.body5.i_crit_edge ]
  %srcxor.1179.i = phi ptr [ %add.ptr49.i, %for.body5.i.for.body5.i_crit_edge ], [ %srcxor.0193.i, %for.cond3.preheader.i.for.body5.i_crit_edge ]
  %dstxor.1178.i = phi ptr [ %add.ptr48.i, %for.body5.i.for.body5.i_crit_edge ], [ %dstxor.0192.i, %for.cond3.preheader.i.for.body5.i_crit_edge ]
  %csum.1177.i = phi i32 [ %add.i, %for.body5.i.for.body5.i_crit_edge ], [ %csum.0191.i, %for.cond3.preheader.i.for.body5.i_crit_edge ]
  %22 = ptrtoint ptr %srcxor.1179.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %srcxor.1179.i, align 4
  %srcdata32.sroa.0.sroa.0.0.extract.shift.i = lshr i32 %23, 28
  %srcdata32.sroa.0.sroa.7.0.extract.shift.i = lshr i32 %23, 16
  %and6.i = lshr i32 %23, 12
  %add.ptr7.i = getelementptr i8, ptr %srcxor.1179.i, i32 4
  %24 = ptrtoint ptr %add.ptr7.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr7.i, align 4
  %conv.i = and i32 %srcdata32.sroa.0.sroa.7.0.extract.shift.i, 240
  %or.i = or i32 %conv.i, %srcdata32.sroa.0.sroa.0.0.extract.shift.i
  %conv20.i = and i32 %23, 240
  %conv23.i = and i32 %and6.i, 15
  %or25.i = or i32 %conv23.i, %conv20.i
  %srcdata32.sroa.13.5.extract.shift.i = lshr i32 %25, 16
  %conv30.i = and i32 %srcdata32.sroa.13.5.extract.shift.i, 240
  %srcdata32.sroa.13.4.extract.shift.i = lshr i32 %25, 28
  %or35.i = or i32 %conv30.i, %srcdata32.sroa.13.4.extract.shift.i
  %conv40.i = and i32 %25, 240
  %and8.i = lshr i32 %25, 12
  %srcdata32.sroa.13.6.extract.trunc.i = and i32 %and8.i, 15
  %or45.i = or i32 %conv40.i, %srcdata32.sroa.13.6.extract.trunc.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %data32.sroa.7.0.insert.shift.i = shl nuw nsw i32 %or35.i, 8
  %data32.sroa.7.0.insert.insert.i = or i32 %data32.sroa.7.0.insert.shift.i, %or45.i
  %data32.sroa.6.0.insert.shift.i = shl nuw nsw i32 %or25.i, 16
  %data32.sroa.6.0.insert.insert.i = or i32 %data32.sroa.7.0.insert.insert.i, %data32.sroa.6.0.insert.shift.i
  %data32.sroa.0.0.insert.shift.i = shl nuw i32 %or.i, 24
  %data32.sroa.0.0.insert.insert.i = or i32 %data32.sroa.6.0.insert.insert.i, %data32.sroa.0.0.insert.shift.i
  %26 = tail call i32 @llvm.bswap.i32(i32 %data32.sroa.0.0.insert.insert.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %dstxor.1178.i, i32 %26) #6, !srcloc !98
  %add.i = add i32 %data32.sroa.0.0.insert.insert.i, %csum.1177.i
  %add.ptr48.i = getelementptr i8, ptr %dstxor.1178.i, i32 4
  %add.ptr49.i = getelementptr i8, ptr %srcxor.1179.i, i32 8
  %inc.i = add nuw i32 %i.0180.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %umax.i
  br i1 %exitcond.not.i, label %for.body5.i.for.cond50.preheader.i_crit_edge, label %for.body5.i.for.body5.i_crit_edge

for.body5.i.for.body5.i_crit_edge:                ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body5.i

for.body5.i.for.cond50.preheader.i_crit_edge:     ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond50.preheader.i

for.body53.i:                                     ; preds = %for.cond50.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %srcxor.1.lcssa.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %srcxor.1.lcssa.i, align 4
  %srcdata32.sroa.0.sroa.0.0.extract.shift158.i = lshr i32 %28, 28
  %srcdata32.sroa.0.sroa.7.0.extract.shift160.i = lshr i32 %28, 16
  %and54.i = lshr i32 %28, 12
  %conv58.i = and i32 %srcdata32.sroa.0.sroa.7.0.extract.shift160.i, 240
  %or63.i = or i32 %conv58.i, %srcdata32.sroa.0.sroa.0.0.extract.shift158.i
  %conv68.i = and i32 %28, 240
  %conv71.i = and i32 %and54.i, 15
  %or73.i = or i32 %conv71.i, %conv68.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !99
  tail call void @arm_heavy_mb() #6
  %29 = trunc i32 %or73.i to i16
  %30 = trunc i32 %or63.i to i16
  %data16.sroa.0.0.insert.shift.i = shl nuw i16 %30, 8
  %data16.sroa.0.0.insert.insert.i = or i16 %data16.sroa.0.0.insert.shift.i, %29
  %31 = tail call i16 @llvm.bswap.i16(i16 %data16.sroa.0.0.insert.insert.i) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %dstxor.1.lcssa.i, i16 %31) #6, !srcloc !95
  %conv79.i = zext i16 %data16.sroa.0.0.insert.insert.i to i32
  %add80.i = add i32 %csum.1.lcssa.i, %conv79.i
  %add.ptr81.i = getelementptr i8, ptr %dstxor.1.lcssa.i, i32 2
  %add.ptr82.i = getelementptr i8, ptr %srcxor.1.lcssa.i, i32 4
  br label %for.end85.i

for.end85.i:                                      ; preds = %for.body53.i, %for.cond50.preheader.i.for.end85.i_crit_edge
  %csum.2.lcssa.i = phi i32 [ %add80.i, %for.body53.i ], [ %csum.1.lcssa.i, %for.cond50.preheader.i.for.end85.i_crit_edge ]
  %dstxor.2.lcssa.i = phi ptr [ %add.ptr81.i, %for.body53.i ], [ %dstxor.1.lcssa.i, %for.cond50.preheader.i.for.end85.i_crit_edge ]
  %srcxor.2.lcssa.i = phi ptr [ %add.ptr82.i, %for.body53.i ], [ %srcxor.1.lcssa.i, %for.cond50.preheader.i.for.end85.i_crit_edge ]
  %add.ptr86.i = getelementptr i8, ptr %dstxor.2.lcssa.i, i32 %sub.i
  %inc88.i = add nuw nsw i32 %j.0194.i, 1
  %exitcond196.not.i = icmp eq i32 %inc88.i, %20
  br i1 %exitcond196.not.i, label %for.end85.i.ast_update_cursor_image.exit_crit_edge, label %for.end85.i.for.cond3.preheader.i_crit_edge

for.end85.i.for.cond3.preheader.i_crit_edge:      ; preds = %for.end85.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond3.preheader.i

for.end85.i.ast_update_cursor_image.exit_crit_edge: ; preds = %for.end85.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ast_update_cursor_image.exit

ast_update_cursor_image.exit:                     ; preds = %for.end85.i.ast_update_cursor_image.exit_crit_edge, %entry.ast_update_cursor_image.exit_crit_edge
  %csum.0.lcssa.i = phi i32 [ 0, %entry.ast_update_cursor_image.exit_crit_edge ], [ %csum.2.lcssa.i, %for.end85.i.ast_update_cursor_image.exit_crit_edge ]
  %add.ptr90.i = getelementptr i8, ptr %dst_map.sroa.0.0.copyload50, i32 8192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  tail call void @arm_heavy_mb() #6
  %32 = tail call i32 @llvm.bswap.i32(i32 %csum.0.lcssa.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr90.i, i32 %32) #6, !srcloc !98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !101
  tail call void @arm_heavy_mb() #6
  %33 = tail call i32 @llvm.bswap.i32(i32 %18) #6
  %add.ptr97.i = getelementptr i8, ptr %dst_map.sroa.0.0.copyload50, i32 8196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr97.i, i32 %33) #6, !srcloc !98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !102
  tail call void @arm_heavy_mb() #6
  %34 = tail call i32 @llvm.bswap.i32(i32 %20) #6
  %add.ptr101.i = getelementptr i8, ptr %dst_map.sroa.0.0.copyload50, i32 8200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr101.i, i32 %34) #6, !srcloc !98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  tail call void @arm_heavy_mb() #6
  %add.ptr105.i = getelementptr i8, ptr %dst_map.sroa.0.0.copyload50, i32 8212
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr105.i, i32 0) #6, !srcloc !98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  tail call void @arm_heavy_mb() #6
  %add.ptr109.i = getelementptr i8, ptr %dst_map.sroa.0.0.copyload50, i32 8216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr109.i, i32 0) #6, !srcloc !98
  %35 = ptrtoint ptr %fb4 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fb4, align 4
  %fb11 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 2
  %37 = ptrtoint ptr %fb11 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %fb11, align 4
  %cmp.not = icmp eq ptr %36, %38
  br i1 %cmp.not, label %ast_update_cursor_image.exit.do.body_crit_edge, label %if.then

ast_update_cursor_image.exit.do.body_crit_edge:   ; preds = %ast_update_cursor_image.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then:                                          ; preds = %ast_update_cursor_image.exit
  call void @__sanitizer_cov_trace_pc() #8
  %39 = trunc i64 %16 to i16
  %40 = shl i16 %39, 5
  %conv1.i.i = and i16 %40, -256
  %or.i.i = or i16 %conv1.i.i, 200
  %ioregs.i.i.i = getelementptr inbounds %struct.ast_private, ptr %11, i32 0, i32 2
  %41 = ptrtoint ptr %ioregs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ioregs.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %42, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @arm_heavy_mb() #6
  %43 = tail call i16 @llvm.bswap.i16(i16 %or.i.i) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i, i16 %43) #6, !srcloc !95
  %sh.diff.i = lshr i64 %16, 3
  %tr.sh.diff.i = trunc i64 %sh.diff.i to i16
  %conv1.i11.i = and i16 %tr.sh.diff.i, -256
  %or.i13.i = or i16 %conv1.i11.i, 201
  %44 = ptrtoint ptr %ioregs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ioregs.i.i.i, align 8
  %add.ptr.i.i15.i = getelementptr i8, ptr %45, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @arm_heavy_mb() #6
  %46 = tail call i16 @llvm.bswap.i16(i16 %or.i13.i) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i15.i, i16 %46) #6, !srcloc !95
  %sh.diff21.i = lshr i64 %16, 11
  %tr.sh.diff22.i = trunc i64 %sh.diff21.i to i16
  %conv1.i16.i = and i16 %tr.sh.diff22.i, -256
  %or.i18.i = or i16 %conv1.i16.i, 202
  %47 = ptrtoint ptr %ioregs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ioregs.i.i.i, align 8
  %add.ptr.i.i20.i = getelementptr i8, ptr %48, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @arm_heavy_mb() #6
  %49 = tail call i16 @llvm.bswap.i16(i16 %or.i18.i) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i20.i, i16 %49) #6, !srcloc !95
  %50 = ptrtoint ptr %next_hwc_index to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %next_hwc_index, align 8
  %52 = and i32 %51, 1
  %rem = xor i32 %52, 1
  store i32 %rem, ptr %next_hwc_index, align 8
  br label %do.body

do.body:                                          ; preds = %if.then, %ast_update_cursor_image.exit.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  tail call void @arm_heavy_mb() #6
  %crtc_x = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 4
  %53 = ptrtoint ptr %crtc_x to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %crtc_x, align 4
  %55 = tail call i32 @llvm.bswap.i32(i32 %54)
  %add.ptr14 = getelementptr i8, ptr %dst_map.sroa.0.0.copyload50, i32 8204
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %55) #6, !srcloc !98
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  tail call void @arm_heavy_mb() #6
  %crtc_y = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 5
  %56 = ptrtoint ptr %crtc_y to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %crtc_y, align 4
  %58 = tail call i32 @llvm.bswap.i32(i32 %57)
  %add.ptr18 = getelementptr i8, ptr %dst_map.sroa.0.0.copyload50, i32 8208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %58) #6, !srcloc !98
  %59 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %width, align 8
  %61 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %height, align 4
  %63 = ptrtoint ptr %crtc_x to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %crtc_x, align 4
  %65 = tail call i32 @llvm.smax.i32(i32 %64, i32 0)
  %66 = trunc i32 %65 to i16
  %67 = tail call i32 @llvm.smin.i32(i32 %64, i32 0)
  %68 = add i32 %67, %60
  %69 = ptrtoint ptr %crtc_y to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %crtc_y, align 4
  %71 = tail call i32 @llvm.smax.i32(i32 %70, i32 0)
  %72 = trunc i32 %71 to i16
  %73 = tail call i32 @llvm.smin.i32(i32 %70, i32 0)
  %74 = add i32 %73, %62
  %75 = trunc i32 %74 to i8
  %y_offset.0 = sub i8 64, %75
  %76 = trunc i32 %68 to i8
  %x_offset.0 = sub i8 64, %76
  %conv1.i.i80 = zext i8 %x_offset.0 to i16
  %shl.i.i = shl nuw i16 %conv1.i.i80, 8
  %or.i.i81 = or i16 %shl.i.i, 194
  %ioregs.i.i.i82 = getelementptr inbounds %struct.ast_private, ptr %11, i32 0, i32 2
  %77 = ptrtoint ptr %ioregs.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ioregs.i.i.i82, align 8
  %add.ptr.i.i.i83 = getelementptr i8, ptr %78, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @arm_heavy_mb() #6
  %79 = tail call i16 @llvm.bswap.i16(i16 %or.i.i81) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i83, i16 %79) #6, !srcloc !95
  %conv1.i19.i = zext i8 %y_offset.0 to i16
  %shl.i20.i = shl nuw i16 %conv1.i19.i, 8
  %or.i21.i = or i16 %shl.i20.i, 195
  %80 = ptrtoint ptr %ioregs.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ioregs.i.i.i82, align 8
  %add.ptr.i.i23.i = getelementptr i8, ptr %81, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @arm_heavy_mb() #6
  %82 = tail call i16 @llvm.bswap.i16(i16 %or.i21.i) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i23.i, i16 %82) #6, !srcloc !95
  %conv1.i24.i = shl i16 %66, 8
  %or.i26.i = or i16 %conv1.i24.i, 196
  %83 = ptrtoint ptr %ioregs.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ioregs.i.i.i82, align 8
  %add.ptr.i.i28.i = getelementptr i8, ptr %84, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @arm_heavy_mb() #6
  %85 = tail call i16 @llvm.bswap.i16(i16 %or.i26.i) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i28.i, i16 %85) #6, !srcloc !95
  %conv1.i29.i = and i16 %66, 3840
  %or.i31.i = or i16 %conv1.i29.i, 197
  %86 = ptrtoint ptr %ioregs.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ioregs.i.i.i82, align 8
  %add.ptr.i.i33.i = getelementptr i8, ptr %87, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @arm_heavy_mb() #6
  %88 = tail call i16 @llvm.bswap.i16(i16 %or.i31.i) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i33.i, i16 %88) #6, !srcloc !95
  %conv1.i34.i = shl i16 %72, 8
  %or.i36.i = or i16 %conv1.i34.i, 198
  %89 = ptrtoint ptr %ioregs.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ioregs.i.i.i82, align 8
  %add.ptr.i.i38.i = getelementptr i8, ptr %90, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @arm_heavy_mb() #6
  %91 = tail call i16 @llvm.bswap.i16(i16 %or.i36.i) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i38.i, i16 %91) #6, !srcloc !95
  %conv1.i39.i = and i16 %72, 1792
  %or.i41.i = or i16 %conv1.i39.i, 199
  %92 = ptrtoint ptr %ioregs.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %ioregs.i.i.i82, align 8
  %add.ptr.i.i43.i = getelementptr i8, ptr %93, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @arm_heavy_mb() #6
  %94 = tail call i16 @llvm.bswap.i16(i16 %or.i41.i) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i43.i, i16 %94) #6, !srcloc !95
  tail call void @ast_set_index_reg_mask(ptr noundef %11, i32 noundef 84, i8 noundef zeroext -53, i8 noundef zeroext -4, i8 noundef zeroext 3) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ast_cursor_plane_helper_atomic_disable(ptr nocapture noundef readonly %plane, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %plane to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plane, align 8
  tail call void @ast_set_index_reg_mask(ptr noundef %1, i32 noundef 84, i8 noundef zeroext -53, i8 noundef zeroext -4, i8 noundef zeroext 1) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_init_with_planes(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_crtc_set_gamma_size(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ast_crtc_reset(ptr noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 296) #10
  %state = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %state, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %funcs = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 16
  %3 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %funcs, align 4
  %atomic_destroy_state = getelementptr inbounds %struct.drm_crtc_funcs, ptr %4, i32 0, i32 11
  %5 = ptrtoint ptr %atomic_destroy_state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %atomic_destroy_state, align 4
  tail call void %6(ptr noundef %crtc, ptr noundef nonnull %2) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tobool2.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__drm_atomic_helper_crtc_reset(ptr noundef %crtc, ptr noundef nonnull %call7.i.i) #6
  br label %if.end4

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__drm_atomic_helper_crtc_reset(ptr noundef %crtc, ptr noundef null) #6
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_cleanup(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_set_config(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_page_flip(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ast_crtc_atomic_duplicate_state(ptr noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end27, !prof !107

do.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %crtc, align 8
  %dev11 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev11, align 4
  %call = tail call ptr @dev_driver_string(ptr noundef %5) #6
  %6 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev11, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %11, %if.end.i ], [ %9, %do.end.dev_name.exit_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1133, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef %call, ptr noundef %retval.0.i, ptr noundef nonnull @.str.9) #6
  br label %cleanup

if.end27:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3264, i32 noundef 296) #10
  %tobool29.not = icmp eq ptr %call7.i, null
  br i1 %tobool29.not, label %if.end27.cleanup_crit_edge, label %if.end31

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end31:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__drm_atomic_helper_crtc_duplicate_state(ptr noundef %crtc, ptr noundef nonnull %call7.i) #6
  %13 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %state, align 4
  %format = getelementptr inbounds %struct.ast_crtc_state, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %format, align 4
  %format34 = getelementptr inbounds %struct.ast_crtc_state, ptr %call7.i, i32 0, i32 1
  %17 = ptrtoint ptr %format34 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %16, ptr %format34, align 4
  %vbios_mode_info = getelementptr inbounds %struct.ast_crtc_state, ptr %call7.i, i32 0, i32 2
  %vbios_mode_info35 = getelementptr inbounds %struct.ast_crtc_state, ptr %14, i32 0, i32 2
  %18 = ptrtoint ptr %vbios_mode_info35 to i32
  call void @__asan_loadN_noabort(i32 %18, i32 8)
  %19 = load i64, ptr %vbios_mode_info35, align 4
  %20 = ptrtoint ptr %vbios_mode_info to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %vbios_mode_info, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.end27.cleanup_crit_edge, %dev_name.exit
  %retval.0 = phi ptr [ null, %dev_name.exit ], [ %call7.i, %if.end31 ], [ null, %if.end27.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ast_crtc_atomic_destroy_state(ptr nocapture noundef readnone %crtc, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__drm_atomic_helper_crtc_destroy_state(ptr noundef %state) #6
  tail call void @kfree(ptr noundef %state) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_crtc_reset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_crtc_duplicate_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_crtc_destroy_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ast_crtc_helper_atomic_check(ptr nocapture noundef readonly %crtc, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %enable = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %enable to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %enable, align 4, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %format2 = getelementptr inbounds %struct.ast_crtc_state, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %format2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %format2, align 4
  %tobool3.not = icmp eq ptr %11, null
  br i1 %tobool3.not, label %land.rhs, label %if.end49

land.rhs:                                         ; preds = %if.end
  %.b68 = load i1, ptr @ast_crtc_helper_atomic_check.__already_done, align 1
  br i1 %.b68, label %land.rhs.cleanup_crit_edge, label %if.then12, !prof !96

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then12:                                        ; preds = %land.rhs
  store i1 true, ptr @ast_crtc_helper_atomic_check.__already_done, align 1
  %dev22 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 2
  %12 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev22, align 4
  %call23 = tail call ptr @dev_driver_string(ptr noundef %13) #6
  %14 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev22, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then12.dev_name.exit_crit_edge

if.then12.dev_name.exit_crit_edge:                ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %15, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then12.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %19, %if.end.i ], [ %17, %if.then12.dev_name.exit_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1021, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef %call23, ptr noundef %retval.0.i, ptr noundef nonnull @.str.10) #6
  br label %cleanup

if.end49:                                         ; preds = %if.end
  %mode = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 8
  %20 = getelementptr inbounds %struct.drm_format_info, ptr %11, i32 0, i32 3
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %20, align 2
  %conv.i = zext i8 %22 to i32
  %23 = add nuw nsw i32 %conv.i, 536870911
  %24 = and i32 %23, 536870911
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %24)
  %25 = icmp ult i32 %24, 4
  br i1 %25, label %switch.lookup, label %if.end49.cleanup_crit_edge

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

switch.lookup:                                    ; preds = %if.end49
  %vbios_mode_info = getelementptr inbounds %struct.ast_crtc_state, ptr %5, i32 0, i32 2
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.ast_crtc_helper_atomic_check, i32 0, i32 %24
  %26 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %26)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %27 = ptrtoint ptr %vbios_mode_info to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %switch.load, ptr %vbios_mode_info, align 4
  %crtc_hdisplay.i = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 8, i32 13
  %28 = ptrtoint ptr %crtc_hdisplay.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %crtc_hdisplay.i, align 4
  %30 = zext i16 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.14)
  switch i16 %29, label %switch.lookup.cleanup_crit_edge [
    i16 640, label %sw.bb6.i
    i16 800, label %sw.bb8.i
    i16 1024, label %sw.bb11.i
    i16 1280, label %sw.bb14.i
    i16 1360, label %sw.bb21.i
    i16 1440, label %sw.bb24.i
    i16 1600, label %sw.bb27.i
    i16 1680, label %sw.bb39.i
    i16 1920, label %sw.bb42.i
  ]

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb6.i:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  %enh_table.i = getelementptr inbounds %struct.ast_crtc_state, ptr %5, i32 0, i32 2, i32 1
  %31 = ptrtoint ptr %enh_table.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @res_640x480, ptr %enh_table.i, align 4
  br label %sw.epilog55.i

sw.bb8.i:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  %enh_table10.i = getelementptr inbounds %struct.ast_crtc_state, ptr %5, i32 0, i32 2, i32 1
  %32 = ptrtoint ptr %enh_table10.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @res_800x600, ptr %enh_table10.i, align 4
  br label %sw.epilog55.i

sw.bb11.i:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  %enh_table13.i = getelementptr inbounds %struct.ast_crtc_state, ptr %5, i32 0, i32 2, i32 1
  %33 = ptrtoint ptr %enh_table13.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @res_1024x768, ptr %enh_table13.i, align 4
  br label %sw.epilog55.i

sw.bb14.i:                                        ; preds = %switch.lookup
  %crtc_vdisplay.i = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 8, i32 20
  %34 = ptrtoint ptr %crtc_vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %crtc_vdisplay.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 800, i16 %35)
  %cmp.i = icmp eq i16 %35, 800
  %enh_table18.i = getelementptr inbounds %struct.ast_crtc_state, ptr %5, i32 0, i32 2, i32 1
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %enh_table18.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @res_1280x800, ptr %enh_table18.i, align 4
  br label %sw.epilog55.i

if.else.i:                                        ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %enh_table18.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @res_1280x1024, ptr %enh_table18.i, align 4
  br label %sw.epilog55.i

sw.bb21.i:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  %enh_table23.i = getelementptr inbounds %struct.ast_crtc_state, ptr %5, i32 0, i32 2, i32 1
  %38 = ptrtoint ptr %enh_table23.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @res_1360x768, ptr %enh_table23.i, align 4
  br label %sw.epilog55.i

sw.bb24.i:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  %enh_table26.i = getelementptr inbounds %struct.ast_crtc_state, ptr %5, i32 0, i32 2, i32 1
  %39 = ptrtoint ptr %enh_table26.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @res_1440x900, ptr %enh_table26.i, align 4
  br label %sw.epilog55.i

sw.bb27.i:                                        ; preds = %switch.lookup
  %crtc_vdisplay28.i = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 8, i32 20
  %40 = ptrtoint ptr %crtc_vdisplay28.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %crtc_vdisplay28.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 900, i16 %41)
  %cmp30.i = icmp eq i16 %41, 900
  %enh_table34.i = getelementptr inbounds %struct.ast_crtc_state, ptr %5, i32 0, i32 2, i32 1
  br i1 %cmp30.i, label %if.then32.i, label %if.else35.i

if.then32.i:                                      ; preds = %sw.bb27.i
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %enh_table34.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @res_1600x900, ptr %enh_table34.i, align 4
  br label %sw.epilog55.i

if.else35.i:                                      ; preds = %sw.bb27.i
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %enh_table34.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @res_1600x1200, ptr %enh_table34.i, align 4
  br label %sw.epilog55.i

sw.bb39.i:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  %enh_table41.i = getelementptr inbounds %struct.ast_crtc_state, ptr %5, i32 0, i32 2, i32 1
  %44 = ptrtoint ptr %enh_table41.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @res_1680x1050, ptr %enh_table41.i, align 4
  br label %sw.epilog55.i

sw.bb42.i:                                        ; preds = %switch.lookup
  %crtc_vdisplay43.i = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 8, i32 20
  %45 = ptrtoint ptr %crtc_vdisplay43.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %crtc_vdisplay43.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1080, i16 %46)
  %cmp45.i = icmp eq i16 %46, 1080
  %enh_table49.i = getelementptr inbounds %struct.ast_crtc_state, ptr %5, i32 0, i32 2, i32 1
  br i1 %cmp45.i, label %if.then47.i, label %if.else50.i

if.then47.i:                                      ; preds = %sw.bb42.i
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %enh_table49.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @res_1920x1080, ptr %enh_table49.i, align 4
  br label %sw.epilog55.i

if.else50.i:                                      ; preds = %sw.bb42.i
  call void @__sanitizer_cov_trace_pc() #8
  %48 = ptrtoint ptr %enh_table49.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @res_1920x1200, ptr %enh_table49.i, align 4
  br label %sw.epilog55.i

sw.epilog55.i:                                    ; preds = %if.else50.i, %if.then47.i, %sw.bb39.i, %if.else35.i, %if.then32.i, %sw.bb24.i, %sw.bb21.i, %if.else.i, %if.then.i, %sw.bb11.i, %sw.bb8.i, %sw.bb6.i
  %call.i = tail call i32 @drm_mode_vrefresh(ptr noundef %mode) #6
  %enh_table56.i = getelementptr inbounds %struct.ast_crtc_state, ptr %5, i32 0, i32 2, i32 1
  %49 = ptrtoint ptr %enh_table56.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %enh_table56.i, align 4
  %flags.i = getelementptr inbounds %struct.ast_vbios_enhtable, ptr %50, i32 0, i32 9
  %51 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags.i, align 4
  %53 = and i32 %52, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %54 = icmp ne i32 %53, 0
  %refresh_rate59269274.i = getelementptr inbounds %struct.ast_vbios_enhtable, ptr %50, i32 0, i32 10
  %55 = ptrtoint ptr %refresh_rate59269274.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %refresh_rate59269274.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %56)
  %cmp60.not270275.i = icmp eq i32 %56, 255
  %flags65.i = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 8, i32 11
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.end.i.while.cond.i_crit_edge, %sw.epilog55.i
  %check_sync.0.off0.i = phi i1 [ %54, %sw.epilog55.i ], [ false, %while.end.i.while.cond.i_crit_edge ]
  br i1 %cmp60.not270275.i, label %while.cond.i.while.end.i_crit_edge, label %while.cond.i.while.body62.lr.ph.i_crit_edge

while.cond.i.while.body62.lr.ph.i_crit_edge:      ; preds = %while.cond.i
  br label %while.body62.lr.ph.i

while.cond.i.while.end.i_crit_edge:               ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

while.body62.lr.ph.i:                             ; preds = %if.end108.i.while.body62.lr.ph.i_crit_edge, %while.cond.i.while.body62.lr.ph.i_crit_edge
  %57 = phi i32 [ %74, %if.end108.i.while.body62.lr.ph.i_crit_edge ], [ %56, %while.cond.i.while.body62.lr.ph.i_crit_edge ]
  %loop.0.ph278.i = phi ptr [ %incdec.ptr109.i, %if.end108.i.while.body62.lr.ph.i_crit_edge ], [ %50, %while.cond.i.while.body62.lr.ph.i_crit_edge ]
  %best.1.ph276.i = phi ptr [ %best.2.i, %if.end108.i.while.body62.lr.ph.i_crit_edge ], [ null, %while.cond.i.while.body62.lr.ph.i_crit_edge ]
  br i1 %check_sync.0.off0.i, label %land.lhs.true.i.lr.ph, label %while.body62.lr.ph.i.if.end96.i_crit_edge

while.body62.lr.ph.i.if.end96.i_crit_edge:        ; preds = %while.body62.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end96.i

land.lhs.true.i.lr.ph:                            ; preds = %while.body62.lr.ph.i
  %58 = ptrtoint ptr %flags65.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %flags65.i, align 4
  %and66.i = and i32 %59, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and66.i)
  %tobool67.not.i = icmp eq i32 %and66.i, 0
  %and73.i = and i32 %59, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73.i)
  %tobool74.not.i = icmp eq i32 %and73.i, 0
  %and81.i = and i32 %59, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81.i)
  %tobool82.not.i = icmp eq i32 %and81.i, 0
  %and89.i = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89.i)
  %tobool90.not.i = icmp eq i32 %and89.i, 0
  br label %land.lhs.true.i

while.body62.i:                                   ; preds = %if.then95.i
  call void @__sanitizer_cov_trace_pc() #8
  %incdec.ptr.i = getelementptr %struct.ast_vbios_enhtable, ptr %loop.0271.i74, i32 1
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %while.body62.i, %land.lhs.true.i.lr.ph
  %loop.0271.i74 = phi ptr [ %loop.0.ph278.i, %land.lhs.true.i.lr.ph ], [ %incdec.ptr.i, %while.body62.i ]
  %60 = phi i32 [ %57, %land.lhs.true.i.lr.ph ], [ %70, %while.body62.i ]
  br i1 %tobool67.not.i, label %land.lhs.true.i.lor.lhs.false.i_crit_edge, label %land.lhs.true68.i

land.lhs.true.i.lor.lhs.false.i_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false.i

land.lhs.true68.i:                                ; preds = %land.lhs.true.i
  %flags69.i = getelementptr inbounds %struct.ast_vbios_enhtable, ptr %loop.0271.i74, i32 0, i32 9
  %61 = ptrtoint ptr %flags69.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %flags69.i, align 4
  %and70.i = and i32 %62, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70.i)
  %tobool71.not.i = icmp eq i32 %and70.i, 0
  br i1 %tobool71.not.i, label %land.lhs.true68.i.lor.lhs.false.i_crit_edge, label %land.lhs.true68.i.if.then95.i_crit_edge

land.lhs.true68.i.if.then95.i_crit_edge:          ; preds = %land.lhs.true68.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then95.i

land.lhs.true68.i.lor.lhs.false.i_crit_edge:      ; preds = %land.lhs.true68.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true68.i.lor.lhs.false.i_crit_edge, %land.lhs.true.i.lor.lhs.false.i_crit_edge
  br i1 %tobool74.not.i, label %lor.lhs.false.i.lor.lhs.false79.i_crit_edge, label %land.lhs.true75.i

lor.lhs.false.i.lor.lhs.false79.i_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false79.i

land.lhs.true75.i:                                ; preds = %lor.lhs.false.i
  %flags76.i = getelementptr inbounds %struct.ast_vbios_enhtable, ptr %loop.0271.i74, i32 0, i32 9
  %63 = ptrtoint ptr %flags76.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %flags76.i, align 4
  %and77.i = and i32 %64, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and77.i)
  %tobool78.not.i = icmp eq i32 %and77.i, 0
  br i1 %tobool78.not.i, label %land.lhs.true75.i.lor.lhs.false79.i_crit_edge, label %land.lhs.true75.i.if.then95.i_crit_edge

land.lhs.true75.i.if.then95.i_crit_edge:          ; preds = %land.lhs.true75.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then95.i

land.lhs.true75.i.lor.lhs.false79.i_crit_edge:    ; preds = %land.lhs.true75.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false79.i

lor.lhs.false79.i:                                ; preds = %land.lhs.true75.i.lor.lhs.false79.i_crit_edge, %lor.lhs.false.i.lor.lhs.false79.i_crit_edge
  br i1 %tobool82.not.i, label %lor.lhs.false79.i.lor.lhs.false87.i_crit_edge, label %land.lhs.true83.i

lor.lhs.false79.i.lor.lhs.false87.i_crit_edge:    ; preds = %lor.lhs.false79.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false87.i

land.lhs.true83.i:                                ; preds = %lor.lhs.false79.i
  %flags84.i = getelementptr inbounds %struct.ast_vbios_enhtable, ptr %loop.0271.i74, i32 0, i32 9
  %65 = ptrtoint ptr %flags84.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %flags84.i, align 4
  %and85.i = and i32 %66, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85.i)
  %tobool86.not.i = icmp eq i32 %and85.i, 0
  br i1 %tobool86.not.i, label %land.lhs.true83.i.lor.lhs.false87.i_crit_edge, label %land.lhs.true83.i.if.then95.i_crit_edge

land.lhs.true83.i.if.then95.i_crit_edge:          ; preds = %land.lhs.true83.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then95.i

land.lhs.true83.i.lor.lhs.false87.i_crit_edge:    ; preds = %land.lhs.true83.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false87.i

lor.lhs.false87.i:                                ; preds = %land.lhs.true83.i.lor.lhs.false87.i_crit_edge, %lor.lhs.false79.i.lor.lhs.false87.i_crit_edge
  br i1 %tobool90.not.i, label %lor.lhs.false87.i.if.end96.i_crit_edge, label %land.lhs.true91.i

lor.lhs.false87.i.if.end96.i_crit_edge:           ; preds = %lor.lhs.false87.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end96.i

land.lhs.true91.i:                                ; preds = %lor.lhs.false87.i
  %flags92.i = getelementptr inbounds %struct.ast_vbios_enhtable, ptr %loop.0271.i74, i32 0, i32 9
  %67 = ptrtoint ptr %flags92.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %flags92.i, align 4
  %and93.i = and i32 %68, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93.i)
  %tobool94.not.i = icmp eq i32 %and93.i, 0
  br i1 %tobool94.not.i, label %land.lhs.true91.i.if.end96.i_crit_edge, label %land.lhs.true91.i.if.then95.i_crit_edge

land.lhs.true91.i.if.then95.i_crit_edge:          ; preds = %land.lhs.true91.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then95.i

land.lhs.true91.i.if.end96.i_crit_edge:           ; preds = %land.lhs.true91.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end96.i

if.then95.i:                                      ; preds = %land.lhs.true91.i.if.then95.i_crit_edge, %land.lhs.true83.i.if.then95.i_crit_edge, %land.lhs.true75.i.if.then95.i_crit_edge, %land.lhs.true68.i.if.then95.i_crit_edge
  %refresh_rate59.i = getelementptr %struct.ast_vbios_enhtable, ptr %loop.0271.i74, i32 1, i32 10
  %69 = ptrtoint ptr %refresh_rate59.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %refresh_rate59.i, align 4
  %cmp60.not.i = icmp eq i32 %70, 255
  br i1 %cmp60.not.i, label %if.then95.i.while.end.i_crit_edge, label %while.body62.i

if.then95.i.while.end.i_crit_edge:                ; preds = %if.then95.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

if.end96.i:                                       ; preds = %land.lhs.true91.i.if.end96.i_crit_edge, %lor.lhs.false87.i.if.end96.i_crit_edge, %while.body62.lr.ph.i.if.end96.i_crit_edge
  %.lcssa.i = phi i32 [ %57, %while.body62.lr.ph.i.if.end96.i_crit_edge ], [ %60, %land.lhs.true91.i.if.end96.i_crit_edge ], [ %60, %lor.lhs.false87.i.if.end96.i_crit_edge ]
  %loop.0271.lcssa.i = phi ptr [ %loop.0.ph278.i, %while.body62.lr.ph.i.if.end96.i_crit_edge ], [ %loop.0271.i74, %land.lhs.true91.i.if.end96.i_crit_edge ], [ %loop.0271.i74, %lor.lhs.false87.i.if.end96.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %.lcssa.i, i32 %call.i)
  %cmp98.not.i = icmp ugt i32 %.lcssa.i, %call.i
  br i1 %cmp98.not.i, label %if.end96.i.if.end108.i_crit_edge, label %land.lhs.true100.i

if.end96.i.if.end108.i_crit_edge:                 ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end108.i

land.lhs.true100.i:                               ; preds = %if.end96.i
  %tobool101.not.i = icmp eq ptr %best.1.ph276.i, null
  br i1 %tobool101.not.i, label %land.lhs.true100.i.if.then107.i_crit_edge, label %lor.lhs.false102.i

land.lhs.true100.i.if.then107.i_crit_edge:        ; preds = %land.lhs.true100.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then107.i

lor.lhs.false102.i:                               ; preds = %land.lhs.true100.i
  %refresh_rate104.i = getelementptr inbounds %struct.ast_vbios_enhtable, ptr %best.1.ph276.i, i32 0, i32 10
  %71 = ptrtoint ptr %refresh_rate104.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %refresh_rate104.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %.lcssa.i, i32 %72)
  %cmp105.i = icmp ugt i32 %.lcssa.i, %72
  br i1 %cmp105.i, label %lor.lhs.false102.i.if.then107.i_crit_edge, label %lor.lhs.false102.i.if.end108.i_crit_edge

lor.lhs.false102.i.if.end108.i_crit_edge:         ; preds = %lor.lhs.false102.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end108.i

lor.lhs.false102.i.if.then107.i_crit_edge:        ; preds = %lor.lhs.false102.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then107.i

if.then107.i:                                     ; preds = %lor.lhs.false102.i.if.then107.i_crit_edge, %land.lhs.true100.i.if.then107.i_crit_edge
  br label %if.end108.i

if.end108.i:                                      ; preds = %if.then107.i, %lor.lhs.false102.i.if.end108.i_crit_edge, %if.end96.i.if.end108.i_crit_edge
  %best.2.i = phi ptr [ %loop.0271.lcssa.i, %if.then107.i ], [ %best.1.ph276.i, %lor.lhs.false102.i.if.end108.i_crit_edge ], [ %best.1.ph276.i, %if.end96.i.if.end108.i_crit_edge ]
  %incdec.ptr109.i = getelementptr %struct.ast_vbios_enhtable, ptr %loop.0271.lcssa.i, i32 1
  %refresh_rate59269.i = getelementptr %struct.ast_vbios_enhtable, ptr %loop.0271.lcssa.i, i32 1, i32 10
  %73 = ptrtoint ptr %refresh_rate59269.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %refresh_rate59269.i, align 4
  %cmp60.not270.i = icmp eq i32 %74, 255
  br i1 %cmp60.not270.i, label %if.end108.i.while.end.i_crit_edge, label %if.end108.i.while.body62.lr.ph.i_crit_edge

if.end108.i.while.body62.lr.ph.i_crit_edge:       ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body62.lr.ph.i

if.end108.i.while.end.i_crit_edge:                ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

while.end.i:                                      ; preds = %if.end108.i.while.end.i_crit_edge, %if.then95.i.while.end.i_crit_edge, %while.cond.i.while.end.i_crit_edge
  %best.1.ph.lcssa.i = phi ptr [ null, %while.cond.i.while.end.i_crit_edge ], [ %best.1.ph276.i, %if.then95.i.while.end.i_crit_edge ], [ %best.2.i, %if.end108.i.while.end.i_crit_edge ]
  %tobool110.not.i = icmp eq ptr %best.1.ph.lcssa.i, null
  %75 = select i1 %tobool110.not.i, i1 %check_sync.0.off0.i, i1 false
  br i1 %75, label %while.end.i.while.cond.i_crit_edge, label %while.end115.i

while.end.i.while.cond.i_crit_edge:               ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i

while.end115.i:                                   ; preds = %while.end.i
  br i1 %tobool110.not.i, label %while.end115.i._crit_edge, label %if.then117.i

while.end115.i._crit_edge:                        ; preds = %while.end115.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %77

if.then117.i:                                     ; preds = %while.end115.i
  call void @__sanitizer_cov_trace_pc() #8
  %76 = ptrtoint ptr %enh_table56.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %best.1.ph.lcssa.i, ptr %enh_table56.i, align 4
  br label %77

77:                                               ; preds = %if.then117.i, %while.end115.i._crit_edge
  %78 = ptrtoint ptr %enh_table56.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %enh_table56.i, align 4
  %flags121.i = getelementptr inbounds %struct.ast_vbios_enhtable, ptr %79, i32 0, i32 9
  %80 = ptrtoint ptr %flags121.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %flags121.i, align 4
  %and122.i = lshr i32 %81, 2
  %82 = and i32 %and122.i, 8
  %and126.i = lshr i32 %81, 1
  %83 = and i32 %and126.i, 8
  %84 = ptrtoint ptr %79 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %79, align 4
  %conv130.i = trunc i32 %85 to i16
  %crtc_htotal.i = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7, i32 18
  %86 = ptrtoint ptr %crtc_htotal.i to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %conv130.i, ptr %crtc_htotal.i, align 2
  %hde.i = getelementptr inbounds %struct.ast_vbios_enhtable, ptr %79, i32 0, i32 1
  %87 = ptrtoint ptr %hde.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %hde.i, align 4
  %add.i = add i32 %88, %82
  %conv132.i = trunc i32 %add.i to i16
  %crtc_hblank_start.i = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7, i32 14
  %89 = ptrtoint ptr %crtc_hblank_start.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %conv132.i, ptr %crtc_hblank_start.i, align 2
  %90 = load i32, ptr %79, align 4
  %sub.i = sub i32 %90, %82
  %conv135.i = trunc i32 %sub.i to i16
  %crtc_hblank_end.i = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7, i32 15
  %91 = ptrtoint ptr %crtc_hblank_end.i to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %conv135.i, ptr %crtc_hblank_end.i, align 4
  %92 = load i32, ptr %hde.i, align 4
  %add138.i = add i32 %92, %82
  %hfp.i = getelementptr inbounds %struct.ast_vbios_enhtable, ptr %79, i32 0, i32 2
  %93 = ptrtoint ptr %hfp.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %hfp.i, align 4
  %add140.i = add i32 %add138.i, %94
  %conv141.i = trunc i32 %add140.i to i16
  %crtc_hsync_start.i = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7, i32 16
  %95 = ptrtoint ptr %crtc_hsync_start.i to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %conv141.i, ptr %crtc_hsync_start.i, align 2
  %96 = load i32, ptr %hde.i, align 4
  %add144.i = add i32 %96, %82
  %97 = load i32, ptr %hfp.i, align 4
  %add147.i = add i32 %add144.i, %97
  %hsync.i = getelementptr inbounds %struct.ast_vbios_enhtable, ptr %79, i32 0, i32 3
  %98 = ptrtoint ptr %hsync.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %hsync.i, align 4
  %add149.i = add i32 %add147.i, %99
  %conv150.i = trunc i32 %add149.i to i16
  %crtc_hsync_end.i = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7, i32 17
  %100 = ptrtoint ptr %crtc_hsync_end.i to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 %conv150.i, ptr %crtc_hsync_end.i, align 4
  %vt.i = getelementptr inbounds %struct.ast_vbios_enhtable, ptr %79, i32 0, i32 4
  %101 = ptrtoint ptr %vt.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %vt.i, align 4
  %conv152.i = trunc i32 %102 to i16
  %crtc_vtotal.i = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7, i32 25
  %103 = ptrtoint ptr %crtc_vtotal.i to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 %conv152.i, ptr %crtc_vtotal.i, align 4
  %vde.i = getelementptr inbounds %struct.ast_vbios_enhtable, ptr %79, i32 0, i32 5
  %104 = ptrtoint ptr %vde.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %vde.i, align 4
  %add154.i = add i32 %105, %83
  %conv155.i = trunc i32 %add154.i to i16
  %crtc_vblank_start.i = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7, i32 21
  %106 = ptrtoint ptr %crtc_vblank_start.i to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 %conv155.i, ptr %crtc_vblank_start.i, align 4
  %107 = load i32, ptr %vt.i, align 4
  %sub158.i = sub i32 %107, %83
  %conv159.i = trunc i32 %sub158.i to i16
  %crtc_vblank_end.i = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7, i32 22
  %108 = ptrtoint ptr %crtc_vblank_end.i to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 %conv159.i, ptr %crtc_vblank_end.i, align 2
  %109 = load i32, ptr %vde.i, align 4
  %add162.i = add i32 %109, %83
  %vfp.i = getelementptr inbounds %struct.ast_vbios_enhtable, ptr %79, i32 0, i32 6
  %110 = ptrtoint ptr %vfp.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %vfp.i, align 4
  %add164.i = add i32 %add162.i, %111
  %conv165.i = trunc i32 %add164.i to i16
  %crtc_vsync_start.i = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7, i32 23
  %112 = ptrtoint ptr %crtc_vsync_start.i to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 %conv165.i, ptr %crtc_vsync_start.i, align 4
  %113 = load i32, ptr %vde.i, align 4
  %add168.i = add i32 %113, %83
  %114 = load i32, ptr %vfp.i, align 4
  %add171.i = add i32 %add168.i, %114
  %vsync.i = getelementptr inbounds %struct.ast_vbios_enhtable, ptr %79, i32 0, i32 7
  %115 = ptrtoint ptr %vsync.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %vsync.i, align 4
  %add173.i = add i32 %add171.i, %116
  %conv174.i = trunc i32 %add173.i to i16
  %crtc_vsync_end.i = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 7, i32 24
  %117 = ptrtoint ptr %crtc_vsync_end.i to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 %conv174.i, ptr %crtc_vsync_end.i, align 2
  br label %cleanup

cleanup:                                          ; preds = %77, %switch.lookup.cleanup_crit_edge, %if.end49.cleanup_crit_edge, %dev_name.exit, %land.rhs.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -22, %dev_name.exit ], [ -22, %land.rhs.cleanup_crit_edge ], [ 0, %77 ], [ -22, %if.end49.cleanup_crit_edge ], [ -22, %switch.lookup.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ast_crtc_helper_atomic_flush(ptr nocapture noundef readonly %crtc, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %old_state.i = getelementptr %struct.__drm_crtcs_state, ptr %1, i32 %3, i32 2
  %6 = ptrtoint ptr %old_state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %old_state.i, align 8
  %8 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %crtc, align 8
  %format = getelementptr inbounds %struct.ast_crtc_state, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %format, align 4
  %format6 = getelementptr inbounds %struct.ast_crtc_state, ptr %5, i32 0, i32 1
  %12 = ptrtoint ptr %format6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %format6, align 4
  %cmp.not = icmp eq ptr %11, %13
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %enabled.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 11
  %14 = ptrtoint ptr %enabled.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %enabled.i, align 8, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %gamma_store.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 18
  %16 = ptrtoint ptr %gamma_store.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %gamma_store.i, align 4
  %gamma_size.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 17
  %18 = ptrtoint ptr %gamma_size.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %gamma_size.i, align 8
  %add.ptr.i = getelementptr i16, ptr %17, i32 %19
  %add.ptr2.i = getelementptr i16, ptr %add.ptr.i, i32 %19
  %ioregs.i.i.i = getelementptr inbounds %struct.ast_private, ptr %9, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i
  %i.026.i = phi i32 [ 0, %if.end.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %b.025.i = phi ptr [ %add.ptr2.i, %if.end.i ], [ %incdec.ptr9.i, %for.body.i.for.body.i_crit_edge ]
  %g.024.i = phi ptr [ %add.ptr.i, %if.end.i ], [ %incdec.ptr5.i, %for.body.i.for.body.i_crit_edge ]
  %r.023.i = phi ptr [ %17, %if.end.i ], [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ]
  %conv.i = trunc i32 %i.026.i to i8
  %incdec.ptr.i = getelementptr i16, ptr %r.023.i, i32 1
  %20 = ptrtoint ptr %r.023.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %r.023.i, align 2
  %22 = lshr i16 %21, 8
  %conv4.i = trunc i16 %22 to i8
  %incdec.ptr5.i = getelementptr i16, ptr %g.024.i, i32 1
  %23 = ptrtoint ptr %g.024.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %g.024.i, align 2
  %25 = lshr i16 %24, 8
  %conv8.i = trunc i16 %25 to i8
  %incdec.ptr9.i = getelementptr i16, ptr %b.025.i, i32 1
  %26 = ptrtoint ptr %b.025.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %b.025.i, align 2
  %28 = lshr i16 %27, 8
  %conv12.i = trunc i16 %28 to i8
  %29 = ptrtoint ptr %ioregs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ioregs.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %30, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !108
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i, i8 %conv.i) #6, !srcloc !109
  %31 = ptrtoint ptr %ioregs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ioregs.i.i.i, align 8
  %add.ptr.i12.i.i = getelementptr i8, ptr %32, i32 68
  %33 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i12.i.i) #6, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !111
  %34 = ptrtoint ptr %ioregs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ioregs.i.i.i, align 8
  %add.ptr.i14.i.i = getelementptr i8, ptr %35, i32 73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !108
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i14.i.i, i8 %conv4.i) #6, !srcloc !109
  %36 = ptrtoint ptr %ioregs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ioregs.i.i.i, align 8
  %add.ptr.i16.i.i = getelementptr i8, ptr %37, i32 68
  %38 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i16.i.i) #6, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !111
  %39 = ptrtoint ptr %ioregs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ioregs.i.i.i, align 8
  %add.ptr.i18.i.i = getelementptr i8, ptr %40, i32 73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !108
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i18.i.i, i8 %conv8.i) #6, !srcloc !109
  %41 = ptrtoint ptr %ioregs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ioregs.i.i.i, align 8
  %add.ptr.i20.i.i = getelementptr i8, ptr %42, i32 68
  %43 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i20.i.i) #6, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !111
  %44 = ptrtoint ptr %ioregs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ioregs.i.i.i, align 8
  %add.ptr.i22.i.i = getelementptr i8, ptr %45, i32 73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !108
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i22.i.i, i8 %conv12.i) #6, !srcloc !109
  %46 = ptrtoint ptr %ioregs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ioregs.i.i.i, align 8
  %add.ptr.i24.i.i = getelementptr i8, ptr %47, i32 68
  %48 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i24.i.i) #6, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !111
  %inc.i = add nuw nsw i32 %i.026.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %for.body.i.if.end_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.if.end_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %for.body.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ast_crtc_helper_atomic_enable(ptr nocapture noundef readonly %crtc, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 8
  %state2 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %2 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state2, align 4
  %vbios_mode_info3 = getelementptr inbounds %struct.ast_crtc_state, ptr %3, i32 0, i32 2
  %enh_table.i = getelementptr inbounds %struct.ast_crtc_state, ptr %3, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %enh_table.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %enh_table.i, align 4
  %refresh_rate_index1.i = getelementptr inbounds %struct.ast_vbios_enhtable, ptr %5, i32 0, i32 11
  %6 = ptrtoint ptr %refresh_rate_index1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %refresh_rate_index1.i, align 4
  %mode_id3.i = getelementptr inbounds %struct.ast_vbios_enhtable, ptr %5, i32 0, i32 12
  %8 = ptrtoint ptr %mode_id3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mode_id3.i, align 4
  %10 = trunc i32 %7 to i16
  %conv1.i.i = shl i16 %10, 8
  %or.i.i = or i16 %conv1.i.i, 141
  %ioregs.i.i.i = getelementptr inbounds %struct.ast_private, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %ioregs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ioregs.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %12, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @arm_heavy_mb() #6
  %13 = tail call i16 @llvm.bswap.i16(i16 %or.i.i) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i, i16 %13) #6, !srcloc !95
  %14 = trunc i32 %9 to i16
  %conv1.i32.i = shl i16 %14, 8
  %or.i34.i = or i16 %conv1.i32.i, 142
  %15 = ptrtoint ptr %ioregs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ioregs.i.i.i, align 8
  %add.ptr.i.i36.i = getelementptr i8, ptr %16, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @arm_heavy_mb() #6
  %17 = tail call i16 @llvm.bswap.i16(i16 %or.i34.i) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i36.i, i16 %17) #6, !srcloc !95
  %18 = ptrtoint ptr %ioregs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ioregs.i.i.i, align 8
  %add.ptr.i.i38.i = getelementptr i8, ptr %19, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i38.i, i16 -28416) #6, !srcloc !95
  %20 = ptrtoint ptr %enh_table.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %enh_table.i, align 4
  %flags.i = getelementptr inbounds %struct.ast_vbios_enhtable, ptr %21, i32 0, i32 9
  %22 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags.i, align 4
  %and7.i = and i32 %23, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool.not.i, label %entry.ast_set_vbios_mode_reg.exit_crit_edge, label %if.then.i

entry.ast_set_vbios_mode_reg.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ast_set_vbios_mode_reg.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %adjusted_mode4 = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7
  %24 = ptrtoint ptr %ioregs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ioregs.i.i.i, align 8
  %add.ptr.i.i40.i = getelementptr i8, ptr %25, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i40.i, i16 -28248) #6, !srcloc !95
  %26 = ptrtoint ptr %adjusted_mode4 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %adjusted_mode4, align 4
  %div.i = sdiv i32 %27, 1000
  %28 = trunc i32 %div.i to i16
  %conv1.i41.i = shl i16 %28, 8
  %or.i43.i = or i16 %conv1.i41.i, 147
  %29 = ptrtoint ptr %ioregs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ioregs.i.i.i, align 8
  %add.ptr.i.i45.i = getelementptr i8, ptr %30, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @arm_heavy_mb() #6
  %31 = tail call i16 @llvm.bswap.i16(i16 %or.i43.i) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i45.i, i16 %31) #6, !srcloc !95
  %crtc_hdisplay.i = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 13
  %32 = ptrtoint ptr %crtc_hdisplay.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %crtc_hdisplay.i, align 4
  %conv1.i46.i = shl i16 %33, 8
  %or.i48.i = or i16 %conv1.i46.i, 148
  %34 = ptrtoint ptr %ioregs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ioregs.i.i.i, align 8
  %add.ptr.i.i50.i = getelementptr i8, ptr %35, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @arm_heavy_mb() #6
  %36 = tail call i16 @llvm.bswap.i16(i16 %or.i48.i) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i50.i, i16 %36) #6, !srcloc !95
  %37 = ptrtoint ptr %crtc_hdisplay.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %crtc_hdisplay.i, align 4
  %39 = and i16 %38, -256
  %or.i53.i = or i16 %39, 149
  %40 = ptrtoint ptr %ioregs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ioregs.i.i.i, align 8
  %add.ptr.i.i55.i = getelementptr i8, ptr %41, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @arm_heavy_mb() #6
  %42 = tail call i16 @llvm.bswap.i16(i16 %or.i53.i) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i55.i, i16 %42) #6, !srcloc !95
  %crtc_vdisplay.i = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 20
  %43 = ptrtoint ptr %crtc_vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %crtc_vdisplay.i, align 2
  %conv1.i56.i = shl i16 %44, 8
  %or.i58.i = or i16 %conv1.i56.i, 150
  %45 = ptrtoint ptr %ioregs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ioregs.i.i.i, align 8
  %add.ptr.i.i60.i = getelementptr i8, ptr %46, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @arm_heavy_mb() #6
  %47 = tail call i16 @llvm.bswap.i16(i16 %or.i58.i) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i60.i, i16 %47) #6, !srcloc !95
  %48 = ptrtoint ptr %crtc_vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %crtc_vdisplay.i, align 2
  %50 = and i16 %49, -256
  %or.i63.i = or i16 %50, 151
  %51 = ptrtoint ptr %ioregs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ioregs.i.i.i, align 8
  %add.ptr.i.i65.i = getelementptr i8, ptr %52, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @arm_heavy_mb() #6
  %53 = tail call i16 @llvm.bswap.i16(i16 %or.i63.i) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i65.i, i16 %53) #6, !srcloc !95
  br label %ast_set_vbios_mode_reg.exit

ast_set_vbios_mode_reg.exit:                      ; preds = %if.then.i, %entry.ast_set_vbios_mode_reg.exit_crit_edge
  %54 = ptrtoint ptr %ioregs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ioregs.i.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %55, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 -24314) #6, !srcloc !95
  %56 = ptrtoint ptr %vbios_mode_info3 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %vbios_mode_info3, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %57, align 1
  %60 = ptrtoint ptr %ioregs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ioregs.i.i.i, align 8
  %add.ptr.i.i23 = getelementptr i8, ptr %61, i32 66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !108
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i23, i8 %59) #6, !srcloc !109
  %62 = ptrtoint ptr %ioregs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ioregs.i.i.i, align 8
  %add.ptr.i.i.i24 = getelementptr i8, ptr %63, i32 68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i24, i16 3) #6, !srcloc !95
  %seq.i = getelementptr inbounds %struct.ast_vbios_stdtable, ptr %57, i32 0, i32 1
  %64 = ptrtoint ptr %seq.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %seq.i, align 1
  tail call void @ast_set_index_reg_mask(ptr noundef %1, i32 noundef 68, i8 noundef zeroext 1, i8 noundef zeroext -33, i8 noundef zeroext %65) #6
  %arrayidx2.i = getelementptr %struct.ast_vbios_stdtable, ptr %57, i32 0, i32 1, i32 1
  %66 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx2.i, align 1
  %conv1.i.i25 = zext i8 %67 to i16
  %shl.i.i = shl nuw i16 %conv1.i.i25, 8
  %or.i.i26 = or i16 %shl.i.i, 2
  %68 = ptrtoint ptr %ioregs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ioregs.i.i.i, align 8
  %add.ptr.i.i2.i = getelementptr i8, ptr %69, i32 68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @arm_heavy_mb() #6
  %70 = tail call i16 @llvm.bswap.i16(i16 %or.i.i26) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i2.i, i16 %70) #6, !srcloc !95
  %arrayidx2.1.i = getelementptr %struct.ast_vbios_stdtable, ptr %57, i32 0, i32 1, i32 2
  %71 = ptrtoint ptr %arrayidx2.1.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx2.1.i, align 1
  %conv1.i.1.i = zext i8 %72 to i16
  %shl.i.1.i = shl nuw i16 %conv1.i.1.i, 8
  %or.i.1.i = or i16 %shl.i.1.i, 3
  %73 = ptrtoint ptr %ioregs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ioregs.i.i.i, align 8
  %add.ptr.i.i2.1.i = getelementptr i8, ptr %74, i32 68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @arm_heavy_mb() #6
  %75 = tail call i16 @llvm.bswap.i16(i16 %or.i.1.i) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i2.1.i, i16 %75) #6, !srcloc !95
  %arrayidx2.2.i = getelementptr %struct.ast_vbios_stdtable, ptr %57, i32 0, i32 1, i32 3
  %76 = ptrtoint ptr %arrayidx2.2.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx2.2.i, align 1
  %conv1.i.2.i = zext i8 %77 to i16
  %shl.i.2.i = shl nuw i16 %conv1.i.2.i, 8
  %or.i.2.i = or i16 %shl.i.2.i, 4
  %78 = ptrtoint ptr %ioregs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ioregs.i.i.i, align 8
  %add.ptr.i.i2.2.i = getelementptr i8, ptr %79, i32 68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @arm_heavy_mb() #6
  %80 = tail call i16 @llvm.bswap.i16(i16 %or.i.2.i) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i2.2.i, i16 %80) #6, !srcloc !95
  tail call void @ast_set_index_reg_mask(ptr noundef %1, i32 noundef 84, i8 noundef zeroext 17, i8 noundef zeroext 127, i8 noundef zeroext 0) #6
  br label %for.body6.i

for.body6.i:                                      ; preds = %for.body6.i.for.body6.i_crit_edge, %ast_set_vbios_mode_reg.exit
  %i.142.i = phi i32 [ 0, %ast_set_vbios_mode_reg.exit ], [ %inc10.i, %for.body6.i.for.body6.i_crit_edge ]
  %arrayidx8.i = getelementptr %struct.ast_vbios_stdtable, ptr %57, i32 0, i32 2, i32 %i.142.i
  %81 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx8.i, align 1
  %conv1.i3.i = zext i8 %82 to i16
  %shl.i4.i = shl nuw i16 %conv1.i3.i, 8
  %83 = trunc i32 %i.142.i to i16
  %conv2.i5.i = and i16 %83, 255
  %or.i6.i = or i16 %shl.i4.i, %conv2.i5.i
  %84 = ptrtoint ptr %ioregs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ioregs.i.i.i, align 8
  %add.ptr.i.i8.i = getelementptr i8, ptr %85, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @arm_heavy_mb() #6
  %86 = tail call i16 @llvm.bswap.i16(i16 %or.i6.i) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i8.i, i16 %86) #6, !srcloc !95
  %inc10.i = add nuw nsw i32 %i.142.i, 1
  %exitcond.not.i = icmp eq i32 %inc10.i, 12
  br i1 %exitcond.not.i, label %for.body15.preheader.i, label %for.body6.i.for.body6.i_crit_edge

for.body6.i.for.body6.i_crit_edge:                ; preds = %for.body6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body6.i

for.body15.preheader.i:                           ; preds = %for.body6.i
  %arrayidx18.i = getelementptr %struct.ast_vbios_stdtable, ptr %57, i32 0, i32 2, i32 14
  %87 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %arrayidx18.i, align 1
  %conv1.i9.i = zext i8 %88 to i16
  %shl.i10.i = shl nuw i16 %conv1.i9.i, 8
  %or.i12.i = or i16 %shl.i10.i, 14
  %89 = ptrtoint ptr %ioregs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ioregs.i.i.i, align 8
  %add.ptr.i.i14.i = getelementptr i8, ptr %90, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @arm_heavy_mb() #6
  %91 = tail call i16 @llvm.bswap.i16(i16 %or.i12.i) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i14.i, i16 %91) #6, !srcloc !95
  %arrayidx18.1.i = getelementptr %struct.ast_vbios_stdtable, ptr %57, i32 0, i32 2, i32 15
  %92 = ptrtoint ptr %arrayidx18.1.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx18.1.i, align 1
  %conv1.i9.1.i = zext i8 %93 to i16
  %shl.i10.1.i = shl nuw i16 %conv1.i9.1.i, 8
  %or.i12.1.i = or i16 %shl.i10.1.i, 15
  %94 = ptrtoint ptr %ioregs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %ioregs.i.i.i, align 8
  %add.ptr.i.i14.1.i = getelementptr i8, ptr %95, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @arm_heavy_mb() #6
  %96 = tail call i16 @llvm.bswap.i16(i16 %or.i12.1.i) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i14.1.i, i16 %96) #6, !srcloc !95
  %arrayidx18.2.i = getelementptr %struct.ast_vbios_stdtable, ptr %57, i32 0, i32 2, i32 16
  %97 = ptrtoint ptr %arrayidx18.2.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx18.2.i, align 1
  %conv1.i9.2.i = zext i8 %98 to i16
  %shl.i10.2.i = shl nuw i16 %conv1.i9.2.i, 8
  %or.i12.2.i = or i16 %shl.i10.2.i, 16
  %99 = ptrtoint ptr %ioregs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %ioregs.i.i.i, align 8
  %add.ptr.i.i14.2.i = getelementptr i8, ptr %100, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @arm_heavy_mb() #6
  %101 = tail call i16 @llvm.bswap.i16(i16 %or.i12.2.i) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i14.2.i, i16 %101) #6, !srcloc !95
  %arrayidx18.3.i = getelementptr %struct.ast_vbios_stdtable, ptr %57, i32 0, i32 2, i32 17
  %102 = ptrtoint ptr %arrayidx18.3.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx18.3.i, align 1
  %conv1.i9.3.i = zext i8 %103 to i16
  %shl.i10.3.i = shl nuw i16 %conv1.i9.3.i, 8
  %or.i12.3.i = or i16 %shl.i10.3.i, 17
  %104 = ptrtoint ptr %ioregs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %ioregs.i.i.i, align 8
  %add.ptr.i.i14.3.i = getelementptr i8, ptr %105, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @arm_heavy_mb() #6
  %106 = tail call i16 @llvm.bswap.i16(i16 %or.i12.3.i) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i14.3.i, i16 %106) #6, !srcloc !95
  %arrayidx18.4.i = getelementptr %struct.ast_vbios_stdtable, ptr %57, i32 0, i32 2, i32 18
  %107 = ptrtoint ptr %arrayidx18.4.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx18.4.i, align 1
  %conv1.i9.4.i = zext i8 %108 to i16
  %shl.i10.4.i = shl nuw i16 %conv1.i9.4.i, 8
  %or.i12.4.i = or i16 %shl.i10.4.i, 18
  %109 = ptrtoint ptr %ioregs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %ioregs.i.i.i, align 8
  %add.ptr.i.i14.4.i = getelementptr i8, ptr %110, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @arm_heavy_mb() #6
  %111 = tail call i16 @llvm.bswap.i16(i16 %or.i12.4.i) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i14.4.i, i16 %111) #6, !srcloc !95
  %arrayidx28.i = getelementptr %struct.ast_vbios_stdtable, ptr %57, i32 0, i32 2, i32 20
  %112 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %arrayidx28.i, align 1
  %conv1.i15.i = zext i8 %113 to i16
  %shl.i16.i = shl nuw i16 %conv1.i15.i, 8
  %or.i18.i = or i16 %shl.i16.i, 20
  %114 = ptrtoint ptr %ioregs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %ioregs.i.i.i, align 8
  %add.ptr.i.i20.i = getelementptr i8, ptr %115, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @arm_heavy_mb() #6
  %116 = tail call i16 @llvm.bswap.i16(i16 %or.i18.i) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i20.i, i16 %116) #6, !srcloc !95
  %arrayidx28.1.i = getelementptr %struct.ast_vbios_stdtable, ptr %57, i32 0, i32 2, i32 21
  %117 = ptrtoint ptr %arrayidx28.1.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %arrayidx28.1.i, align 1
  %conv1.i15.1.i = zext i8 %118 to i16
  %shl.i16.1.i = shl nuw i16 %conv1.i15.1.i, 8
  %or.i18.1.i = or i16 %shl.i16.1.i, 21
  %119 = ptrtoint ptr %ioregs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %ioregs.i.i.i, align 8
  %add.ptr.i.i20.1.i = getelementptr i8, ptr %120, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @arm_heavy_mb() #6
  %121 = tail call i16 @llvm.bswap.i16(i16 %or.i18.1.i) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i20.1.i, i16 %121) #6, !srcloc !95
  %arrayidx28.2.i = getelementptr %struct.ast_vbios_stdtable, ptr %57, i32 0, i32 2, i32 22
  %122 = ptrtoint ptr %arrayidx28.2.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %arrayidx28.2.i, align 1
  %conv1.i15.2.i = zext i8 %123 to i16
  %shl.i16.2.i = shl nuw i16 %conv1.i15.2.i, 8
  %or.i18.2.i = or i16 %shl.i16.2.i, 22
  %124 = ptrtoint ptr %ioregs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %ioregs.i.i.i, align 8
  %add.ptr.i.i20.2.i = getelementptr i8, ptr %125, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @arm_heavy_mb() #6
  %126 = tail call i16 @llvm.bswap.i16(i16 %or.i18.2.i) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i20.2.i, i16 %126) #6, !srcloc !95
  %arrayidx28.3.i = getelementptr %struct.ast_vbios_stdtable, ptr %57, i32 0, i32 2, i32 23
  %127 = ptrtoint ptr %arrayidx28.3.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %arrayidx28.3.i, align 1
  %conv1.i15.3.i = zext i8 %128 to i16
  %shl.i16.3.i = shl nuw i16 %conv1.i15.3.i, 8
  %or.i18.3.i = or i16 %shl.i16.3.i, 23
  %129 = ptrtoint ptr %ioregs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %ioregs.i.i.i, align 8
  %add.ptr.i.i20.3.i = getelementptr i8, ptr %130, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @arm_heavy_mb() #6
  %131 = tail call i16 @llvm.bswap.i16(i16 %or.i18.3.i) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i20.3.i, i16 %131) #6, !srcloc !95
  %arrayidx28.4.i = getelementptr %struct.ast_vbios_stdtable, ptr %57, i32 0, i32 2, i32 24
  %132 = ptrtoint ptr %arrayidx28.4.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %arrayidx28.4.i, align 1
  %conv1.i15.4.i = zext i8 %133 to i16
  %shl.i16.4.i = shl nuw i16 %conv1.i15.4.i, 8
  %or.i18.4.i = or i16 %shl.i16.4.i, 24
  %134 = ptrtoint ptr %ioregs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %ioregs.i.i.i, align 8
  %add.ptr.i.i20.4.i = getelementptr i8, ptr %135, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @arm_heavy_mb() #6
  %136 = tail call i16 @llvm.bswap.i16(i16 %or.i18.4.i) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i20.4.i, i16 %136) #6, !srcloc !95
  %137 = ptrtoint ptr %ioregs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %ioregs.i.i.i, align 8
  %add.ptr.i22.i = getelementptr i8, ptr %138, i32 90
  %139 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i22.i) #6, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !111
  br label %for.body35.i

for.body35.i:                                     ; preds = %for.body35.i.for.body35.i_crit_edge, %for.body15.preheader.i
  %i.445.i = phi i32 [ 0, %for.body15.preheader.i ], [ %inc39.i, %for.body35.i.for.body35.i_crit_edge ]
  %arrayidx36.i = getelementptr %struct.ast_vbios_stdtable, ptr %57, i32 0, i32 3, i32 %i.445.i
  %140 = ptrtoint ptr %arrayidx36.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %arrayidx36.i, align 1
  %conv37.i = trunc i32 %i.445.i to i8
  %142 = ptrtoint ptr %ioregs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %ioregs.i.i.i, align 8
  %add.ptr.i24.i = getelementptr i8, ptr %143, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !108
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i24.i, i8 %conv37.i) #6, !srcloc !109
  %144 = ptrtoint ptr %ioregs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %ioregs.i.i.i, align 8
  %add.ptr.i26.i = getelementptr i8, ptr %145, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !108
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i26.i, i8 %141) #6, !srcloc !109
  %inc39.i = add nuw nsw i32 %i.445.i, 1
  %exitcond49.not.i = icmp eq i32 %inc39.i, 20
  br i1 %exitcond49.not.i, label %ast_set_std_reg.exit, label %for.body35.i.for.body35.i_crit_edge

for.body35.i.for.body35.i_crit_edge:              ; preds = %for.body35.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body35.i

ast_set_std_reg.exit:                             ; preds = %for.body35.i
  %146 = ptrtoint ptr %ioregs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %ioregs.i.i.i, align 8
  %add.ptr.i28.i = getelementptr i8, ptr %147, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !108
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i28.i, i8 20) #6, !srcloc !109
  %148 = ptrtoint ptr %ioregs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %ioregs.i.i.i, align 8
  %add.ptr.i30.i = getelementptr i8, ptr %149, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !108
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i30.i, i8 0) #6, !srcloc !109
  %150 = ptrtoint ptr %ioregs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %ioregs.i.i.i, align 8
  %add.ptr.i32.i = getelementptr i8, ptr %151, i32 90
  %152 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i32.i) #6, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !111
  %153 = ptrtoint ptr %ioregs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %ioregs.i.i.i, align 8
  %add.ptr.i34.i = getelementptr i8, ptr %154, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !108
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i34.i, i8 32) #6, !srcloc !109
  %arrayidx47.i = getelementptr %struct.ast_vbios_stdtable, ptr %57, i32 0, i32 4, i32 0
  %155 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %arrayidx47.i, align 1
  %conv1.i35.i = zext i8 %156 to i16
  %157 = ptrtoint ptr %ioregs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %ioregs.i.i.i, align 8
  %add.ptr.i.i40.i27 = getelementptr i8, ptr %158, i32 78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i40.i27, i16 %conv1.i35.i) #6, !srcloc !95
  %arrayidx47.1.i = getelementptr %struct.ast_vbios_stdtable, ptr %57, i32 0, i32 4, i32 1
  %159 = ptrtoint ptr %arrayidx47.1.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %arrayidx47.1.i, align 1
  %conv1.i35.1.i = zext i8 %160 to i16
  %shl.i36.1.i = shl nuw i16 %conv1.i35.1.i, 8
  %or.i38.1.i = or i16 %shl.i36.1.i, 1
  %161 = ptrtoint ptr %ioregs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %ioregs.i.i.i, align 8
  %add.ptr.i.i40.1.i = getelementptr i8, ptr %162, i32 78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @arm_heavy_mb() #6
  %163 = tail call i16 @llvm.bswap.i16(i16 %or.i38.1.i) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i40.1.i, i16 %163) #6, !srcloc !95
  %arrayidx47.2.i = getelementptr %struct.ast_vbios_stdtable, ptr %57, i32 0, i32 4, i32 2
  %164 = ptrtoint ptr %arrayidx47.2.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %arrayidx47.2.i, align 1
  %conv1.i35.2.i = zext i8 %165 to i16
  %shl.i36.2.i = shl nuw i16 %conv1.i35.2.i, 8
  %or.i38.2.i = or i16 %shl.i36.2.i, 2
  %166 = ptrtoint ptr %ioregs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %ioregs.i.i.i, align 8
  %add.ptr.i.i40.2.i = getelementptr i8, ptr %167, i32 78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @arm_heavy_mb() #6
  %168 = tail call i16 @llvm.bswap.i16(i16 %or.i38.2.i) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i40.2.i, i16 %168) #6, !srcloc !95
  %arrayidx47.3.i = getelementptr %struct.ast_vbios_stdtable, ptr %57, i32 0, i32 4, i32 3
  %169 = ptrtoint ptr %arrayidx47.3.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %arrayidx47.3.i, align 1
  %conv1.i35.3.i = zext i8 %170 to i16
  %shl.i36.3.i = shl nuw i16 %conv1.i35.3.i, 8
  %or.i38.3.i = or i16 %shl.i36.3.i, 3
  %171 = ptrtoint ptr %ioregs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %ioregs.i.i.i, align 8
  %add.ptr.i.i40.3.i = getelementptr i8, ptr %172, i32 78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @arm_heavy_mb() #6
  %173 = tail call i16 @llvm.bswap.i16(i16 %or.i38.3.i) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i40.3.i, i16 %173) #6, !srcloc !95
  %arrayidx47.4.i = getelementptr %struct.ast_vbios_stdtable, ptr %57, i32 0, i32 4, i32 4
  %174 = ptrtoint ptr %arrayidx47.4.i to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %arrayidx47.4.i, align 1
  %conv1.i35.4.i = zext i8 %175 to i16
  %shl.i36.4.i = shl nuw i16 %conv1.i35.4.i, 8
  %or.i38.4.i = or i16 %shl.i36.4.i, 4
  %176 = ptrtoint ptr %ioregs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %ioregs.i.i.i, align 8
  %add.ptr.i.i40.4.i = getelementptr i8, ptr %177, i32 78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @arm_heavy_mb() #6
  %178 = tail call i16 @llvm.bswap.i16(i16 %or.i38.4.i) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i40.4.i, i16 %178) #6, !srcloc !95
  %arrayidx47.5.i = getelementptr %struct.ast_vbios_stdtable, ptr %57, i32 0, i32 4, i32 5
  %179 = ptrtoint ptr %arrayidx47.5.i to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %arrayidx47.5.i, align 1
  %conv1.i35.5.i = zext i8 %180 to i16
  %shl.i36.5.i = shl nuw i16 %conv1.i35.5.i, 8
  %or.i38.5.i = or i16 %shl.i36.5.i, 5
  %181 = ptrtoint ptr %ioregs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %ioregs.i.i.i, align 8
  %add.ptr.i.i40.5.i = getelementptr i8, ptr %182, i32 78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @arm_heavy_mb() #6
  %183 = tail call i16 @llvm.bswap.i16(i16 %or.i38.5.i) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i40.5.i, i16 %183) #6, !srcloc !95
  %arrayidx47.6.i = getelementptr %struct.ast_vbios_stdtable, ptr %57, i32 0, i32 4, i32 6
  %184 = ptrtoint ptr %arrayidx47.6.i to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %arrayidx47.6.i, align 1
  %conv1.i35.6.i = zext i8 %185 to i16
  %shl.i36.6.i = shl nuw i16 %conv1.i35.6.i, 8
  %or.i38.6.i = or i16 %shl.i36.6.i, 6
  %186 = ptrtoint ptr %ioregs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %ioregs.i.i.i, align 8
  %add.ptr.i.i40.6.i = getelementptr i8, ptr %187, i32 78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @arm_heavy_mb() #6
  %188 = tail call i16 @llvm.bswap.i16(i16 %or.i38.6.i) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i40.6.i, i16 %188) #6, !srcloc !95
  %arrayidx47.7.i = getelementptr %struct.ast_vbios_stdtable, ptr %57, i32 0, i32 4, i32 7
  %189 = ptrtoint ptr %arrayidx47.7.i to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %arrayidx47.7.i, align 1
  %conv1.i35.7.i = zext i8 %190 to i16
  %shl.i36.7.i = shl nuw i16 %conv1.i35.7.i, 8
  %or.i38.7.i = or i16 %shl.i36.7.i, 7
  %191 = ptrtoint ptr %ioregs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %ioregs.i.i.i, align 8
  %add.ptr.i.i40.7.i = getelementptr i8, ptr %192, i32 78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @arm_heavy_mb() #6
  %193 = tail call i16 @llvm.bswap.i16(i16 %or.i38.7.i) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i40.7.i, i16 %193) #6, !srcloc !95
  %arrayidx47.8.i = getelementptr %struct.ast_vbios_stdtable, ptr %57, i32 0, i32 4, i32 8
  %194 = ptrtoint ptr %arrayidx47.8.i to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %arrayidx47.8.i, align 1
  %conv1.i35.8.i = zext i8 %195 to i16
  %shl.i36.8.i = shl nuw i16 %conv1.i35.8.i, 8
  %or.i38.8.i = or i16 %shl.i36.8.i, 8
  %196 = ptrtoint ptr %ioregs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %ioregs.i.i.i, align 8
  %add.ptr.i.i40.8.i = getelementptr i8, ptr %197, i32 78
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @arm_heavy_mb() #6
  %198 = tail call i16 @llvm.bswap.i16(i16 %or.i38.8.i) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i40.8.i, i16 %198) #6, !srcloc !95
  %chip.i = getelementptr inbounds %struct.ast_private, ptr %1, i32 0, i32 4
  %199 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %chip.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %200)
  %cmp.i = icmp eq i32 %200, 7
  br i1 %cmp.i, label %land.lhs.true.i, label %ast_set_std_reg.exit.ast_set_crtc_reg.exit_crit_edge

ast_set_std_reg.exit.ast_set_crtc_reg.exit_crit_edge: ; preds = %ast_set_std_reg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %ast_set_crtc_reg.exit

land.lhs.true.i:                                  ; preds = %ast_set_std_reg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %201 = ptrtoint ptr %enh_table.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %enh_table.i, align 4
  %flags.i29 = getelementptr inbounds %struct.ast_vbios_enhtable, ptr %202, i32 0, i32 9
  %203 = ptrtoint ptr %flags.i29 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %flags.i29, align 4
  %and.i = and i32 %204, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i30 = icmp eq i32 %and.i, 0
  %spec.select337.i = select i1 %tobool.not.i30, i16 0, i16 40
  %205 = lshr exact i32 %and.i, 7
  %206 = trunc i32 %205 to i8
  br label %ast_set_crtc_reg.exit

ast_set_crtc_reg.exit:                            ; preds = %land.lhs.true.i, %ast_set_std_reg.exit.ast_set_crtc_reg.exit_crit_edge
  %tobool245.not.i = phi i8 [ 0, %ast_set_std_reg.exit.ast_set_crtc_reg.exit_crit_edge ], [ %206, %land.lhs.true.i ]
  %precache.0.i = phi i16 [ 0, %ast_set_std_reg.exit.ast_set_crtc_reg.exit_crit_edge ], [ %spec.select337.i, %land.lhs.true.i ]
  tail call void @ast_set_index_reg_mask(ptr noundef %1, i32 noundef 84, i8 noundef zeroext 17, i8 noundef zeroext 127, i8 noundef zeroext 0) #6
  %crtc_htotal.i = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 18
  %207 = ptrtoint ptr %crtc_htotal.i to i32
  call void @__asan_load2_noabort(i32 %207)
  %208 = load i16, ptr %crtc_htotal.i, align 2
  %209 = lshr i16 %208, 3
  %sub.i = add nsw i16 %209, -5
  %210 = lshr i16 %sub.i, 8
  %211 = trunc i16 %210 to i8
  %212 = and i8 %211, 1
  %conv9.i = trunc i16 %sub.i to i8
  tail call void @ast_set_index_reg_mask(ptr noundef %1, i32 noundef 84, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext %conv9.i) #6
  %crtc_hdisplay.i31 = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 13
  %213 = ptrtoint ptr %crtc_hdisplay.i31 to i32
  call void @__asan_load2_noabort(i32 %213)
  %214 = load i16, ptr %crtc_hdisplay.i31, align 4
  %215 = lshr i16 %214, 3
  %sub12.i = add nsw i16 %215, -1
  %216 = lshr i16 %sub12.i, 6
  %217 = trunc i16 %216 to i8
  %218 = and i8 %217, 4
  %219 = or i8 %218, %212
  %conv22.i = trunc i16 %sub12.i to i8
  tail call void @ast_set_index_reg_mask(ptr noundef %1, i32 noundef 84, i8 noundef zeroext 1, i8 noundef zeroext 0, i8 noundef zeroext %conv22.i) #6
  %crtc_hblank_start.i = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 14
  %220 = ptrtoint ptr %crtc_hblank_start.i to i32
  call void @__asan_load2_noabort(i32 %220)
  %221 = load i16, ptr %crtc_hblank_start.i, align 2
  %222 = lshr i16 %221, 3
  %sub25.i = add nsw i16 %222, -1
  %223 = lshr i16 %sub25.i, 4
  %224 = trunc i16 %223 to i8
  %225 = and i8 %224, 16
  %226 = or i8 %219, %225
  %conv35.i = trunc i16 %sub25.i to i8
  tail call void @ast_set_index_reg_mask(ptr noundef %1, i32 noundef 84, i8 noundef zeroext 2, i8 noundef zeroext 0, i8 noundef zeroext %conv35.i) #6
  %crtc_hblank_end.i = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 15
  %227 = ptrtoint ptr %crtc_hblank_end.i to i32
  call void @__asan_load2_noabort(i32 %227)
  %228 = load i16, ptr %crtc_hblank_end.i, align 4
  %229 = lshr i16 %228, 3
  %narrow.i = add nuw nsw i16 %229, 127
  %and42.i = shl nuw i16 %narrow.i, 2
  %230 = and i16 %and42.i, 128
  %231 = trunc i16 %narrow.i to i8
  %232 = lshr i8 %231, 6
  %233 = and i8 %232, 1
  %conv59.i = and i8 %231, 31
  tail call void @ast_set_index_reg_mask(ptr noundef %1, i32 noundef 84, i8 noundef zeroext 3, i8 noundef zeroext -32, i8 noundef zeroext %conv59.i) #6
  %crtc_hsync_start.i = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 16
  %234 = ptrtoint ptr %crtc_hsync_start.i to i32
  call void @__asan_load2_noabort(i32 %234)
  %235 = load i16, ptr %crtc_hsync_start.i, align 2
  %conv60.i = zext i16 %235 to i32
  %conv61.i = zext i16 %precache.0.i to i32
  %sub62.i = sub nsw i32 %conv60.i, %conv61.i
  %shr63.i = ashr i32 %sub62.i, 3
  %236 = trunc i32 %shr63.i to i16
  %conv65.i = add nsw i16 %236, -1
  %237 = lshr i16 %conv65.i, 2
  %238 = trunc i16 %237 to i8
  %239 = and i8 %238, 64
  %240 = or i8 %226, %239
  %conv74.i = trunc i16 %conv65.i to i8
  tail call void @ast_set_index_reg_mask(ptr noundef %1, i32 noundef 84, i8 noundef zeroext 4, i8 noundef zeroext 0, i8 noundef zeroext %conv74.i) #6
  %crtc_hsync_end.i = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 17
  %241 = ptrtoint ptr %crtc_hsync_end.i to i32
  call void @__asan_load2_noabort(i32 %241)
  %242 = load i16, ptr %crtc_hsync_end.i, align 4
  %sub77.i = sub i16 %242, %precache.0.i
  %243 = lshr i16 %sub77.i, 3
  %244 = add nuw nsw i16 %243, 63
  %245 = trunc i16 %244 to i8
  %246 = lshr i8 %245, 3
  %247 = and i8 %246, 4
  %248 = or i8 %247, %233
  %and91.i = and i16 %244, 31
  %or93.i = or i16 %and91.i, %230
  %conv94.i = trunc i16 %or93.i to i8
  tail call void @ast_set_index_reg_mask(ptr noundef %1, i32 noundef 84, i8 noundef zeroext 5, i8 noundef zeroext 96, i8 noundef zeroext %conv94.i) #6
  tail call void @ast_set_index_reg_mask(ptr noundef %1, i32 noundef 84, i8 noundef zeroext -84, i8 noundef zeroext 0, i8 noundef zeroext %240) #6
  tail call void @ast_set_index_reg_mask(ptr noundef %1, i32 noundef 84, i8 noundef zeroext -83, i8 noundef zeroext 0, i8 noundef zeroext %248) #6
  %crtc_vtotal.i = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 25
  %249 = ptrtoint ptr %crtc_vtotal.i to i32
  call void @__asan_load2_noabort(i32 %249)
  %250 = load i16, ptr %crtc_vtotal.i, align 4
  %sub96.i = add i16 %250, -2
  %and99.i = lshr i16 %sub96.i, 8
  %251 = trunc i16 %and99.i to i8
  %252 = and i8 %251, 1
  %and107.i = lshr i16 %sub96.i, 4
  %253 = trunc i16 %and107.i to i8
  %254 = and i8 %253, 32
  %255 = or i8 %254, %252
  %256 = lshr i16 %sub96.i, 10
  %257 = trunc i16 %256 to i8
  %258 = and i8 %257, 1
  %conv122.i = trunc i16 %sub96.i to i8
  tail call void @ast_set_index_reg_mask(ptr noundef %1, i32 noundef 84, i8 noundef zeroext 6, i8 noundef zeroext 0, i8 noundef zeroext %conv122.i) #6
  %crtc_vsync_start.i = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 23
  %259 = ptrtoint ptr %crtc_vsync_start.i to i32
  call void @__asan_load2_noabort(i32 %259)
  %260 = load i16, ptr %crtc_vsync_start.i, align 4
  %sub124.i = add i16 %260, -1
  %and127.i = lshr i16 %sub124.i, 6
  %261 = trunc i16 %and127.i to i8
  %262 = and i8 %261, 4
  %263 = or i8 %255, %262
  %and135.i = lshr i16 %sub124.i, 2
  %264 = trunc i16 %and135.i to i8
  %265 = and i8 %264, -128
  %266 = or i8 %263, %265
  %267 = lshr i16 %sub124.i, 7
  %268 = trunc i16 %267 to i8
  %269 = and i8 %268, 8
  %conv150.i = trunc i16 %sub124.i to i8
  tail call void @ast_set_index_reg_mask(ptr noundef %1, i32 noundef 84, i8 noundef zeroext 16, i8 noundef zeroext 0, i8 noundef zeroext %conv150.i) #6
  %crtc_vsync_end.i = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 24
  %270 = ptrtoint ptr %crtc_vsync_end.i to i32
  call void @__asan_load2_noabort(i32 %270)
  %271 = load i16, ptr %crtc_vsync_end.i, align 2
  %272 = trunc i16 %271 to i8
  %273 = add i8 %272, 63
  %274 = shl i8 %273, 1
  %275 = and i8 %274, 32
  %276 = and i8 %274, 64
  %conv173.i = and i8 %273, 15
  tail call void @ast_set_index_reg_mask(ptr noundef %1, i32 noundef 84, i8 noundef zeroext 17, i8 noundef zeroext 112, i8 noundef zeroext %conv173.i) #6
  %crtc_vdisplay.i32 = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 20
  %277 = ptrtoint ptr %crtc_vdisplay.i32 to i32
  call void @__asan_load2_noabort(i32 %277)
  %278 = load i16, ptr %crtc_vdisplay.i32, align 2
  %sub175.i = add i16 %278, -1
  %and178.i = lshr i16 %sub175.i, 7
  %279 = trunc i16 %and178.i to i8
  %280 = and i8 %279, 2
  %281 = or i8 %266, %280
  %and186.i = lshr i16 %sub175.i, 3
  %282 = trunc i16 %and186.i to i8
  %283 = and i8 %282, 64
  %284 = or i8 %281, %283
  %285 = lshr i16 %sub175.i, 9
  %286 = trunc i16 %285 to i8
  %287 = and i8 %286, 2
  %conv201.i = trunc i16 %sub175.i to i8
  tail call void @ast_set_index_reg_mask(ptr noundef %1, i32 noundef 84, i8 noundef zeroext 18, i8 noundef zeroext 0, i8 noundef zeroext %conv201.i) #6
  %crtc_vblank_start.i = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 21
  %288 = ptrtoint ptr %crtc_vblank_start.i to i32
  call void @__asan_load2_noabort(i32 %288)
  %289 = load i16, ptr %crtc_vblank_start.i, align 4
  %sub203.i = add i16 %289, -1
  %and206.i = lshr i16 %sub203.i, 5
  %290 = trunc i16 %and206.i to i8
  %291 = and i8 %290, 8
  %292 = or i8 %284, %291
  %and214.i = lshr i16 %sub203.i, 4
  %293 = trunc i16 %and214.i to i8
  %294 = and i8 %293, 32
  %295 = lshr i16 %sub203.i, 8
  %296 = trunc i16 %295 to i8
  %297 = and i8 %296, 4
  %conv229.i = trunc i16 %sub203.i to i8
  tail call void @ast_set_index_reg_mask(ptr noundef %1, i32 noundef 84, i8 noundef zeroext 21, i8 noundef zeroext 0, i8 noundef zeroext %conv229.i) #6
  %crtc_vblank_end.i = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 7, i32 22
  %298 = ptrtoint ptr %crtc_vblank_end.i to i32
  call void @__asan_load2_noabort(i32 %298)
  %299 = load i16, ptr %crtc_vblank_end.i, align 2
  %sub231.i = add i16 %299, -1
  %300 = lshr i16 %sub231.i, 4
  %301 = trunc i16 %300 to i8
  %302 = and i8 %301, 16
  %conv241.i = trunc i16 %sub231.i to i8
  tail call void @ast_set_index_reg_mask(ptr noundef %1, i32 noundef 84, i8 noundef zeroext 22, i8 noundef zeroext 0, i8 noundef zeroext %conv241.i) #6
  tail call void @ast_set_index_reg_mask(ptr noundef %1, i32 noundef 84, i8 noundef zeroext 7, i8 noundef zeroext 0, i8 noundef zeroext %292) #6
  tail call void @ast_set_index_reg_mask(ptr noundef %1, i32 noundef 84, i8 noundef zeroext 9, i8 noundef zeroext -33, i8 noundef zeroext %294) #6
  %303 = or i8 %258, %269
  %304 = or i8 %303, %275
  %305 = or i8 %304, %276
  %306 = or i8 %305, %287
  %307 = or i8 %306, %297
  %308 = or i8 %307, %302
  %309 = or i8 %308, -128
  tail call void @ast_set_index_reg_mask(ptr noundef %1, i32 noundef 84, i8 noundef zeroext -82, i8 noundef zeroext 0, i8 noundef zeroext %309) #6
  tail call void @ast_set_index_reg_mask(ptr noundef %1, i32 noundef 84, i8 noundef zeroext -74, i8 noundef zeroext 63, i8 noundef zeroext %tobool245.not.i) #6
  tail call void @ast_set_index_reg_mask(ptr noundef %1, i32 noundef 84, i8 noundef zeroext 17, i8 noundef zeroext 127, i8 noundef zeroext -128) #6
  %310 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load i32, ptr %chip.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %311)
  %cmp.i34 = icmp eq i32 %311, 7
  %312 = ptrtoint ptr %enh_table.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %enh_table.i, align 4
  %dclk_index.i = getelementptr inbounds %struct.ast_vbios_enhtable, ptr %313, i32 0, i32 8
  %314 = ptrtoint ptr %dclk_index.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %dclk_index.i, align 4
  %dclk_table_ast2500.dclk_table.i = select i1 %cmp.i34, ptr @dclk_table_ast2500, ptr @dclk_table
  %arrayidx3.i = getelementptr [27 x %struct.ast_vbios_dclk_info], ptr %dclk_table_ast2500.dclk_table.i, i32 0, i32 %315
  %316 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %316)
  %317 = load i8, ptr %arrayidx3.i, align 1
  tail call void @ast_set_index_reg_mask(ptr noundef %1, i32 noundef 84, i8 noundef zeroext -64, i8 noundef zeroext 0, i8 noundef zeroext %317) #6
  %param2.i = getelementptr [27 x %struct.ast_vbios_dclk_info], ptr %dclk_table_ast2500.dclk_table.i, i32 0, i32 %315, i32 1
  %318 = ptrtoint ptr %param2.i to i32
  call void @__asan_load1_noabort(i32 %318)
  %319 = load i8, ptr %param2.i, align 1
  tail call void @ast_set_index_reg_mask(ptr noundef %1, i32 noundef 84, i8 noundef zeroext -63, i8 noundef zeroext 0, i8 noundef zeroext %319) #6
  %param3.i = getelementptr [27 x %struct.ast_vbios_dclk_info], ptr %dclk_table_ast2500.dclk_table.i, i32 0, i32 %315, i32 2
  %320 = ptrtoint ptr %param3.i to i32
  call void @__asan_load1_noabort(i32 %320)
  %321 = load i8, ptr %param3.i, align 1
  %and.i36 = and i8 %321, -64
  %and6.i = shl i8 %321, 4
  %shl.i = and i8 %and6.i, 48
  %or.i = or i8 %shl.i, %and.i36
  tail call void @ast_set_index_reg_mask(ptr noundef %1, i32 noundef 84, i8 noundef zeroext -69, i8 noundef zeroext 15, i8 noundef zeroext %or.i) #6
  %322 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %chip.i, align 8
  %324 = zext i32 %323 to i64
  call void @__sanitizer_cov_trace_switch(i64 %324, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %323, label %if.else18.i [
    i32 5, label %ast_set_crtc_reg.exit.if.then.i40_crit_edge
    i32 6, label %ast_set_crtc_reg.exit.if.then.i40_crit_edge47
    i32 7, label %ast_set_crtc_reg.exit.if.then.i40_crit_edge48
    i32 1, label %ast_set_crtc_reg.exit.if.then17.i_crit_edge
    i32 2, label %ast_set_crtc_reg.exit.if.then17.i_crit_edge49
    i32 3, label %ast_set_crtc_reg.exit.if.then17.i_crit_edge50
    i32 4, label %ast_set_crtc_reg.exit.if.then17.i_crit_edge51
  ]

ast_set_crtc_reg.exit.if.then17.i_crit_edge51:    ; preds = %ast_set_crtc_reg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then17.i

ast_set_crtc_reg.exit.if.then17.i_crit_edge50:    ; preds = %ast_set_crtc_reg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then17.i

ast_set_crtc_reg.exit.if.then17.i_crit_edge49:    ; preds = %ast_set_crtc_reg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then17.i

ast_set_crtc_reg.exit.if.then17.i_crit_edge:      ; preds = %ast_set_crtc_reg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then17.i

ast_set_crtc_reg.exit.if.then.i40_crit_edge48:    ; preds = %ast_set_crtc_reg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i40

ast_set_crtc_reg.exit.if.then.i40_crit_edge47:    ; preds = %ast_set_crtc_reg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i40

ast_set_crtc_reg.exit.if.then.i40_crit_edge:      ; preds = %ast_set_crtc_reg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i40

if.then.i40:                                      ; preds = %ast_set_crtc_reg.exit.if.then.i40_crit_edge, %ast_set_crtc_reg.exit.if.then.i40_crit_edge47, %ast_set_crtc_reg.exit.if.then.i40_crit_edge48
  %325 = ptrtoint ptr %ioregs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %ioregs.i.i.i, align 8
  %add.ptr.i.i.i39 = getelementptr i8, ptr %326, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i39, i16 -22664) #6, !srcloc !95
  %327 = ptrtoint ptr %ioregs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %ioregs.i.i.i, align 8
  %add.ptr.i.i33.i = getelementptr i8, ptr %328, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i33.i, i16 -22944) #6, !srcloc !95
  br label %ast_set_crtthd_reg.exit

if.then17.i:                                      ; preds = %ast_set_crtc_reg.exit.if.then17.i_crit_edge, %ast_set_crtc_reg.exit.if.then17.i_crit_edge49, %ast_set_crtc_reg.exit.if.then17.i_crit_edge50, %ast_set_crtc_reg.exit.if.then17.i_crit_edge51
  %329 = ptrtoint ptr %ioregs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %ioregs.i.i.i, align 8
  %add.ptr.i.i35.i = getelementptr i8, ptr %330, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i35.i, i16 -22721) #6, !srcloc !95
  %331 = ptrtoint ptr %ioregs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load ptr, ptr %ioregs.i.i.i, align 8
  %add.ptr.i.i37.i = getelementptr i8, ptr %332, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i37.i, i16 -22993) #6, !srcloc !95
  br label %ast_set_crtthd_reg.exit

if.else18.i:                                      ; preds = %ast_set_crtc_reg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %333 = ptrtoint ptr %ioregs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %ioregs.i.i.i, align 8
  %add.ptr.i.i39.i = getelementptr i8, ptr %334, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i39.i, i16 -22737) #6, !srcloc !95
  %335 = ptrtoint ptr %ioregs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %ioregs.i.i.i, align 8
  %add.ptr.i.i41.i = getelementptr i8, ptr %336, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i41.i, i16 -23009) #6, !srcloc !95
  br label %ast_set_crtthd_reg.exit

ast_set_crtthd_reg.exit:                          ; preds = %if.else18.i, %if.then17.i, %if.then.i40
  %337 = ptrtoint ptr %ioregs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %ioregs.i.i.i, align 8
  %add.ptr.i.i42 = getelementptr i8, ptr %338, i32 76
  %339 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i42) #6, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !111
  %340 = and i8 %339, 63
  %341 = ptrtoint ptr %enh_table.i to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %enh_table.i, align 4
  %flags.i44 = getelementptr inbounds %struct.ast_vbios_enhtable, ptr %342, i32 0, i32 9
  %343 = ptrtoint ptr %flags.i44 to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %flags.i44, align 4
  %and2.i = lshr i32 %344, 5
  %345 = trunc i32 %and2.i to i8
  %346 = and i8 %345, -128
  %347 = or i8 %346, %340
  %and7.i45 = lshr i32 %344, 4
  %348 = trunc i32 %and7.i45 to i8
  %349 = and i8 %348, 64
  %350 = or i8 %347, %349
  %351 = ptrtoint ptr %ioregs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %ioregs.i.i.i, align 8
  %add.ptr.i2.i = getelementptr i8, ptr %352, i32 66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !108
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i2.i, i8 %350) #6, !srcloc !109
  %353 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %crtc, align 8
  %tx_chip_type.i = getelementptr inbounds %struct.ast_private, ptr %354, i32 0, i32 16
  %355 = ptrtoint ptr %tx_chip_type.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load i32, ptr %tx_chip_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %356)
  %cmp.i46 = icmp eq i32 %356, 3
  br i1 %cmp.i46, label %sw.epilog.sink.split.i, label %ast_set_crtthd_reg.exit.ast_crtc_dpms.exit_crit_edge

ast_set_crtthd_reg.exit.ast_crtc_dpms.exit_crit_edge: ; preds = %ast_set_crtthd_reg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %ast_crtc_dpms.exit

sw.epilog.sink.split.i:                           ; preds = %ast_set_crtthd_reg.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ast_set_dp501_video_output(ptr noundef %354, i8 noundef zeroext 1) #6
  br label %ast_crtc_dpms.exit

ast_crtc_dpms.exit:                               ; preds = %sw.epilog.sink.split.i, %ast_set_crtthd_reg.exit.ast_crtc_dpms.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ast_crtc_helper_atomic_disable(ptr nocapture noundef readonly %crtc, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %crtcs.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  %0 = ptrtoint ptr %crtcs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtcs.i, align 4
  %index.i.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 8
  %2 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index.i.i, align 4
  %old_state.i = getelementptr %struct.__drm_crtcs_state, ptr %1, i32 %3, i32 2
  %4 = ptrtoint ptr %old_state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %old_state.i, align 8
  %6 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %crtc, align 8
  %tx_chip_type3.i = getelementptr inbounds %struct.ast_private, ptr %7, i32 0, i32 16
  %8 = ptrtoint ptr %tx_chip_type3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx_chip_type3.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp4.i = icmp eq i32 %9, 3
  br i1 %cmp4.i, label %sw.epilog.sink.split.i, label %entry.ast_crtc_dpms.exit_crit_edge

entry.ast_crtc_dpms.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ast_crtc_dpms.exit

sw.epilog.sink.split.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ast_set_dp501_video_output(ptr noundef %7, i8 noundef zeroext 0) #6
  br label %ast_crtc_dpms.exit

ast_crtc_dpms.exit:                               ; preds = %sw.epilog.sink.split.i, %entry.ast_crtc_dpms.exit_crit_edge
  tail call void @drm_atomic_helper_disable_planes_on_crtc(ptr noundef %5, i1 noundef zeroext false) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %ioregs.i.i = getelementptr inbounds %struct.ast_private, ptr %7, i32 0, i32 2
  %add.neg.i = sub i32 -100, %10
  br label %do.body.i

do.body.i:                                        ; preds = %land.rhs.i.do.body.i_crit_edge, %ast_crtc_dpms.exit
  %11 = ptrtoint ptr %ioregs.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ioregs.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 90
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i.i) #6, !srcloc !110
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !111
  %14 = and i8 %13, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %do.body.i.ast_wait_for_vretrace.exit_crit_edge

do.body.i.ast_wait_for_vretrace.exit_crit_edge:   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ast_wait_for_vretrace.exit

land.rhs.i:                                       ; preds = %do.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %add.neg.i, %15
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %land.rhs.i.do.body.i_crit_edge, label %land.rhs.i.ast_wait_for_vretrace.exit_crit_edge

land.rhs.i.ast_wait_for_vretrace.exit_crit_edge:  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ast_wait_for_vretrace.exit

land.rhs.i.do.body.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

ast_wait_for_vretrace.exit:                       ; preds = %land.rhs.i.ast_wait_for_vretrace.exit_crit_edge, %do.body.i.ast_wait_for_vretrace.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ast_set_dp501_video_output(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_disable_planes_on_crtc(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_simple_encoder_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ast_i2c_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init_with_ddc(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_reset(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_cleanup(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_connector_duplicate_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_destroy_state(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ast_get_modes(ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %tx_chip_type = getelementptr inbounds %struct.ast_private, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %tx_chip_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_chip_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp eq i32 %3, 3
  br i1 %cmp, label %if.then, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

if.then:                                          ; preds = %entry
  %dp501_maxclk = getelementptr inbounds %struct.ast_private, ptr %1, i32 0, i32 17
  %4 = ptrtoint ptr %dp501_maxclk to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %dp501_maxclk, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3264, i32 noundef 128) #10
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  %6 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %connector, align 8
  %call5 = tail call zeroext i1 @ast_dp501_read_edid(ptr noundef %7, ptr noundef nonnull %call7.i) #6
  br i1 %call5, label %if.end18.thread, label %if.else

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef nonnull %call7.i) #6
  br label %land.lhs.true

if.end18.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %connector, align 8
  %call9 = tail call zeroext i8 @ast_get_dp501_max_clk(ptr noundef %9) #6
  %10 = ptrtoint ptr %dp501_maxclk to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %call9, ptr %dp501_maxclk, align 4
  br label %if.then20

land.lhs.true:                                    ; preds = %if.else, %entry.land.lhs.true_crit_edge
  %edid.0.ph = phi ptr [ null, %entry.land.lhs.true_crit_edge ], [ %call7.i, %if.else ]
  %i2c = getelementptr inbounds %struct.ast_connector, ptr %connector, i32 0, i32 1
  %11 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i2c, align 8
  %tobool14.not = icmp eq ptr %12, null
  br i1 %tobool14.not, label %land.lhs.true.if.end18_crit_edge, label %if.then15

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then15:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %call17 = tail call ptr @drm_get_edid(ptr noundef %connector, ptr noundef nonnull %12) #6
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %land.lhs.true.if.end18_crit_edge
  %edid.1 = phi ptr [ %call17, %if.then15 ], [ %edid.0.ph, %land.lhs.true.if.end18_crit_edge ]
  %tobool19.not = icmp eq ptr %edid.1, null
  br i1 %tobool19.not, label %if.end23, label %if.end18.if.then20_crit_edge

if.end18.if.then20_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20

if.then20:                                        ; preds = %if.end18.if.then20_crit_edge, %if.end18.thread
  %edid.152 = phi ptr [ %call7.i, %if.end18.thread ], [ %edid.1, %if.end18.if.then20_crit_edge ]
  %call21 = tail call i32 @drm_connector_update_edid_property(ptr noundef %connector, ptr noundef nonnull %edid.152) #6
  %call22 = tail call i32 @drm_add_edid_modes(ptr noundef %connector, ptr noundef nonnull %edid.152) #6
  tail call void @kfree(ptr noundef nonnull %edid.152) #6
  br label %cleanup

if.end23:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %call25 = tail call i32 @drm_connector_update_edid_property(ptr noundef %connector, ptr noundef null) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then20, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call22, %if.then20 ], [ 0, %if.end23 ], [ -12, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ast_mode_valid(ptr nocapture noundef readonly %connector, ptr nocapture noundef readonly %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %support_wide_screen = getelementptr inbounds %struct.ast_private, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %support_wide_screen to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %support_wide_screen, align 8, !range !93
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end95_crit_edge, label %if.then

entry.if.end95_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end95

if.then:                                          ; preds = %entry
  %hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 1
  %4 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %hdisplay, align 4
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.16)
  switch i16 %5, label %if.then.if.end49_crit_edge [
    i16 1680, label %land.lhs.true
    i16 1280, label %land.lhs.true10
    i16 1440, label %land.lhs.true21
    i16 1360, label %land.lhs.true32
    i16 1600, label %land.lhs.true43
  ]

if.then.if.end49_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

land.lhs.true:                                    ; preds = %if.then
  %vdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 6
  %7 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %vdisplay, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1050, i16 %8)
  %cmp3 = icmp eq i16 %8, 1050
  br i1 %cmp3, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end49_crit_edge

land.lhs.true.if.end49_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true10:                                  ; preds = %if.then
  %vdisplay11 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 6
  %9 = ptrtoint ptr %vdisplay11 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %vdisplay11, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 800, i16 %10)
  %cmp13 = icmp eq i16 %10, 800
  br i1 %cmp13, label %land.lhs.true10.cleanup_crit_edge, label %land.lhs.true10.if.end49_crit_edge

land.lhs.true10.if.end49_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

land.lhs.true10.cleanup_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true21:                                  ; preds = %if.then
  %vdisplay22 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 6
  %11 = ptrtoint ptr %vdisplay22 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %vdisplay22, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 900, i16 %12)
  %cmp24 = icmp eq i16 %12, 900
  br i1 %cmp24, label %land.lhs.true21.cleanup_crit_edge, label %land.lhs.true21.if.end49_crit_edge

land.lhs.true21.if.end49_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

land.lhs.true21.cleanup_crit_edge:                ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true32:                                  ; preds = %if.then
  %vdisplay33 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 6
  %13 = ptrtoint ptr %vdisplay33 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %vdisplay33, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 768, i16 %14)
  %cmp35 = icmp eq i16 %14, 768
  br i1 %cmp35, label %land.lhs.true32.cleanup_crit_edge, label %land.lhs.true32.if.end49_crit_edge

land.lhs.true32.if.end49_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

land.lhs.true32.cleanup_crit_edge:                ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true43:                                  ; preds = %if.then
  %vdisplay44 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 6
  %15 = ptrtoint ptr %vdisplay44 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %vdisplay44, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 900, i16 %16)
  %cmp46 = icmp eq i16 %16, 900
  br i1 %cmp46, label %land.lhs.true43.cleanup_crit_edge, label %land.lhs.true43.if.end49_crit_edge

land.lhs.true43.if.end49_crit_edge:               ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

land.lhs.true43.cleanup_crit_edge:                ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end49:                                         ; preds = %land.lhs.true43.if.end49_crit_edge, %land.lhs.true32.if.end49_crit_edge, %land.lhs.true21.if.end49_crit_edge, %land.lhs.true10.if.end49_crit_edge, %land.lhs.true.if.end49_crit_edge, %if.then.if.end49_crit_edge
  %chip = getelementptr inbounds %struct.ast_private, ptr %1, i32 0, i32 4
  %17 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %chip, align 8
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %18, label %if.end49.if.end95_crit_edge [
    i32 1, label %if.end49.if.then67_crit_edge
    i32 3, label %if.end49.if.then67_crit_edge173
    i32 5, label %if.end49.if.then67_crit_edge174
    i32 6, label %if.end49.if.then67_crit_edge175
    i32 7, label %if.end49.if.then67_crit_edge176
  ]

if.end49.if.then67_crit_edge176:                  ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then67

if.end49.if.then67_crit_edge175:                  ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then67

if.end49.if.then67_crit_edge174:                  ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then67

if.end49.if.then67_crit_edge173:                  ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then67

if.end49.if.then67_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then67

if.end49.if.end95_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end95

if.then67:                                        ; preds = %if.end49.if.then67_crit_edge, %if.end49.if.then67_crit_edge173, %if.end49.if.then67_crit_edge174, %if.end49.if.then67_crit_edge175, %if.end49.if.then67_crit_edge176
  call void @__sanitizer_cov_trace_const_cmp2(i16 1920, i16 %5)
  %cmp70 = icmp eq i16 %5, 1920
  br i1 %cmp70, label %land.lhs.true72, label %if.then67.if.end95_crit_edge

if.then67.if.end95_crit_edge:                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end95

land.lhs.true72:                                  ; preds = %if.then67
  %vdisplay73 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 6
  %20 = ptrtoint ptr %vdisplay73 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %vdisplay73, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1080, i16 %21)
  %cmp75 = icmp eq i16 %21, 1080
  br i1 %cmp75, label %land.lhs.true72.cleanup_crit_edge, label %land.lhs.true83

land.lhs.true72.cleanup_crit_edge:                ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true83:                                  ; preds = %land.lhs.true72
  %22 = ptrtoint ptr %vdisplay73 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %vdisplay73, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1200, i16 %23)
  %cmp86 = icmp eq i16 %23, 1200
  br i1 %cmp86, label %if.then88, label %land.lhs.true83.if.end95_crit_edge

land.lhs.true83.if.end95_crit_edge:               ; preds = %land.lhs.true83
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end95

if.then88:                                        ; preds = %land.lhs.true83
  call void @__sanitizer_cov_trace_pc() #8
  %call89 = tail call zeroext i8 @ast_get_index_reg_mask(ptr noundef %1, i32 noundef 84, i8 noundef zeroext -47, i8 noundef zeroext -1) #6
  %24 = and i8 %call89, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool91.not = icmp eq i8 %24, 0
  %. = select i1 %tobool91.not, i32 0, i32 6
  br label %cleanup

if.end95:                                         ; preds = %land.lhs.true83.if.end95_crit_edge, %if.then67.if.end95_crit_edge, %if.end49.if.end95_crit_edge, %entry.if.end95_crit_edge
  %hdisplay96 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 1
  %25 = ptrtoint ptr %hdisplay96 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %hdisplay96, align 4
  %27 = zext i16 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.18)
  switch i16 %26, label %if.end95.cleanup_crit_edge [
    i16 640, label %sw.bb
    i16 800, label %sw.bb104
    i16 1024, label %sw.bb111
    i16 1280, label %sw.bb118
    i16 1600, label %sw.bb125
  ]

if.end95.cleanup_crit_edge:                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #8
  %vdisplay98 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 6
  %28 = ptrtoint ptr %vdisplay98 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %vdisplay98, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 480, i16 %29)
  %cmp100 = icmp eq i16 %29, 480
  %spec.select = select i1 %cmp100, i32 0, i32 6
  br label %cleanup

sw.bb104:                                         ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #8
  %vdisplay105 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 6
  %30 = ptrtoint ptr %vdisplay105 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %vdisplay105, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 600, i16 %31)
  %cmp107 = icmp eq i16 %31, 600
  %spec.select160 = select i1 %cmp107, i32 0, i32 6
  br label %cleanup

sw.bb111:                                         ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #8
  %vdisplay112 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 6
  %32 = ptrtoint ptr %vdisplay112 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %vdisplay112, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 768, i16 %33)
  %cmp114 = icmp eq i16 %33, 768
  %spec.select161 = select i1 %cmp114, i32 0, i32 6
  br label %cleanup

sw.bb118:                                         ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #8
  %vdisplay119 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 6
  %34 = ptrtoint ptr %vdisplay119 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %vdisplay119, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %35)
  %cmp121 = icmp eq i16 %35, 1024
  %spec.select162 = select i1 %cmp121, i32 0, i32 6
  br label %cleanup

sw.bb125:                                         ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #8
  %vdisplay126 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 6
  %36 = ptrtoint ptr %vdisplay126 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %vdisplay126, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1200, i16 %37)
  %cmp128 = icmp eq i16 %37, 1200
  %spec.select163 = select i1 %cmp128, i32 0, i32 6
  br label %cleanup

cleanup:                                          ; preds = %sw.bb125, %sw.bb118, %sw.bb111, %sw.bb104, %sw.bb, %if.end95.cleanup_crit_edge, %if.then88, %land.lhs.true72.cleanup_crit_edge, %land.lhs.true43.cleanup_crit_edge, %land.lhs.true32.cleanup_crit_edge, %land.lhs.true21.cleanup_crit_edge, %land.lhs.true10.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %land.lhs.true10.cleanup_crit_edge ], [ 0, %land.lhs.true21.cleanup_crit_edge ], [ 0, %land.lhs.true32.cleanup_crit_edge ], [ 0, %land.lhs.true43.cleanup_crit_edge ], [ 0, %land.lhs.true72.cleanup_crit_edge ], [ %., %if.then88 ], [ 6, %if.end95.cleanup_crit_edge ], [ %spec.select, %sw.bb ], [ %spec.select160, %sw.bb104 ], [ %spec.select161, %sw.bb111 ], [ %spec.select162, %sw.bb118 ], [ %spec.select163, %sw.bb125 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ast_dp501_read_edid(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @ast_get_dp501_max_clk(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_get_edid(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_update_edid_property(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_add_edid_modes(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @ast_get_index_reg_mask(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !16, !18, !20, !21, !22, !24, !25, !26, !27, !29, !31, !33, !35, !37, !39, !41, !43, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !77, !78, !79, !81}
!llvm.module.flags = !{!83, !84, !85, !86, !87, !88, !89, !90}
!llvm.ident = !{!91}

!0 = !{ptr @ast_mode_config_funcs, !1, !"ast_mode_config_funcs", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/ast/ast_mode.c", i32 1356, i32 43}
!2 = !{ptr @ast_mode_config_helper_funcs, !3, !"ast_mode_config_helper_funcs", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/ast/ast_mode.c", i32 1352, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/ast/ast_mode.c", i32 641, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @ast_primary_plane_init._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @ast_primary_plane_init._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @ast_primary_plane_funcs, !13, !"ast_primary_plane_funcs", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/ast/ast_mode.c", i32 620, i32 37}
!14 = !{ptr @ast_primary_plane_formats, !15, !"ast_primary_plane_formats", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/ast/ast_mode.c", i32 531, i32 23}
!16 = !{ptr @ast_primary_plane_helper_funcs, !17, !"ast_primary_plane_helper_funcs", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/ast/ast_mode.c", i32 613, i32 44}
!18 = distinct !{null, !19, !"__already_done", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/ast/ast_mode.c", i32 595, i32 6}
!20 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/ast/ast_mode.c", i32 958, i32 3}
!24 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @ast_cursor_plane_init._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @ast_cursor_plane_init._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @ast_cursor_plane_funcs, !28, !"ast_cursor_plane_funcs", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/ast/ast_mode.c", i32 899, i32 37}
!29 = !{ptr @ast_cursor_plane_formats, !30, !"ast_cursor_plane_formats", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/ast/ast_mode.c", i32 757, i32 23}
!31 = !{ptr @ast_cursor_plane_helper_funcs, !32, !"ast_cursor_plane_helper_funcs", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/ast/ast_mode.c", i32 874, i32 44}
!33 = distinct !{null, !34, !"mask", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/ast/ast_mode.c", i32 746, i32 18}
!35 = !{ptr @ast_crtc_funcs, !36, !"ast_crtc_funcs", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/ast/ast_mode.c", i32 1159, i32 36}
!37 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/ast/ast_mode.c", i32 1133, i32 6}
!39 = !{ptr @ast_crtc_helper_funcs, !40, !"ast_crtc_helper_funcs", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/ast/ast_mode.c", i32 1106, i32 43}
!41 = distinct !{null, !42, !"__already_done", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/ast/ast_mode.c", i32 1021, i32 6}
!43 = !{ptr @.str.10, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @vbios_stdtable, !45, !"vbios_stdtable", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/ast/ast_tables.h", i32 142, i32 40}
!46 = !{ptr @res_640x480, !47, !"res_640x480", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/ast/ast_tables.h", i32 215, i32 40}
!48 = !{ptr @res_800x600, !49, !"res_800x600", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/ast/ast_tables.h", i32 228, i32 40}
!50 = !{ptr @res_1024x768, !51, !"res_1024x768", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/ast/ast_tables.h", i32 244, i32 40}
!52 = !{ptr @res_1280x800, !53, !"res_1280x800", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/ast/ast_tables.h", i32 305, i32 40}
!54 = !{ptr @res_1280x1024, !55, !"res_1280x1024", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/ast/ast_tables.h", i32 257, i32 40}
!56 = !{ptr @res_1360x768, !57, !"res_1360x768", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/ast/ast_tables.h", i32 276, i32 40}
!58 = !{ptr @res_1440x900, !59, !"res_1440x900", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/ast/ast_tables.h", i32 316, i32 40}
!60 = !{ptr @res_1600x900, !61, !"res_1600x900", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/ast/ast_tables.h", i32 284, i32 40}
!62 = !{ptr @res_1600x1200, !63, !"res_1600x1200", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/ast/ast_tables.h", i32 268, i32 40}
!64 = !{ptr @res_1680x1050, !65, !"res_1680x1050", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/ast/ast_tables.h", i32 326, i32 40}
!66 = !{ptr @res_1920x1080, !67, !"res_1920x1080", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/ast/ast_tables.h", i32 294, i32 40}
!68 = !{ptr @res_1920x1200, !69, !"res_1920x1200", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/ast/ast_tables.h", i32 336, i32 40}
!70 = !{ptr @dclk_table_ast2500, !71, !"dclk_table_ast2500", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/ast/ast_tables.h", i32 112, i32 41}
!72 = !{ptr @dclk_table, !73, !"dclk_table", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/ast/ast_tables.h", i32 82, i32 41}
!74 = !{ptr @.str.11, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/ast/ast_mode.c", i32 1325, i32 3}
!76 = !{ptr @.str.12, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @ast_connector_init._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @ast_connector_init._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @ast_connector_funcs, !80, !"ast_connector_funcs", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/ast/ast_mode.c", i32 1308, i32 41}
!81 = !{ptr @ast_connector_helper_funcs, !82, !"ast_connector_helper_funcs", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/ast/ast_mode.c", i32 1303, i32 48}
!83 = !{i32 1, !"wchar_size", i32 2}
!84 = !{i32 1, !"min_enum_size", i32 4}
!85 = !{i32 8, !"branch-target-enforcement", i32 0}
!86 = !{i32 8, !"sign-return-address", i32 0}
!87 = !{i32 8, !"sign-return-address-all", i32 0}
!88 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!89 = !{i32 7, !"uwtable", i32 1}
!90 = !{i32 7, !"frame-pointer", i32 2}
!91 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!92 = !{!"auto-init"}
!93 = !{i8 0, i8 2}
!94 = !{i64 2152560004}
!95 = !{i64 5017812}
!96 = !{!"branch_weights", i32 2000, i32 1}
!97 = !{i64 2157277207}
!98 = !{i64 5018432}
!99 = !{i64 2157277598}
!100 = !{i64 2157278032}
!101 = !{i64 2157278410}
!102 = !{i64 2157278799}
!103 = !{i64 2157279186}
!104 = !{i64 2157279558}
!105 = !{i64 2157281017}
!106 = !{i64 2157281453}
!107 = !{!"branch_weights", i32 1, i32 2000}
!108 = !{i64 2152559580}
!109 = !{i64 5018235}
!110 = !{i64 5018630}
!111 = !{i64 2152557975}
