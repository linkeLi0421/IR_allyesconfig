; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/rockchip/rockchip_drm_vop.c_pt.bc'
source_filename = "../drivers/gpu/drm/rockchip/rockchip_drm_vop.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+rockchip_drm_wait_vact_end\22, \22a\22\09"
module asm "\09.weak\09__crc_rockchip_drm_wait_vact_end\09\09\09\09"
module asm "\09.long\09__crc_rockchip_drm_wait_vact_end\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rockchip_drm_wait_vact_end:\09\09\09\09\09"
module asm "\09.asciz \09\22rockchip_drm_wait_vact_end\22\09\09\09\09\09"
module asm "__kstrtabns_rockchip_drm_wait_vact_end:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+vop_component_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_vop_component_ops\09\09\09\09"
module asm "\09.long\09__crc_vop_component_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_vop_component_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22vop_component_ops\22\09\09\09\09\09"
module asm "__kstrtabns_vop_component_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.component_ops = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.drm_plane_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.vop = type { %struct.drm_crtc, ptr, ptr, i8, %struct.completion, i32, ptr, %struct.drm_flip_work, i32, %struct.completion, ptr, ptr, ptr, ptr, i32, %struct.spinlock, %struct.spinlock, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, [0 x %struct.vop_win] }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.list_head = type { ptr, ptr }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_flip_work = type { ptr, ptr, %struct.work_struct, %struct.list_head, %struct.list_head, %struct.spinlock }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.vop_win = type { %struct.drm_plane, ptr, ptr, ptr }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.vop_data = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64 }
%struct.vop_intr = type { ptr, i32, [2 x %struct.vop_reg], %struct.vop_reg, %struct.vop_reg, %struct.vop_reg }
%struct.vop_reg = type { i32, i16, i8, i8, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.vop_win_data = type { i32, ptr, i32 }
%struct.vop_win_yuv2yuv_data = type { i32, ptr, %struct.vop_reg }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.vop_win_phy = type { ptr, ptr, i32, ptr, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.89, ptr, i32, ptr, i8, i32 }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.89 = type { i32, ptr }
%struct.vop_common = type { %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_planes_state = type { ptr, ptr, ptr, ptr }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.83, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.83 = type { [4 x i8] }
%struct.rockchip_gem_object = type { %struct.drm_gem_object, i32, ptr, i32, i32, %struct.drm_mm_node, i32, ptr, ptr, i32 }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.vop_afbc = type { %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg }
%struct.vop_scl_regs = type { ptr, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg }
%struct.vop_scl_extension = type { %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.87 }
%union.anon.87 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_property_blob = type { %struct.drm_mode_object, ptr, %struct.list_head, %struct.list_head, i32, ptr }
%struct.rockchip_crtc_state = type { %struct.drm_crtc_state, i32, i32, i32, i32, i8 }
%struct.vop_output = type { %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg }
%struct.vop_modeset = type { %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg, %struct.vop_reg }
%struct.drm_color_lut = type { i16, i16, i16, i16 }

@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"*ERROR* Timeout waiting for IRQ\0A\00", [63 x i8] zeroinitializer }, align 32
@__kstrtab_rockchip_drm_wait_vact_end = external dso_local constant [0 x i8], align 1
@__kstrtabns_rockchip_drm_wait_vact_end = external dso_local constant [0 x i8], align 1
@__ksymtab_rockchip_drm_wait_vact_end = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rockchip_drm_wait_vact_end to i32), ptr @__kstrtab_rockchip_drm_wait_vact_end, ptr @__kstrtabns_rockchip_drm_wait_vact_end }, section "___ksymtab+rockchip_drm_wait_vact_end", align 4
@vop_component_ops = dso_local constant { %struct.component_ops, [24 x i8] } { %struct.component_ops { ptr @vop_bind, ptr @vop_unbind }, [24 x i8] zeroinitializer }, align 32
@__kstrtab_vop_component_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_vop_component_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_vop_component_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @vop_component_ops to i32), ptr @__kstrtab_vop_component_ops, ptr @__kstrtabns_vop_component_ops }, section "___ksymtab_gpl+vop_component_ops", align 4
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/gpu/drm/rockchip/rockchip_drm_vop.c\00", [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"clear\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Warning: not support %s\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"*ERROR* no gamma LUT size defined\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"*ERROR* cannot find irq for vop\0A\00", [63 x i8] zeroinitializer }, align 32
@vop_bind.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&vop->reg_lock\00", [17 x i8] zeroinitializer }, align 32
@vop_bind.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&vop->irq_lock\00", [17 x i8] zeroinitializer }, align 32
@vop_bind.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&vop->vop_lock\00", [17 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"*ERROR* cannot initial vop dev - err %d\0A\00", [55 x i8] zeroinitializer }, align 32
@vop_plane_funcs = internal constant { %struct.drm_plane_funcs, [44 x i8] } { %struct.drm_plane_funcs { ptr @drm_atomic_helper_update_plane, ptr @drm_atomic_helper_disable_plane, ptr @vop_plane_destroy, ptr @drm_atomic_helper_plane_reset, ptr null, ptr @drm_atomic_helper_plane_duplicate_state, ptr @drm_atomic_helper_plane_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rockchip_mod_supported }, [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"*ERROR* failed to init plane %d\0A\00", [63 x i8] zeroinitializer }, align 32
@plane_helper_funcs = internal constant { %struct.drm_plane_helper_funcs, [36 x i8] } { %struct.drm_plane_helper_funcs { ptr null, ptr null, ptr @vop_plane_atomic_check, ptr @vop_plane_atomic_update, ptr @vop_plane_atomic_disable, ptr @vop_plane_atomic_async_check, ptr @vop_plane_atomic_async_update }, [36 x i8] zeroinitializer }, align 32
@vop_crtc_funcs = internal constant { %struct.drm_crtc_funcs, [32 x i8] } { %struct.drm_crtc_funcs { ptr @vop_crtc_reset, ptr null, ptr null, ptr null, ptr null, ptr @vop_crtc_destroy, ptr @drm_atomic_helper_set_config, ptr @drm_atomic_helper_page_flip, ptr null, ptr null, ptr @vop_crtc_duplicate_state, ptr @vop_crtc_destroy_state, ptr null, ptr null, ptr null, ptr null, ptr @vop_crtc_set_crc_source, ptr @vop_crtc_verify_crc_source, ptr null, ptr null, ptr null, ptr @vop_crtc_enable_vblank, ptr @vop_crtc_disable_vblank, ptr null }, [32 x i8] zeroinitializer }, align 32
@vop_crtc_helper_funcs = internal constant { %struct.drm_crtc_helper_funcs, [32 x i8] } { %struct.drm_crtc_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr @vop_crtc_mode_fixup, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @vop_crtc_atomic_check, ptr @vop_crtc_atomic_begin, ptr @vop_crtc_atomic_flush, ptr @vop_crtc_atomic_enable, ptr @vop_crtc_atomic_disable, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"*ERROR* failed to init overlay %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"port\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"*ERROR* no port node found in %pOF\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fb_unref\00", [23 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Failed to init %s with SR helpers %d, ignoring\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Unsupported format modifier 0x%llx\0A\00", [60 x i8] zeroinitializer }, align 32
@vop_convert_afbc_format.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@vop_convert_afbc_format._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 307, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014[drm] unsupported AFBC format[%08x]\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"vop_convert_afbc_format\00", [40 x i8] zeroinitializer }, align 32
@vop_convert_afbc_format._entry_ptr = internal global ptr @vop_convert_afbc_format._entry, section ".printk_index", align 4
@.str.23 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Invalid Source: Yuv format not support odd xpos\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Invalid Source: Yuv format does not support this rotation\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"vop does not support AFBC\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"AFBC does not support offset display, xpos=%d, ypos=%d, offset=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"No rotation support in AFBC, rotation=%d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unsupported format[%08x]\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"format\00", [25 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hreg_block_split\00", [47 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"win_sel\00", [24 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hdr_ptr\00", [24 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pic_size\00", [23 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"yrgb_vir\00", [23 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"yrgb_mst\00", [23 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"y2r_en\00", [25 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"y_mir_en\00", [23 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"x_mir_en\00", [23 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"uv_vir\00", [25 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"uv_mst\00", [25 x i8] zeroinitializer }, align 32
@bt601_yuv2rgb = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 1192, i32 0, i32 1634, i32 1192, i32 7791, i32 7359, i32 1192, i32 2066, i32 0, i32 3281256, i32 554959, i32 3060007], [48 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"y2r_coefficients[i]\00", [44 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"act_info\00", [23 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dsp_info\00", [23 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dsp_st\00", [25 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rb_swap\00", [24 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dst_alpha_ctl\00", [18 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"src_alpha_ctl\00", [18 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"alpha_pre_mul\00", [18 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"alpha_mode\00", [21 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"alpha_en\00", [23 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"*ERROR* Maximum dst width (3840) exceeded\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"scale_yrgb_x\00", [19 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"scale_yrgb_y\00", [19 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"scale_cbcr_x\00", [19 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"scale_cbcr_y\00", [19 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"lb_mode\00", [24 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"*ERROR* not allow yrgb ver scale\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vsd_yrgb_gt4\00", [19 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vsd_yrgb_gt2\00", [19 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"yrgb_hor_scl_mode\00", [46 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"yrgb_ver_scl_mode\00", [46 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"yrgb_hsd_mode\00", [18 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"yrgb_vsd_mode\00", [18 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"yrgb_vsu_mode\00", [18 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vsd_cbcr_gt4\00", [19 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vsd_cbcr_gt2\00", [19 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cbcr_hor_scl_mode\00", [46 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cbcr_ver_scl_mode\00", [46 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cbcr_hsd_mode\00", [18 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cbcr_vsd_mode\00", [18 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cbcr_vsu_mode\00", [18 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"cfg_done\00", [23 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.74 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"auto\00", [27 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Invalid LUT size; got %d, expected %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Cannot get plane state for plane %s\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Invalid number of AFBC planes; got %d, expected at most 1\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dsp_lut_en\00", [21 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"*ERROR* display LUT RAM enable timeout!\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"*ERROR* VOP vblank IRQ stuck for 10 ms\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"*ERROR* Failed to enable vop (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pin_pol\00", [24 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mipi_dual_channel_en\00", [43 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rgb_dclk_pol\00", [19 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rgb_pin_pol\00", [20 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rgb_en\00", [25 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"edp_dclk_pol\00", [19 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"edp_pin_pol\00", [20 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"edp_en\00", [25 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hdmi_dclk_pol\00", [18 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hdmi_pin_pol\00", [19 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hdmi_en\00", [24 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mipi_dclk_pol\00", [18 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mipi_pin_pol\00", [19 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mipi_en\00", [24 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dp_dclk_pol\00", [20 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dp_pin_pol\00", [21 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dp_en\00", [26 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"*ERROR* unsupported connector_type [%d]\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pre_dither_down\00", [16 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dither_down_sel\00", [16 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dither_down_mode\00", [47 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dither_down_en\00", [17 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"out_mode\00", [23 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"htotal_pw\00", [22 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hact_st_end\00", [20 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hpost_st_end\00", [19 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vtotal_pw\00", [22 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vact_st_end\00", [20 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vpost_st_end\00", [19 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"line_flag_num[0]\00", [47 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"standby\00", [24 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"*ERROR* failed to get pm runtime: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"*ERROR* failed to attach dma mapping, %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: timed out waiting for DSP hold\00", [61 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.116 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hclk_vop\00", [23 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"*ERROR* failed to get hclk source\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"aclk_vop\00", [23 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"*ERROR* failed to get aclk source\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dclk_vop\00", [23 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"*ERROR* failed to get dclk source\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"*ERROR* failed to prepare dclk\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"*ERROR* failed to prepare/enable hclk\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"*ERROR* failed to prepare/enable aclk\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ahb\00", [28 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"*ERROR* failed to get ahb reset\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"global_regdone_en\00", [46 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dsp_blank\00", [22 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"channel\00", [24 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gate\00", [27 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dclk\00", [27 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"*ERROR* failed to get dclk reset\0A\00", [62 x i8] zeroinitializer }, align 32
@vop_isr._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.134, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.vop_isr = private unnamed_addr constant [8 x i8] c"vop_isr\00", align 1
@.str.135 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"*ERROR* couldn't enable clocks\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"*ERROR* Unknown VOP IRQs: %#02x\0A\00", [63 x i8] zeroinitializer }, align 32
@system_unbound_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.137 = internal global [4 x i64] [i64 2, i64 64, i64 0, i64 576460752303423569]
@__sancov_gen_cov_switch_values.138 = internal global [10 x i64] [i64 8, i64 32, i64 875708993, i64 875709016, i64 875710274, i64 875710290, i64 875713089, i64 875713112, i64 909199170, i64 909199186]
@__sancov_gen_cov_switch_values.139 = internal global [10 x i64] [i64 8, i64 32, i64 875708993, i64 875709016, i64 875710274, i64 875710290, i64 875713089, i64 875713112, i64 909199170, i64 909199186]
@__sancov_gen_cov_switch_values.140 = internal global [13 x i64] [i64 11, i64 32, i64 842094158, i64 875708993, i64 875709016, i64 875710274, i64 875710290, i64 875713089, i64 875713112, i64 875714126, i64 909199170, i64 909199186, i64 909203022]
@__sancov_gen_cov_switch_values.141 = internal global [13 x i64] [i64 11, i64 32, i64 842094158, i64 875708993, i64 875709016, i64 875710274, i64 875710290, i64 875713089, i64 875713112, i64 875714126, i64 909199170, i64 909199186, i64 909203022]
@__sancov_gen_cov_switch_values.142 = internal global [10 x i64] [i64 8, i64 32, i64 875708993, i64 875709016, i64 875710274, i64 875710290, i64 875713089, i64 875713112, i64 909199170, i64 909199186]
@__sancov_gen_cov_switch_values.143 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.144 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.145 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 2]
@__sancov_gen_cov_switch_values.146 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 2]
@__sancov_gen_cov_switch_values.147 = internal global [6 x i64] [i64 4, i64 32, i64 875708993, i64 875709016, i64 875710274, i64 909199170]
@__sancov_gen_cov_switch_values.148 = internal global [7 x i64] [i64 5, i64 32, i64 7, i64 10, i64 11, i64 14, i64 16]
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 2083, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant [18 x i8] c"vop_component_ops\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 2201, i32 28 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 521, i32 6 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 526, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 527, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 210, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 2129, i32 4 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 2143, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 2148, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 2149, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 2150, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 2160, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant [16 x i8] c"vop_plane_funcs\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1117, i32 37 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1797, i32 4 }
@___asan_gen_.203 = private unnamed_addr constant [19 x i8] c"plane_helper_funcs\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1109, i32 44 }
@___asan_gen_.206 = private unnamed_addr constant [15 x i8] c"vop_crtc_funcs\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1648, i32 36 }
@___asan_gen_.209 = private unnamed_addr constant [22 x i8] c"vop_crtc_helper_funcs\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1537, i32 43 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1842, i32 4 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1850, i32 44 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1852, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1858, i32 42 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1867, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 775, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 307, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 825, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 830, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 838, i32 4 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 847, i32 4 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 854, i32 4 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 286, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 954, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 955, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 956, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 957, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 958, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 962, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 963, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 964, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 965, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 967, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 982, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 983, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant [14 x i8] c"bt601_yuv2rgb\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 116, i32 23 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 986, i32 4 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 998, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 999, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1000, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1003, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1013, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1020, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1022, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1023, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1024, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 367, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 372, i32 3 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 374, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 377, i32 4 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 379, i32 4 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 402, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 405, i32 4 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 426, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 427, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 429, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 430, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 431, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 432, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 433, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 442, i32 3 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 443, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 444, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 445, i32 3 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 446, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 447, i32 3 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 448, i32 3 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 249, i32 2 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1612, i32 41 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1451, i32 4 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1461, i32 4 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1471, i32 3 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1236, i32 2 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1247, i32 3 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1429, i32 3 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1323, i32 3 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1330, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1331, i32 2 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1335, i32 3 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1336, i32 3 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1337, i32 3 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1340, i32 3 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1341, i32 3 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1342, i32 3 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1345, i32 3 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1346, i32 3 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1347, i32 3 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1350, i32 3 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1351, i32 3 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1352, i32 3 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1357, i32 3 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1358, i32 3 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1359, i32 3 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1362, i32 3 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1374, i32 3 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1379, i32 3 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1380, i32 3 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1381, i32 3 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1386, i32 2 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1388, i32 2 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1391, i32 2 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1392, i32 2 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1394, i32 2 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1397, i32 2 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1398, i32 2 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1400, i32 2 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1404, i32 2 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 593, i32 3 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 613, i32 3 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 731, i32 3 }
@___asan_gen_.518 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.522 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.522, i32 87, i32 2 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1917, i32 37 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1919, i32 3 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1922, i32 37 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1924, i32 3 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1927, i32 37 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1929, i32 3 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1941, i32 3 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1948, i32 3 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1954, i32 3 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1961, i32 45 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1963, i32 3 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1977, i32 2 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1978, i32 2 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1985, i32 3 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1987, i32 3 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1995, i32 51 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1997, i32 3 }
@___asan_gen_.575 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1702, i32 3 }
@___asan_gen_.584 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.585 = private constant [47 x i8] c"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c\00", align 1
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.585, i32 1744, i32 3 }
@llvm.compiler.used = appending global [149 x ptr] [ptr @__ksymtab_rockchip_drm_wait_vact_end, ptr @__ksymtab_vop_component_ops, ptr @vop_convert_afbc_format._entry, ptr @vop_convert_afbc_format._entry_ptr, ptr @.str, ptr @.str.1, ptr @vop_component_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @vop_bind.__key, ptr @.str.8, ptr @vop_bind.__key.9, ptr @.str.10, ptr @vop_bind.__key.11, ptr @.str.12, ptr @.str.13, ptr @vop_plane_funcs, ptr @.str.14, ptr @plane_helper_funcs, ptr @vop_crtc_funcs, ptr @vop_crtc_helper_funcs, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @bt601_yuv2rgb, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @init_completion.__key, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @vop_isr._rs, ptr @.str.134, ptr @.str.135, ptr @.str.136], section "llvm.metadata"
@0 = internal global [146 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vop_component_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vop_bind.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vop_bind.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vop_bind.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vop_plane_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plane_helper_funcs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vop_crtc_funcs to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vop_crtc_helper_funcs to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vop_convert_afbc_format._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bt601_yuv2rgb to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vop_isr._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rockchip_drm_wait_vact_end(ptr noundef %crtc, i32 noundef %mstimeout) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %crtc, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %is_enabled = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 3
  %0 = ptrtoint ptr %is_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_enabled, align 8, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %vop_lock = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %vop_lock, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mstimeout)
  %cmp = icmp eq i32 %mstimeout, 0
  br i1 %cmp, label %if.end.out_crit_edge, label %if.end3

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end3:                                          ; preds = %if.end
  %irq_lock.i = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 16
  %call2.i25 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock.i) #8
  %data.i = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 10
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 8
  %intr.i = getelementptr inbounds %struct.vop_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %intr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %intr.i, align 4
  %enable.i = getelementptr inbounds %struct.vop_intr, ptr %5, i32 0, i32 3
  %offset.i.i.i = getelementptr inbounds %struct.vop_intr, ptr %5, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %offset.i.i.i, align 4
  %conv.i.i.i = zext i16 %7 to i32
  %regs.i.i.i.i = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 12
  %8 = ptrtoint ptr %regs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i.i.i.i, align 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %9, i32 %conv.i.i.i
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #8, !srcloc !302
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !303
  %shift.i.i.i = getelementptr inbounds %struct.vop_intr, ptr %5, i32 0, i32 3, i32 2
  %12 = ptrtoint ptr %shift.i.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %shift.i.i.i, align 2
  %conv1.i.i.i = zext i8 %13 to i32
  %shr.i.i.i = lshr i32 %11, %conv1.i.i.i
  %14 = ptrtoint ptr %enable.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %enable.i, align 4
  %and.i.i.i = and i32 %shr.i.i.i, %15
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 8
  %intr.i.i = getelementptr inbounds %struct.vop_data, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %intr.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %intr.i.i, align 4
  %nintrs.i.i = getelementptr inbounds %struct.vop_intr, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %nintrs.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nintrs.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp17.not.i.i = icmp eq i32 %21, 0
  br i1 %cmp17.not.i.i, label %vop_line_flag_irq_is_enabled.exit.thread, label %for.body.lr.ph.i.i

vop_line_flag_irq_is_enabled.exit.thread:         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock.i, i32 noundef %call2.i25) #8
  br label %if.end5

for.body.lr.ph.i.i:                               ; preds = %if.end3
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %19, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %ret.020.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %ret.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %i.018.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i32, ptr %23, i32 %i.018.i.i
  %24 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %25, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %land.lhs.true.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %shl.i.i = shl nuw i32 1, %i.018.i.i
  %and3.i.i = and i32 %and.i.i.i, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool4.not.i.i = icmp eq i32 %and3.i.i, 0
  %or.i.i = select i1 %tobool4.not.i.i, i32 0, i32 %25
  %spec.select.i.i = or i32 %or.i.i, %ret.020.i.i
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %ret.1.i.i = phi i32 [ %ret.020.i.i, %for.body.i.i.for.inc.i.i_crit_edge ], [ %spec.select.i.i, %land.lhs.true.i.i ]
  %inc.i.i = add nuw i32 %i.018.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %21
  br i1 %exitcond.not.i.i, label %vop_line_flag_irq_is_enabled.exit, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

vop_line_flag_irq_is_enabled.exit:                ; preds = %for.inc.i.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock.i, i32 noundef %call2.i25) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i.i)
  %tobool.i.not = icmp eq i32 %ret.1.i.i, 0
  br i1 %tobool.i.not, label %vop_line_flag_irq_is_enabled.exit.if.end5_crit_edge, label %vop_line_flag_irq_is_enabled.exit.out_crit_edge

vop_line_flag_irq_is_enabled.exit.out_crit_edge:  ; preds = %vop_line_flag_irq_is_enabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

vop_line_flag_irq_is_enabled.exit.if.end5_crit_edge: ; preds = %vop_line_flag_irq_is_enabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.end5:                                          ; preds = %vop_line_flag_irq_is_enabled.exit.if.end5_crit_edge, %vop_line_flag_irq_is_enabled.exit.thread
  %line_flag_completion = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 9
  %26 = ptrtoint ptr %line_flag_completion to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %line_flag_completion, align 4
  %27 = ptrtoint ptr %is_enabled to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %is_enabled, align 8, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i = icmp eq i8 %28, 0
  br i1 %tobool.not.i, label %do.end.i, label %do.body25.i, !prof !304

do.end.i:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 521, i32 noundef 9, ptr noundef null) #8
  br label %if.else.i

do.body25.i:                                      ; preds = %if.end5
  %call27.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock.i) #8
  %29 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data.i, align 8
  %intr.i28 = getelementptr inbounds %struct.vop_data, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %intr.i28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %intr.i28, align 4
  %nintrs.i = getelementptr inbounds %struct.vop_intr, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %nintrs.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %nintrs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp33101.not.i = icmp eq i32 %34, 0
  br i1 %cmp33101.not.i, label %do.body25.i.for.end.i_crit_edge, label %for.body.lr.ph.i

do.body25.i.for.end.i_crit_edge:                  ; preds = %do.body25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %do.body25.i
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %32, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %mask.0104.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %mask.1.i, %for.body.i.for.body.i_crit_edge ]
  %reg.0103.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %reg.1.i, %for.body.i.for.body.i_crit_edge ]
  %i.0102.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %36, i32 %i.0102.i
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %38, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool37.not.i = icmp eq i32 %and.i, 0
  %shl.i = shl nuw i32 1, %i.0102.i
  %or.i = select i1 %tobool37.not.i, i32 0, i32 %shl.i
  %reg.1.i = or i32 %or.i, %reg.0103.i
  %mask.1.i = or i32 %or.i, %mask.0104.i
  %inc.i = add nuw i32 %i.0102.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %34
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %do.body25.i.for.end.i_crit_edge
  %reg.0.lcssa.i = phi i32 [ 0, %do.body25.i.for.end.i_crit_edge ], [ %reg.1.i, %for.body.i.for.end.i_crit_edge ]
  %mask.0.lcssa.i = phi i32 [ 0, %do.body25.i.for.end.i_crit_edge ], [ %mask.1.i, %for.body.i.for.end.i_crit_edge ]
  %clear.i = getelementptr inbounds %struct.vop_intr, ptr %32, i32 0, i32 4
  tail call fastcc void @vop_reg_set(ptr noundef nonnull %crtc, ptr noundef %clear.i, i32 noundef 0, i32 noundef %mask.0.lcssa.i, i32 noundef %reg.0.lcssa.i, ptr noundef nonnull @.str.3) #8
  %39 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data.i, align 8
  %intr52.i = getelementptr inbounds %struct.vop_data, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %intr52.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %intr52.i, align 4
  %nintrs53.i = getelementptr inbounds %struct.vop_intr, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %nintrs53.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %nintrs53.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp54107.not.i = icmp eq i32 %44, 0
  br i1 %cmp54107.not.i, label %for.end.i.for.end71.i_crit_edge, label %for.body56.lr.ph.i

for.end.i.for.end71.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end71.i

for.body56.lr.ph.i:                               ; preds = %for.end.i
  %45 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %42, align 4
  br label %for.body56.i

for.body56.i:                                     ; preds = %for.body56.i.for.body56.i_crit_edge, %for.body56.lr.ph.i
  %mask49.0110.i = phi i32 [ 0, %for.body56.lr.ph.i ], [ %mask49.1.i, %for.body56.i.for.body56.i_crit_edge ]
  %reg48.0109.i = phi i32 [ 0, %for.body56.lr.ph.i ], [ %reg48.1.i, %for.body56.i.for.body56.i_crit_edge ]
  %i47.0108.i = phi i32 [ 0, %for.body56.lr.ph.i ], [ %inc70.i, %for.body56.i.for.body56.i_crit_edge ]
  %arrayidx60.i = getelementptr i32, ptr %46, i32 %i47.0108.i
  %47 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx60.i, align 4
  %and61.i = and i32 %48, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61.i)
  %tobool62.not.i = icmp eq i32 %and61.i, 0
  %shl64.i = shl nuw i32 1, %i47.0108.i
  %or65.i = select i1 %tobool62.not.i, i32 0, i32 %shl64.i
  %reg48.1.i = or i32 %or65.i, %reg48.0109.i
  %mask49.1.i = or i32 %or65.i, %mask49.0110.i
  %inc70.i = add nuw i32 %i47.0108.i, 1
  %exitcond114.not.i = icmp eq i32 %inc70.i, %44
  br i1 %exitcond114.not.i, label %for.body56.i.for.end71.i_crit_edge, label %for.body56.i.for.body56.i_crit_edge

for.body56.i.for.body56.i_crit_edge:              ; preds = %for.body56.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body56.i

for.body56.i.for.end71.i_crit_edge:               ; preds = %for.body56.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end71.i

for.end71.i:                                      ; preds = %for.body56.i.for.end71.i_crit_edge, %for.end.i.for.end71.i_crit_edge
  %reg48.0.lcssa.i = phi i32 [ 0, %for.end.i.for.end71.i_crit_edge ], [ %reg48.1.i, %for.body56.i.for.end71.i_crit_edge ]
  %mask49.0.lcssa.i = phi i32 [ 0, %for.end.i.for.end71.i_crit_edge ], [ %mask49.1.i, %for.body56.i.for.end71.i_crit_edge ]
  %enable.i29 = getelementptr inbounds %struct.vop_intr, ptr %42, i32 0, i32 3
  tail call fastcc void @vop_reg_set(ptr noundef nonnull %crtc, ptr noundef %enable.i29, i32 noundef 0, i32 noundef %mask49.0.lcssa.i, i32 noundef %reg48.0.lcssa.i, ptr noundef nonnull @.str.4) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock.i, i32 noundef %call27.i) #8
  br label %if.else.i

if.else.i:                                        ; preds = %for.end71.i, %do.end.i
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %mstimeout) #8
  %call8 = tail call i32 @wait_for_completion_timeout(ptr noundef %line_flag_completion, i32 noundef %call2.i) #8
  %49 = ptrtoint ptr %is_enabled to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %is_enabled, align 8, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not.i31 = icmp eq i8 %50, 0
  br i1 %tobool.not.i31, label %do.end.i32, label %do.body25.i38, !prof !304

do.end.i32:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 536, i32 noundef 9, ptr noundef null) #8
  br label %vop_line_flag_irq_disable.exit

do.body25.i38:                                    ; preds = %if.else.i
  %call27.i34 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock.i) #8
  %51 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %data.i, align 8
  %intr.i36 = getelementptr inbounds %struct.vop_data, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %intr.i36 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %intr.i36, align 4
  %nintrs.i37 = getelementptr inbounds %struct.vop_intr, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %nintrs.i37 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %nintrs.i37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp3361.not.i = icmp eq i32 %56, 0
  br i1 %cmp3361.not.i, label %do.body25.i38.for.end.i49_crit_edge, label %for.body.lr.ph.i39

do.body25.i38.for.end.i49_crit_edge:              ; preds = %do.body25.i38
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i49

for.body.lr.ph.i39:                               ; preds = %do.body25.i38
  %57 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %54, align 4
  br label %for.body.i46

for.body.i46:                                     ; preds = %for.body.i46.for.body.i46_crit_edge, %for.body.lr.ph.i39
  %mask.063.i = phi i32 [ 0, %for.body.lr.ph.i39 ], [ %mask.1.i43, %for.body.i46.for.body.i46_crit_edge ]
  %i.062.i = phi i32 [ 0, %for.body.lr.ph.i39 ], [ %inc.i44, %for.body.i46.for.body.i46_crit_edge ]
  %arrayidx.i40 = getelementptr i32, ptr %58, i32 %i.062.i
  %59 = ptrtoint ptr %arrayidx.i40 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx.i40, align 4
  %and.i41 = and i32 %60, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i41)
  %tobool37.not.i42 = icmp eq i32 %and.i41, 0
  %shl39.i = shl nuw i32 1, %i.062.i
  %or40.i = select i1 %tobool37.not.i42, i32 0, i32 %shl39.i
  %mask.1.i43 = or i32 %or40.i, %mask.063.i
  %inc.i44 = add nuw i32 %i.062.i, 1
  %exitcond.not.i45 = icmp eq i32 %inc.i44, %56
  br i1 %exitcond.not.i45, label %for.body.i46.for.end.i49_crit_edge, label %for.body.i46.for.body.i46_crit_edge

for.body.i46.for.body.i46_crit_edge:              ; preds = %for.body.i46
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i46

for.body.i46.for.end.i49_crit_edge:               ; preds = %for.body.i46
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i49

for.end.i49:                                      ; preds = %for.body.i46.for.end.i49_crit_edge, %do.body25.i38.for.end.i49_crit_edge
  %mask.0.lcssa.i47 = phi i32 [ 0, %do.body25.i38.for.end.i49_crit_edge ], [ %mask.1.i43, %for.body.i46.for.end.i49_crit_edge ]
  %enable.i48 = getelementptr inbounds %struct.vop_intr, ptr %54, i32 0, i32 3
  %61 = ptrtoint ptr %enable.i48 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %enable.i48, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool2.not.i.i = icmp eq i32 %62, 0
  br i1 %tobool2.not.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %for.end.i49
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 1
  %63 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev.i.i, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %64, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4) #8
  br label %vop_reg_set.exit.i

if.end.i.i:                                       ; preds = %for.end.i49
  %offset3.i.i = getelementptr inbounds %struct.vop_intr, ptr %54, i32 0, i32 3, i32 1
  %65 = ptrtoint ptr %offset3.i.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %offset3.i.i, align 4
  %conv.i.i = zext i16 %66 to i32
  %and.i.i50 = and i32 %62, %mask.0.lcssa.i47
  %shift5.i.i = getelementptr inbounds %struct.vop_intr, ptr %54, i32 0, i32 3, i32 2
  %67 = ptrtoint ptr %shift5.i.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %shift5.i.i, align 2
  %conv6.i.i = zext i8 %68 to i32
  %write_mask.i.i = getelementptr inbounds %struct.vop_intr, ptr %54, i32 0, i32 3, i32 3
  %69 = ptrtoint ptr %write_mask.i.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %write_mask.i.i, align 1, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool7.not.i.i = icmp eq i8 %70, 0
  br i1 %tobool7.not.i.i, label %if.else.i.i, label %if.then8.i.i

if.then8.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add10.i.i = add nuw nsw i32 %conv6.i.i, 16
  %shl11.i.i = shl i32 %and.i.i50, %add10.i.i
  br label %if.end20.i.i

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %regsbak.i.i = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 11
  %71 = ptrtoint ptr %regsbak.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %regsbak.i.i, align 4
  %shr.i60.i = lshr i32 %conv.i.i, 2
  %arrayidx.i.i51 = getelementptr i32, ptr %72, i32 %shr.i60.i
  %73 = ptrtoint ptr %arrayidx.i.i51 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx.i.i51, align 4
  %shl12.i.i = shl i32 %and.i.i50, %conv6.i.i
  %neg.i.i = xor i32 %shl12.i.i, -1
  %and13.i.i = and i32 %74, %neg.i.i
  store i32 %and13.i.i, ptr %arrayidx.i.i51, align 4
  br label %if.end20.i.i

if.end20.i.i:                                     ; preds = %if.else.i.i, %if.then8.i.i
  %v.addr.0.i.i = phi i32 [ %shl11.i.i, %if.then8.i.i ], [ %and13.i.i, %if.else.i.i ]
  %relaxed.i.i = getelementptr inbounds %struct.vop_intr, ptr %54, i32 0, i32 3, i32 4
  %75 = ptrtoint ptr %relaxed.i.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %relaxed.i.i, align 4, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool21.not.i.i = icmp eq i8 %76, 0
  br i1 %tobool21.not.i.i, label %do.body.i.i, label %if.then22.i.i

if.then22.i.i:                                    ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %77 = tail call i32 @llvm.bswap.i32(i32 %v.addr.0.i.i) #8
  %78 = ptrtoint ptr %regs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %regs.i.i.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %79, i32 %conv.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %77) #8, !srcloc !305
  br label %vop_reg_set.exit.i

do.body.i.i:                                      ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !306
  tail call void @arm_heavy_mb() #8
  %80 = tail call i32 @llvm.bswap.i32(i32 %v.addr.0.i.i) #8
  %81 = ptrtoint ptr %regs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %regs.i.i.i.i, align 8
  %add.ptr25.i.i = getelementptr i8, ptr %82, i32 %conv.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i.i, i32 %80) #8, !srcloc !305
  br label %vop_reg_set.exit.i

vop_reg_set.exit.i:                               ; preds = %do.body.i.i, %if.then22.i.i, %if.then.i.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock.i, i32 noundef %call27.i34) #8
  br label %vop_line_flag_irq_disable.exit

vop_line_flag_irq_disable.exit:                   ; preds = %vop_reg_set.exit.i, %do.end.i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %vop_line_flag_irq_disable.exit.out_crit_edge

vop_line_flag_irq_disable.exit.out_crit_edge:     ; preds = %vop_line_flag_irq_disable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then10:                                        ; preds = %vop_line_flag_irq_disable.exit
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 1
  %83 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %84, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #8
  br label %out

out:                                              ; preds = %if.then10, %vop_line_flag_irq_disable.exit.out_crit_edge, %vop_line_flag_irq_is_enabled.exit.out_crit_edge, %if.end.out_crit_edge
  %ret.0 = phi i32 [ -110, %if.then10 ], [ 0, %vop_line_flag_irq_disable.exit.out_crit_edge ], [ -22, %if.end.out_crit_edge ], [ -16, %vop_line_flag_irq_is_enabled.exit.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %vop_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out ], [ -19, %lor.lhs.false.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vop_bind(ptr noundef %dev, ptr nocapture noundef readnone %master, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -16
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %win_size = getelementptr inbounds %struct.vop_data, ptr %call, i32 0, i32 9
  %0 = ptrtoint ptr %win_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %win_size, align 4
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 544) #8
  %3 = extractvalue { i32, i1 } %2, 1
  %4 = extractvalue { i32, i1 } %2, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %4, i32 1464) #8
  %retval.0.i = select i1 %3, i32 -1, i32 %spec.select.i
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %retval.0.i, i32 noundef 3520) #8
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %dev6 = getelementptr inbounds %struct.vop, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %dev6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %dev6, align 8
  %data7 = getelementptr inbounds %struct.vop, ptr %call.i, i32 0, i32 10
  %6 = ptrtoint ptr %data7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %data7, align 8
  %drm_dev8 = getelementptr inbounds %struct.vop, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %drm_dev8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %data, ptr %drm_dev8, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %driver_data.i, align 4
  %9 = ptrtoint ptr %win_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %win_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp18.not.i = icmp eq i32 %10, 0
  br i1 %cmp18.not.i, label %if.end5.vop_win_init.exit_crit_edge, label %for.body.lr.ph.i

if.end5.vop_win_init.exit_crit_edge:              ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %vop_win_init.exit

for.body.lr.ph.i:                                 ; preds = %if.end5
  %win1.i = getelementptr inbounds %struct.vop_data, ptr %call, i32 0, i32 8
  %win_yuv2yuv.i = getelementptr inbounds %struct.vop_data, ptr %call, i32 0, i32 7
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.019.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %11 = ptrtoint ptr %win1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %win1.i, align 8
  %arrayidx2.i = getelementptr %struct.vop_win_data, ptr %12, i32 %i.019.i
  %data3.i = getelementptr %struct.vop, ptr %call.i, i32 0, i32 24, i32 %i.019.i, i32 1
  %13 = ptrtoint ptr %data3.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %arrayidx2.i, ptr %data3.i, align 8
  %vop4.i = getelementptr %struct.vop, ptr %call.i, i32 0, i32 24, i32 %i.019.i, i32 3
  %14 = ptrtoint ptr %vop4.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %vop4.i, align 8
  %15 = ptrtoint ptr %win_yuv2yuv.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %win_yuv2yuv.i, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %for.body.i.if.end.i_crit_edge, label %if.then.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx6.i = getelementptr %struct.vop_win_yuv2yuv_data, ptr %16, i32 %i.019.i
  %yuv2yuv_data.i = getelementptr %struct.vop, ptr %call.i, i32 0, i32 24, i32 %i.019.i, i32 2
  %17 = ptrtoint ptr %yuv2yuv_data.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %arrayidx6.i, ptr %yuv2yuv_data.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %inc.i = add nuw i32 %i.019.i, 1
  %18 = ptrtoint ptr %win_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %win_size, align 4
  %cmp.i = icmp ult i32 %inc.i, %19
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.vop_win_init.exit_crit_edge

if.end.i.vop_win_init.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vop_win_init.exit

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

vop_win_init.exit:                                ; preds = %if.end.i.vop_win_init.exit_crit_edge, %if.end5.vop_win_init.exit_crit_edge
  %call9 = tail call ptr @platform_get_resource(ptr noundef %add.ptr, i32 noundef 512, i32 noundef 0) #8
  %end.i = getelementptr inbounds %struct.resource, ptr %call9, i32 0, i32 1
  %20 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %end.i, align 4
  %22 = ptrtoint ptr %call9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %call9, align 4
  %sub.i = add i32 %21, 1
  %add.i = sub i32 %sub.i, %23
  %len = getelementptr inbounds %struct.vop, ptr %call.i, i32 0, i32 14
  %24 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %add.i, ptr %len, align 8
  %call11 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call9) #8
  %regs = getelementptr inbounds %struct.vop, ptr %call.i, i32 0, i32 12
  %25 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call11, ptr %regs, align 8
  %cmp.i145 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i145, label %if.then14, label %if.end17

if.then14:                                        ; preds = %vop_win_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %call11 to i32
  br label %cleanup

if.end17:                                         ; preds = %vop_win_init.exit
  %call18 = tail call ptr @platform_get_resource(ptr noundef %add.ptr, i32 noundef 512, i32 noundef 1) #8
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %if.end17.if.end31_crit_edge, label %if.then20

if.end17.if.end31_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then20:                                        ; preds = %if.end17
  %lut_size = getelementptr inbounds %struct.vop_data, ptr %call, i32 0, i32 10
  %27 = ptrtoint ptr %lut_size to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %lut_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool21.not = icmp eq i32 %28, 0
  br i1 %tobool21.not, label %if.then22, label %if.end23

if.then22:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6) #8
  br label %cleanup

if.end23:                                         ; preds = %if.then20
  %call24 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef nonnull %call18) #8
  %lut_regs = getelementptr inbounds %struct.vop, ptr %call.i, i32 0, i32 13
  %29 = ptrtoint ptr %lut_regs to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call24, ptr %lut_regs, align 4
  %cmp.i146 = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i146, label %if.then27, label %if.end23.if.end31_crit_edge

if.end23.if.end31_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %call24 to i32
  br label %cleanup

if.end31:                                         ; preds = %if.end23.if.end31_crit_edge, %if.end17.if.end31_crit_edge
  %31 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %len, align 8
  %call.i147 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %32, i32 noundef 3520) #8
  %regsbak = getelementptr inbounds %struct.vop, ptr %call.i, i32 0, i32 11
  %33 = ptrtoint ptr %regsbak to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i147, ptr %regsbak, align 4
  %tobool35.not = icmp eq ptr %call.i147, null
  br i1 %tobool35.not, label %if.end31.cleanup_crit_edge, label %if.end37

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end37:                                         ; preds = %if.end31
  %call38 = tail call i32 @platform_get_irq(ptr noundef %add.ptr, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp = icmp slt i32 %call38, 0
  br i1 %cmp, label %if.then39, label %if.end40

if.then39:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef nonnull @.str.7) #8
  br label %cleanup

if.end40:                                         ; preds = %if.end37
  %irq41 = getelementptr inbounds %struct.vop, ptr %call.i, i32 0, i32 18
  %34 = ptrtoint ptr %irq41 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call38, ptr %irq41, align 8
  %reg_lock = getelementptr inbounds %struct.vop, ptr %call.i, i32 0, i32 15
  tail call void @__raw_spin_lock_init(ptr noundef %reg_lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @vop_bind.__key, i16 noundef signext 3) #8
  %irq_lock = getelementptr inbounds %struct.vop, ptr %call.i, i32 0, i32 16
  tail call void @__raw_spin_lock_init(ptr noundef %irq_lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @vop_bind.__key.9, i16 noundef signext 3) #8
  %vop_lock = getelementptr inbounds %struct.vop, ptr %call.i, i32 0, i32 17
  tail call void @__mutex_init(ptr noundef %vop_lock, ptr noundef nonnull @.str.12, ptr noundef nonnull @vop_bind.__key.11) #8
  %35 = ptrtoint ptr %data7 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data7, align 8
  %37 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev6, align 8
  %39 = ptrtoint ptr %drm_dev8 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %drm_dev8, align 4
  %win_size.i149 = getelementptr inbounds %struct.vop_data, ptr %36, i32 0, i32 9
  %41 = ptrtoint ptr %win_size.i149 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %win_size.i149, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp213.not.i = icmp eq i32 %42, 0
  br i1 %cmp213.not.i, label %if.end40.for.end.i_crit_edge, label %if.end40.for.body.i150_crit_edge

if.end40.for.body.i150_crit_edge:                 ; preds = %if.end40
  br label %for.body.i150

if.end40.for.end.i_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i150:                                    ; preds = %for.inc.i.for.body.i150_crit_edge, %if.end40.for.body.i150_crit_edge
  %primary.0216.i = phi ptr [ %primary.2.ph.i, %for.inc.i.for.body.i150_crit_edge ], [ null, %if.end40.for.body.i150_crit_edge ]
  %cursor.0215.i = phi ptr [ %cursor.2.ph.i, %for.inc.i.for.body.i150_crit_edge ], [ null, %if.end40.for.body.i150_crit_edge ]
  %i.0214.i = phi i32 [ %inc.i154, %for.inc.i.for.body.i150_crit_edge ], [ 0, %if.end40.for.body.i150_crit_edge ]
  %arrayidx.i = getelementptr %struct.vop, ptr %call.i, i32 0, i32 24, i32 %i.0214.i
  %data4.i = getelementptr %struct.vop, ptr %call.i, i32 0, i32 24, i32 %i.0214.i, i32 1
  %43 = ptrtoint ptr %data4.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data4.i, align 8
  %type.i = getelementptr inbounds %struct.vop_win_data, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %type.i, align 4
  %.off.i = add i32 %46, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %if.end.i153, label %for.body.i150.for.inc.i_crit_edge

for.body.i150.for.inc.i_crit_edge:                ; preds = %for.body.i150
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end.i153:                                      ; preds = %for.body.i150
  %47 = ptrtoint ptr %drm_dev8 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %drm_dev8, align 4
  %phy.i = getelementptr inbounds %struct.vop_win_data, ptr %44, i32 0, i32 1
  %49 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %phy.i, align 4
  %data_formats.i = getelementptr inbounds %struct.vop_win_phy, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %data_formats.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %data_formats.i, align 4
  %nformats.i = getelementptr inbounds %struct.vop_win_phy, ptr %50, i32 0, i32 2
  %53 = ptrtoint ptr %nformats.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %nformats.i, align 4
  %format_modifiers.i = getelementptr inbounds %struct.vop_win_phy, ptr %50, i32 0, i32 3
  %55 = ptrtoint ptr %format_modifiers.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %format_modifiers.i, align 4
  %call.i151 = tail call i32 (ptr, ptr, i32, ptr, ptr, i32, ptr, i32, ptr, ...) @drm_universal_plane_init(ptr noundef %48, ptr noundef %arrayidx.i, i32 noundef 0, ptr noundef nonnull @vop_plane_funcs, ptr noundef %52, i32 noundef %54, ptr noundef %56, i32 noundef %46, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i151)
  %tobool.not.i152 = icmp eq i32 %call.i151, 0
  br i1 %tobool.not.i152, label %if.end14.i, label %cleanup.i

if.end14.i:                                       ; preds = %if.end.i153
  %helper_private.i.i = getelementptr inbounds %struct.drm_plane, ptr %arrayidx.i, i32 0, i32 18
  %57 = ptrtoint ptr %helper_private.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @plane_helper_funcs, ptr %helper_private.i.i, align 8
  %58 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %phy.i, align 4
  %x_mir_en.i.i = getelementptr inbounds %struct.vop_win_phy, ptr %59, i32 0, i32 16
  %60 = ptrtoint ptr %x_mir_en.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %x_mir_en.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool.not.i.i = icmp eq i32 %61, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 0, i32 16
  %y_mir_en.i.i = getelementptr inbounds %struct.vop_win_phy, ptr %59, i32 0, i32 15
  %62 = ptrtoint ptr %y_mir_en.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %y_mir_en.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool4.not.i.i = icmp eq i32 %63, 0
  %cond7.i.i = select i1 %tobool4.not.i.i, i32 0, i32 32
  %or8.i.i = or i32 %cond7.i.i, %cond.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i.i)
  %tobool9.not.i.i = icmp eq i32 %or8.i.i, 0
  br i1 %tobool9.not.i.i, label %if.end14.i.vop_plane_add_properties.exit.i_crit_edge, label %if.then.i.i

if.end14.i.vop_plane_add_properties.exit.i_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vop_plane_add_properties.exit.i

if.then.i.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  %or10.i.i = or i32 %or8.i.i, 1
  %call.i.i = tail call i32 @drm_plane_create_rotation_property(ptr noundef %arrayidx.i, i32 noundef 1, i32 noundef %or10.i.i) #8
  br label %vop_plane_add_properties.exit.i

vop_plane_add_properties.exit.i:                  ; preds = %if.then.i.i, %if.end14.i.vop_plane_add_properties.exit.i_crit_edge
  %type16.i = getelementptr inbounds %struct.drm_plane, ptr %arrayidx.i, i32 0, i32 16
  %64 = ptrtoint ptr %type16.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %type16.i, align 8
  %66 = zext i32 %65 to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values)
  switch i32 %65, label %if.end23.fold.split.i [
    i32 1, label %vop_plane_add_properties.exit.i.for.inc.i_crit_edge
    i32 2, label %if.then21.i
  ]

vop_plane_add_properties.exit.i.for.inc.i_crit_edge: ; preds = %vop_plane_add_properties.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then21.i:                                      ; preds = %vop_plane_add_properties.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.end23.fold.split.i:                            ; preds = %vop_plane_add_properties.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

cleanup.i:                                        ; preds = %if.end.i153
  call void @__sanitizer_cov_trace_pc() #10
  %67 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev6, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %68, ptr noundef nonnull @.str, ptr noundef nonnull @.str.14, i32 noundef %call.i151) #8
  br label %err_cleanup_planes.i

for.inc.i:                                        ; preds = %if.end23.fold.split.i, %if.then21.i, %vop_plane_add_properties.exit.i.for.inc.i_crit_edge, %for.body.i150.for.inc.i_crit_edge
  %cursor.2.ph.i = phi ptr [ %cursor.0215.i, %if.end23.fold.split.i ], [ %cursor.0215.i, %vop_plane_add_properties.exit.i.for.inc.i_crit_edge ], [ %arrayidx.i, %if.then21.i ], [ %cursor.0215.i, %for.body.i150.for.inc.i_crit_edge ]
  %primary.2.ph.i = phi ptr [ %primary.0216.i, %if.end23.fold.split.i ], [ %arrayidx.i, %vop_plane_add_properties.exit.i.for.inc.i_crit_edge ], [ %primary.0216.i, %if.then21.i ], [ %primary.0216.i, %for.body.i150.for.inc.i_crit_edge ]
  %inc.i154 = add nuw i32 %i.0214.i, 1
  %69 = ptrtoint ptr %win_size.i149 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %win_size.i149, align 4
  %cmp.i155 = icmp ult i32 %inc.i154, %70
  br i1 %cmp.i155, label %for.inc.i.for.body.i150_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.inc.i.for.body.i150_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i150

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end40.for.end.i_crit_edge
  %cursor.0.lcssa.i = phi ptr [ null, %if.end40.for.end.i_crit_edge ], [ %cursor.2.ph.i, %for.inc.i.for.end.i_crit_edge ]
  %primary.0.lcssa.i = phi ptr [ null, %if.end40.for.end.i_crit_edge ], [ %primary.2.ph.i, %for.inc.i.for.end.i_crit_edge ]
  %call25.i = tail call i32 (ptr, ptr, ptr, ptr, ptr, ptr, ...) @drm_crtc_init_with_planes(ptr noundef %40, ptr noundef %call.i, ptr noundef %primary.0.lcssa.i, ptr noundef %cursor.0.lcssa.i, ptr noundef nonnull @vop_crtc_funcs, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %tobool26.not.i = icmp eq i32 %call25.i, 0
  br i1 %tobool26.not.i, label %if.end28.i, label %for.end.i.err_cleanup_planes.i_crit_edge

for.end.i.err_cleanup_planes.i_crit_edge:         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_cleanup_planes.i

if.end28.i:                                       ; preds = %for.end.i
  %helper_private.i184.i = getelementptr inbounds %struct.drm_crtc, ptr %call.i, i32 0, i32 19
  %71 = ptrtoint ptr %helper_private.i184.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @vop_crtc_helper_funcs, ptr %helper_private.i184.i, align 8
  %lut_regs.i = getelementptr inbounds %struct.vop, ptr %call.i, i32 0, i32 13
  %72 = ptrtoint ptr %lut_regs.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %lut_regs.i, align 4
  %tobool29.not.i = icmp eq ptr %73, null
  br i1 %tobool29.not.i, label %if.end28.i.if.end33.i_crit_edge, label %if.then30.i

if.end28.i.if.end33.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33.i

if.then30.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  %lut_size.i = getelementptr inbounds %struct.vop_data, ptr %36, i32 0, i32 10
  %74 = ptrtoint ptr %lut_size.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %lut_size.i, align 8
  %call31.i = tail call i32 @drm_mode_crtc_set_gamma_size(ptr noundef %call.i, i32 noundef %75) #8
  %76 = ptrtoint ptr %lut_size.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %lut_size.i, align 8
  tail call void @drm_crtc_enable_color_mgmt(ptr noundef %call.i, i32 noundef 0, i1 noundef zeroext false, i32 noundef %77) #8
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then30.i, %if.end28.i.if.end33.i_crit_edge
  %78 = ptrtoint ptr %win_size.i149 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %win_size.i149, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %cmp36218.not.i = icmp eq i32 %79, 0
  br i1 %cmp36218.not.i, label %if.end33.i.for.end71.i_crit_edge, label %for.body37.lr.ph.i

if.end33.i.for.end71.i_crit_edge:                 ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end71.i

for.body37.lr.ph.i:                               ; preds = %if.end33.i
  %index.i.i.i = getelementptr inbounds %struct.drm_crtc, ptr %call.i, i32 0, i32 8
  br label %for.body37.i

for.body37.i:                                     ; preds = %for.inc69.i.for.body37.i_crit_edge, %for.body37.lr.ph.i
  %i.1219.i = phi i32 [ 0, %for.body37.lr.ph.i ], [ %inc70.i, %for.inc69.i.for.body37.i_crit_edge ]
  %arrayidx40.i = getelementptr %struct.vop, ptr %call.i, i32 0, i32 24, i32 %i.1219.i
  %data42.i = getelementptr %struct.vop, ptr %call.i, i32 0, i32 24, i32 %i.1219.i, i32 1
  %80 = ptrtoint ptr %data42.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %data42.i, align 8
  %type44.i = getelementptr inbounds %struct.vop_win_data, ptr %81, i32 0, i32 2
  %82 = ptrtoint ptr %type44.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %type44.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp45.not.i = icmp eq i32 %83, 0
  br i1 %cmp45.not.i, label %if.end47.i, label %for.body37.i.for.inc69.i_crit_edge

for.body37.i.for.inc69.i_crit_edge:               ; preds = %for.body37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc69.i

if.end47.i:                                       ; preds = %for.body37.i
  %84 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %index.i.i.i, align 4
  %shl.i.i = shl nuw i32 1, %85
  %86 = ptrtoint ptr %drm_dev8 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %drm_dev8, align 4
  %phy50.i = getelementptr inbounds %struct.vop_win_data, ptr %81, i32 0, i32 1
  %88 = ptrtoint ptr %phy50.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %phy50.i, align 4
  %data_formats51.i = getelementptr inbounds %struct.vop_win_phy, ptr %89, i32 0, i32 1
  %90 = ptrtoint ptr %data_formats51.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %data_formats51.i, align 4
  %nformats53.i = getelementptr inbounds %struct.vop_win_phy, ptr %89, i32 0, i32 2
  %92 = ptrtoint ptr %nformats53.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %nformats53.i, align 4
  %format_modifiers55.i = getelementptr inbounds %struct.vop_win_phy, ptr %89, i32 0, i32 3
  %94 = ptrtoint ptr %format_modifiers55.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %format_modifiers55.i, align 4
  %call57.i = tail call i32 (ptr, ptr, i32, ptr, ptr, i32, ptr, i32, ptr, ...) @drm_universal_plane_init(ptr noundef %87, ptr noundef %arrayidx40.i, i32 noundef %shl.i.i, ptr noundef nonnull @vop_plane_funcs, ptr noundef %91, i32 noundef %93, ptr noundef %95, i32 noundef 0, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i)
  %tobool58.not.i = icmp eq i32 %call57.i, 0
  br i1 %tobool58.not.i, label %if.end61.i, label %cleanup64.i

if.end61.i:                                       ; preds = %if.end47.i
  %helper_private.i185.i = getelementptr inbounds %struct.drm_plane, ptr %arrayidx40.i, i32 0, i32 18
  %96 = ptrtoint ptr %helper_private.i185.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr @plane_helper_funcs, ptr %helper_private.i185.i, align 8
  %97 = ptrtoint ptr %phy50.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %phy50.i, align 4
  %x_mir_en.i187.i = getelementptr inbounds %struct.vop_win_phy, ptr %98, i32 0, i32 16
  %99 = ptrtoint ptr %x_mir_en.i187.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %x_mir_en.i187.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool.not.i188.i = icmp eq i32 %100, 0
  %cond.i189.i = select i1 %tobool.not.i188.i, i32 0, i32 16
  %y_mir_en.i190.i = getelementptr inbounds %struct.vop_win_phy, ptr %98, i32 0, i32 15
  %101 = ptrtoint ptr %y_mir_en.i190.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %y_mir_en.i190.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool4.not.i191.i = icmp eq i32 %102, 0
  %cond7.i192.i = select i1 %tobool4.not.i191.i, i32 0, i32 32
  %or8.i193.i = or i32 %cond7.i192.i, %cond.i189.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i193.i)
  %tobool9.not.i194.i = icmp eq i32 %or8.i193.i, 0
  br i1 %tobool9.not.i194.i, label %if.end61.i.for.inc69.i_crit_edge, label %if.then.i197.i

if.end61.i.for.inc69.i_crit_edge:                 ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc69.i

if.then.i197.i:                                   ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #10
  %or10.i195.i = or i32 %or8.i193.i, 1
  %call.i196.i = tail call i32 @drm_plane_create_rotation_property(ptr noundef %arrayidx40.i, i32 noundef 1, i32 noundef %or10.i195.i) #8
  br label %for.inc69.i

cleanup64.i:                                      ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #10
  %103 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dev6, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %104, ptr noundef nonnull @.str, ptr noundef nonnull @.str.15, i32 noundef %call57.i) #8
  br label %err_cleanup_crtc.i

for.inc69.i:                                      ; preds = %if.then.i197.i, %if.end61.i.for.inc69.i_crit_edge, %for.body37.i.for.inc69.i_crit_edge
  %inc70.i = add nuw i32 %i.1219.i, 1
  %105 = ptrtoint ptr %win_size.i149 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %win_size.i149, align 4
  %cmp36.i = icmp ult i32 %inc70.i, %106
  br i1 %cmp36.i, label %for.inc69.i.for.body37.i_crit_edge, label %for.inc69.i.for.end71.i_crit_edge

for.inc69.i.for.end71.i_crit_edge:                ; preds = %for.inc69.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end71.i

for.inc69.i.for.body37.i_crit_edge:               ; preds = %for.inc69.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body37.i

for.end71.i:                                      ; preds = %for.inc69.i.for.end71.i_crit_edge, %if.end33.i.for.end71.i_crit_edge
  %of_node.i = getelementptr inbounds %struct.device, ptr %38, i32 0, i32 27
  %107 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %of_node.i, align 8
  %call72.i = tail call ptr @of_get_child_by_name(ptr noundef %108, ptr noundef nonnull @.str.16) #8
  %tobool73.not.i = icmp eq ptr %call72.i, null
  br i1 %tobool73.not.i, label %if.then74.i, label %if.end77.i

if.then74.i:                                      ; preds = %for.end71.i
  call void @__sanitizer_cov_trace_pc() #10
  %109 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dev6, align 8
  %111 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %of_node.i, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %110, ptr noundef nonnull @.str, ptr noundef nonnull @.str.17, ptr noundef %112) #8
  br label %err_cleanup_crtc.i

if.end77.i:                                       ; preds = %for.end71.i
  %fb_unref_work.i = getelementptr inbounds %struct.vop, ptr %call.i, i32 0, i32 7
  tail call void @drm_flip_work_init(ptr noundef %fb_unref_work.i, ptr noundef nonnull @.str.18, ptr noundef nonnull @vop_fb_unref_worker) #8
  %dsp_hold_completion.i = getelementptr inbounds %struct.vop, ptr %call.i, i32 0, i32 4
  %113 = ptrtoint ptr %dsp_hold_completion.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 0, ptr %dsp_hold_completion.i, align 4
  %wait.i.i = getelementptr inbounds %struct.vop, ptr %call.i, i32 0, i32 4, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.116, ptr noundef nonnull @init_completion.__key) #8
  %line_flag_completion.i = getelementptr inbounds %struct.vop, ptr %call.i, i32 0, i32 9
  %114 = ptrtoint ptr %line_flag_completion.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 0, ptr %line_flag_completion.i, align 4
  %wait.i199.i = getelementptr inbounds %struct.vop, ptr %call.i, i32 0, i32 9, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i199.i, ptr noundef nonnull @.str.116, ptr noundef nonnull @init_completion.__key) #8
  %port78.i = getelementptr inbounds %struct.drm_crtc, ptr %call.i, i32 0, i32 1
  %115 = ptrtoint ptr %port78.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %call72.i, ptr %port78.i, align 4
  %call79.i = tail call i32 @drm_self_refresh_helper_init(ptr noundef %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79.i)
  %tobool80.not.i = icmp eq i32 %call79.i, 0
  br i1 %tobool80.not.i, label %if.end77.i.if.end53_crit_edge, label %if.then81.i

if.end77.i.if.end53_crit_edge:                    ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.then81.i:                                      ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #10
  %116 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dev6, align 8
  %name.i = getelementptr inbounds %struct.drm_crtc, ptr %call.i, i32 0, i32 3
  %118 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %name.i, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %117, i32 noundef 4, ptr noundef nonnull @.str.19, ptr noundef %119, i32 noundef %call79.i) #8
  br label %if.end53

err_cleanup_crtc.i:                               ; preds = %if.then74.i, %cleanup64.i
  %ret.4.i = phi i32 [ %call57.i, %cleanup64.i ], [ -2, %if.then74.i ]
  tail call void @drm_crtc_cleanup(ptr noundef %call.i) #8
  br label %err_cleanup_planes.i

err_cleanup_planes.i:                             ; preds = %err_cleanup_crtc.i, %for.end.i.err_cleanup_planes.i_crit_edge, %cleanup.i
  %ret.5.i = phi i32 [ %call.i151, %cleanup.i ], [ %call25.i, %for.end.i.err_cleanup_planes.i_crit_edge ], [ %ret.4.i, %err_cleanup_crtc.i ]
  %plane_list.i = getelementptr inbounds %struct.drm_device, ptr %40, i32 0, i32 30, i32 18
  %120 = ptrtoint ptr %plane_list.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %plane_list.i, align 4
  %cmp93.not220.i = icmp eq ptr %121, %plane_list.i
  br i1 %cmp93.not220.i, label %err_cleanup_planes.i.cleanup_crit_edge, label %err_cleanup_planes.i.for.body94.i_crit_edge

err_cleanup_planes.i.for.body94.i_crit_edge:      ; preds = %err_cleanup_planes.i
  br label %for.body94.i

err_cleanup_planes.i.cleanup_crit_edge:           ; preds = %err_cleanup_planes.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body94.i:                                     ; preds = %for.body94.i.for.body94.i_crit_edge, %err_cleanup_planes.i.for.body94.i_crit_edge
  %.pn.in221.i = phi ptr [ %.pn.i, %for.body94.i.for.body94.i_crit_edge ], [ %121, %err_cleanup_planes.i.for.body94.i_crit_edge ]
  %plane.0.i = getelementptr i8, ptr %.pn.in221.i, i32 -4
  %122 = ptrtoint ptr %.pn.in221.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %.pn.i = load ptr, ptr %.pn.in221.i, align 4
  tail call void @drm_plane_cleanup(ptr noundef %plane.0.i) #8
  %cmp93.not.i = icmp eq ptr %.pn.i, %plane_list.i
  br i1 %cmp93.not.i, label %vop_create_crtc.exit, label %for.body94.i.for.body94.i_crit_edge

for.body94.i.for.body94.i_crit_edge:              ; preds = %for.body94.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body94.i

vop_create_crtc.exit:                             ; preds = %for.body94.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.5.i)
  %tobool51.not = icmp eq i32 %ret.5.i, 0
  br i1 %tobool51.not, label %vop_create_crtc.exit.if.end53_crit_edge, label %vop_create_crtc.exit.cleanup_crit_edge

vop_create_crtc.exit.cleanup_crit_edge:           ; preds = %vop_create_crtc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

vop_create_crtc.exit.if.end53_crit_edge:          ; preds = %vop_create_crtc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.end53:                                         ; preds = %vop_create_crtc.exit.if.end53_crit_edge, %if.then81.i, %if.end77.i.if.end53_crit_edge
  tail call void @pm_runtime_enable(ptr noundef %dev) #8
  %call55 = tail call fastcc i32 @vop_initial(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %cmp56 = icmp slt i32 %call55, 0
  br i1 %cmp56, label %if.then57, label %if.end59

if.then57:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef nonnull @.str.13, i32 noundef %call55) #8
  br label %err_disable_pm_runtime

if.end59:                                         ; preds = %if.end53
  %123 = ptrtoint ptr %irq41 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %irq41, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %125 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i157 = icmp eq ptr %126, null
  br i1 %tobool.not.i157, label %if.end.i158, label %if.end59.dev_name.exit_crit_edge

if.end59.dev_name.exit_crit_edge:                 ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i158:                                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  %127 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i158, %if.end59.dev_name.exit_crit_edge
  %retval.0.i159 = phi ptr [ %128, %if.end.i158 ], [ %126, %if.end59.dev_name.exit_crit_edge ]
  %call.i160 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %124, ptr noundef nonnull @vop_isr, ptr noundef null, i32 noundef 128, ptr noundef %retval.0.i159, ptr noundef %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i160)
  %tobool63.not = icmp eq i32 %call.i160, 0
  br i1 %tobool63.not, label %if.end65, label %dev_name.exit.err_disable_pm_runtime_crit_edge

dev_name.exit.err_disable_pm_runtime_crit_edge:   ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_disable_pm_runtime

if.end65:                                         ; preds = %dev_name.exit
  %129 = ptrtoint ptr %data7 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %data7, align 8
  %feature = getelementptr inbounds %struct.vop_data, ptr %130, i32 0, i32 11
  %131 = ptrtoint ptr %feature to i32
  call void @__asan_load8_noabort(i32 %131)
  %132 = load i64, ptr %feature, align 8
  %and = and i64 %132, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool67.not = icmp eq i64 %and, 0
  br i1 %tobool67.not, label %if.end65.cleanup_crit_edge, label %if.then68

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then68:                                        ; preds = %if.end65
  %133 = ptrtoint ptr %drm_dev8 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %drm_dev8, align 4
  %call70 = tail call ptr @rockchip_rgb_init(ptr noundef %dev, ptr noundef nonnull %call.i, ptr noundef %134) #8
  %rgb = getelementptr inbounds %struct.vop, ptr %call.i, i32 0, i32 23
  %135 = ptrtoint ptr %rgb to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %call70, ptr %rgb, align 4
  %cmp.i161 = icmp ugt ptr %call70, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i161, label %if.then73, label %if.then68.cleanup_crit_edge

if.then68.cleanup_crit_edge:                      ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then73:                                        ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #10
  %136 = ptrtoint ptr %call70 to i32
  br label %err_disable_pm_runtime

err_disable_pm_runtime:                           ; preds = %if.then73, %dev_name.exit.err_disable_pm_runtime_crit_edge, %if.then57
  %ret.0 = phi i32 [ %call55, %if.then57 ], [ %call.i160, %dev_name.exit.err_disable_pm_runtime_crit_edge ], [ %136, %if.then73 ]
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #8
  tail call fastcc void @vop_destroy_crtc(ptr noundef nonnull %call.i)
  br label %cleanup

cleanup:                                          ; preds = %err_disable_pm_runtime, %if.then68.cleanup_crit_edge, %if.end65.cleanup_crit_edge, %vop_create_crtc.exit.cleanup_crit_edge, %err_cleanup_planes.i.cleanup_crit_edge, %if.then39, %if.end31.cleanup_crit_edge, %if.then27, %if.then22, %if.then14, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %26, %if.then14 ], [ %30, %if.then27 ], [ %call38, %if.then39 ], [ %ret.0, %err_disable_pm_runtime ], [ -22, %if.then22 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end31.cleanup_crit_edge ], [ %ret.5.i, %vop_create_crtc.exit.cleanup_crit_edge ], [ 0, %if.then68.cleanup_crit_edge ], [ 0, %if.end65.cleanup_crit_edge ], [ %ret.5.i, %err_cleanup_planes.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vop_unbind(ptr noundef %dev, ptr nocapture noundef readnone %master, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %rgb = getelementptr inbounds %struct.vop, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %rgb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rgb, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @rockchip_rgb_fini(ptr noundef nonnull %3) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #8
  %drm_dev2.i = getelementptr inbounds %struct.vop, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %drm_dev2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drm_dev2.i, align 4
  tail call void @drm_self_refresh_helper_cleanup(ptr noundef %1) #8
  %port.i = getelementptr inbounds %struct.drm_crtc, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %port.i, align 4
  tail call void @of_node_put(ptr noundef %7) #8
  %plane_list.i = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 30, i32 18
  %8 = ptrtoint ptr %plane_list.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %plane_list.i, align 4
  %cmp.not25.i = icmp eq ptr %9, %plane_list.i
  br i1 %cmp.not25.i, label %if.end.vop_destroy_crtc.exit_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.vop_destroy_crtc.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %vop_destroy_crtc.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %.pn.in26.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %9, %if.end.for.body.i_crit_edge ]
  %plane.0.i = getelementptr i8, ptr %.pn.in26.i, i32 -4
  %10 = ptrtoint ptr %.pn.in26.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn.i = load ptr, ptr %.pn.in26.i, align 4
  tail call void @drm_plane_cleanup(ptr noundef %plane.0.i) #8
  %cmp.not.i = icmp eq ptr %.pn.i, %plane_list.i
  br i1 %cmp.not.i, label %for.body.i.vop_destroy_crtc.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.vop_destroy_crtc.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vop_destroy_crtc.exit

vop_destroy_crtc.exit:                            ; preds = %for.body.i.vop_destroy_crtc.exit_crit_edge, %if.end.vop_destroy_crtc.exit_crit_edge
  tail call void @drm_crtc_cleanup(ptr noundef %1) #8
  %fb_unref_work.i = getelementptr inbounds %struct.vop, ptr %1, i32 0, i32 7
  tail call void @drm_flip_work_cleanup(ptr noundef %fb_unref_work.i) #8
  %aclk = getelementptr inbounds %struct.vop, ptr %1, i32 0, i32 21
  %11 = ptrtoint ptr %aclk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %aclk, align 4
  tail call void @clk_unprepare(ptr noundef %12) #8
  %hclk = getelementptr inbounds %struct.vop, ptr %1, i32 0, i32 19
  %13 = ptrtoint ptr %hclk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hclk, align 4
  tail call void @clk_unprepare(ptr noundef %14) #8
  %dclk = getelementptr inbounds %struct.vop, ptr %1, i32 0, i32 20
  %15 = ptrtoint ptr %dclk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dclk, align 8
  tail call void @clk_unprepare(ptr noundef %16) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vop_reg_set(ptr nocapture noundef readonly %vop, ptr noundef readonly %reg, i32 noundef %_offset, i32 noundef %_mask, i32 noundef %v, ptr noundef %reg_name) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %reg, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool2.not = icmp eq i32 %1, 0
  br i1 %tobool2.not, label %lor.lhs.false.if.then_crit_edge, label %if.end

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %dev = getelementptr inbounds %struct.vop, ptr %vop, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %3, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef %reg_name) #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %offset3 = getelementptr inbounds %struct.vop_reg, ptr %reg, i32 0, i32 1
  %4 = ptrtoint ptr %offset3 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %offset3, align 4
  %conv = zext i16 %5 to i32
  %add = add i32 %conv, %_offset
  %and = and i32 %1, %_mask
  %shift5 = getelementptr inbounds %struct.vop_reg, ptr %reg, i32 0, i32 2
  %6 = ptrtoint ptr %shift5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %shift5, align 2
  %conv6 = zext i8 %7 to i32
  %write_mask = getelementptr inbounds %struct.vop_reg, ptr %reg, i32 0, i32 3
  %8 = ptrtoint ptr %write_mask to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %write_mask, align 1, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool7.not = icmp eq i8 %9, 0
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %shl = shl i32 %v, %conv6
  %and9 = and i32 %shl, 65535
  %add10 = add nuw nsw i32 %conv6, 16
  %shl11 = shl i32 %and, %add10
  %or = or i32 %and9, %shl11
  br label %if.end20

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %regsbak = getelementptr inbounds %struct.vop, ptr %vop, i32 0, i32 11
  %10 = ptrtoint ptr %regsbak to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regsbak, align 4
  %shr = ashr i32 %add, 2
  %arrayidx = getelementptr i32, ptr %11, i32 %shr
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %shl12 = shl i32 %and, %conv6
  %neg = xor i32 %shl12, -1
  %and13 = and i32 %13, %neg
  %and14 = and i32 %and, %v
  %shl15 = shl i32 %and14, %conv6
  %or16 = or i32 %and13, %shl15
  store i32 %or16, ptr %arrayidx, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then8
  %v.addr.0 = phi i32 [ %or, %if.then8 ], [ %or16, %if.else ]
  %relaxed = getelementptr inbounds %struct.vop_reg, ptr %reg, i32 0, i32 4
  %14 = ptrtoint ptr %relaxed to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %relaxed, align 4, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool21.not = icmp eq i8 %15, 0
  br i1 %tobool21.not, label %do.body, label %if.then22

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %16 = tail call i32 @llvm.bswap.i32(i32 %v.addr.0)
  %regs = getelementptr inbounds %struct.vop, ptr %vop, i32 0, i32 12
  %17 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %18, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %16) #8, !srcloc !305
  br label %cleanup

do.body:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !306
  tail call void @arm_heavy_mb() #8
  %19 = tail call i32 @llvm.bswap.i32(i32 %v.addr.0)
  %regs24 = getelementptr inbounds %struct.vop, ptr %vop, i32 0, i32 12
  %20 = ptrtoint ptr %regs24 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs24, align 8
  %add.ptr25 = getelementptr i8, ptr %21, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 %19) #8, !srcloc !305
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.then22, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vop_initial(ptr noundef %vop) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.vop, ptr %vop, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %call = tail call ptr @devm_clk_get(ptr noundef %1, ptr noundef nonnull @.str.117) #8
  %hclk = getelementptr inbounds %struct.vop, ptr %vop, i32 0, i32 19
  %2 = ptrtoint ptr %hclk to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %hclk, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 8
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %4, ptr noundef nonnull @.str, ptr noundef nonnull @.str.118) #8
  %5 = ptrtoint ptr %hclk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hclk, align 4
  %7 = ptrtoint ptr %6 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call7 = tail call ptr @devm_clk_get(ptr noundef %4, ptr noundef nonnull @.str.119) #8
  %aclk = getelementptr inbounds %struct.vop, ptr %vop, i32 0, i32 21
  %8 = ptrtoint ptr %aclk to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7, ptr %aclk, align 4
  %cmp.i238 = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 8
  br i1 %cmp.i238, label %if.then10, label %if.end14

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %10, ptr noundef nonnull @.str, ptr noundef nonnull @.str.120) #8
  %11 = ptrtoint ptr %aclk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %aclk, align 4
  %13 = ptrtoint ptr %12 to i32
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %call16 = tail call ptr @devm_clk_get(ptr noundef %10, ptr noundef nonnull @.str.121) #8
  %dclk = getelementptr inbounds %struct.vop, ptr %vop, i32 0, i32 20
  %14 = ptrtoint ptr %dclk to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call16, ptr %dclk, align 8
  %cmp.i239 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 8
  br i1 %cmp.i239, label %if.then19, label %if.end23

if.then19:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %16, ptr noundef nonnull @.str, ptr noundef nonnull @.str.122) #8
  %17 = ptrtoint ptr %dclk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dclk, align 8
  %19 = ptrtoint ptr %18 to i32
  br label %cleanup

if.end23:                                         ; preds = %if.end14
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %16, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %21, ptr noundef nonnull @.str, ptr noundef nonnull @.str.113, i32 noundef %call.i) #8
  br label %cleanup

if.end28:                                         ; preds = %if.end23
  %22 = ptrtoint ptr %dclk to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dclk, align 8
  %call30 = tail call i32 @clk_prepare(ptr noundef %23) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.then32, label %if.end34

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %25, ptr noundef nonnull @.str, ptr noundef nonnull @.str.123) #8
  br label %err_put_pm_runtime

if.end34:                                         ; preds = %if.end28
  %26 = ptrtoint ptr %hclk to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hclk, align 4
  %call.i240 = tail call i32 @clk_prepare(ptr noundef %27) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i240)
  %tobool.not.i = icmp eq i32 %call.i240, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end34.clk_prepare_enable.exit_crit_edge

if.end34.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end34
  %call1.i = tail call i32 @clk_enable(ptr noundef %27) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end40_crit_edge, label %if.then3.i

if.end.i.if.end40_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %27) #8
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end34.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i240, %if.end34.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp37 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp37, label %if.then38, label %clk_prepare_enable.exit.if.end40_crit_edge

clk_prepare_enable.exit.if.end40_crit_edge:       ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.then38:                                        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %29, ptr noundef nonnull @.str, ptr noundef nonnull @.str.124) #8
  br label %err_unprepare_dclk

if.end40:                                         ; preds = %clk_prepare_enable.exit.if.end40_crit_edge, %if.end.i.if.end40_crit_edge
  %30 = ptrtoint ptr %aclk to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %aclk, align 4
  %call.i241 = tail call i32 @clk_prepare(ptr noundef %31) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i241)
  %tobool.not.i242 = icmp eq i32 %call.i241, 0
  br i1 %tobool.not.i242, label %if.end.i245, label %if.end40.clk_prepare_enable.exit248_crit_edge

if.end40.clk_prepare_enable.exit248_crit_edge:    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %clk_prepare_enable.exit248

if.end.i245:                                      ; preds = %if.end40
  %call1.i243 = tail call i32 @clk_enable(ptr noundef %31) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i243)
  %tobool2.not.i244 = icmp eq i32 %call1.i243, 0
  br i1 %tobool2.not.i244, label %if.end.i245.if.end46_crit_edge, label %if.then3.i246

if.end.i245.if.end46_crit_edge:                   ; preds = %if.end.i245
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

if.then3.i246:                                    ; preds = %if.end.i245
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %31) #8
  br label %clk_prepare_enable.exit248

clk_prepare_enable.exit248:                       ; preds = %if.then3.i246, %if.end40.clk_prepare_enable.exit248_crit_edge
  %retval.0.i247 = phi i32 [ %call.i241, %if.end40.clk_prepare_enable.exit248_crit_edge ], [ %call1.i243, %if.then3.i246 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i247)
  %cmp43 = icmp slt i32 %retval.0.i247, 0
  br i1 %cmp43, label %if.then44, label %clk_prepare_enable.exit248.if.end46_crit_edge

clk_prepare_enable.exit248.if.end46_crit_edge:    ; preds = %clk_prepare_enable.exit248
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

if.then44:                                        ; preds = %clk_prepare_enable.exit248
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %33, ptr noundef nonnull @.str, ptr noundef nonnull @.str.125) #8
  br label %err_disable_hclk

if.end46:                                         ; preds = %clk_prepare_enable.exit248.if.end46_crit_edge, %if.end.i245.if.end46_crit_edge
  %34 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev, align 8
  %call.i.i = tail call ptr @__devm_reset_control_get(ptr noundef %35, ptr noundef nonnull @.str.126, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %cmp.i249 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i249, label %if.then50, label %if.end53

if.then50:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %37, ptr noundef nonnull @.str, ptr noundef nonnull @.str.127) #8
  br label %err_disable_aclk

if.end53:                                         ; preds = %if.end46
  %call54 = tail call i32 @reset_control_assert(ptr noundef %call.i.i) #8
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #8
  %call55 = tail call i32 @reset_control_deassert(ptr noundef %call.i.i) #8
  %data = getelementptr inbounds %struct.vop, ptr %vop, i32 0, i32 10
  %38 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data, align 8
  %intr = getelementptr inbounds %struct.vop_data, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %intr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %intr, align 4
  %nintrs = getelementptr inbounds %struct.vop_intr, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %nintrs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %nintrs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp57260.not = icmp eq i32 %43, 0
  br i1 %cmp57260.not, label %if.end53.for.end_crit_edge, label %for.body.lr.ph

if.end53.for.end_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end53
  %44 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %41, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %mask.0263 = phi i32 [ 0, %for.body.lr.ph ], [ %mask.1, %for.body.for.body_crit_edge ]
  %reg.0262 = phi i32 [ 0, %for.body.lr.ph ], [ %reg.1, %for.body.for.body_crit_edge ]
  %i56.0261 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %45, i32 %i56.0261
  %46 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx, align 4
  %and = and i32 %47, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %shl = shl nuw i32 1, %i56.0261
  %or = select i1 %tobool.not, i32 0, i32 %shl
  %reg.1 = or i32 %or, %reg.0262
  %mask.1 = or i32 %or, %mask.0263
  %inc = add nuw i32 %i56.0261, 1
  %exitcond.not = icmp eq i32 %inc, %43
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end53.for.end_crit_edge
  %reg.0.lcssa = phi i32 [ 0, %if.end53.for.end_crit_edge ], [ %reg.1, %for.body.for.end_crit_edge ]
  %mask.0.lcssa = phi i32 [ 0, %if.end53.for.end_crit_edge ], [ %mask.1, %for.body.for.end_crit_edge ]
  %clear = getelementptr inbounds %struct.vop_intr, ptr %41, i32 0, i32 4
  tail call fastcc void @vop_reg_set(ptr noundef %vop, ptr noundef %clear, i32 noundef 0, i32 noundef %mask.0.lcssa, i32 noundef %reg.0.lcssa, ptr noundef nonnull @.str.3)
  %48 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data, align 8
  %intr72 = getelementptr inbounds %struct.vop_data, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %intr72 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %intr72, align 4
  %nintrs73 = getelementptr inbounds %struct.vop_intr, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %nintrs73 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %nintrs73, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp74266.not = icmp eq i32 %53, 0
  br i1 %cmp74266.not, label %for.end.for.end90_crit_edge, label %for.body75.lr.ph

for.end.for.end90_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end90

for.body75.lr.ph:                                 ; preds = %for.end
  %54 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %51, align 4
  br label %for.body75

for.body75:                                       ; preds = %for.body75.for.body75_crit_edge, %for.body75.lr.ph
  %mask69.0268 = phi i32 [ 0, %for.body75.lr.ph ], [ %mask69.1, %for.body75.for.body75_crit_edge ]
  %i67.0267 = phi i32 [ 0, %for.body75.lr.ph ], [ %inc89, %for.body75.for.body75_crit_edge ]
  %arrayidx79 = getelementptr i32, ptr %55, i32 %i67.0267
  %56 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx79, align 4
  %and80 = and i32 %57, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  %shl85 = shl nuw i32 1, %i67.0267
  %or86 = select i1 %tobool81.not, i32 0, i32 %shl85
  %mask69.1 = or i32 %or86, %mask69.0268
  %inc89 = add nuw i32 %i67.0267, 1
  %exitcond278.not = icmp eq i32 %inc89, %53
  br i1 %exitcond278.not, label %for.body75.for.end90_crit_edge, label %for.body75.for.body75_crit_edge

for.body75.for.body75_crit_edge:                  ; preds = %for.body75
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body75

for.body75.for.end90_crit_edge:                   ; preds = %for.body75
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end90

for.end90:                                        ; preds = %for.body75.for.end90_crit_edge, %for.end.for.end90_crit_edge
  %mask69.0.lcssa = phi i32 [ 0, %for.end.for.end90_crit_edge ], [ %mask69.1, %for.body75.for.end90_crit_edge ]
  %enable = getelementptr inbounds %struct.vop_intr, ptr %51, i32 0, i32 3
  tail call fastcc void @vop_reg_set(ptr noundef %vop, ptr noundef %enable, i32 noundef 0, i32 noundef %mask69.0.lcssa, i32 noundef 0, ptr noundef nonnull @.str.4)
  %len = getelementptr inbounds %struct.vop, ptr %vop, i32 0, i32 14
  %58 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp96271.not = icmp eq i32 %59, 0
  br i1 %cmp96271.not, label %for.end90.for.end101_crit_edge, label %for.body97.lr.ph

for.end90.for.end101_crit_edge:                   ; preds = %for.end90
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end101

for.body97.lr.ph:                                 ; preds = %for.end90
  %regs = getelementptr inbounds %struct.vop, ptr %vop, i32 0, i32 12
  %regsbak = getelementptr inbounds %struct.vop, ptr %vop, i32 0, i32 11
  br label %for.body97

for.body97:                                       ; preds = %for.body97.for.body97_crit_edge, %for.body97.lr.ph
  %i.0272 = phi i32 [ 0, %for.body97.lr.ph ], [ %add, %for.body97.for.body97_crit_edge ]
  %60 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %61, i32 %i.0272
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !302
  %63 = tail call i32 @llvm.bswap.i32(i32 %62)
  %64 = ptrtoint ptr %regsbak to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regsbak, align 4
  %div = sdiv i32 %i.0272, 4
  %arrayidx99 = getelementptr i32, ptr %65, i32 %div
  %66 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %63, ptr %arrayidx99, align 4
  %add = add i32 %i.0272, 4
  %67 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %len, align 8
  %cmp96 = icmp ult i32 %add, %68
  br i1 %cmp96, label %for.body97.for.body97_crit_edge, label %for.body97.for.end101_crit_edge

for.body97.for.end101_crit_edge:                  ; preds = %for.body97
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end101

for.body97.for.body97_crit_edge:                  ; preds = %for.body97
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body97

for.end101:                                       ; preds = %for.body97.for.end101_crit_edge, %for.end90.for.end101_crit_edge
  %69 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %data, align 8
  %misc = getelementptr inbounds %struct.vop_data, ptr %70, i32 0, i32 3
  %71 = ptrtoint ptr %misc to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %misc, align 4
  tail call fastcc void @vop_reg_set(ptr noundef %vop, ptr noundef %72, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef nonnull @.str.128)
  %73 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %data, align 8
  %common = getelementptr inbounds %struct.vop_data, ptr %74, i32 0, i32 2
  %75 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %common, align 8
  %dsp_blank = getelementptr inbounds %struct.vop_common, ptr %76, i32 0, i32 1
  tail call fastcc void @vop_reg_set(ptr noundef %vop, ptr noundef %dsp_blank, i32 noundef 0, i32 noundef -1, i32 noundef 0, ptr noundef nonnull @.str.129)
  %77 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %data, align 8
  %win_size273 = getelementptr inbounds %struct.vop_data, ptr %78, i32 0, i32 9
  %79 = ptrtoint ptr %win_size273 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %win_size273, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp106274.not = icmp eq i32 %80, 0
  br i1 %cmp106274.not, label %for.end101.for.end120_crit_edge, label %for.end101.for.body107_crit_edge

for.end101.for.body107_crit_edge:                 ; preds = %for.end101
  br label %for.body107

for.end101.for.end120_crit_edge:                  ; preds = %for.end101
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end120

for.body107:                                      ; preds = %for.body107.for.body107_crit_edge, %for.end101.for.body107_crit_edge
  %i.1275 = phi i32 [ %inc119, %for.body107.for.body107_crit_edge ], [ 0, %for.end101.for.body107_crit_edge ]
  %arrayidx108 = getelementptr %struct.vop, ptr %vop, i32 0, i32 24, i32 %i.1275
  %data110 = getelementptr %struct.vop, ptr %vop, i32 0, i32 24, i32 %i.1275, i32 1
  %81 = ptrtoint ptr %data110 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %data110, align 8
  %mul = shl i32 %i.1275, 1
  %add111 = or i32 %mul, 1
  %phy = getelementptr inbounds %struct.vop_win_data, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %phy, align 4
  %channel112 = getelementptr inbounds %struct.vop_win_phy, ptr %84, i32 0, i32 22
  %85 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %82, align 4
  %add113 = shl i32 %i.1275, 5
  %shl114 = add i32 %add113, 32
  %or115 = or i32 %shl114, %add111
  tail call fastcc void @vop_reg_set(ptr noundef %vop, ptr noundef %channel112, i32 noundef %86, i32 noundef -1, i32 noundef %or115, ptr noundef nonnull @.str.130)
  tail call fastcc void @vop_win_disable(ptr noundef %vop, ptr noundef %arrayidx108)
  %87 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %phy, align 4
  %gate = getelementptr inbounds %struct.vop_win_phy, ptr %88, i32 0, i32 5
  %89 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %82, align 4
  tail call fastcc void @vop_reg_set(ptr noundef %vop, ptr noundef %gate, i32 noundef %90, i32 noundef -1, i32 noundef 1, ptr noundef nonnull @.str.131)
  %inc119 = add nuw i32 %i.1275, 1
  %91 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %data, align 8
  %win_size = getelementptr inbounds %struct.vop_data, ptr %92, i32 0, i32 9
  %93 = ptrtoint ptr %win_size to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %win_size, align 4
  %cmp106 = icmp ult i32 %inc119, %94
  br i1 %cmp106, label %for.body107.for.body107_crit_edge, label %for.body107.for.end120_crit_edge

for.body107.for.end120_crit_edge:                 ; preds = %for.body107
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end120

for.body107.for.body107_crit_edge:                ; preds = %for.body107
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body107

for.end120:                                       ; preds = %for.body107.for.end120_crit_edge, %for.end101.for.end120_crit_edge
  %.lcssa = phi ptr [ %78, %for.end101.for.end120_crit_edge ], [ %92, %for.body107.for.end120_crit_edge ]
  %common.i = getelementptr inbounds %struct.vop_data, ptr %.lcssa, i32 0, i32 2
  %95 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %common.i, align 8
  tail call fastcc void @vop_reg_set(ptr noundef %vop, ptr noundef %96, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef nonnull @.str.73) #8
  %97 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dev, align 8
  %call.i.i250 = tail call ptr @__devm_reset_control_get(ptr noundef %98, ptr noundef nonnull @.str.132, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %dclk_rst = getelementptr inbounds %struct.vop, ptr %vop, i32 0, i32 22
  %99 = ptrtoint ptr %dclk_rst to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %call.i.i250, ptr %dclk_rst, align 8
  %cmp.i251 = icmp ugt ptr %call.i.i250, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i251, label %if.then125, label %if.end129

if.then125:                                       ; preds = %for.end120
  call void @__sanitizer_cov_trace_pc() #10
  %100 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %101, ptr noundef nonnull @.str, ptr noundef nonnull @.str.133) #8
  %102 = ptrtoint ptr %dclk_rst to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dclk_rst, align 8
  br label %err_disable_aclk

if.end129:                                        ; preds = %for.end120
  call void @__sanitizer_cov_trace_pc() #10
  %call131 = tail call i32 @reset_control_assert(ptr noundef %call.i.i250) #8
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #8
  %104 = ptrtoint ptr %dclk_rst to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dclk_rst, align 8
  %call133 = tail call i32 @reset_control_deassert(ptr noundef %105) #8
  %106 = ptrtoint ptr %hclk to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %hclk, align 4
  tail call void @clk_disable(ptr noundef %107) #8
  %108 = ptrtoint ptr %aclk to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %aclk, align 4
  tail call void @clk_disable(ptr noundef %109) #8
  %is_enabled = getelementptr inbounds %struct.vop, ptr %vop, i32 0, i32 3
  %110 = ptrtoint ptr %is_enabled to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 0, ptr %is_enabled, align 8
  %111 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dev, align 8
  %call.i252 = tail call i32 @__pm_runtime_idle(ptr noundef %112, i32 noundef 4) #8
  br label %cleanup

err_disable_aclk:                                 ; preds = %if.then125, %if.then50
  %ret.0.in = phi ptr [ %call.i.i, %if.then50 ], [ %103, %if.then125 ]
  %ret.0 = ptrtoint ptr %ret.0.in to i32
  %113 = ptrtoint ptr %aclk to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %aclk, align 4
  tail call void @clk_disable(ptr noundef %114) #8
  tail call void @clk_unprepare(ptr noundef %114) #8
  br label %err_disable_hclk

err_disable_hclk:                                 ; preds = %err_disable_aclk, %if.then44
  %ret.1 = phi i32 [ %retval.0.i247, %if.then44 ], [ %ret.0, %err_disable_aclk ]
  %115 = ptrtoint ptr %hclk to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %hclk, align 4
  tail call void @clk_disable(ptr noundef %116) #8
  tail call void @clk_unprepare(ptr noundef %116) #8
  br label %err_unprepare_dclk

err_unprepare_dclk:                               ; preds = %err_disable_hclk, %if.then38
  %ret.2 = phi i32 [ %retval.0.i, %if.then38 ], [ %ret.1, %err_disable_hclk ]
  %117 = ptrtoint ptr %dclk to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dclk, align 8
  tail call void @clk_unprepare(ptr noundef %118) #8
  br label %err_put_pm_runtime

err_put_pm_runtime:                               ; preds = %err_unprepare_dclk, %if.then32
  %ret.3 = phi i32 [ %call30, %if.then32 ], [ %ret.2, %err_unprepare_dclk ]
  %119 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %dev, align 8
  %call.i253 = tail call i32 @__pm_runtime_idle(ptr noundef %120, i32 noundef 4) #8
  br label %cleanup

cleanup:                                          ; preds = %err_put_pm_runtime, %if.end129, %if.then26, %if.then19, %if.then10, %if.then
  %retval.0 = phi i32 [ %7, %if.then ], [ %13, %if.then10 ], [ %19, %if.then19 ], [ %call.i, %if.then26 ], [ %ret.3, %err_put_pm_runtime ], [ 0, %if.end129 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vop_isr(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.vop, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %call.i = tail call i32 @pm_runtime_get_if_active(ptr noundef %1, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %hclk.i = getelementptr inbounds %struct.vop, ptr %data, i32 0, i32 19
  %2 = ptrtoint ptr %hclk.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hclk.i, align 4
  %call.i89 = tail call i32 @clk_enable(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i89)
  %cmp.i = icmp slt i32 %call.i89, 0
  br i1 %cmp.i, label %if.end.if.then4_crit_edge, label %if.end.i

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

if.end.i:                                         ; preds = %if.end
  %aclk.i = getelementptr inbounds %struct.vop, ptr %data, i32 0, i32 21
  %4 = ptrtoint ptr %aclk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %aclk.i, align 4
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp slt i32 %call1.i, 0
  br i1 %cmp2.i, label %err_disable_hclk.i, label %if.end10

err_disable_hclk.i:                               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %hclk.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hclk.i, align 4
  tail call void @clk_disable(ptr noundef %7) #8
  br label %if.then4

if.then4:                                         ; preds = %err_disable_hclk.i, %if.end.if.then4_crit_edge
  %call5 = tail call i32 @___ratelimit(ptr noundef nonnull @vop_isr._rs, ptr noundef nonnull @__func__.vop_isr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then4.out_crit_edge, label %if.then7

if.then4.out_crit_edge:                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then7:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %9, ptr noundef nonnull @.str, ptr noundef nonnull @.str.135) #8
  br label %out

if.end10:                                         ; preds = %if.end.i
  %irq_lock = getelementptr inbounds %struct.vop, ptr %data, i32 0, i32 16
  tail call void @_raw_spin_lock(ptr noundef %irq_lock) #8
  %data11 = getelementptr inbounds %struct.vop, ptr %data, i32 0, i32 10
  %10 = ptrtoint ptr %data11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data11, align 8
  %intr = getelementptr inbounds %struct.vop_data, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %intr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %intr, align 4
  %status = getelementptr inbounds %struct.vop_intr, ptr %13, i32 0, i32 5
  %offset.i.i = getelementptr inbounds %struct.vop_intr, ptr %13, i32 0, i32 5, i32 1
  %14 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %offset.i.i, align 4
  %conv.i.i = zext i16 %15 to i32
  %regs.i.i.i = getelementptr inbounds %struct.vop, ptr %data, i32 0, i32 12
  %16 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %17, i32 %conv.i.i
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #8, !srcloc !302
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !303
  %shift.i.i = getelementptr inbounds %struct.vop_intr, ptr %13, i32 0, i32 5, i32 2
  %20 = ptrtoint ptr %shift.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %shift.i.i, align 2
  %conv1.i.i = zext i8 %21 to i32
  %shr.i.i = lshr i32 %19, %conv1.i.i
  %22 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %status, align 4
  %and.i.i = and i32 %shr.i.i, %23
  %24 = ptrtoint ptr %data11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data11, align 8
  %intr.i = getelementptr inbounds %struct.vop_data, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %intr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %intr.i, align 4
  %nintrs.i = getelementptr inbounds %struct.vop_intr, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %nintrs.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nintrs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp17.not.i = icmp eq i32 %29, 0
  br i1 %cmp17.not.i, label %if.end10.out_disable.critedge_crit_edge, label %for.body.lr.ph.i

if.end10.out_disable.critedge_crit_edge:          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_disable.critedge

for.body.lr.ph.i:                                 ; preds = %if.end10
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %27, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %ret.020.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %ret.1.i, %for.inc.i.for.body.i_crit_edge ]
  %i.018.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %31, i32 %i.018.i
  %32 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %33, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %shl.i = shl nuw i32 1, %i.018.i
  %and3.i = and i32 %and.i.i, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool4.not.i = icmp eq i32 %and3.i, 0
  %or.i = select i1 %tobool4.not.i, i32 0, i32 %33
  %spec.select.i = or i32 %or.i, %ret.020.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i, %for.body.i.for.inc.i_crit_edge
  %ret.1.i = phi i32 [ %ret.020.i, %for.body.i.for.inc.i_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %inc.i = add nuw i32 %i.018.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %29
  br i1 %exitcond.not.i, label %vop_get_intr_type.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

vop_get_intr_type.exit:                           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %tobool13.not = icmp eq i32 %ret.1.i, 0
  br i1 %tobool13.not, label %vop_get_intr_type.exit.out_disable.critedge_crit_edge, label %for.body.preheader

vop_get_intr_type.exit.out_disable.critedge_crit_edge: ; preds = %vop_get_intr_type.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_disable.critedge

for.body.preheader:                               ; preds = %vop_get_intr_type.exit
  %34 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %27, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %mask.0103 = phi i32 [ %mask.1, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %reg.0102 = phi i32 [ %reg.1, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %i.0101 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr i32, ptr %35, i32 %i.0101
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx, align 4
  %and = and i32 %37, %ret.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  %shl = shl nuw i32 1, %i.0101
  %or = select i1 %tobool19.not, i32 0, i32 %shl
  %reg.1 = or i32 %or, %reg.0102
  %mask.1 = or i32 %or, %mask.0103
  %inc = add nuw i32 %i.0101, 1
  %exitcond.not = icmp eq i32 %inc, %29
  br i1 %exitcond.not, label %if.end30, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end30:                                         ; preds = %for.body
  %clear = getelementptr inbounds %struct.vop_intr, ptr %27, i32 0, i32 4
  tail call fastcc void @vop_reg_set(ptr noundef %data, ptr noundef %clear, i32 noundef 0, i32 noundef %mask.1, i32 noundef %reg.1, ptr noundef nonnull @.str.3)
  tail call void @_raw_spin_unlock(ptr noundef %irq_lock) #8
  %and31 = and i32 %ret.1.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end30.if.end35_crit_edge, label %if.then33

if.end30.if.end35_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %dsp_hold_completion = getelementptr inbounds %struct.vop, ptr %data, i32 0, i32 4
  tail call void @complete(ptr noundef %dsp_hold_completion) #8
  %and34 = and i32 %ret.1.i, -2
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.end30.if.end35_crit_edge
  %active_irqs.0 = phi i32 [ %and34, %if.then33 ], [ %ret.1.i, %if.end30.if.end35_crit_edge ]
  %ret.0 = phi i32 [ 1, %if.then33 ], [ 0, %if.end30.if.end35_crit_edge ]
  %and36 = and i32 %active_irqs.0, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end35.if.end40_crit_edge, label %if.then38

if.end35.if.end40_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  %line_flag_completion = getelementptr inbounds %struct.vop, ptr %data, i32 0, i32 9
  tail call void @complete(ptr noundef %line_flag_completion) #8
  %and39 = and i32 %active_irqs.0, -5
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.end35.if.end40_crit_edge
  %active_irqs.1 = phi i32 [ %and39, %if.then38 ], [ %active_irqs.0, %if.end35.if.end40_crit_edge ]
  %ret.1 = phi i32 [ 1, %if.then38 ], [ %ret.0, %if.end35.if.end40_crit_edge ]
  %and41 = and i32 %active_irqs.1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end40.if.end46_crit_edge, label %if.then43

if.end40.if.end46_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

if.then43:                                        ; preds = %if.end40
  %call44 = tail call zeroext i1 @drm_crtc_handle_vblank(ptr noundef %data) #8
  %drm_dev.i = getelementptr inbounds %struct.vop, ptr %data, i32 0, i32 2
  %38 = ptrtoint ptr %drm_dev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %drm_dev.i, align 4
  %event_lock.i = getelementptr inbounds %struct.drm_device, ptr %39, i32 0, i32 28
  tail call void @_raw_spin_lock(ptr noundef %event_lock.i) #8
  %event.i = getelementptr inbounds %struct.vop, ptr %data, i32 0, i32 6
  %40 = ptrtoint ptr %event.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %event.i, align 8
  %tobool.not.i90 = icmp eq ptr %41, null
  br i1 %tobool.not.i90, label %if.then43.if.end.i92_crit_edge, label %if.then.i

if.then43.if.end.i92_crit_edge:                   ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i92

if.then.i:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @drm_crtc_send_vblank_event(ptr noundef %data, ptr noundef nonnull %41) #8
  tail call void @drm_crtc_vblank_put(ptr noundef %data) #8
  %42 = ptrtoint ptr %event.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %event.i, align 8
  br label %if.end.i92

if.end.i92:                                       ; preds = %if.then.i, %if.then43.if.end.i92_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %event_lock.i) #8
  %pending.i = getelementptr inbounds %struct.vop, ptr %data, i32 0, i32 8
  %call.i91 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %pending.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i91)
  %tobool5.not.i = icmp eq i32 %call.i91, 0
  br i1 %tobool5.not.i, label %if.end.i92.vop_handle_vblank.exit_crit_edge, label %if.then6.i

if.end.i92.vop_handle_vblank.exit_crit_edge:      ; preds = %if.end.i92
  call void @__sanitizer_cov_trace_pc() #10
  br label %vop_handle_vblank.exit

if.then6.i:                                       ; preds = %if.end.i92
  call void @__sanitizer_cov_trace_pc() #10
  %fb_unref_work.i = getelementptr inbounds %struct.vop, ptr %data, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_unbound_wq to i32))
  %43 = load ptr, ptr @system_unbound_wq, align 4
  tail call void @drm_flip_work_commit(ptr noundef %fb_unref_work.i, ptr noundef %43) #8
  br label %vop_handle_vblank.exit

vop_handle_vblank.exit:                           ; preds = %if.then6.i, %if.end.i92.vop_handle_vblank.exit_crit_edge
  %and45 = and i32 %active_irqs.1, -3
  br label %if.end46

if.end46:                                         ; preds = %vop_handle_vblank.exit, %if.end40.if.end46_crit_edge
  %active_irqs.2 = phi i32 [ %and45, %vop_handle_vblank.exit ], [ %active_irqs.1, %if.end40.if.end46_crit_edge ]
  %ret.2 = phi i32 [ 1, %vop_handle_vblank.exit ], [ %ret.1, %if.end40.if.end46_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %active_irqs.2)
  %tobool47.not = icmp eq i32 %active_irqs.2, 0
  br i1 %tobool47.not, label %if.end46.out_disable_crit_edge, label %if.then48

if.end46.out_disable_crit_edge:                   ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_disable

if.then48:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  %44 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %45, ptr noundef nonnull @.str, ptr noundef nonnull @.str.136, i32 noundef %active_irqs.2) #8
  br label %out_disable

out_disable.critedge:                             ; preds = %vop_get_intr_type.exit.out_disable.critedge_crit_edge, %if.end10.out_disable.critedge_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %irq_lock) #8
  br label %out_disable

out_disable:                                      ; preds = %out_disable.critedge, %if.then48, %if.end46.out_disable_crit_edge
  %ret.3 = phi i32 [ %ret.2, %if.then48 ], [ %ret.2, %if.end46.out_disable_crit_edge ], [ 0, %out_disable.critedge ]
  %46 = ptrtoint ptr %aclk.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %aclk.i, align 4
  tail call void @clk_disable(ptr noundef %47) #8
  %48 = ptrtoint ptr %hclk.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hclk.i, align 4
  tail call void @clk_disable(ptr noundef %49) #8
  br label %out

out:                                              ; preds = %out_disable, %if.then7, %if.then4.out_crit_edge
  %ret.4 = phi i32 [ 0, %if.then7 ], [ 0, %if.then4.out_crit_edge ], [ %ret.3, %out_disable ]
  %50 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev, align 8
  %call.i95 = tail call i32 @__pm_runtime_idle(ptr noundef %51, i32 noundef 5) #8
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.4, %out ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rockchip_rgb_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vop_destroy_crtc(ptr noundef %vop) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %drm_dev2 = getelementptr inbounds %struct.vop, ptr %vop, i32 0, i32 2
  %0 = ptrtoint ptr %drm_dev2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drm_dev2, align 4
  tail call void @drm_self_refresh_helper_cleanup(ptr noundef %vop) #8
  %port = getelementptr inbounds %struct.drm_crtc, ptr %vop, i32 0, i32 1
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %port, align 4
  tail call void @of_node_put(ptr noundef %3) #8
  %plane_list = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 30, i32 18
  %4 = ptrtoint ptr %plane_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %plane_list, align 4
  %cmp.not25 = icmp eq ptr %5, %plane_list
  br i1 %cmp.not25, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in26 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %5, %entry.for.body_crit_edge ]
  %plane.0 = getelementptr i8, ptr %.pn.in26, i32 -4
  %6 = ptrtoint ptr %.pn.in26 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load ptr, ptr %.pn.in26, align 4
  tail call void @drm_plane_cleanup(ptr noundef %plane.0) #8
  %cmp.not = icmp eq ptr %.pn, %plane_list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @drm_crtc_cleanup(ptr noundef %vop) #8
  %fb_unref_work = getelementptr inbounds %struct.vop, ptr %vop, i32 0, i32 7
  tail call void @drm_flip_work_cleanup(ptr noundef %fb_unref_work) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_universal_plane_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_init_with_planes(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_crtc_set_gamma_size(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_enable_color_mgmt(ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_flip_work_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vop_fb_unref_worker(ptr noundef %work, ptr noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -1068
  tail call void @drm_crtc_vblank_put(ptr noundef %add.ptr) #8
  %base.i = getelementptr inbounds %struct.drm_framebuffer, ptr %val, i32 0, i32 2
  tail call void @drm_mode_object_put(ptr noundef %base.i) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_self_refresh_helper_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_plane_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_update_plane(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_disable_plane(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vop_plane_destroy(ptr noundef %plane) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @drm_plane_cleanup(ptr noundef %plane) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_plane_reset(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_plane_duplicate_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_plane_destroy_state(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @rockchip_mod_supported(ptr nocapture noundef readnone %plane, i32 noundef %format, i64 noundef %modifier) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_switch(i64 %modifier, ptr @__sancov_gen_cov_switch_values.137)
  switch i64 %modifier, label %if.then1 [
    i64 0, label %entry.return_crit_edge
    i64 576460752303423569, label %if.end2
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.20, i64 noundef %modifier) #8
  br label %return

if.end2:                                          ; preds = %entry
  %0 = zext i32 %format to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.138)
  switch i32 %format, label %land.end.i [
    i32 875713112, label %if.end2.return_crit_edge
    i32 875713089, label %if.end2.return_crit_edge7
    i32 875709016, label %if.end2.return_crit_edge8
    i32 875708993, label %if.end2.return_crit_edge9
    i32 875710290, label %if.end2.return_crit_edge10
    i32 875710274, label %if.end2.return_crit_edge11
    i32 909199186, label %if.end2.return_crit_edge12
    i32 909199170, label %if.end2.return_crit_edge13
  ]

if.end2.return_crit_edge13:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end2.return_crit_edge12:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end2.return_crit_edge11:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end2.return_crit_edge10:                       ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end2.return_crit_edge9:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end2.return_crit_edge8:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end2.return_crit_edge7:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end2.return_crit_edge:                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

land.end.i:                                       ; preds = %if.end2
  %.b16.i = load i1, ptr @vop_convert_afbc_format.__already_done, align 1
  br i1 %.b16.i, label %land.end.i.return_crit_edge, label %if.then.i, !prof !307

land.end.i.return_crit_edge:                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then.i:                                        ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @vop_convert_afbc_format.__already_done, align 1
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %format) #11
  br label %return

return:                                           ; preds = %if.then.i, %land.end.i.return_crit_edge, %if.end2.return_crit_edge, %if.end2.return_crit_edge7, %if.end2.return_crit_edge8, %if.end2.return_crit_edge9, %if.end2.return_crit_edge10, %if.end2.return_crit_edge11, %if.end2.return_crit_edge12, %if.end2.return_crit_edge13, %if.then1, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %if.then1 ], [ true, %entry.return_crit_edge ], [ true, %if.end2.return_crit_edge ], [ true, %if.end2.return_crit_edge7 ], [ true, %if.end2.return_crit_edge8 ], [ true, %if.end2.return_crit_edge9 ], [ false, %land.end.i.return_crit_edge ], [ false, %if.then.i ], [ true, %if.end2.return_crit_edge10 ], [ true, %if.end2.return_crit_edge11 ], [ true, %if.end2.return_crit_edge12 ], [ true, %if.end2.return_crit_edge13 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @vop_convert_afbc_format(i32 noundef %format) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %format to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.139)
  switch i32 %format, label %land.end [
    i32 875713112, label %entry.return_crit_edge
    i32 875713089, label %entry.return_crit_edge17
    i32 875709016, label %entry.return_crit_edge18
    i32 875708993, label %entry.return_crit_edge19
    i32 875710290, label %entry.sw.bb1_crit_edge
    i32 875710274, label %entry.sw.bb1_crit_edge20
    i32 909199186, label %entry.sw.bb2_crit_edge
    i32 909199170, label %entry.sw.bb2_crit_edge21
  ]

entry.sw.bb2_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2

entry.sw.bb1_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1

entry.return_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge20
  br label %return

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge21
  br label %return

land.end:                                         ; preds = %entry
  %.b16 = load i1, ptr @vop_convert_afbc_format.__already_done, align 1
  br i1 %.b16, label %land.end.return_crit_edge, label %if.then, !prof !307

land.end.return_crit_edge:                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then:                                          ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @vop_convert_afbc_format.__already_done, align 1
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %format) #11
  br label %return

return:                                           ; preds = %if.then, %land.end.return_crit_edge, %sw.bb2, %sw.bb1, %entry.return_crit_edge, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19
  %retval.0 = phi i32 [ 0, %sw.bb2 ], [ 4, %sw.bb1 ], [ 5, %entry.return_crit_edge ], [ 5, %entry.return_crit_edge17 ], [ 5, %entry.return_crit_edge18 ], [ 5, %entry.return_crit_edge19 ], [ -22, %if.then ], [ -22, %land.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vop_plane_atomic_check(ptr nocapture noundef readonly %plane, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %crtc1 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %crtc1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %crtc1, align 4
  %fb2 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %fb2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fb2, align 4
  %data = getelementptr inbounds %struct.vop_win, ptr %plane, i32 0, i32 1
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 8
  %phy = getelementptr inbounds %struct.vop_win_data, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phy, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %tobool.not = icmp eq ptr %15, null
  %cond = select i1 %tobool.not, i32 65536, i32 8192
  %cond6 = select i1 %tobool.not, i32 65536, i32 524288
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %entry.cleanup129_crit_edge, label %lor.lhs.false

entry.cleanup129_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup129

lor.lhs.false:                                    ; preds = %entry
  %tobool8.not = icmp eq ptr %9, null
  br i1 %tobool8.not, label %do.end, label %if.end32, !prof !304

do.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 799, i32 noundef 9, ptr noundef null) #8
  br label %cleanup129

if.end32:                                         ; preds = %lor.lhs.false
  %crtcs.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  %16 = ptrtoint ptr %crtcs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %crtcs.i, align 4
  %index.i.i172 = getelementptr inbounds %struct.drm_crtc, ptr %7, i32 0, i32 8
  %18 = ptrtoint ptr %index.i.i172 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %index.i.i172, align 4
  %state1.i = getelementptr %struct.__drm_crtcs_state, ptr %17, i32 %19, i32 1
  %20 = ptrtoint ptr %state1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %state1.i, align 4
  %tobool35.not = icmp eq ptr %21, null
  br i1 %tobool35.not, label %do.end53, label %if.end69, !prof !304

do.end53:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 804, i32 noundef 9, ptr noundef null) #8
  br label %cleanup129

if.end69:                                         ; preds = %if.end32
  %call70 = tail call i32 @drm_atomic_helper_check_plane_state(ptr noundef %5, ptr noundef nonnull %21, i32 noundef %cond, i32 noundef %cond6, i1 noundef zeroext true, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.end73, label %if.end69.cleanup129_crit_edge

if.end69.cleanup129_crit_edge:                    ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup129

if.end73:                                         ; preds = %if.end69
  %visible = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 22
  %22 = ptrtoint ptr %visible to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %visible, align 4, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool74.not = icmp eq i8 %23, 0
  br i1 %tobool74.not, label %if.end73.cleanup129_crit_edge, label %if.end76

if.end73.cleanup129_crit_edge:                    ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup129

if.end76:                                         ; preds = %if.end73
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %9, i32 0, i32 4
  %24 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %format, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.140)
  switch i32 %27, label %vop_convert_format.exit [
    i32 875713112, label %if.end76.if.end80_crit_edge
    i32 875713089, label %if.end76.if.end80_crit_edge177
    i32 875709016, label %if.end76.if.end80_crit_edge178
    i32 875708993, label %if.end76.if.end80_crit_edge179
    i32 875710290, label %if.end76.if.end80_crit_edge180
    i32 875710274, label %if.end76.if.end80_crit_edge181
    i32 909199186, label %if.end76.if.end80_crit_edge182
    i32 909199170, label %if.end76.if.end80_crit_edge183
    i32 842094158, label %if.end76.if.end80_crit_edge184
    i32 909203022, label %if.end76.if.end80_crit_edge185
    i32 875714126, label %if.end76.if.end80_crit_edge186
  ]

if.end76.if.end80_crit_edge186:                   ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end80

if.end76.if.end80_crit_edge185:                   ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end80

if.end76.if.end80_crit_edge184:                   ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end80

if.end76.if.end80_crit_edge183:                   ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end80

if.end76.if.end80_crit_edge182:                   ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end80

if.end76.if.end80_crit_edge181:                   ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end80

if.end76.if.end80_crit_edge180:                   ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end80

if.end76.if.end80_crit_edge179:                   ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end80

if.end76.if.end80_crit_edge178:                   ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end80

if.end76.if.end80_crit_edge177:                   ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end80

if.end76.if.end80_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end80

vop_convert_format.exit:                          ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.28, i32 noundef %27) #8
  br label %cleanup129

if.end80:                                         ; preds = %if.end76.if.end80_crit_edge, %if.end76.if.end80_crit_edge177, %if.end76.if.end80_crit_edge178, %if.end76.if.end80_crit_edge179, %if.end76.if.end80_crit_edge180, %if.end76.if.end80_crit_edge181, %if.end76.if.end80_crit_edge182, %if.end76.if.end80_crit_edge183, %if.end76.if.end80_crit_edge184, %if.end76.if.end80_crit_edge185, %if.end76.if.end80_crit_edge186
  %29 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %format, align 8
  %is_yuv = getelementptr inbounds %struct.drm_format_info, ptr %30, i32 0, i32 9
  %31 = ptrtoint ptr %is_yuv to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %is_yuv, align 1, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool82.not = icmp eq i8 %32, 0
  br i1 %tobool82.not, label %if.end80.if.end92_crit_edge, label %land.lhs.true

if.end80.if.end92_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92

land.lhs.true:                                    ; preds = %if.end80
  %src = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 20
  %33 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %src, align 4
  %35 = and i32 %34, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool83.not = icmp eq i32 %35, 0
  br i1 %tobool83.not, label %land.lhs.true89, label %if.then84

if.then84:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.23) #8
  br label %cleanup129

land.lhs.true89:                                  ; preds = %land.lhs.true
  %rotation = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 14
  %36 = ptrtoint ptr %rotation to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rotation, align 4
  %and = and i32 %37, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool90.not = icmp eq i32 %and, 0
  br i1 %tobool90.not, label %land.lhs.true89.if.end92_crit_edge, label %if.then91

land.lhs.true89.if.end92_crit_edge:               ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92

if.then91:                                        ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.24) #8
  br label %cleanup129

if.end92:                                         ; preds = %land.lhs.true89.if.end92_crit_edge, %if.end80.if.end92_crit_edge
  %modifier = getelementptr inbounds %struct.drm_framebuffer, ptr %9, i32 0, i32 8
  %38 = ptrtoint ptr %modifier to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %modifier, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 576460752303423569, i64 %39)
  %cmp.i = icmp eq i64 %39, 576460752303423569
  br i1 %cmp.i, label %if.then94, label %if.end92.cleanup129_crit_edge

if.end92.cleanup129_crit_edge:                    ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup129

if.then94:                                        ; preds = %if.end92
  %data98 = getelementptr inbounds %struct.vop, ptr %7, i32 0, i32 10
  %40 = ptrtoint ptr %data98 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data98, align 8
  %afbc = getelementptr inbounds %struct.vop_data, ptr %41, i32 0, i32 6
  %42 = ptrtoint ptr %afbc to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %afbc, align 8
  %tobool99.not = icmp eq ptr %43, null
  br i1 %tobool99.not, label %if.then100, label %if.end101

if.then100:                                       ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.25) #8
  br label %cleanup129

if.end101:                                        ; preds = %if.then94
  %44 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %30, align 4
  %call104 = tail call fastcc i32 @vop_convert_afbc_format(i32 noundef %45)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %cmp105 = icmp slt i32 %call104, 0
  br i1 %cmp105, label %if.end101.cleanup129_crit_edge, label %if.end107

if.end101.cleanup129_crit_edge:                   ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup129

if.end107:                                        ; preds = %if.end101
  %src108 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 20
  %46 = ptrtoint ptr %src108 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %src108, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool110.not = icmp eq i32 %47, 0
  br i1 %tobool110.not, label %lor.lhs.false111, label %if.end107.if.then114_crit_edge

if.end107.if.then114_crit_edge:                   ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then114

lor.lhs.false111:                                 ; preds = %if.end107
  %y1 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 20, i32 1
  %48 = ptrtoint ptr %y1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %y1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool113.not = icmp eq i32 %49, 0
  br i1 %tobool113.not, label %if.end119, label %lor.lhs.false111.if.then114_crit_edge

lor.lhs.false111.if.then114_crit_edge:            ; preds = %lor.lhs.false111
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then114

if.then114:                                       ; preds = %lor.lhs.false111.if.then114_crit_edge, %if.end107.if.then114_crit_edge
  %y1118 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 20, i32 1
  %50 = ptrtoint ptr %y1118 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %y1118, align 4
  %offsets = getelementptr inbounds %struct.drm_framebuffer, ptr %9, i32 0, i32 7
  %52 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %offsets, align 8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.26, i32 noundef %47, i32 noundef %51, i32 noundef %53) #8
  br label %cleanup129

if.end119:                                        ; preds = %lor.lhs.false111
  %rotation120 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 14
  %54 = ptrtoint ptr %rotation120 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rotation120, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %55)
  %switch = icmp ult i32 %55, 2
  br i1 %switch, label %if.end119.cleanup129_crit_edge, label %if.then125

if.end119.cleanup129_crit_edge:                   ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup129

if.then125:                                       ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.27, i32 noundef %55) #8
  br label %cleanup129

cleanup129:                                       ; preds = %if.then125, %if.end119.cleanup129_crit_edge, %if.then114, %if.end101.cleanup129_crit_edge, %if.then100, %if.end92.cleanup129_crit_edge, %if.then91, %if.then84, %vop_convert_format.exit, %if.end73.cleanup129_crit_edge, %if.end69.cleanup129_crit_edge, %do.end53, %do.end, %entry.cleanup129_crit_edge
  %retval.1 = phi i32 [ -22, %do.end53 ], [ -22, %if.then84 ], [ -22, %if.then91 ], [ 0, %do.end ], [ 0, %entry.cleanup129_crit_edge ], [ %call70, %if.end69.cleanup129_crit_edge ], [ 0, %if.end73.cleanup129_crit_edge ], [ -22, %vop_convert_format.exit ], [ 0, %if.end119.cleanup129_crit_edge ], [ 0, %if.end92.cleanup129_crit_edge ], [ %call104, %if.end101.cleanup129_crit_edge ], [ -22, %if.then100 ], [ -22, %if.then114 ], [ -22, %if.then125 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vop_plane_atomic_update(ptr noundef %plane, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %crtc1 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %crtc1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %crtc1, align 4
  %data = getelementptr inbounds %struct.vop_win, ptr %plane, i32 0, i32 1
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 8
  %yuv2yuv_data = getelementptr inbounds %struct.vop_win, ptr %plane, i32 0, i32 2
  %10 = ptrtoint ptr %yuv2yuv_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %yuv2yuv_data, align 4
  %fb6 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 2
  %12 = ptrtoint ptr %fb6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fb6, align 4
  %src7 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 20
  %dst = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 21
  %vop8 = getelementptr inbounds %struct.vop_win, ptr %plane, i32 0, i32 3
  %14 = ptrtoint ptr %vop8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vop8, align 8
  %win9 = getelementptr inbounds %struct.vop, ptr %15, i32 0, i32 24
  %sub.ptr.lhs.cast = ptrtoint ptr %plane to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %win9 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 544
  %format10 = getelementptr inbounds %struct.drm_framebuffer, ptr %13, i32 0, i32 4
  %16 = ptrtoint ptr %format10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %format10, align 8
  %is_yuv11 = getelementptr inbounds %struct.drm_format_info, ptr %17, i32 0, i32 9
  %18 = ptrtoint ptr %is_yuv11 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %is_yuv11, align 1, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not = icmp eq i8 %19, 0
  %20 = zext i8 %19 to i32
  %tobool12.not = icmp eq ptr %7, null
  br i1 %tobool12.not, label %do.end, label %if.end36, !prof !304

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 911, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end36:                                         ; preds = %entry
  %is_enabled = getelementptr inbounds %struct.vop, ptr %7, i32 0, i32 3
  %21 = ptrtoint ptr %is_enabled to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %is_enabled, align 8, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool38.not = icmp eq i8 %22, 0
  br i1 %tobool38.not, label %do.end56, label %if.end72, !prof !304

do.end56:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 914, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end72:                                         ; preds = %if.end36
  %visible = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 22
  %23 = ptrtoint ptr %visible to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %visible, align 4, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool73.not = icmp eq i8 %24, 0
  br i1 %tobool73.not, label %if.then74, label %if.end75

if.then74:                                        ; preds = %if.end72
  %old_state.i.i = getelementptr %struct.__drm_planes_state, ptr %1, i32 %3, i32 2
  %25 = ptrtoint ptr %old_state.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %old_state.i.i, align 4
  %crtc.i = getelementptr inbounds %struct.drm_plane_state, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %crtc.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %crtc.i, align 4
  %tobool.not.i = icmp eq ptr %28, null
  br i1 %tobool.not.i, label %if.then74.cleanup_crit_edge, label %if.end.i

if.then74.cleanup_crit_edge:                      ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #10
  %reg_lock.i = getelementptr inbounds %struct.vop, ptr %28, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %reg_lock.i) #8
  tail call fastcc void @vop_win_disable(ptr noundef nonnull %28, ptr noundef %plane) #8
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock.i) #8
  br label %cleanup

if.end75:                                         ; preds = %if.end72
  %obj76 = getelementptr inbounds %struct.drm_framebuffer, ptr %13, i32 0, i32 15
  %29 = ptrtoint ptr %obj76 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %obj76, align 4
  %x2.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 20, i32 2
  %31 = ptrtoint ptr %x2.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %x2.i, align 4
  %33 = ptrtoint ptr %src7 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %src7, align 4
  %sub.i = sub i32 %32, %34
  %shr = ashr i32 %sub.i, 16
  %y2.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 20, i32 3
  %35 = ptrtoint ptr %y2.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %y2.i, align 4
  %y1.i = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 20, i32 1
  %37 = ptrtoint ptr %y1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %y1.i, align 4
  %sub.i521 = sub i32 %36, %38
  %shr82 = ashr i32 %sub.i521, 16
  %sub = add nsw i32 %shr82, -1
  %shl = shl i32 %sub, 16
  %sub83 = add nsw i32 %shr, 65535
  %and = and i32 %sub83, 65535
  %or = or i32 %shl, %and
  %y2.i522 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 21, i32 3
  %39 = ptrtoint ptr %y2.i522 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %y2.i522, align 4
  %y1.i523 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 21, i32 1
  %41 = ptrtoint ptr %y1.i523 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %y1.i523, align 4
  %sub.i524 = sub i32 %40, %42
  %sub85 = shl i32 %sub.i524, 16
  %shl86 = add i32 %sub85, -65536
  %x2.i525 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 21, i32 2
  %43 = ptrtoint ptr %x2.i525 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %x2.i525, align 4
  %45 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dst, align 4
  %sub.i526 = add i32 %44, 65535
  %sub88 = sub i32 %sub.i526, %46
  %and89 = and i32 %sub88, 65535
  %or90 = or i32 %and89, %shl86
  %htotal = getelementptr inbounds %struct.drm_crtc, ptr %7, i32 0, i32 12, i32 4
  %47 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %htotal, align 2
  %conv91 = zext i16 %48 to i32
  %add = add i32 %46, %conv91
  %hsync_start = getelementptr inbounds %struct.drm_crtc, ptr %7, i32 0, i32 12, i32 2
  %49 = ptrtoint ptr %hsync_start to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %hsync_start, align 2
  %conv93 = zext i16 %50 to i32
  %sub94 = sub i32 %add, %conv93
  %vtotal = getelementptr inbounds %struct.drm_crtc, ptr %7, i32 0, i32 12, i32 9
  %51 = ptrtoint ptr %vtotal to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %vtotal, align 4
  %conv96 = zext i16 %52 to i32
  %add97 = add i32 %42, %conv96
  %vsync_start = getelementptr inbounds %struct.drm_crtc, ptr %7, i32 0, i32 12, i32 7
  %53 = ptrtoint ptr %vsync_start to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %vsync_start, align 4
  %conv99 = zext i16 %54 to i32
  %sub100 = sub i32 %add97, %conv99
  %shl101 = shl i32 %sub100, 16
  %and102 = and i32 %sub94, 65535
  %or103 = or i32 %shl101, %and102
  %shr105 = ashr i32 %34, 16
  %55 = getelementptr inbounds %struct.drm_format_info, ptr %17, i32 0, i32 3
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %55, align 2
  %conv108 = zext i8 %57 to i32
  %mul = mul nsw i32 %shr105, %conv108
  %shr110 = ashr i32 %38, 16
  %pitches = getelementptr inbounds %struct.drm_framebuffer, ptr %13, i32 0, i32 6
  %58 = ptrtoint ptr %pitches to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %pitches, align 8
  %mul112 = mul i32 %shr110, %59
  %add113 = add i32 %mul112, %mul
  %dma_addr114 = getelementptr inbounds %struct.rockchip_gem_object, ptr %30, i32 0, i32 3
  %60 = ptrtoint ptr %dma_addr114 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %dma_addr114, align 8
  %add115 = add i32 %add113, %61
  %offsets = getelementptr inbounds %struct.drm_framebuffer, ptr %13, i32 0, i32 7
  %62 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %offsets, align 8
  %add117 = add i32 %add115, %63
  %rotation = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 14
  %64 = ptrtoint ptr %rotation to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %rotation, align 4
  %and118 = and i32 %65, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and118)
  %tobool119.not = icmp eq i32 %and118, 0
  %mul124 = mul i32 %59, %sub
  %add125 = select i1 %tobool119.not, i32 0, i32 %mul124
  %dma_addr.0 = add i32 %add117, %add125
  %66 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %17, align 4
  %68 = zext i32 %67 to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.141)
  switch i32 %67, label %sw.default.i [
    i32 875713112, label %if.end75.vop_convert_format.exit_crit_edge
    i32 875713089, label %if.end75.vop_convert_format.exit_crit_edge650
    i32 875709016, label %if.end75.vop_convert_format.exit_crit_edge651
    i32 875708993, label %if.end75.vop_convert_format.exit_crit_edge652
    i32 875710290, label %if.end75.sw.bb1.i_crit_edge
    i32 875710274, label %if.end75.sw.bb1.i_crit_edge653
    i32 909199186, label %if.end75.sw.bb2.i_crit_edge
    i32 909199170, label %if.end75.sw.bb2.i_crit_edge654
    i32 842094158, label %sw.bb3.i
    i32 909203022, label %sw.bb4.i
    i32 875714126, label %sw.bb5.i
  ]

if.end75.sw.bb2.i_crit_edge654:                   ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2.i

if.end75.sw.bb2.i_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2.i

if.end75.sw.bb1.i_crit_edge653:                   ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i

if.end75.sw.bb1.i_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i

if.end75.vop_convert_format.exit_crit_edge652:    ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %vop_convert_format.exit

if.end75.vop_convert_format.exit_crit_edge651:    ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %vop_convert_format.exit

if.end75.vop_convert_format.exit_crit_edge650:    ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %vop_convert_format.exit

if.end75.vop_convert_format.exit_crit_edge:       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %vop_convert_format.exit

sw.bb1.i:                                         ; preds = %if.end75.sw.bb1.i_crit_edge, %if.end75.sw.bb1.i_crit_edge653
  br label %vop_convert_format.exit

sw.bb2.i:                                         ; preds = %if.end75.sw.bb2.i_crit_edge, %if.end75.sw.bb2.i_crit_edge654
  br label %vop_convert_format.exit

sw.bb3.i:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %vop_convert_format.exit

sw.bb4.i:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %vop_convert_format.exit

sw.bb5.i:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %vop_convert_format.exit

sw.default.i:                                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.28, i32 noundef %67) #8
  br label %vop_convert_format.exit

vop_convert_format.exit:                          ; preds = %sw.default.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %if.end75.vop_convert_format.exit_crit_edge, %if.end75.vop_convert_format.exit_crit_edge650, %if.end75.vop_convert_format.exit_crit_edge651, %if.end75.vop_convert_format.exit_crit_edge652
  %retval.0.i = phi i32 [ -22, %sw.default.i ], [ 6, %sw.bb5.i ], [ 5, %sw.bb4.i ], [ 4, %sw.bb3.i ], [ 2, %sw.bb2.i ], [ 1, %sw.bb1.i ], [ 0, %if.end75.vop_convert_format.exit_crit_edge ], [ 0, %if.end75.vop_convert_format.exit_crit_edge650 ], [ 0, %if.end75.vop_convert_format.exit_crit_edge651 ], [ 0, %if.end75.vop_convert_format.exit_crit_edge652 ]
  %reg_lock = getelementptr inbounds %struct.vop, ptr %7, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #8
  %modifier = getelementptr inbounds %struct.drm_framebuffer, ptr %13, i32 0, i32 8
  %69 = ptrtoint ptr %modifier to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %modifier, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 576460752303423569, i64 %70)
  %cmp.i = icmp eq i64 %70, 576460752303423569
  br i1 %cmp.i, label %if.then131, label %vop_convert_format.exit.if.end193_crit_edge

vop_convert_format.exit.if.end193_crit_edge:      ; preds = %vop_convert_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end193

if.then131:                                       ; preds = %vop_convert_format.exit
  %71 = ptrtoint ptr %format10 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %format10, align 8
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %72, align 4
  %75 = zext i32 %74 to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.142)
  switch i32 %74, label %land.end.i [
    i32 875713112, label %if.then131.vop_convert_afbc_format.exit_crit_edge
    i32 875713089, label %if.then131.vop_convert_afbc_format.exit_crit_edge655
    i32 875709016, label %if.then131.vop_convert_afbc_format.exit_crit_edge656
    i32 875708993, label %if.then131.vop_convert_afbc_format.exit_crit_edge657
    i32 875710290, label %if.then131.sw.bb1.i527_crit_edge
    i32 875710274, label %if.then131.sw.bb1.i527_crit_edge658
    i32 909199186, label %if.then131.sw.bb2.i528_crit_edge
    i32 909199170, label %if.then131.sw.bb2.i528_crit_edge659
  ]

if.then131.sw.bb2.i528_crit_edge659:              ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2.i528

if.then131.sw.bb2.i528_crit_edge:                 ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb2.i528

if.then131.sw.bb1.i527_crit_edge658:              ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i527

if.then131.sw.bb1.i527_crit_edge:                 ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1.i527

if.then131.vop_convert_afbc_format.exit_crit_edge657: ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #10
  br label %vop_convert_afbc_format.exit

if.then131.vop_convert_afbc_format.exit_crit_edge656: ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #10
  br label %vop_convert_afbc_format.exit

if.then131.vop_convert_afbc_format.exit_crit_edge655: ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #10
  br label %vop_convert_afbc_format.exit

if.then131.vop_convert_afbc_format.exit_crit_edge: ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #10
  br label %vop_convert_afbc_format.exit

sw.bb1.i527:                                      ; preds = %if.then131.sw.bb1.i527_crit_edge, %if.then131.sw.bb1.i527_crit_edge658
  br label %vop_convert_afbc_format.exit

sw.bb2.i528:                                      ; preds = %if.then131.sw.bb2.i528_crit_edge, %if.then131.sw.bb2.i528_crit_edge659
  br label %vop_convert_afbc_format.exit

land.end.i:                                       ; preds = %if.then131
  %.b16.i = load i1, ptr @vop_convert_afbc_format.__already_done, align 1
  br i1 %.b16.i, label %land.end.i.vop_convert_afbc_format.exit_crit_edge, label %if.then.i, !prof !307

land.end.i.vop_convert_afbc_format.exit_crit_edge: ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vop_convert_afbc_format.exit

if.then.i:                                        ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @vop_convert_afbc_format.__already_done, align 1
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %74) #11
  br label %vop_convert_afbc_format.exit

vop_convert_afbc_format.exit:                     ; preds = %if.then.i, %land.end.i.vop_convert_afbc_format.exit_crit_edge, %sw.bb2.i528, %sw.bb1.i527, %if.then131.vop_convert_afbc_format.exit_crit_edge, %if.then131.vop_convert_afbc_format.exit_crit_edge655, %if.then131.vop_convert_afbc_format.exit_crit_edge656, %if.then131.vop_convert_afbc_format.exit_crit_edge657
  %retval.0.i529 = phi i32 [ 16, %sw.bb2.i528 ], [ 20, %sw.bb1.i527 ], [ 21, %if.then131.vop_convert_afbc_format.exit_crit_edge ], [ 21, %if.then131.vop_convert_afbc_format.exit_crit_edge655 ], [ 21, %if.then131.vop_convert_afbc_format.exit_crit_edge656 ], [ 21, %if.then131.vop_convert_afbc_format.exit_crit_edge657 ], [ -6, %if.then.i ], [ -6, %land.end.i.vop_convert_afbc_format.exit_crit_edge ]
  %data136 = getelementptr inbounds %struct.vop, ptr %7, i32 0, i32 10
  %76 = ptrtoint ptr %data136 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %data136, align 8
  %afbc = getelementptr inbounds %struct.vop_data, ptr %77, i32 0, i32 6
  %78 = ptrtoint ptr %afbc to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %afbc, align 8
  %tobool137.not = icmp eq ptr %79, null
  br i1 %tobool137.not, label %vop_convert_afbc_format.exit.do.body146_crit_edge, label %if.then138

vop_convert_afbc_format.exit.do.body146_crit_edge: ; preds = %vop_convert_afbc_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body146

if.then138:                                       ; preds = %vop_convert_afbc_format.exit
  call void @__sanitizer_cov_trace_pc() #10
  %format141 = getelementptr inbounds %struct.vop_afbc, ptr %79, i32 0, i32 2
  tail call fastcc void @vop_reg_set(ptr noundef nonnull %7, ptr noundef %format141, i32 noundef 0, i32 noundef -1, i32 noundef %retval.0.i529, ptr noundef nonnull @.str.29)
  br label %do.body146

do.body146:                                       ; preds = %if.then138, %vop_convert_afbc_format.exit.do.body146_crit_edge
  %80 = ptrtoint ptr %data136 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %data136, align 8
  %afbc148 = getelementptr inbounds %struct.vop_data, ptr %81, i32 0, i32 6
  %82 = ptrtoint ptr %afbc148 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %afbc148, align 8
  %tobool149.not = icmp eq ptr %83, null
  br i1 %tobool149.not, label %do.body146.do.body156_crit_edge, label %if.then150

do.body146.do.body156_crit_edge:                  ; preds = %do.body146
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body156

if.then150:                                       ; preds = %do.body146
  %hreg_block_split = getelementptr inbounds %struct.vop_afbc, ptr %83, i32 0, i32 3
  %tobool.not.i530 = icmp eq ptr %hreg_block_split, null
  br i1 %tobool.not.i530, label %if.then150.if.then.i531_crit_edge, label %lor.lhs.false.i

if.then150.if.then.i531_crit_edge:                ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i531

lor.lhs.false.i:                                  ; preds = %if.then150
  %84 = ptrtoint ptr %hreg_block_split to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %hreg_block_split, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool2.not.i = icmp eq i32 %85, 0
  br i1 %tobool2.not.i, label %lor.lhs.false.i.if.then.i531_crit_edge, label %if.end.i532

lor.lhs.false.i.if.then.i531_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i531

if.then.i531:                                     ; preds = %lor.lhs.false.i.if.then.i531_crit_edge, %if.then150.if.then.i531_crit_edge
  %dev.i = getelementptr inbounds %struct.vop, ptr %7, i32 0, i32 1
  %86 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %87, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.30) #8
  br label %do.body156

if.end.i532:                                      ; preds = %lor.lhs.false.i
  %offset3.i = getelementptr inbounds %struct.vop_afbc, ptr %83, i32 0, i32 3, i32 1
  %88 = ptrtoint ptr %offset3.i to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %offset3.i, align 4
  %conv.i = zext i16 %89 to i32
  %shift5.i = getelementptr inbounds %struct.vop_afbc, ptr %83, i32 0, i32 3, i32 2
  %90 = ptrtoint ptr %shift5.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %shift5.i, align 2
  %conv6.i = zext i8 %91 to i32
  %write_mask.i = getelementptr inbounds %struct.vop_afbc, ptr %83, i32 0, i32 3, i32 3
  %92 = ptrtoint ptr %write_mask.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %write_mask.i, align 1, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool7.not.i = icmp eq i8 %93, 0
  br i1 %tobool7.not.i, label %if.else.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.end.i532
  call void @__sanitizer_cov_trace_pc() #10
  %add10.i = add nuw nsw i32 %conv6.i, 16
  %shl11.i = shl i32 %85, %add10.i
  br label %if.end20.i

if.else.i:                                        ; preds = %if.end.i532
  call void @__sanitizer_cov_trace_pc() #10
  %regsbak.i = getelementptr inbounds %struct.vop, ptr %7, i32 0, i32 11
  %94 = ptrtoint ptr %regsbak.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %regsbak.i, align 4
  %shr.i646 = lshr i32 %conv.i, 2
  %arrayidx.i = getelementptr i32, ptr %95, i32 %shr.i646
  %96 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx.i, align 4
  %shl12.i = shl i32 %85, %conv6.i
  %neg.i = xor i32 %shl12.i, -1
  %and13.i = and i32 %97, %neg.i
  store i32 %and13.i, ptr %arrayidx.i, align 4
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.else.i, %if.then8.i
  %v.addr.0.i = phi i32 [ %shl11.i, %if.then8.i ], [ %and13.i, %if.else.i ]
  %relaxed.i = getelementptr inbounds %struct.vop_afbc, ptr %83, i32 0, i32 3, i32 4
  %98 = ptrtoint ptr %relaxed.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %relaxed.i, align 4, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool21.not.i = icmp eq i8 %99, 0
  br i1 %tobool21.not.i, label %do.body.i, label %if.then22.i

if.then22.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  %100 = tail call i32 @llvm.bswap.i32(i32 %v.addr.0.i) #8
  %regs.i = getelementptr inbounds %struct.vop, ptr %7, i32 0, i32 12
  %101 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %102, i32 %conv.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %100) #8, !srcloc !305
  br label %do.body156

do.body.i:                                        ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !306
  tail call void @arm_heavy_mb() #8
  %103 = tail call i32 @llvm.bswap.i32(i32 %v.addr.0.i) #8
  %regs24.i = getelementptr inbounds %struct.vop, ptr %7, i32 0, i32 12
  %104 = ptrtoint ptr %regs24.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %regs24.i, align 8
  %add.ptr25.i = getelementptr i8, ptr %105, i32 %conv.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i, i32 %103) #8, !srcloc !305
  br label %do.body156

do.body156:                                       ; preds = %do.body.i, %if.then22.i, %if.then.i531, %do.body146.do.body156_crit_edge
  %106 = ptrtoint ptr %data136 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %data136, align 8
  %afbc158 = getelementptr inbounds %struct.vop_data, ptr %107, i32 0, i32 6
  %108 = ptrtoint ptr %afbc158 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %afbc158, align 8
  %tobool159.not = icmp eq ptr %109, null
  br i1 %tobool159.not, label %do.body156.do.body173_crit_edge, label %if.then160

do.body156.do.body173_crit_edge:                  ; preds = %do.body156
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body173

if.then160:                                       ; preds = %do.body156
  call void @__sanitizer_cov_trace_pc() #10
  %win_sel = getelementptr inbounds %struct.vop_afbc, ptr %109, i32 0, i32 1
  %110 = ptrtoint ptr %vop8 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %vop8, align 8
  %win164 = getelementptr inbounds %struct.vop, ptr %111, i32 0, i32 24
  %sub.ptr.rhs.cast167 = ptrtoint ptr %win164 to i32
  %sub.ptr.sub168 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast167
  %sub.ptr.div169 = sdiv exact i32 %sub.ptr.sub168, 544
  tail call fastcc void @vop_reg_set(ptr noundef nonnull %7, ptr noundef %win_sel, i32 noundef 0, i32 noundef -1, i32 noundef %sub.ptr.div169, ptr noundef nonnull @.str.31)
  br label %do.body173

do.body173:                                       ; preds = %if.then160, %do.body156.do.body173_crit_edge
  %112 = ptrtoint ptr %data136 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %data136, align 8
  %afbc175 = getelementptr inbounds %struct.vop_data, ptr %113, i32 0, i32 6
  %114 = ptrtoint ptr %afbc175 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %afbc175, align 8
  %tobool176.not = icmp eq ptr %115, null
  br i1 %tobool176.not, label %do.body173.do.body183_crit_edge, label %if.then177

do.body173.do.body183_crit_edge:                  ; preds = %do.body173
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body183

if.then177:                                       ; preds = %do.body173
  call void @__sanitizer_cov_trace_pc() #10
  %hdr_ptr = getelementptr inbounds %struct.vop_afbc, ptr %115, i32 0, i32 5
  tail call fastcc void @vop_reg_set(ptr noundef nonnull %7, ptr noundef %hdr_ptr, i32 noundef 0, i32 noundef -1, i32 noundef %dma_addr.0, ptr noundef nonnull @.str.32)
  br label %do.body183

do.body183:                                       ; preds = %if.then177, %do.body173.do.body183_crit_edge
  %116 = ptrtoint ptr %data136 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %data136, align 8
  %afbc185 = getelementptr inbounds %struct.vop_data, ptr %117, i32 0, i32 6
  %118 = ptrtoint ptr %afbc185 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %afbc185, align 8
  %tobool186.not = icmp eq ptr %119, null
  br i1 %tobool186.not, label %do.body183.if.end193_crit_edge, label %if.then187

do.body183.if.end193_crit_edge:                   ; preds = %do.body183
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end193

if.then187:                                       ; preds = %do.body183
  call void @__sanitizer_cov_trace_pc() #10
  %pic_size = getelementptr inbounds %struct.vop_afbc, ptr %119, i32 0, i32 4
  tail call fastcc void @vop_reg_set(ptr noundef nonnull %7, ptr noundef %pic_size, i32 noundef 0, i32 noundef -1, i32 noundef %or, ptr noundef nonnull @.str.33)
  br label %if.end193

if.end193:                                        ; preds = %if.then187, %do.body183.if.end193_crit_edge, %vop_convert_format.exit.if.end193_crit_edge
  %phy = getelementptr inbounds %struct.vop_win_data, ptr %9, i32 0, i32 1
  %120 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %phy, align 4
  %format194 = getelementptr inbounds %struct.vop_win_phy, ptr %121, i32 0, i32 6
  %122 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %9, align 4
  tail call fastcc void @vop_reg_set(ptr noundef nonnull %7, ptr noundef %format194, i32 noundef %123, i32 noundef -1, i32 noundef %retval.0.i, ptr noundef nonnull @.str.29)
  %124 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %phy, align 4
  %yrgb_vir = getelementptr inbounds %struct.vop_win_phy, ptr %125, i32 0, i32 13
  %126 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %9, align 4
  %128 = ptrtoint ptr %pitches to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %pitches, align 8
  %sub200 = add i32 %129, 3
  %div519 = lshr i32 %sub200, 2
  tail call fastcc void @vop_reg_set(ptr noundef nonnull %7, ptr noundef %yrgb_vir, i32 noundef %127, i32 noundef -1, i32 noundef %div519, ptr noundef nonnull @.str.34)
  %130 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %phy, align 4
  %yrgb_mst = getelementptr inbounds %struct.vop_win_phy, ptr %131, i32 0, i32 11
  %132 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %9, align 4
  tail call fastcc void @vop_reg_set(ptr noundef nonnull %7, ptr noundef %yrgb_mst, i32 noundef %133, i32 noundef -1, i32 noundef %dma_addr.0, ptr noundef nonnull @.str.35)
  %tobool204.not = icmp eq ptr %11, null
  br i1 %tobool204.not, label %if.end193.do.end210_crit_edge, label %land.lhs.true

if.end193.do.end210_crit_edge:                    ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end210

land.lhs.true:                                    ; preds = %if.end193
  %y2r_en = getelementptr inbounds %struct.vop_win_yuv2yuv_data, ptr %11, i32 0, i32 2
  %134 = ptrtoint ptr %y2r_en to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %y2r_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %tobool205.not = icmp eq i32 %135, 0
  br i1 %tobool205.not, label %land.lhs.true.do.end210_crit_edge, label %if.then206

land.lhs.true.do.end210_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end210

if.then206:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @vop_reg_set(ptr noundef nonnull %7, ptr noundef %y2r_en, i32 noundef 0, i32 noundef -1, i32 noundef %20, ptr noundef nonnull @.str.36)
  br label %do.end210

do.end210:                                        ; preds = %if.then206, %land.lhs.true.do.end210_crit_edge, %if.end193.do.end210_crit_edge
  %136 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %phy, align 4
  %y_mir_en = getelementptr inbounds %struct.vop_win_phy, ptr %137, i32 0, i32 15
  %138 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %9, align 4
  %140 = ptrtoint ptr %rotation to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %rotation, align 4
  %and214 = lshr i32 %141, 5
  %and214.lobit = and i32 %and214, 1
  tail call fastcc void @vop_reg_set(ptr noundef nonnull %7, ptr noundef %y_mir_en, i32 noundef %139, i32 noundef -1, i32 noundef %and214.lobit, ptr noundef nonnull @.str.37)
  %142 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %phy, align 4
  %x_mir_en = getelementptr inbounds %struct.vop_win_phy, ptr %143, i32 0, i32 16
  %144 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %9, align 4
  %146 = ptrtoint ptr %rotation to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %rotation, align 4
  %and219 = lshr i32 %147, 4
  %and219.lobit = and i32 %and219, 1
  tail call fastcc void @vop_reg_set(ptr noundef nonnull %7, ptr noundef %x_mir_en, i32 noundef %145, i32 noundef -1, i32 noundef %and219.lobit, ptr noundef nonnull @.str.38)
  br i1 %tobool.not, label %do.end210.if.end280_crit_edge, label %if.then223

do.end210.if.end280_crit_edge:                    ; preds = %do.end210
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end280

if.then223:                                       ; preds = %do.end210
  %148 = ptrtoint ptr %format10 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %format10, align 8
  %hsub225 = getelementptr inbounds %struct.drm_format_info, ptr %149, i32 0, i32 6
  %150 = ptrtoint ptr %hsub225 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %hsub225, align 2
  %conv226 = zext i8 %151 to i32
  %vsub228 = getelementptr inbounds %struct.drm_format_info, ptr %149, i32 0, i32 7
  %152 = ptrtoint ptr %vsub228 to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %vsub228, align 1
  %conv229 = zext i8 %153 to i32
  %arrayidx231 = getelementptr %struct.drm_format_info, ptr %149, i32 0, i32 3, i32 0, i32 1
  %154 = ptrtoint ptr %arrayidx231 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %arrayidx231, align 1
  %conv232 = zext i8 %155 to i32
  %arrayidx234 = getelementptr %struct.drm_framebuffer, ptr %13, i32 0, i32 15, i32 1
  %156 = ptrtoint ptr %arrayidx234 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %arrayidx234, align 4
  %158 = ptrtoint ptr %src7 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %src7, align 4
  %shr239 = ashr i32 %159, 16
  %mul240 = mul nsw i32 %shr239, %conv232
  %div241 = sdiv i32 %mul240, %conv226
  %160 = ptrtoint ptr %y1.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %y1.i, align 4
  %shr243 = ashr i32 %161, 16
  %arrayidx245 = getelementptr %struct.drm_framebuffer, ptr %13, i32 0, i32 6, i32 1
  %162 = ptrtoint ptr %arrayidx245 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %arrayidx245, align 4
  %mul246 = mul i32 %shr243, %163
  %div247 = udiv i32 %mul246, %conv229
  %add248 = add i32 %div247, %div241
  %dma_addr249 = getelementptr inbounds %struct.rockchip_gem_object, ptr %157, i32 0, i32 3
  %164 = ptrtoint ptr %dma_addr249 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %dma_addr249, align 8
  %add250 = add i32 %add248, %165
  %arrayidx252 = getelementptr %struct.drm_framebuffer, ptr %13, i32 0, i32 7, i32 1
  %166 = ptrtoint ptr %arrayidx252 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %arrayidx252, align 4
  %add253 = add i32 %add250, %167
  %168 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %phy, align 4
  %uv_vir = getelementptr inbounds %struct.vop_win_phy, ptr %169, i32 0, i32 14
  %170 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %9, align 4
  %sub259 = add i32 %163, 3
  %div260520 = lshr i32 %sub259, 2
  tail call fastcc void @vop_reg_set(ptr noundef nonnull %7, ptr noundef %uv_vir, i32 noundef %171, i32 noundef -1, i32 noundef %div260520, ptr noundef nonnull @.str.39)
  %172 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %phy, align 4
  %uv_mst = getelementptr inbounds %struct.vop_win_phy, ptr %173, i32 0, i32 12
  %174 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %9, align 4
  tail call fastcc void @vop_reg_set(ptr noundef nonnull %7, ptr noundef %uv_mst, i32 noundef %175, i32 noundef -1, i32 noundef %add253, ptr noundef nonnull @.str.40)
  %phy267 = getelementptr inbounds %struct.vop_win_yuv2yuv_data, ptr %11, i32 0, i32 1
  br label %do.body264

do.body264:                                       ; preds = %for.inc.do.body264_crit_edge, %if.then223
  %i.0647 = phi i32 [ 0, %if.then223 ], [ %inc, %for.inc.do.body264_crit_edge ]
  br i1 %tobool204.not, label %do.body264.for.inc_crit_edge, label %land.lhs.true266

do.body264.for.inc_crit_edge:                     ; preds = %do.body264
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true266:                                 ; preds = %do.body264
  %176 = ptrtoint ptr %phy267 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %phy267, align 4
  %arrayidx268 = getelementptr [12 x %struct.vop_reg], ptr %177, i32 0, i32 %i.0647
  %178 = ptrtoint ptr %arrayidx268 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %arrayidx268, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %179)
  %tobool270.not = icmp eq i32 %179, 0
  br i1 %tobool270.not, label %land.lhs.true266.for.inc_crit_edge, label %if.then271

land.lhs.true266.for.inc_crit_edge:               ; preds = %land.lhs.true266
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then271:                                       ; preds = %land.lhs.true266
  call void @__sanitizer_cov_trace_pc() #10
  %180 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %11, align 4
  %arrayidx276 = getelementptr [12 x i32], ptr @bt601_yuv2rgb, i32 0, i32 %i.0647
  %182 = ptrtoint ptr %arrayidx276 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %arrayidx276, align 4
  tail call fastcc void @vop_reg_set(ptr noundef %7, ptr noundef %arrayidx268, i32 noundef %181, i32 noundef -1, i32 noundef %183, ptr noundef nonnull @.str.41)
  br label %for.inc

for.inc:                                          ; preds = %if.then271, %land.lhs.true266.for.inc_crit_edge, %do.body264.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0647, 1
  %exitcond.not = icmp eq i32 %inc, 12
  br i1 %exitcond.not, label %for.inc.if.end280_crit_edge, label %for.inc.do.body264_crit_edge

for.inc.do.body264_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body264

for.inc.if.end280_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end280

if.end280:                                        ; preds = %for.inc.if.end280_crit_edge, %do.end210.if.end280_crit_edge
  %184 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %phy, align 4
  %186 = ptrtoint ptr %185 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %185, align 4
  %tobool282.not = icmp eq ptr %187, null
  br i1 %tobool282.not, label %if.end280.if.end287_crit_edge, label %if.then283

if.end280.if.end287_crit_edge:                    ; preds = %if.end280
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end287

if.then283:                                       ; preds = %if.end280
  %188 = ptrtoint ptr %x2.i525 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %x2.i525, align 4
  %190 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %dst, align 4
  %sub.i534 = sub i32 %189, %191
  %192 = ptrtoint ptr %y2.i522 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %y2.i522, align 4
  %194 = ptrtoint ptr %y1.i523 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %y1.i523, align 4
  %sub.i537 = sub i32 %193, %195
  %196 = ptrtoint ptr %format10 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %format10, align 8
  %hsub.i = getelementptr inbounds %struct.drm_format_info, ptr %197, i32 0, i32 6
  %198 = ptrtoint ptr %hsub.i to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %hsub.i, align 2
  %conv.i538 = zext i8 %199 to i32
  %div.i = udiv i32 %shr, %conv.i538
  %vsub.i = getelementptr inbounds %struct.drm_format_info, ptr %197, i32 0, i32 7
  %200 = ptrtoint ptr %vsub.i to i32
  call void @__asan_load1_noabort(i32 %200)
  %201 = load i8, ptr %vsub.i, align 1
  %conv2.i = zext i8 %201 to i32
  %div3.i = udiv i32 %shr82, %conv2.i
  %is_yuv5.i = getelementptr inbounds %struct.drm_format_info, ptr %197, i32 0, i32 9
  %202 = ptrtoint ptr %is_yuv5.i to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %is_yuv5.i, align 1, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %203)
  %tobool.not.i539 = icmp eq i8 %203, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3840, i32 %sub.i534)
  %cmp.i540 = icmp ugt i32 %sub.i534, 3840
  br i1 %cmp.i540, label %if.then7.i, label %if.end8.i

if.then7.i:                                       ; preds = %if.then283
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i541 = getelementptr inbounds %struct.vop, ptr %7, i32 0, i32 1
  %204 = ptrtoint ptr %dev.i541 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %dev.i541, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %205, ptr noundef nonnull @.str, ptr noundef nonnull @.str.51) #8
  br label %if.end287

if.end8.i:                                        ; preds = %if.then283
  %206 = ptrtoint ptr %187 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %187, align 4
  %tobool9.not.i = icmp eq ptr %207, null
  br i1 %tobool9.not.i, label %if.then10.i, label %if.end34.i

if.then10.i:                                      ; preds = %if.end8.i
  %scale_yrgb_x.i = getelementptr inbounds %struct.vop_scl_regs, ptr %187, i32 0, i32 1
  %208 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %9, align 4
  %sub.i.i = shl nsw i32 %shr, 12
  %shl.i.i = add nsw i32 %sub.i.i, -4096
  %sub1.i.i = add nsw i32 %sub.i534, -1
  %div.i.i = sdiv i32 %shl.i.i, %sub1.i.i
  %conv13.i = and i32 %div.i.i, 65535
  tail call fastcc void @vop_reg_set(ptr noundef %7, ptr noundef %scale_yrgb_x.i, i32 noundef %209, i32 noundef -1, i32 noundef %conv13.i, ptr noundef nonnull @.str.52) #8
  %210 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %phy, align 4
  %212 = ptrtoint ptr %211 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %211, align 4
  %scale_yrgb_y.i = getelementptr inbounds %struct.vop_scl_regs, ptr %213, i32 0, i32 2
  %214 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %9, align 4
  %sub.i334.i = shl nsw i32 %shr82, 12
  %shl.i335.i = add nsw i32 %sub.i334.i, -4096
  %sub1.i336.i = add i32 %sub.i537, -1
  %div.i337.i = sdiv i32 %shl.i335.i, %sub1.i336.i
  %conv18.i = and i32 %div.i337.i, 65535
  tail call fastcc void @vop_reg_set(ptr noundef %7, ptr noundef %scale_yrgb_y.i, i32 noundef %215, i32 noundef -1, i32 noundef %conv18.i, ptr noundef nonnull @.str.53) #8
  br i1 %tobool.not.i539, label %if.then10.i.if.end287_crit_edge, label %if.then20.i

if.then10.i.if.end287_crit_edge:                  ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end287

if.then20.i:                                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #10
  %216 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %phy, align 4
  %218 = ptrtoint ptr %217 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %217, align 4
  %scale_cbcr_x.i = getelementptr inbounds %struct.vop_scl_regs, ptr %219, i32 0, i32 3
  %220 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %9, align 4
  %conv24.i = shl i32 %div.i, 12
  %sub.i339.i = and i32 %conv24.i, 268431360
  %shl.i340.i = add nsw i32 %sub.i339.i, -4096
  %div.i342.i = sdiv i32 %shl.i340.i, %sub1.i.i
  %conv26.i = and i32 %div.i342.i, 65535
  tail call fastcc void @vop_reg_set(ptr noundef %7, ptr noundef %scale_cbcr_x.i, i32 noundef %221, i32 noundef -1, i32 noundef %conv26.i, ptr noundef nonnull @.str.54) #8
  %222 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %phy, align 4
  %224 = ptrtoint ptr %223 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %223, align 4
  %scale_cbcr_y.i = getelementptr inbounds %struct.vop_scl_regs, ptr %225, i32 0, i32 4
  %226 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %9, align 4
  %conv30.i = shl i32 %div3.i, 12
  %sub.i344.i = and i32 %conv30.i, 268431360
  %shl.i345.i = add nsw i32 %sub.i344.i, -4096
  %div.i347.i = sdiv i32 %shl.i345.i, %sub1.i336.i
  %conv32.i = and i32 %div.i347.i, 65535
  tail call fastcc void @vop_reg_set(ptr noundef %7, ptr noundef %scale_cbcr_y.i, i32 noundef %227, i32 noundef -1, i32 noundef %conv32.i, ptr noundef nonnull @.str.55) #8
  br label %if.end287

if.end34.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %sub.i534)
  %cmp.i.i = icmp slt i32 %shr, %sub.i534
  call void @__sanitizer_cov_trace_cmp4(i32 %shr, i32 %sub.i534)
  %cmp1.i.i = icmp sgt i32 %shr, %sub.i534
  %..i.i = select i1 %cmp1.i.i, i32 2, i32 0
  %retval.0.i.i = select i1 %cmp.i.i, i32 1, i32 %..i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shr82, i32 %sub.i537)
  %cmp.i349.i = icmp slt i32 %shr82, %sub.i537
  call void @__sanitizer_cov_trace_cmp4(i32 %shr82, i32 %sub.i537)
  %cmp1.i350.i = icmp sgt i32 %shr82, %sub.i537
  %..i351.i = select i1 %cmp1.i350.i, i32 2, i32 0
  %retval.0.i352.i = select i1 %cmp.i349.i, i32 1, i32 %..i351.i
  br i1 %tobool.not.i539, label %if.else57.i, label %if.then40.i

if.then40.i:                                      ; preds = %if.end34.i
  %conv41.i = and i32 %div.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv41.i, i32 %sub.i534)
  %cmp.i353.i = icmp ult i32 %conv41.i, %sub.i534
  call void @__sanitizer_cov_trace_cmp4(i32 %conv41.i, i32 %sub.i534)
  %cmp1.i354.i = icmp ugt i32 %conv41.i, %sub.i534
  %..i355.i = select i1 %cmp1.i354.i, i32 2, i32 0
  %retval.0.i356.i = select i1 %cmp.i353.i, i32 1, i32 %..i355.i
  %conv44.i = and i32 %div3.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv44.i, i32 %sub.i537)
  %cmp.i357.i = icmp slt i32 %conv44.i, %sub.i537
  call void @__sanitizer_cov_trace_cmp4(i32 %conv44.i, i32 %sub.i537)
  %cmp1.i358.i = icmp sgt i32 %conv44.i, %sub.i537
  %228 = select i1 %cmp1.i358.i, i16 2, i16 0
  %conv46.i = select i1 %cmp.i357.i, i16 1, i16 %228
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %retval.0.i356.i)
  %cmp48.i = icmp eq i32 %retval.0.i356.i, 2
  br i1 %cmp48.i, label %if.then50.i, label %if.else.i542

if.then50.i:                                      ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1281, i32 %sub.i534)
  %cmp.i361.i = icmp ult i32 %sub.i534, 1281
  %..i362.i = zext i1 %cmp.i361.i to i32
  br label %if.end68.i

if.else.i542:                                     ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1281, i32 %conv41.i)
  %cmp.i363.i = icmp ult i32 %conv41.i, 1281
  %..i364.i = zext i1 %cmp.i363.i to i32
  br label %if.end68.i

if.else57.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %retval.0.i.i)
  %cmp59.i = icmp eq i32 %retval.0.i.i, 2
  br i1 %cmp59.i, label %if.then61.i, label %if.else64.i

if.then61.i:                                      ; preds = %if.else57.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2560, i32 %sub.i534)
  %cmp3.i.i = icmp ugt i32 %sub.i534, 2560
  br i1 %cmp3.i.i, label %if.then61.i.if.then78.thread.i_crit_edge, label %if.else5.i.i

if.then61.i.if.then78.thread.i_crit_edge:         ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then78.thread.i

if.else5.i.i:                                     ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1920, i32 %sub.i534)
  %cmp6.i.i = icmp ugt i32 %sub.i534, 1920
  %.14.i.i = select i1 %cmp6.i.i, i32 3, i32 4
  br label %if.end68.i

if.else64.i:                                      ; preds = %if.else57.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 167837695, i32 %sub.i)
  %cmp3.i365.i = icmp sgt i32 %sub.i, 167837695
  br i1 %cmp3.i365.i, label %if.else64.i.if.then78.thread.i_crit_edge, label %if.else5.i368.i

if.else64.i.if.then78.thread.i_crit_edge:         ; preds = %if.else64.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then78.thread.i

if.else5.i368.i:                                  ; preds = %if.else64.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 125894655, i32 %sub.i)
  %cmp6.i366.i = icmp sgt i32 %sub.i, 125894655
  %.14.i367.i = select i1 %cmp6.i366.i, i32 3, i32 4
  br label %if.end68.i

if.end68.i:                                       ; preds = %if.else5.i368.i, %if.else5.i.i, %if.else.i542, %if.then50.i
  %cbcr_hor_scl_mode.0.i = phi i32 [ 2, %if.then50.i ], [ %retval.0.i356.i, %if.else.i542 ], [ 0, %if.else5.i.i ], [ 0, %if.else5.i368.i ]
  %cbcr_ver_scl_mode.0.i = phi i16 [ %conv46.i, %if.then50.i ], [ %conv46.i, %if.else.i542 ], [ 0, %if.else5.i.i ], [ 0, %if.else5.i368.i ]
  %lb_mode.0.in.i = phi i32 [ %..i362.i, %if.then50.i ], [ %..i364.i, %if.else.i542 ], [ %.14.i.i, %if.else5.i.i ], [ %.14.i367.i, %if.else5.i368.i ]
  %lb_mode72.i = getelementptr inbounds %struct.vop_scl_extension, ptr %207, i32 0, i32 20
  %229 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %9, align 4
  tail call fastcc void @vop_reg_set(ptr noundef %7, ptr noundef %lb_mode72.i, i32 noundef %230, i32 noundef -1, i32 noundef %lb_mode.0.in.i, ptr noundef nonnull @.str.56) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %lb_mode.0.in.i)
  %cond.i = icmp ne i32 %lb_mode.0.in.i, 3
  %spec.select.i = zext i1 %cond.i to i32
  br label %if.end98.i

if.then78.thread.i:                               ; preds = %if.else64.i.if.then78.thread.i_crit_edge, %if.then61.i.if.then78.thread.i_crit_edge
  %lb_mode72535.i = getelementptr inbounds %struct.vop_scl_extension, ptr %207, i32 0, i32 20
  %231 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %9, align 4
  tail call fastcc void @vop_reg_set(ptr noundef %7, ptr noundef %lb_mode72535.i, i32 noundef %232, i32 noundef -1, i32 noundef 2, ptr noundef nonnull @.str.56) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i352.i)
  %cmp80.not543.i = icmp eq i32 %retval.0.i352.i, 0
  br i1 %cmp80.not543.i, label %if.then78.thread.i.if.end98.i_crit_edge, label %if.then82.i

if.then78.thread.i.if.end98.i_crit_edge:          ; preds = %if.then78.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end98.i

if.then82.i:                                      ; preds = %if.then78.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev83.i = getelementptr inbounds %struct.vop, ptr %7, i32 0, i32 1
  %233 = ptrtoint ptr %dev83.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %dev83.i, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %234, ptr noundef nonnull @.str, ptr noundef nonnull @.str.57) #8
  br label %if.end287

if.end98.i:                                       ; preds = %if.then78.thread.i.if.end98.i_crit_edge, %if.end68.i
  %cbcr_ver_scl_mode.0539.i = phi i16 [ 0, %if.then78.thread.i.if.end98.i_crit_edge ], [ %cbcr_ver_scl_mode.0.i, %if.end68.i ]
  %cbcr_hor_scl_mode.0537.i = phi i32 [ 0, %if.then78.thread.i.if.end98.i_crit_edge ], [ %cbcr_hor_scl_mode.0.i, %if.end68.i ]
  %vsu_mode.0.i = phi i32 [ 0, %if.then78.thread.i.if.end98.i_crit_edge ], [ %spec.select.i, %if.end68.i ]
  %235 = zext i32 %retval.0.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %235, ptr @__sancov_gen_cov_switch_values.143)
  switch i32 %retval.0.i.i, label %if.end98.i.scl_vop_cal_scale.exit.i_crit_edge [
    i32 1, label %if.end98.i.scl_vop_cal_scale.exit.sink.split.i_crit_edge
    i32 2, label %if.then5.i.i
  ]

if.end98.i.scl_vop_cal_scale.exit.sink.split.i_crit_edge: ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %scl_vop_cal_scale.exit.sink.split.i

if.end98.i.scl_vop_cal_scale.exit.i_crit_edge:    ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %scl_vop_cal_scale.exit.i

if.then5.i.i:                                     ; preds = %if.end98.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %scl_vop_cal_scale.exit.sink.split.i

scl_vop_cal_scale.exit.sink.split.i:              ; preds = %if.then5.i.i, %if.end98.i.scl_vop_cal_scale.exit.sink.split.i_crit_edge
  %.sink550.i = phi i32 [ 12, %if.then5.i.i ], [ 16, %if.end98.i.scl_vop_cal_scale.exit.sink.split.i_crit_edge ]
  %.sink.i = phi i32 [ -6144, %if.then5.i.i ], [ -98304, %if.end98.i.scl_vop_cal_scale.exit.sink.split.i_crit_edge ]
  %mul.i.i.i = shl i32 %shr, %.sink550.i
  %shl.i.i.i = add i32 %mul.i.i.i, %.sink.i
  %sub2.i.i.i = add nsw i32 %sub.i534, -1
  %div.i.i.i = sdiv i32 %shl.i.i.i, %sub2.i.i.i
  br label %scl_vop_cal_scale.exit.i

scl_vop_cal_scale.exit.i:                         ; preds = %scl_vop_cal_scale.exit.sink.split.i, %if.end98.i.scl_vop_cal_scale.exit.i_crit_edge
  %val.0.i.i = phi i32 [ 4096, %if.end98.i.scl_vop_cal_scale.exit.i_crit_edge ], [ %div.i.i.i, %scl_vop_cal_scale.exit.sink.split.i ]
  %conv101.i = and i32 %val.0.i.i, 65535
  %236 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %phy, align 4
  %238 = ptrtoint ptr %237 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %237, align 4
  %scale_yrgb_x104.i = getelementptr inbounds %struct.vop_scl_regs, ptr %239, i32 0, i32 1
  %240 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %9, align 4
  tail call fastcc void @vop_reg_set(ptr noundef %7, ptr noundef %scale_yrgb_x104.i, i32 noundef %241, i32 noundef -1, i32 noundef %conv101.i, ptr noundef nonnull @.str.52) #8
  %242 = zext i32 %retval.0.i352.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %242, ptr @__sancov_gen_cov_switch_values.144)
  switch i32 %retval.0.i352.i, label %scl_vop_cal_scale.exit.i.scl_vop_cal_scale.exit372.i_crit_edge [
    i32 1, label %if.then11.i.i
    i32 2, label %for.cond.i.i.i
  ]

scl_vop_cal_scale.exit.i.scl_vop_cal_scale.exit372.i_crit_edge: ; preds = %scl_vop_cal_scale.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %scl_vop_cal_scale.exit372.i

if.then11.i.i:                                    ; preds = %scl_vop_cal_scale.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %mul.i56.i.i = and i32 %sub.i521, -65536
  %shl.i58.i.i = add i32 %mul.i56.i.i, -98304
  %sub2.i59.i.i = add i32 %sub.i537, -1
  %div.i60.i.i = sdiv i32 %shl.i58.i.i, %sub2.i59.i.i
  br label %scl_vop_cal_scale.exit372.i

for.cond.i.i.i:                                   ; preds = %scl_vop_cal_scale.exit.i
  %mul.i68.i.i = shl i32 %sub.i537, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i68.i.i, i32 %shr82)
  %cmp2.not.i.i.i = icmp ugt i32 %mul.i68.i.i, %shr82
  %mul.i68.i.i.1 = shl i32 %sub.i537, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i68.i.i.1, i32 %shr82)
  %cmp2.not.i.i.i.1 = icmp ugt i32 %mul.i68.i.i.1, %shr82
  %spec.select = select i1 %cmp2.not.i.i.i.1, i32 1, i32 2
  %vskiplines.0.i.i.i.lcssa = select i1 %cmp2.not.i.i.i, i32 %spec.select, i32 4
  %sub.i69.i.i = add nsw i32 %vskiplines.0.i.i.i.lcssa, %sub
  %div.i70.i.i = sdiv i32 %sub.i69.i.i, %vskiplines.0.i.i.i.lcssa
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i70.i.i, i32 %sub.i537)
  %cmp.i71.i.i = icmp eq i32 %div.i70.i.i, %sub.i537
  br i1 %cmp.i71.i.i, label %if.then.i.i.i, label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %mul.i.i.i.i = shl nsw i32 %shr82, 12
  %shl.i.i.i.i = add nsw i32 %mul.i.i.i.i, -6144
  %sub2.i.i.i.i = add i32 %sub.i537, -1
  %div.i.i.i.i = sdiv i32 %shl.i.i.i.i, %sub2.i.i.i.i
  %conv.i72.i.i = and i32 %div.i.i.i.i, 65535
  %div1.i79.i.i = udiv i32 %conv.i72.i.i, %vskiplines.0.i.i.i.lcssa
  br label %scl_vop_cal_scale.exit372.i

if.end.i.i.i:                                     ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %mul.i10.i.i.i = shl i32 %div.i70.i.i, 12
  %shl.i12.i.i.i = add i32 %mul.i10.i.i.i, -6144
  %sub2.i13.i.i.i = add i32 %sub.i537, -1
  %div.i14.i.i.i = sdiv i32 %shl.i12.i.i.i, %sub2.i13.i.i.i
  br label %scl_vop_cal_scale.exit372.i

scl_vop_cal_scale.exit372.i:                      ; preds = %if.end.i.i.i, %if.then.i.i.i, %if.then11.i.i, %scl_vop_cal_scale.exit.i.scl_vop_cal_scale.exit372.i_crit_edge
  %vskiplines.0.i = phi i32 [ 0, %scl_vop_cal_scale.exit.i.scl_vop_cal_scale.exit372.i_crit_edge ], [ 0, %if.then11.i.i ], [ %vskiplines.0.i.i.i.lcssa, %if.end.i.i.i ], [ %vskiplines.0.i.i.i.lcssa, %if.then.i.i.i ]
  %val.0.i371.i = phi i32 [ 4096, %scl_vop_cal_scale.exit.i.scl_vop_cal_scale.exit372.i_crit_edge ], [ %div.i60.i.i, %if.then11.i.i ], [ %div.i14.i.i.i, %if.end.i.i.i ], [ %div1.i79.i.i, %if.then.i.i.i ]
  %conv109.i = and i32 %val.0.i371.i, 65535
  %243 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %phy, align 4
  %245 = ptrtoint ptr %244 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %244, align 4
  %scale_yrgb_y112.i = getelementptr inbounds %struct.vop_scl_regs, ptr %246, i32 0, i32 2
  %247 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %9, align 4
  tail call fastcc void @vop_reg_set(ptr noundef %7, ptr noundef %scale_yrgb_y112.i, i32 noundef %248, i32 noundef -1, i32 noundef %conv109.i, ptr noundef nonnull @.str.53) #8
  %249 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %phy, align 4
  %251 = ptrtoint ptr %250 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %250, align 4
  %253 = ptrtoint ptr %252 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %252, align 4
  %vsd_yrgb_gt4.i = getelementptr inbounds %struct.vop_scl_extension, ptr %254, i32 0, i32 16
  %255 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %vskiplines.0.i)
  %cmp118.i = icmp eq i32 %vskiplines.0.i, 4
  %conv119.i = zext i1 %cmp118.i to i32
  tail call fastcc void @vop_reg_set(ptr noundef %7, ptr noundef %vsd_yrgb_gt4.i, i32 noundef %256, i32 noundef -1, i32 noundef %conv119.i, ptr noundef nonnull @.str.59) #8
  %257 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %phy, align 4
  %259 = ptrtoint ptr %258 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %258, align 4
  %261 = ptrtoint ptr %260 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %260, align 4
  %vsd_yrgb_gt2.i = getelementptr inbounds %struct.vop_scl_extension, ptr %262, i32 0, i32 15
  %263 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %vskiplines.0.i)
  %cmp124.i = icmp eq i32 %vskiplines.0.i, 2
  %conv125.i = zext i1 %cmp124.i to i32
  tail call fastcc void @vop_reg_set(ptr noundef %7, ptr noundef %vsd_yrgb_gt2.i, i32 noundef %264, i32 noundef -1, i32 noundef %conv125.i, ptr noundef nonnull @.str.60) #8
  %265 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %phy, align 4
  %267 = ptrtoint ptr %266 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %266, align 4
  %269 = ptrtoint ptr %268 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %268, align 4
  %yrgb_hor_scl_mode129.i = getelementptr inbounds %struct.vop_scl_extension, ptr %270, i32 0, i32 9
  %271 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %9, align 4
  tail call fastcc void @vop_reg_set(ptr noundef %7, ptr noundef %yrgb_hor_scl_mode129.i, i32 noundef %272, i32 noundef -1, i32 noundef %retval.0.i.i, ptr noundef nonnull @.str.61) #8
  %273 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %phy, align 4
  %275 = ptrtoint ptr %274 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %274, align 4
  %277 = ptrtoint ptr %276 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %276, align 4
  %yrgb_ver_scl_mode135.i = getelementptr inbounds %struct.vop_scl_extension, ptr %278, i32 0, i32 8
  %279 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %9, align 4
  tail call fastcc void @vop_reg_set(ptr noundef %7, ptr noundef %yrgb_ver_scl_mode135.i, i32 noundef %280, i32 noundef -1, i32 noundef %retval.0.i352.i, ptr noundef nonnull @.str.62) #8
  %281 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %phy, align 4
  %283 = ptrtoint ptr %282 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %282, align 4
  %285 = ptrtoint ptr %284 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %284, align 4
  %yrgb_hsd_mode.i = getelementptr inbounds %struct.vop_scl_extension, ptr %286, i32 0, i32 7
  %287 = ptrtoint ptr %yrgb_hsd_mode.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %yrgb_hsd_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %288)
  %tobool2.not.i.i = icmp eq i32 %288, 0
  br i1 %tobool2.not.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %scl_vop_cal_scale.exit372.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i = getelementptr inbounds %struct.vop, ptr %7, i32 0, i32 1
  %289 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %dev.i.i, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %290, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.63) #8
  br label %vop_reg_set.exit.i

if.end.i.i:                                       ; preds = %scl_vop_cal_scale.exit372.i
  %291 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %9, align 4
  %offset3.i.i = getelementptr inbounds %struct.vop_scl_extension, ptr %286, i32 0, i32 7, i32 1
  %293 = ptrtoint ptr %offset3.i.i to i32
  call void @__asan_load2_noabort(i32 %293)
  %294 = load i16, ptr %offset3.i.i, align 4
  %conv.i373.i = zext i16 %294 to i32
  %add.i.i = add i32 %292, %conv.i373.i
  %shift5.i.i = getelementptr inbounds %struct.vop_scl_extension, ptr %286, i32 0, i32 7, i32 2
  %295 = ptrtoint ptr %shift5.i.i to i32
  call void @__asan_load1_noabort(i32 %295)
  %296 = load i8, ptr %shift5.i.i, align 2
  %conv6.i.i = zext i8 %296 to i32
  %write_mask.i.i = getelementptr inbounds %struct.vop_scl_extension, ptr %286, i32 0, i32 7, i32 3
  %297 = ptrtoint ptr %write_mask.i.i to i32
  call void @__asan_load1_noabort(i32 %297)
  %298 = load i8, ptr %write_mask.i.i, align 1, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %298)
  %tobool7.not.i.i = icmp eq i8 %298, 0
  br i1 %tobool7.not.i.i, label %if.else.i.i, label %if.then8.i.i

if.then8.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add10.i.i = add nuw nsw i32 %conv6.i.i, 16
  %shl11.i.i = shl i32 %288, %add10.i.i
  br label %if.end20.i.i

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %regsbak.i.i = getelementptr inbounds %struct.vop, ptr %7, i32 0, i32 11
  %299 = ptrtoint ptr %regsbak.i.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %regsbak.i.i, align 4
  %shr.i.i = ashr i32 %add.i.i, 2
  %arrayidx.i.i = getelementptr i32, ptr %300, i32 %shr.i.i
  %301 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %arrayidx.i.i, align 4
  %shl12.i.i = shl i32 %288, %conv6.i.i
  %neg.i.i = xor i32 %shl12.i.i, -1
  %and13.i.i = and i32 %302, %neg.i.i
  store i32 %and13.i.i, ptr %arrayidx.i.i, align 4
  br label %if.end20.i.i

if.end20.i.i:                                     ; preds = %if.else.i.i, %if.then8.i.i
  %v.addr.0.i.i = phi i32 [ %shl11.i.i, %if.then8.i.i ], [ %and13.i.i, %if.else.i.i ]
  %relaxed.i.i = getelementptr inbounds %struct.vop_scl_extension, ptr %286, i32 0, i32 7, i32 4
  %303 = ptrtoint ptr %relaxed.i.i to i32
  call void @__asan_load1_noabort(i32 %303)
  %304 = load i8, ptr %relaxed.i.i, align 4, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %304)
  %tobool21.not.i.i = icmp eq i8 %304, 0
  br i1 %tobool21.not.i.i, label %do.body.i.i, label %if.then22.i.i

if.then22.i.i:                                    ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %305 = tail call i32 @llvm.bswap.i32(i32 %v.addr.0.i.i) #8
  %regs.i.i = getelementptr inbounds %struct.vop, ptr %7, i32 0, i32 12
  %306 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %307, i32 %add.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %305) #8, !srcloc !305
  br label %vop_reg_set.exit.i

do.body.i.i:                                      ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !306
  tail call void @arm_heavy_mb() #8
  %308 = tail call i32 @llvm.bswap.i32(i32 %v.addr.0.i.i) #8
  %regs24.i.i = getelementptr inbounds %struct.vop, ptr %7, i32 0, i32 12
  %309 = ptrtoint ptr %regs24.i.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %regs24.i.i, align 8
  %add.ptr25.i.i = getelementptr i8, ptr %310, i32 %add.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i.i, i32 %308) #8, !srcloc !305
  br label %vop_reg_set.exit.i

vop_reg_set.exit.i:                               ; preds = %do.body.i.i, %if.then22.i.i, %if.then.i.i
  %311 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %phy, align 4
  %313 = ptrtoint ptr %312 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %312, align 4
  %315 = ptrtoint ptr %314 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %314, align 4
  %yrgb_vsd_mode.i = getelementptr inbounds %struct.vop_scl_extension, ptr %316, i32 0, i32 5
  %317 = ptrtoint ptr %yrgb_vsd_mode.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %yrgb_vsd_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %318)
  %tobool2.not.i375.i = icmp eq i32 %318, 0
  br i1 %tobool2.not.i375.i, label %if.then.i378.i, label %if.end.i386.i

if.then.i378.i:                                   ; preds = %vop_reg_set.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i377.i = getelementptr inbounds %struct.vop, ptr %7, i32 0, i32 1
  %319 = ptrtoint ptr %dev.i377.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %dev.i377.i, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %320, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.64) #8
  br label %vop_reg_set.exit407.i

if.end.i386.i:                                    ; preds = %vop_reg_set.exit.i
  %321 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %9, align 4
  %offset3.i379.i = getelementptr inbounds %struct.vop_scl_extension, ptr %316, i32 0, i32 5, i32 1
  %323 = ptrtoint ptr %offset3.i379.i to i32
  call void @__asan_load2_noabort(i32 %323)
  %324 = load i16, ptr %offset3.i379.i, align 4
  %conv.i380.i = zext i16 %324 to i32
  %add.i381.i = add i32 %322, %conv.i380.i
  %shift5.i382.i = getelementptr inbounds %struct.vop_scl_extension, ptr %316, i32 0, i32 5, i32 2
  %325 = ptrtoint ptr %shift5.i382.i to i32
  call void @__asan_load1_noabort(i32 %325)
  %326 = load i8, ptr %shift5.i382.i, align 2
  %conv6.i383.i = zext i8 %326 to i32
  %write_mask.i384.i = getelementptr inbounds %struct.vop_scl_extension, ptr %316, i32 0, i32 5, i32 3
  %327 = ptrtoint ptr %write_mask.i384.i to i32
  call void @__asan_load1_noabort(i32 %327)
  %328 = load i8, ptr %write_mask.i384.i, align 1, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %328)
  %tobool7.not.i385.i = icmp eq i8 %328, 0
  br i1 %tobool7.not.i385.i, label %if.else.i396.i, label %if.then8.i389.i

if.then8.i389.i:                                  ; preds = %if.end.i386.i
  call void @__sanitizer_cov_trace_pc() #10
  %add10.i387.i = add nuw nsw i32 %conv6.i383.i, 16
  %shl11.i388.i = shl i32 %318, %add10.i387.i
  br label %if.end20.i400.i

if.else.i396.i:                                   ; preds = %if.end.i386.i
  call void @__sanitizer_cov_trace_pc() #10
  %regsbak.i390.i = getelementptr inbounds %struct.vop, ptr %7, i32 0, i32 11
  %329 = ptrtoint ptr %regsbak.i390.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %regsbak.i390.i, align 4
  %shr.i391.i = ashr i32 %add.i381.i, 2
  %arrayidx.i392.i = getelementptr i32, ptr %330, i32 %shr.i391.i
  %331 = ptrtoint ptr %arrayidx.i392.i to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %arrayidx.i392.i, align 4
  %shl12.i393.i = shl i32 %318, %conv6.i383.i
  %neg.i394.i = xor i32 %shl12.i393.i, -1
  %and13.i395.i = and i32 %332, %neg.i394.i
  store i32 %and13.i395.i, ptr %arrayidx.i392.i, align 4
  br label %if.end20.i400.i

if.end20.i400.i:                                  ; preds = %if.else.i396.i, %if.then8.i389.i
  %v.addr.0.i397.i = phi i32 [ %shl11.i388.i, %if.then8.i389.i ], [ %and13.i395.i, %if.else.i396.i ]
  %relaxed.i398.i = getelementptr inbounds %struct.vop_scl_extension, ptr %316, i32 0, i32 5, i32 4
  %333 = ptrtoint ptr %relaxed.i398.i to i32
  call void @__asan_load1_noabort(i32 %333)
  %334 = load i8, ptr %relaxed.i398.i, align 4, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %334)
  %tobool21.not.i399.i = icmp eq i8 %334, 0
  br i1 %tobool21.not.i399.i, label %do.body.i406.i, label %if.then22.i403.i

if.then22.i403.i:                                 ; preds = %if.end20.i400.i
  call void @__sanitizer_cov_trace_pc() #10
  %335 = tail call i32 @llvm.bswap.i32(i32 %v.addr.0.i397.i) #8
  %regs.i401.i = getelementptr inbounds %struct.vop, ptr %7, i32 0, i32 12
  %336 = ptrtoint ptr %regs.i401.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %regs.i401.i, align 8
  %add.ptr.i402.i = getelementptr i8, ptr %337, i32 %add.i381.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i402.i, i32 %335) #8, !srcloc !305
  br label %vop_reg_set.exit407.i

do.body.i406.i:                                   ; preds = %if.end20.i400.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !306
  tail call void @arm_heavy_mb() #8
  %338 = tail call i32 @llvm.bswap.i32(i32 %v.addr.0.i397.i) #8
  %regs24.i404.i = getelementptr inbounds %struct.vop, ptr %7, i32 0, i32 12
  %339 = ptrtoint ptr %regs24.i404.i to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %regs24.i404.i, align 8
  %add.ptr25.i405.i = getelementptr i8, ptr %340, i32 %add.i381.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i405.i, i32 %338) #8, !srcloc !305
  br label %vop_reg_set.exit407.i

vop_reg_set.exit407.i:                            ; preds = %do.body.i406.i, %if.then22.i403.i, %if.then.i378.i
  %341 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %phy, align 4
  %343 = ptrtoint ptr %342 to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %342, align 4
  %345 = ptrtoint ptr %344 to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %344, align 4
  %yrgb_vsu_mode.i = getelementptr inbounds %struct.vop_scl_extension, ptr %346, i32 0, i32 6
  %347 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load i32, ptr %9, align 4
  tail call fastcc void @vop_reg_set(ptr noundef %7, ptr noundef %yrgb_vsu_mode.i, i32 noundef %348, i32 noundef -1, i32 noundef %vsu_mode.0.i, ptr noundef nonnull @.str.65) #8
  br i1 %tobool.not.i539, label %vop_reg_set.exit407.i.if.end287_crit_edge, label %if.then152.i

vop_reg_set.exit407.i.if.end287_crit_edge:        ; preds = %vop_reg_set.exit407.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end287

if.then152.i:                                     ; preds = %vop_reg_set.exit407.i
  %conv153.i = and i32 %cbcr_hor_scl_mode.0537.i, 65535
  %conv154.i = and i32 %div.i, 65535
  %trunc.i = trunc i32 %cbcr_hor_scl_mode.0537.i to i16
  %349 = zext i16 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %349, ptr @__sancov_gen_cov_switch_values.145)
  switch i16 %trunc.i, label %if.then152.i.scl_vop_cal_scale.exit422.i_crit_edge [
    i16 1, label %if.then152.i.scl_vop_cal_scale.exit422.sink.split.i_crit_edge
    i16 2, label %if.then5.i420.i
  ]

if.then152.i.scl_vop_cal_scale.exit422.sink.split.i_crit_edge: ; preds = %if.then152.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %scl_vop_cal_scale.exit422.sink.split.i

if.then152.i.scl_vop_cal_scale.exit422.i_crit_edge: ; preds = %if.then152.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %scl_vop_cal_scale.exit422.i

if.then5.i420.i:                                  ; preds = %if.then152.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %scl_vop_cal_scale.exit422.sink.split.i

scl_vop_cal_scale.exit422.sink.split.i:           ; preds = %if.then5.i420.i, %if.then152.i.scl_vop_cal_scale.exit422.sink.split.i_crit_edge
  %.sink552.i = phi i32 [ 12, %if.then5.i420.i ], [ 16, %if.then152.i.scl_vop_cal_scale.exit422.sink.split.i_crit_edge ]
  %.sink551.i = phi i32 [ -6144, %if.then5.i420.i ], [ -98304, %if.then152.i.scl_vop_cal_scale.exit422.sink.split.i_crit_edge ]
  %mul.i.i409.i = shl nuw i32 %conv154.i, %.sink552.i
  %shl.i.i410.i = add i32 %mul.i.i409.i, %.sink551.i
  %sub2.i.i411.i = add i32 %sub.i534, -1
  %div.i.i412.i = sdiv i32 %shl.i.i410.i, %sub2.i.i411.i
  %phi.bo.i = and i32 %div.i.i412.i, 65535
  br label %scl_vop_cal_scale.exit422.i

scl_vop_cal_scale.exit422.i:                      ; preds = %scl_vop_cal_scale.exit422.sink.split.i, %if.then152.i.scl_vop_cal_scale.exit422.i_crit_edge
  %val.0.i421.i = phi i32 [ 4096, %if.then152.i.scl_vop_cal_scale.exit422.i_crit_edge ], [ %phi.bo.i, %scl_vop_cal_scale.exit422.sink.split.i ]
  %350 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %phy, align 4
  %352 = ptrtoint ptr %351 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %351, align 4
  %scale_cbcr_x159.i = getelementptr inbounds %struct.vop_scl_regs, ptr %353, i32 0, i32 3
  %354 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %9, align 4
  tail call fastcc void @vop_reg_set(ptr noundef %7, ptr noundef %scale_cbcr_x159.i, i32 noundef %355, i32 noundef -1, i32 noundef %val.0.i421.i, ptr noundef nonnull @.str.54) #8
  %conv161.i = zext i16 %cbcr_ver_scl_mode.0539.i to i32
  %conv162.i = and i32 %div3.i, 65535
  %356 = zext i16 %cbcr_ver_scl_mode.0539.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %356, ptr @__sancov_gen_cov_switch_values.146)
  switch i16 %cbcr_ver_scl_mode.0539.i, label %scl_vop_cal_scale.exit422.i.scl_vop_cal_scale.exit460.i_crit_edge [
    i16 1, label %if.then11.i430.i
    i16 2, label %for.cond.i.i438.i
  ]

scl_vop_cal_scale.exit422.i.scl_vop_cal_scale.exit460.i_crit_edge: ; preds = %scl_vop_cal_scale.exit422.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %scl_vop_cal_scale.exit460.i

if.then11.i430.i:                                 ; preds = %scl_vop_cal_scale.exit422.i
  call void @__sanitizer_cov_trace_pc() #10
  %mul.i56.i425.i = shl nuw i32 %conv162.i, 16
  %shl.i58.i426.i = add i32 %mul.i56.i425.i, -98304
  %sub2.i59.i427.i = add i32 %sub.i537, -1
  %div.i60.i428.i = sdiv i32 %shl.i58.i426.i, %sub2.i59.i427.i
  br label %scl_vop_cal_scale.exit460.i

for.cond.i.i438.i:                                ; preds = %scl_vop_cal_scale.exit422.i
  %mul.i68.i434.i = shl i32 %sub.i537, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i68.i434.i, i32 %conv162.i)
  %cmp2.not.i.i435.i = icmp ugt i32 %mul.i68.i434.i, %conv162.i
  %mul.i68.i434.i.1 = shl i32 %sub.i537, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i68.i434.i.1, i32 %conv162.i)
  %cmp2.not.i.i435.i.1 = icmp ugt i32 %mul.i68.i434.i.1, %conv162.i
  %spec.select649 = select i1 %cmp2.not.i.i435.i.1, i32 1, i32 2
  %vskiplines.0.i.i432.i.lcssa = select i1 %cmp2.not.i.i435.i, i32 %spec.select649, i32 4
  %add.i.i439.i = add nsw i32 %conv162.i, -1
  %sub.i69.i440.i = add nsw i32 %add.i.i439.i, %vskiplines.0.i.i432.i.lcssa
  %div.i70.i441.i = sdiv i32 %sub.i69.i440.i, %vskiplines.0.i.i432.i.lcssa
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i70.i441.i, i32 %sub.i537)
  %cmp.i71.i442.i = icmp eq i32 %div.i70.i441.i, %sub.i537
  br i1 %cmp.i71.i442.i, label %if.then.i.i450.i, label %if.end.i.i455.i

if.then.i.i450.i:                                 ; preds = %for.cond.i.i438.i
  call void @__sanitizer_cov_trace_pc() #10
  %mul.i.i.i444.i = shl nuw nsw i32 %conv162.i, 12
  %shl.i.i.i445.i = add nsw i32 %mul.i.i.i444.i, -6144
  %sub2.i.i.i446.i = add i32 %sub.i537, -1
  %div.i.i.i447.i = sdiv i32 %shl.i.i.i445.i, %sub2.i.i.i446.i
  %conv.i72.i448.i = and i32 %div.i.i.i447.i, 65535
  %div1.i79.i449.i = udiv i32 %conv.i72.i448.i, %vskiplines.0.i.i432.i.lcssa
  br label %scl_vop_cal_scale.exit460.i

if.end.i.i455.i:                                  ; preds = %for.cond.i.i438.i
  call void @__sanitizer_cov_trace_pc() #10
  %mul.i10.i.i451.i = shl i32 %div.i70.i441.i, 12
  %shl.i12.i.i452.i = add i32 %mul.i10.i.i451.i, -6144
  %sub2.i13.i.i453.i = add i32 %sub.i537, -1
  %div.i14.i.i454.i = sdiv i32 %shl.i12.i.i452.i, %sub2.i13.i.i453.i
  br label %scl_vop_cal_scale.exit460.i

scl_vop_cal_scale.exit460.i:                      ; preds = %if.end.i.i455.i, %if.then.i.i450.i, %if.then11.i430.i, %scl_vop_cal_scale.exit422.i.scl_vop_cal_scale.exit460.i_crit_edge
  %vskiplines.1.i = phi i32 [ 0, %scl_vop_cal_scale.exit422.i.scl_vop_cal_scale.exit460.i_crit_edge ], [ 0, %if.then11.i430.i ], [ %vskiplines.0.i.i432.i.lcssa, %if.end.i.i455.i ], [ %vskiplines.0.i.i432.i.lcssa, %if.then.i.i450.i ]
  %val.0.i459.i = phi i32 [ 4096, %scl_vop_cal_scale.exit422.i.scl_vop_cal_scale.exit460.i_crit_edge ], [ %div.i60.i428.i, %if.then11.i430.i ], [ %div.i14.i.i454.i, %if.end.i.i455.i ], [ %div1.i79.i449.i, %if.then.i.i450.i ]
  %conv165.i = and i32 %val.0.i459.i, 65535
  %357 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %phy, align 4
  %359 = ptrtoint ptr %358 to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %358, align 4
  %scale_cbcr_y168.i = getelementptr inbounds %struct.vop_scl_regs, ptr %360, i32 0, i32 4
  %361 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load i32, ptr %9, align 4
  tail call fastcc void @vop_reg_set(ptr noundef %7, ptr noundef %scale_cbcr_y168.i, i32 noundef %362, i32 noundef -1, i32 noundef %conv165.i, ptr noundef nonnull @.str.55) #8
  %363 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %phy, align 4
  %365 = ptrtoint ptr %364 to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %364, align 4
  %367 = ptrtoint ptr %366 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %366, align 4
  %vsd_cbcr_gt4.i = getelementptr inbounds %struct.vop_scl_extension, ptr %368, i32 0, i32 14
  %369 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %vskiplines.1.i)
  %cmp174.i = icmp eq i32 %vskiplines.1.i, 4
  %conv175.i = zext i1 %cmp174.i to i32
  tail call fastcc void @vop_reg_set(ptr noundef %7, ptr noundef %vsd_cbcr_gt4.i, i32 noundef %370, i32 noundef -1, i32 noundef %conv175.i, ptr noundef nonnull @.str.66) #8
  %371 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load ptr, ptr %phy, align 4
  %373 = ptrtoint ptr %372 to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load ptr, ptr %372, align 4
  %375 = ptrtoint ptr %374 to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %374, align 4
  %vsd_cbcr_gt2.i = getelementptr inbounds %struct.vop_scl_extension, ptr %376, i32 0, i32 13
  %377 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %vskiplines.1.i)
  %cmp180.i = icmp eq i32 %vskiplines.1.i, 2
  %conv181.i = zext i1 %cmp180.i to i32
  tail call fastcc void @vop_reg_set(ptr noundef %7, ptr noundef %vsd_cbcr_gt2.i, i32 noundef %378, i32 noundef -1, i32 noundef %conv181.i, ptr noundef nonnull @.str.67) #8
  %379 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %phy, align 4
  %381 = ptrtoint ptr %380 to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %380, align 4
  %383 = ptrtoint ptr %382 to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %382, align 4
  %cbcr_hor_scl_mode185.i = getelementptr inbounds %struct.vop_scl_extension, ptr %384, i32 0, i32 4
  %385 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load i32, ptr %9, align 4
  tail call fastcc void @vop_reg_set(ptr noundef %7, ptr noundef %cbcr_hor_scl_mode185.i, i32 noundef %386, i32 noundef -1, i32 noundef %conv153.i, ptr noundef nonnull @.str.68) #8
  %387 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %phy, align 4
  %389 = ptrtoint ptr %388 to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %388, align 4
  %391 = ptrtoint ptr %390 to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %390, align 4
  %cbcr_ver_scl_mode191.i = getelementptr inbounds %struct.vop_scl_extension, ptr %392, i32 0, i32 3
  %393 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load i32, ptr %9, align 4
  tail call fastcc void @vop_reg_set(ptr noundef %7, ptr noundef %cbcr_ver_scl_mode191.i, i32 noundef %394, i32 noundef -1, i32 noundef %conv161.i, ptr noundef nonnull @.str.69) #8
  %395 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %phy, align 4
  %397 = ptrtoint ptr %396 to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %396, align 4
  %399 = ptrtoint ptr %398 to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load ptr, ptr %398, align 4
  %cbcr_hsd_mode.i = getelementptr inbounds %struct.vop_scl_extension, ptr %400, i32 0, i32 2
  %401 = ptrtoint ptr %cbcr_hsd_mode.i to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load i32, ptr %cbcr_hsd_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %402)
  %tobool2.not.i462.i = icmp eq i32 %402, 0
  br i1 %tobool2.not.i462.i, label %if.then.i465.i, label %if.end.i473.i

if.then.i465.i:                                   ; preds = %scl_vop_cal_scale.exit460.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i464.i = getelementptr inbounds %struct.vop, ptr %7, i32 0, i32 1
  %403 = ptrtoint ptr %dev.i464.i to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %dev.i464.i, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %404, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.70) #8
  br label %vop_reg_set.exit494.i

if.end.i473.i:                                    ; preds = %scl_vop_cal_scale.exit460.i
  %405 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load i32, ptr %9, align 4
  %offset3.i466.i = getelementptr inbounds %struct.vop_scl_extension, ptr %400, i32 0, i32 2, i32 1
  %407 = ptrtoint ptr %offset3.i466.i to i32
  call void @__asan_load2_noabort(i32 %407)
  %408 = load i16, ptr %offset3.i466.i, align 4
  %conv.i467.i = zext i16 %408 to i32
  %add.i468.i = add i32 %406, %conv.i467.i
  %shift5.i469.i = getelementptr inbounds %struct.vop_scl_extension, ptr %400, i32 0, i32 2, i32 2
  %409 = ptrtoint ptr %shift5.i469.i to i32
  call void @__asan_load1_noabort(i32 %409)
  %410 = load i8, ptr %shift5.i469.i, align 2
  %conv6.i470.i = zext i8 %410 to i32
  %write_mask.i471.i = getelementptr inbounds %struct.vop_scl_extension, ptr %400, i32 0, i32 2, i32 3
  %411 = ptrtoint ptr %write_mask.i471.i to i32
  call void @__asan_load1_noabort(i32 %411)
  %412 = load i8, ptr %write_mask.i471.i, align 1, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %412)
  %tobool7.not.i472.i = icmp eq i8 %412, 0
  br i1 %tobool7.not.i472.i, label %if.else.i483.i, label %if.then8.i476.i

if.then8.i476.i:                                  ; preds = %if.end.i473.i
  call void @__sanitizer_cov_trace_pc() #10
  %add10.i474.i = add nuw nsw i32 %conv6.i470.i, 16
  %shl11.i475.i = shl i32 %402, %add10.i474.i
  br label %if.end20.i487.i

if.else.i483.i:                                   ; preds = %if.end.i473.i
  call void @__sanitizer_cov_trace_pc() #10
  %regsbak.i477.i = getelementptr inbounds %struct.vop, ptr %7, i32 0, i32 11
  %413 = ptrtoint ptr %regsbak.i477.i to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %regsbak.i477.i, align 4
  %shr.i478.i = ashr i32 %add.i468.i, 2
  %arrayidx.i479.i = getelementptr i32, ptr %414, i32 %shr.i478.i
  %415 = ptrtoint ptr %arrayidx.i479.i to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load i32, ptr %arrayidx.i479.i, align 4
  %shl12.i480.i = shl i32 %402, %conv6.i470.i
  %neg.i481.i = xor i32 %shl12.i480.i, -1
  %and13.i482.i = and i32 %416, %neg.i481.i
  store i32 %and13.i482.i, ptr %arrayidx.i479.i, align 4
  br label %if.end20.i487.i

if.end20.i487.i:                                  ; preds = %if.else.i483.i, %if.then8.i476.i
  %v.addr.0.i484.i = phi i32 [ %shl11.i475.i, %if.then8.i476.i ], [ %and13.i482.i, %if.else.i483.i ]
  %relaxed.i485.i = getelementptr inbounds %struct.vop_scl_extension, ptr %400, i32 0, i32 2, i32 4
  %417 = ptrtoint ptr %relaxed.i485.i to i32
  call void @__asan_load1_noabort(i32 %417)
  %418 = load i8, ptr %relaxed.i485.i, align 4, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %418)
  %tobool21.not.i486.i = icmp eq i8 %418, 0
  br i1 %tobool21.not.i486.i, label %do.body.i493.i, label %if.then22.i490.i

if.then22.i490.i:                                 ; preds = %if.end20.i487.i
  call void @__sanitizer_cov_trace_pc() #10
  %419 = tail call i32 @llvm.bswap.i32(i32 %v.addr.0.i484.i) #8
  %regs.i488.i = getelementptr inbounds %struct.vop, ptr %7, i32 0, i32 12
  %420 = ptrtoint ptr %regs.i488.i to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %regs.i488.i, align 8
  %add.ptr.i489.i = getelementptr i8, ptr %421, i32 %add.i468.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i489.i, i32 %419) #8, !srcloc !305
  br label %vop_reg_set.exit494.i

do.body.i493.i:                                   ; preds = %if.end20.i487.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !306
  tail call void @arm_heavy_mb() #8
  %422 = tail call i32 @llvm.bswap.i32(i32 %v.addr.0.i484.i) #8
  %regs24.i491.i = getelementptr inbounds %struct.vop, ptr %7, i32 0, i32 12
  %423 = ptrtoint ptr %regs24.i491.i to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load ptr, ptr %regs24.i491.i, align 8
  %add.ptr25.i492.i = getelementptr i8, ptr %424, i32 %add.i468.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i492.i, i32 %422) #8, !srcloc !305
  br label %vop_reg_set.exit494.i

vop_reg_set.exit494.i:                            ; preds = %do.body.i493.i, %if.then22.i490.i, %if.then.i465.i
  %425 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load ptr, ptr %phy, align 4
  %427 = ptrtoint ptr %426 to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %426, align 4
  %429 = ptrtoint ptr %428 to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load ptr, ptr %428, align 4
  %431 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load i32, ptr %9, align 4
  %tobool.not.i495.i = icmp eq ptr %430, null
  br i1 %tobool.not.i495.i, label %vop_reg_set.exit494.i.if.then.i499.i_crit_edge, label %lor.lhs.false.i497.i

vop_reg_set.exit494.i.if.then.i499.i_crit_edge:   ; preds = %vop_reg_set.exit494.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i499.i

lor.lhs.false.i497.i:                             ; preds = %vop_reg_set.exit494.i
  %433 = ptrtoint ptr %430 to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load i32, ptr %430, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %434)
  %tobool2.not.i496.i = icmp eq i32 %434, 0
  br i1 %tobool2.not.i496.i, label %lor.lhs.false.i497.i.if.then.i499.i_crit_edge, label %if.end.i507.i

lor.lhs.false.i497.i.if.then.i499.i_crit_edge:    ; preds = %lor.lhs.false.i497.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i499.i

if.then.i499.i:                                   ; preds = %lor.lhs.false.i497.i.if.then.i499.i_crit_edge, %vop_reg_set.exit494.i.if.then.i499.i_crit_edge
  %dev.i498.i = getelementptr inbounds %struct.vop, ptr %7, i32 0, i32 1
  %435 = ptrtoint ptr %dev.i498.i to i32
  call void @__asan_load4_noabort(i32 %435)
  %436 = load ptr, ptr %dev.i498.i, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %436, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.71) #8
  br label %vop_reg_set.exit528.i

if.end.i507.i:                                    ; preds = %lor.lhs.false.i497.i
  %offset3.i500.i = getelementptr inbounds %struct.vop_reg, ptr %430, i32 0, i32 1
  %437 = ptrtoint ptr %offset3.i500.i to i32
  call void @__asan_load2_noabort(i32 %437)
  %438 = load i16, ptr %offset3.i500.i, align 4
  %conv.i501.i = zext i16 %438 to i32
  %add.i502.i = add i32 %432, %conv.i501.i
  %shift5.i503.i = getelementptr inbounds %struct.vop_reg, ptr %430, i32 0, i32 2
  %439 = ptrtoint ptr %shift5.i503.i to i32
  call void @__asan_load1_noabort(i32 %439)
  %440 = load i8, ptr %shift5.i503.i, align 2
  %conv6.i504.i = zext i8 %440 to i32
  %write_mask.i505.i = getelementptr inbounds %struct.vop_reg, ptr %430, i32 0, i32 3
  %441 = ptrtoint ptr %write_mask.i505.i to i32
  call void @__asan_load1_noabort(i32 %441)
  %442 = load i8, ptr %write_mask.i505.i, align 1, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %442)
  %tobool7.not.i506.i = icmp eq i8 %442, 0
  br i1 %tobool7.not.i506.i, label %if.else.i517.i, label %if.then8.i510.i

if.then8.i510.i:                                  ; preds = %if.end.i507.i
  call void @__sanitizer_cov_trace_pc() #10
  %add10.i508.i = add nuw nsw i32 %conv6.i504.i, 16
  %shl11.i509.i = shl i32 %434, %add10.i508.i
  br label %if.end20.i521.i

if.else.i517.i:                                   ; preds = %if.end.i507.i
  call void @__sanitizer_cov_trace_pc() #10
  %regsbak.i511.i = getelementptr inbounds %struct.vop, ptr %7, i32 0, i32 11
  %443 = ptrtoint ptr %regsbak.i511.i to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load ptr, ptr %regsbak.i511.i, align 4
  %shr.i512.i = ashr i32 %add.i502.i, 2
  %arrayidx.i513.i = getelementptr i32, ptr %444, i32 %shr.i512.i
  %445 = ptrtoint ptr %arrayidx.i513.i to i32
  call void @__asan_load4_noabort(i32 %445)
  %446 = load i32, ptr %arrayidx.i513.i, align 4
  %shl12.i514.i = shl i32 %434, %conv6.i504.i
  %neg.i515.i = xor i32 %shl12.i514.i, -1
  %and13.i516.i = and i32 %446, %neg.i515.i
  store i32 %and13.i516.i, ptr %arrayidx.i513.i, align 4
  br label %if.end20.i521.i

if.end20.i521.i:                                  ; preds = %if.else.i517.i, %if.then8.i510.i
  %v.addr.0.i518.i = phi i32 [ %shl11.i509.i, %if.then8.i510.i ], [ %and13.i516.i, %if.else.i517.i ]
  %relaxed.i519.i = getelementptr inbounds %struct.vop_reg, ptr %430, i32 0, i32 4
  %447 = ptrtoint ptr %relaxed.i519.i to i32
  call void @__asan_load1_noabort(i32 %447)
  %448 = load i8, ptr %relaxed.i519.i, align 4, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %448)
  %tobool21.not.i520.i = icmp eq i8 %448, 0
  br i1 %tobool21.not.i520.i, label %do.body.i527.i, label %if.then22.i524.i

if.then22.i524.i:                                 ; preds = %if.end20.i521.i
  call void @__sanitizer_cov_trace_pc() #10
  %449 = tail call i32 @llvm.bswap.i32(i32 %v.addr.0.i518.i) #8
  %regs.i522.i = getelementptr inbounds %struct.vop, ptr %7, i32 0, i32 12
  %450 = ptrtoint ptr %regs.i522.i to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %regs.i522.i, align 8
  %add.ptr.i523.i = getelementptr i8, ptr %451, i32 %add.i502.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i523.i, i32 %449) #8, !srcloc !305
  br label %vop_reg_set.exit528.i

do.body.i527.i:                                   ; preds = %if.end20.i521.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !306
  tail call void @arm_heavy_mb() #8
  %452 = tail call i32 @llvm.bswap.i32(i32 %v.addr.0.i518.i) #8
  %regs24.i525.i = getelementptr inbounds %struct.vop, ptr %7, i32 0, i32 12
  %453 = ptrtoint ptr %regs24.i525.i to i32
  call void @__asan_load4_noabort(i32 %453)
  %454 = load ptr, ptr %regs24.i525.i, align 8
  %add.ptr25.i526.i = getelementptr i8, ptr %454, i32 %add.i502.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i526.i, i32 %452) #8, !srcloc !305
  br label %vop_reg_set.exit528.i

vop_reg_set.exit528.i:                            ; preds = %do.body.i527.i, %if.then22.i524.i, %if.then.i499.i
  %455 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %455)
  %456 = load ptr, ptr %phy, align 4
  %457 = ptrtoint ptr %456 to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load ptr, ptr %456, align 4
  %459 = ptrtoint ptr %458 to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load ptr, ptr %458, align 4
  %cbcr_vsu_mode.i = getelementptr inbounds %struct.vop_scl_extension, ptr %460, i32 0, i32 1
  %461 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load i32, ptr %9, align 4
  tail call fastcc void @vop_reg_set(ptr noundef %7, ptr noundef %cbcr_vsu_mode.i, i32 noundef %462, i32 noundef -1, i32 noundef %vsu_mode.0.i, ptr noundef nonnull @.str.72) #8
  br label %if.end287

if.end287:                                        ; preds = %vop_reg_set.exit528.i, %vop_reg_set.exit407.i.if.end287_crit_edge, %if.then82.i, %if.then20.i, %if.then10.i.if.end287_crit_edge, %if.then7.i, %if.end280.if.end287_crit_edge
  %463 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %463)
  %464 = load ptr, ptr %phy, align 4
  %act_info289 = getelementptr inbounds %struct.vop_win_phy, ptr %464, i32 0, i32 8
  %465 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load i32, ptr %9, align 4
  tail call fastcc void @vop_reg_set(ptr noundef %7, ptr noundef %act_info289, i32 noundef %466, i32 noundef -1, i32 noundef %or, ptr noundef nonnull @.str.42)
  %467 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load ptr, ptr %phy, align 4
  %dsp_info292 = getelementptr inbounds %struct.vop_win_phy, ptr %468, i32 0, i32 9
  %469 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load i32, ptr %9, align 4
  tail call fastcc void @vop_reg_set(ptr noundef %7, ptr noundef %dsp_info292, i32 noundef %470, i32 noundef -1, i32 noundef %or90, ptr noundef nonnull @.str.43)
  %471 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load ptr, ptr %phy, align 4
  %dsp_st295 = getelementptr inbounds %struct.vop_win_phy, ptr %472, i32 0, i32 10
  %473 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %473)
  %474 = load i32, ptr %9, align 4
  tail call fastcc void @vop_reg_set(ptr noundef %7, ptr noundef %dsp_st295, i32 noundef %474, i32 noundef -1, i32 noundef %or103, ptr noundef nonnull @.str.44)
  %475 = ptrtoint ptr %format10 to i32
  call void @__asan_load4_noabort(i32 %475)
  %476 = load ptr, ptr %format10, align 8
  %477 = ptrtoint ptr %476 to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load i32, ptr %476, align 4
  %479 = zext i32 %478 to i64
  call void @__sanitizer_cov_trace_switch(i64 %479, ptr @__sancov_gen_cov_switch_values.147)
  switch i32 %478, label %sw.default.i543 [
    i32 875709016, label %if.end287.has_rb_swapped.exit_crit_edge
    i32 875708993, label %if.end287.has_rb_swapped.exit_crit_edge660
    i32 875710274, label %if.end287.has_rb_swapped.exit_crit_edge661
    i32 909199170, label %if.end287.has_rb_swapped.exit_crit_edge662
  ]

if.end287.has_rb_swapped.exit_crit_edge662:       ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #10
  br label %has_rb_swapped.exit

if.end287.has_rb_swapped.exit_crit_edge661:       ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #10
  br label %has_rb_swapped.exit

if.end287.has_rb_swapped.exit_crit_edge660:       ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #10
  br label %has_rb_swapped.exit

if.end287.has_rb_swapped.exit_crit_edge:          ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #10
  br label %has_rb_swapped.exit

sw.default.i543:                                  ; preds = %if.end287
  call void @__sanitizer_cov_trace_pc() #10
  br label %has_rb_swapped.exit

has_rb_swapped.exit:                              ; preds = %sw.default.i543, %if.end287.has_rb_swapped.exit_crit_edge, %if.end287.has_rb_swapped.exit_crit_edge660, %if.end287.has_rb_swapped.exit_crit_edge661, %if.end287.has_rb_swapped.exit_crit_edge662
  %retval.0.i544 = phi i32 [ 0, %sw.default.i543 ], [ 1, %if.end287.has_rb_swapped.exit_crit_edge ], [ 1, %if.end287.has_rb_swapped.exit_crit_edge660 ], [ 1, %if.end287.has_rb_swapped.exit_crit_edge661 ], [ 1, %if.end287.has_rb_swapped.exit_crit_edge662 ]
  %480 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %480)
  %481 = load ptr, ptr %phy, align 4
  %rb_swap301 = getelementptr inbounds %struct.vop_win_phy, ptr %481, i32 0, i32 7
  %482 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %482)
  %483 = load i32, ptr %9, align 4
  tail call fastcc void @vop_reg_set(ptr noundef %7, ptr noundef %rb_swap301, i32 noundef %483, i32 noundef -1, i32 noundef %retval.0.i544, ptr noundef nonnull @.str.45)
  %484 = ptrtoint ptr %format10 to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load ptr, ptr %format10, align 8
  %has_alpha = getelementptr inbounds %struct.drm_format_info, ptr %485, i32 0, i32 8
  %486 = ptrtoint ptr %has_alpha to i32
  call void @__asan_load1_noabort(i32 %486)
  %487 = load i8, ptr %has_alpha, align 4, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %487)
  %tobool306.not = icmp ne i8 %487, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.ptr.sub)
  %cmp309 = icmp sgt i32 %sub.ptr.sub, 0
  %or.cond = select i1 %tobool306.not, i1 %cmp309, i1 false
  %488 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %488)
  %489 = load ptr, ptr %phy, align 4
  br i1 %or.cond, label %if.then311, label %if.else

if.then311:                                       ; preds = %has_rb_swapped.exit
  %dst_alpha_ctl = getelementptr inbounds %struct.vop_win_phy, ptr %489, i32 0, i32 17
  %490 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %490)
  %491 = load i32, ptr %9, align 4
  tail call fastcc void @vop_reg_set(ptr noundef %7, ptr noundef %dst_alpha_ctl, i32 noundef %491, i32 noundef -1, i32 noundef 192, ptr noundef nonnull @.str.46)
  %492 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load ptr, ptr %phy, align 4
  %src_alpha_ctl = getelementptr inbounds %struct.vop_win_phy, ptr %493, i32 0, i32 18
  %494 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load i32, ptr %9, align 4
  tail call fastcc void @vop_reg_set(ptr noundef %7, ptr noundef %src_alpha_ctl, i32 noundef %495, i32 noundef -1, i32 noundef 105, ptr noundef nonnull @.str.47)
  %496 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %496)
  %497 = load ptr, ptr %phy, align 4
  %alpha_pre_mul = getelementptr inbounds %struct.vop_win_phy, ptr %497, i32 0, i32 19
  %498 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %498)
  %499 = load i32, ptr %9, align 4
  %tobool.not.i545 = icmp eq ptr %alpha_pre_mul, null
  br i1 %tobool.not.i545, label %if.then311.if.then.i549_crit_edge, label %lor.lhs.false.i547

if.then311.if.then.i549_crit_edge:                ; preds = %if.then311
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i549

lor.lhs.false.i547:                               ; preds = %if.then311
  %500 = ptrtoint ptr %alpha_pre_mul to i32
  call void @__asan_load4_noabort(i32 %500)
  %501 = load i32, ptr %alpha_pre_mul, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %501)
  %tobool2.not.i546 = icmp eq i32 %501, 0
  br i1 %tobool2.not.i546, label %lor.lhs.false.i547.if.then.i549_crit_edge, label %if.end.i556

lor.lhs.false.i547.if.then.i549_crit_edge:        ; preds = %lor.lhs.false.i547
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i549

if.then.i549:                                     ; preds = %lor.lhs.false.i547.if.then.i549_crit_edge, %if.then311.if.then.i549_crit_edge
  %dev.i548 = getelementptr inbounds %struct.vop, ptr %7, i32 0, i32 1
  %502 = ptrtoint ptr %dev.i548 to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load ptr, ptr %dev.i548, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %503, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.48) #8
  br label %vop_reg_set.exit577

if.end.i556:                                      ; preds = %lor.lhs.false.i547
  %offset3.i550 = getelementptr inbounds %struct.vop_win_phy, ptr %497, i32 0, i32 19, i32 1
  %504 = ptrtoint ptr %offset3.i550 to i32
  call void @__asan_load2_noabort(i32 %504)
  %505 = load i16, ptr %offset3.i550, align 4
  %conv.i551 = zext i16 %505 to i32
  %add.i = add i32 %499, %conv.i551
  %shift5.i552 = getelementptr inbounds %struct.vop_win_phy, ptr %497, i32 0, i32 19, i32 2
  %506 = ptrtoint ptr %shift5.i552 to i32
  call void @__asan_load1_noabort(i32 %506)
  %507 = load i8, ptr %shift5.i552, align 2
  %conv6.i553 = zext i8 %507 to i32
  %write_mask.i554 = getelementptr inbounds %struct.vop_win_phy, ptr %497, i32 0, i32 19, i32 3
  %508 = ptrtoint ptr %write_mask.i554 to i32
  call void @__asan_load1_noabort(i32 %508)
  %509 = load i8, ptr %write_mask.i554, align 1, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %509)
  %tobool7.not.i555 = icmp eq i8 %509, 0
  br i1 %tobool7.not.i555, label %if.else.i566, label %if.then8.i559

if.then8.i559:                                    ; preds = %if.end.i556
  call void @__sanitizer_cov_trace_pc() #10
  %add10.i557 = add nuw nsw i32 %conv6.i553, 16
  %shl11.i558 = shl i32 %501, %add10.i557
  br label %if.end20.i570

if.else.i566:                                     ; preds = %if.end.i556
  call void @__sanitizer_cov_trace_pc() #10
  %regsbak.i560 = getelementptr inbounds %struct.vop, ptr %7, i32 0, i32 11
  %510 = ptrtoint ptr %regsbak.i560 to i32
  call void @__asan_load4_noabort(i32 %510)
  %511 = load ptr, ptr %regsbak.i560, align 4
  %shr.i561 = ashr i32 %add.i, 2
  %arrayidx.i562 = getelementptr i32, ptr %511, i32 %shr.i561
  %512 = ptrtoint ptr %arrayidx.i562 to i32
  call void @__asan_load4_noabort(i32 %512)
  %513 = load i32, ptr %arrayidx.i562, align 4
  %shl12.i563 = shl i32 %501, %conv6.i553
  %neg.i564 = xor i32 %shl12.i563, -1
  %and13.i565 = and i32 %513, %neg.i564
  store i32 %and13.i565, ptr %arrayidx.i562, align 4
  br label %if.end20.i570

if.end20.i570:                                    ; preds = %if.else.i566, %if.then8.i559
  %v.addr.0.i567 = phi i32 [ %shl11.i558, %if.then8.i559 ], [ %and13.i565, %if.else.i566 ]
  %relaxed.i568 = getelementptr inbounds %struct.vop_win_phy, ptr %497, i32 0, i32 19, i32 4
  %514 = ptrtoint ptr %relaxed.i568 to i32
  call void @__asan_load1_noabort(i32 %514)
  %515 = load i8, ptr %relaxed.i568, align 4, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %515)
  %tobool21.not.i569 = icmp eq i8 %515, 0
  br i1 %tobool21.not.i569, label %do.body.i576, label %if.then22.i573

if.then22.i573:                                   ; preds = %if.end20.i570
  call void @__sanitizer_cov_trace_pc() #10
  %516 = tail call i32 @llvm.bswap.i32(i32 %v.addr.0.i567) #8
  %regs.i571 = getelementptr inbounds %struct.vop, ptr %7, i32 0, i32 12
  %517 = ptrtoint ptr %regs.i571 to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load ptr, ptr %regs.i571, align 8
  %add.ptr.i572 = getelementptr i8, ptr %518, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i572, i32 %516) #8, !srcloc !305
  br label %vop_reg_set.exit577

do.body.i576:                                     ; preds = %if.end20.i570
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !306
  tail call void @arm_heavy_mb() #8
  %519 = tail call i32 @llvm.bswap.i32(i32 %v.addr.0.i567) #8
  %regs24.i574 = getelementptr inbounds %struct.vop, ptr %7, i32 0, i32 12
  %520 = ptrtoint ptr %regs24.i574 to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load ptr, ptr %regs24.i574, align 8
  %add.ptr25.i575 = getelementptr i8, ptr %521, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i575, i32 %519) #8, !srcloc !305
  br label %vop_reg_set.exit577

vop_reg_set.exit577:                              ; preds = %do.body.i576, %if.then22.i573, %if.then.i549
  %522 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load ptr, ptr %phy, align 4
  %alpha_mode = getelementptr inbounds %struct.vop_win_phy, ptr %523, i32 0, i32 20
  %524 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %524)
  %525 = load i32, ptr %9, align 4
  tail call fastcc void @vop_reg_set(ptr noundef %7, ptr noundef %alpha_mode, i32 noundef %525, i32 noundef -1, i32 noundef 1, ptr noundef nonnull @.str.49)
  %526 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load ptr, ptr %phy, align 4
  %alpha_en = getelementptr inbounds %struct.vop_win_phy, ptr %527, i32 0, i32 21
  %528 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load i32, ptr %9, align 4
  tail call fastcc void @vop_reg_set(ptr noundef %7, ptr noundef %alpha_en, i32 noundef %529, i32 noundef -1, i32 noundef 1, ptr noundef nonnull @.str.50)
  br label %if.end328

if.else:                                          ; preds = %has_rb_swapped.exit
  %src_alpha_ctl323 = getelementptr inbounds %struct.vop_win_phy, ptr %489, i32 0, i32 18
  %530 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %530)
  %531 = load i32, ptr %9, align 4
  %tobool.not.i578 = icmp eq ptr %src_alpha_ctl323, null
  br i1 %tobool.not.i578, label %if.else.if.then.i582_crit_edge, label %lor.lhs.false.i580

if.else.if.then.i582_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i582

lor.lhs.false.i580:                               ; preds = %if.else
  %532 = ptrtoint ptr %src_alpha_ctl323 to i32
  call void @__asan_load4_noabort(i32 %532)
  %533 = load i32, ptr %src_alpha_ctl323, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %533)
  %tobool2.not.i579 = icmp eq i32 %533, 0
  br i1 %tobool2.not.i579, label %lor.lhs.false.i580.if.then.i582_crit_edge, label %if.end.i590

lor.lhs.false.i580.if.then.i582_crit_edge:        ; preds = %lor.lhs.false.i580
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i582

if.then.i582:                                     ; preds = %lor.lhs.false.i580.if.then.i582_crit_edge, %if.else.if.then.i582_crit_edge
  %dev.i581 = getelementptr inbounds %struct.vop, ptr %7, i32 0, i32 1
  %534 = ptrtoint ptr %dev.i581 to i32
  call void @__asan_load4_noabort(i32 %534)
  %535 = load ptr, ptr %dev.i581, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %535, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.47) #8
  br label %vop_reg_set.exit611

if.end.i590:                                      ; preds = %lor.lhs.false.i580
  %offset3.i583 = getelementptr inbounds %struct.vop_win_phy, ptr %489, i32 0, i32 18, i32 1
  %536 = ptrtoint ptr %offset3.i583 to i32
  call void @__asan_load2_noabort(i32 %536)
  %537 = load i16, ptr %offset3.i583, align 4
  %conv.i584 = zext i16 %537 to i32
  %add.i585 = add i32 %531, %conv.i584
  %shift5.i586 = getelementptr inbounds %struct.vop_win_phy, ptr %489, i32 0, i32 18, i32 2
  %538 = ptrtoint ptr %shift5.i586 to i32
  call void @__asan_load1_noabort(i32 %538)
  %539 = load i8, ptr %shift5.i586, align 2
  %conv6.i587 = zext i8 %539 to i32
  %write_mask.i588 = getelementptr inbounds %struct.vop_win_phy, ptr %489, i32 0, i32 18, i32 3
  %540 = ptrtoint ptr %write_mask.i588 to i32
  call void @__asan_load1_noabort(i32 %540)
  %541 = load i8, ptr %write_mask.i588, align 1, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %541)
  %tobool7.not.i589 = icmp eq i8 %541, 0
  br i1 %tobool7.not.i589, label %if.else.i600, label %if.then8.i593

if.then8.i593:                                    ; preds = %if.end.i590
  call void @__sanitizer_cov_trace_pc() #10
  %add10.i591 = add nuw nsw i32 %conv6.i587, 16
  %shl11.i592 = shl i32 %533, %add10.i591
  br label %if.end20.i604

if.else.i600:                                     ; preds = %if.end.i590
  call void @__sanitizer_cov_trace_pc() #10
  %regsbak.i594 = getelementptr inbounds %struct.vop, ptr %7, i32 0, i32 11
  %542 = ptrtoint ptr %regsbak.i594 to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load ptr, ptr %regsbak.i594, align 4
  %shr.i595 = ashr i32 %add.i585, 2
  %arrayidx.i596 = getelementptr i32, ptr %543, i32 %shr.i595
  %544 = ptrtoint ptr %arrayidx.i596 to i32
  call void @__asan_load4_noabort(i32 %544)
  %545 = load i32, ptr %arrayidx.i596, align 4
  %shl12.i597 = shl i32 %533, %conv6.i587
  %neg.i598 = xor i32 %shl12.i597, -1
  %and13.i599 = and i32 %545, %neg.i598
  store i32 %and13.i599, ptr %arrayidx.i596, align 4
  br label %if.end20.i604

if.end20.i604:                                    ; preds = %if.else.i600, %if.then8.i593
  %v.addr.0.i601 = phi i32 [ %shl11.i592, %if.then8.i593 ], [ %and13.i599, %if.else.i600 ]
  %relaxed.i602 = getelementptr inbounds %struct.vop_win_phy, ptr %489, i32 0, i32 18, i32 4
  %546 = ptrtoint ptr %relaxed.i602 to i32
  call void @__asan_load1_noabort(i32 %546)
  %547 = load i8, ptr %relaxed.i602, align 4, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %547)
  %tobool21.not.i603 = icmp eq i8 %547, 0
  br i1 %tobool21.not.i603, label %do.body.i610, label %if.then22.i607

if.then22.i607:                                   ; preds = %if.end20.i604
  call void @__sanitizer_cov_trace_pc() #10
  %548 = tail call i32 @llvm.bswap.i32(i32 %v.addr.0.i601) #8
  %regs.i605 = getelementptr inbounds %struct.vop, ptr %7, i32 0, i32 12
  %549 = ptrtoint ptr %regs.i605 to i32
  call void @__asan_load4_noabort(i32 %549)
  %550 = load ptr, ptr %regs.i605, align 8
  %add.ptr.i606 = getelementptr i8, ptr %550, i32 %add.i585
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i606, i32 %548) #8, !srcloc !305
  br label %vop_reg_set.exit611

do.body.i610:                                     ; preds = %if.end20.i604
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !306
  tail call void @arm_heavy_mb() #8
  %551 = tail call i32 @llvm.bswap.i32(i32 %v.addr.0.i601) #8
  %regs24.i608 = getelementptr inbounds %struct.vop, ptr %7, i32 0, i32 12
  %552 = ptrtoint ptr %regs24.i608 to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load ptr, ptr %regs24.i608, align 8
  %add.ptr25.i609 = getelementptr i8, ptr %553, i32 %add.i585
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i609, i32 %551) #8, !srcloc !305
  br label %vop_reg_set.exit611

vop_reg_set.exit611:                              ; preds = %do.body.i610, %if.then22.i607, %if.then.i582
  %554 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %554)
  %555 = load ptr, ptr %phy, align 4
  %alpha_en326 = getelementptr inbounds %struct.vop_win_phy, ptr %555, i32 0, i32 21
  %556 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %556)
  %557 = load i32, ptr %9, align 4
  %tobool.not.i612 = icmp eq ptr %alpha_en326, null
  br i1 %tobool.not.i612, label %vop_reg_set.exit611.if.then.i616_crit_edge, label %lor.lhs.false.i614

vop_reg_set.exit611.if.then.i616_crit_edge:       ; preds = %vop_reg_set.exit611
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i616

lor.lhs.false.i614:                               ; preds = %vop_reg_set.exit611
  %558 = ptrtoint ptr %alpha_en326 to i32
  call void @__asan_load4_noabort(i32 %558)
  %559 = load i32, ptr %alpha_en326, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %559)
  %tobool2.not.i613 = icmp eq i32 %559, 0
  br i1 %tobool2.not.i613, label %lor.lhs.false.i614.if.then.i616_crit_edge, label %if.end.i624

lor.lhs.false.i614.if.then.i616_crit_edge:        ; preds = %lor.lhs.false.i614
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i616

if.then.i616:                                     ; preds = %lor.lhs.false.i614.if.then.i616_crit_edge, %vop_reg_set.exit611.if.then.i616_crit_edge
  %dev.i615 = getelementptr inbounds %struct.vop, ptr %7, i32 0, i32 1
  %560 = ptrtoint ptr %dev.i615 to i32
  call void @__asan_load4_noabort(i32 %560)
  %561 = load ptr, ptr %dev.i615, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %561, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.50) #8
  br label %if.end328

if.end.i624:                                      ; preds = %lor.lhs.false.i614
  %offset3.i617 = getelementptr inbounds %struct.vop_win_phy, ptr %555, i32 0, i32 21, i32 1
  %562 = ptrtoint ptr %offset3.i617 to i32
  call void @__asan_load2_noabort(i32 %562)
  %563 = load i16, ptr %offset3.i617, align 4
  %conv.i618 = zext i16 %563 to i32
  %add.i619 = add i32 %557, %conv.i618
  %shift5.i620 = getelementptr inbounds %struct.vop_win_phy, ptr %555, i32 0, i32 21, i32 2
  %564 = ptrtoint ptr %shift5.i620 to i32
  call void @__asan_load1_noabort(i32 %564)
  %565 = load i8, ptr %shift5.i620, align 2
  %conv6.i621 = zext i8 %565 to i32
  %write_mask.i622 = getelementptr inbounds %struct.vop_win_phy, ptr %555, i32 0, i32 21, i32 3
  %566 = ptrtoint ptr %write_mask.i622 to i32
  call void @__asan_load1_noabort(i32 %566)
  %567 = load i8, ptr %write_mask.i622, align 1, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %567)
  %tobool7.not.i623 = icmp eq i8 %567, 0
  br i1 %tobool7.not.i623, label %if.else.i634, label %if.then8.i627

if.then8.i627:                                    ; preds = %if.end.i624
  call void @__sanitizer_cov_trace_pc() #10
  %add10.i625 = add nuw nsw i32 %conv6.i621, 16
  %shl11.i626 = shl i32 %559, %add10.i625
  br label %if.end20.i638

if.else.i634:                                     ; preds = %if.end.i624
  call void @__sanitizer_cov_trace_pc() #10
  %regsbak.i628 = getelementptr inbounds %struct.vop, ptr %7, i32 0, i32 11
  %568 = ptrtoint ptr %regsbak.i628 to i32
  call void @__asan_load4_noabort(i32 %568)
  %569 = load ptr, ptr %regsbak.i628, align 4
  %shr.i629 = ashr i32 %add.i619, 2
  %arrayidx.i630 = getelementptr i32, ptr %569, i32 %shr.i629
  %570 = ptrtoint ptr %arrayidx.i630 to i32
  call void @__asan_load4_noabort(i32 %570)
  %571 = load i32, ptr %arrayidx.i630, align 4
  %shl12.i631 = shl i32 %559, %conv6.i621
  %neg.i632 = xor i32 %shl12.i631, -1
  %and13.i633 = and i32 %571, %neg.i632
  store i32 %and13.i633, ptr %arrayidx.i630, align 4
  br label %if.end20.i638

if.end20.i638:                                    ; preds = %if.else.i634, %if.then8.i627
  %v.addr.0.i635 = phi i32 [ %shl11.i626, %if.then8.i627 ], [ %and13.i633, %if.else.i634 ]
  %relaxed.i636 = getelementptr inbounds %struct.vop_win_phy, ptr %555, i32 0, i32 21, i32 4
  %572 = ptrtoint ptr %relaxed.i636 to i32
  call void @__asan_load1_noabort(i32 %572)
  %573 = load i8, ptr %relaxed.i636, align 4, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %573)
  %tobool21.not.i637 = icmp eq i8 %573, 0
  br i1 %tobool21.not.i637, label %do.body.i644, label %if.then22.i641

if.then22.i641:                                   ; preds = %if.end20.i638
  call void @__sanitizer_cov_trace_pc() #10
  %574 = tail call i32 @llvm.bswap.i32(i32 %v.addr.0.i635) #8
  %regs.i639 = getelementptr inbounds %struct.vop, ptr %7, i32 0, i32 12
  %575 = ptrtoint ptr %regs.i639 to i32
  call void @__asan_load4_noabort(i32 %575)
  %576 = load ptr, ptr %regs.i639, align 8
  %add.ptr.i640 = getelementptr i8, ptr %576, i32 %add.i619
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i640, i32 %574) #8, !srcloc !305
  br label %if.end328

do.body.i644:                                     ; preds = %if.end20.i638
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !306
  tail call void @arm_heavy_mb() #8
  %577 = tail call i32 @llvm.bswap.i32(i32 %v.addr.0.i635) #8
  %regs24.i642 = getelementptr inbounds %struct.vop, ptr %7, i32 0, i32 12
  %578 = ptrtoint ptr %regs24.i642 to i32
  call void @__asan_load4_noabort(i32 %578)
  %579 = load ptr, ptr %regs24.i642, align 8
  %add.ptr25.i643 = getelementptr i8, ptr %579, i32 %add.i619
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i643, i32 %577) #8, !srcloc !305
  br label %if.end328

if.end328:                                        ; preds = %do.body.i644, %if.then22.i641, %if.then.i616, %vop_reg_set.exit577
  %580 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %580)
  %581 = load ptr, ptr %phy, align 4
  %enable = getelementptr inbounds %struct.vop_win_phy, ptr %581, i32 0, i32 4
  %582 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %582)
  %583 = load i32, ptr %9, align 4
  tail call fastcc void @vop_reg_set(ptr noundef %7, ptr noundef %enable, i32 noundef %583, i32 noundef -1, i32 noundef 1, ptr noundef nonnull @.str.4)
  %shl331 = shl nuw i32 1, %sub.ptr.div
  %win_enabled = getelementptr inbounds %struct.vop, ptr %7, i32 0, i32 5
  %584 = ptrtoint ptr %win_enabled to i32
  call void @__asan_load4_noabort(i32 %584)
  %585 = load i32, ptr %win_enabled, align 4
  %or332 = or i32 %585, %shl331
  store i32 %or332, ptr %win_enabled, align 4
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end328, %if.end.i, %if.then74.cleanup_crit_edge, %do.end56, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vop_plane_atomic_disable(ptr noundef %plane, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %crtc = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %crtc, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %reg_lock = getelementptr inbounds %struct.vop, ptr %7, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #8
  tail call fastcc void @vop_win_disable(ptr noundef nonnull %7, ptr noundef %plane)
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vop_plane_atomic_async_check(ptr noundef readonly %plane, ptr noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %data = getelementptr inbounds %struct.vop_win, ptr %plane, i32 0, i32 1
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 8
  %phy = getelementptr inbounds %struct.vop_win_data, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %tobool.not = icmp eq ptr %11, null
  %cond = select i1 %tobool.not, i32 65536, i32 8192
  %cond4 = select i1 %tobool.not, i32 65536, i32 524288
  %crtc = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 1
  %12 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %crtc, align 4
  %cursor = getelementptr inbounds %struct.drm_crtc, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %cursor to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cursor, align 8
  %cmp.not = icmp eq ptr %15, %plane
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %state5 = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 19
  %16 = ptrtoint ptr %state5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %state5, align 4
  %tobool6.not = icmp eq ptr %17, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fb, align 4
  %tobool10.not = icmp eq ptr %19, null
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %tobool13.not = icmp eq ptr %state, null
  br i1 %tobool13.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %crtcs.i = getelementptr inbounds %struct.drm_atomic_state, ptr %state, i32 0, i32 4
  %20 = ptrtoint ptr %crtcs.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %crtcs.i, align 4
  %index.i.i37 = getelementptr inbounds %struct.drm_crtc, ptr %13, i32 0, i32 8
  %22 = ptrtoint ptr %index.i.i37 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %index.i.i37, align 4
  %state1.i = getelementptr %struct.__drm_crtcs_state, ptr %21, i32 %23, i32 1
  br label %if.end19

if.else:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %crtc17 = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 11
  %24 = ptrtoint ptr %crtc17 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %crtc17, align 8
  %state18 = getelementptr inbounds %struct.drm_crtc, ptr %25, i32 0, i32 22
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then14
  %crtc_state.0.in = phi ptr [ %state1.i, %if.then14 ], [ %state18, %if.else ]
  %26 = ptrtoint ptr %crtc_state.0.in to i32
  call void @__asan_load4_noabort(i32 %26)
  %crtc_state.0 = load ptr, ptr %crtc_state.0.in, align 4
  %call21 = tail call i32 @drm_atomic_helper_check_plane_state(ptr noundef nonnull %17, ptr noundef %crtc_state.0, i32 noundef %cond, i32 noundef %cond4, i1 noundef zeroext true, i1 noundef zeroext true) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call21, %if.end19 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vop_plane_atomic_async_update(ptr noundef %plane, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %state1 = getelementptr inbounds %struct.drm_plane, ptr %plane, i32 0, i32 19
  %6 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state1, align 4
  %crtc = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %crtc, align 4
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fb, align 4
  %crtc_x = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 4
  %12 = ptrtoint ptr %crtc_x to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %crtc_x, align 4
  %crtc_x4 = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 4
  %14 = ptrtoint ptr %crtc_x4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %crtc_x4, align 4
  %crtc_y = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 5
  %15 = ptrtoint ptr %crtc_y to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %crtc_y, align 4
  %17 = load ptr, ptr %state1, align 4
  %crtc_y6 = getelementptr inbounds %struct.drm_plane_state, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %crtc_y6 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %16, ptr %crtc_y6, align 4
  %crtc_h = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 7
  %19 = ptrtoint ptr %crtc_h to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %crtc_h, align 4
  %21 = load ptr, ptr %state1, align 4
  %crtc_h8 = getelementptr inbounds %struct.drm_plane_state, ptr %21, i32 0, i32 7
  %22 = ptrtoint ptr %crtc_h8 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %20, ptr %crtc_h8, align 4
  %crtc_w = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 6
  %23 = ptrtoint ptr %crtc_w to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %crtc_w, align 4
  %25 = load ptr, ptr %state1, align 4
  %crtc_w10 = getelementptr inbounds %struct.drm_plane_state, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %crtc_w10 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %24, ptr %crtc_w10, align 4
  %src_x = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 8
  %27 = ptrtoint ptr %src_x to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %src_x, align 4
  %29 = load ptr, ptr %state1, align 4
  %src_x12 = getelementptr inbounds %struct.drm_plane_state, ptr %29, i32 0, i32 8
  %30 = ptrtoint ptr %src_x12 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %28, ptr %src_x12, align 4
  %src_y = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 9
  %31 = ptrtoint ptr %src_y to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %src_y, align 4
  %33 = load ptr, ptr %state1, align 4
  %src_y14 = getelementptr inbounds %struct.drm_plane_state, ptr %33, i32 0, i32 9
  %34 = ptrtoint ptr %src_y14 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %32, ptr %src_y14, align 4
  %src_h = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 10
  %35 = ptrtoint ptr %src_h to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %src_h, align 4
  %37 = load ptr, ptr %state1, align 4
  %src_h16 = getelementptr inbounds %struct.drm_plane_state, ptr %37, i32 0, i32 10
  %38 = ptrtoint ptr %src_h16 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %36, ptr %src_h16, align 4
  %src_w = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 11
  %39 = ptrtoint ptr %src_w to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %src_w, align 4
  %41 = load ptr, ptr %state1, align 4
  %src_w18 = getelementptr inbounds %struct.drm_plane_state, ptr %41, i32 0, i32 11
  %42 = ptrtoint ptr %src_w18 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %40, ptr %src_w18, align 4
  %43 = load ptr, ptr %state1, align 4
  %fb20 = getelementptr inbounds %struct.drm_plane_state, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %fb20 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %fb20, align 4
  %fb21 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 2
  %46 = ptrtoint ptr %fb21 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %fb21, align 4
  store ptr %47, ptr %fb20, align 4
  store ptr %45, ptr %fb21, align 4
  %is_enabled = getelementptr inbounds %struct.vop, ptr %9, i32 0, i32 3
  %48 = ptrtoint ptr %is_enabled to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %is_enabled, align 8, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool.not = icmp eq i8 %49, 0
  br i1 %tobool.not, label %entry.if.end59_crit_edge, label %if.then

entry.if.end59_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.then:                                          ; preds = %entry
  tail call void @vop_plane_atomic_update(ptr noundef %plane, ptr noundef %state)
  %reg_lock = getelementptr inbounds %struct.vop, ptr %9, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #8
  %data.i = getelementptr inbounds %struct.vop, ptr %9, i32 0, i32 10
  %50 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data.i, align 8
  %common.i = getelementptr inbounds %struct.vop_data, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %common.i, align 8
  tail call fastcc void @vop_reg_set(ptr noundef %9, ptr noundef %53, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef nonnull @.str.73) #8
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #8
  %tobool26.not = icmp eq ptr %11, null
  br i1 %tobool26.not, label %if.then.if.end59_crit_edge, label %land.lhs.true

if.then.if.end59_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

land.lhs.true:                                    ; preds = %if.then
  %54 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %state1, align 4
  %fb28 = getelementptr inbounds %struct.drm_plane_state, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %fb28 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %fb28, align 4
  %cmp.not = icmp eq ptr %57, %11
  br i1 %cmp.not, label %land.lhs.true.if.end59_crit_edge, label %if.then29

land.lhs.true.if.end59_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.then29:                                        ; preds = %land.lhs.true
  %base.i = getelementptr inbounds %struct.drm_framebuffer, ptr %11, i32 0, i32 2
  tail call void @drm_mode_object_get(ptr noundef %base.i) #8
  %58 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %state1, align 4
  %crtc31 = getelementptr inbounds %struct.drm_plane_state, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %crtc31 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %crtc31, align 4
  %call32 = tail call i32 @drm_crtc_vblank_get(ptr noundef %61) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33.not = icmp eq i32 %call32, 0
  br i1 %cmp33.not, label %if.then29.if.end_crit_edge, label %do.end45, !prof !307

if.then29.if.end_crit_edge:                       ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end45:                                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1102, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end45, %if.then29.if.end_crit_edge
  %fb_unref_work = getelementptr inbounds %struct.vop, ptr %9, i32 0, i32 7
  tail call void @drm_flip_work_queue(ptr noundef %fb_unref_work, ptr noundef nonnull %11) #8
  %pending = getelementptr inbounds %struct.vop, ptr %9, i32 0, i32 8
  tail call void @_set_bit(i32 noundef 0, ptr noundef %pending) #8
  br label %if.end59

if.end59:                                         ; preds = %if.end, %land.lhs.true.if.end59_crit_edge, %if.then.if.end59_crit_edge, %entry.if.end59_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check_plane_state(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vop_win_disable(ptr noundef %vop, ptr noundef %vop_win) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.vop_win, ptr %vop_win, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 8
  %phy = getelementptr inbounds %struct.vop_win_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %yrgb_hor_scl_mode = getelementptr inbounds %struct.vop_scl_extension, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 4
  %tobool.not.i = icmp eq ptr %yrgb_hor_scl_mode, null
  br i1 %tobool.not.i, label %if.then.if.then.i_crit_edge, label %lor.lhs.false.i

if.then.if.then.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.then
  %10 = ptrtoint ptr %yrgb_hor_scl_mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %yrgb_hor_scl_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool2.not.i = icmp eq i32 %11, 0
  br i1 %tobool2.not.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %if.end.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.then.if.then.i_crit_edge
  %dev.i = getelementptr inbounds %struct.vop, ptr %vop, i32 0, i32 1
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %13, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.61) #8
  br label %vop_reg_set.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %offset3.i = getelementptr inbounds %struct.vop_scl_extension, ptr %7, i32 0, i32 9, i32 1
  %14 = ptrtoint ptr %offset3.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %offset3.i, align 4
  %conv.i = zext i16 %15 to i32
  %add.i = add i32 %9, %conv.i
  %shift5.i = getelementptr inbounds %struct.vop_scl_extension, ptr %7, i32 0, i32 9, i32 2
  %16 = ptrtoint ptr %shift5.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %shift5.i, align 2
  %conv6.i = zext i8 %17 to i32
  %write_mask.i = getelementptr inbounds %struct.vop_scl_extension, ptr %7, i32 0, i32 9, i32 3
  %18 = ptrtoint ptr %write_mask.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %write_mask.i, align 1, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool7.not.i = icmp eq i8 %19, 0
  br i1 %tobool7.not.i, label %if.else.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %add10.i = add nuw nsw i32 %conv6.i, 16
  %shl11.i = shl i32 %11, %add10.i
  br label %if.end20.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %regsbak.i = getelementptr inbounds %struct.vop, ptr %vop, i32 0, i32 11
  %20 = ptrtoint ptr %regsbak.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regsbak.i, align 4
  %shr.i = ashr i32 %add.i, 2
  %arrayidx.i = getelementptr i32, ptr %21, i32 %shr.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i, align 4
  %shl12.i = shl i32 %11, %conv6.i
  %neg.i = xor i32 %shl12.i, -1
  %and13.i = and i32 %23, %neg.i
  store i32 %and13.i, ptr %arrayidx.i, align 4
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.else.i, %if.then8.i
  %v.addr.0.i = phi i32 [ %shl11.i, %if.then8.i ], [ %and13.i, %if.else.i ]
  %relaxed.i = getelementptr inbounds %struct.vop_scl_extension, ptr %7, i32 0, i32 9, i32 4
  %24 = ptrtoint ptr %relaxed.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %relaxed.i, align 4, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool21.not.i = icmp eq i8 %25, 0
  br i1 %tobool21.not.i, label %do.body.i, label %if.then22.i

if.then22.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  %26 = tail call i32 @llvm.bswap.i32(i32 %v.addr.0.i) #8
  %regs.i = getelementptr inbounds %struct.vop, ptr %vop, i32 0, i32 12
  %27 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %28, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %26) #8, !srcloc !305
  br label %vop_reg_set.exit

do.body.i:                                        ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !306
  tail call void @arm_heavy_mb() #8
  %29 = tail call i32 @llvm.bswap.i32(i32 %v.addr.0.i) #8
  %regs24.i = getelementptr inbounds %struct.vop, ptr %vop, i32 0, i32 12
  %30 = ptrtoint ptr %regs24.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs24.i, align 8
  %add.ptr25.i = getelementptr i8, ptr %31, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i, i32 %29) #8, !srcloc !305
  br label %vop_reg_set.exit

vop_reg_set.exit:                                 ; preds = %do.body.i, %if.then22.i, %if.then.i
  %32 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %phy, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  %yrgb_ver_scl_mode = getelementptr inbounds %struct.vop_scl_extension, ptr %37, i32 0, i32 8
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %1, align 4
  %tobool.not.i42 = icmp eq ptr %yrgb_ver_scl_mode, null
  br i1 %tobool.not.i42, label %vop_reg_set.exit.if.then.i46_crit_edge, label %lor.lhs.false.i44

vop_reg_set.exit.if.then.i46_crit_edge:           ; preds = %vop_reg_set.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i46

lor.lhs.false.i44:                                ; preds = %vop_reg_set.exit
  %40 = ptrtoint ptr %yrgb_ver_scl_mode to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %yrgb_ver_scl_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool2.not.i43 = icmp eq i32 %41, 0
  br i1 %tobool2.not.i43, label %lor.lhs.false.i44.if.then.i46_crit_edge, label %if.end.i54

lor.lhs.false.i44.if.then.i46_crit_edge:          ; preds = %lor.lhs.false.i44
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i46

if.then.i46:                                      ; preds = %lor.lhs.false.i44.if.then.i46_crit_edge, %vop_reg_set.exit.if.then.i46_crit_edge
  %dev.i45 = getelementptr inbounds %struct.vop, ptr %vop, i32 0, i32 1
  %42 = ptrtoint ptr %dev.i45 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev.i45, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %43, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.62) #8
  br label %vop_reg_set.exit75

if.end.i54:                                       ; preds = %lor.lhs.false.i44
  %offset3.i47 = getelementptr inbounds %struct.vop_scl_extension, ptr %37, i32 0, i32 8, i32 1
  %44 = ptrtoint ptr %offset3.i47 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %offset3.i47, align 4
  %conv.i48 = zext i16 %45 to i32
  %add.i49 = add i32 %39, %conv.i48
  %shift5.i50 = getelementptr inbounds %struct.vop_scl_extension, ptr %37, i32 0, i32 8, i32 2
  %46 = ptrtoint ptr %shift5.i50 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %shift5.i50, align 2
  %conv6.i51 = zext i8 %47 to i32
  %write_mask.i52 = getelementptr inbounds %struct.vop_scl_extension, ptr %37, i32 0, i32 8, i32 3
  %48 = ptrtoint ptr %write_mask.i52 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %write_mask.i52, align 1, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool7.not.i53 = icmp eq i8 %49, 0
  br i1 %tobool7.not.i53, label %if.else.i64, label %if.then8.i57

if.then8.i57:                                     ; preds = %if.end.i54
  call void @__sanitizer_cov_trace_pc() #10
  %add10.i55 = add nuw nsw i32 %conv6.i51, 16
  %shl11.i56 = shl i32 %41, %add10.i55
  br label %if.end20.i68

if.else.i64:                                      ; preds = %if.end.i54
  call void @__sanitizer_cov_trace_pc() #10
  %regsbak.i58 = getelementptr inbounds %struct.vop, ptr %vop, i32 0, i32 11
  %50 = ptrtoint ptr %regsbak.i58 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regsbak.i58, align 4
  %shr.i59 = ashr i32 %add.i49, 2
  %arrayidx.i60 = getelementptr i32, ptr %51, i32 %shr.i59
  %52 = ptrtoint ptr %arrayidx.i60 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.i60, align 4
  %shl12.i61 = shl i32 %41, %conv6.i51
  %neg.i62 = xor i32 %shl12.i61, -1
  %and13.i63 = and i32 %53, %neg.i62
  store i32 %and13.i63, ptr %arrayidx.i60, align 4
  br label %if.end20.i68

if.end20.i68:                                     ; preds = %if.else.i64, %if.then8.i57
  %v.addr.0.i65 = phi i32 [ %shl11.i56, %if.then8.i57 ], [ %and13.i63, %if.else.i64 ]
  %relaxed.i66 = getelementptr inbounds %struct.vop_scl_extension, ptr %37, i32 0, i32 8, i32 4
  %54 = ptrtoint ptr %relaxed.i66 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %relaxed.i66, align 4, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool21.not.i67 = icmp eq i8 %55, 0
  br i1 %tobool21.not.i67, label %do.body.i74, label %if.then22.i71

if.then22.i71:                                    ; preds = %if.end20.i68
  call void @__sanitizer_cov_trace_pc() #10
  %56 = tail call i32 @llvm.bswap.i32(i32 %v.addr.0.i65) #8
  %regs.i69 = getelementptr inbounds %struct.vop, ptr %vop, i32 0, i32 12
  %57 = ptrtoint ptr %regs.i69 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regs.i69, align 8
  %add.ptr.i70 = getelementptr i8, ptr %58, i32 %add.i49
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i70, i32 %56) #8, !srcloc !305
  br label %vop_reg_set.exit75

do.body.i74:                                      ; preds = %if.end20.i68
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !306
  tail call void @arm_heavy_mb() #8
  %59 = tail call i32 @llvm.bswap.i32(i32 %v.addr.0.i65) #8
  %regs24.i72 = getelementptr inbounds %struct.vop, ptr %vop, i32 0, i32 12
  %60 = ptrtoint ptr %regs24.i72 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regs24.i72, align 8
  %add.ptr25.i73 = getelementptr i8, ptr %61, i32 %add.i49
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i73, i32 %59) #8, !srcloc !305
  br label %vop_reg_set.exit75

vop_reg_set.exit75:                               ; preds = %do.body.i74, %if.then22.i71, %if.then.i46
  %62 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %phy, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 4
  %cbcr_hor_scl_mode = getelementptr inbounds %struct.vop_scl_extension, ptr %67, i32 0, i32 4
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %1, align 4
  %tobool.not.i76 = icmp eq ptr %cbcr_hor_scl_mode, null
  br i1 %tobool.not.i76, label %vop_reg_set.exit75.if.then.i80_crit_edge, label %lor.lhs.false.i78

vop_reg_set.exit75.if.then.i80_crit_edge:         ; preds = %vop_reg_set.exit75
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i80

lor.lhs.false.i78:                                ; preds = %vop_reg_set.exit75
  %70 = ptrtoint ptr %cbcr_hor_scl_mode to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %cbcr_hor_scl_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool2.not.i77 = icmp eq i32 %71, 0
  br i1 %tobool2.not.i77, label %lor.lhs.false.i78.if.then.i80_crit_edge, label %if.end.i88

lor.lhs.false.i78.if.then.i80_crit_edge:          ; preds = %lor.lhs.false.i78
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i80

if.then.i80:                                      ; preds = %lor.lhs.false.i78.if.then.i80_crit_edge, %vop_reg_set.exit75.if.then.i80_crit_edge
  %dev.i79 = getelementptr inbounds %struct.vop, ptr %vop, i32 0, i32 1
  %72 = ptrtoint ptr %dev.i79 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev.i79, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %73, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.68) #8
  br label %vop_reg_set.exit109

if.end.i88:                                       ; preds = %lor.lhs.false.i78
  %offset3.i81 = getelementptr inbounds %struct.vop_scl_extension, ptr %67, i32 0, i32 4, i32 1
  %74 = ptrtoint ptr %offset3.i81 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %offset3.i81, align 4
  %conv.i82 = zext i16 %75 to i32
  %add.i83 = add i32 %69, %conv.i82
  %shift5.i84 = getelementptr inbounds %struct.vop_scl_extension, ptr %67, i32 0, i32 4, i32 2
  %76 = ptrtoint ptr %shift5.i84 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %shift5.i84, align 2
  %conv6.i85 = zext i8 %77 to i32
  %write_mask.i86 = getelementptr inbounds %struct.vop_scl_extension, ptr %67, i32 0, i32 4, i32 3
  %78 = ptrtoint ptr %write_mask.i86 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %write_mask.i86, align 1, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool7.not.i87 = icmp eq i8 %79, 0
  br i1 %tobool7.not.i87, label %if.else.i98, label %if.then8.i91

if.then8.i91:                                     ; preds = %if.end.i88
  call void @__sanitizer_cov_trace_pc() #10
  %add10.i89 = add nuw nsw i32 %conv6.i85, 16
  %shl11.i90 = shl i32 %71, %add10.i89
  br label %if.end20.i102

if.else.i98:                                      ; preds = %if.end.i88
  call void @__sanitizer_cov_trace_pc() #10
  %regsbak.i92 = getelementptr inbounds %struct.vop, ptr %vop, i32 0, i32 11
  %80 = ptrtoint ptr %regsbak.i92 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %regsbak.i92, align 4
  %shr.i93 = ashr i32 %add.i83, 2
  %arrayidx.i94 = getelementptr i32, ptr %81, i32 %shr.i93
  %82 = ptrtoint ptr %arrayidx.i94 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx.i94, align 4
  %shl12.i95 = shl i32 %71, %conv6.i85
  %neg.i96 = xor i32 %shl12.i95, -1
  %and13.i97 = and i32 %83, %neg.i96
  store i32 %and13.i97, ptr %arrayidx.i94, align 4
  br label %if.end20.i102

if.end20.i102:                                    ; preds = %if.else.i98, %if.then8.i91
  %v.addr.0.i99 = phi i32 [ %shl11.i90, %if.then8.i91 ], [ %and13.i97, %if.else.i98 ]
  %relaxed.i100 = getelementptr inbounds %struct.vop_scl_extension, ptr %67, i32 0, i32 4, i32 4
  %84 = ptrtoint ptr %relaxed.i100 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %relaxed.i100, align 4, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool21.not.i101 = icmp eq i8 %85, 0
  br i1 %tobool21.not.i101, label %do.body.i108, label %if.then22.i105

if.then22.i105:                                   ; preds = %if.end20.i102
  call void @__sanitizer_cov_trace_pc() #10
  %86 = tail call i32 @llvm.bswap.i32(i32 %v.addr.0.i99) #8
  %regs.i103 = getelementptr inbounds %struct.vop, ptr %vop, i32 0, i32 12
  %87 = ptrtoint ptr %regs.i103 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %regs.i103, align 8
  %add.ptr.i104 = getelementptr i8, ptr %88, i32 %add.i83
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i104, i32 %86) #8, !srcloc !305
  br label %vop_reg_set.exit109

do.body.i108:                                     ; preds = %if.end20.i102
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !306
  tail call void @arm_heavy_mb() #8
  %89 = tail call i32 @llvm.bswap.i32(i32 %v.addr.0.i99) #8
  %regs24.i106 = getelementptr inbounds %struct.vop, ptr %vop, i32 0, i32 12
  %90 = ptrtoint ptr %regs24.i106 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %regs24.i106, align 8
  %add.ptr25.i107 = getelementptr i8, ptr %91, i32 %add.i83
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i107, i32 %89) #8, !srcloc !305
  br label %vop_reg_set.exit109

vop_reg_set.exit109:                              ; preds = %do.body.i108, %if.then22.i105, %if.then.i80
  %92 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %phy, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %93, align 4
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %95, align 4
  %cbcr_ver_scl_mode = getelementptr inbounds %struct.vop_scl_extension, ptr %97, i32 0, i32 3
  %98 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %1, align 4
  %tobool.not.i110 = icmp eq ptr %cbcr_ver_scl_mode, null
  br i1 %tobool.not.i110, label %vop_reg_set.exit109.if.then.i114_crit_edge, label %lor.lhs.false.i112

vop_reg_set.exit109.if.then.i114_crit_edge:       ; preds = %vop_reg_set.exit109
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i114

lor.lhs.false.i112:                               ; preds = %vop_reg_set.exit109
  %100 = ptrtoint ptr %cbcr_ver_scl_mode to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %cbcr_ver_scl_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool2.not.i111 = icmp eq i32 %101, 0
  br i1 %tobool2.not.i111, label %lor.lhs.false.i112.if.then.i114_crit_edge, label %if.end.i122

lor.lhs.false.i112.if.then.i114_crit_edge:        ; preds = %lor.lhs.false.i112
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i114

if.then.i114:                                     ; preds = %lor.lhs.false.i112.if.then.i114_crit_edge, %vop_reg_set.exit109.if.then.i114_crit_edge
  %dev.i113 = getelementptr inbounds %struct.vop, ptr %vop, i32 0, i32 1
  %102 = ptrtoint ptr %dev.i113 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev.i113, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %103, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.69) #8
  br label %if.end

if.end.i122:                                      ; preds = %lor.lhs.false.i112
  %offset3.i115 = getelementptr inbounds %struct.vop_scl_extension, ptr %97, i32 0, i32 3, i32 1
  %104 = ptrtoint ptr %offset3.i115 to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %offset3.i115, align 4
  %conv.i116 = zext i16 %105 to i32
  %add.i117 = add i32 %99, %conv.i116
  %shift5.i118 = getelementptr inbounds %struct.vop_scl_extension, ptr %97, i32 0, i32 3, i32 2
  %106 = ptrtoint ptr %shift5.i118 to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %shift5.i118, align 2
  %conv6.i119 = zext i8 %107 to i32
  %write_mask.i120 = getelementptr inbounds %struct.vop_scl_extension, ptr %97, i32 0, i32 3, i32 3
  %108 = ptrtoint ptr %write_mask.i120 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %write_mask.i120, align 1, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool7.not.i121 = icmp eq i8 %109, 0
  br i1 %tobool7.not.i121, label %if.else.i132, label %if.then8.i125

if.then8.i125:                                    ; preds = %if.end.i122
  call void @__sanitizer_cov_trace_pc() #10
  %add10.i123 = add nuw nsw i32 %conv6.i119, 16
  %shl11.i124 = shl i32 %101, %add10.i123
  br label %if.end20.i136

if.else.i132:                                     ; preds = %if.end.i122
  call void @__sanitizer_cov_trace_pc() #10
  %regsbak.i126 = getelementptr inbounds %struct.vop, ptr %vop, i32 0, i32 11
  %110 = ptrtoint ptr %regsbak.i126 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %regsbak.i126, align 4
  %shr.i127 = ashr i32 %add.i117, 2
  %arrayidx.i128 = getelementptr i32, ptr %111, i32 %shr.i127
  %112 = ptrtoint ptr %arrayidx.i128 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx.i128, align 4
  %shl12.i129 = shl i32 %101, %conv6.i119
  %neg.i130 = xor i32 %shl12.i129, -1
  %and13.i131 = and i32 %113, %neg.i130
  store i32 %and13.i131, ptr %arrayidx.i128, align 4
  br label %if.end20.i136

if.end20.i136:                                    ; preds = %if.else.i132, %if.then8.i125
  %v.addr.0.i133 = phi i32 [ %shl11.i124, %if.then8.i125 ], [ %and13.i131, %if.else.i132 ]
  %relaxed.i134 = getelementptr inbounds %struct.vop_scl_extension, ptr %97, i32 0, i32 3, i32 4
  %114 = ptrtoint ptr %relaxed.i134 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %relaxed.i134, align 4, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool21.not.i135 = icmp eq i8 %115, 0
  br i1 %tobool21.not.i135, label %do.body.i142, label %if.then22.i139

if.then22.i139:                                   ; preds = %if.end20.i136
  call void @__sanitizer_cov_trace_pc() #10
  %116 = tail call i32 @llvm.bswap.i32(i32 %v.addr.0.i133) #8
  %regs.i137 = getelementptr inbounds %struct.vop, ptr %vop, i32 0, i32 12
  %117 = ptrtoint ptr %regs.i137 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %regs.i137, align 8
  %add.ptr.i138 = getelementptr i8, ptr %118, i32 %add.i117
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i138, i32 %116) #8, !srcloc !305
  br label %if.end

do.body.i142:                                     ; preds = %if.end20.i136
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !306
  tail call void @arm_heavy_mb() #8
  %119 = tail call i32 @llvm.bswap.i32(i32 %v.addr.0.i133) #8
  %regs24.i140 = getelementptr inbounds %struct.vop, ptr %vop, i32 0, i32 12
  %120 = ptrtoint ptr %regs24.i140 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %regs24.i140, align 8
  %add.ptr25.i141 = getelementptr i8, ptr %121, i32 %add.i117
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i141, i32 %119) #8, !srcloc !305
  br label %if.end

if.end:                                           ; preds = %do.body.i142, %if.then22.i139, %if.then.i114, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %122 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %phy, align 4
  %enable = getelementptr inbounds %struct.vop_win_phy, ptr %123, i32 0, i32 4
  %124 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %1, align 4
  %tobool.not.i144 = icmp eq ptr %enable, null
  br i1 %tobool.not.i144, label %if.end.if.then.i148_crit_edge, label %lor.lhs.false.i146

if.end.if.then.i148_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i148

lor.lhs.false.i146:                               ; preds = %if.end
  %126 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %tobool2.not.i145 = icmp eq i32 %127, 0
  br i1 %tobool2.not.i145, label %lor.lhs.false.i146.if.then.i148_crit_edge, label %if.end.i156

lor.lhs.false.i146.if.then.i148_crit_edge:        ; preds = %lor.lhs.false.i146
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i148

if.then.i148:                                     ; preds = %lor.lhs.false.i146.if.then.i148_crit_edge, %if.end.if.then.i148_crit_edge
  %dev.i147 = getelementptr inbounds %struct.vop, ptr %vop, i32 0, i32 1
  %128 = ptrtoint ptr %dev.i147 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %dev.i147, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %129, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4) #8
  br label %vop_reg_set.exit177

if.end.i156:                                      ; preds = %lor.lhs.false.i146
  %offset3.i149 = getelementptr inbounds %struct.vop_win_phy, ptr %123, i32 0, i32 4, i32 1
  %130 = ptrtoint ptr %offset3.i149 to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %offset3.i149, align 4
  %conv.i150 = zext i16 %131 to i32
  %add.i151 = add i32 %125, %conv.i150
  %shift5.i152 = getelementptr inbounds %struct.vop_win_phy, ptr %123, i32 0, i32 4, i32 2
  %132 = ptrtoint ptr %shift5.i152 to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %shift5.i152, align 2
  %conv6.i153 = zext i8 %133 to i32
  %write_mask.i154 = getelementptr inbounds %struct.vop_win_phy, ptr %123, i32 0, i32 4, i32 3
  %134 = ptrtoint ptr %write_mask.i154 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %write_mask.i154, align 1, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %135)
  %tobool7.not.i155 = icmp eq i8 %135, 0
  br i1 %tobool7.not.i155, label %if.else.i166, label %if.then8.i159

if.then8.i159:                                    ; preds = %if.end.i156
  call void @__sanitizer_cov_trace_pc() #10
  %add10.i157 = add nuw nsw i32 %conv6.i153, 16
  %shl11.i158 = shl i32 %127, %add10.i157
  br label %if.end20.i170

if.else.i166:                                     ; preds = %if.end.i156
  call void @__sanitizer_cov_trace_pc() #10
  %regsbak.i160 = getelementptr inbounds %struct.vop, ptr %vop, i32 0, i32 11
  %136 = ptrtoint ptr %regsbak.i160 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %regsbak.i160, align 4
  %shr.i161 = ashr i32 %add.i151, 2
  %arrayidx.i162 = getelementptr i32, ptr %137, i32 %shr.i161
  %138 = ptrtoint ptr %arrayidx.i162 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %arrayidx.i162, align 4
  %shl12.i163 = shl i32 %127, %conv6.i153
  %neg.i164 = xor i32 %shl12.i163, -1
  %and13.i165 = and i32 %139, %neg.i164
  store i32 %and13.i165, ptr %arrayidx.i162, align 4
  br label %if.end20.i170

if.end20.i170:                                    ; preds = %if.else.i166, %if.then8.i159
  %v.addr.0.i167 = phi i32 [ %shl11.i158, %if.then8.i159 ], [ %and13.i165, %if.else.i166 ]
  %relaxed.i168 = getelementptr inbounds %struct.vop_win_phy, ptr %123, i32 0, i32 4, i32 4
  %140 = ptrtoint ptr %relaxed.i168 to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %relaxed.i168, align 4, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %141)
  %tobool21.not.i169 = icmp eq i8 %141, 0
  br i1 %tobool21.not.i169, label %do.body.i176, label %if.then22.i173

if.then22.i173:                                   ; preds = %if.end20.i170
  call void @__sanitizer_cov_trace_pc() #10
  %142 = tail call i32 @llvm.bswap.i32(i32 %v.addr.0.i167) #8
  %regs.i171 = getelementptr inbounds %struct.vop, ptr %vop, i32 0, i32 12
  %143 = ptrtoint ptr %regs.i171 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %regs.i171, align 8
  %add.ptr.i172 = getelementptr i8, ptr %144, i32 %add.i151
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i172, i32 %142) #8, !srcloc !305
  br label %vop_reg_set.exit177

do.body.i176:                                     ; preds = %if.end20.i170
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !306
  tail call void @arm_heavy_mb() #8
  %145 = tail call i32 @llvm.bswap.i32(i32 %v.addr.0.i167) #8
  %regs24.i174 = getelementptr inbounds %struct.vop, ptr %vop, i32 0, i32 12
  %146 = ptrtoint ptr %regs24.i174 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %regs24.i174, align 8
  %add.ptr25.i175 = getelementptr i8, ptr %147, i32 %add.i151
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i175, i32 %145) #8, !srcloc !305
  br label %vop_reg_set.exit177

vop_reg_set.exit177:                              ; preds = %do.body.i176, %if.then22.i173, %if.then.i148
  %vop21 = getelementptr inbounds %struct.vop_win, ptr %vop_win, i32 0, i32 3
  %148 = ptrtoint ptr %vop21 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %vop21, align 8
  %win22 = getelementptr inbounds %struct.vop, ptr %149, i32 0, i32 24
  %sub.ptr.lhs.cast = ptrtoint ptr %vop_win to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %win22 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 544
  %shl = shl nuw i32 1, %sub.ptr.div
  %neg = xor i32 %shl, -1
  %win_enabled = getelementptr inbounds %struct.vop, ptr %vop, i32 0, i32 5
  %150 = ptrtoint ptr %win_enabled to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %win_enabled, align 4
  %and = and i32 %151, %neg
  store i32 %and, ptr %win_enabled, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_vblank_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_flip_work_queue(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_object_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_plane_create_rotation_property(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vop_crtc_reset(ptr noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 304) #12
  %state = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %state, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__drm_atomic_helper_crtc_destroy_state(ptr noundef nonnull %2) #8
  tail call void @kfree(ptr noundef nonnull %2) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @__drm_atomic_helper_crtc_reset(ptr noundef %crtc, ptr noundef %call7.i.i) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vop_crtc_destroy(ptr noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @drm_crtc_cleanup(ptr noundef %crtc) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_set_config(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_page_flip(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @vop_crtc_duplicate_state(ptr noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 304) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__drm_atomic_helper_crtc_duplicate_state(ptr noundef %crtc, ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vop_crtc_destroy_state(ptr nocapture noundef readnone %crtc, ptr noundef %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__drm_atomic_helper_crtc_destroy_state(ptr noundef %state) #8
  tail call void @kfree(ptr noundef %state) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vop_crtc_set_crc_source(ptr nocapture noundef readonly %crtc, ptr noundef readonly %source_name) #0 align 64 {
entry:
  %conn_iter.i = alloca %struct.drm_connector_list_iter, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %conn_iter.i) #8
  %0 = ptrtoint ptr %conn_iter.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %conn_iter.i, align 4, !annotation !308
  %1 = getelementptr inbounds %struct.drm_connector_list_iter, ptr %conn_iter.i, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !308
  %drm_dev.i = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 2
  %3 = ptrtoint ptr %drm_dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %drm_dev.i, align 4
  call void @drm_connector_list_iter_begin(ptr noundef %4, ptr noundef nonnull %conn_iter.i) #8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %entry
  %call.i = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %conn_iter.i) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %vop_get_edp_connector.exit.thread, label %while.body.i

vop_get_edp_connector.exit.thread:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @drm_connector_list_iter_end(ptr noundef nonnull %conn_iter.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %conn_iter.i) #8
  br label %cleanup

while.body.i:                                     ; preds = %while.cond.i
  %connector_type.i = getelementptr inbounds %struct.drm_connector, ptr %call.i, i32 0, i32 10
  %5 = ptrtoint ptr %connector_type.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %connector_type.i, align 8
  %cmp.i = icmp eq i32 %6, 14
  br i1 %cmp.i, label %if.end, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

if.end:                                           ; preds = %while.body.i
  call void @drm_connector_list_iter_end(ptr noundef nonnull %conn_iter.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %conn_iter.i) #8
  %tobool1.not = icmp eq ptr %source_name, null
  br i1 %tobool1.not, label %if.then6.critedge, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  %call2 = call i32 @strcmp(ptr noundef nonnull %source_name, ptr noundef nonnull dereferenceable(5) @.str.74) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp eq i32 %call2, 0
  br i1 %cmp, label %if.then3, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %call4 = call i32 @analogix_dp_start_crc(ptr noundef nonnull %call.i) #8
  br label %cleanup

if.then6.critedge:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call7 = call i32 @analogix_dp_stop_crc(ptr noundef nonnull %call.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then6.critedge, %if.then3, %land.lhs.true.cleanup_crit_edge, %vop_get_edp_connector.exit.thread
  %retval.0 = phi i32 [ %call4, %if.then3 ], [ %call7, %if.then6.critedge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %vop_get_edp_connector.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vop_crtc_verify_crc_source(ptr nocapture noundef readnone %crtc, ptr noundef readonly %source_name, ptr nocapture noundef writeonly %values_cnt) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %source_name, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call = tail call i32 @strcmp(ptr noundef nonnull %source_name, ptr noundef nonnull dereferenceable(5) @.str.74) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %0 = ptrtoint ptr %values_cnt to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 3, ptr %values_cnt, align 4
  br label %return

return:                                           ; preds = %if.end, %land.lhs.true.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %land.lhs.true.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vop_crtc_enable_vblank(ptr noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %is_enabled = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 3
  %0 = ptrtoint ptr %is_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_enabled, align 8, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %do.end, label %do.body26, !prof !304

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1132, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

do.body26:                                        ; preds = %entry
  %irq_lock = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 16
  %call28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #8
  %data = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 10
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 8
  %intr = getelementptr inbounds %struct.vop_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %intr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %intr, align 4
  %nintrs = getelementptr inbounds %struct.vop_intr, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %nintrs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nintrs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp34103.not = icmp eq i32 %7, 0
  br i1 %cmp34103.not, label %do.body26.for.end_crit_edge, label %for.body.lr.ph

do.body26.for.end_crit_edge:                      ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.body26
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %mask.0106 = phi i32 [ 0, %for.body.lr.ph ], [ %mask.1, %for.body.for.body_crit_edge ]
  %reg.0105 = phi i32 [ 0, %for.body.lr.ph ], [ %reg.1, %for.body.for.body_crit_edge ]
  %i.0104 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %9, i32 %i.0104
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %and = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool38.not = icmp eq i32 %and, 0
  %shl = shl nuw i32 1, %i.0104
  %or = select i1 %tobool38.not, i32 0, i32 %shl
  %reg.1 = or i32 %or, %reg.0105
  %mask.1 = or i32 %or, %mask.0106
  %inc = add nuw i32 %i.0104, 1
  %exitcond.not = icmp eq i32 %inc, %7
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.body26.for.end_crit_edge
  %reg.0.lcssa = phi i32 [ 0, %do.body26.for.end_crit_edge ], [ %reg.1, %for.body.for.end_crit_edge ]
  %mask.0.lcssa = phi i32 [ 0, %do.body26.for.end_crit_edge ], [ %mask.1, %for.body.for.end_crit_edge ]
  %clear = getelementptr inbounds %struct.vop_intr, ptr %5, i32 0, i32 4
  tail call fastcc void @vop_reg_set(ptr noundef %crtc, ptr noundef %clear, i32 noundef 0, i32 noundef %mask.0.lcssa, i32 noundef %reg.0.lcssa, ptr noundef nonnull @.str.3)
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 8
  %intr53 = getelementptr inbounds %struct.vop_data, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %intr53 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %intr53, align 4
  %nintrs54 = getelementptr inbounds %struct.vop_intr, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %nintrs54 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nintrs54, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp55109.not = icmp eq i32 %17, 0
  br i1 %cmp55109.not, label %for.end.for.end72_crit_edge, label %for.body57.lr.ph

for.end.for.end72_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end72

for.body57.lr.ph:                                 ; preds = %for.end
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %15, align 4
  br label %for.body57

for.body57:                                       ; preds = %for.body57.for.body57_crit_edge, %for.body57.lr.ph
  %mask50.0112 = phi i32 [ 0, %for.body57.lr.ph ], [ %mask50.1, %for.body57.for.body57_crit_edge ]
  %reg49.0111 = phi i32 [ 0, %for.body57.lr.ph ], [ %reg49.1, %for.body57.for.body57_crit_edge ]
  %i48.0110 = phi i32 [ 0, %for.body57.lr.ph ], [ %inc71, %for.body57.for.body57_crit_edge ]
  %arrayidx61 = getelementptr i32, ptr %19, i32 %i48.0110
  %20 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx61, align 4
  %and62 = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  %shl65 = shl nuw i32 1, %i48.0110
  %or66 = select i1 %tobool63.not, i32 0, i32 %shl65
  %reg49.1 = or i32 %or66, %reg49.0111
  %mask50.1 = or i32 %or66, %mask50.0112
  %inc71 = add nuw i32 %i48.0110, 1
  %exitcond116.not = icmp eq i32 %inc71, %17
  br i1 %exitcond116.not, label %for.body57.for.end72_crit_edge, label %for.body57.for.body57_crit_edge

for.body57.for.body57_crit_edge:                  ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body57

for.body57.for.end72_crit_edge:                   ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end72

for.end72:                                        ; preds = %for.body57.for.end72_crit_edge, %for.end.for.end72_crit_edge
  %reg49.0.lcssa = phi i32 [ 0, %for.end.for.end72_crit_edge ], [ %reg49.1, %for.body57.for.end72_crit_edge ]
  %mask50.0.lcssa = phi i32 [ 0, %for.end.for.end72_crit_edge ], [ %mask50.1, %for.body57.for.end72_crit_edge ]
  %enable = getelementptr inbounds %struct.vop_intr, ptr %15, i32 0, i32 3
  tail call fastcc void @vop_reg_set(ptr noundef %crtc, ptr noundef %enable, i32 noundef 0, i32 noundef %mask50.0.lcssa, i32 noundef %reg49.0.lcssa, ptr noundef nonnull @.str.4)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock, i32 noundef %call28) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end72, %do.end
  %retval.0 = phi i32 [ -1, %do.end ], [ 0, %for.end72 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vop_crtc_disable_vblank(ptr noundef %crtc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %is_enabled = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 3
  %0 = ptrtoint ptr %is_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_enabled, align 8, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %do.end, label %do.body26, !prof !304

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1150, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

do.body26:                                        ; preds = %entry
  %irq_lock = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 16
  %call28 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #8
  %data = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 10
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 8
  %intr = getelementptr inbounds %struct.vop_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %intr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %intr, align 4
  %nintrs = getelementptr inbounds %struct.vop_intr, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %nintrs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nintrs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp3463.not = icmp eq i32 %7, 0
  br i1 %cmp3463.not, label %do.body26.for.end_crit_edge, label %for.body.lr.ph

do.body26.for.end_crit_edge:                      ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.body26
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %mask.065 = phi i32 [ 0, %for.body.lr.ph ], [ %mask.1, %for.body.for.body_crit_edge ]
  %i.064 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %9, i32 %i.064
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %and = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool38.not = icmp eq i32 %and, 0
  %shl40 = shl nuw i32 1, %i.064
  %or41 = select i1 %tobool38.not, i32 0, i32 %shl40
  %mask.1 = or i32 %or41, %mask.065
  %inc = add nuw i32 %i.064, 1
  %exitcond.not = icmp eq i32 %inc, %7
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.body26.for.end_crit_edge
  %mask.0.lcssa = phi i32 [ 0, %do.body26.for.end_crit_edge ], [ %mask.1, %for.body.for.end_crit_edge ]
  %enable = getelementptr inbounds %struct.vop_intr, ptr %5, i32 0, i32 3
  %tobool.not.i = icmp eq ptr %enable, null
  br i1 %tobool.not.i, label %for.end.if.then.i_crit_edge, label %lor.lhs.false.i

for.end.if.then.i_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %for.end
  %12 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool2.not.i = icmp eq i32 %13, 0
  br i1 %tobool2.not.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %if.end.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %for.end.if.then.i_crit_edge
  %dev.i = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 1
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %15, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4) #8
  br label %vop_reg_set.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %offset3.i = getelementptr inbounds %struct.vop_intr, ptr %5, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %offset3.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %offset3.i, align 4
  %conv.i = zext i16 %17 to i32
  %and.i = and i32 %13, %mask.0.lcssa
  %shift5.i = getelementptr inbounds %struct.vop_intr, ptr %5, i32 0, i32 3, i32 2
  %18 = ptrtoint ptr %shift5.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %shift5.i, align 2
  %conv6.i = zext i8 %19 to i32
  %write_mask.i = getelementptr inbounds %struct.vop_intr, ptr %5, i32 0, i32 3, i32 3
  %20 = ptrtoint ptr %write_mask.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %write_mask.i, align 1, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool7.not.i = icmp eq i8 %21, 0
  br i1 %tobool7.not.i, label %if.else.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %add10.i = add nuw nsw i32 %conv6.i, 16
  %shl11.i = shl i32 %and.i, %add10.i
  br label %if.end20.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %regsbak.i = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 11
  %22 = ptrtoint ptr %regsbak.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regsbak.i, align 4
  %shr.i62 = lshr i32 %conv.i, 2
  %arrayidx.i = getelementptr i32, ptr %23, i32 %shr.i62
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i, align 4
  %shl12.i = shl i32 %and.i, %conv6.i
  %neg.i = xor i32 %shl12.i, -1
  %and13.i = and i32 %25, %neg.i
  store i32 %and13.i, ptr %arrayidx.i, align 4
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.else.i, %if.then8.i
  %v.addr.0.i = phi i32 [ %shl11.i, %if.then8.i ], [ %and13.i, %if.else.i ]
  %relaxed.i = getelementptr inbounds %struct.vop_intr, ptr %5, i32 0, i32 3, i32 4
  %26 = ptrtoint ptr %relaxed.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %relaxed.i, align 4, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool21.not.i = icmp eq i8 %27, 0
  br i1 %tobool21.not.i, label %do.body.i, label %if.then22.i

if.then22.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  %28 = tail call i32 @llvm.bswap.i32(i32 %v.addr.0.i) #8
  %regs.i = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 12
  %29 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %30, i32 %conv.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %28) #8, !srcloc !305
  br label %vop_reg_set.exit

do.body.i:                                        ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !306
  tail call void @arm_heavy_mb() #8
  %31 = tail call i32 @llvm.bswap.i32(i32 %v.addr.0.i) #8
  %regs24.i = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 12
  %32 = ptrtoint ptr %regs24.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs24.i, align 8
  %add.ptr25.i = getelementptr i8, ptr %33, i32 %conv.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i, i32 %31) #8, !srcloc !305
  br label %vop_reg_set.exit

vop_reg_set.exit:                                 ; preds = %do.body.i, %if.then22.i, %if.then.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock, i32 noundef %call28) #8
  br label %cleanup

cleanup:                                          ; preds = %vop_reg_set.exit, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_crtc_reset(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_crtc_duplicate_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_crtc_destroy_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @analogix_dp_start_crc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @analogix_dp_stop_crc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_list_iter_begin(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_connector_list_iter_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_list_iter_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @vop_crtc_mode_fixup(ptr nocapture noundef readonly %crtc, ptr nocapture noundef readnone %mode, ptr nocapture noundef %adjusted_mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dclk = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 20
  %0 = ptrtoint ptr %dclk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dclk, align 8
  %2 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %adjusted_mode, align 4
  %mul = mul i32 %3, 1000
  %call = tail call i32 @clk_round_rate(ptr noundef %1, i32 noundef %mul) #8
  %div = udiv i32 %call, 1000
  %4 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %adjusted_mode, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %5)
  %cmp.not = icmp eq i32 %div, %5
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %dclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dclk, align 8
  %mul4 = mul i32 %5, 1000
  %add = add i32 %mul4, 999
  %call5 = tail call i32 @clk_round_rate(ptr noundef %7, i32 noundef %add) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rate.0 = phi i32 [ %call5, %if.then ], [ %call, %entry.if.end_crit_edge ]
  %sub = add i32 %rate.0, 999
  %div7 = udiv i32 %sub, 1000
  %8 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %div7, ptr %adjusted_mode, align 4
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vop_crtc_atomic_check(ptr nocapture noundef readonly %crtc, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %lut_regs = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 13
  %6 = ptrtoint ptr %lut_regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lut_regs, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %land.lhs.true

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

land.lhs.true:                                    ; preds = %entry
  %color_mgmt_changed = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %color_mgmt_changed to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %color_mgmt_changed, align 2
  %9 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %bf.cast.not = icmp eq i8 %9, 0
  br i1 %bf.cast.not, label %land.lhs.true.if.end7_crit_edge, label %land.lhs.true1

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

land.lhs.true1:                                   ; preds = %land.lhs.true
  %gamma_lut = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 12
  %10 = ptrtoint ptr %gamma_lut to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %gamma_lut, align 4
  %tobool2.not = icmp eq ptr %11, null
  br i1 %tobool2.not, label %land.lhs.true1.if.end7_crit_edge, label %if.then

land.lhs.true1.if.end7_crit_edge:                 ; preds = %land.lhs.true1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then:                                          ; preds = %land.lhs.true1
  %length.i = getelementptr inbounds %struct.drm_property_blob, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %length.i, align 4
  %div1.i = lshr i32 %13, 3
  %gamma_size = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 17
  %14 = ptrtoint ptr %gamma_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %gamma_size, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %div1.i, i32 %15)
  %cmp.not = icmp eq i32 %div1.i, %15
  br i1 %cmp.not, label %if.then.if.end7_crit_edge, label %if.then5

if.then.if.end7_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.75, i32 noundef %div1.i, i32 noundef %15) #8
  br label %cleanup43

if.end7:                                          ; preds = %if.then.if.end7_crit_edge, %land.lhs.true1.if.end7_crit_edge, %land.lhs.true.if.end7_crit_edge, %entry.if.end7_crit_edge
  %state9 = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 20
  %16 = ptrtoint ptr %state9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %state9, align 4
  %dev = getelementptr inbounds %struct.drm_atomic_state, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  %plane_list = getelementptr inbounds %struct.drm_device, ptr %19, i32 0, i32 30, i32 18
  %20 = ptrtoint ptr %plane_list to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn73 = load ptr, ptr %plane_list, align 4
  %cmp16.not77 = icmp eq ptr %.pn73, %plane_list
  br i1 %cmp16.not77, label %if.end7.if.end38_crit_edge, label %for.body.lr.ph

if.end7.if.end38_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

for.body.lr.ph:                                   ; preds = %if.end7
  %plane_mask = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %21 = phi ptr [ %17, %for.body.lr.ph ], [ %35, %for.inc.for.body_crit_edge ]
  %.pn79 = phi ptr [ %.pn73, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %afbc_planes.078 = phi i32 [ 0, %for.body.lr.ph ], [ %afbc_planes.1, %for.inc.for.body_crit_edge ]
  %22 = ptrtoint ptr %plane_mask to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %plane_mask, align 4
  %index.i.i70 = getelementptr i8, ptr %.pn79, i32 480
  %24 = ptrtoint ptr %index.i.i70 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %index.i.i70, align 4
  %shl.i = shl nuw i32 1, %25
  %and = and i32 %shl.i, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool18.not = icmp eq i32 %and, 0
  br i1 %tobool18.not, label %for.body.for.inc_crit_edge, label %if.else

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.else:                                          ; preds = %for.body
  %plane.080 = getelementptr i8, ptr %.pn79, i32 -4
  %call21 = tail call ptr @drm_atomic_get_plane_state(ptr noundef %21, ptr noundef %plane.080) #8
  %cmp.i = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then23, label %if.end25

if.then23:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr i8, ptr %.pn79, i32 8
  %26 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %name, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.76, ptr noundef %27) #8
  %28 = ptrtoint ptr %call21 to i32
  br label %cleanup43

if.end25:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %call21, i32 0, i32 2
  %29 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fb, align 4
  %modifier = getelementptr inbounds %struct.drm_framebuffer, ptr %30, i32 0, i32 8
  %31 = ptrtoint ptr %modifier to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %modifier, align 8
  %and26 = and i64 %32, -4503599627370496
  call void @__sanitizer_cov_trace_const_cmp8(i64 576460752303423488, i64 %and26)
  %cmp27 = icmp eq i64 %and26, 576460752303423488
  %inc = zext i1 %cmp27 to i32
  %spec.select = add i32 %afbc_planes.078, %inc
  br label %for.inc

for.inc:                                          ; preds = %if.end25, %for.body.for.inc_crit_edge
  %afbc_planes.1 = phi i32 [ %afbc_planes.078, %for.body.for.inc_crit_edge ], [ %spec.select, %if.end25 ]
  %33 = ptrtoint ptr %.pn79 to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pn = load ptr, ptr %.pn79, align 4
  %34 = ptrtoint ptr %state9 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %state9, align 4
  %dev13 = getelementptr inbounds %struct.drm_atomic_state, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev13, align 4
  %plane_list15 = getelementptr inbounds %struct.drm_device, ptr %37, i32 0, i32 30, i32 18
  %cmp16.not = icmp eq ptr %.pn, %plane_list15
  br i1 %cmp16.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %afbc_planes.1)
  %cmp36 = icmp sgt i32 %afbc_planes.1, 1
  br i1 %cmp36, label %if.then37, label %for.end.if.end38_crit_edge

for.end.if.end38_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then37:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.77, i32 noundef %afbc_planes.1) #8
  br label %cleanup43

if.end38:                                         ; preds = %for.end.if.end38_crit_edge, %if.end7.if.end38_crit_edge
  %afbc_planes.0.lcssa84 = phi i32 [ %afbc_planes.1, %for.end.if.end38_crit_edge ], [ 0, %if.end7.if.end38_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %afbc_planes.0.lcssa84)
  %cmp42 = icmp eq i32 %afbc_planes.0.lcssa84, 1
  %enable_afbc = getelementptr inbounds %struct.rockchip_crtc_state, ptr %5, i32 0, i32 5
  %frombool = zext i1 %cmp42 to i8
  %38 = ptrtoint ptr %enable_afbc to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %frombool, ptr %enable_afbc, align 4
  br label %cleanup43

cleanup43:                                        ; preds = %if.end38, %if.then37, %if.then23, %if.then5
  %retval.1 = phi i32 [ %28, %if.then23 ], [ -22, %if.then37 ], [ 0, %if.end38 ], [ -22, %if.then5 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vop_crtc_atomic_begin(ptr noundef %crtc, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %color_mgmt_changed = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %color_mgmt_changed to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %color_mgmt_changed, align 2
  %7 = and i8 %bf.load, 36
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %7)
  %8 = icmp eq i8 %7, 4
  br i1 %8, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @vop_crtc_gamma_set(ptr noundef %crtc, ptr noundef %crtc)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vop_crtc_atomic_flush(ptr noundef %crtc, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %state1 = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 20
  %6 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state1, align 4
  %is_enabled = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 3
  %8 = ptrtoint ptr %is_enabled to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %is_enabled, align 8, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %do.end, label %if.end25, !prof !304

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1493, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end25:                                         ; preds = %entry
  %reg_lock = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #8
  %state27 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %data = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 10
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 8
  %afbc = getelementptr inbounds %struct.vop_data, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %afbc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %afbc, align 8
  %tobool31.not = icmp eq ptr %13, null
  br i1 %tobool31.not, label %if.end25.do.end38_crit_edge, label %lor.lhs.false.i

if.end25.do.end38_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end38

lor.lhs.false.i:                                  ; preds = %if.end25
  %14 = ptrtoint ptr %state27 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %state27, align 4
  %enable_afbc = getelementptr inbounds %struct.rockchip_crtc_state, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %enable_afbc to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %enable_afbc, align 4, !range !301
  %18 = zext i8 %17 to i32
  %19 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool2.not.i = icmp eq i32 %20, 0
  br i1 %tobool2.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 1
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %22, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4) #8
  br label %do.end38

if.end.i:                                         ; preds = %lor.lhs.false.i
  %offset3.i = getelementptr inbounds %struct.vop_reg, ptr %13, i32 0, i32 1
  %23 = ptrtoint ptr %offset3.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %offset3.i, align 4
  %conv.i = zext i16 %24 to i32
  %shift5.i = getelementptr inbounds %struct.vop_reg, ptr %13, i32 0, i32 2
  %25 = ptrtoint ptr %shift5.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %shift5.i, align 2
  %conv6.i = zext i8 %26 to i32
  %write_mask.i = getelementptr inbounds %struct.vop_reg, ptr %13, i32 0, i32 3
  %27 = ptrtoint ptr %write_mask.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %write_mask.i, align 1, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool7.not.i = icmp eq i8 %28, 0
  br i1 %tobool7.not.i, label %if.else.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %shl.i = shl nuw i32 %18, %conv6.i
  %and9.i = and i32 %shl.i, 65535
  %add10.i = add nuw nsw i32 %conv6.i, 16
  %shl11.i = shl i32 %20, %add10.i
  %or.i = or i32 %and9.i, %shl11.i
  br label %if.end20.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %regsbak.i = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 11
  %29 = ptrtoint ptr %regsbak.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regsbak.i, align 4
  %shr.i219 = lshr i32 %conv.i, 2
  %arrayidx.i = getelementptr i32, ptr %30, i32 %shr.i219
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i, align 4
  %shl12.i = shl i32 %20, %conv6.i
  %neg.i = xor i32 %shl12.i, -1
  %and13.i = and i32 %32, %neg.i
  %and14.i = and i32 %20, %18
  %shl15.i = shl nuw i32 %and14.i, %conv6.i
  %or16.i = or i32 %and13.i, %shl15.i
  store i32 %or16.i, ptr %arrayidx.i, align 4
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.else.i, %if.then8.i
  %v.addr.0.i = phi i32 [ %or.i, %if.then8.i ], [ %or16.i, %if.else.i ]
  %relaxed.i = getelementptr inbounds %struct.vop_reg, ptr %13, i32 0, i32 4
  %33 = ptrtoint ptr %relaxed.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %relaxed.i, align 4, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool21.not.i = icmp eq i8 %34, 0
  br i1 %tobool21.not.i, label %do.body.i, label %if.then22.i

if.then22.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  %35 = tail call i32 @llvm.bswap.i32(i32 %v.addr.0.i) #8
  %regs.i = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 12
  %36 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %37, i32 %conv.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %35) #8, !srcloc !305
  br label %do.end38

do.body.i:                                        ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !306
  tail call void @arm_heavy_mb() #8
  %38 = tail call i32 @llvm.bswap.i32(i32 %v.addr.0.i) #8
  %regs24.i = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 12
  %39 = ptrtoint ptr %regs24.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs24.i, align 8
  %add.ptr25.i = getelementptr i8, ptr %40, i32 %conv.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i, i32 %38) #8, !srcloc !305
  br label %do.end38

do.end38:                                         ; preds = %do.body.i, %if.then22.i, %if.then.i, %if.end25.do.end38_crit_edge
  %41 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %data, align 8
  %common.i = getelementptr inbounds %struct.vop_data, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %common.i, align 8
  tail call fastcc void @vop_reg_set(ptr noundef %crtc, ptr noundef %44, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef nonnull @.str.73) #8
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #8
  %call.i = tail call i64 @ktime_get() #8
  %add.i.i = add i64 %call.i, 10000000
  %regs.i.i.i.i.i = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 12
  br label %for.cond.i

for.cond.i:                                       ; preds = %land.lhs.true.i.for.cond.i_crit_edge, %do.end38
  %45 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data, align 8
  %intr.i.i = getelementptr inbounds %struct.vop_data, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %intr.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %intr.i.i, align 4
  %status.i.i = getelementptr inbounds %struct.vop_intr, ptr %48, i32 0, i32 5
  %offset.i.i.i.i = getelementptr inbounds %struct.vop_intr, ptr %48, i32 0, i32 5, i32 1
  %49 = ptrtoint ptr %offset.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %offset.i.i.i.i, align 4
  %conv.i.i.i.i = zext i16 %50 to i32
  %51 = ptrtoint ptr %regs.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regs.i.i.i.i.i, align 8
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %52, i32 %conv.i.i.i.i
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i.i) #8, !srcloc !302
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !303
  %shift.i.i.i.i = getelementptr inbounds %struct.vop_intr, ptr %48, i32 0, i32 5, i32 2
  %55 = ptrtoint ptr %shift.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %shift.i.i.i.i, align 2
  %conv1.i.i.i.i = zext i8 %56 to i32
  %shr.i.i.i.i = lshr i32 %54, %conv1.i.i.i.i
  %57 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %status.i.i, align 4
  %and.i.i.i.i = and i32 %shr.i.i.i.i, %58
  %59 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %data, align 8
  %intr.i.i.i = getelementptr inbounds %struct.vop_data, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %intr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %intr.i.i.i, align 4
  %nintrs.i.i.i = getelementptr inbounds %struct.vop_intr, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %nintrs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %nintrs.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %cmp17.not.i.i.i = icmp eq i32 %64, 0
  br i1 %cmp17.not.i.i.i, label %for.cond.i.vop_wait_for_irq_handler.exit_crit_edge, label %for.body.lr.ph.i.i.i

for.cond.i.vop_wait_for_irq_handler.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vop_wait_for_irq_handler.exit

for.body.lr.ph.i.i.i:                             ; preds = %for.cond.i
  %65 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %62, align 4
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %ret.020.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %ret.1.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %i.018.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr i32, ptr %66, i32 %i.018.i.i.i
  %67 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %68, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge, label %land.lhs.true.i.i.i

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i.i

land.lhs.true.i.i.i:                              ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %shl.i.i.i = shl nuw i32 1, %i.018.i.i.i
  %and3.i.i.i = and i32 %and.i.i.i.i, %shl.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %and3.i.i.i, 0
  %or.i.i.i = select i1 %tobool4.not.i.i.i, i32 0, i32 %68
  %spec.select.i.i.i = or i32 %or.i.i.i, %ret.020.i.i.i
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %land.lhs.true.i.i.i, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %ret.1.i.i.i = phi i32 [ %ret.020.i.i.i, %for.body.i.i.i.for.inc.i.i.i_crit_edge ], [ %spec.select.i.i.i, %land.lhs.true.i.i.i ]
  %inc.i.i.i = add nuw i32 %i.018.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %64
  br i1 %exitcond.not.i.i.i, label %vop_fs_irq_is_pending.exit.i, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i

vop_fs_irq_is_pending.exit.i:                     ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %ret.1.i.i.i, 0
  br i1 %tobool.i.not.i, label %vop_fs_irq_is_pending.exit.i.vop_wait_for_irq_handler.exit_crit_edge, label %land.lhs.true.i

vop_fs_irq_is_pending.exit.i.vop_wait_for_irq_handler.exit_crit_edge: ; preds = %vop_fs_irq_is_pending.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vop_wait_for_irq_handler.exit

land.lhs.true.i:                                  ; preds = %vop_fs_irq_is_pending.exit.i
  %call4.i = tail call i64 @ktime_get() #8
  %cmp3.i.i = icmp sgt i64 %call4.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then6.i, label %land.lhs.true.i.for.cond.i_crit_edge

land.lhs.true.i.for.cond.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

if.then6.i:                                       ; preds = %land.lhs.true.i
  %69 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %data, align 8
  %intr.i31.i = getelementptr inbounds %struct.vop_data, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %intr.i31.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %intr.i31.i, align 4
  %status.i32.i = getelementptr inbounds %struct.vop_intr, ptr %72, i32 0, i32 5
  %offset.i.i.i33.i = getelementptr inbounds %struct.vop_intr, ptr %72, i32 0, i32 5, i32 1
  %73 = ptrtoint ptr %offset.i.i.i33.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %offset.i.i.i33.i, align 4
  %conv.i.i.i34.i = zext i16 %74 to i32
  %75 = ptrtoint ptr %regs.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %regs.i.i.i.i.i, align 8
  %add.ptr.i.i.i.i36.i = getelementptr i8, ptr %76, i32 %conv.i.i.i34.i
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i36.i) #8, !srcloc !302
  %78 = tail call i32 @llvm.bswap.i32(i32 %77) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !303
  %shift.i.i.i37.i = getelementptr inbounds %struct.vop_intr, ptr %72, i32 0, i32 5, i32 2
  %79 = ptrtoint ptr %shift.i.i.i37.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %shift.i.i.i37.i, align 2
  %conv1.i.i.i38.i = zext i8 %80 to i32
  %shr.i.i.i39.i = lshr i32 %78, %conv1.i.i.i38.i
  %81 = ptrtoint ptr %status.i32.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %status.i32.i, align 4
  %and.i.i.i40.i = and i32 %shr.i.i.i39.i, %82
  %83 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %data, align 8
  %intr.i.i41.i = getelementptr inbounds %struct.vop_data, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %intr.i.i41.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %intr.i.i41.i, align 4
  %nintrs.i.i42.i = getelementptr inbounds %struct.vop_intr, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %nintrs.i.i42.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %nintrs.i.i42.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp17.not.i.i43.i = icmp eq i32 %88, 0
  br i1 %cmp17.not.i.i43.i, label %if.then6.i.vop_wait_for_irq_handler.exit_crit_edge, label %for.body.lr.ph.i.i44.i

if.then6.i.vop_wait_for_irq_handler.exit_crit_edge: ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vop_wait_for_irq_handler.exit

for.body.lr.ph.i.i44.i:                           ; preds = %if.then6.i
  %89 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %86, align 4
  br label %for.body.i.i50.i

for.body.i.i50.i:                                 ; preds = %for.inc.i.i60.i.for.body.i.i50.i_crit_edge, %for.body.lr.ph.i.i44.i
  %ret.020.i.i45.i = phi i32 [ 0, %for.body.lr.ph.i.i44.i ], [ %ret.1.i.i57.i, %for.inc.i.i60.i.for.body.i.i50.i_crit_edge ]
  %i.018.i.i46.i = phi i32 [ 0, %for.body.lr.ph.i.i44.i ], [ %inc.i.i58.i, %for.inc.i.i60.i.for.body.i.i50.i_crit_edge ]
  %arrayidx.i.i47.i = getelementptr i32, ptr %90, i32 %i.018.i.i46.i
  %91 = ptrtoint ptr %arrayidx.i.i47.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx.i.i47.i, align 4
  %and.i.i48.i = and i32 %92, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i48.i)
  %tobool.not.i.i49.i = icmp eq i32 %and.i.i48.i, 0
  br i1 %tobool.not.i.i49.i, label %for.body.i.i50.i.for.inc.i.i60.i_crit_edge, label %land.lhs.true.i.i56.i

for.body.i.i50.i.for.inc.i.i60.i_crit_edge:       ; preds = %for.body.i.i50.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i60.i

land.lhs.true.i.i56.i:                            ; preds = %for.body.i.i50.i
  call void @__sanitizer_cov_trace_pc() #10
  %shl.i.i51.i = shl nuw i32 1, %i.018.i.i46.i
  %and3.i.i52.i = and i32 %and.i.i.i40.i, %shl.i.i51.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i52.i)
  %tobool4.not.i.i53.i = icmp eq i32 %and3.i.i52.i, 0
  %or.i.i54.i = select i1 %tobool4.not.i.i53.i, i32 0, i32 %92
  %spec.select.i.i55.i = or i32 %or.i.i54.i, %ret.020.i.i45.i
  br label %for.inc.i.i60.i

for.inc.i.i60.i:                                  ; preds = %land.lhs.true.i.i56.i, %for.body.i.i50.i.for.inc.i.i60.i_crit_edge
  %ret.1.i.i57.i = phi i32 [ %ret.020.i.i45.i, %for.body.i.i50.i.for.inc.i.i60.i_crit_edge ], [ %spec.select.i.i55.i, %land.lhs.true.i.i56.i ]
  %inc.i.i58.i = add nuw i32 %i.018.i.i46.i, 1
  %exitcond.not.i.i59.i = icmp eq i32 %inc.i.i58.i, %88
  br i1 %exitcond.not.i.i59.i, label %for.end.i, label %for.inc.i.i60.i.for.body.i.i50.i_crit_edge

for.inc.i.i60.i.for.body.i.i50.i_crit_edge:       ; preds = %for.inc.i.i60.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i50.i

for.end.i:                                        ; preds = %for.inc.i.i60.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i.i57.i)
  %tobool.i62.not.i = icmp eq i32 %ret.1.i.i57.i, 0
  br i1 %tobool.i62.not.i, label %for.end.i.vop_wait_for_irq_handler.exit_crit_edge, label %if.then19.i

for.end.i.vop_wait_for_irq_handler.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vop_wait_for_irq_handler.exit

if.then19.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i217 = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 1
  %93 = ptrtoint ptr %dev.i217 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev.i217, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %94, ptr noundef nonnull @.str, ptr noundef nonnull @.str.80) #8
  br label %vop_wait_for_irq_handler.exit

vop_wait_for_irq_handler.exit:                    ; preds = %if.then19.i, %for.end.i.vop_wait_for_irq_handler.exit_crit_edge, %if.then6.i.vop_wait_for_irq_handler.exit_crit_edge, %vop_fs_irq_is_pending.exit.i.vop_wait_for_irq_handler.exit_crit_edge, %for.cond.i.vop_wait_for_irq_handler.exit_crit_edge
  %irq.i = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 18
  %95 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %irq.i, align 8
  tail call void @synchronize_irq(i32 noundef %96) #8
  %97 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %crtc, align 8
  %event_lock = getelementptr inbounds %struct.drm_device, ptr %98, i32 0, i32 28
  tail call void @_raw_spin_lock_irq(ptr noundef %event_lock) #8
  %99 = ptrtoint ptr %state27 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %state27, align 4
  %event = getelementptr inbounds %struct.drm_crtc_state, ptr %100, i32 0, i32 18
  %101 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %event, align 4
  %tobool41.not = icmp eq ptr %102, null
  br i1 %tobool41.not, label %vop_wait_for_irq_handler.exit.if.end112_crit_edge, label %if.then42

vop_wait_for_irq_handler.exit.if.end112_crit_edge: ; preds = %vop_wait_for_irq_handler.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end112

if.then42:                                        ; preds = %vop_wait_for_irq_handler.exit
  %call44 = tail call i32 @drm_crtc_vblank_get(ptr noundef %crtc) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp.not = icmp eq i32 %call44, 0
  br i1 %cmp.not, label %if.then42.if.end67_crit_edge, label %do.end61, !prof !307

if.then42.if.end67_crit_edge:                     ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67

do.end61:                                         ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1514, i32 noundef 9, ptr noundef null) #8
  br label %if.end67

if.end67:                                         ; preds = %do.end61, %if.then42.if.end67_crit_edge
  %event76 = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 6
  %103 = ptrtoint ptr %event76 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %event76, align 8
  %tobool77.not = icmp eq ptr %104, null
  br i1 %tobool77.not, label %if.end67.if.end99_crit_edge, label %do.end93, !prof !307

if.end67.if.end99_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end99

do.end93:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1515, i32 noundef 9, ptr noundef null) #8
  br label %if.end99

if.end99:                                         ; preds = %do.end93, %if.end67.if.end99_crit_edge
  %105 = ptrtoint ptr %state27 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %state27, align 4
  %event108 = getelementptr inbounds %struct.drm_crtc_state, ptr %106, i32 0, i32 18
  %107 = ptrtoint ptr %event108 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %event108, align 4
  %109 = ptrtoint ptr %event76 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %108, ptr %event76, align 8
  store ptr null, ptr %event108, align 4
  br label %if.end112

if.end112:                                        ; preds = %if.end99, %vop_wait_for_irq_handler.exit.if.end112_crit_edge
  %110 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %crtc, align 8
  %event_lock114 = getelementptr inbounds %struct.drm_device, ptr %111, i32 0, i32 28
  tail call void @_raw_spin_unlock_irq(ptr noundef %event_lock114) #8
  %dev115 = getelementptr inbounds %struct.drm_atomic_state, ptr %7, i32 0, i32 1
  %112 = ptrtoint ptr %dev115 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dev115, align 4
  %num_total_plane220 = getelementptr inbounds %struct.drm_device, ptr %113, i32 0, i32 30, i32 17
  %114 = ptrtoint ptr %num_total_plane220 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %num_total_plane220, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %cmp116221 = icmp sgt i32 %115, 0
  br i1 %cmp116221, label %for.body.lr.ph, label %if.end112.cleanup_crit_edge

if.end112.cleanup_crit_edge:                      ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end112
  %planes = getelementptr inbounds %struct.drm_atomic_state, ptr %7, i32 0, i32 3
  %fb_unref_work = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 7
  %pending = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0222 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %116 = ptrtoint ptr %planes to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %planes, align 4
  %arrayidx = getelementptr %struct.__drm_planes_state, ptr %117, i32 %i.0222
  %118 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %arrayidx, align 4
  %tobool118.not = icmp eq ptr %119, null
  br i1 %tobool118.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %old_state124 = getelementptr %struct.__drm_planes_state, ptr %117, i32 %i.0222, i32 2
  %120 = ptrtoint ptr %old_state124 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %old_state124, align 4
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %121, i32 0, i32 2
  %122 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %fb, align 4
  %tobool128.not = icmp eq ptr %123, null
  br i1 %tobool128.not, label %land.lhs.true.for.inc_crit_edge, label %if.end130

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end130:                                        ; preds = %land.lhs.true
  %new_state = getelementptr %struct.__drm_planes_state, ptr %117, i32 %i.0222, i32 3
  %124 = ptrtoint ptr %new_state to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %new_state, align 4
  %fb132 = getelementptr inbounds %struct.drm_plane_state, ptr %125, i32 0, i32 2
  %126 = ptrtoint ptr %fb132 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %fb132, align 4
  %cmp133 = icmp eq ptr %123, %127
  br i1 %cmp133, label %if.end130.for.inc_crit_edge, label %if.end136

if.end130.for.inc_crit_edge:                      ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end136:                                        ; preds = %if.end130
  %base.i = getelementptr inbounds %struct.drm_framebuffer, ptr %123, i32 0, i32 2
  tail call void @drm_mode_object_get(ptr noundef %base.i) #8
  %call139 = tail call i32 @drm_crtc_vblank_get(ptr noundef %crtc) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139)
  %cmp140.not = icmp eq i32 %call139, 0
  br i1 %cmp140.not, label %if.end136.if.end163_crit_edge, label %do.end157, !prof !307

if.end136.if.end163_crit_edge:                    ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end163

do.end157:                                        ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1531, i32 noundef 9, ptr noundef null) #8
  br label %if.end163

if.end163:                                        ; preds = %do.end157, %if.end136.if.end163_crit_edge
  %128 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %fb, align 4
  tail call void @drm_flip_work_queue(ptr noundef %fb_unref_work, ptr noundef %129) #8
  tail call void @_set_bit(i32 noundef 0, ptr noundef %pending) #8
  br label %for.inc

for.inc:                                          ; preds = %if.end163, %if.end130.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0222, 1
  %130 = ptrtoint ptr %dev115 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %dev115, align 4
  %num_total_plane = getelementptr inbounds %struct.drm_device, ptr %131, i32 0, i32 30, i32 17
  %132 = ptrtoint ptr %num_total_plane to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %num_total_plane, align 4
  %cmp116 = icmp slt i32 %inc, %133
  br i1 %cmp116, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end112.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vop_crtc_atomic_enable(ptr noundef %crtc, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %data = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 10
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data, align 8
  %state2 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %8 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %state2, align 4
  %adjusted_mode6 = getelementptr inbounds %struct.drm_crtc_state, ptr %9, i32 0, i32 7
  %hsync_end = getelementptr inbounds %struct.drm_crtc_state, ptr %9, i32 0, i32 7, i32 3
  %10 = ptrtoint ptr %hsync_end to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %hsync_end, align 4
  %hsync_start = getelementptr inbounds %struct.drm_crtc_state, ptr %9, i32 0, i32 7, i32 2
  %12 = ptrtoint ptr %hsync_start to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %hsync_start, align 2
  %sub = sub i16 %11, %13
  %hdisplay9 = getelementptr inbounds %struct.drm_crtc_state, ptr %9, i32 0, i32 7, i32 1
  %14 = ptrtoint ptr %hdisplay9 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %hdisplay9, align 4
  %htotal10 = getelementptr inbounds %struct.drm_crtc_state, ptr %9, i32 0, i32 7, i32 4
  %16 = ptrtoint ptr %htotal10 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %htotal10, align 2
  %conv12 = zext i16 %17 to i32
  %sub15 = sub i16 %17, %13
  %conv17 = zext i16 %sub15 to i32
  %add = add i16 %sub15, %15
  %vdisplay20 = getelementptr inbounds %struct.drm_crtc_state, ptr %9, i32 0, i32 7, i32 6
  %18 = ptrtoint ptr %vdisplay20 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %vdisplay20, align 2
  %vtotal21 = getelementptr inbounds %struct.drm_crtc_state, ptr %9, i32 0, i32 7, i32 9
  %20 = ptrtoint ptr %vtotal21 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %vtotal21, align 4
  %vsync_end = getelementptr inbounds %struct.drm_crtc_state, ptr %9, i32 0, i32 7, i32 8
  %22 = ptrtoint ptr %vsync_end to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %vsync_end, align 2
  %vsync_start = getelementptr inbounds %struct.drm_crtc_state, ptr %9, i32 0, i32 7, i32 7
  %24 = ptrtoint ptr %vsync_start to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %vsync_start, align 4
  %sub24 = sub i16 %23, %25
  %conv27 = zext i16 %21 to i32
  %sub30 = sub i16 %21, %25
  %conv32 = zext i16 %sub30 to i32
  %add34 = add i16 %sub30, %19
  %output_bpc = getelementptr inbounds %struct.rockchip_crtc_state, ptr %9, i32 0, i32 3
  %26 = ptrtoint ptr %output_bpc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %output_bpc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not = icmp eq i32 %27, 0
  %spec.select = select i1 %tobool.not, i32 10, i32 %27
  %tobool37.not = icmp eq ptr %5, null
  br i1 %tobool37.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %self_refresh_active = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 16
  %28 = ptrtoint ptr %self_refresh_active to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %self_refresh_active, align 2, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool38.not = icmp eq i8 %29, 0
  br i1 %tobool38.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  tail call void @drm_crtc_vblank_on(ptr noundef %crtc) #8
  %reg_lock.i = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %reg_lock.i) #8
  %30 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data, align 8
  %win_size15.i = getelementptr inbounds %struct.vop_data, ptr %31, i32 0, i32 9
  %32 = ptrtoint ptr %win_size15.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %win_size15.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp16.not.i = icmp eq i32 %33, 0
  br i1 %cmp16.not.i, label %if.then.rockchip_drm_set_win_enabled.exit_crit_edge, label %for.body.lr.ph.i

if.then.rockchip_drm_set_win_enabled.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %rockchip_drm_set_win_enabled.exit

for.body.lr.ph.i:                                 ; preds = %if.then
  %win_enabled.i = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.017.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %data2.i = getelementptr %struct.vop, ptr %crtc, i32 0, i32 24, i32 %i.017.i, i32 1
  %34 = ptrtoint ptr %data2.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data2.i, align 8
  %phy.i = getelementptr inbounds %struct.vop_win_data, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %phy.i, align 4
  %enable.i = getelementptr inbounds %struct.vop_win_phy, ptr %37, i32 0, i32 4
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %35, align 4
  %40 = ptrtoint ptr %win_enabled.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %win_enabled.i, align 4
  %42 = lshr i32 %41, %i.017.i
  %43 = and i32 %42, 1
  tail call fastcc void @vop_reg_set(ptr noundef %crtc, ptr noundef %enable.i, i32 noundef %39, i32 noundef -1, i32 noundef %43, ptr noundef nonnull @.str.4) #8
  %inc.i = add nuw i32 %i.017.i, 1
  %44 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %data, align 8
  %win_size.i = getelementptr inbounds %struct.vop_data, ptr %45, i32 0, i32 9
  %46 = ptrtoint ptr %win_size.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %win_size.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %47
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.rockchip_drm_set_win_enabled.exit_crit_edge

for.body.i.rockchip_drm_set_win_enabled.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rockchip_drm_set_win_enabled.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

rockchip_drm_set_win_enabled.exit:                ; preds = %for.body.i.rockchip_drm_set_win_enabled.exit_crit_edge, %if.then.rockchip_drm_set_win_enabled.exit_crit_edge
  %.lcssa.i = phi ptr [ %31, %if.then.rockchip_drm_set_win_enabled.exit_crit_edge ], [ %45, %for.body.i.rockchip_drm_set_win_enabled.exit_crit_edge ]
  %common.i.i = getelementptr inbounds %struct.vop_data, ptr %.lcssa.i, i32 0, i32 2
  %48 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %common.i.i, align 8
  tail call fastcc void @vop_reg_set(ptr noundef %crtc, ptr noundef %49, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef nonnull @.str.73) #8
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock.i) #8
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %gamma_lut = getelementptr inbounds %struct.drm_crtc_state, ptr %9, i32 0, i32 12
  %50 = ptrtoint ptr %gamma_lut to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %gamma_lut, align 4
  %tobool41.not = icmp eq ptr %51, null
  br i1 %tobool41.not, label %if.end.if.end43_crit_edge, label %if.then42

if.end.if.end43_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.then42:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @vop_crtc_gamma_set(ptr noundef %crtc, ptr noundef %crtc)
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %if.end.if.end43_crit_edge
  %vop_lock = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %vop_lock, i32 noundef 0) #8
  %event = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 6
  %52 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %event, align 8
  %tobool44.not = icmp eq ptr %53, null
  br i1 %tobool44.not, label %if.end43.if.end59_crit_edge, label %do.end, !prof !307

if.end43.if.end59_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

do.end:                                           ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1318, i32 noundef 9, ptr noundef null) #8
  br label %if.end59

if.end59:                                         ; preds = %do.end, %if.end43.if.end59_crit_edge
  %dev.i = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 1
  %54 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev.i, align 8
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %55, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i337 = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i337, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %57, ptr noundef nonnull @.str, ptr noundef nonnull @.str.113, i32 noundef %call.i.i) #8
  br label %if.then69

if.end.i:                                         ; preds = %if.end59
  %hclk.i.i = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 19
  %58 = ptrtoint ptr %hclk.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %hclk.i.i, align 4
  %call.i152.i = tail call i32 @clk_enable(ptr noundef %59) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i152.i)
  %cmp.i.i = icmp slt i32 %call.i152.i, 0
  br i1 %cmp.i.i, label %if.end.i.do.end.i_crit_edge, label %if.end.i.i

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

if.end.i.i:                                       ; preds = %if.end.i
  %aclk.i.i = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 21
  %60 = ptrtoint ptr %aclk.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %aclk.i.i, align 4
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %61) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp2.i.i = icmp slt i32 %call1.i.i, 0
  br i1 %cmp2.i.i, label %err_disable_hclk.i.i, label %if.end27.critedge.i

err_disable_hclk.i.i:                             ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %62 = ptrtoint ptr %hclk.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %hclk.i.i, align 4
  tail call void @clk_disable(ptr noundef %63) #8
  br label %do.end.i

do.end.i:                                         ; preds = %err_disable_hclk.i.i, %if.end.i.do.end.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ %call.i152.i, %if.end.i.do.end.i_crit_edge ], [ %call1.i.i, %err_disable_hclk.i.i ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 598, i32 noundef 9, ptr noundef null) #8
  br label %err_put_pm_runtime.i

if.end27.critedge.i:                              ; preds = %if.end.i.i
  %dclk.i = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 20
  %64 = ptrtoint ptr %dclk.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dclk.i, align 8
  %call28.i = tail call i32 @clk_enable(ptr noundef %65) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %cmp30.i = icmp slt i32 %call28.i, 0
  br i1 %cmp30.i, label %do.end46.i, label %if.end62.critedge.i, !prof !304

do.end46.i:                                       ; preds = %if.end27.critedge.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 602, i32 noundef 9, ptr noundef null) #8
  br label %err_disable_core.i

if.end62.critedge.i:                              ; preds = %if.end27.critedge.i
  %drm_dev.i = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 2
  %66 = ptrtoint ptr %drm_dev.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %drm_dev.i, align 4
  %68 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev.i, align 8
  %call64.i = tail call i32 @rockchip_drm_dma_attach_device(ptr noundef %67, ptr noundef %69) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64.i)
  %tobool65.not.i = icmp eq i32 %call64.i, 0
  br i1 %tobool65.not.i, label %if.end68.i, label %if.then66.i

if.then66.i:                                      ; preds = %if.end62.critedge.i
  call void @__sanitizer_cov_trace_pc() #10
  %70 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %71, ptr noundef nonnull @.str, ptr noundef nonnull @.str.114, i32 noundef %call64.i) #8
  %72 = ptrtoint ptr %dclk.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dclk.i, align 8
  tail call void @clk_disable(ptr noundef %73) #8
  br label %err_disable_core.i

if.end68.i:                                       ; preds = %if.end62.critedge.i
  %reg_lock.i338 = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %reg_lock.i338) #8
  %len.i = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 14
  %74 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp69161.not.i = icmp eq i32 %75, 0
  br i1 %cmp69161.not.i, label %if.end68.i.for.end.i_crit_edge, label %for.body.lr.ph.i339

if.end68.i.for.end.i_crit_edge:                   ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.lr.ph.i339:                              ; preds = %if.end68.i
  %regsbak.i = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 11
  %regs.i = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 12
  br label %for.body.i340

for.body.i340:                                    ; preds = %for.body.i340.for.body.i340_crit_edge, %for.body.lr.ph.i339
  %i.0162.i = phi i32 [ 0, %for.body.lr.ph.i339 ], [ %add.i, %for.body.i340.for.body.i340_crit_edge ]
  %76 = ptrtoint ptr %regsbak.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regsbak.i, align 4
  %div.i = sdiv i32 %i.0162.i, 4
  %arrayidx.i = getelementptr i32, ptr %77, i32 %div.i
  %78 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx.i, align 4
  %80 = tail call i32 @llvm.bswap.i32(i32 %79) #8
  %81 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %regs.i, align 8
  %add.ptr70.i = getelementptr i8, ptr %82, i32 %i.0162.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr70.i, i32 %80) #8, !srcloc !305
  %add.i = add i32 %i.0162.i, 4
  %83 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %len.i, align 8
  %cmp69.i = icmp ult i32 %add.i, %84
  br i1 %cmp69.i, label %for.body.i340.for.body.i340_crit_edge, label %for.body.i340.for.end.i_crit_edge

for.body.i340.for.end.i_crit_edge:                ; preds = %for.body.i340
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i340.for.body.i340_crit_edge:            ; preds = %for.body.i340
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i340

for.end.i:                                        ; preds = %for.body.i340.for.end.i_crit_edge, %if.end68.i.for.end.i_crit_edge
  br i1 %tobool37.not, label %for.end.i.if.then73.i_crit_edge, label %lor.lhs.false.i

for.end.i.if.then73.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then73.i

lor.lhs.false.i:                                  ; preds = %for.end.i
  %self_refresh_active.i = getelementptr inbounds %struct.drm_crtc_state, ptr %5, i32 0, i32 16
  %85 = ptrtoint ptr %self_refresh_active.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %self_refresh_active.i, align 2, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool72.not.i = icmp eq i8 %86, 0
  br i1 %tobool72.not.i, label %lor.lhs.false.i.if.then73.i_crit_edge, label %lor.lhs.false.i.if.end80.i_crit_edge

lor.lhs.false.i.if.end80.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end80.i

lor.lhs.false.i.if.then73.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then73.i

if.then73.i:                                      ; preds = %lor.lhs.false.i.if.then73.i_crit_edge, %for.end.i.if.then73.i_crit_edge
  %87 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %data, align 8
  %win_size163.i = getelementptr inbounds %struct.vop_data, ptr %88, i32 0, i32 9
  %89 = ptrtoint ptr %win_size163.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %win_size163.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp75164.not.i = icmp eq i32 %90, 0
  br i1 %cmp75164.not.i, label %if.then73.i.if.end80.i_crit_edge, label %if.then73.i.for.body76.i_crit_edge

if.then73.i.for.body76.i_crit_edge:               ; preds = %if.then73.i
  br label %for.body76.i

if.then73.i.if.end80.i_crit_edge:                 ; preds = %if.then73.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end80.i

for.body76.i:                                     ; preds = %for.body76.i.for.body76.i_crit_edge, %if.then73.i.for.body76.i_crit_edge
  %i.1165.i = phi i32 [ %inc.i342, %for.body76.i.for.body76.i_crit_edge ], [ 0, %if.then73.i.for.body76.i_crit_edge ]
  %arrayidx77.i = getelementptr %struct.vop, ptr %crtc, i32 0, i32 24, i32 %i.1165.i
  tail call fastcc void @vop_win_disable(ptr noundef %crtc, ptr noundef %arrayidx77.i) #8
  %inc.i342 = add nuw i32 %i.1165.i, 1
  %91 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %data, align 8
  %win_size.i343 = getelementptr inbounds %struct.vop_data, ptr %92, i32 0, i32 9
  %93 = ptrtoint ptr %win_size.i343 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %win_size.i343, align 4
  %cmp75.i = icmp ult i32 %inc.i342, %94
  br i1 %cmp75.i, label %for.body76.i.for.body76.i_crit_edge, label %for.body76.i.if.end80.i_crit_edge

for.body76.i.if.end80.i_crit_edge:                ; preds = %for.body76.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end80.i

for.body76.i.for.body76.i_crit_edge:              ; preds = %for.body76.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body76.i

if.end80.i:                                       ; preds = %for.body76.i.if.end80.i_crit_edge, %if.then73.i.if.end80.i_crit_edge, %lor.lhs.false.i.if.end80.i_crit_edge
  %95 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %data, align 8
  %afbc.i = getelementptr inbounds %struct.vop_data, ptr %96, i32 0, i32 6
  %97 = ptrtoint ptr %afbc.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %afbc.i, align 8
  %tobool82.not.i = icmp eq ptr %98, null
  br i1 %tobool82.not.i, label %if.end80.i.if.end71_crit_edge, label %lor.lhs.false.i.i

if.end80.i.if.end71_crit_edge:                    ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

lor.lhs.false.i.i:                                ; preds = %if.end80.i
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %98, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool2.not.i.i = icmp eq i32 %100, 0
  br i1 %tobool2.not.i.i, label %if.then.i.i, label %if.end.i153.i

if.then.i.i:                                      ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %101 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %102, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4) #8
  br label %vop_reg_set.exit.i

if.end.i153.i:                                    ; preds = %lor.lhs.false.i.i
  %offset3.i.i = getelementptr inbounds %struct.vop_reg, ptr %98, i32 0, i32 1
  %103 = ptrtoint ptr %offset3.i.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %offset3.i.i, align 4
  %conv.i.i = zext i16 %104 to i32
  %shift5.i.i = getelementptr inbounds %struct.vop_reg, ptr %98, i32 0, i32 2
  %105 = ptrtoint ptr %shift5.i.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %shift5.i.i, align 2
  %conv6.i.i = zext i8 %106 to i32
  %write_mask.i.i = getelementptr inbounds %struct.vop_reg, ptr %98, i32 0, i32 3
  %107 = ptrtoint ptr %write_mask.i.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %write_mask.i.i, align 1, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %108)
  %tobool7.not.i.i = icmp eq i8 %108, 0
  br i1 %tobool7.not.i.i, label %if.else.i.i, label %if.then8.i.i

if.then8.i.i:                                     ; preds = %if.end.i153.i
  call void @__sanitizer_cov_trace_pc() #10
  %add10.i.i = add nuw nsw i32 %conv6.i.i, 16
  %shl11.i.i = shl i32 %100, %add10.i.i
  br label %if.end20.i.i

if.else.i.i:                                      ; preds = %if.end.i153.i
  call void @__sanitizer_cov_trace_pc() #10
  %regsbak.i.i = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 11
  %109 = ptrtoint ptr %regsbak.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %regsbak.i.i, align 4
  %shr.i160.i = lshr i32 %conv.i.i, 2
  %arrayidx.i.i = getelementptr i32, ptr %110, i32 %shr.i160.i
  %111 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx.i.i, align 4
  %shl12.i.i = shl i32 %100, %conv6.i.i
  %neg.i.i = xor i32 %shl12.i.i, -1
  %and13.i.i = and i32 %112, %neg.i.i
  store i32 %and13.i.i, ptr %arrayidx.i.i, align 4
  br label %if.end20.i.i

if.end20.i.i:                                     ; preds = %if.else.i.i, %if.then8.i.i
  %v.addr.0.i.i = phi i32 [ %shl11.i.i, %if.then8.i.i ], [ %and13.i.i, %if.else.i.i ]
  %relaxed.i.i = getelementptr inbounds %struct.vop_reg, ptr %98, i32 0, i32 4
  %113 = ptrtoint ptr %relaxed.i.i to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %relaxed.i.i, align 4, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %tobool21.not.i.i = icmp eq i8 %114, 0
  br i1 %tobool21.not.i.i, label %do.body.i.i, label %if.then22.i.i

if.then22.i.i:                                    ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %115 = tail call i32 @llvm.bswap.i32(i32 %v.addr.0.i.i) #8
  %regs.i.i = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 12
  %116 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %117, i32 %conv.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %115) #8, !srcloc !305
  br label %vop_reg_set.exit.i

do.body.i.i:                                      ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !306
  tail call void @arm_heavy_mb() #8
  %118 = tail call i32 @llvm.bswap.i32(i32 %v.addr.0.i.i) #8
  %regs24.i.i = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 12
  %119 = ptrtoint ptr %regs24.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %regs24.i.i, align 8
  %add.ptr25.i.i = getelementptr i8, ptr %120, i32 %conv.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i.i, i32 %118) #8, !srcloc !305
  br label %vop_reg_set.exit.i

vop_reg_set.exit.i:                               ; preds = %do.body.i.i, %if.then22.i.i, %if.then.i.i
  %121 = ptrtoint ptr %state2 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %state2, align 4
  %enable_afbc.i = getelementptr inbounds %struct.rockchip_crtc_state, ptr %122, i32 0, i32 5
  %123 = ptrtoint ptr %enable_afbc.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 0, ptr %enable_afbc.i, align 4
  br label %if.end71

err_disable_core.i:                               ; preds = %if.then66.i, %do.end46.i
  %ret.0.i = phi i32 [ %call64.i, %if.then66.i ], [ %call28.i, %do.end46.i ]
  %124 = ptrtoint ptr %aclk.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %aclk.i.i, align 4
  tail call void @clk_disable(ptr noundef %125) #8
  %126 = ptrtoint ptr %hclk.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %hclk.i.i, align 4
  tail call void @clk_disable(ptr noundef %127) #8
  br label %err_put_pm_runtime.i

err_put_pm_runtime.i:                             ; preds = %err_disable_core.i, %do.end.i
  %ret.1.i = phi i32 [ %ret.0.i, %err_disable_core.i ], [ %retval.0.i.ph.i, %do.end.i ]
  %128 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %dev.i, align 8
  %call.i156.i = tail call i32 @__pm_runtime_idle(ptr noundef %129, i32 noundef 4) #8
  br label %if.then69

if.then69:                                        ; preds = %err_put_pm_runtime.i, %if.then.i
  %retval.0.i.ph = phi i32 [ %ret.1.i, %err_put_pm_runtime.i ], [ %call.i.i, %if.then.i ]
  tail call void @mutex_unlock(ptr noundef %vop_lock) #8
  %130 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %131, ptr noundef nonnull @.str, ptr noundef nonnull @.str.81, i32 noundef %retval.0.i.ph) #8
  br label %cleanup

if.end71:                                         ; preds = %vop_reg_set.exit.i, %if.end80.i.if.end71_crit_edge
  %132 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %data, align 8
  %common.i.i344 = getelementptr inbounds %struct.vop_data, ptr %133, i32 0, i32 2
  %134 = ptrtoint ptr %common.i.i344 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %common.i.i344, align 8
  tail call fastcc void @vop_reg_set(ptr noundef %crtc, ptr noundef %135, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef nonnull @.str.73) #8
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock.i338) #8
  %is_enabled.i = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 3
  %136 = ptrtoint ptr %is_enabled.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 1, ptr %is_enabled.i, align 8
  tail call void @_raw_spin_lock(ptr noundef %reg_lock.i338) #8
  %137 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %data, align 8
  %common.i = getelementptr inbounds %struct.vop_data, ptr %138, i32 0, i32 2
  %139 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %common.i, align 8
  %standby.i = getelementptr inbounds %struct.vop_common, ptr %140, i32 0, i32 12
  tail call fastcc void @vop_reg_set(ptr noundef %crtc, ptr noundef %standby.i, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef nonnull @.str.112) #8
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock.i338) #8
  tail call void @drm_crtc_vblank_on(ptr noundef %crtc) #8
  %flags = getelementptr inbounds %struct.drm_crtc_state, ptr %9, i32 0, i32 7, i32 11
  %141 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %flags, align 4
  %and = and i32 %142, 1
  %and75 = lshr i32 %142, 1
  %143 = and i32 %and75, 2
  %or = or i32 %143, %and
  %144 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %data, align 8
  %output = getelementptr inbounds %struct.vop_data, ptr %145, i32 0, i32 5
  %146 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %output, align 4
  tail call fastcc void @vop_reg_set(ptr noundef %crtc, ptr noundef %147, i32 noundef 0, i32 noundef -1, i32 noundef %or, ptr noundef nonnull @.str.82)
  %148 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %data, align 8
  %output81 = getelementptr inbounds %struct.vop_data, ptr %149, i32 0, i32 5
  %150 = ptrtoint ptr %output81 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %output81, align 4
  %mipi_dual_channel_en = getelementptr inbounds %struct.vop_output, ptr %151, i32 0, i32 15
  %tobool.not.i = icmp eq ptr %mipi_dual_channel_en, null
  br i1 %tobool.not.i, label %if.end71.if.then.i347_crit_edge, label %lor.lhs.false.i345

if.end71.if.then.i347_crit_edge:                  ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i347

lor.lhs.false.i345:                               ; preds = %if.end71
  %152 = ptrtoint ptr %mipi_dual_channel_en to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %mipi_dual_channel_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %153)
  %tobool2.not.i = icmp eq i32 %153, 0
  br i1 %tobool2.not.i, label %lor.lhs.false.i345.if.then.i347_crit_edge, label %if.end.i348

lor.lhs.false.i345.if.then.i347_crit_edge:        ; preds = %lor.lhs.false.i345
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i347

if.then.i347:                                     ; preds = %lor.lhs.false.i345.if.then.i347_crit_edge, %if.end71.if.then.i347_crit_edge
  %154 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %155, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.83) #8
  br label %vop_reg_set.exit

if.end.i348:                                      ; preds = %lor.lhs.false.i345
  %offset3.i = getelementptr inbounds %struct.vop_output, ptr %151, i32 0, i32 15, i32 1
  %156 = ptrtoint ptr %offset3.i to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %offset3.i, align 4
  %conv.i = zext i16 %157 to i32
  %shift5.i = getelementptr inbounds %struct.vop_output, ptr %151, i32 0, i32 15, i32 2
  %158 = ptrtoint ptr %shift5.i to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %shift5.i, align 2
  %conv6.i = zext i8 %159 to i32
  %write_mask.i = getelementptr inbounds %struct.vop_output, ptr %151, i32 0, i32 15, i32 3
  %160 = ptrtoint ptr %write_mask.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %write_mask.i, align 1, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %161)
  %tobool7.not.i = icmp eq i8 %161, 0
  br i1 %tobool7.not.i, label %if.else.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.end.i348
  call void @__sanitizer_cov_trace_pc() #10
  %add10.i = add nuw nsw i32 %conv6.i, 16
  %shl11.i = shl i32 %153, %add10.i
  br label %if.end20.i

if.else.i:                                        ; preds = %if.end.i348
  call void @__sanitizer_cov_trace_pc() #10
  %regsbak.i349 = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 11
  %162 = ptrtoint ptr %regsbak.i349 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %regsbak.i349, align 4
  %shr.i525 = lshr i32 %conv.i, 2
  %arrayidx.i350 = getelementptr i32, ptr %163, i32 %shr.i525
  %164 = ptrtoint ptr %arrayidx.i350 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %arrayidx.i350, align 4
  %shl12.i = shl i32 %153, %conv6.i
  %neg.i = xor i32 %shl12.i, -1
  %and13.i = and i32 %165, %neg.i
  store i32 %and13.i, ptr %arrayidx.i350, align 4
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.else.i, %if.then8.i
  %v.addr.0.i = phi i32 [ %shl11.i, %if.then8.i ], [ %and13.i, %if.else.i ]
  %relaxed.i = getelementptr inbounds %struct.vop_output, ptr %151, i32 0, i32 15, i32 4
  %166 = ptrtoint ptr %relaxed.i to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %relaxed.i, align 4, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %167)
  %tobool21.not.i = icmp eq i8 %167, 0
  br i1 %tobool21.not.i, label %do.body.i, label %if.then22.i

if.then22.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  %168 = tail call i32 @llvm.bswap.i32(i32 %v.addr.0.i) #8
  %regs.i351 = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 12
  %169 = ptrtoint ptr %regs.i351 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %regs.i351, align 8
  %add.ptr.i = getelementptr i8, ptr %170, i32 %conv.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %168) #8, !srcloc !305
  br label %vop_reg_set.exit

do.body.i:                                        ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !306
  tail call void @arm_heavy_mb() #8
  %171 = tail call i32 @llvm.bswap.i32(i32 %v.addr.0.i) #8
  %regs24.i = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 12
  %172 = ptrtoint ptr %regs24.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %regs24.i, align 8
  %add.ptr25.i = getelementptr i8, ptr %173, i32 %conv.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i, i32 %171) #8, !srcloc !305
  br label %vop_reg_set.exit

vop_reg_set.exit:                                 ; preds = %do.body.i, %if.then22.i, %if.then.i347
  %output_type = getelementptr inbounds %struct.rockchip_crtc_state, ptr %9, i32 0, i32 1
  %174 = ptrtoint ptr %output_type to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %output_type, align 4
  %176 = zext i32 %175 to i64
  call void @__sanitizer_cov_trace_switch(i64 %176, ptr @__sancov_gen_cov_switch_values.148)
  switch i32 %175, label %sw.default [
    i32 7, label %sw.bb
    i32 14, label %sw.bb88
    i32 11, label %sw.bb95
    i32 16, label %sw.bb102
    i32 10, label %sw.bb118
  ]

sw.bb:                                            ; preds = %vop_reg_set.exit
  call void @__sanitizer_cov_trace_pc() #10
  %177 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %data, align 8
  %output83 = getelementptr inbounds %struct.vop_data, ptr %178, i32 0, i32 5
  %179 = ptrtoint ptr %output83 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %output83, align 4
  %rgb_dclk_pol = getelementptr inbounds %struct.vop_output, ptr %180, i32 0, i32 10
  tail call fastcc void @vop_reg_set(ptr noundef %crtc, ptr noundef %rgb_dclk_pol, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef nonnull @.str.84)
  %181 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %data, align 8
  %output85 = getelementptr inbounds %struct.vop_data, ptr %182, i32 0, i32 5
  %183 = ptrtoint ptr %output85 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %output85, align 4
  %rgb_pin_pol = getelementptr inbounds %struct.vop_output, ptr %184, i32 0, i32 9
  tail call fastcc void @vop_reg_set(ptr noundef %crtc, ptr noundef %rgb_pin_pol, i32 noundef 0, i32 noundef -1, i32 noundef %or, ptr noundef nonnull @.str.85)
  %185 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %data, align 8
  %output87 = getelementptr inbounds %struct.vop_data, ptr %186, i32 0, i32 5
  %187 = ptrtoint ptr %output87 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %output87, align 4
  %rgb_en = getelementptr inbounds %struct.vop_output, ptr %188, i32 0, i32 16
  tail call fastcc void @vop_reg_set(ptr noundef %crtc, ptr noundef %rgb_en, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef nonnull @.str.86)
  br label %sw.epilog

sw.bb88:                                          ; preds = %vop_reg_set.exit
  call void @__sanitizer_cov_trace_pc() #10
  %189 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %data, align 8
  %output90 = getelementptr inbounds %struct.vop_data, ptr %190, i32 0, i32 5
  %191 = ptrtoint ptr %output90 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %output90, align 4
  %edp_dclk_pol = getelementptr inbounds %struct.vop_output, ptr %192, i32 0, i32 4
  tail call fastcc void @vop_reg_set(ptr noundef %crtc, ptr noundef %edp_dclk_pol, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef nonnull @.str.87)
  %193 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %data, align 8
  %output92 = getelementptr inbounds %struct.vop_data, ptr %194, i32 0, i32 5
  %195 = ptrtoint ptr %output92 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %output92, align 4
  %edp_pin_pol = getelementptr inbounds %struct.vop_output, ptr %196, i32 0, i32 3
  tail call fastcc void @vop_reg_set(ptr noundef %crtc, ptr noundef %edp_pin_pol, i32 noundef 0, i32 noundef -1, i32 noundef %or, ptr noundef nonnull @.str.88)
  %197 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %data, align 8
  %output94 = getelementptr inbounds %struct.vop_data, ptr %198, i32 0, i32 5
  %199 = ptrtoint ptr %output94 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %output94, align 4
  %edp_en = getelementptr inbounds %struct.vop_output, ptr %200, i32 0, i32 12
  tail call fastcc void @vop_reg_set(ptr noundef %crtc, ptr noundef %edp_en, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef nonnull @.str.89)
  br label %sw.epilog

sw.bb95:                                          ; preds = %vop_reg_set.exit
  call void @__sanitizer_cov_trace_pc() #10
  %201 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %data, align 8
  %output97 = getelementptr inbounds %struct.vop_data, ptr %202, i32 0, i32 5
  %203 = ptrtoint ptr %output97 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %output97, align 4
  %hdmi_dclk_pol = getelementptr inbounds %struct.vop_output, ptr %204, i32 0, i32 6
  tail call fastcc void @vop_reg_set(ptr noundef %crtc, ptr noundef %hdmi_dclk_pol, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef nonnull @.str.90)
  %205 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %data, align 8
  %output99 = getelementptr inbounds %struct.vop_data, ptr %206, i32 0, i32 5
  %207 = ptrtoint ptr %output99 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %output99, align 4
  %hdmi_pin_pol = getelementptr inbounds %struct.vop_output, ptr %208, i32 0, i32 5
  tail call fastcc void @vop_reg_set(ptr noundef %crtc, ptr noundef %hdmi_pin_pol, i32 noundef 0, i32 noundef -1, i32 noundef %or, ptr noundef nonnull @.str.91)
  %209 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %data, align 8
  %output101 = getelementptr inbounds %struct.vop_data, ptr %210, i32 0, i32 5
  %211 = ptrtoint ptr %output101 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %output101, align 4
  %hdmi_en = getelementptr inbounds %struct.vop_output, ptr %212, i32 0, i32 13
  tail call fastcc void @vop_reg_set(ptr noundef %crtc, ptr noundef %hdmi_en, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef nonnull @.str.92)
  br label %sw.epilog

sw.bb102:                                         ; preds = %vop_reg_set.exit
  call void @__sanitizer_cov_trace_pc() #10
  %213 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %data, align 8
  %output104 = getelementptr inbounds %struct.vop_data, ptr %214, i32 0, i32 5
  %215 = ptrtoint ptr %output104 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %output104, align 4
  %mipi_dclk_pol = getelementptr inbounds %struct.vop_output, ptr %216, i32 0, i32 8
  tail call fastcc void @vop_reg_set(ptr noundef %crtc, ptr noundef %mipi_dclk_pol, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef nonnull @.str.93)
  %217 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %data, align 8
  %output106 = getelementptr inbounds %struct.vop_data, ptr %218, i32 0, i32 5
  %219 = ptrtoint ptr %output106 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %output106, align 4
  %mipi_pin_pol = getelementptr inbounds %struct.vop_output, ptr %220, i32 0, i32 7
  tail call fastcc void @vop_reg_set(ptr noundef %crtc, ptr noundef %mipi_pin_pol, i32 noundef 0, i32 noundef -1, i32 noundef %or, ptr noundef nonnull @.str.94)
  %221 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %data, align 8
  %output108 = getelementptr inbounds %struct.vop_data, ptr %222, i32 0, i32 5
  %223 = ptrtoint ptr %output108 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %output108, align 4
  %mipi_en = getelementptr inbounds %struct.vop_output, ptr %224, i32 0, i32 14
  tail call fastcc void @vop_reg_set(ptr noundef %crtc, ptr noundef %mipi_en, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef nonnull @.str.95)
  %225 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %data, align 8
  %output110 = getelementptr inbounds %struct.vop_data, ptr %226, i32 0, i32 5
  %227 = ptrtoint ptr %output110 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %output110, align 4
  %mipi_dual_channel_en111 = getelementptr inbounds %struct.vop_output, ptr %228, i32 0, i32 15
  %output_flags = getelementptr inbounds %struct.rockchip_crtc_state, ptr %9, i32 0, i32 4
  %229 = ptrtoint ptr %output_flags to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %output_flags, align 4
  %and112 = and i32 %230, 1
  tail call fastcc void @vop_reg_set(ptr noundef %crtc, ptr noundef %mipi_dual_channel_en111, i32 noundef 0, i32 noundef -1, i32 noundef %and112, ptr noundef nonnull @.str.83)
  br label %sw.epilog

sw.bb118:                                         ; preds = %vop_reg_set.exit
  %231 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %data, align 8
  %output120 = getelementptr inbounds %struct.vop_data, ptr %232, i32 0, i32 5
  %233 = ptrtoint ptr %output120 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %output120, align 4
  %dp_dclk_pol = getelementptr inbounds %struct.vop_output, ptr %234, i32 0, i32 2
  %tobool.not.i352 = icmp eq ptr %dp_dclk_pol, null
  br i1 %tobool.not.i352, label %sw.bb118.if.then.i356_crit_edge, label %lor.lhs.false.i354

sw.bb118.if.then.i356_crit_edge:                  ; preds = %sw.bb118
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i356

lor.lhs.false.i354:                               ; preds = %sw.bb118
  %235 = ptrtoint ptr %dp_dclk_pol to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %dp_dclk_pol, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %236)
  %tobool2.not.i353 = icmp eq i32 %236, 0
  br i1 %tobool2.not.i353, label %lor.lhs.false.i354.if.then.i356_crit_edge, label %if.end.i363

lor.lhs.false.i354.if.then.i356_crit_edge:        ; preds = %lor.lhs.false.i354
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i356

if.then.i356:                                     ; preds = %lor.lhs.false.i354.if.then.i356_crit_edge, %sw.bb118.if.then.i356_crit_edge
  %237 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %238, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.96) #8
  br label %vop_reg_set.exit384

if.end.i363:                                      ; preds = %lor.lhs.false.i354
  %offset3.i357 = getelementptr inbounds %struct.vop_output, ptr %234, i32 0, i32 2, i32 1
  %239 = ptrtoint ptr %offset3.i357 to i32
  call void @__asan_load2_noabort(i32 %239)
  %240 = load i16, ptr %offset3.i357, align 4
  %conv.i358 = zext i16 %240 to i32
  %shift5.i359 = getelementptr inbounds %struct.vop_output, ptr %234, i32 0, i32 2, i32 2
  %241 = ptrtoint ptr %shift5.i359 to i32
  call void @__asan_load1_noabort(i32 %241)
  %242 = load i8, ptr %shift5.i359, align 2
  %conv6.i360 = zext i8 %242 to i32
  %write_mask.i361 = getelementptr inbounds %struct.vop_output, ptr %234, i32 0, i32 2, i32 3
  %243 = ptrtoint ptr %write_mask.i361 to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %write_mask.i361, align 1, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %244)
  %tobool7.not.i362 = icmp eq i8 %244, 0
  br i1 %tobool7.not.i362, label %if.else.i373, label %if.then8.i366

if.then8.i366:                                    ; preds = %if.end.i363
  call void @__sanitizer_cov_trace_pc() #10
  %add10.i364 = add nuw nsw i32 %conv6.i360, 16
  %shl11.i365 = shl i32 %236, %add10.i364
  br label %if.end20.i377

if.else.i373:                                     ; preds = %if.end.i363
  call void @__sanitizer_cov_trace_pc() #10
  %regsbak.i367 = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 11
  %245 = ptrtoint ptr %regsbak.i367 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %regsbak.i367, align 4
  %shr.i368524 = lshr i32 %conv.i358, 2
  %arrayidx.i369 = getelementptr i32, ptr %246, i32 %shr.i368524
  %247 = ptrtoint ptr %arrayidx.i369 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %arrayidx.i369, align 4
  %shl12.i370 = shl i32 %236, %conv6.i360
  %neg.i371 = xor i32 %shl12.i370, -1
  %and13.i372 = and i32 %248, %neg.i371
  store i32 %and13.i372, ptr %arrayidx.i369, align 4
  br label %if.end20.i377

if.end20.i377:                                    ; preds = %if.else.i373, %if.then8.i366
  %v.addr.0.i374 = phi i32 [ %shl11.i365, %if.then8.i366 ], [ %and13.i372, %if.else.i373 ]
  %relaxed.i375 = getelementptr inbounds %struct.vop_output, ptr %234, i32 0, i32 2, i32 4
  %249 = ptrtoint ptr %relaxed.i375 to i32
  call void @__asan_load1_noabort(i32 %249)
  %250 = load i8, ptr %relaxed.i375, align 4, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %250)
  %tobool21.not.i376 = icmp eq i8 %250, 0
  br i1 %tobool21.not.i376, label %do.body.i383, label %if.then22.i380

if.then22.i380:                                   ; preds = %if.end20.i377
  call void @__sanitizer_cov_trace_pc() #10
  %251 = tail call i32 @llvm.bswap.i32(i32 %v.addr.0.i374) #8
  %regs.i378 = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 12
  %252 = ptrtoint ptr %regs.i378 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %regs.i378, align 8
  %add.ptr.i379 = getelementptr i8, ptr %253, i32 %conv.i358
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i379, i32 %251) #8, !srcloc !305
  br label %vop_reg_set.exit384

do.body.i383:                                     ; preds = %if.end20.i377
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !306
  tail call void @arm_heavy_mb() #8
  %254 = tail call i32 @llvm.bswap.i32(i32 %v.addr.0.i374) #8
  %regs24.i381 = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 12
  %255 = ptrtoint ptr %regs24.i381 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %regs24.i381, align 8
  %add.ptr25.i382 = getelementptr i8, ptr %256, i32 %conv.i358
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i382, i32 %254) #8, !srcloc !305
  br label %vop_reg_set.exit384

vop_reg_set.exit384:                              ; preds = %do.body.i383, %if.then22.i380, %if.then.i356
  %257 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %data, align 8
  %output122 = getelementptr inbounds %struct.vop_data, ptr %258, i32 0, i32 5
  %259 = ptrtoint ptr %output122 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %output122, align 4
  %dp_pin_pol = getelementptr inbounds %struct.vop_output, ptr %260, i32 0, i32 1
  tail call fastcc void @vop_reg_set(ptr noundef %crtc, ptr noundef %dp_pin_pol, i32 noundef 0, i32 noundef -1, i32 noundef %or, ptr noundef nonnull @.str.97)
  %261 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %data, align 8
  %output124 = getelementptr inbounds %struct.vop_data, ptr %262, i32 0, i32 5
  %263 = ptrtoint ptr %output124 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %output124, align 4
  %dp_en = getelementptr inbounds %struct.vop_output, ptr %264, i32 0, i32 11
  tail call fastcc void @vop_reg_set(ptr noundef %crtc, ptr noundef %dp_en, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef nonnull @.str.98)
  br label %sw.epilog

sw.default:                                       ; preds = %vop_reg_set.exit
  call void @__sanitizer_cov_trace_pc() #10
  %265 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %266, ptr noundef nonnull @.str, ptr noundef nonnull @.str.99, i32 noundef %175) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %vop_reg_set.exit384, %sw.bb102, %sw.bb95, %sw.bb88, %sw.bb
  %output_mode = getelementptr inbounds %struct.rockchip_crtc_state, ptr %9, i32 0, i32 2
  %267 = ptrtoint ptr %output_mode to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %output_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %268)
  %cmp = icmp eq i32 %268, 15
  br i1 %cmp, label %land.lhs.true128, label %sw.epilog.if.end133_crit_edge

sw.epilog.if.end133_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end133

land.lhs.true128:                                 ; preds = %sw.epilog
  %feature = getelementptr inbounds %struct.vop_data, ptr %7, i32 0, i32 11
  %269 = ptrtoint ptr %feature to i32
  call void @__asan_load8_noabort(i32 %269)
  %270 = load i64, ptr %feature, align 8
  %and129 = and i64 %270, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and129)
  %tobool130.not = icmp eq i64 %and129, 0
  br i1 %tobool130.not, label %if.then131, label %land.lhs.true128.if.end133_crit_edge

land.lhs.true128.if.end133_crit_edge:             ; preds = %land.lhs.true128
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end133

if.then131:                                       ; preds = %land.lhs.true128
  call void @__sanitizer_cov_trace_pc() #10
  %271 = ptrtoint ptr %output_mode to i32
  call void @__asan_store4_noabort(i32 %271)
  store i32 0, ptr %output_mode, align 4
  br label %if.end133

if.end133:                                        ; preds = %if.then131, %land.lhs.true128.if.end133_crit_edge, %sw.epilog.if.end133_crit_edge
  %272 = ptrtoint ptr %output_mode to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %output_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %273)
  %cmp135 = icmp eq i32 %273, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %spec.select)
  %cmp138 = icmp slt i32 %spec.select, 9
  %or.cond = select i1 %cmp135, i1 %cmp138, i1 false
  %274 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %data, align 8
  %common = getelementptr inbounds %struct.vop_data, ptr %275, i32 0, i32 2
  %276 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %common, align 8
  %pre_dither_down = getelementptr inbounds %struct.vop_common, ptr %277, i32 0, i32 3
  br i1 %or.cond, label %if.then140, label %if.else

if.then140:                                       ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @vop_reg_set(ptr noundef %crtc, ptr noundef %pre_dither_down, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef nonnull @.str.100)
  br label %if.end145

if.else:                                          ; preds = %if.end133
  %tobool.not.i385 = icmp eq ptr %pre_dither_down, null
  br i1 %tobool.not.i385, label %if.else.if.then.i389_crit_edge, label %lor.lhs.false.i387

if.else.if.then.i389_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i389

lor.lhs.false.i387:                               ; preds = %if.else
  %278 = ptrtoint ptr %pre_dither_down to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %pre_dither_down, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %279)
  %tobool2.not.i386 = icmp eq i32 %279, 0
  br i1 %tobool2.not.i386, label %lor.lhs.false.i387.if.then.i389_crit_edge, label %if.end.i396

lor.lhs.false.i387.if.then.i389_crit_edge:        ; preds = %lor.lhs.false.i387
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i389

if.then.i389:                                     ; preds = %lor.lhs.false.i387.if.then.i389_crit_edge, %if.else.if.then.i389_crit_edge
  %280 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %281, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.100) #8
  br label %if.end145

if.end.i396:                                      ; preds = %lor.lhs.false.i387
  %offset3.i390 = getelementptr inbounds %struct.vop_common, ptr %277, i32 0, i32 3, i32 1
  %282 = ptrtoint ptr %offset3.i390 to i32
  call void @__asan_load2_noabort(i32 %282)
  %283 = load i16, ptr %offset3.i390, align 4
  %conv.i391 = zext i16 %283 to i32
  %shift5.i392 = getelementptr inbounds %struct.vop_common, ptr %277, i32 0, i32 3, i32 2
  %284 = ptrtoint ptr %shift5.i392 to i32
  call void @__asan_load1_noabort(i32 %284)
  %285 = load i8, ptr %shift5.i392, align 2
  %conv6.i393 = zext i8 %285 to i32
  %write_mask.i394 = getelementptr inbounds %struct.vop_common, ptr %277, i32 0, i32 3, i32 3
  %286 = ptrtoint ptr %write_mask.i394 to i32
  call void @__asan_load1_noabort(i32 %286)
  %287 = load i8, ptr %write_mask.i394, align 1, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %287)
  %tobool7.not.i395 = icmp eq i8 %287, 0
  br i1 %tobool7.not.i395, label %if.else.i406, label %if.then8.i399

if.then8.i399:                                    ; preds = %if.end.i396
  call void @__sanitizer_cov_trace_pc() #10
  %add10.i397 = add nuw nsw i32 %conv6.i393, 16
  %shl11.i398 = shl i32 %279, %add10.i397
  br label %if.end20.i410

if.else.i406:                                     ; preds = %if.end.i396
  call void @__sanitizer_cov_trace_pc() #10
  %regsbak.i400 = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 11
  %288 = ptrtoint ptr %regsbak.i400 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %regsbak.i400, align 4
  %shr.i401523 = lshr i32 %conv.i391, 2
  %arrayidx.i402 = getelementptr i32, ptr %289, i32 %shr.i401523
  %290 = ptrtoint ptr %arrayidx.i402 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %arrayidx.i402, align 4
  %shl12.i403 = shl i32 %279, %conv6.i393
  %neg.i404 = xor i32 %shl12.i403, -1
  %and13.i405 = and i32 %291, %neg.i404
  store i32 %and13.i405, ptr %arrayidx.i402, align 4
  br label %if.end20.i410

if.end20.i410:                                    ; preds = %if.else.i406, %if.then8.i399
  %v.addr.0.i407 = phi i32 [ %shl11.i398, %if.then8.i399 ], [ %and13.i405, %if.else.i406 ]
  %relaxed.i408 = getelementptr inbounds %struct.vop_common, ptr %277, i32 0, i32 3, i32 4
  %292 = ptrtoint ptr %relaxed.i408 to i32
  call void @__asan_load1_noabort(i32 %292)
  %293 = load i8, ptr %relaxed.i408, align 4, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %293)
  %tobool21.not.i409 = icmp eq i8 %293, 0
  br i1 %tobool21.not.i409, label %do.body.i416, label %if.then22.i413

if.then22.i413:                                   ; preds = %if.end20.i410
  call void @__sanitizer_cov_trace_pc() #10
  %294 = tail call i32 @llvm.bswap.i32(i32 %v.addr.0.i407) #8
  %regs.i411 = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 12
  %295 = ptrtoint ptr %regs.i411 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %regs.i411, align 8
  %add.ptr.i412 = getelementptr i8, ptr %296, i32 %conv.i391
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i412, i32 %294) #8, !srcloc !305
  br label %if.end145

do.body.i416:                                     ; preds = %if.end20.i410
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !306
  tail call void @arm_heavy_mb() #8
  %297 = tail call i32 @llvm.bswap.i32(i32 %v.addr.0.i407) #8
  %regs24.i414 = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 12
  %298 = ptrtoint ptr %regs24.i414 to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %regs24.i414, align 8
  %add.ptr25.i415 = getelementptr i8, ptr %299, i32 %conv.i391
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i415, i32 %297) #8, !srcloc !305
  br label %if.end145

if.end145:                                        ; preds = %do.body.i416, %if.then22.i413, %if.then.i389, %if.then140
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %spec.select)
  %cmp146 = icmp eq i32 %spec.select, 6
  %300 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %data, align 8
  %common150 = getelementptr inbounds %struct.vop_data, ptr %301, i32 0, i32 2
  %302 = ptrtoint ptr %common150 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %common150, align 8
  br i1 %cmp146, label %if.then148, label %if.else155

if.then148:                                       ; preds = %if.end145
  %dither_down_sel = getelementptr inbounds %struct.vop_common, ptr %303, i32 0, i32 4
  %tobool.not.i418 = icmp eq ptr %dither_down_sel, null
  br i1 %tobool.not.i418, label %if.then148.if.then.i422_crit_edge, label %lor.lhs.false.i420

if.then148.if.then.i422_crit_edge:                ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i422

lor.lhs.false.i420:                               ; preds = %if.then148
  %304 = ptrtoint ptr %dither_down_sel to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %dither_down_sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %305)
  %tobool2.not.i419 = icmp eq i32 %305, 0
  br i1 %tobool2.not.i419, label %lor.lhs.false.i420.if.then.i422_crit_edge, label %if.end.i429

lor.lhs.false.i420.if.then.i422_crit_edge:        ; preds = %lor.lhs.false.i420
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i422

if.then.i422:                                     ; preds = %lor.lhs.false.i420.if.then.i422_crit_edge, %if.then148.if.then.i422_crit_edge
  %306 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %307, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.101) #8
  br label %vop_reg_set.exit450

if.end.i429:                                      ; preds = %lor.lhs.false.i420
  %offset3.i423 = getelementptr inbounds %struct.vop_common, ptr %303, i32 0, i32 4, i32 1
  %308 = ptrtoint ptr %offset3.i423 to i32
  call void @__asan_load2_noabort(i32 %308)
  %309 = load i16, ptr %offset3.i423, align 4
  %conv.i424 = zext i16 %309 to i32
  %shift5.i425 = getelementptr inbounds %struct.vop_common, ptr %303, i32 0, i32 4, i32 2
  %310 = ptrtoint ptr %shift5.i425 to i32
  call void @__asan_load1_noabort(i32 %310)
  %311 = load i8, ptr %shift5.i425, align 2
  %conv6.i426 = zext i8 %311 to i32
  %write_mask.i427 = getelementptr inbounds %struct.vop_common, ptr %303, i32 0, i32 4, i32 3
  %312 = ptrtoint ptr %write_mask.i427 to i32
  call void @__asan_load1_noabort(i32 %312)
  %313 = load i8, ptr %write_mask.i427, align 1, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %313)
  %tobool7.not.i428 = icmp eq i8 %313, 0
  br i1 %tobool7.not.i428, label %if.else.i439, label %if.then8.i432

if.then8.i432:                                    ; preds = %if.end.i429
  call void @__sanitizer_cov_trace_pc() #10
  %add10.i430 = add nuw nsw i32 %conv6.i426, 16
  %shl11.i431 = shl i32 %305, %add10.i430
  br label %if.end20.i443

if.else.i439:                                     ; preds = %if.end.i429
  call void @__sanitizer_cov_trace_pc() #10
  %regsbak.i433 = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 11
  %314 = ptrtoint ptr %regsbak.i433 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %regsbak.i433, align 4
  %shr.i434521 = lshr i32 %conv.i424, 2
  %arrayidx.i435 = getelementptr i32, ptr %315, i32 %shr.i434521
  %316 = ptrtoint ptr %arrayidx.i435 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %arrayidx.i435, align 4
  %shl12.i436 = shl i32 %305, %conv6.i426
  %neg.i437 = xor i32 %shl12.i436, -1
  %and13.i438 = and i32 %317, %neg.i437
  store i32 %and13.i438, ptr %arrayidx.i435, align 4
  br label %if.end20.i443

if.end20.i443:                                    ; preds = %if.else.i439, %if.then8.i432
  %v.addr.0.i440 = phi i32 [ %shl11.i431, %if.then8.i432 ], [ %and13.i438, %if.else.i439 ]
  %relaxed.i441 = getelementptr inbounds %struct.vop_common, ptr %303, i32 0, i32 4, i32 4
  %318 = ptrtoint ptr %relaxed.i441 to i32
  call void @__asan_load1_noabort(i32 %318)
  %319 = load i8, ptr %relaxed.i441, align 4, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %319)
  %tobool21.not.i442 = icmp eq i8 %319, 0
  br i1 %tobool21.not.i442, label %do.body.i449, label %if.then22.i446

if.then22.i446:                                   ; preds = %if.end20.i443
  call void @__sanitizer_cov_trace_pc() #10
  %320 = tail call i32 @llvm.bswap.i32(i32 %v.addr.0.i440) #8
  %regs.i444 = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 12
  %321 = ptrtoint ptr %regs.i444 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %regs.i444, align 8
  %add.ptr.i445 = getelementptr i8, ptr %322, i32 %conv.i424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i445, i32 %320) #8, !srcloc !305
  br label %vop_reg_set.exit450

do.body.i449:                                     ; preds = %if.end20.i443
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !306
  tail call void @arm_heavy_mb() #8
  %323 = tail call i32 @llvm.bswap.i32(i32 %v.addr.0.i440) #8
  %regs24.i447 = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 12
  %324 = ptrtoint ptr %regs24.i447 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %regs24.i447, align 8
  %add.ptr25.i448 = getelementptr i8, ptr %325, i32 %conv.i424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i448, i32 %323) #8, !srcloc !305
  br label %vop_reg_set.exit450

vop_reg_set.exit450:                              ; preds = %do.body.i449, %if.then22.i446, %if.then.i422
  %326 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %data, align 8
  %common152 = getelementptr inbounds %struct.vop_data, ptr %327, i32 0, i32 2
  %328 = ptrtoint ptr %common152 to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %common152, align 8
  %dither_down_mode = getelementptr inbounds %struct.vop_common, ptr %329, i32 0, i32 5
  tail call fastcc void @vop_reg_set(ptr noundef %crtc, ptr noundef %dither_down_mode, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef nonnull @.str.102)
  %330 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %data, align 8
  %common154 = getelementptr inbounds %struct.vop_data, ptr %331, i32 0, i32 2
  %332 = ptrtoint ptr %common154 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %common154, align 8
  %dither_down_en = getelementptr inbounds %struct.vop_common, ptr %333, i32 0, i32 6
  tail call fastcc void @vop_reg_set(ptr noundef %crtc, ptr noundef %dither_down_en, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef nonnull @.str.103)
  br label %if.end159

if.else155:                                       ; preds = %if.end145
  %dither_down_en158 = getelementptr inbounds %struct.vop_common, ptr %303, i32 0, i32 6
  %tobool.not.i451 = icmp eq ptr %dither_down_en158, null
  br i1 %tobool.not.i451, label %if.else155.if.then.i455_crit_edge, label %lor.lhs.false.i453

if.else155.if.then.i455_crit_edge:                ; preds = %if.else155
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i455

lor.lhs.false.i453:                               ; preds = %if.else155
  %334 = ptrtoint ptr %dither_down_en158 to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %dither_down_en158, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %335)
  %tobool2.not.i452 = icmp eq i32 %335, 0
  br i1 %tobool2.not.i452, label %lor.lhs.false.i453.if.then.i455_crit_edge, label %if.end.i462

lor.lhs.false.i453.if.then.i455_crit_edge:        ; preds = %lor.lhs.false.i453
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i455

if.then.i455:                                     ; preds = %lor.lhs.false.i453.if.then.i455_crit_edge, %if.else155.if.then.i455_crit_edge
  %336 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %337, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.103) #8
  br label %if.end159

if.end.i462:                                      ; preds = %lor.lhs.false.i453
  %offset3.i456 = getelementptr inbounds %struct.vop_common, ptr %303, i32 0, i32 6, i32 1
  %338 = ptrtoint ptr %offset3.i456 to i32
  call void @__asan_load2_noabort(i32 %338)
  %339 = load i16, ptr %offset3.i456, align 4
  %conv.i457 = zext i16 %339 to i32
  %shift5.i458 = getelementptr inbounds %struct.vop_common, ptr %303, i32 0, i32 6, i32 2
  %340 = ptrtoint ptr %shift5.i458 to i32
  call void @__asan_load1_noabort(i32 %340)
  %341 = load i8, ptr %shift5.i458, align 2
  %conv6.i459 = zext i8 %341 to i32
  %write_mask.i460 = getelementptr inbounds %struct.vop_common, ptr %303, i32 0, i32 6, i32 3
  %342 = ptrtoint ptr %write_mask.i460 to i32
  call void @__asan_load1_noabort(i32 %342)
  %343 = load i8, ptr %write_mask.i460, align 1, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %343)
  %tobool7.not.i461 = icmp eq i8 %343, 0
  br i1 %tobool7.not.i461, label %if.else.i472, label %if.then8.i465

if.then8.i465:                                    ; preds = %if.end.i462
  call void @__sanitizer_cov_trace_pc() #10
  %add10.i463 = add nuw nsw i32 %conv6.i459, 16
  %shl11.i464 = shl i32 %335, %add10.i463
  br label %if.end20.i476

if.else.i472:                                     ; preds = %if.end.i462
  call void @__sanitizer_cov_trace_pc() #10
  %regsbak.i466 = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 11
  %344 = ptrtoint ptr %regsbak.i466 to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %regsbak.i466, align 4
  %shr.i467522 = lshr i32 %conv.i457, 2
  %arrayidx.i468 = getelementptr i32, ptr %345, i32 %shr.i467522
  %346 = ptrtoint ptr %arrayidx.i468 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %arrayidx.i468, align 4
  %shl12.i469 = shl i32 %335, %conv6.i459
  %neg.i470 = xor i32 %shl12.i469, -1
  %and13.i471 = and i32 %347, %neg.i470
  store i32 %and13.i471, ptr %arrayidx.i468, align 4
  br label %if.end20.i476

if.end20.i476:                                    ; preds = %if.else.i472, %if.then8.i465
  %v.addr.0.i473 = phi i32 [ %shl11.i464, %if.then8.i465 ], [ %and13.i471, %if.else.i472 ]
  %relaxed.i474 = getelementptr inbounds %struct.vop_common, ptr %303, i32 0, i32 6, i32 4
  %348 = ptrtoint ptr %relaxed.i474 to i32
  call void @__asan_load1_noabort(i32 %348)
  %349 = load i8, ptr %relaxed.i474, align 4, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %349)
  %tobool21.not.i475 = icmp eq i8 %349, 0
  br i1 %tobool21.not.i475, label %do.body.i482, label %if.then22.i479

if.then22.i479:                                   ; preds = %if.end20.i476
  call void @__sanitizer_cov_trace_pc() #10
  %350 = tail call i32 @llvm.bswap.i32(i32 %v.addr.0.i473) #8
  %regs.i477 = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 12
  %351 = ptrtoint ptr %regs.i477 to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %regs.i477, align 8
  %add.ptr.i478 = getelementptr i8, ptr %352, i32 %conv.i457
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i478, i32 %350) #8, !srcloc !305
  br label %if.end159

do.body.i482:                                     ; preds = %if.end20.i476
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !306
  tail call void @arm_heavy_mb() #8
  %353 = tail call i32 @llvm.bswap.i32(i32 %v.addr.0.i473) #8
  %regs24.i480 = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 12
  %354 = ptrtoint ptr %regs24.i480 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %regs24.i480, align 8
  %add.ptr25.i481 = getelementptr i8, ptr %355, i32 %conv.i457
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i481, i32 %353) #8, !srcloc !305
  br label %if.end159

if.end159:                                        ; preds = %do.body.i482, %if.then22.i479, %if.then.i455, %vop_reg_set.exit450
  %356 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load ptr, ptr %data, align 8
  %common161 = getelementptr inbounds %struct.vop_data, ptr %357, i32 0, i32 2
  %358 = ptrtoint ptr %common161 to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %common161, align 8
  %out_mode = getelementptr inbounds %struct.vop_common, ptr %359, i32 0, i32 11
  %360 = ptrtoint ptr %output_mode to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %output_mode, align 4
  tail call fastcc void @vop_reg_set(ptr noundef %crtc, ptr noundef %out_mode, i32 noundef 0, i32 noundef -1, i32 noundef %361, ptr noundef nonnull @.str.104)
  %362 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %data, align 8
  %modeset = getelementptr inbounds %struct.vop_data, ptr %363, i32 0, i32 4
  %364 = ptrtoint ptr %modeset to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %modeset, align 8
  %shl = shl nuw i32 %conv12, 16
  %conv165 = zext i16 %sub to i32
  %or166 = or i32 %shl, %conv165
  tail call fastcc void @vop_reg_set(ptr noundef %crtc, ptr noundef %365, i32 noundef 0, i32 noundef -1, i32 noundef %or166, ptr noundef nonnull @.str.105)
  %shl168 = shl nuw i32 %conv17, 16
  %conv169 = zext i16 %add to i32
  %or170 = or i32 %shl168, %conv169
  %366 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %data, align 8
  %modeset172 = getelementptr inbounds %struct.vop_data, ptr %367, i32 0, i32 4
  %368 = ptrtoint ptr %modeset172 to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load ptr, ptr %modeset172, align 8
  %hact_st_end = getelementptr inbounds %struct.vop_modeset, ptr %369, i32 0, i32 1
  tail call fastcc void @vop_reg_set(ptr noundef %crtc, ptr noundef %hact_st_end, i32 noundef 0, i32 noundef -1, i32 noundef %or170, ptr noundef nonnull @.str.106)
  %370 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %data, align 8
  %modeset174 = getelementptr inbounds %struct.vop_data, ptr %371, i32 0, i32 4
  %372 = ptrtoint ptr %modeset174 to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %modeset174, align 8
  %hpost_st_end = getelementptr inbounds %struct.vop_modeset, ptr %373, i32 0, i32 2
  tail call fastcc void @vop_reg_set(ptr noundef %crtc, ptr noundef %hpost_st_end, i32 noundef 0, i32 noundef -1, i32 noundef %or170, ptr noundef nonnull @.str.107)
  %374 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %data, align 8
  %modeset176 = getelementptr inbounds %struct.vop_data, ptr %375, i32 0, i32 4
  %376 = ptrtoint ptr %modeset176 to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %modeset176, align 8
  %vtotal_pw = getelementptr inbounds %struct.vop_modeset, ptr %377, i32 0, i32 3
  %shl178 = shl nuw i32 %conv27, 16
  %conv179 = zext i16 %sub24 to i32
  %or180 = or i32 %shl178, %conv179
  tail call fastcc void @vop_reg_set(ptr noundef %crtc, ptr noundef %vtotal_pw, i32 noundef 0, i32 noundef -1, i32 noundef %or180, ptr noundef nonnull @.str.108)
  %shl182 = shl nuw i32 %conv32, 16
  %conv183 = zext i16 %add34 to i32
  %or184 = or i32 %shl182, %conv183
  %378 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %data, align 8
  %modeset186 = getelementptr inbounds %struct.vop_data, ptr %379, i32 0, i32 4
  %380 = ptrtoint ptr %modeset186 to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load ptr, ptr %modeset186, align 8
  %vact_st_end = getelementptr inbounds %struct.vop_modeset, ptr %381, i32 0, i32 4
  tail call fastcc void @vop_reg_set(ptr noundef %crtc, ptr noundef %vact_st_end, i32 noundef 0, i32 noundef -1, i32 noundef %or184, ptr noundef nonnull @.str.109)
  %382 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %data, align 8
  %modeset188 = getelementptr inbounds %struct.vop_data, ptr %383, i32 0, i32 4
  %384 = ptrtoint ptr %modeset188 to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load ptr, ptr %modeset188, align 8
  %vpost_st_end = getelementptr inbounds %struct.vop_modeset, ptr %385, i32 0, i32 5
  tail call fastcc void @vop_reg_set(ptr noundef %crtc, ptr noundef %vpost_st_end, i32 noundef 0, i32 noundef -1, i32 noundef %or184, ptr noundef nonnull @.str.110)
  %386 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %data, align 8
  %intr = getelementptr inbounds %struct.vop_data, ptr %387, i32 0, i32 1
  %388 = ptrtoint ptr %intr to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load ptr, ptr %intr, align 4
  %line_flag_num = getelementptr inbounds %struct.vop_intr, ptr %389, i32 0, i32 2
  tail call fastcc void @vop_reg_set(ptr noundef %crtc, ptr noundef %line_flag_num, i32 noundef 0, i32 noundef -1, i32 noundef %conv183, ptr noundef nonnull @.str.111)
  %390 = ptrtoint ptr %dclk.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load ptr, ptr %dclk.i, align 8
  %392 = ptrtoint ptr %adjusted_mode6 to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load i32, ptr %adjusted_mode6, align 4
  %mul = mul i32 %393, 1000
  %call191 = tail call i32 @clk_set_rate(ptr noundef %391, i32 noundef %mul) #8
  %394 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %394)
  %395 = load ptr, ptr %data, align 8
  %common193 = getelementptr inbounds %struct.vop_data, ptr %395, i32 0, i32 2
  %396 = ptrtoint ptr %common193 to i32
  call void @__asan_load4_noabort(i32 %396)
  %397 = load ptr, ptr %common193, align 8
  %standby = getelementptr inbounds %struct.vop_common, ptr %397, i32 0, i32 12
  %tobool.not.i484 = icmp eq ptr %standby, null
  br i1 %tobool.not.i484, label %if.end159.if.then.i488_crit_edge, label %lor.lhs.false.i486

if.end159.if.then.i488_crit_edge:                 ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i488

lor.lhs.false.i486:                               ; preds = %if.end159
  %398 = ptrtoint ptr %standby to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load i32, ptr %standby, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %399)
  %tobool2.not.i485 = icmp eq i32 %399, 0
  br i1 %tobool2.not.i485, label %lor.lhs.false.i486.if.then.i488_crit_edge, label %if.end.i495

lor.lhs.false.i486.if.then.i488_crit_edge:        ; preds = %lor.lhs.false.i486
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i488

if.then.i488:                                     ; preds = %lor.lhs.false.i486.if.then.i488_crit_edge, %if.end159.if.then.i488_crit_edge
  %400 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %401, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.112) #8
  br label %vop_reg_set.exit516

if.end.i495:                                      ; preds = %lor.lhs.false.i486
  %offset3.i489 = getelementptr inbounds %struct.vop_common, ptr %397, i32 0, i32 12, i32 1
  %402 = ptrtoint ptr %offset3.i489 to i32
  call void @__asan_load2_noabort(i32 %402)
  %403 = load i16, ptr %offset3.i489, align 4
  %conv.i490 = zext i16 %403 to i32
  %shift5.i491 = getelementptr inbounds %struct.vop_common, ptr %397, i32 0, i32 12, i32 2
  %404 = ptrtoint ptr %shift5.i491 to i32
  call void @__asan_load1_noabort(i32 %404)
  %405 = load i8, ptr %shift5.i491, align 2
  %conv6.i492 = zext i8 %405 to i32
  %write_mask.i493 = getelementptr inbounds %struct.vop_common, ptr %397, i32 0, i32 12, i32 3
  %406 = ptrtoint ptr %write_mask.i493 to i32
  call void @__asan_load1_noabort(i32 %406)
  %407 = load i8, ptr %write_mask.i493, align 1, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %407)
  %tobool7.not.i494 = icmp eq i8 %407, 0
  br i1 %tobool7.not.i494, label %if.else.i505, label %if.then8.i498

if.then8.i498:                                    ; preds = %if.end.i495
  call void @__sanitizer_cov_trace_pc() #10
  %add10.i496 = add nuw nsw i32 %conv6.i492, 16
  %shl11.i497 = shl i32 %399, %add10.i496
  br label %if.end20.i509

if.else.i505:                                     ; preds = %if.end.i495
  call void @__sanitizer_cov_trace_pc() #10
  %regsbak.i499 = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 11
  %408 = ptrtoint ptr %regsbak.i499 to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load ptr, ptr %regsbak.i499, align 4
  %shr.i500520 = lshr i32 %conv.i490, 2
  %arrayidx.i501 = getelementptr i32, ptr %409, i32 %shr.i500520
  %410 = ptrtoint ptr %arrayidx.i501 to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load i32, ptr %arrayidx.i501, align 4
  %shl12.i502 = shl i32 %399, %conv6.i492
  %neg.i503 = xor i32 %shl12.i502, -1
  %and13.i504 = and i32 %411, %neg.i503
  store i32 %and13.i504, ptr %arrayidx.i501, align 4
  br label %if.end20.i509

if.end20.i509:                                    ; preds = %if.else.i505, %if.then8.i498
  %v.addr.0.i506 = phi i32 [ %shl11.i497, %if.then8.i498 ], [ %and13.i504, %if.else.i505 ]
  %relaxed.i507 = getelementptr inbounds %struct.vop_common, ptr %397, i32 0, i32 12, i32 4
  %412 = ptrtoint ptr %relaxed.i507 to i32
  call void @__asan_load1_noabort(i32 %412)
  %413 = load i8, ptr %relaxed.i507, align 4, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %413)
  %tobool21.not.i508 = icmp eq i8 %413, 0
  br i1 %tobool21.not.i508, label %do.body.i515, label %if.then22.i512

if.then22.i512:                                   ; preds = %if.end20.i509
  call void @__sanitizer_cov_trace_pc() #10
  %414 = tail call i32 @llvm.bswap.i32(i32 %v.addr.0.i506) #8
  %regs.i510 = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 12
  %415 = ptrtoint ptr %regs.i510 to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %regs.i510, align 8
  %add.ptr.i511 = getelementptr i8, ptr %416, i32 %conv.i490
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i511, i32 %414) #8, !srcloc !305
  br label %vop_reg_set.exit516

do.body.i515:                                     ; preds = %if.end20.i509
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !306
  tail call void @arm_heavy_mb() #8
  %417 = tail call i32 @llvm.bswap.i32(i32 %v.addr.0.i506) #8
  %regs24.i513 = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 12
  %418 = ptrtoint ptr %regs24.i513 to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %regs24.i513, align 8
  %add.ptr25.i514 = getelementptr i8, ptr %419, i32 %conv.i490
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i514, i32 %417) #8, !srcloc !305
  br label %vop_reg_set.exit516

vop_reg_set.exit516:                              ; preds = %do.body.i515, %if.then22.i512, %if.then.i488
  tail call void @mutex_unlock(ptr noundef %vop_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %vop_reg_set.exit516, %if.then69, %rockchip_drm_set_win_enabled.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vop_crtc_atomic_disable(ptr noundef %crtc, ptr nocapture noundef readnone %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %event = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 6
  %0 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %event, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !307

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 701, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %state21 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %2 = ptrtoint ptr %state21 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state21, align 4
  %self_refresh_active = getelementptr inbounds %struct.drm_crtc_state, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %self_refresh_active to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %self_refresh_active, align 2, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool22.not = icmp eq i8 %5, 0
  br i1 %tobool22.not, label %if.end.if.end24_crit_edge, label %if.then23

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then23:                                        ; preds = %if.end
  %reg_lock.i = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %reg_lock.i) #8
  %data.i = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 10
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i, align 8
  %win_size15.i = getelementptr inbounds %struct.vop_data, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %win_size15.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %win_size15.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp16.not.i = icmp eq i32 %9, 0
  br i1 %cmp16.not.i, label %if.then23.rockchip_drm_set_win_enabled.exit_crit_edge, label %for.body.i.preheader

if.then23.rockchip_drm_set_win_enabled.exit_crit_edge: ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #10
  br label %rockchip_drm_set_win_enabled.exit

for.body.i.preheader:                             ; preds = %if.then23
  %regsbak.i = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 11
  %regs.i = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 12
  %dev.i = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %vop_reg_set.exit.for.body.i_crit_edge, %for.body.i.preheader
  %i.017.i = phi i32 [ %inc.i, %vop_reg_set.exit.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %data2.i = getelementptr %struct.vop, ptr %crtc, i32 0, i32 24, i32 %i.017.i, i32 1
  %10 = ptrtoint ptr %data2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data2.i, align 8
  %phy.i = getelementptr inbounds %struct.vop_win_data, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phy.i, align 4
  %enable.i = getelementptr inbounds %struct.vop_win_phy, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %11, align 4
  %tobool.not.i134 = icmp eq ptr %enable.i, null
  br i1 %tobool.not.i134, label %for.body.i.if.then.i_crit_edge, label %lor.lhs.false.i

for.body.i.if.then.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %16 = ptrtoint ptr %enable.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %enable.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool2.not.i = icmp eq i32 %17, 0
  br i1 %tobool2.not.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %if.end.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %for.body.i.if.then.i_crit_edge
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %19, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4) #8
  br label %vop_reg_set.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %offset3.i = getelementptr inbounds %struct.vop_win_phy, ptr %13, i32 0, i32 4, i32 1
  %20 = ptrtoint ptr %offset3.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %offset3.i, align 4
  %conv.i = zext i16 %21 to i32
  %add.i = add i32 %15, %conv.i
  %shift5.i = getelementptr inbounds %struct.vop_win_phy, ptr %13, i32 0, i32 4, i32 2
  %22 = ptrtoint ptr %shift5.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %shift5.i, align 2
  %conv6.i = zext i8 %23 to i32
  %write_mask.i = getelementptr inbounds %struct.vop_win_phy, ptr %13, i32 0, i32 4, i32 3
  %24 = ptrtoint ptr %write_mask.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %write_mask.i, align 1, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool7.not.i = icmp eq i8 %25, 0
  br i1 %tobool7.not.i, label %if.else.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %add10.i = add nuw nsw i32 %conv6.i, 16
  %shl11.i = shl i32 %17, %add10.i
  br label %if.end20.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %regsbak.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regsbak.i, align 4
  %shr.i = ashr i32 %add.i, 2
  %arrayidx.i135 = getelementptr i32, ptr %27, i32 %shr.i
  %28 = ptrtoint ptr %arrayidx.i135 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i135, align 4
  %shl12.i = shl i32 %17, %conv6.i
  %neg.i = xor i32 %shl12.i, -1
  %and13.i = and i32 %29, %neg.i
  store i32 %and13.i, ptr %arrayidx.i135, align 4
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.else.i, %if.then8.i
  %v.addr.0.i = phi i32 [ %shl11.i, %if.then8.i ], [ %and13.i, %if.else.i ]
  %relaxed.i = getelementptr inbounds %struct.vop_win_phy, ptr %13, i32 0, i32 4, i32 4
  %30 = ptrtoint ptr %relaxed.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %relaxed.i, align 4, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool21.not.i = icmp eq i8 %31, 0
  br i1 %tobool21.not.i, label %do.body.i, label %if.then22.i

if.then22.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  %32 = tail call i32 @llvm.bswap.i32(i32 %v.addr.0.i) #8
  %33 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %34, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %32) #8, !srcloc !305
  br label %vop_reg_set.exit

do.body.i:                                        ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !306
  tail call void @arm_heavy_mb() #8
  %35 = tail call i32 @llvm.bswap.i32(i32 %v.addr.0.i) #8
  %36 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs.i, align 8
  %add.ptr25.i = getelementptr i8, ptr %37, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i, i32 %35) #8, !srcloc !305
  br label %vop_reg_set.exit

vop_reg_set.exit:                                 ; preds = %do.body.i, %if.then22.i, %if.then.i
  %inc.i = add nuw i32 %i.017.i, 1
  %38 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data.i, align 8
  %win_size.i = getelementptr inbounds %struct.vop_data, ptr %39, i32 0, i32 9
  %40 = ptrtoint ptr %win_size.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %win_size.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %41
  br i1 %cmp.i, label %vop_reg_set.exit.for.body.i_crit_edge, label %vop_reg_set.exit.rockchip_drm_set_win_enabled.exit_crit_edge

vop_reg_set.exit.rockchip_drm_set_win_enabled.exit_crit_edge: ; preds = %vop_reg_set.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %rockchip_drm_set_win_enabled.exit

vop_reg_set.exit.for.body.i_crit_edge:            ; preds = %vop_reg_set.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

rockchip_drm_set_win_enabled.exit:                ; preds = %vop_reg_set.exit.rockchip_drm_set_win_enabled.exit_crit_edge, %if.then23.rockchip_drm_set_win_enabled.exit_crit_edge
  %.lcssa.i = phi ptr [ %7, %if.then23.rockchip_drm_set_win_enabled.exit_crit_edge ], [ %39, %vop_reg_set.exit.rockchip_drm_set_win_enabled.exit_crit_edge ]
  %common.i.i = getelementptr inbounds %struct.vop_data, ptr %.lcssa.i, i32 0, i32 2
  %42 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %common.i.i, align 8
  tail call fastcc void @vop_reg_set(ptr noundef %crtc, ptr noundef %43, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef nonnull @.str.73) #8
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock.i) #8
  br label %if.end24

if.end24:                                         ; preds = %rockchip_drm_set_win_enabled.exit, %if.end.if.end24_crit_edge
  %vop_lock = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %vop_lock, i32 noundef 0) #8
  tail call void @drm_crtc_vblank_off(ptr noundef %crtc) #8
  %44 = ptrtoint ptr %state21 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %state21, align 4
  %self_refresh_active26 = getelementptr inbounds %struct.drm_crtc_state, ptr %45, i32 0, i32 16
  %46 = ptrtoint ptr %self_refresh_active26 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %self_refresh_active26, align 2, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool27.not = icmp eq i8 %47, 0
  br i1 %tobool27.not, label %if.end29, label %if.end24.out_crit_edge

if.end24.out_crit_edge:                           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end29:                                         ; preds = %if.end24
  %dsp_hold_completion = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 4
  %48 = ptrtoint ptr %dsp_hold_completion to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %dsp_hold_completion, align 4
  %is_enabled.i = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 3
  %49 = ptrtoint ptr %is_enabled.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %is_enabled.i, align 8, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not.i = icmp eq i8 %50, 0
  br i1 %tobool.not.i, label %do.end.i, label %do.body25.i, !prof !304

do.end.i:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 456, i32 noundef 9, ptr noundef null) #8
  br label %vop_dsp_hold_valid_irq_enable.exit

do.body25.i:                                      ; preds = %if.end29
  %irq_lock.i = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 16
  %call27.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock.i) #8
  %data.i109 = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 10
  %51 = ptrtoint ptr %data.i109 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %data.i109, align 8
  %intr.i = getelementptr inbounds %struct.vop_data, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %intr.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %intr.i, align 4
  %nintrs.i = getelementptr inbounds %struct.vop_intr, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %nintrs.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %nintrs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp33101.not.i = icmp eq i32 %56, 0
  br i1 %cmp33101.not.i, label %do.body25.i.for.end.i_crit_edge, label %for.body.lr.ph.i110

do.body25.i.for.end.i_crit_edge:                  ; preds = %do.body25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.lr.ph.i110:                              ; preds = %do.body25.i
  %57 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %54, align 4
  br label %for.body.i112

for.body.i112:                                    ; preds = %for.body.i112.for.body.i112_crit_edge, %for.body.lr.ph.i110
  %mask.0104.i = phi i32 [ 0, %for.body.lr.ph.i110 ], [ %mask.1.i, %for.body.i112.for.body.i112_crit_edge ]
  %reg.0103.i = phi i32 [ 0, %for.body.lr.ph.i110 ], [ %reg.1.i, %for.body.i112.for.body.i112_crit_edge ]
  %i.0102.i = phi i32 [ 0, %for.body.lr.ph.i110 ], [ %inc.i111, %for.body.i112.for.body.i112_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %58, i32 %i.0102.i
  %59 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool37.not.i = icmp eq i32 %and.i, 0
  %shl.i = shl nuw i32 1, %i.0102.i
  %or.i = select i1 %tobool37.not.i, i32 0, i32 %shl.i
  %reg.1.i = or i32 %or.i, %reg.0103.i
  %mask.1.i = or i32 %or.i, %mask.0104.i
  %inc.i111 = add nuw i32 %i.0102.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i111, %56
  br i1 %exitcond.not.i, label %for.body.i112.for.end.i_crit_edge, label %for.body.i112.for.body.i112_crit_edge

for.body.i112.for.body.i112_crit_edge:            ; preds = %for.body.i112
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i112

for.body.i112.for.end.i_crit_edge:                ; preds = %for.body.i112
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i112.for.end.i_crit_edge, %do.body25.i.for.end.i_crit_edge
  %reg.0.lcssa.i = phi i32 [ 0, %do.body25.i.for.end.i_crit_edge ], [ %reg.1.i, %for.body.i112.for.end.i_crit_edge ]
  %mask.0.lcssa.i = phi i32 [ 0, %do.body25.i.for.end.i_crit_edge ], [ %mask.1.i, %for.body.i112.for.end.i_crit_edge ]
  %clear.i = getelementptr inbounds %struct.vop_intr, ptr %54, i32 0, i32 4
  tail call fastcc void @vop_reg_set(ptr noundef %crtc, ptr noundef %clear.i, i32 noundef 0, i32 noundef %mask.0.lcssa.i, i32 noundef %reg.0.lcssa.i, ptr noundef nonnull @.str.3) #8
  %61 = ptrtoint ptr %data.i109 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %data.i109, align 8
  %intr52.i = getelementptr inbounds %struct.vop_data, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %intr52.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %intr52.i, align 4
  %nintrs53.i = getelementptr inbounds %struct.vop_intr, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %nintrs53.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %nintrs53.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp54107.not.i = icmp eq i32 %66, 0
  br i1 %cmp54107.not.i, label %for.end.i.for.end71.i_crit_edge, label %for.body56.lr.ph.i

for.end.i.for.end71.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end71.i

for.body56.lr.ph.i:                               ; preds = %for.end.i
  %67 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %64, align 4
  br label %for.body56.i

for.body56.i:                                     ; preds = %for.body56.i.for.body56.i_crit_edge, %for.body56.lr.ph.i
  %mask49.0110.i = phi i32 [ 0, %for.body56.lr.ph.i ], [ %mask49.1.i, %for.body56.i.for.body56.i_crit_edge ]
  %reg48.0109.i = phi i32 [ 0, %for.body56.lr.ph.i ], [ %reg48.1.i, %for.body56.i.for.body56.i_crit_edge ]
  %i47.0108.i = phi i32 [ 0, %for.body56.lr.ph.i ], [ %inc70.i, %for.body56.i.for.body56.i_crit_edge ]
  %arrayidx60.i = getelementptr i32, ptr %68, i32 %i47.0108.i
  %69 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx60.i, align 4
  %and61.i = and i32 %70, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61.i)
  %tobool62.not.i = icmp eq i32 %and61.i, 0
  %shl64.i = shl nuw i32 1, %i47.0108.i
  %or65.i = select i1 %tobool62.not.i, i32 0, i32 %shl64.i
  %reg48.1.i = or i32 %or65.i, %reg48.0109.i
  %mask49.1.i = or i32 %or65.i, %mask49.0110.i
  %inc70.i = add nuw i32 %i47.0108.i, 1
  %exitcond114.not.i = icmp eq i32 %inc70.i, %66
  br i1 %exitcond114.not.i, label %for.body56.i.for.end71.i_crit_edge, label %for.body56.i.for.body56.i_crit_edge

for.body56.i.for.body56.i_crit_edge:              ; preds = %for.body56.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body56.i

for.body56.i.for.end71.i_crit_edge:               ; preds = %for.body56.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end71.i

for.end71.i:                                      ; preds = %for.body56.i.for.end71.i_crit_edge, %for.end.i.for.end71.i_crit_edge
  %reg48.0.lcssa.i = phi i32 [ 0, %for.end.i.for.end71.i_crit_edge ], [ %reg48.1.i, %for.body56.i.for.end71.i_crit_edge ]
  %mask49.0.lcssa.i = phi i32 [ 0, %for.end.i.for.end71.i_crit_edge ], [ %mask49.1.i, %for.body56.i.for.end71.i_crit_edge ]
  %enable.i113 = getelementptr inbounds %struct.vop_intr, ptr %64, i32 0, i32 3
  tail call fastcc void @vop_reg_set(ptr noundef %crtc, ptr noundef %enable.i113, i32 noundef 0, i32 noundef %mask49.0.lcssa.i, i32 noundef %reg48.0.lcssa.i, ptr noundef nonnull @.str.4) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock.i, i32 noundef %call27.i) #8
  br label %vop_dsp_hold_valid_irq_enable.exit

vop_dsp_hold_valid_irq_enable.exit:               ; preds = %for.end71.i, %do.end.i
  %reg_lock = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #8
  %data = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 10
  %71 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %data, align 8
  %common = getelementptr inbounds %struct.vop_data, ptr %72, i32 0, i32 2
  %73 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %common, align 8
  %standby = getelementptr inbounds %struct.vop_common, ptr %74, i32 0, i32 12
  tail call fastcc void @vop_reg_set(ptr noundef %crtc, ptr noundef %standby, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef nonnull @.str.112)
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #8
  %call32 = tail call i32 @wait_for_completion_timeout(ptr noundef %dsp_hold_completion, i32 noundef 20) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %do.end47, label %vop_dsp_hold_valid_irq_enable.exit.if.end61_crit_edge

vop_dsp_hold_valid_irq_enable.exit.if.end61_crit_edge: ; preds = %vop_dsp_hold_valid_irq_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

do.end47:                                         ; preds = %vop_dsp_hold_valid_irq_enable.exit
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 3
  %75 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %name, align 8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 731, i32 noundef 9, ptr noundef nonnull @.str.115, ptr noundef %76) #8
  br label %if.end61

if.end61:                                         ; preds = %do.end47, %vop_dsp_hold_valid_irq_enable.exit.if.end61_crit_edge
  %77 = ptrtoint ptr %is_enabled.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %is_enabled.i, align 8, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool.not.i115 = icmp eq i8 %78, 0
  br i1 %tobool.not.i115, label %do.end.i116, label %do.body25.i122, !prof !304

do.end.i116:                                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 471, i32 noundef 9, ptr noundef null) #8
  br label %vop_dsp_hold_valid_irq_disable.exit

do.body25.i122:                                   ; preds = %if.end61
  %irq_lock.i117 = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 16
  %call27.i118 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock.i117) #8
  %79 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %data, align 8
  %intr.i120 = getelementptr inbounds %struct.vop_data, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %intr.i120 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %intr.i120, align 4
  %nintrs.i121 = getelementptr inbounds %struct.vop_intr, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %nintrs.i121 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %nintrs.i121, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp3361.not.i = icmp eq i32 %84, 0
  br i1 %cmp3361.not.i, label %do.body25.i122.for.end.i133_crit_edge, label %for.body.lr.ph.i123

do.body25.i122.for.end.i133_crit_edge:            ; preds = %do.body25.i122
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i133

for.body.lr.ph.i123:                              ; preds = %do.body25.i122
  %85 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %82, align 4
  br label %for.body.i130

for.body.i130:                                    ; preds = %for.body.i130.for.body.i130_crit_edge, %for.body.lr.ph.i123
  %mask.063.i = phi i32 [ 0, %for.body.lr.ph.i123 ], [ %mask.1.i127, %for.body.i130.for.body.i130_crit_edge ]
  %i.062.i = phi i32 [ 0, %for.body.lr.ph.i123 ], [ %inc.i128, %for.body.i130.for.body.i130_crit_edge ]
  %arrayidx.i124 = getelementptr i32, ptr %86, i32 %i.062.i
  %87 = ptrtoint ptr %arrayidx.i124 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx.i124, align 4
  %and.i125 = and i32 %88, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i125)
  %tobool37.not.i126 = icmp eq i32 %and.i125, 0
  %shl39.i = shl nuw i32 1, %i.062.i
  %or40.i = select i1 %tobool37.not.i126, i32 0, i32 %shl39.i
  %mask.1.i127 = or i32 %or40.i, %mask.063.i
  %inc.i128 = add nuw i32 %i.062.i, 1
  %exitcond.not.i129 = icmp eq i32 %inc.i128, %84
  br i1 %exitcond.not.i129, label %for.body.i130.for.end.i133_crit_edge, label %for.body.i130.for.body.i130_crit_edge

for.body.i130.for.body.i130_crit_edge:            ; preds = %for.body.i130
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i130

for.body.i130.for.end.i133_crit_edge:             ; preds = %for.body.i130
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i133

for.end.i133:                                     ; preds = %for.body.i130.for.end.i133_crit_edge, %do.body25.i122.for.end.i133_crit_edge
  %mask.0.lcssa.i131 = phi i32 [ 0, %do.body25.i122.for.end.i133_crit_edge ], [ %mask.1.i127, %for.body.i130.for.end.i133_crit_edge ]
  %enable.i132 = getelementptr inbounds %struct.vop_intr, ptr %82, i32 0, i32 3
  %89 = ptrtoint ptr %enable.i132 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %enable.i132, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool2.not.i.i = icmp eq i32 %90, 0
  br i1 %tobool2.not.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %for.end.i133
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 1
  %91 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev.i.i, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %92, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4) #8
  br label %vop_reg_set.exit.i

if.end.i.i:                                       ; preds = %for.end.i133
  %offset3.i.i = getelementptr inbounds %struct.vop_intr, ptr %82, i32 0, i32 3, i32 1
  %93 = ptrtoint ptr %offset3.i.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %offset3.i.i, align 4
  %conv.i.i = zext i16 %94 to i32
  %and.i.i = and i32 %90, %mask.0.lcssa.i131
  %shift5.i.i = getelementptr inbounds %struct.vop_intr, ptr %82, i32 0, i32 3, i32 2
  %95 = ptrtoint ptr %shift5.i.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %shift5.i.i, align 2
  %conv6.i.i = zext i8 %96 to i32
  %write_mask.i.i = getelementptr inbounds %struct.vop_intr, ptr %82, i32 0, i32 3, i32 3
  %97 = ptrtoint ptr %write_mask.i.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %write_mask.i.i, align 1, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool7.not.i.i = icmp eq i8 %98, 0
  br i1 %tobool7.not.i.i, label %if.else.i.i, label %if.then8.i.i

if.then8.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add10.i.i = add nuw nsw i32 %conv6.i.i, 16
  %shl11.i.i = shl i32 %and.i.i, %add10.i.i
  br label %if.end20.i.i

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %regsbak.i.i = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 11
  %99 = ptrtoint ptr %regsbak.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %regsbak.i.i, align 4
  %shr.i60.i = lshr i32 %conv.i.i, 2
  %arrayidx.i.i = getelementptr i32, ptr %100, i32 %shr.i60.i
  %101 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx.i.i, align 4
  %shl12.i.i = shl i32 %and.i.i, %conv6.i.i
  %neg.i.i = xor i32 %shl12.i.i, -1
  %and13.i.i = and i32 %102, %neg.i.i
  store i32 %and13.i.i, ptr %arrayidx.i.i, align 4
  br label %if.end20.i.i

if.end20.i.i:                                     ; preds = %if.else.i.i, %if.then8.i.i
  %v.addr.0.i.i = phi i32 [ %shl11.i.i, %if.then8.i.i ], [ %and13.i.i, %if.else.i.i ]
  %relaxed.i.i = getelementptr inbounds %struct.vop_intr, ptr %82, i32 0, i32 3, i32 4
  %103 = ptrtoint ptr %relaxed.i.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %relaxed.i.i, align 4, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool21.not.i.i = icmp eq i8 %104, 0
  br i1 %tobool21.not.i.i, label %do.body.i.i, label %if.then22.i.i

if.then22.i.i:                                    ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %105 = tail call i32 @llvm.bswap.i32(i32 %v.addr.0.i.i) #8
  %regs.i.i = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 12
  %106 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %regs.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %107, i32 %conv.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %105) #8, !srcloc !305
  br label %vop_reg_set.exit.i

do.body.i.i:                                      ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !306
  tail call void @arm_heavy_mb() #8
  %108 = tail call i32 @llvm.bswap.i32(i32 %v.addr.0.i.i) #8
  %regs24.i.i = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 12
  %109 = ptrtoint ptr %regs24.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %regs24.i.i, align 8
  %add.ptr25.i.i = getelementptr i8, ptr %110, i32 %conv.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i.i, i32 %108) #8, !srcloc !305
  br label %vop_reg_set.exit.i

vop_reg_set.exit.i:                               ; preds = %do.body.i.i, %if.then22.i.i, %if.then.i.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock.i117, i32 noundef %call27.i118) #8
  br label %vop_dsp_hold_valid_irq_disable.exit

vop_dsp_hold_valid_irq_disable.exit:              ; preds = %vop_reg_set.exit.i, %do.end.i116
  %111 = ptrtoint ptr %is_enabled.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 0, ptr %is_enabled.i, align 8
  %drm_dev = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 2
  %112 = ptrtoint ptr %drm_dev to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %drm_dev, align 4
  %dev = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 1
  %114 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %dev, align 8
  tail call void @rockchip_drm_dma_detach_device(ptr noundef %113, ptr noundef %115) #8
  %dclk = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 20
  %116 = ptrtoint ptr %dclk to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dclk, align 8
  tail call void @clk_disable(ptr noundef %117) #8
  %aclk.i = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 21
  %118 = ptrtoint ptr %aclk.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %aclk.i, align 4
  tail call void @clk_disable(ptr noundef %119) #8
  %hclk.i = getelementptr inbounds %struct.vop, ptr %crtc, i32 0, i32 19
  %120 = ptrtoint ptr %hclk.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %hclk.i, align 4
  tail call void @clk_disable(ptr noundef %121) #8
  %122 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %dev, align 8
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %123, i32 noundef 5) #8
  br label %out

out:                                              ; preds = %vop_dsp_hold_valid_irq_disable.exit, %if.end24.out_crit_edge
  tail call void @mutex_unlock(ptr noundef %vop_lock) #8
  %124 = ptrtoint ptr %state21 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %state21, align 4
  %event66 = getelementptr inbounds %struct.drm_crtc_state, ptr %125, i32 0, i32 18
  %126 = ptrtoint ptr %event66 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %event66, align 4
  %tobool67.not = icmp eq ptr %127, null
  br i1 %tobool67.not, label %out.if.end78_crit_edge, label %land.lhs.true

out.if.end78_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78

land.lhs.true:                                    ; preds = %out
  %active = getelementptr inbounds %struct.drm_crtc_state, ptr %125, i32 0, i32 2
  %128 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %active, align 1, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %tobool69.not = icmp eq i8 %129, 0
  br i1 %tobool69.not, label %if.then70, label %land.lhs.true.if.end78_crit_edge

land.lhs.true.if.end78_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78

if.then70:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %130 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %crtc, align 8
  %event_lock = getelementptr inbounds %struct.drm_device, ptr %131, i32 0, i32 28
  tail call void @_raw_spin_lock_irq(ptr noundef %event_lock) #8
  %132 = ptrtoint ptr %state21 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %state21, align 4
  %event73 = getelementptr inbounds %struct.drm_crtc_state, ptr %133, i32 0, i32 18
  %134 = ptrtoint ptr %event73 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %event73, align 4
  tail call void @drm_crtc_send_vblank_event(ptr noundef %crtc, ptr noundef %135) #8
  %136 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %crtc, align 8
  %event_lock75 = getelementptr inbounds %struct.drm_device, ptr %137, i32 0, i32 28
  tail call void @_raw_spin_unlock_irq(ptr noundef %event_lock75) #8
  %138 = ptrtoint ptr %state21 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %state21, align 4
  %event77 = getelementptr inbounds %struct.drm_crtc_state, ptr %139, i32 0, i32 18
  %140 = ptrtoint ptr %event77 to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr null, ptr %event77, align 4
  br label %if.end78

if.end78:                                         ; preds = %if.then70, %land.lhs.true.if.end78_crit_edge, %out.if.end78_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_plane_state(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vop_crtc_gamma_set(ptr noundef %vop, ptr nocapture noundef readonly %crtc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 22
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state1, align 4
  %lut_regs = getelementptr inbounds %struct.vop, ptr %vop, i32 0, i32 13
  %2 = ptrtoint ptr %lut_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lut_regs, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %reg_lock = getelementptr inbounds %struct.vop, ptr %vop, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #8
  %data = getelementptr inbounds %struct.vop, ptr %vop, i32 0, i32 10
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 8
  %common = getelementptr inbounds %struct.vop_data, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %common, align 8
  %dsp_lut_en = getelementptr inbounds %struct.vop_common, ptr %7, i32 0, i32 8
  %tobool.not.i = icmp eq ptr %dsp_lut_en, null
  br i1 %tobool.not.i, label %if.end.if.then.i_crit_edge, label %lor.lhs.false.i

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end
  %8 = ptrtoint ptr %dsp_lut_en to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dsp_lut_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool2.not.i = icmp eq i32 %9, 0
  br i1 %tobool2.not.i, label %lor.lhs.false.i.if.then.i_crit_edge, label %if.end.i

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.end.if.then.i_crit_edge
  %dev.i = getelementptr inbounds %struct.vop, ptr %vop, i32 0, i32 1
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %11, i32 noundef 1, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.78) #8
  br label %vop_reg_set.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %offset3.i = getelementptr inbounds %struct.vop_common, ptr %7, i32 0, i32 8, i32 1
  %12 = ptrtoint ptr %offset3.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %offset3.i, align 4
  %conv.i = zext i16 %13 to i32
  %shift5.i = getelementptr inbounds %struct.vop_common, ptr %7, i32 0, i32 8, i32 2
  %14 = ptrtoint ptr %shift5.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %shift5.i, align 2
  %conv6.i = zext i8 %15 to i32
  %write_mask.i = getelementptr inbounds %struct.vop_common, ptr %7, i32 0, i32 8, i32 3
  %16 = ptrtoint ptr %write_mask.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %write_mask.i, align 1, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool7.not.i = icmp eq i8 %17, 0
  br i1 %tobool7.not.i, label %if.else.i, label %if.then8.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %add10.i = add nuw nsw i32 %conv6.i, 16
  %shl11.i = shl i32 %9, %add10.i
  br label %if.end20.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %regsbak.i = getelementptr inbounds %struct.vop, ptr %vop, i32 0, i32 11
  %18 = ptrtoint ptr %regsbak.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regsbak.i, align 4
  %shr.i24 = lshr i32 %conv.i, 2
  %arrayidx.i = getelementptr i32, ptr %19, i32 %shr.i24
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i, align 4
  %shl12.i = shl i32 %9, %conv6.i
  %neg.i = xor i32 %shl12.i, -1
  %and13.i = and i32 %21, %neg.i
  store i32 %and13.i, ptr %arrayidx.i, align 4
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.else.i, %if.then8.i
  %v.addr.0.i = phi i32 [ %shl11.i, %if.then8.i ], [ %and13.i, %if.else.i ]
  %relaxed.i = getelementptr inbounds %struct.vop_common, ptr %7, i32 0, i32 8, i32 4
  %22 = ptrtoint ptr %relaxed.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %relaxed.i, align 4, !range !301
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool21.not.i = icmp eq i8 %23, 0
  br i1 %tobool21.not.i, label %do.body.i, label %if.then22.i

if.then22.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  %24 = tail call i32 @llvm.bswap.i32(i32 %v.addr.0.i) #8
  %regs.i = getelementptr inbounds %struct.vop, ptr %vop, i32 0, i32 12
  %25 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %26, i32 %conv.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %24) #8, !srcloc !305
  br label %vop_reg_set.exit

do.body.i:                                        ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !306
  tail call void @arm_heavy_mb() #8
  %27 = tail call i32 @llvm.bswap.i32(i32 %v.addr.0.i) #8
  %regs24.i = getelementptr inbounds %struct.vop, ptr %vop, i32 0, i32 12
  %28 = ptrtoint ptr %regs24.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs24.i, align 8
  %add.ptr25.i = getelementptr i8, ptr %29, i32 %conv.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i, i32 %27) #8, !srcloc !305
  br label %vop_reg_set.exit

vop_reg_set.exit:                                 ; preds = %do.body.i, %if.then22.i, %if.then.i
  %30 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data, align 8
  %common.i = getelementptr inbounds %struct.vop_data, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %common.i, align 8
  tail call fastcc void @vop_reg_set(ptr noundef %vop, ptr noundef %33, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef nonnull @.str.73) #8
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #8
  %call = tail call i64 @ktime_get() #8
  %add.i = add i64 %call, 30000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 1245) #8
  %regs.i.i.i = getelementptr inbounds %struct.vop, ptr %vop, i32 0, i32 12
  %34 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data, align 8
  %common.i226 = getelementptr inbounds %struct.vop_data, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %common.i226 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %common.i226, align 8
  %dsp_lut_en.i27 = getelementptr inbounds %struct.vop_common, ptr %37, i32 0, i32 8
  %offset.i.i28 = getelementptr inbounds %struct.vop_common, ptr %37, i32 0, i32 8, i32 1
  %38 = ptrtoint ptr %offset.i.i28 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %offset.i.i28, align 4
  %conv.i.i29 = zext i16 %39 to i32
  %40 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i.i.i30 = getelementptr i8, ptr %41, i32 %conv.i.i29
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i30) #8, !srcloc !302
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !303
  %shift.i.i31 = getelementptr inbounds %struct.vop_common, ptr %37, i32 0, i32 8, i32 2
  %44 = ptrtoint ptr %shift.i.i31 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %shift.i.i31, align 2
  %conv1.i.i32 = zext i8 %45 to i32
  %shr.i.i33 = lshr i32 %43, %conv1.i.i32
  %46 = ptrtoint ptr %dsp_lut_en.i27 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %dsp_lut_en.i27, align 4
  %and.i.i34 = and i32 %shr.i.i33, %47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i34)
  %tobool.i.not35 = icmp eq i32 %and.i.i34, 0
  br i1 %tobool.i.not35, label %vop_reg_set.exit.if.end31_crit_edge, label %vop_reg_set.exit.land.lhs.true_crit_edge

vop_reg_set.exit.land.lhs.true_crit_edge:         ; preds = %vop_reg_set.exit
  br label %land.lhs.true

vop_reg_set.exit.if.end31_crit_edge:              ; preds = %vop_reg_set.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

land.lhs.true:                                    ; preds = %if.then26.land.lhs.true_crit_edge, %vop_reg_set.exit.land.lhs.true_crit_edge
  %call17 = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call17, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call17, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then26

if.then26:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 2, i32 noundef 5, i32 noundef 2) #8
  %48 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data, align 8
  %common.i2 = getelementptr inbounds %struct.vop_data, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %common.i2 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %common.i2, align 8
  %dsp_lut_en.i = getelementptr inbounds %struct.vop_common, ptr %51, i32 0, i32 8
  %offset.i.i = getelementptr inbounds %struct.vop_common, ptr %51, i32 0, i32 8, i32 1
  %52 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %offset.i.i, align 4
  %conv.i.i = zext i16 %53 to i32
  %54 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %55, i32 %conv.i.i
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #8, !srcloc !302
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !303
  %shift.i.i = getelementptr inbounds %struct.vop_common, ptr %51, i32 0, i32 8, i32 2
  %58 = ptrtoint ptr %shift.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %shift.i.i, align 2
  %conv1.i.i = zext i8 %59 to i32
  %shr.i.i = lshr i32 %57, %conv1.i.i
  %60 = ptrtoint ptr %dsp_lut_en.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %dsp_lut_en.i, align 4
  %and.i.i = and i32 %shr.i.i, %61
  %tobool.i.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not, label %if.then26.if.end31_crit_edge, label %if.then26.land.lhs.true_crit_edge

if.then26.land.lhs.true_crit_edge:                ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

if.then26.if.end31_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

for.end:                                          ; preds = %land.lhs.true
  %62 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %data, align 8
  %common.i4 = getelementptr inbounds %struct.vop_data, ptr %63, i32 0, i32 2
  %64 = ptrtoint ptr %common.i4 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %common.i4, align 8
  %dsp_lut_en.i5 = getelementptr inbounds %struct.vop_common, ptr %65, i32 0, i32 8
  %offset.i.i6 = getelementptr inbounds %struct.vop_common, ptr %65, i32 0, i32 8, i32 1
  %66 = ptrtoint ptr %offset.i.i6 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %offset.i.i6, align 4
  %conv.i.i7 = zext i16 %67 to i32
  %68 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regs.i.i.i, align 8
  %add.ptr.i.i.i9 = getelementptr i8, ptr %69, i32 %conv.i.i7
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i9) #8, !srcloc !302
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !303
  %shift.i.i10 = getelementptr inbounds %struct.vop_common, ptr %65, i32 0, i32 8, i32 2
  %72 = ptrtoint ptr %shift.i.i10 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %shift.i.i10, align 2
  %conv1.i.i11 = zext i8 %73 to i32
  %shr.i.i12 = lshr i32 %71, %conv1.i.i11
  %74 = ptrtoint ptr %dsp_lut_en.i5 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %dsp_lut_en.i5, align 4
  %and.i.i13 = and i32 %shr.i.i12, %75
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i13)
  %tobool.i14.not = icmp eq i32 %and.i.i13, 0
  br i1 %tobool.i14.not, label %for.end.if.end31_crit_edge, label %if.then30

for.end.if.end31_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end31

if.then30:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.vop, ptr %vop, i32 0, i32 1
  %76 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %77, ptr noundef nonnull @.str, ptr noundef nonnull @.str.79) #8
  br label %cleanup

if.end31:                                         ; preds = %for.end.if.end31_crit_edge, %if.then26.if.end31_crit_edge, %vop_reg_set.exit.if.end31_crit_edge
  %gamma_lut = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 12
  %78 = ptrtoint ptr %gamma_lut to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %gamma_lut, align 4
  %tobool32.not = icmp eq ptr %79, null
  br i1 %tobool32.not, label %if.end31.cleanup_crit_edge, label %if.end34

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end34:                                         ; preds = %if.end31
  tail call void @_raw_spin_lock(ptr noundef %reg_lock) #8
  %80 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %state1, align 4
  %gamma_lut.i = getelementptr inbounds %struct.drm_crtc_state, ptr %81, i32 0, i32 12
  %82 = ptrtoint ptr %gamma_lut.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %gamma_lut.i, align 4
  %data.i15 = getelementptr inbounds %struct.drm_property_blob, ptr %83, i32 0, i32 5
  %84 = ptrtoint ptr %data.i15 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %data.i15, align 4
  %gamma_size.i = getelementptr inbounds %struct.drm_crtc, ptr %crtc, i32 0, i32 17
  %86 = ptrtoint ptr %gamma_size.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %gamma_size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %cmp21.not.i = icmp eq i32 %87, 0
  br i1 %cmp21.not.i, label %if.end34.vop_crtc_write_gamma_lut.exit_crit_edge, label %if.end34.for.body.i_crit_edge

if.end34.for.body.i_crit_edge:                    ; preds = %if.end34
  br label %for.body.i

if.end34.vop_crtc_write_gamma_lut.exit_crit_edge: ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %vop_crtc_write_gamma_lut.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end34.for.body.i_crit_edge
  %i.022.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end34.for.body.i_crit_edge ]
  %arrayidx.i16 = getelementptr %struct.drm_color_lut, ptr %85, i32 %i.022.i
  %88 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %arrayidx.i16, align 2
  %conv.i17 = zext i16 %89 to i32
  %add.i.i = add nuw nsw i32 %conv.i17, 32
  %shr4.i.i = lshr i32 %add.i.i, 6
  %90 = tail call i32 @llvm.umin.i32(i32 %shr4.i.i, i32 1023) #8
  %shl.i = shl nuw nsw i32 %90, 20
  %green.i = getelementptr %struct.drm_color_lut, ptr %85, i32 %i.022.i, i32 1
  %91 = ptrtoint ptr %green.i to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %green.i, align 2
  %conv2.i = zext i16 %92 to i32
  %add.i17.i = add nuw nsw i32 %conv2.i, 32
  %shr4.i18.i = lshr i32 %add.i17.i, 6
  %93 = tail call i32 @llvm.umin.i32(i32 %shr4.i18.i, i32 1023) #8
  %shl4.i = shl nuw nsw i32 %93, 10
  %or.i = or i32 %shl4.i, %shl.i
  %blue.i = getelementptr %struct.drm_color_lut, ptr %85, i32 %i.022.i, i32 2
  %94 = ptrtoint ptr %blue.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %blue.i, align 2
  %conv6.i18 = zext i16 %95 to i32
  %add.i19.i = add nuw nsw i32 %conv6.i18, 32
  %shr4.i20.i = lshr i32 %add.i19.i, 6
  %96 = tail call i32 @llvm.umin.i32(i32 %shr4.i20.i, i32 1023) #8
  %or8.i = or i32 %or.i, %96
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !309
  tail call void @arm_heavy_mb() #8
  %97 = tail call i32 @llvm.bswap.i32(i32 %or8.i) #8
  %98 = ptrtoint ptr %lut_regs to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %lut_regs, align 4
  %mul.i = shl i32 %i.022.i, 2
  %add.ptr.i19 = getelementptr i8, ptr %99, i32 %mul.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19, i32 %97) #8, !srcloc !305
  %inc.i = add nuw i32 %i.022.i, 1
  %100 = ptrtoint ptr %gamma_size.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %gamma_size.i, align 8
  %cmp.i20 = icmp ult i32 %inc.i, %101
  br i1 %cmp.i20, label %for.body.i.for.body.i_crit_edge, label %for.body.i.vop_crtc_write_gamma_lut.exit_crit_edge

for.body.i.vop_crtc_write_gamma_lut.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vop_crtc_write_gamma_lut.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

vop_crtc_write_gamma_lut.exit:                    ; preds = %for.body.i.vop_crtc_write_gamma_lut.exit_crit_edge, %if.end34.vop_crtc_write_gamma_lut.exit_crit_edge
  %102 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %data, align 8
  %common37 = getelementptr inbounds %struct.vop_data, ptr %103, i32 0, i32 2
  %104 = ptrtoint ptr %common37 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %common37, align 8
  %dsp_lut_en38 = getelementptr inbounds %struct.vop_common, ptr %105, i32 0, i32 8
  tail call fastcc void @vop_reg_set(ptr noundef %vop, ptr noundef %dsp_lut_en38, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef nonnull @.str.78)
  %106 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %data, align 8
  %common.i22 = getelementptr inbounds %struct.vop_data, ptr %107, i32 0, i32 2
  %108 = ptrtoint ptr %common.i22 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %common.i22, align 8
  tail call fastcc void @vop_reg_set(ptr noundef %vop, ptr noundef %109, i32 noundef 0, i32 noundef -1, i32 noundef 1, ptr noundef nonnull @.str.73) #8
  tail call void @_raw_spin_unlock(ptr noundef %reg_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %vop_crtc_write_gamma_lut.exit, %if.end31.cleanup_crit_edge, %if.then30, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rockchip_drm_dma_attach_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rockchip_drm_dma_detach_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_send_vblank_event(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_object_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_crtc_handle_vblank(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_get_if_active(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_flip_work_commit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_self_refresh_helper_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_flip_work_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rockchip_rgb_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 146)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 146)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !24, !26, !27, !29, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !51, !52, !53, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !288, !289, !290}
!llvm.module.flags = !{!292, !293, !294, !295, !296, !297, !298, !299}
!llvm.ident = !{!300}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 2083, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__ksymtab_rockchip_drm_wait_vact_end, !4, !"__ksymtab_rockchip_drm_wait_vact_end", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 2092, i32 1}
!5 = !{ptr @vop_component_ops, !6, !"vop_component_ops", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 2201, i32 28}
!7 = !{ptr @__ksymtab_vop_component_ops, !8, !"__ksymtab_vop_component_ops", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 2205, i32 1}
!9 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 521, i32 6}
!11 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 526, i32 2}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 527, i32 2}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 210, i32 3}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 2129, i32 4}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 2143, i32 3}
!21 = !{ptr @vop_bind.__key, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 2148, i32 2}
!23 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @vop_bind.__key.9, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 2149, i32 2}
!26 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @vop_bind.__key.11, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 2150, i32 2}
!29 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 2160, i32 3}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 1797, i32 4}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 1842, i32 4}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 1850, i32 44}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 1852, i32 3}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 1858, i32 42}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 1867, i32 3}
!44 = !{ptr @vop_plane_funcs, !45, !"vop_plane_funcs", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 1117, i32 37}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 775, i32 3}
!48 = distinct !{null, !49, !"__already_done", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 307, i32 3}
!50 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @vop_convert_afbc_format._entry, !49, !"_entry", i1 false, i1 false}
!53 = !{ptr @vop_convert_afbc_format._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @plane_helper_funcs, !55, !"plane_helper_funcs", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 1109, i32 44}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 825, i32 3}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 830, i32 3}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 838, i32 4}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 847, i32 4}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 854, i32 4}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 286, i32 3}
!68 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 954, i32 3}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 955, i32 3}
!72 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 956, i32 3}
!74 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 957, i32 3}
!76 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 958, i32 3}
!78 = !{ptr @.str.34, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 962, i32 2}
!80 = !{ptr @.str.35, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 963, i32 2}
!82 = !{ptr @.str.36, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 964, i32 2}
!84 = !{ptr @.str.37, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 965, i32 2}
!86 = !{ptr @.str.38, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 967, i32 2}
!88 = !{ptr @.str.39, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 982, i32 3}
!90 = !{ptr @.str.40, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 983, i32 3}
!92 = !{ptr @.str.41, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 986, i32 4}
!94 = !{ptr @.str.42, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 998, i32 2}
!96 = !{ptr @.str.43, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 999, i32 2}
!98 = !{ptr @.str.44, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 1000, i32 2}
!100 = !{ptr @.str.45, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 1003, i32 2}
!102 = !{ptr @.str.46, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 1013, i32 3}
!104 = !{ptr @.str.47, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 1020, i32 3}
!106 = !{ptr @.str.48, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 1022, i32 3}
!108 = !{ptr @.str.49, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 1023, i32 3}
!110 = !{ptr @.str.50, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 1024, i32 3}
!112 = !{ptr @bt601_yuv2rgb, !113, !"bt601_yuv2rgb", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 116, i32 23}
!114 = !{ptr @.str.51, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 367, i32 3}
!116 = !{ptr @.str.52, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 372, i32 3}
!118 = !{ptr @.str.53, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 374, i32 3}
!120 = !{ptr @.str.54, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 377, i32 4}
!122 = !{ptr @.str.55, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 379, i32 4}
!124 = !{ptr @.str.56, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 402, i32 2}
!126 = !{ptr @.str.57, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 405, i32 4}
!128 = distinct !{null, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 409, i32 4}
!130 = !{ptr @.str.59, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 426, i32 2}
!132 = !{ptr @.str.60, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 427, i32 2}
!134 = !{ptr @.str.61, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 429, i32 2}
!136 = !{ptr @.str.62, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 430, i32 2}
!138 = !{ptr @.str.63, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 431, i32 2}
!140 = !{ptr @.str.64, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 432, i32 2}
!142 = !{ptr @.str.65, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 433, i32 2}
!144 = !{ptr @.str.66, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 442, i32 3}
!146 = !{ptr @.str.67, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 443, i32 3}
!148 = !{ptr @.str.68, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 444, i32 3}
!150 = !{ptr @.str.69, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 445, i32 3}
!152 = !{ptr @.str.70, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 446, i32 3}
!154 = !{ptr @.str.71, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 447, i32 3}
!156 = !{ptr @.str.72, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 448, i32 3}
!158 = !{ptr @.str.73, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 249, i32 2}
!160 = !{ptr @vop_crtc_funcs, !161, !"vop_crtc_funcs", i1 false, i1 false}
!161 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 1648, i32 36}
!162 = !{ptr @.str.74, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 1612, i32 41}
!164 = !{ptr @vop_crtc_helper_funcs, !165, !"vop_crtc_helper_funcs", i1 false, i1 false}
!165 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 1537, i32 43}
!166 = !{ptr @.str.75, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 1451, i32 4}
!168 = !{ptr @.str.76, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 1461, i32 4}
!170 = !{ptr @.str.77, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 1471, i32 3}
!172 = !{ptr @.str.78, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 1236, i32 2}
!174 = !{ptr @.str.79, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 1247, i32 3}
!176 = !{ptr @.str.80, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 1429, i32 3}
!178 = !{ptr @.str.81, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 1323, i32 3}
!180 = !{ptr @.str.82, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 1330, i32 2}
!182 = !{ptr @.str.83, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 1331, i32 2}
!184 = !{ptr @.str.84, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 1335, i32 3}
!186 = !{ptr @.str.85, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 1336, i32 3}
!188 = !{ptr @.str.86, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 1337, i32 3}
!190 = !{ptr @.str.87, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 1340, i32 3}
!192 = !{ptr @.str.88, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 1341, i32 3}
!194 = !{ptr @.str.89, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 1342, i32 3}
!196 = !{ptr @.str.90, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 1345, i32 3}
!198 = !{ptr @.str.91, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 1346, i32 3}
!200 = !{ptr @.str.92, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 1347, i32 3}
!202 = !{ptr @.str.93, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 1350, i32 3}
!204 = !{ptr @.str.94, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 1351, i32 3}
!206 = !{ptr @.str.95, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 1352, i32 3}
!208 = !{ptr @.str.96, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 1357, i32 3}
!210 = !{ptr @.str.97, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 1358, i32 3}
!212 = !{ptr @.str.98, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 1359, i32 3}
!214 = !{ptr @.str.99, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 1362, i32 3}
!216 = !{ptr @.str.100, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 1374, i32 3}
!218 = !{ptr @.str.101, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 1379, i32 3}
!220 = !{ptr @.str.102, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 1380, i32 3}
!222 = !{ptr @.str.103, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 1381, i32 3}
!224 = !{ptr @.str.104, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 1386, i32 2}
!226 = !{ptr @.str.105, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 1388, i32 2}
!228 = !{ptr @.str.106, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 1391, i32 2}
!230 = !{ptr @.str.107, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 1392, i32 2}
!232 = !{ptr @.str.108, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 1394, i32 2}
!234 = !{ptr @.str.109, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 1397, i32 2}
!236 = !{ptr @.str.110, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 1398, i32 2}
!238 = !{ptr @.str.111, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 1400, i32 2}
!240 = !{ptr @.str.112, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 1404, i32 2}
!242 = !{ptr @.str.113, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 593, i32 3}
!244 = !{ptr @.str.114, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 613, i32 3}
!246 = !{ptr @.str.115, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 731, i32 3}
!248 = !{ptr @init_completion.__key, !249, !"__key", i1 false, i1 false}
!249 = !{!"../include/linux/completion.h", i32 87, i32 2}
!250 = !{ptr @.str.116, !249, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @.str.117, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 1917, i32 37}
!253 = !{ptr @.str.118, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 1919, i32 3}
!255 = !{ptr @.str.119, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 1922, i32 37}
!257 = !{ptr @.str.120, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 1924, i32 3}
!259 = !{ptr @.str.121, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 1927, i32 37}
!261 = !{ptr @.str.122, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 1929, i32 3}
!263 = !{ptr @.str.123, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 1941, i32 3}
!265 = !{ptr @.str.124, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 1948, i32 3}
!267 = !{ptr @.str.125, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 1954, i32 3}
!269 = !{ptr @.str.126, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 1961, i32 45}
!271 = !{ptr @.str.127, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 1963, i32 3}
!273 = !{ptr @.str.128, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 1977, i32 2}
!275 = !{ptr @.str.129, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 1978, i32 2}
!277 = !{ptr @.str.130, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 1985, i32 3}
!279 = !{ptr @.str.131, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 1987, i32 3}
!281 = !{ptr @.str.132, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 1995, i32 51}
!283 = !{ptr @.str.133, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 1997, i32 3}
!285 = !{ptr @.str.134, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 1702, i32 3}
!287 = !{ptr @vop_isr._rs, !286, !"_rs", i1 false, i1 false}
!288 = !{ptr @__func__.vop_isr, !286, !"<string literal>", i1 false, i1 false}
!289 = !{ptr @.str.135, !286, !"<string literal>", i1 false, i1 false}
!290 = !{ptr @.str.136, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/gpu/drm/rockchip/rockchip_drm_vop.c", i32 1744, i32 3}
!292 = !{i32 1, !"wchar_size", i32 2}
!293 = !{i32 1, !"min_enum_size", i32 4}
!294 = !{i32 8, !"branch-target-enforcement", i32 0}
!295 = !{i32 8, !"sign-return-address", i32 0}
!296 = !{i32 8, !"sign-return-address-all", i32 0}
!297 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!298 = !{i32 7, !"uwtable", i32 1}
!299 = !{i32 7, !"frame-pointer", i32 2}
!300 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!301 = !{i8 0, i8 2}
!302 = !{i64 3139433}
!303 = !{i64 2157085769}
!304 = !{!"branch_weights", i32 1, i32 2000}
!305 = !{i64 3139015}
!306 = !{i64 2157086417}
!307 = !{!"branch_weights", i32 2000, i32 1}
!308 = !{!"auto-init"}
!309 = !{i64 2157142950}
