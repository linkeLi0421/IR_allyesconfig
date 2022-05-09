; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/sti/sti_hqvdp.c_pt.bc'
source_filename = "../drivers/gpu/drm/sti/sti_hqvdp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.component_ops = type { ptr, ptr }
%struct.drm_plane_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.drm_info_list = type { ptr, ptr, i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.sti_hqvdp = type { ptr, ptr, ptr, %struct.sti_plane, ptr, ptr, ptr, %struct.notifier_block, i8, ptr, i32, ptr, i8, i8 }
%struct.sti_plane = type { %struct.drm_plane, i32, i32, %struct.sti_fps_info }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.sti_fps_info = type { i8, i32, i32, i32, i32, i64, [128 x i8], [128 x i8] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.sti_hqvdp_top = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.84, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.88, ptr, i32, ptr, i8, i32 }
%struct.anon.84 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.88 = type { i32, ptr }
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.drm_info_node = type { ptr, ptr, %struct.list_head, ptr }
%struct.sti_hqvdp_cmd = type { %struct.sti_hqvdp_top, %struct.sti_hqvdp_vc1re, %struct.sti_hqvdp_fmd, %struct.sti_hqvdp_csdi, %struct.sti_hqvdp_hvsrc, %struct.sti_hqvdp_iqi, %struct.sti_hqvdp_top_status, %struct.sti_hqvdp_fmd_status, %struct.sti_hqvdp_csdi_status, %struct.sti_hqvdp_hvsrc_status, %struct.sti_hqvdp_iqi_status }
%struct.sti_hqvdp_vc1re = type { i32, i32, i32, i32, i32 }
%struct.sti_hqvdp_fmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sti_hqvdp_csdi = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sti_hqvdp_hvsrc = type { i32, i32, i32, i32, i32, [128 x i32], [128 x i32], [128 x i32], [128 x i32], i32, i32 }
%struct.sti_hqvdp_iqi = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [64 x i32], i32, i32, i32, i32 }
%struct.sti_hqvdp_top_status = type { i32, i32, i32 }
%struct.sti_hqvdp_fmd_status = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.sti_hqvdp_csdi_status = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sti_hqvdp_hvsrc_status = type { i32, i32, i32 }
%struct.sti_hqvdp_iqi_status = type { i32, i32, i32, i32 }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_planes_state = type { ptr, ptr, ptr, ptr }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.firmware = type { i32, ptr, ptr }
%struct.fw_header = type { i32, i32, i32, i32 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
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

@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sti-hqvdp\00", [22 x i8] zeroinitializer }, align 32
@hqvdp_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stih407-hqvdp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@sti_hqvdp_driver = dso_local global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sti_hqvdp_probe, ptr @sti_hqvdp_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @hqvdp_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_author338 = internal constant [60 x i8] c"sti_drm.author=Benjamin Gaignard <benjamin.gaignard@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description339 = internal constant [54 x i8] c"sti_drm.description=STMicroelectronics SoC DRM driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file340 = internal constant [41 x i8] c"sti_drm.file=drivers/gpu/drm/sti/sti-drm\00", section ".modinfo", align 1
@__UNIQUE_ID_license341 = internal constant [20 x i8] c"sti_drm.license=GPL\00", section ".modinfo", align 1
@.str.1 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to allocate HQVDP context\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Get memory resource failed\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Register mapping failed\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"hqvdp\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pix_main\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Cannot get clocks\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"st,vtg\00", [25 x i8] zeroinitializer }, align 32
@sti_hqvdp_ops = internal constant { %struct.component_ops, [24 x i8] } { %struct.component_ops { ptr @sti_hqvdp_bind, ptr @sti_hqvdp_unbind }, [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Can't create HQVDP plane\0A\00", [38 x i8] zeroinitializer }, align 32
@sti_hqvdp_plane_helpers_funcs = internal constant { %struct.drm_plane_funcs, [44 x i8] } { %struct.drm_plane_funcs { ptr @drm_atomic_helper_update_plane, ptr @drm_atomic_helper_disable_plane, ptr @drm_plane_cleanup, ptr @sti_plane_reset, ptr null, ptr @drm_atomic_helper_plane_duplicate_state, ptr @drm_atomic_helper_plane_destroy_state, ptr null, ptr null, ptr @sti_hqvdp_late_register, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@hqvdp_supported_formats = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 842094158], [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to initialize universal plane\0A\00", [58 x i8] zeroinitializer }, align 32
@sti_hqvdp_helpers_funcs = internal constant { %struct.drm_plane_helper_funcs, [36 x i8] } { %struct.drm_plane_helper_funcs { ptr null, ptr null, ptr @sti_hqvdp_atomic_check, ptr @sti_hqvdp_atomic_update, ptr @sti_hqvdp_atomic_disable, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to allocate memory for VDP cmd\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Unknown event\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Vsync event received => disable %s\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Warning: no cmd, will skip field\0A\00", [62 x i8] zeroinitializer }, align 32
@sti_hqvdp_vtg_cb.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, i8 0, i8 -46, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sti_drm\00", [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sti_hqvdp_vtg_cb\00", [47 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/gpu/drm/sti/sti_hqvdp.c\00", [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s Posted command:0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Warning: cannot unregister VTG notifier\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"XP70 could not revert to idle\0A\00", [33 x i8] zeroinitializer }, align 32
@hqvdp_debugfs_files = internal global { [1 x %struct.drm_info_list], [16 x i8] } { [1 x %struct.drm_info_list] [%struct.drm_info_list { ptr @.str.5, ptr @hqvdp_dbg_show, i32 0, ptr null }], [16 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: (vaddr = 0x%p)\00", [45 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\0A  %-25s 0x%08X\00", [16 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"HQVDP_MBX_IRQ_TO_XP70\00", [42 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"HQVDP_MBX_INFO_HOST\00", [44 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"HQVDP_MBX_IRQ_TO_HOST\00", [42 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"HQVDP_MBX_INFO_XP70\00", [44 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\09Firmware state: \00", [46 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"idle and ready\00", [17 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"processing a picture\00", [43 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"programming queues\00", [45 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"NOT READY\00", [22 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"HQVDP_MBX_SW_RESET_CTRL\00", [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"HQVDP_MBX_STARTUP_CTRL1\00", [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\09Reset is done\00", [17 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\09Reset is NOT done\00", [45 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"HQVDP_MBX_STARTUP_CTRL2\00", [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\09Fetch is enabled\00", [46 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\09Fetch is NOT enabled\00", [42 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"HQVDP_MBX_GP_STATUS\00", [44 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"HQVDP_MBX_NEXT_CMD\00", [45 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"HQVDP_MBX_CURRENT_CMD\00", [42 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"HQVDP_MBX_SOFT_VSYNC\00", [43 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\09HW Vsync\00", [22 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\09SW Vsync ?!?!\00", [17 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\0A\0A  Last command: unknown\00", [38 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\0A\0A  Last command: address @ 0x%x (0x%p)\00", [56 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\0A\0A  Next command: unknown\00", [38 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\0A\0A  Next command address: @ 0x%x (0x%p)\00", [56 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\0A\09TOP:\00", [25 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\0A\09 %-20s 0x%08X\00", [16 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Config\00", [25 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\09Progressive\00", [19 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\09Interlaced, top field\00", [41 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\09Interlaced, bottom field\00", [38 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\09<UNKNOWN>\00", [21 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"MemFormat\00", [22 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CurrentY\00", [23 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CurrentC\00", [23 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"YSrcPitch\00", [22 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CSrcPitch\00", [22 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"InputFrameSize\00", [17 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\09%dx%d\00", [25 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"InputViewportSize\00", [46 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\0A\09HVSRC:\00", [23 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"OutputPictureSize\00", [46 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ParamCtrl\00", [22 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\0A\09 %-20s %s\00", [20 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"yh_coef\00", [24 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ch_coef\00", [24 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"yv_coef\00", [24 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cv_coef\00", [24 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\0A\09 %-20s\00", [23 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ScaleH\00", [25 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" %d/1\00", [26 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" 1/%d\00", [26 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tScaleV\00", [24 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\0A\09CSDI:\00", [24 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\0A\09 %-20s 0x%08X\09\00", [47 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Bypass\00", [25 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Deinterlace, directional\00", [39 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"<UNKNOWN>\00", [22 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Config2\00", [24 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DcdiConfig\00", [21 x i8] zeroinitializer }, align 32
@coef_lut_a_legacy = internal constant { [128 x i32], [128 x i8] } { [128 x i32] [i32 65535, i32 65536, i32 65791, i32 0, i32 0, i32 327680, i32 -261889, i32 0, i32 0, i32 589824, i32 -458498, i32 0, i32 0, i32 1114111, i32 -655109, i32 0, i32 0, i32 1572862, i32 -786185, i32 0, i32 0, i32 2097149, i32 -917262, i32 0, i32 0, i32 2621436, i32 -982804, i32 0, i32 0, i32 3211259, i32 -1048347, i32 0, i32 0, i32 3866618, i32 -1179426, i32 0, i32 0, i32 4521977, i32 -1244970, i32 0, i32 0, i32 5177336, i32 -1244979, i32 0, i32 0, i32 5898230, i32 -1244988, i32 0, i32 0, i32 6619125, i32 -1244998, i32 0, i32 0, i32 7340019, i32 -1179472, i32 0, i32 0, i32 8060914, i32 -1179482, i32 0, i32 0, i32 8781809, i32 -1113957, i32 0, i32 0, i32 9502704, i32 -1048432, i32 0, i32 0, i32 10223599, i32 -982907, i32 0, i32 0, i32 10944494, i32 -917382, i32 0, i32 0, i32 11599854, i32 -851857, i32 0, i32 0, i32 12255213, i32 -720796, i32 0, i32 0, i32 12910573, i32 -655271, i32 0, i32 0, i32 13500397, i32 -524210, i32 0, i32 0, i32 14090221, i32 -458684, i32 0, i32 0, i32 14614510, i32 -393158, i32 0, i32 0, i32 15073264, i32 -327632, i32 0, i32 0, i32 15532017, i32 -262105, i32 0, i32 0, i32 15925234, i32 -196577, i32 0, i32 0, i32 16252916, i32 -131049, i32 0, i32 0, i32 16515062, i32 -65520, i32 0, i32 0, i32 16711673, i32 9, i32 0, i32 0, i32 16777212, i32 5, i32 0], [128 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LUT A\00", [26 x i8] zeroinitializer }, align 32
@coef_lut_b = internal constant { [128 x i32], [128 x i8] } { [128 x i32] [i32 0, i32 0, i32 256, i32 0, i32 0, i32 0, i32 256, i32 0, i32 0, i32 0, i32 256, i32 0, i32 0, i32 0, i32 256, i32 0, i32 0, i32 0, i32 256, i32 0, i32 0, i32 0, i32 256, i32 0, i32 0, i32 0, i32 256, i32 0, i32 0, i32 0, i32 256, i32 0, i32 0, i32 0, i32 256, i32 0, i32 0, i32 0, i32 256, i32 0, i32 0, i32 0, i32 256, i32 0, i32 0, i32 0, i32 256, i32 0, i32 0, i32 0, i32 256, i32 0, i32 0, i32 0, i32 256, i32 0, i32 0, i32 0, i32 256, i32 0, i32 0, i32 0, i32 256, i32 0, i32 0, i32 0, i32 256, i32 0, i32 0, i32 0, i32 256, i32 0, i32 0, i32 0, i32 256, i32 0, i32 0, i32 0, i32 256, i32 0, i32 0, i32 0, i32 256, i32 0, i32 0, i32 0, i32 256, i32 0, i32 0, i32 0, i32 256, i32 0, i32 0, i32 0, i32 256, i32 0, i32 0, i32 0, i32 256, i32 0, i32 0, i32 0, i32 256, i32 0, i32 0, i32 0, i32 256, i32 0, i32 0, i32 0, i32 256, i32 0, i32 0, i32 0, i32 256, i32 0, i32 0, i32 0, i32 256, i32 0, i32 0, i32 0, i32 256, i32 0, i32 0, i32 0, i32 256, i32 0], [128 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LUT B\00", [26 x i8] zeroinitializer }, align 32
@coef_lut_c_y_legacy = internal constant { [128 x i32], [128 x i8] } { [128 x i32] [i32 393220, i32 3735521, i32 3670206, i32 458721, i32 327685, i32 4390881, i32 3670195, i32 524257, i32 262150, i32 4653025, i32 3342514, i32 589794, i32 196615, i32 5046241, i32 3014833, i32 589794, i32 131078, i32 5373922, i32 2687152, i32 655331, i32 65544, i32 5701602, i32 2359470, i32 655332, i32 -65528, i32 6094819, i32 2031789, i32 720868, i32 -131064, i32 6488036, i32 1704107, i32 720869, i32 -196598, i32 6750181, i32 1376424, i32 786406, i32 -262135, i32 7077863, i32 1114277, i32 786408, i32 -393206, i32 7405544, i32 852131, i32 786409, i32 -458741, i32 7798762, i32 524447, i32 786410, i32 -589813, i32 8060908, i32 327835, i32 851948, i32 -655349, i32 8323055, i32 65688, i32 851949, i32 -786421, i32 8716273, i32 -196459, i32 851950, i32 -851957, i32 8978420, i32 -393072, i32 851952, i32 -983029, i32 9306103, i32 -589683, i32 786417, i32 -1048564, i32 9502714, i32 -786296, i32 786419, i32 -1179636, i32 9830397, i32 -982908, i32 786420, i32 -1245172, i32 9961473, i32 -1113986, i32 786422, i32 -1310708, i32 10158085, i32 -1310598, i32 786423, i32 -1441781, i32 10420232, i32 -1441674, i32 786425, i32 -1507317, i32 10682381, i32 -1572752, i32 720890, i32 -1572853, i32 10813457, i32 -1638293, i32 655356, i32 -1703925, i32 11010069, i32 -1769370, i32 720893, i32 -1769462, i32 11206682, i32 -1834910, i32 589822, i32 -1834998, i32 11337759, i32 -1900452, i32 589823, i32 -1834999, i32 11403300, i32 -1965994, i32 524289, i32 -1900535, i32 11534377, i32 -1965999, i32 393218, i32 -1966072, i32 11599918, i32 -2031540, i32 458755, i32 -1966072, i32 11665459, i32 -2031546, i32 393220, i32 -2031609, i32 11731000, i32 -2031550, i32 327685], [128 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LUT C Y\00", [24 x i8] zeroinitializer }, align 32
@coef_lut_c_c_legacy = internal constant { [128 x i32], [128 x i8] } { [128 x i32] [i32 131059, i32 3866619, i32 3801249, i32 131067, i32 131061, i32 4325371, i32 3670170, i32 131067, i32 131061, i32 4653051, i32 3408025, i32 131067, i32 131063, i32 4849659, i32 3145880, i32 131067, i32 131065, i32 5046267, i32 2949270, i32 131067, i32 131066, i32 5242876, i32 2687125, i32 131067, i32 131065, i32 5570557, i32 2424979, i32 131068, i32 131066, i32 5832701, i32 2228370, i32 65532, i32 131067, i32 6029310, i32 2031760, i32 65532, i32 131069, i32 6225919, i32 1835148, i32 65533, i32 131069, i32 6422528, i32 1638538, i32 65533, i32 131070, i32 6684673, i32 1441928, i32 -3, i32 65534, i32 6946819, i32 1245317, i32 -2, i32 65534, i32 7208964, i32 1048707, i32 -2, i32 65534, i32 7405574, i32 917631, i32 -1, i32 65534, i32 7667720, i32 786556, i32 -65537, i32 -2, i32 7929866, i32 655481, i32 -65537, i32 -2, i32 8126476, i32 524405, i32 -131072, i32 -1, i32 8323086, i32 393329, i32 -131072, i32 -65537, i32 8585232, i32 262254, i32 -131072, i32 -65537, i32 8716307, i32 196714, i32 -131072, i32 -131073, i32 8912918, i32 65638, i32 -131071, i32 -196608, i32 9043993, i32 98, i32 -196607, i32 -196608, i32 9175068, i32 -65442, i32 -196607, i32 -262144, i32 9437215, i32 -130981, i32 -327679, i32 -262144, i32 9568290, i32 -196520, i32 -393215, i32 -262143, i32 9633829, i32 -196524, i32 -458751, i32 -327679, i32 9764905, i32 -262065, i32 -393215, i32 -327679, i32 9830445, i32 -327604, i32 -458751, i32 -327679, i32 9961520, i32 -327607, i32 -589823, i32 -327679, i32 10027060, i32 -327610, i32 -720895, i32 -327679, i32 10092600, i32 -327615, i32 -720895], [128 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LUT C C\00", [24 x i8] zeroinitializer }, align 32
@coef_lut_d_y_legacy = internal constant { [128 x i32], [128 x i8] } { [128 x i32] [i32 -524279, i32 4653036, i32 4587683, i32 -458772, i32 -589815, i32 5177325, i32 4456605, i32 -393237, i32 -655350, i32 5439470, i32 4128925, i32 -327702, i32 -720887, i32 5767151, i32 3866781, i32 -262167, i32 -720888, i32 6029296, i32 3604636, i32 -196631, i32 -786424, i32 6291442, i32 3342491, i32 -196631, i32 -851961, i32 6619123, i32 3080347, i32 -131096, i32 -917497, i32 6881269, i32 2818201, i32 -65560, i32 -983032, i32 7077879, i32 2556055, i32 -24, i32 -1048569, i32 7340025, i32 2293911, i32 -24, i32 -1114106, i32 7602171, i32 2097301, i32 65512, i32 -1179643, i32 7864318, i32 1835155, i32 65513, i32 -1179643, i32 7995392, i32 1573009, i32 131049, i32 -1245179, i32 8192003, i32 1376398, i32 196585, i32 -1310715, i32 8388614, i32 1179787, i32 196586, i32 -1376252, i32 8650760, i32 917642, i32 262122, i32 -1376253, i32 8847371, i32 721031, i32 262123, i32 -1441789, i32 9043982, i32 524420, i32 327659, i32 -1441790, i32 9109522, i32 393344, i32 393196, i32 -1507326, i32 9306133, i32 196733, i32 393197, i32 -1507327, i32 9502744, i32 122, i32 393198, i32 -1507328, i32 9633820, i32 -130953, i32 393198, i32 -1572864, i32 9764896, i32 -327565, i32 458735, i32 -1507329, i32 9895971, i32 -458641, i32 524272, i32 -1507329, i32 9895975, i32 -589717, i32 589809, i32 -1507330, i32 10027051, i32 -720792, i32 524274, i32 -1507331, i32 10158127, i32 -851868, i32 524275, i32 -1441796, i32 10158131, i32 -917409, i32 589812, i32 -1441796, i32 10223671, i32 -1048485, i32 589813, i32 -1441797, i32 10289211, i32 -1114025, i32 655349, i32 -1376262, i32 10289215, i32 -1179566, i32 720886, i32 -1310727, i32 10289220, i32 -1245106, i32 655351], [128 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LUT D Y\00", [24 x i8] zeroinitializer }, align 32
@coef_lut_d_c_legacy = internal constant { [128 x i32], [128 x i8] } { [128 x i32] [i32 -65537, i32 4194303, i32 4128905, i32 -65537, i32 -131072, i32 4587520, i32 4325501, i32 -2, i32 -131072, i32 4784129, i32 4128893, i32 -3, i32 -196607, i32 4915202, i32 3932285, i32 65532, i32 -196607, i32 5111811, i32 3735676, i32 65532, i32 -262143, i32 5308421, i32 3539068, i32 65531, i32 -262143, i32 5505030, i32 3342459, i32 131066, i32 -262141, i32 5570568, i32 3211384, i32 131066, i32 -327677, i32 5767177, i32 3014776, i32 131066, i32 -327678, i32 5963787, i32 2818167, i32 196601, i32 -393213, i32 6160397, i32 2621557, i32 196601, i32 -393214, i32 6291471, i32 2490484, i32 196601, i32 -393212, i32 6357009, i32 2293874, i32 196601, i32 -393212, i32 6553619, i32 2097264, i32 196601, i32 -458748, i32 6684693, i32 1966190, i32 262137, i32 -458748, i32 6815767, i32 1835116, i32 262137, i32 -458749, i32 7012377, i32 1638507, i32 262137, i32 -458749, i32 7077916, i32 1507432, i32 327673, i32 -458749, i32 7208990, i32 1376358, i32 327673, i32 -458750, i32 7340064, i32 1245284, i32 327674, i32 -458750, i32 7471139, i32 1114209, i32 327674, i32 -458750, i32 7602214, i32 983136, i32 196602, i32 -458750, i32 7667752, i32 852062, i32 262138, i32 -458750, i32 7798827, i32 720987, i32 196603, i32 -393215, i32 7864366, i32 589912, i32 262139, i32 -393215, i32 7864369, i32 524373, i32 262140, i32 -393215, i32 8060979, i32 393300, i32 131068, i32 -327680, i32 8126518, i32 327761, i32 131068, i32 -262144, i32 8126521, i32 196686, i32 131069, i32 -262144, i32 8192060, i32 131147, i32 131069, i32 -131073, i32 8192063, i32 65609, i32 65534, i32 -65537, i32 8192066, i32 70, i32 65534], [128 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LUT D C\00", [24 x i8] zeroinitializer }, align 32
@coef_lut_e_y_legacy = internal constant { [128 x i32], [128 x i8] } { [128 x i32] [i32 -983039, i32 4784132, i32 4784259, i32 -983036, i32 -983040, i32 5242886, i32 4915323, i32 -983038, i32 -983040, i32 5439495, i32 4718715, i32 -983039, i32 -983040, i32 5570569, i32 4587642, i32 -983040, i32 -917506, i32 5767179, i32 4391035, i32 -851970, i32 -917505, i32 5898253, i32 4194426, i32 -851971, i32 -917507, i32 6094863, i32 4063354, i32 -851972, i32 -917507, i32 6225937, i32 3866745, i32 -786437, i32 -917508, i32 6357011, i32 3735673, i32 -786438, i32 -917509, i32 6553621, i32 3539065, i32 -786439, i32 -917510, i32 6684695, i32 3407992, i32 -720904, i32 -917509, i32 6815769, i32 3211383, i32 -720905, i32 -851975, i32 6946843, i32 3080310, i32 -655370, i32 -851975, i32 7077918, i32 2883701, i32 -655371, i32 -851975, i32 7143456, i32 2752627, i32 -589835, i32 -786441, i32 7340066, i32 2556019, i32 -589836, i32 -786441, i32 7405605, i32 2424945, i32 -524301, i32 -720906, i32 7536679, i32 2228336, i32 -524301, i32 -655370, i32 7536682, i32 2097261, i32 -393230, i32 -655371, i32 7667756, i32 1966188, i32 -393230, i32 -589835, i32 7733295, i32 1769578, i32 -393230, i32 -524300, i32 7798833, i32 1638504, i32 -262159, i32 -458764, i32 7864372, i32 1507430, i32 -327695, i32 -393229, i32 7929910, i32 1376356, i32 -262159, i32 -327693, i32 7929913, i32 1245281, i32 -196623, i32 -262157, i32 7929915, i32 1114207, i32 -131087, i32 -196622, i32 7995454, i32 983133, i32 -131087, i32 -131086, i32 7995456, i32 852058, i32 -15, i32 -65550, i32 8060995, i32 720984, i32 -65551, i32 65521, i32 7995462, i32 589909, i32 65521, i32 131057, i32 8061000, i32 458835, i32 65521, i32 196593, i32 8061003, i32 393296, i32 65521], [128 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LUT E Y\00", [24 x i8] zeroinitializer }, align 32
@coef_lut_e_c_legacy = internal constant { [128 x i32], [128 x i8] } { [128 x i32] [i32 -393215, i32 4128784, i32 4128877, i32 -393200, i32 -327678, i32 4456465, i32 4456546, i32 -393202, i32 -327679, i32 4587539, i32 4325474, i32 -393203, i32 -327680, i32 4718612, i32 4259938, i32 -393204, i32 -327679, i32 4784149, i32 4128865, i32 -327669, i32 -327680, i32 4915223, i32 3997793, i32 -327670, i32 -327680, i32 5046296, i32 3866722, i32 -327672, i32 -196609, i32 5177370, i32 3735649, i32 -327673, i32 -262144, i32 5177372, i32 3670112, i32 -327674, i32 -196609, i32 5373981, i32 3539040, i32 -327675, i32 -131074, i32 5439519, i32 3407968, i32 -327676, i32 -131074, i32 5505057, i32 3276894, i32 -262140, i32 -65537, i32 5570594, i32 3145821, i32 -262141, i32 -65537, i32 5636132, i32 3080284, i32 -262142, i32 -3, i32 5767206, i32 2949212, i32 -262143, i32 -3, i32 5898279, i32 2818140, i32 -262144, i32 65533, i32 5898281, i32 2687066, i32 -196608, i32 65532, i32 6029355, i32 2555994, i32 -131073, i32 131068, i32 6029357, i32 2490456, i32 -131073, i32 196604, i32 6029359, i32 2359382, i32 -2, i32 262140, i32 6094896, i32 2228309, i32 -2, i32 327676, i32 6160434, i32 2162772, i32 -65539, i32 327675, i32 6291508, i32 2031699, i32 -65539, i32 393211, i32 6291510, i32 1900626, i32 -4, i32 458747, i32 6291512, i32 1835087, i32 65532, i32 524283, i32 6357049, i32 1704015, i32 -4, i32 589819, i32 6422587, i32 1572941, i32 65531, i32 720891, i32 6357053, i32 1507403, i32 65531, i32 786427, i32 6357055, i32 1376329, i32 131067, i32 851962, i32 6422593, i32 1310792, i32 65531, i32 917498, i32 6422594, i32 1245254, i32 131067, i32 983034, i32 6422596, i32 1114180, i32 196603], [128 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LUT E C\00", [24 x i8] zeroinitializer }, align 32
@coef_lut_f_y_legacy = internal constant { [128 x i32], [128 x i8] } { [128 x i32] [i32 -589840, i32 4784146, i32 4784238, i32 -655342, i32 -524303, i32 5111827, i32 4784232, i32 -655344, i32 -524302, i32 5177365, i32 4653159, i32 -655345, i32 -524299, i32 5177367, i32 4522085, i32 -655346, i32 -458763, i32 5242904, i32 4456549, i32 -655348, i32 -458762, i32 5308442, i32 4325476, i32 -655349, i32 -458762, i32 5373980, i32 4194404, i32 -655350, i32 -393226, i32 5505053, i32 4063332, i32 -655352, i32 -393224, i32 5505055, i32 3932259, i32 -655353, i32 -327688, i32 5570593, i32 3801186, i32 -655354, i32 -262153, i32 5636130, i32 3735650, i32 -655355, i32 -262152, i32 5701668, i32 3604577, i32 -655356, i32 -196616, i32 5767206, i32 3473504, i32 -655357, i32 -131080, i32 5832744, i32 3342431, i32 -655358, i32 -131081, i32 5963818, i32 3211359, i32 -655359, i32 -65545, i32 6029356, i32 3080286, i32 -655360, i32 -10, i32 6160429, i32 2949214, i32 -589825, i32 65526, i32 6160431, i32 2883676, i32 -524290, i32 131062, i32 6225969, i32 2752603, i32 -524291, i32 196598, i32 6225971, i32 2621529, i32 -458755, i32 262134, i32 6291509, i32 2490456, i32 -458756, i32 327670, i32 6357047, i32 2359383, i32 -458757, i32 393206, i32 6422585, i32 2228310, i32 -524293, i32 458742, i32 6422586, i32 2162773, i32 -458758, i32 524278, i32 6488124, i32 2031700, i32 -458759, i32 589814, i32 6553662, i32 1900628, i32 -589831, i32 720886, i32 6553664, i32 1835090, i32 -589832, i32 786422, i32 6553666, i32 1704017, i32 -589832, i32 851958, i32 6619204, i32 1572944, i32 -655368, i32 983030, i32 6619205, i32 1507407, i32 -655369, i32 1048566, i32 6750279, i32 1376335, i32 -851977, i32 1114102, i32 6815817, i32 1245262, i32 -917513], [128 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LUT F Y\00", [24 x i8] zeroinitializer }, align 32
@coef_lut_f_c_legacy = internal constant { [128 x i32], [128 x i8] } { [128 x i32] [i32 65531, i32 3801114, i32 3801181, i32 26, i32 131067, i32 4128795, i32 4194385, i32 25, i32 131068, i32 4194332, i32 4128849, i32 23, i32 196603, i32 4325405, i32 4063313, i32 -65514, i32 196603, i32 4390942, i32 3997777, i32 -65515, i32 262140, i32 4390944, i32 3866704, i32 -65516, i32 262139, i32 4522017, i32 3801169, i32 -131053, i32 327676, i32 4522018, i32 3735632, i32 -131054, i32 393212, i32 4587555, i32 3670095, i32 -131055, i32 393211, i32 4718629, i32 3539024, i32 -196592, i32 458748, i32 4718630, i32 3473487, i32 -196593, i32 458748, i32 4784167, i32 3407951, i32 -196594, i32 524285, i32 4784168, i32 3342414, i32 -196595, i32 589820, i32 4849706, i32 3211341, i32 -196595, i32 655357, i32 4849707, i32 3145805, i32 -262132, i32 655356, i32 4980780, i32 3080269, i32 -262133, i32 720892, i32 4980782, i32 3014732, i32 -262134, i32 786428, i32 5046319, i32 2883660, i32 -262135, i32 851964, i32 5046320, i32 2818122, i32 -196599, i32 917501, i32 5046321, i32 2752586, i32 -262136, i32 917501, i32 5111859, i32 2621513, i32 -196601, i32 983037, i32 5177396, i32 2555977, i32 -262138, i32 1048573, i32 5177397, i32 2490440, i32 -262138, i32 1114109, i32 5242934, i32 2424904, i32 -327675, i32 1179646, i32 5177400, i32 2293830, i32 -262139, i32 1245182, i32 5242937, i32 2228293, i32 -262140, i32 1310718, i32 5308474, i32 2162757, i32 -327677, i32 1376255, i32 5242939, i32 2097219, i32 -262141, i32 1441791, i32 5308477, i32 1966147, i32 -327678, i32 1507327, i32 5308478, i32 1900610, i32 -327678, i32 1507328, i32 5308479, i32 1835072, i32 -262143, i32 1638400, i32 5308480, i32 1769535, i32 -327679], [128 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LUT F C\00", [24 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Scaling beyond HW capabilities\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Can't get CMA GEM object for fb\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Invalid in/out size %dx%d -> %dx%d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to prepare/enable pix main clk\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Cannot register VTG notifier\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"CRTC:%d (%s) drm plane:%d (%s)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s dst=(%dx%d)@(%d,%d) - src=(%dx%d)@(%d,%d)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"HQVDP XP70 already initialized\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hqvdp-stih407.bin\00", [46 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Can't get HQVDP firmware\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Firmware not available\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Invalid firmware size (%zu)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Invalid fmw structure (%zu+%d+%d+%d+%d != %zu)\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to prepare/enable HQVDP clk\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Could not reset\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Could not boot\0A\00", [16 x i8] zeroinitializer }, align 32
@sti_hqvdp_start_xp70._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.112, ptr @.str.17, i32 1011, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016[drm] HQVDP XP70 initialized\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sti_hqvdp_start_xp70\00", [43 x i8] zeroinitializer }, align 32
@sti_hqvdp_start_xp70._entry_ptr = internal global ptr @sti_hqvdp_start_xp70._entry, section ".printk_index", align 4
@.str.113 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"No change, not posting cmd\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Warning: no cmd, will skip frame\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drm FB:%d format:%.4s phys@:0x%lx\0A\00", [61 x i8] zeroinitializer }, align 32
@sti_hqvdp_atomic_update.__UNIQUE_ID_ddebug337 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.116, ptr @.str.17, ptr @.str.18, i8 1, i8 53, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.116 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sti_hqvdp_atomic_update\00", [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drm plane:%d not enabled\0A\00", [38 x i8] zeroinitializer }, align 32
@switch.table.hqvdp_dbg_dump_cmd = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.55, ptr @.str.53, ptr @.str.54], [20 x i8] zeroinitializer }, align 32
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1415, i32 11 }
@___asan_gen_.121 = private unnamed_addr constant [15 x i8] c"hqvdp_of_match\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1407, i32 34 }
@___asan_gen_.124 = private unnamed_addr constant [17 x i8] c"sti_hqvdp_driver\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1413, i32 24 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1356, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1360, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1369, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1374, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1379, i32 33 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1380, i32 42 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1382, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1391, i32 47 }
@___asan_gen_.151 = private unnamed_addr constant [14 x i8] c"sti_hqvdp_ops\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1344, i32 35 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1333, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant [30 x i8] c"sti_hqvdp_plane_helpers_funcs\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1282, i32 37 }
@___asan_gen_.160 = private unnamed_addr constant [24 x i8] c"hqvdp_supported_formats\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 362, i32 23 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1309, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant [24 x i8] c"sti_hqvdp_helpers_funcs\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1266, i32 44 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 862, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 802, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 808, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 819, i32 4 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 840, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 758, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 762, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 778, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant [20 x i8] c"hqvdp_debugfs_files\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 638, i32 29 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 570, i32 16 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 573, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 574, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 575, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 576, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 578, i32 14 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 580, i32 15 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 582, i32 15 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 584, i32 15 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 586, i32 15 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 588, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 589, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 592, i32 15 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 594, i32 15 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 595, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 598, i32 15 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 600, i32 15 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 601, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 602, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 603, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 604, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 606, i32 15 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 608, i32 15 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 614, i32 15 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 617, i32 17 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 626, i32 15 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 629, i32 17 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 482, i32 14 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 483, i32 16 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 483, i32 37 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 486, i32 15 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 489, i32 15 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 492, i32 15 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 495, i32 15 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 499, i32 37 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 500, i32 37 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 501, i32 37 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 502, i32 37 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 503, i32 37 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 505, i32 37 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 507, i32 16 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 510, i32 37 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 516, i32 14 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 517, i32 37 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 522, i32 37 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 524, i32 16 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 524, i32 33 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 526, i32 33 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 528, i32 33 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 530, i32 33 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 533, i32 16 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 533, i32 30 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 535, i32 17 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 537, i32 17 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 539, i32 30 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 545, i32 14 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 546, i32 16 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 549, i32 15 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 552, i32 15 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 555, i32 15 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 559, i32 37 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 560, i32 37 }
@___asan_gen_.394 = private unnamed_addr constant [18 x i8] c"coef_lut_a_legacy\00", align 1
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 23, i32 18 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 456, i32 10 }
@___asan_gen_.400 = private unnamed_addr constant [11 x i8] c"coef_lut_b\00", align 1
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 58, i32 18 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 458, i32 10 }
@___asan_gen_.406 = private unnamed_addr constant [20 x i8] c"coef_lut_c_y_legacy\00", align 1
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 93, i32 18 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 460, i32 10 }
@___asan_gen_.412 = private unnamed_addr constant [20 x i8] c"coef_lut_c_c_legacy\00", align 1
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 128, i32 18 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 462, i32 10 }
@___asan_gen_.418 = private unnamed_addr constant [20 x i8] c"coef_lut_d_y_legacy\00", align 1
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 163, i32 18 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 464, i32 10 }
@___asan_gen_.424 = private unnamed_addr constant [20 x i8] c"coef_lut_d_c_legacy\00", align 1
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 198, i32 18 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 466, i32 10 }
@___asan_gen_.430 = private unnamed_addr constant [20 x i8] c"coef_lut_e_y_legacy\00", align 1
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 233, i32 18 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 468, i32 10 }
@___asan_gen_.436 = private unnamed_addr constant [20 x i8] c"coef_lut_e_c_legacy\00", align 1
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 268, i32 18 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 470, i32 10 }
@___asan_gen_.442 = private unnamed_addr constant [20 x i8] c"coef_lut_f_y_legacy\00", align 1
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 303, i32 18 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 472, i32 10 }
@___asan_gen_.448 = private unnamed_addr constant [20 x i8] c"coef_lut_f_c_legacy\00", align 1
@___asan_gen_.449 = private unnamed_addr constant [39 x i8] c"../drivers/gpu/drm/sti/sti_hqvdp_lut.h\00", align 1
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.449, i32 338, i32 18 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 474, i32 10 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1052, i32 3 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1057, i32 3 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1072, i32 3 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1085, i32 4 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1093, i32 4 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1100, i32 2 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1103, i32 2 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 912, i32 3 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 917, i32 34 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 918, i32 3 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 924, i32 3 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 930, i32 3 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 935, i32 3 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 954, i32 3 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 966, i32 3 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1003, i32 3 }
@___asan_gen_.502 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1011, i32 2 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1143, i32 3 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1161, i32 3 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1181, i32 2 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1237, i32 2 }
@___asan_gen_.523 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.524 = private constant [35 x i8] c"../drivers/gpu/drm/sti/sti_hqvdp.c\00", align 1
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1253, i32 3 }
@___asan_gen_.526 = private unnamed_addr constant [32 x i8] c"switch.table.hqvdp_dbg_dump_cmd\00", align 1
@llvm.compiler.used = appending global [142 x ptr] [ptr @__UNIQUE_ID_author338, ptr @__UNIQUE_ID_description339, ptr @__UNIQUE_ID_file340, ptr @__UNIQUE_ID_license341, ptr @sti_hqvdp_start_xp70._entry, ptr @sti_hqvdp_start_xp70._entry_ptr, ptr @.str, ptr @hqvdp_of_match, ptr @sti_hqvdp_driver, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @sti_hqvdp_ops, ptr @.str.9, ptr @sti_hqvdp_plane_helpers_funcs, ptr @hqvdp_supported_formats, ptr @.str.10, ptr @sti_hqvdp_helpers_funcs, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @hqvdp_debugfs_files, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @coef_lut_a_legacy, ptr @.str.85, ptr @coef_lut_b, ptr @.str.86, ptr @coef_lut_c_y_legacy, ptr @.str.87, ptr @coef_lut_c_c_legacy, ptr @.str.88, ptr @coef_lut_d_y_legacy, ptr @.str.89, ptr @coef_lut_d_c_legacy, ptr @.str.90, ptr @coef_lut_e_y_legacy, ptr @.str.91, ptr @coef_lut_e_c_legacy, ptr @.str.92, ptr @coef_lut_f_y_legacy, ptr @.str.93, ptr @coef_lut_f_c_legacy, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @switch.table.hqvdp_dbg_dump_cmd], section "llvm.metadata"
@0 = internal global [137 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hqvdp_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_hqvdp_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_hqvdp_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_hqvdp_plane_helpers_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hqvdp_supported_formats to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_hqvdp_helpers_funcs to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hqvdp_debugfs_files to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_lut_a_legacy to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_lut_b to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_lut_c_y_legacy to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_lut_c_c_legacy to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_lut_d_y_legacy to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_lut_d_c_legacy to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_lut_e_y_legacy to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_lut_e_c_legacy to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_lut_f_y_legacy to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef_lut_f_c_legacy to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_hqvdp_start_xp70._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.hqvdp_dbg_dump_cmd to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sti_hqvdp_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.1) #8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 888, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev1, ptr %call.i, align 8
  %call3 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #8
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %1 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %call3, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %2
  %add.i = add i32 %sub.i, %4
  %call8 = tail call ptr @devm_ioremap(ptr noundef %dev1, i32 noundef %2, i32 noundef %add.i) #8
  %regs = getelementptr inbounds %struct.sti_hqvdp, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call8, ptr %regs, align 8
  %tobool10.not = icmp eq ptr %call8, null
  br i1 %tobool10.not, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #8
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  %call13 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.5) #8
  %clk = getelementptr inbounds %struct.sti_hqvdp, ptr %call.i, i32 0, i32 4
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call13, ptr %clk, align 8
  %call14 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.6) #8
  %clk_pix_main = getelementptr inbounds %struct.sti_hqvdp, ptr %call.i, i32 0, i32 5
  %7 = ptrtoint ptr %clk_pix_main to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call14, ptr %clk_pix_main, align 4
  %cmp.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  %cmp.i64 = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  %or.cond = select i1 %cmp.i, i1 true, i1 %cmp.i64
  br i1 %or.cond, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7) #8
  br label %cleanup

if.end20:                                         ; preds = %if.end12
  %call.i.i = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.5, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #8
  %reset = getelementptr inbounds %struct.sti_hqvdp, ptr %call.i, i32 0, i32 6
  %8 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i.i, ptr %reset, align 8
  %cmp.i65 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i65, label %if.end20.if.end27_crit_edge, label %if.then24

if.end20.if.end27_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %call26 = tail call i32 @reset_control_deassert(ptr noundef %call.i.i) #8
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end20.if.end27_crit_edge
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %9 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #8
  %11 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i66 = call i32 @__of_parse_phandle_with_args(ptr noundef %10, ptr noundef nonnull @.str.8, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i66)
  %tobool.not.i = icmp eq i32 %call.i66, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #8
  br label %if.end33

of_parse_phandle.exit:                            ; preds = %if.end27
  %12 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #8
  %tobool30.not = icmp eq ptr %13, null
  br i1 %tobool30.not, label %of_parse_phandle.exit.if.end33_crit_edge, label %if.then31

of_parse_phandle.exit.if.end33_crit_edge:         ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.then31:                                        ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call32 = call ptr @of_vtg_find(ptr noundef nonnull %13) #8
  %vtg = getelementptr inbounds %struct.sti_hqvdp, ptr %call.i, i32 0, i32 11
  %14 = ptrtoint ptr %vtg to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call32, ptr %vtg, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %of_parse_phandle.exit.if.end33_crit_edge, %of_parse_phandle.exit.thread
  %retval.0.i69 = phi ptr [ null, %of_parse_phandle.exit.thread ], [ %13, %if.then31 ], [ null, %of_parse_phandle.exit.if.end33_crit_edge ]
  call void @of_node_put(ptr noundef %retval.0.i69) #8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %15 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call35 = call i32 @component_add(ptr noundef %dev1, ptr noundef nonnull @sti_hqvdp_ops) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %if.then19, %if.then11, %if.then5, %if.then
  %retval.0 = phi i32 [ -6, %if.then19 ], [ %call35, %if.end33 ], [ -6, %if.then11 ], [ -6, %if.then5 ], [ -12, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sti_hqvdp_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @component_del(ptr noundef %dev, ptr noundef nonnull @sti_hqvdp_ops) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_vtg_find(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sti_hqvdp_bind(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %master, ptr noundef %data) #0 align 64 {
entry:
  %dma_addr.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.1) #8
  %drm_dev1 = getelementptr inbounds %struct.sti_hqvdp, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %drm_dev1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %data, ptr %drm_dev1, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i.i, align 4
  %plane.i = getelementptr inbounds %struct.sti_hqvdp, ptr %6, i32 0, i32 3
  %desc1.i = getelementptr inbounds %struct.sti_hqvdp, ptr %6, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %desc1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 512, ptr %desc1.i, align 8
  %status.i = getelementptr inbounds %struct.sti_hqvdp, ptr %6, i32 0, i32 3, i32 2
  %8 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %status.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma_addr.i.i) #8
  %9 = ptrtoint ptr %dma_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %dma_addr.i.i, align 4, !annotation !285
  %vtg_nb.i.i = getelementptr inbounds %struct.sti_hqvdp, ptr %6, i32 0, i32 7
  %10 = ptrtoint ptr %vtg_nb.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @sti_hqvdp_vtg_cb, ptr %vtg_nb.i.i, align 4
  %11 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %6, align 8
  %call.i.i.i = call ptr @dma_alloc_attrs(ptr noundef %12, i32 noundef 5600, ptr noundef nonnull %dma_addr.i.i, i32 noundef 3265, i32 noundef 4) #8
  %hqvdp_cmd.i.i = getelementptr inbounds %struct.sti_hqvdp, ptr %6, i32 0, i32 9
  %13 = ptrtoint ptr %hqvdp_cmd.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i.i.i, ptr %hqvdp_cmd.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.11) #8
  br label %sti_hqvdp_init.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %dma_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dma_addr.i.i, align 4
  %hqvdp_cmd_paddr.i.i = getelementptr inbounds %struct.sti_hqvdp, ptr %6, i32 0, i32 10
  %16 = ptrtoint ptr %hqvdp_cmd_paddr.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %hqvdp_cmd_paddr.i.i, align 8
  %17 = call ptr @memset(ptr %call.i.i.i, i32 0, i32 5600)
  br label %sti_hqvdp_init.exit.i

sti_hqvdp_init.exit.i:                            ; preds = %if.end.i.i, %if.then.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_addr.i.i) #8
  %call4.i = call i32 (ptr, ptr, i32, ptr, ptr, i32, ptr, i32, ptr, ...) @drm_universal_plane_init(ptr noundef %data, ptr noundef %plane.i, i32 noundef 1, ptr noundef nonnull @sti_hqvdp_plane_helpers_funcs, ptr noundef nonnull @hqvdp_supported_formats, i32 noundef 1, ptr noundef null, i32 noundef 0, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i, label %sti_hqvdp_create.exit, label %sti_hqvdp_create.exit.thread

sti_hqvdp_create.exit.thread:                     ; preds = %sti_hqvdp_init.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #8
  br label %if.then

sti_hqvdp_create.exit:                            ; preds = %sti_hqvdp_init.exit.i
  %helper_private.i.i = getelementptr inbounds %struct.sti_hqvdp, ptr %6, i32 0, i32 3, i32 0, i32 18
  %18 = ptrtoint ptr %helper_private.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @sti_hqvdp_helpers_funcs, ptr %helper_private.i.i, align 8
  call void @sti_plane_init_property(ptr noundef %plane.i, i32 noundef 0) #8
  %tobool.not = icmp eq ptr %plane.i, null
  br i1 %tobool.not, label %sti_hqvdp_create.exit.if.then_crit_edge, label %sti_hqvdp_create.exit.if.end_crit_edge

sti_hqvdp_create.exit.if.end_crit_edge:           ; preds = %sti_hqvdp_create.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

sti_hqvdp_create.exit.if.then_crit_edge:          ; preds = %sti_hqvdp_create.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %sti_hqvdp_create.exit.if.then_crit_edge, %sti_hqvdp_create.exit.thread
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.9) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %sti_hqvdp_create.exit.if.end_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sti_hqvdp_unbind(ptr nocapture noundef %dev, ptr nocapture noundef %master, ptr nocapture noundef %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_universal_plane_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sti_plane_init_property(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sti_hqvdp_vtg_cb(ptr noundef %nb, i32 noundef %evt, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %nb, i32 -852
  %evt.off = add i32 %evt, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %evt.off)
  %switch = icmp ult i32 %evt.off, 2
  br i1 %switch, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.12) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %plane = getelementptr i8, ptr %nb, i32 -836
  %status = getelementptr i8, ptr %nb, i32 -304
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp2 = icmp eq i32 %1, 3
  br i1 %cmp2, label %if.then3, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then3:                                         ; preds = %if.end
  %call = tail call ptr @sti_plane_to_str(ptr noundef %plane) #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.13, ptr noundef %call) #8
  %call.i = tail call ptr @sti_plane_to_str(ptr noundef %plane) #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.19, ptr noundef %call.i) #8
  %vtg.i = getelementptr i8, ptr %nb, i32 24
  %2 = ptrtoint ptr %vtg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vtg.i, align 4
  %call1.i = tail call i32 @sti_vtg_unregister_client(ptr noundef %3, ptr noundef %nb) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.then3.do.body.i_crit_edge, label %if.then.i

if.then3.do.body.i_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.20) #8
  br label %do.body.i

do.body.i:                                        ; preds = %if.then.i, %if.then3.do.body.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !286
  tail call void @arm_heavy_mb() #8
  %regs.i = getelementptr i8, ptr %nb, i32 -844
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %5, i32 933920
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !287
  br label %for.body.i

for.body.i:                                       ; preds = %if.end8.i.for.body.i_crit_edge, %do.body.i
  %i.022.i = phi i32 [ 0, %do.body.i ], [ %inc.i, %if.end8.i.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 8
  %add.ptr3.i = getelementptr i8, ptr %7, i32 933900
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #8, !srcloc !288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !289
  %9 = and i32 %8, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool6.not.i = icmp eq i32 %9, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

if.end8.i:                                        ; preds = %for.body.i
  tail call void @msleep(i32 noundef 20) #8
  %inc.i = add nuw nsw i32 %i.022.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 50
  br i1 %exitcond.not.i, label %if.end8.i.for.end.i_crit_edge, label %if.end8.i.for.body.i_crit_edge

if.end8.i.for.body.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end8.i.for.end.i_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %if.end8.i.for.end.i_crit_edge, %for.body.i.for.end.i_crit_edge
  %i.0.lcssa.i = phi i32 [ %i.022.i, %for.body.i.for.end.i_crit_edge ], [ 50, %if.end8.i.for.end.i_crit_edge ]
  %clk_pix_main.i = getelementptr i8, ptr %nb, i32 -8
  %10 = ptrtoint ptr %clk_pix_main.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk_pix_main.i, align 4
  tail call void @clk_disable(ptr noundef %11) #8
  tail call void @clk_unprepare(ptr noundef %11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %i.0.lcssa.i)
  %cmp9.i = icmp eq i32 %i.0.lcssa.i, 50
  br i1 %cmp9.i, label %if.then10.i, label %for.end.i.sti_hqvdp_disable.exit_crit_edge

for.end.i.sti_hqvdp_disable.exit_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sti_hqvdp_disable.exit

if.then10.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.21) #8
  br label %sti_hqvdp_disable.exit

sti_hqvdp_disable.exit:                           ; preds = %if.then10.i, %for.end.i.sti_hqvdp_disable.exit_crit_edge
  %12 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4, ptr %status, align 4
  %vtg_registered.i = getelementptr i8, ptr %nb, i32 29
  %13 = ptrtoint ptr %vtg_registered.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %vtg_registered.i, align 1
  br label %if.end5

if.end5:                                          ; preds = %sti_hqvdp_disable.exit, %if.end.if.end5_crit_edge
  %btm_field_pending = getelementptr i8, ptr %nb, i32 12
  %14 = ptrtoint ptr %btm_field_pending to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %btm_field_pending, align 8, !range !290
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  br i1 %tobool.not, label %if.end5.cleanup_crit_edge, label %if.then6

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then6:                                         ; preds = %if.end5
  %hqvdp_cmd_paddr.i = getelementptr i8, ptr %nb, i32 20
  %16 = ptrtoint ptr %hqvdp_cmd_paddr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hqvdp_cmd_paddr.i, align 8
  %regs.i66 = getelementptr i8, ptr %nb, i32 -844
  %18 = ptrtoint ptr %regs.i66 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i66, align 8
  %add.ptr.i67 = getelementptr i8, ptr %19, i32 933924
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i67) #8, !srcloc !288
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !291
  %22 = ptrtoint ptr %regs.i66 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i66, align 8
  %add.ptr5.i = getelementptr i8, ptr %23, i32 933920
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #8, !srcloc !288
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !292
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %21)
  %cmp9.not.i = icmp eq i32 %17, %21
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %25)
  %cmp10.not.i = icmp eq i32 %17, %25
  %or.cond.i = select i1 %cmp9.not.i, i1 true, i1 %cmp10.not.i
  br i1 %or.cond.i, label %if.end.i, label %if.then6.sti_hqvdp_get_free_cmd.exit_crit_edge

if.then6.sti_hqvdp_get_free_cmd.exit_crit_edge:   ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %sti_hqvdp_get_free_cmd.exit

if.end.i:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  %add.i = add i32 %17, 2800
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %21)
  %cmp9.not.1.i = icmp eq i32 %add.i, %21
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %25)
  %cmp10.not.1.i = icmp eq i32 %add.i, %25
  %or.cond.1.i = select i1 %cmp9.not.1.i, i1 true, i1 %cmp10.not.1.i
  %spec.select.i = select i1 %or.cond.1.i, i32 -1, i32 2800
  br label %sti_hqvdp_get_free_cmd.exit

sti_hqvdp_get_free_cmd.exit:                      ; preds = %if.end.i, %if.then6.sti_hqvdp_get_free_cmd.exit_crit_edge
  %retval.0.i68 = phi i32 [ 0, %if.then6.sti_hqvdp_get_free_cmd.exit_crit_edge ], [ %spec.select.i, %if.end.i ]
  %26 = ptrtoint ptr %hqvdp_cmd_paddr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %hqvdp_cmd_paddr.i, align 8
  %28 = ptrtoint ptr %regs.i66 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs.i66, align 8
  %add.ptr.i71 = getelementptr i8, ptr %29, i32 933924
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i71) #8, !srcloc !288
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !293
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %31)
  %cmp2.i = icmp eq i32 %27, %31
  %add.i72 = add i32 %27, 2800
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i72, i32 %31)
  %cmp2.1.i = icmp eq i32 %add.i72, %31
  %spec.select.i73 = select i1 %cmp2.1.i, i32 2800, i32 -1
  %retval.0.i74 = select i1 %cmp2.i, i32 0, i32 %spec.select.i73
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i68)
  %cmp9 = icmp eq i32 %retval.0.i68, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i74)
  %cmp10 = icmp eq i32 %retval.0.i74, -1
  %or.cond = select i1 %cmp9, i1 true, i1 %cmp10
  br i1 %or.cond, label %if.then11, label %if.end12

if.then11:                                        ; preds = %sti_hqvdp_get_free_cmd.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.14) #8
  br label %cleanup

if.end12:                                         ; preds = %sti_hqvdp_get_free_cmd.exit
  %hqvdp_cmd = getelementptr i8, ptr %nb, i32 16
  %32 = ptrtoint ptr %hqvdp_cmd to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hqvdp_cmd, align 4
  %add.ptr13 = getelementptr i8, ptr %33, i32 %retval.0.i68
  %add.ptr15 = getelementptr i8, ptr %33, i32 %retval.0.i74
  %34 = call ptr @memcpy(ptr %add.ptr13, ptr %add.ptr15, i32 2800)
  %35 = ptrtoint ptr %add.ptr13 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %add.ptr13, align 4
  %luma_src_pitch = getelementptr inbounds %struct.sti_hqvdp_top, ptr %add.ptr13, i32 0, i32 12
  %36 = ptrtoint ptr %luma_src_pitch to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %luma_src_pitch, align 4
  %div64 = lshr i32 %37, 1
  %current_luma = getelementptr inbounds %struct.sti_hqvdp_top, ptr %add.ptr13, i32 0, i32 2
  %38 = ptrtoint ptr %current_luma to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %current_luma, align 4
  %add = add i32 %39, %div64
  store i32 %add, ptr %current_luma, align 4
  %chroma_src_pitch = getelementptr inbounds %struct.sti_hqvdp_top, ptr %add.ptr13, i32 0, i32 16
  %40 = ptrtoint ptr %chroma_src_pitch to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %chroma_src_pitch, align 4
  %div1965 = lshr i32 %41, 1
  %current_chroma = getelementptr inbounds %struct.sti_hqvdp_top, ptr %add.ptr13, i32 0, i32 6
  %42 = ptrtoint ptr %current_chroma to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %current_chroma, align 4
  %add21 = add i32 %43, %div1965
  store i32 %add21, ptr %current_chroma, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !294
  tail call void @arm_heavy_mb() #8
  %44 = ptrtoint ptr %hqvdp_cmd_paddr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %hqvdp_cmd_paddr.i, align 8
  %add22 = add i32 %45, %retval.0.i68
  %46 = tail call i32 @llvm.bswap.i32(i32 %add22)
  %47 = ptrtoint ptr %regs.i66 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs.i66, align 8
  %add.ptr23 = getelementptr i8, ptr %48, i32 933920
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %46) #8, !srcloc !287
  %49 = ptrtoint ptr %btm_field_pending to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %btm_field_pending, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sti_hqvdp_vtg_cb.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sti_hqvdp_vtg_cb, %if.then31)) #8
          to label %do.end35 [label %if.then31], !srcloc !295

if.then31:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %add.ptr, align 8
  %52 = ptrtoint ptr %hqvdp_cmd_paddr.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %hqvdp_cmd_paddr.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sti_hqvdp_vtg_cb.__UNIQUE_ID_ddebug320, ptr noundef %51, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.16, i32 noundef %53) #8
  br label %do.end35

do.end35:                                         ; preds = %if.then31, %if.end12
  tail call void @sti_plane_update_fps(ptr noundef %plane, i1 noundef zeroext false, i1 noundef zeroext true) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end35, %if.then11, %if.end5.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ -16, %if.then11 ], [ 0, %do.end35 ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sti_plane_to_str(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sti_plane_update_fps(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sti_vtg_unregister_client(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

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
define internal i32 @sti_hqvdp_late_register(ptr noundef %drm_plane) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr3 = getelementptr i8, ptr %drm_plane, i32 -16
  %0 = ptrtoint ptr %drm_plane to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drm_plane, align 8
  %primary = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %primary, align 4
  store ptr %add.ptr3, ptr getelementptr inbounds ([1 x %struct.drm_info_list], ptr @hqvdp_debugfs_files, i32 0, i32 0, i32 3), align 4
  %debugfs_root.i = getelementptr inbounds %struct.drm_minor, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %debugfs_root.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %debugfs_root.i, align 4
  tail call void @drm_debugfs_create_files(ptr noundef nonnull @hqvdp_debugfs_files, i32 noundef 1, ptr noundef %5, ptr noundef %3) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_debugfs_create_files(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hqvdp_dbg_show(ptr noundef %s, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %plane = getelementptr inbounds %struct.sti_hqvdp, ptr %5, i32 0, i32 3
  %call = tail call ptr @sti_plane_to_str(ptr noundef %plane) #8
  %regs = getelementptr inbounds %struct.sti_hqvdp, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.22, ptr noundef %call, ptr noundef %7) #8
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %9, i32 933888
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !288
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !296
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef %11) #8
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 8
  %add.ptr8 = getelementptr i8, ptr %13, i32 933892
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #8, !srcloc !288
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !297
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.25, i32 noundef %15) #8
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 8
  %add.ptr15 = getelementptr i8, ptr %17, i32 933896
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #8, !srcloc !288
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !298
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.26, i32 noundef %19) #8
  %20 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs, align 8
  %add.ptr22 = getelementptr i8, ptr %21, i32 933900
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22) #8, !srcloc !288
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !299
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.27, i32 noundef %23) #8
  %24 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs, align 8
  %add.ptr29 = getelementptr i8, ptr %25, i32 933900
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr29) #8, !srcloc !288
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !300
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.28) #8
  %and = and i32 %27, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end42_crit_edge

entry.if.end42_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

if.else:                                          ; preds = %entry
  %and33 = and i32 %27, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.else36, label %if.else.if.end42_crit_edge

if.else.if.end42_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

if.else36:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %and37 = and i32 %27, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  %.str.32..str.31 = select i1 %tobool38.not, ptr @.str.32, ptr @.str.31
  br label %if.end42

if.end42:                                         ; preds = %if.else36, %if.else.if.end42_crit_edge, %entry.if.end42_crit_edge
  %.str.30.sink = phi ptr [ @.str.29, %entry.if.end42_crit_edge ], [ @.str.30, %if.else.if.end42_crit_edge ], [ %.str.32..str.31, %if.else36 ]
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull %.str.30.sink) #8
  %28 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs, align 8
  %add.ptr46 = getelementptr i8, ptr %29, i32 933904
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr46) #8, !srcloc !288
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !301
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.33, i32 noundef %31) #8
  %32 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs, align 8
  %add.ptr53 = getelementptr i8, ptr %33, i32 933908
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr53) #8, !srcloc !288
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !302
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.34, i32 noundef %35) #8
  %36 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs, align 8
  %add.ptr60 = getelementptr i8, ptr %37, i32 933908
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr60) #8, !srcloc !288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !303
  %39 = and i32 %38, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool65.not = icmp eq i32 %39, 0
  %.str.36..str.35 = select i1 %tobool65.not, ptr @.str.36, ptr @.str.35
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull %.str.36..str.35) #8
  %40 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs, align 8
  %add.ptr72 = getelementptr i8, ptr %41, i32 933912
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr72) #8, !srcloc !288
  %43 = tail call i32 @llvm.bswap.i32(i32 %42)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !304
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.37, i32 noundef %43) #8
  %44 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs, align 8
  %add.ptr79 = getelementptr i8, ptr %45, i32 933912
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr79) #8, !srcloc !288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !305
  %47 = and i32 %46, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool84.not = icmp eq i32 %47, 0
  %.str.39.sink = select i1 %tobool84.not, ptr @.str.39, ptr @.str.38
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull %.str.39.sink) #8
  %48 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs, align 8
  %add.ptr91 = getelementptr i8, ptr %49, i32 933916
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr91) #8, !srcloc !288
  %51 = tail call i32 @llvm.bswap.i32(i32 %50)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !306
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.40, i32 noundef %51) #8
  %52 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs, align 8
  %add.ptr98 = getelementptr i8, ptr %53, i32 933920
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr98) #8, !srcloc !288
  %55 = tail call i32 @llvm.bswap.i32(i32 %54)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !307
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.41, i32 noundef %55) #8
  %56 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regs, align 8
  %add.ptr105 = getelementptr i8, ptr %57, i32 933924
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr105) #8, !srcloc !288
  %59 = tail call i32 @llvm.bswap.i32(i32 %58)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !308
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.42, i32 noundef %59) #8
  %60 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regs, align 8
  %add.ptr112 = getelementptr i8, ptr %61, i32 933928
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr112) #8, !srcloc !288
  %63 = tail call i32 @llvm.bswap.i32(i32 %62)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !309
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.43, i32 noundef %63) #8
  %64 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regs, align 8
  %add.ptr119 = getelementptr i8, ptr %65, i32 933928
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr119) #8, !srcloc !288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !310
  %67 = and i32 %66, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool124.not = icmp eq i32 %67, 0
  %.str.45.sink = select i1 %tobool124.not, ptr @.str.44, ptr @.str.45
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull %.str.45.sink) #8
  %68 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regs, align 8
  %add.ptr131 = getelementptr i8, ptr %69, i32 933924
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr131) #8, !srcloc !288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !311
  %hqvdp_cmd_paddr.i = getelementptr inbounds %struct.sti_hqvdp, ptr %5, i32 0, i32 10
  %71 = ptrtoint ptr %hqvdp_cmd_paddr.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %hqvdp_cmd_paddr.i, align 8
  %73 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regs, align 8
  %add.ptr.i = getelementptr i8, ptr %74, i32 933924
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !288
  %76 = tail call i32 @llvm.bswap.i32(i32 %75) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !293
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %76)
  %cmp2.i = icmp eq i32 %72, %76
  %add.i = add i32 %72, 2800
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %76)
  %cmp2.1.i = icmp eq i32 %add.i, %76
  %spec.select.i = select i1 %cmp2.1.i, i32 2800, i32 -1
  %retval.0.i = select i1 %cmp2.i, i32 0, i32 %spec.select.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i)
  %cmp = icmp eq i32 %retval.0.i, -1
  br i1 %cmp, label %if.then136, label %if.else137

if.then136:                                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.46) #8
  br label %if.end139

if.else137:                                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  %77 = tail call i32 @llvm.bswap.i32(i32 %70)
  %hqvdp_cmd = getelementptr inbounds %struct.sti_hqvdp, ptr %5, i32 0, i32 9
  %78 = ptrtoint ptr %hqvdp_cmd to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %hqvdp_cmd, align 4
  %add.ptr138 = getelementptr i8, ptr %79, i32 %retval.0.i
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.47, i32 noundef %77, ptr noundef %add.ptr138) #8
  tail call fastcc void @hqvdp_dbg_dump_cmd(ptr noundef %s, ptr noundef %add.ptr138)
  br label %if.end139

if.end139:                                        ; preds = %if.else137, %if.then136
  %80 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %regs, align 8
  %add.ptr143 = getelementptr i8, ptr %81, i32 933920
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr143) #8, !srcloc !288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !312
  %83 = ptrtoint ptr %hqvdp_cmd_paddr.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %hqvdp_cmd_paddr.i, align 8
  %85 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %regs, align 8
  %add.ptr.i217 = getelementptr i8, ptr %86, i32 933920
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i217) #8, !srcloc !288
  %88 = tail call i32 @llvm.bswap.i32(i32 %87) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !313
  call void @__sanitizer_cov_trace_cmp4(i32 %84, i32 %88)
  %cmp2.i218 = icmp eq i32 %84, %88
  %add.i219 = add i32 %84, 2800
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i219, i32 %88)
  %cmp2.1.i220 = icmp eq i32 %add.i219, %88
  %spec.select.i221 = select i1 %cmp2.1.i220, i32 2800, i32 -1
  %retval.0.i222 = select i1 %cmp2.i218, i32 0, i32 %spec.select.i221
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i222)
  %cmp148 = icmp eq i32 %retval.0.i222, -1
  br i1 %cmp148, label %if.then149, label %if.else150

if.then149:                                       ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.48) #8
  br label %if.end153

if.else150:                                       ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #10
  %89 = tail call i32 @llvm.bswap.i32(i32 %82)
  %hqvdp_cmd151 = getelementptr inbounds %struct.sti_hqvdp, ptr %5, i32 0, i32 9
  %90 = ptrtoint ptr %hqvdp_cmd151 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %hqvdp_cmd151, align 4
  %add.ptr152 = getelementptr i8, ptr %91, i32 %retval.0.i222
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.49, i32 noundef %89, ptr noundef %add.ptr152) #8
  tail call fastcc void @hqvdp_dbg_dump_cmd(ptr noundef %s, ptr noundef %add.ptr152)
  br label %if.end153

if.end153:                                        ; preds = %if.else150, %if.then149
  tail call void @seq_putc(ptr noundef %s, i8 noundef zeroext 10) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hqvdp_dbg_dump_cmd(ptr noundef %s, ptr nocapture noundef readonly %c) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.50) #8
  %0 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %c, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52, i32 noundef %1) #8
  %2 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %c, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %4 = icmp ult i32 %3, 3
  br i1 %4, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.hqvdp_dbg_dump_cmd, i32 0, i32 %3
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %.str.56.sink = phi ptr [ %switch.load, %switch.lookup ], [ @.str.56, %entry.sw.epilog_crit_edge ]
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull %.str.56.sink) #8
  %mem_format = getelementptr inbounds %struct.sti_hqvdp_top, ptr %c, i32 0, i32 1
  %6 = ptrtoint ptr %mem_format to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mem_format, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.57, i32 noundef %7) #8
  %current_luma = getelementptr inbounds %struct.sti_hqvdp_top, ptr %c, i32 0, i32 2
  %8 = ptrtoint ptr %current_luma to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %current_luma, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.58, i32 noundef %9) #8
  %current_chroma = getelementptr inbounds %struct.sti_hqvdp_top, ptr %c, i32 0, i32 6
  %10 = ptrtoint ptr %current_chroma to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %current_chroma, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.59, i32 noundef %11) #8
  %luma_src_pitch = getelementptr inbounds %struct.sti_hqvdp_top, ptr %c, i32 0, i32 12
  %12 = ptrtoint ptr %luma_src_pitch to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %luma_src_pitch, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.60, i32 noundef %13) #8
  %chroma_src_pitch = getelementptr inbounds %struct.sti_hqvdp_top, ptr %c, i32 0, i32 16
  %14 = ptrtoint ptr %chroma_src_pitch to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %chroma_src_pitch, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.61, i32 noundef %15) #8
  %input_frame_size = getelementptr inbounds %struct.sti_hqvdp_top, ptr %c, i32 0, i32 22
  %16 = ptrtoint ptr %input_frame_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %input_frame_size, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.62, i32 noundef %17) #8
  %18 = ptrtoint ptr %input_frame_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %input_frame_size, align 4
  %and = and i32 %19, 65535
  %shr = lshr i32 %19, 16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.63, i32 noundef %and, i32 noundef %shr) #8
  %input_viewport_size = getelementptr inbounds %struct.sti_hqvdp_top, ptr %c, i32 0, i32 25
  %20 = ptrtoint ptr %input_viewport_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %input_viewport_size, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.64, i32 noundef %21) #8
  %22 = ptrtoint ptr %input_viewport_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %input_viewport_size, align 4
  %and18 = and i32 %23, 65535
  %shr21 = lshr i32 %23, 16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.63, i32 noundef %and18, i32 noundef %shr21) #8
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.65) #8
  %output_picture_size = getelementptr inbounds %struct.sti_hqvdp_cmd, ptr %c, i32 0, i32 4, i32 1
  %24 = ptrtoint ptr %output_picture_size to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %output_picture_size, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.66, i32 noundef %25) #8
  %26 = ptrtoint ptr %output_picture_size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %output_picture_size, align 4
  %and24 = and i32 %27, 65535
  %shr27 = lshr i32 %27, 16
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.63, i32 noundef %and24, i32 noundef %shr27) #8
  %param_ctrl = getelementptr inbounds %struct.sti_hqvdp_cmd, ptr %c, i32 0, i32 4, i32 4
  %28 = ptrtoint ptr %param_ctrl to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %param_ctrl, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.67, i32 noundef %29) #8
  %yh_coef = getelementptr inbounds %struct.sti_hqvdp_cmd, ptr %c, i32 0, i32 4, i32 5
  %call = tail call fastcc ptr @hqvdp_dbg_get_lut(ptr noundef %yh_coef)
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.69, ptr noundef nonnull %call) #8
  %ch_coef = getelementptr inbounds %struct.sti_hqvdp_cmd, ptr %c, i32 0, i32 4, i32 6
  %call32 = tail call fastcc ptr @hqvdp_dbg_get_lut(ptr noundef %ch_coef)
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.70, ptr noundef nonnull %call32) #8
  %yv_coef = getelementptr inbounds %struct.sti_hqvdp_cmd, ptr %c, i32 0, i32 4, i32 7
  %call35 = tail call fastcc ptr @hqvdp_dbg_get_lut(ptr noundef %yv_coef)
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.71, ptr noundef nonnull %call35) #8
  %cv_coef = getelementptr inbounds %struct.sti_hqvdp_cmd, ptr %c, i32 0, i32 4, i32 8
  %call38 = tail call fastcc ptr @hqvdp_dbg_get_lut(ptr noundef %cv_coef)
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.72, ptr noundef nonnull %call38) #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.74) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %and24, i32 %and18)
  %cmp = icmp ugt i32 %and24, %and18
  %. = select i1 %cmp, i32 %27, i32 %23
  %.133 = select i1 %cmp, i32 %23, i32 %27
  %.str.75..str.76 = select i1 %cmp, ptr @.str.75, ptr @.str.76
  %div39.lhs.trunc = trunc i32 %. to i16
  %div39.rhs.trunc = trunc i32 %.133 to i16
  %div39130 = udiv i16 %div39.lhs.trunc, %div39.rhs.trunc
  %div39.zext = zext i16 %div39130 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull %.str.75..str.76, i32 noundef %div39.zext) #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.77) #8
  call void @__sanitizer_cov_trace_cmp4(i32 %shr27, i32 %shr21)
  %cmp40 = icmp ugt i32 %shr27, %shr21
  %30 = call i32 @llvm.umax.i32(i32 %shr27, i32 %shr21)
  %31 = call i32 @llvm.umin.i32(i32 %shr27, i32 %shr21)
  %.str.76.sink132 = select i1 %cmp40, ptr @.str.75, ptr @.str.76
  %div44.lhs.trunc = trunc i32 %30 to i16
  %div44.rhs.trunc = trunc i32 %31 to i16
  %div44129 = udiv i16 %div44.lhs.trunc, %div44.rhs.trunc
  %div44.zext = zext i16 %div44129 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull %.str.76.sink132, i32 noundef %div44.zext) #8
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.78) #8
  %csdi = getelementptr inbounds %struct.sti_hqvdp_cmd, ptr %c, i32 0, i32 3
  %32 = ptrtoint ptr %csdi to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %csdi, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.52, i32 noundef %33) #8
  %34 = ptrtoint ptr %csdi to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %csdi, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %35)
  %switch.selectcmp = icmp eq i32 %35, 22
  %switch.select = select i1 %switch.selectcmp, ptr @.str.81, ptr @.str.82
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %switch.selectcmp134 = icmp eq i32 %35, 0
  %switch.select135 = select i1 %switch.selectcmp134, ptr @.str.80, ptr %switch.select
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull %switch.select135) #8
  %config254 = getelementptr inbounds %struct.sti_hqvdp_cmd, ptr %c, i32 0, i32 3, i32 1
  %36 = ptrtoint ptr %config254 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %config254, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.83, i32 noundef %37) #8
  %dcdi_config = getelementptr inbounds %struct.sti_hqvdp_cmd, ptr %c, i32 0, i32 3, i32 2
  %38 = ptrtoint ptr %dcdi_config to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dcdi_config, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.84, i32 noundef %39) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc nonnull ptr @hqvdp_dbg_get_lut(ptr nocapture noundef readonly %coef) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(16) %coef, ptr noundef nonnull dereferenceable(16) @coef_lut_a_legacy, i32 16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %bcmp46 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %coef, ptr noundef nonnull dereferenceable(16) @coef_lut_b, i32 16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp46)
  %tobool2.not = icmp eq i32 %bcmp46, 0
  br i1 %tobool2.not, label %if.end.return_crit_edge, label %if.end4

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end4:                                          ; preds = %if.end
  %bcmp47 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %coef, ptr noundef nonnull dereferenceable(16) @coef_lut_c_y_legacy, i32 16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp47)
  %tobool6.not = icmp eq i32 %bcmp47, 0
  br i1 %tobool6.not, label %if.end4.return_crit_edge, label %if.end8

if.end4.return_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end8:                                          ; preds = %if.end4
  %bcmp48 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %coef, ptr noundef nonnull dereferenceable(16) @coef_lut_c_c_legacy, i32 16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp48)
  %tobool10.not = icmp eq i32 %bcmp48, 0
  br i1 %tobool10.not, label %if.end8.return_crit_edge, label %if.end12

if.end8.return_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end12:                                         ; preds = %if.end8
  %bcmp49 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %coef, ptr noundef nonnull dereferenceable(16) @coef_lut_d_y_legacy, i32 16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp49)
  %tobool14.not = icmp eq i32 %bcmp49, 0
  br i1 %tobool14.not, label %if.end12.return_crit_edge, label %if.end16

if.end12.return_crit_edge:                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end16:                                         ; preds = %if.end12
  %bcmp50 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %coef, ptr noundef nonnull dereferenceable(16) @coef_lut_d_c_legacy, i32 16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp50)
  %tobool18.not = icmp eq i32 %bcmp50, 0
  br i1 %tobool18.not, label %if.end16.return_crit_edge, label %if.end20

if.end16.return_crit_edge:                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end20:                                         ; preds = %if.end16
  %bcmp51 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %coef, ptr noundef nonnull dereferenceable(16) @coef_lut_e_y_legacy, i32 16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp51)
  %tobool22.not = icmp eq i32 %bcmp51, 0
  br i1 %tobool22.not, label %if.end20.return_crit_edge, label %if.end24

if.end20.return_crit_edge:                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end24:                                         ; preds = %if.end20
  %bcmp52 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %coef, ptr noundef nonnull dereferenceable(16) @coef_lut_e_c_legacy, i32 16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp52)
  %tobool26.not = icmp eq i32 %bcmp52, 0
  br i1 %tobool26.not, label %if.end24.return_crit_edge, label %if.end28

if.end24.return_crit_edge:                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end28:                                         ; preds = %if.end24
  %bcmp53 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %coef, ptr noundef nonnull dereferenceable(16) @coef_lut_f_y_legacy, i32 16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp53)
  %tobool30.not = icmp eq i32 %bcmp53, 0
  br i1 %tobool30.not, label %if.end28.return_crit_edge, label %if.end32

if.end28.return_crit_edge:                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end32:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  %bcmp54 = tail call i32 @bcmp(ptr noundef dereferenceable(16) %coef, ptr noundef nonnull dereferenceable(16) @coef_lut_f_c_legacy, i32 16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp54)
  %tobool34.not = icmp eq i32 %bcmp54, 0
  %.str.94..str.82 = select i1 %tobool34.not, ptr @.str.94, ptr @.str.82
  br label %return

return:                                           ; preds = %if.end32, %if.end28.return_crit_edge, %if.end24.return_crit_edge, %if.end20.return_crit_edge, %if.end16.return_crit_edge, %if.end12.return_crit_edge, %if.end8.return_crit_edge, %if.end4.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi ptr [ @.str.85, %entry.return_crit_edge ], [ @.str.86, %if.end.return_crit_edge ], [ @.str.87, %if.end4.return_crit_edge ], [ @.str.88, %if.end8.return_crit_edge ], [ @.str.89, %if.end12.return_crit_edge ], [ @.str.90, %if.end16.return_crit_edge ], [ @.str.91, %if.end20.return_crit_edge ], [ @.str.92, %if.end24.return_crit_edge ], [ @.str.93, %if.end28.return_crit_edge ], [ %.str.94..str.82, %if.end32 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sti_hqvdp_atomic_check(ptr noundef %drm_plane, ptr noundef %state) #0 align 64 {
entry:
  %firmware.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
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
  %add.ptr3 = getelementptr i8, ptr %drm_plane, i32 -16
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
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call7 = tail call ptr @drm_atomic_get_crtc_state(ptr noundef %state, ptr noundef nonnull %7) #8
  %mode8 = getelementptr inbounds %struct.drm_crtc_state, ptr %call7, i32 0, i32 8
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
  %hdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %call7, i32 0, i32 8, i32 1
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
  %vdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %call7, i32 0, i32 8, i32 6
  %21 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %vdisplay, align 2
  %conv24 = zext i16 %22 to i32
  %sub25 = sub i32 %conv24, %13
  %23 = tail call i32 @llvm.umin.i32(i32 %20, i32 %sub25)
  %src_x33 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 8
  %24 = ptrtoint ptr %src_x33 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %src_x33, align 4
  %shr = lshr i32 %25, 16
  %src_y34 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 9
  %26 = ptrtoint ptr %src_y34 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %src_y34, align 4
  %shr35 = lshr i32 %27, 16
  %src_w36 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 11
  %28 = ptrtoint ptr %src_w36 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %src_w36, align 4
  %shr37 = lshr i32 %29, 16
  %src_h38 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 10
  %30 = ptrtoint ptr %src_h38 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %src_h38, align 4
  %shr39 = lshr i32 %31, 16
  %32 = ptrtoint ptr %mode8 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mode8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool40.not = icmp eq i32 %33, 0
  br i1 %tobool40.not, label %if.end.if.end43_crit_edge, label %land.lhs.true

if.end.if.end43_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

land.lhs.true:                                    ; preds = %if.end
  %htotal.i = getelementptr inbounds %struct.drm_crtc_state, ptr %call7, i32 0, i32 8, i32 4
  %34 = ptrtoint ptr %htotal.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %htotal.i, align 2
  %clk.i = getelementptr i8, ptr %drm_plane, i32 824
  %36 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %clk.i, align 8
  %call.i = tail call i32 @clk_get_rate(ptr noundef %37) #8
  %38 = tail call i32 @llvm.smax.i32(i32 %shr37, i32 %18) #8
  %conv.i = zext i16 %35 to i32
  %div.i = udiv i32 %call.i, 1000000
  %mul.i = mul nuw nsw i32 %div.i, %conv.i
  %39 = ptrtoint ptr %mode8 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mode8, align 4
  %mul2.i = mul i32 %40, %38
  %div3.i = sdiv i32 %mul2.i, 1000
  %div4.i = udiv i32 %mul.i, %div3.i
  %add.i = add i32 %23, -1
  %sub.i = add i32 %add.i, %shr39
  %div5.i = sdiv i32 %sub.i, %23
  call void @__sanitizer_cov_trace_cmp4(i32 %div5.i, i32 %div4.i)
  %cmp6.i.not = icmp ugt i32 %div5.i, %div4.i
  br i1 %cmp6.i.not, label %if.then42, label %land.lhs.true.if.end43_crit_edge

land.lhs.true.if.end43_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end43

if.then42:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.95) #8
  br label %cleanup

if.end43:                                         ; preds = %land.lhs.true.if.end43_crit_edge, %if.end.if.end43_crit_edge
  %call44 = tail call ptr @drm_fb_cma_get_gem_obj(ptr noundef nonnull %9, i32 noundef 0) #8
  %tobool45.not = icmp eq ptr %call44, null
  br i1 %tobool45.not, label %if.then46, label %if.end47

if.then46:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.96) #8
  br label %cleanup

if.end47:                                         ; preds = %if.end43
  %add = add i32 %18, 1
  %and = and i32 %add, -2
  %add48 = add i32 %23, 1
  %and49 = and i32 %add48, -2
  %41 = add i32 %29, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 -533725184, i32 %41)
  %42 = icmp ult i32 %41, -533725184
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %31)
  %cmp56 = icmp ugt i32 %31, 268435455
  %or.cond175 = select i1 %42, i1 true, i1 %cmp56
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %31)
  %cmp59 = icmp ult i32 %31, 1048576
  %or.cond176 = select i1 %or.cond175, i1 true, i1 %cmp59
  call void @__sanitizer_cov_trace_const_cmp4(i32 8191, i32 %and)
  %cmp62 = icmp sgt i32 %and, 8191
  %or.cond177 = select i1 %or.cond176, i1 true, i1 %cmp62
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %and)
  %cmp65 = icmp slt i32 %and, 48
  %or.cond178 = select i1 %or.cond177, i1 true, i1 %cmp65
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %and49)
  %cmp68 = icmp sgt i32 %and49, 4095
  %or.cond179 = select i1 %or.cond178, i1 true, i1 %cmp68
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %and49)
  %cmp71 = icmp slt i32 %and49, 16
  %or.cond180 = select i1 %or.cond179, i1 true, i1 %cmp71
  br i1 %or.cond180, label %if.then73, label %if.end74

if.then73:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.97, i32 noundef %shr37, i32 noundef %shr39, i32 noundef %and, i32 noundef %and49) #8
  br label %cleanup

if.end74:                                         ; preds = %if.end47
  %xp70_initialized = getelementptr i8, ptr %drm_plane, i32 864
  %43 = ptrtoint ptr %xp70_initialized to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %xp70_initialized, align 8, !range !290
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool75.not = icmp eq i8 %44, 0
  br i1 %tobool75.not, label %if.then76, label %if.end74.if.end77_crit_edge

if.end74.if.end77_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77

if.then76:                                        ; preds = %if.end74
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %firmware.i) #8
  %45 = ptrtoint ptr %firmware.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr inttoptr (i32 -1 to ptr), ptr %firmware.i, align 4, !annotation !285
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.1) #8
  %46 = ptrtoint ptr %xp70_initialized to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %xp70_initialized, align 8, !range !290
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool.not.i = icmp eq i8 %47, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.102) #8
  br label %sti_hqvdp_start_xp70.exit

if.end.i:                                         ; preds = %if.then76
  %48 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %add.ptr3, align 8
  %call.i181 = call i32 @request_firmware(ptr noundef nonnull %firmware.i, ptr noundef nonnull @.str.103, ptr noundef %49) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i181)
  %tobool1.not.i = icmp eq i32 %call.i181, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.104) #8
  br label %sti_hqvdp_start_xp70.exit

if.end3.i:                                        ; preds = %if.end.i
  %50 = ptrtoint ptr %firmware.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %firmware.i, align 4
  %tobool4.not.i = icmp eq ptr %51, null
  br i1 %tobool4.not.i, label %if.then5.i, label %if.end6.i

if.then5.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.105) #8
  br label %sti_hqvdp_start_xp70.exit

if.end6.i:                                        ; preds = %if.end3.i
  %data7.i = getelementptr inbounds %struct.firmware, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %data7.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data7.i, align 4
  %54 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %55)
  %cmp.i = icmp ult i32 %55, 16
  br i1 %cmp.i, label %if.then8.i, label %if.end10.i

if.then8.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.106, i32 noundef %55) #8
  br label %out.i

if.end10.i:                                       ; preds = %if.end6.i
  %56 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %53, align 4
  %add.i182 = add i32 %57, 16
  %wr_size.i = getelementptr inbounds %struct.fw_header, ptr %53, i32 0, i32 1
  %58 = ptrtoint ptr %wr_size.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %wr_size.i, align 4
  %add11.i = add i32 %add.i182, %59
  %pmem_size.i = getelementptr inbounds %struct.fw_header, ptr %53, i32 0, i32 2
  %60 = ptrtoint ptr %pmem_size.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %pmem_size.i, align 4
  %add12.i = add i32 %add11.i, %61
  %dmem_size.i = getelementptr inbounds %struct.fw_header, ptr %53, i32 0, i32 3
  %62 = ptrtoint ptr %dmem_size.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %dmem_size.i, align 4
  %add13.i = add i32 %add12.i, %63
  call void @__sanitizer_cov_trace_cmp4(i32 %add13.i, i32 %55)
  %cmp15.not.i = icmp eq i32 %add13.i, %55
  br i1 %cmp15.not.i, label %if.end22.i, label %if.then16.i

if.then16.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.107, i32 noundef 16, i32 noundef %57, i32 noundef %59, i32 noundef %61, i32 noundef %63, i32 noundef %55) #8
  br label %out.i

if.end22.i:                                       ; preds = %if.end10.i
  %add.ptr.i = getelementptr i8, ptr %53, i32 16
  %add.ptr25.i = getelementptr i8, ptr %add.ptr.i, i32 %57
  %add.ptr27.i = getelementptr i8, ptr %add.ptr25.i, i32 %59
  %add.ptr29.i = getelementptr i8, ptr %add.ptr27.i, i32 %61
  %clk.i183 = getelementptr i8, ptr %drm_plane, i32 824
  %64 = ptrtoint ptr %clk.i183 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %clk.i183, align 8
  %call.i.i = call i32 @clk_prepare(ptr noundef %65) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end22.i.if.then32.i_crit_edge

if.end22.i.if.then32.i_crit_edge:                 ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then32.i

if.end.i.i:                                       ; preds = %if.end22.i
  %call1.i.i = call i32 @clk_enable(ptr noundef %65) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.do.body.i_crit_edge, label %if.then3.i.i

if.end.i.i.do.body.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @clk_unprepare(ptr noundef %65) #8
  br label %if.then32.i

if.then32.i:                                      ; preds = %if.then3.i.i, %if.end22.i.if.then32.i_crit_edge
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.108) #8
  br label %do.body.i

do.body.i:                                        ; preds = %if.then32.i, %if.end.i.i.do.body.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !314
  call void @arm_heavy_mb() #8
  %regs.i = getelementptr i8, ptr %drm_plane, i32 -8
  %66 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regs.i, align 8
  %add.ptr34.i = getelementptr i8, ptr %67, i32 933904
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34.i, i32 16777216) #8, !srcloc !287
  br label %for.body.i

for.body.i:                                       ; preds = %if.end42.i.for.body.i_crit_edge, %do.body.i
  %i.0232.i = phi i32 [ 0, %do.body.i ], [ %inc.i, %if.end42.i.for.body.i_crit_edge ]
  %68 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regs.i, align 8
  %add.ptr37.i = getelementptr i8, ptr %69, i32 933908
  %70 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37.i) #8, !srcloc !288
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !315
  %71 = and i32 %70, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool40.not.i = icmp eq i32 %71, 0
  br i1 %tobool40.not.i, label %if.end42.i, label %for.end.i

if.end42.i:                                       ; preds = %for.body.i
  call void @msleep(i32 noundef 20) #8
  %inc.i = add nuw nsw i32 %i.0232.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 50
  br i1 %exitcond.not.i, label %if.end42.i.if.then44.i_crit_edge, label %if.end42.i.for.body.i_crit_edge

if.end42.i.for.body.i_crit_edge:                  ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end42.i.if.then44.i_crit_edge:                 ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then44.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %i.0232.i)
  %cmp43.i = icmp eq i32 %i.0232.i, 50
  br i1 %cmp43.i, label %for.end.i.if.then44.i_crit_edge, label %for.cond47.preheader.i

for.end.i.if.then44.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then44.i

for.cond47.preheader.i:                           ; preds = %for.end.i
  %72 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %53, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %73)
  %cmp49234.i = icmp sgt i32 %73, 3
  br i1 %cmp49234.i, label %for.cond47.preheader.i.do.body51.i_crit_edge, label %for.cond47.preheader.i.for.cond60.preheader.i_crit_edge

for.cond47.preheader.i.for.cond60.preheader.i_crit_edge: ; preds = %for.cond47.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond60.preheader.i

for.cond47.preheader.i.do.body51.i_crit_edge:     ; preds = %for.cond47.preheader.i
  br label %do.body51.i

if.then44.i:                                      ; preds = %for.end.i.if.then44.i_crit_edge, %if.end42.i.if.then44.i_crit_edge
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.109) #8
  %74 = ptrtoint ptr %clk.i183 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %clk.i183, align 8
  call void @clk_disable(ptr noundef %75) #8
  call void @clk_unprepare(ptr noundef %75) #8
  br label %out.i

for.cond60.preheader.i:                           ; preds = %do.body51.i.for.cond60.preheader.i_crit_edge, %for.cond47.preheader.i.for.cond60.preheader.i_crit_edge
  %76 = ptrtoint ptr %wr_size.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %wr_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %77)
  %cmp63237.i = icmp sgt i32 %77, 3
  br i1 %cmp63237.i, label %for.cond60.preheader.i.do.body65.i_crit_edge, label %for.cond60.preheader.i.for.end75.i_crit_edge

for.cond60.preheader.i.for.end75.i_crit_edge:     ; preds = %for.cond60.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end75.i

for.cond60.preheader.i.do.body65.i_crit_edge:     ; preds = %for.cond60.preheader.i
  br label %do.body65.i

do.body51.i:                                      ; preds = %do.body51.i.do.body51.i_crit_edge, %for.cond47.preheader.i.do.body51.i_crit_edge
  %i.1235.i = phi i32 [ %inc58.i, %do.body51.i.do.body51.i_crit_edge ], [ 0, %for.cond47.preheader.i.do.body51.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !316
  call void @arm_heavy_mb() #8
  %arrayidx.i = getelementptr i32, ptr %add.ptr.i, i32 %i.1235.i
  %78 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx.i, align 4
  %80 = call i32 @llvm.bswap.i32(i32 %79) #8
  %81 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %regs.i, align 8
  %add.ptr55.i = getelementptr i8, ptr %82, i32 917504
  %mul.i184 = shl i32 %i.1235.i, 2
  %add.ptr56.i = getelementptr i8, ptr %add.ptr55.i, i32 %mul.i184
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56.i, i32 %80) #8, !srcloc !287
  %inc58.i = add nuw nsw i32 %i.1235.i, 1
  %83 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %53, align 4
  %div.i185 = sdiv i32 %84, 4
  %cmp49.i = icmp slt i32 %inc58.i, %div.i185
  br i1 %cmp49.i, label %do.body51.i.do.body51.i_crit_edge, label %do.body51.i.for.cond60.preheader.i_crit_edge

do.body51.i.for.cond60.preheader.i_crit_edge:     ; preds = %do.body51.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond60.preheader.i

do.body51.i.do.body51.i_crit_edge:                ; preds = %do.body51.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body51.i

do.body65.i:                                      ; preds = %do.body65.i.do.body65.i_crit_edge, %for.cond60.preheader.i.do.body65.i_crit_edge
  %i.2238.i = phi i32 [ %inc74.i, %do.body65.i.do.body65.i_crit_edge ], [ 0, %for.cond60.preheader.i.do.body65.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !317
  call void @arm_heavy_mb() #8
  %arrayidx68.i = getelementptr i32, ptr %add.ptr25.i, i32 %i.2238.i
  %85 = ptrtoint ptr %arrayidx68.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx68.i, align 4
  %87 = call i32 @llvm.bswap.i32(i32 %86) #8
  %88 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %regs.i, align 8
  %add.ptr70.i = getelementptr i8, ptr %89, i32 925696
  %mul71.i = shl i32 %i.2238.i, 2
  %add.ptr72.i = getelementptr i8, ptr %add.ptr70.i, i32 %mul71.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr72.i, i32 %87) #8, !srcloc !287
  %inc74.i = add nuw nsw i32 %i.2238.i, 1
  %90 = ptrtoint ptr %wr_size.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %wr_size.i, align 4
  %div62.i = sdiv i32 %91, 4
  %cmp63.i = icmp slt i32 %inc74.i, %div62.i
  br i1 %cmp63.i, label %do.body65.i.do.body65.i_crit_edge, label %do.body65.i.for.end75.i_crit_edge

do.body65.i.for.end75.i_crit_edge:                ; preds = %do.body65.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end75.i

do.body65.i.do.body65.i_crit_edge:                ; preds = %do.body65.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body65.i

for.end75.i:                                      ; preds = %do.body65.i.for.end75.i_crit_edge, %for.cond60.preheader.i.for.end75.i_crit_edge
  call fastcc void @sti_hqvdp_init_plugs(ptr noundef %add.ptr3) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !318
  call void @arm_heavy_mb() #8
  %92 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %regs.i, align 8
  %add.ptr80.i = getelementptr i8, ptr %93, i32 933908
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr80.i, i32 67108864) #8, !srcloc !287
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !319
  call void @arm_heavy_mb() #8
  %94 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %regs.i, align 8
  %add.ptr85.i = getelementptr i8, ptr %95, i32 933928
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr85.i, i32 50331648) #8, !srcloc !287
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !320
  call void @arm_heavy_mb() #8
  %96 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %regs.i, align 8
  %add.ptr90.i = getelementptr i8, ptr %97, i32 933920
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr90.i, i32 0) #8, !srcloc !287
  %98 = ptrtoint ptr %pmem_size.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %pmem_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %99)
  %cmp94240.i = icmp sgt i32 %99, 3
  br i1 %cmp94240.i, label %for.end75.i.do.body96.i_crit_edge, label %for.end75.i.for.cond107.preheader.i_crit_edge

for.end75.i.for.cond107.preheader.i_crit_edge:    ; preds = %for.end75.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond107.preheader.i

for.end75.i.do.body96.i_crit_edge:                ; preds = %for.end75.i
  br label %do.body96.i

for.cond107.preheader.i:                          ; preds = %do.body96.i.for.cond107.preheader.i_crit_edge, %for.end75.i.for.cond107.preheader.i_crit_edge
  %100 = ptrtoint ptr %dmem_size.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %dmem_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %101)
  %cmp110243.i = icmp sgt i32 %101, 3
  br i1 %cmp110243.i, label %for.cond107.preheader.i.do.body112.i_crit_edge, label %for.cond107.preheader.i.do.body123.i_crit_edge

for.cond107.preheader.i.do.body123.i_crit_edge:   ; preds = %for.cond107.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body123.i

for.cond107.preheader.i.do.body112.i_crit_edge:   ; preds = %for.cond107.preheader.i
  br label %do.body112.i

do.body96.i:                                      ; preds = %do.body96.i.do.body96.i_crit_edge, %for.end75.i.do.body96.i_crit_edge
  %i.3241.i = phi i32 [ %inc105.i, %do.body96.i.do.body96.i_crit_edge ], [ 0, %for.end75.i.do.body96.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !321
  call void @arm_heavy_mb() #8
  %arrayidx99.i = getelementptr i32, ptr %add.ptr27.i, i32 %i.3241.i
  %102 = ptrtoint ptr %arrayidx99.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx99.i, align 4
  %104 = call i32 @llvm.bswap.i32(i32 %103) #8
  %105 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %regs.i, align 8
  %add.ptr101.i = getelementptr i8, ptr %106, i32 262144
  %mul102.i = shl i32 %i.3241.i, 2
  %add.ptr103.i = getelementptr i8, ptr %add.ptr101.i, i32 %mul102.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr103.i, i32 %104) #8, !srcloc !287
  %inc105.i = add nuw nsw i32 %i.3241.i, 1
  %107 = ptrtoint ptr %pmem_size.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %pmem_size.i, align 4
  %div93.i = sdiv i32 %108, 4
  %cmp94.i = icmp slt i32 %inc105.i, %div93.i
  br i1 %cmp94.i, label %do.body96.i.do.body96.i_crit_edge, label %do.body96.i.for.cond107.preheader.i_crit_edge

do.body96.i.for.cond107.preheader.i_crit_edge:    ; preds = %do.body96.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond107.preheader.i

do.body96.i.do.body96.i_crit_edge:                ; preds = %do.body96.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body96.i

do.body112.i:                                     ; preds = %do.body112.i.do.body112.i_crit_edge, %for.cond107.preheader.i.do.body112.i_crit_edge
  %i.4244.i = phi i32 [ %inc121.i, %do.body112.i.do.body112.i_crit_edge ], [ 0, %for.cond107.preheader.i.do.body112.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !322
  call void @arm_heavy_mb() #8
  %arrayidx115.i = getelementptr i32, ptr %add.ptr29.i, i32 %i.4244.i
  %109 = ptrtoint ptr %arrayidx115.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx115.i, align 4
  %111 = call i32 @llvm.bswap.i32(i32 %110) #8
  %112 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %regs.i, align 8
  %mul118.i = shl i32 %i.4244.i, 2
  %add.ptr119.i = getelementptr i8, ptr %113, i32 %mul118.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr119.i, i32 %111) #8, !srcloc !287
  %inc121.i = add nuw nsw i32 %i.4244.i, 1
  %114 = ptrtoint ptr %dmem_size.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %dmem_size.i, align 4
  %div109.i = sdiv i32 %115, 4
  %cmp110.i = icmp slt i32 %inc121.i, %div109.i
  br i1 %cmp110.i, label %do.body112.i.do.body112.i_crit_edge, label %do.body112.i.do.body123.i_crit_edge

do.body112.i.do.body123.i_crit_edge:              ; preds = %do.body112.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body123.i

do.body112.i.do.body112.i_crit_edge:              ; preds = %do.body112.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body112.i

do.body123.i:                                     ; preds = %do.body112.i.do.body123.i_crit_edge, %for.cond107.preheader.i.do.body123.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !323
  call void @arm_heavy_mb() #8
  %116 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %regs.i, align 8
  %add.ptr127.i = getelementptr i8, ptr %117, i32 933912
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr127.i, i32 33554432) #8, !srcloc !287
  br label %for.body130.i

for.body130.i:                                    ; preds = %if.end141.i.for.body130.i_crit_edge, %do.body123.i
  %i.5245.i = phi i32 [ 0, %do.body123.i ], [ %inc143.i, %if.end141.i.for.body130.i_crit_edge ]
  %118 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %regs.i, align 8
  %add.ptr134.i = getelementptr i8, ptr %119, i32 933900
  %120 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr134.i) #8, !srcloc !288
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !324
  %121 = and i32 %120, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool139.not.i = icmp eq i32 %121, 0
  br i1 %tobool139.not.i, label %if.end141.i, label %do.body149.i

if.end141.i:                                      ; preds = %for.body130.i
  call void @msleep(i32 noundef 20) #8
  %inc143.i = add nuw nsw i32 %i.5245.i, 1
  %exitcond246.not.i = icmp eq i32 %inc143.i, 50
  br i1 %exitcond246.not.i, label %if.then146.i, label %if.end141.i.for.body130.i_crit_edge

if.end141.i.for.body130.i_crit_edge:              ; preds = %if.end141.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body130.i

if.then146.i:                                     ; preds = %if.end141.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.110) #8
  %122 = ptrtoint ptr %clk.i183 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %clk.i183, align 8
  call void @clk_disable(ptr noundef %123) #8
  call void @clk_unprepare(ptr noundef %123) #8
  br label %out.i

do.body149.i:                                     ; preds = %for.body130.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !325
  call void @arm_heavy_mb() #8
  %124 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %regs.i, align 8
  %add.ptr153.i = getelementptr i8, ptr %125, i32 933928
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr153.i, i32 0) #8, !srcloc !287
  %call158.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111) #12
  %126 = ptrtoint ptr %xp70_initialized to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 1, ptr %xp70_initialized, align 8
  br label %out.i

out.i:                                            ; preds = %do.body149.i, %if.then146.i, %if.then44.i, %if.then16.i, %if.then8.i
  %127 = ptrtoint ptr %firmware.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %firmware.i, align 4
  call void @release_firmware(ptr noundef %128) #8
  br label %sti_hqvdp_start_xp70.exit

sti_hqvdp_start_xp70.exit:                        ; preds = %out.i, %if.then5.i, %if.then2.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %firmware.i) #8
  br label %if.end77

if.end77:                                         ; preds = %sti_hqvdp_start_xp70.exit, %if.end74.if.end77_crit_edge
  %vtg_registered = getelementptr i8, ptr %drm_plane, i32 865
  %129 = ptrtoint ptr %vtg_registered to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %vtg_registered, align 1, !range !290
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %tobool78.not = icmp eq i8 %130, 0
  br i1 %tobool78.not, label %if.then79, label %if.end77.if.end90_crit_edge

if.end77.if.end90_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end90

if.then79:                                        ; preds = %if.end77
  %clk_pix_main = getelementptr i8, ptr %drm_plane, i32 828
  %131 = ptrtoint ptr %clk_pix_main to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %clk_pix_main, align 4
  %call.i186 = call i32 @clk_prepare(ptr noundef %132) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i186)
  %tobool.not.i187 = icmp eq i32 %call.i186, 0
  br i1 %tobool.not.i187, label %if.end.i188, label %if.then79.if.then82_crit_edge

if.then79.if.then82_crit_edge:                    ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then82

if.end.i188:                                      ; preds = %if.then79
  %call1.i = call i32 @clk_enable(ptr noundef %132) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end83, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i188
  call void @__sanitizer_cov_trace_pc() #10
  call void @clk_unprepare(ptr noundef %132) #8
  br label %if.then82

if.then82:                                        ; preds = %if.then3.i, %if.then79.if.then82_crit_edge
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.98) #8
  br label %cleanup

if.end83:                                         ; preds = %if.end.i188
  %vtg = getelementptr i8, ptr %drm_plane, i32 860
  %133 = ptrtoint ptr %vtg to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %vtg, align 4
  %vtg_nb = getelementptr i8, ptr %drm_plane, i32 836
  %call84 = call i32 @sti_vtg_register_client(ptr noundef %134, ptr noundef %vtg_nb, ptr noundef nonnull %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.end88, label %if.then86

if.then86:                                        ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.99) #8
  %135 = ptrtoint ptr %clk_pix_main to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %clk_pix_main, align 4
  call void @clk_disable(ptr noundef %136) #8
  call void @clk_unprepare(ptr noundef %136) #8
  br label %cleanup

if.end88:                                         ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  %137 = ptrtoint ptr %vtg_registered to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 1, ptr %vtg_registered, align 1
  br label %if.end90

if.end90:                                         ; preds = %if.end88, %if.end77.if.end90_crit_edge
  %base = getelementptr inbounds %struct.drm_crtc, ptr %7, i32 0, i32 5
  %138 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %base, align 8
  %add.ptr93 = getelementptr i8, ptr %7, i32 -16
  %call94 = call ptr @sti_mixer_to_str(ptr noundef %add.ptr93) #8
  %base95 = getelementptr inbounds %struct.drm_plane, ptr %drm_plane, i32 0, i32 4
  %140 = ptrtoint ptr %base95 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %base95, align 4
  %call97 = call ptr @sti_plane_to_str(ptr noundef %drm_plane) #8
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.100, i32 noundef %139, ptr noundef %call94, i32 noundef %141, ptr noundef %call97) #8
  %call98 = call ptr @sti_plane_to_str(ptr noundef %drm_plane) #8
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.101, ptr noundef %call98, i32 noundef %and, i32 noundef %and49, i32 noundef %11, i32 noundef %13, i32 noundef %shr37, i32 noundef %shr39, i32 noundef %shr, i32 noundef %shr35) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end90, %if.then86, %if.then82, %if.then73, %if.then46, %if.then42, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then73 ], [ 0, %if.end90 ], [ -22, %if.then82 ], [ -22, %if.then86 ], [ -22, %if.then46 ], [ -22, %if.then42 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sti_hqvdp_atomic_update(ptr noundef %drm_plane, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %add.ptr4 = getelementptr i8, ptr %drm_plane, i32 -16
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %fb8 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 2
  %12 = ptrtoint ptr %fb8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fb8, align 4
  %cmp = icmp eq ptr %13, %11
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end38_crit_edge

if.end.if.end38_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then37:                                        ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.113) #8
  %status = getelementptr inbounds %struct.sti_plane, ptr %drm_plane, i32 0, i32 2
  %46 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 1, ptr %status, align 4
  br label %cleanup

if.end38:                                         ; preds = %land.lhs.true33.if.end38_crit_edge, %land.lhs.true29.if.end38_crit_edge, %land.lhs.true25.if.end38_crit_edge, %land.lhs.true21.if.end38_crit_edge, %land.lhs.true18.if.end38_crit_edge, %land.lhs.true15.if.end38_crit_edge, %land.lhs.true12.if.end38_crit_edge, %land.lhs.true.if.end38_crit_edge, %if.end.if.end38_crit_edge
  %crtc_x40 = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 4
  %47 = ptrtoint ptr %crtc_x40 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %crtc_x40, align 4
  %crtc_y41 = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 5
  %49 = ptrtoint ptr %crtc_y41 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %crtc_y41, align 4
  %crtc_w42 = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 6
  %51 = ptrtoint ptr %crtc_w42 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %crtc_w42, align 4
  %hdisplay = getelementptr inbounds %struct.drm_crtc, ptr %9, i32 0, i32 12, i32 1
  %53 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %hdisplay, align 4
  %conv = zext i16 %54 to i32
  %sub = sub i32 %conv, %48
  %55 = tail call i32 @llvm.umin.i32(i32 %52, i32 %sub)
  %crtc_h52 = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 7
  %56 = ptrtoint ptr %crtc_h52 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %crtc_h52, align 4
  %vdisplay = getelementptr inbounds %struct.drm_crtc, ptr %9, i32 0, i32 12, i32 6
  %58 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %vdisplay, align 2
  %conv60 = zext i16 %59 to i32
  %sub61 = sub i32 %conv60, %50
  %60 = tail call i32 @llvm.umin.i32(i32 %57, i32 %sub61)
  %src_x69 = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 8
  %61 = ptrtoint ptr %src_x69 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %src_x69, align 4
  %src_y70 = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 9
  %63 = ptrtoint ptr %src_y70 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %src_y70, align 4
  %src_w72 = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 11
  %65 = ptrtoint ptr %src_w72 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %src_w72, align 4
  %shr73 = lshr i32 %66, 16
  %src_h74 = getelementptr inbounds %struct.drm_plane_state, ptr %7, i32 0, i32 10
  %67 = ptrtoint ptr %src_h74 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %src_h74, align 4
  %shr75 = lshr i32 %68, 16
  %hqvdp_cmd_paddr.i = getelementptr i8, ptr %drm_plane, i32 856
  %69 = ptrtoint ptr %hqvdp_cmd_paddr.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %hqvdp_cmd_paddr.i, align 8
  %regs.i = getelementptr i8, ptr %drm_plane, i32 -8
  %71 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %regs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %72, i32 933924
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !288
  %74 = tail call i32 @llvm.bswap.i32(i32 %73) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !291
  %75 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %regs.i, align 8
  %add.ptr5.i = getelementptr i8, ptr %76, i32 933920
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #8, !srcloc !288
  %78 = tail call i32 @llvm.bswap.i32(i32 %77) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !292
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %74)
  %cmp9.not.i = icmp eq i32 %70, %74
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %78)
  %cmp10.not.i = icmp eq i32 %70, %78
  %or.cond.i = select i1 %cmp9.not.i, i1 true, i1 %cmp10.not.i
  br i1 %or.cond.i, label %if.end.i, label %if.end38.if.end80_crit_edge

if.end38.if.end80_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end80

if.end.i:                                         ; preds = %if.end38
  %add.i = add i32 %70, 2800
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %74)
  %cmp9.not.1.i = icmp eq i32 %add.i, %74
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %78)
  %cmp10.not.1.i = icmp eq i32 %add.i, %78
  %or.cond.1.i = select i1 %cmp9.not.1.i, i1 true, i1 %cmp10.not.1.i
  br i1 %or.cond.1.i, label %if.then79, label %if.end.i.if.end80_crit_edge

if.end.i.if.end80_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end80

if.then79:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.114) #8
  br label %cleanup

if.end80:                                         ; preds = %if.end.i.if.end80_crit_edge, %if.end38.if.end80_crit_edge
  %retval.0.i299.ph = phi i32 [ 2800, %if.end.i.if.end80_crit_edge ], [ 0, %if.end38.if.end80_crit_edge ]
  %shr71 = and i32 %64, -65536
  %shr = lshr i32 %62, 16
  %hqvdp_cmd = getelementptr i8, ptr %drm_plane, i32 852
  %79 = ptrtoint ptr %hqvdp_cmd to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %hqvdp_cmd, align 4
  %add.ptr81 = getelementptr i8, ptr %80, i32 %retval.0.i299.ph
  %81 = ptrtoint ptr %add.ptr81 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 1, ptr %add.ptr81, align 4
  %mem_format = getelementptr inbounds %struct.sti_hqvdp_top, ptr %add.ptr81, i32 0, i32 1
  %82 = ptrtoint ptr %mem_format to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 98400, ptr %mem_format, align 4
  %hvsrc = getelementptr inbounds %struct.sti_hqvdp_cmd, ptr %add.ptr81, i32 0, i32 4
  %param_ctrl = getelementptr inbounds %struct.sti_hqvdp_hvsrc, ptr %hvsrc, i32 0, i32 4
  %83 = ptrtoint ptr %param_ctrl to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 -1, ptr %param_ctrl, align 4
  %csdi = getelementptr inbounds %struct.sti_hqvdp_cmd, ptr %add.ptr81, i32 0, i32 3
  %84 = ptrtoint ptr %csdi to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %csdi, align 4
  %iqi = getelementptr inbounds %struct.sti_hqvdp_cmd, ptr %add.ptr81, i32 0, i32 5
  %85 = ptrtoint ptr %iqi to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 1, ptr %iqi, align 4
  %con_bri = getelementptr inbounds %struct.sti_hqvdp_iqi, ptr %iqi, i32 0, i32 12
  %86 = ptrtoint ptr %con_bri to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 256, ptr %con_bri, align 4
  %sat_gain = getelementptr inbounds %struct.sti_hqvdp_iqi, ptr %iqi, i32 0, i32 13
  %87 = ptrtoint ptr %sat_gain to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 256, ptr %sat_gain, align 4
  %pxf_conf = getelementptr inbounds %struct.sti_hqvdp_iqi, ptr %iqi, i32 0, i32 14
  %88 = ptrtoint ptr %pxf_conf to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 1, ptr %pxf_conf, align 4
  %call88 = tail call ptr @drm_fb_cma_get_gem_obj(ptr noundef nonnull %11, i32 noundef 0) #8
  %base = getelementptr inbounds %struct.drm_framebuffer, ptr %11, i32 0, i32 2
  %89 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %base, align 4
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %11, i32 0, i32 4
  %91 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %format, align 8
  %paddr = getelementptr inbounds %struct.drm_gem_cma_object, ptr %call88, i32 0, i32 1
  %93 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %paddr, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.115, i32 noundef %90, ptr noundef %92, i32 noundef %94) #8
  %95 = ptrtoint ptr %paddr to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %paddr, align 8
  %offsets = getelementptr inbounds %struct.drm_framebuffer, ptr %11, i32 0, i32 7
  %97 = ptrtoint ptr %offsets to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %offsets, align 8
  %add = add i32 %98, %96
  %current_luma = getelementptr inbounds %struct.sti_hqvdp_top, ptr %add.ptr81, i32 0, i32 2
  %99 = ptrtoint ptr %current_luma to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %add, ptr %current_luma, align 4
  %100 = load i32, ptr %paddr, align 8
  %arrayidx94 = getelementptr %struct.drm_framebuffer, ptr %11, i32 0, i32 7, i32 1
  %101 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx94, align 4
  %add95 = add i32 %102, %100
  %current_chroma = getelementptr inbounds %struct.sti_hqvdp_top, ptr %add.ptr81, i32 0, i32 6
  %103 = ptrtoint ptr %current_chroma to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %add95, ptr %current_chroma, align 4
  %pitches = getelementptr inbounds %struct.drm_framebuffer, ptr %11, i32 0, i32 6
  %104 = ptrtoint ptr %pitches to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %pitches, align 8
  %luma_processed_pitch = getelementptr inbounds %struct.sti_hqvdp_top, ptr %add.ptr81, i32 0, i32 20
  %106 = ptrtoint ptr %luma_processed_pitch to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %luma_processed_pitch, align 4
  %107 = load i32, ptr %pitches, align 8
  %luma_src_pitch = getelementptr inbounds %struct.sti_hqvdp_top, ptr %add.ptr81, i32 0, i32 12
  %108 = ptrtoint ptr %luma_src_pitch to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %luma_src_pitch, align 4
  %arrayidx103 = getelementptr %struct.drm_framebuffer, ptr %11, i32 0, i32 6, i32 1
  %109 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx103, align 4
  %chroma_processed_pitch = getelementptr inbounds %struct.sti_hqvdp_top, ptr %add.ptr81, i32 0, i32 21
  %111 = ptrtoint ptr %chroma_processed_pitch to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %110, ptr %chroma_processed_pitch, align 4
  %112 = load i32, ptr %arrayidx103, align 4
  %chroma_src_pitch = getelementptr inbounds %struct.sti_hqvdp_top, ptr %add.ptr81, i32 0, i32 16
  %113 = ptrtoint ptr %chroma_src_pitch to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %chroma_src_pitch, align 4
  %add108 = add i32 %55, 1
  %and = and i32 %add108, -2
  %add109 = add i32 %60, 1
  %and110 = and i32 %add109, -2
  %shl = and i32 %68, -65536
  %or = or i32 %shl, %shr73
  %input_viewport_size = getelementptr inbounds %struct.sti_hqvdp_top, ptr %add.ptr81, i32 0, i32 25
  %114 = ptrtoint ptr %input_viewport_size to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %or, ptr %input_viewport_size, align 4
  %input_frame_size = getelementptr inbounds %struct.sti_hqvdp_top, ptr %add.ptr81, i32 0, i32 22
  %115 = ptrtoint ptr %input_frame_size to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %or, ptr %input_frame_size, align 4
  %shl115 = shl i32 %and110, 16
  %or116 = or i32 %shl115, %and
  %output_picture_size = getelementptr inbounds %struct.sti_hqvdp_hvsrc, ptr %hvsrc, i32 0, i32 1
  %116 = ptrtoint ptr %output_picture_size to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %or116, ptr %output_picture_size, align 4
  %or119 = or i32 %shr71, %shr
  %input_viewport_ori = getelementptr inbounds %struct.sti_hqvdp_top, ptr %add.ptr81, i32 0, i32 23
  %117 = ptrtoint ptr %input_viewport_ori to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %or119, ptr %input_viewport_ori, align 4
  %flags = getelementptr inbounds %struct.drm_framebuffer, ptr %11, i32 0, i32 11
  %118 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %flags, align 8
  %and121 = and i32 %119, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and121)
  %tobool122.not = icmp eq i32 %and121, 0
  br i1 %tobool122.not, label %if.end80.if.end145_crit_edge, label %if.then123

if.end80.if.end145_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end145

if.then123:                                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  %120 = ptrtoint ptr %add.ptr81 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 2, ptr %add.ptr81, align 4
  %121 = lshr i32 %68, 1
  %shl126 = and i32 %121, 2147418112
  %or127 = or i32 %shl126, %shr73
  %122 = ptrtoint ptr %input_frame_size to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %or127, ptr %input_frame_size, align 4
  %mul = shl i32 %105, 1
  %123 = ptrtoint ptr %luma_processed_pitch to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %mul, ptr %luma_processed_pitch, align 4
  %mul134 = shl i32 %107, 1
  %124 = ptrtoint ptr %luma_src_pitch to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %mul134, ptr %luma_src_pitch, align 4
  %mul137 = shl i32 %110, 1
  %125 = ptrtoint ptr %chroma_processed_pitch to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %mul137, ptr %chroma_processed_pitch, align 4
  %mul140 = shl i32 %112, 1
  %126 = ptrtoint ptr %chroma_src_pitch to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %mul140, ptr %chroma_src_pitch, align 4
  %127 = ptrtoint ptr %csdi to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 22, ptr %csdi, align 4
  %config2 = getelementptr inbounds %struct.sti_hqvdp_csdi, ptr %csdi, i32 0, i32 1
  %128 = ptrtoint ptr %config2 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 435, ptr %config2, align 4
  %dcdi_config = getelementptr inbounds %struct.sti_hqvdp_csdi, ptr %csdi, i32 0, i32 2
  %129 = ptrtoint ptr %dcdi_config to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 2111491, ptr %dcdi_config, align 4
  br label %if.end145

if.end145:                                        ; preds = %if.then123, %if.end80.if.end145_crit_edge
  %mul146 = shl i32 %and, 13
  %div147 = sdiv i32 %mul146, %shr73
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %div147)
  %cmp.i = icmp slt i32 %div147, 4096
  br i1 %cmp.i, label %if.end145.sti_hqvdp_update_hvsrc.exit_crit_edge, label %if.else.i

if.end145.sti_hqvdp_update_hvsrc.exit_crit_edge:  ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #10
  br label %sti_hqvdp_update_hvsrc.exit

if.else.i:                                        ; preds = %if.end145
  call void @__sanitizer_cov_trace_const_cmp4(i32 4915, i32 %div147)
  %cmp1.i = icmp ult i32 %div147, 4915
  br i1 %cmp1.i, label %if.else.i.sti_hqvdp_update_hvsrc.exit_crit_edge, label %if.else3.i

if.else.i.sti_hqvdp_update_hvsrc.exit_crit_edge:  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sti_hqvdp_update_hvsrc.exit

if.else3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 6654, i32 %div147)
  %cmp4.i = icmp ult i32 %div147, 6654
  br i1 %cmp4.i, label %if.else3.i.sti_hqvdp_update_hvsrc.exit_crit_edge, label %if.else6.i

if.else3.i.sti_hqvdp_update_hvsrc.exit_crit_edge: ; preds = %if.else3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sti_hqvdp_update_hvsrc.exit

if.else6.i:                                       ; preds = %if.else3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %div147)
  %cmp7.i = icmp ult i32 %div147, 8192
  br i1 %cmp7.i, label %if.else6.i.sti_hqvdp_update_hvsrc.exit_crit_edge, label %if.else9.i

if.else6.i.sti_hqvdp_update_hvsrc.exit_crit_edge: ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sti_hqvdp_update_hvsrc.exit

if.else9.i:                                       ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %div147)
  %cmp10.i = icmp eq i32 %div147, 8192
  %coef_lut_b.coef_lut_a_legacy.i = select i1 %cmp10.i, ptr @coef_lut_b, ptr @coef_lut_a_legacy
  br label %sti_hqvdp_update_hvsrc.exit

sti_hqvdp_update_hvsrc.exit:                      ; preds = %if.else9.i, %if.else6.i.sti_hqvdp_update_hvsrc.exit_crit_edge, %if.else3.i.sti_hqvdp_update_hvsrc.exit_crit_edge, %if.else.i.sti_hqvdp_update_hvsrc.exit_crit_edge, %if.end145.sti_hqvdp_update_hvsrc.exit_crit_edge
  %coef_c.0.i = phi ptr [ @coef_lut_f_c_legacy, %if.end145.sti_hqvdp_update_hvsrc.exit_crit_edge ], [ @coef_lut_e_c_legacy, %if.else.i.sti_hqvdp_update_hvsrc.exit_crit_edge ], [ @coef_lut_d_c_legacy, %if.else3.i.sti_hqvdp_update_hvsrc.exit_crit_edge ], [ @coef_lut_c_c_legacy, %if.else6.i.sti_hqvdp_update_hvsrc.exit_crit_edge ], [ %coef_lut_b.coef_lut_a_legacy.i, %if.else9.i ]
  %coef_y.0.i = phi ptr [ @coef_lut_f_y_legacy, %if.end145.sti_hqvdp_update_hvsrc.exit_crit_edge ], [ @coef_lut_e_y_legacy, %if.else.i.sti_hqvdp_update_hvsrc.exit_crit_edge ], [ @coef_lut_d_y_legacy, %if.else3.i.sti_hqvdp_update_hvsrc.exit_crit_edge ], [ @coef_lut_c_y_legacy, %if.else6.i.sti_hqvdp_update_hvsrc.exit_crit_edge ], [ %coef_lut_b.coef_lut_a_legacy.i, %if.else9.i ]
  %hori_shift.i = getelementptr inbounds %struct.sti_hqvdp_hvsrc, ptr %hvsrc, i32 0, i32 9
  %130 = ptrtoint ptr %hori_shift.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 524296, ptr %hori_shift.i, align 4
  %yh_coef.i = getelementptr inbounds %struct.sti_hqvdp_hvsrc, ptr %hvsrc, i32 0, i32 5
  %131 = call ptr @memcpy(ptr %yh_coef.i, ptr %coef_y.0.i, i32 512)
  %ch_coef.i = getelementptr inbounds %struct.sti_hqvdp_hvsrc, ptr %hvsrc, i32 0, i32 6
  %132 = call ptr @memcpy(ptr %ch_coef.i, ptr %coef_c.0.i, i32 512)
  %mul149 = shl i32 %and110, 13
  %div150 = sdiv i32 %mul149, %shr75
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %div150)
  %cmp.i300 = icmp slt i32 %div150, 4096
  br i1 %cmp.i300, label %sti_hqvdp_update_hvsrc.exit.sti_hqvdp_update_hvsrc.exit312_crit_edge, label %if.else.i302

sti_hqvdp_update_hvsrc.exit.sti_hqvdp_update_hvsrc.exit312_crit_edge: ; preds = %sti_hqvdp_update_hvsrc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sti_hqvdp_update_hvsrc.exit312

if.else.i302:                                     ; preds = %sti_hqvdp_update_hvsrc.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 4915, i32 %div150)
  %cmp1.i301 = icmp ult i32 %div150, 4915
  br i1 %cmp1.i301, label %if.else.i302.sti_hqvdp_update_hvsrc.exit312_crit_edge, label %if.else3.i304

if.else.i302.sti_hqvdp_update_hvsrc.exit312_crit_edge: ; preds = %if.else.i302
  call void @__sanitizer_cov_trace_pc() #10
  br label %sti_hqvdp_update_hvsrc.exit312

if.else3.i304:                                    ; preds = %if.else.i302
  call void @__sanitizer_cov_trace_const_cmp4(i32 6654, i32 %div150)
  %cmp4.i303 = icmp ult i32 %div150, 6654
  br i1 %cmp4.i303, label %if.else3.i304.sti_hqvdp_update_hvsrc.exit312_crit_edge, label %if.else6.i306

if.else3.i304.sti_hqvdp_update_hvsrc.exit312_crit_edge: ; preds = %if.else3.i304
  call void @__sanitizer_cov_trace_pc() #10
  br label %sti_hqvdp_update_hvsrc.exit312

if.else6.i306:                                    ; preds = %if.else3.i304
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %div150)
  %cmp7.i305 = icmp ult i32 %div150, 8192
  br i1 %cmp7.i305, label %if.else6.i306.sti_hqvdp_update_hvsrc.exit312_crit_edge, label %if.else9.i309

if.else6.i306.sti_hqvdp_update_hvsrc.exit312_crit_edge: ; preds = %if.else6.i306
  call void @__sanitizer_cov_trace_pc() #10
  br label %sti_hqvdp_update_hvsrc.exit312

if.else9.i309:                                    ; preds = %if.else6.i306
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %div150)
  %cmp10.i307 = icmp eq i32 %div150, 8192
  %coef_lut_b.coef_lut_a_legacy.i308 = select i1 %cmp10.i307, ptr @coef_lut_b, ptr @coef_lut_a_legacy
  br label %sti_hqvdp_update_hvsrc.exit312

sti_hqvdp_update_hvsrc.exit312:                   ; preds = %if.else9.i309, %if.else6.i306.sti_hqvdp_update_hvsrc.exit312_crit_edge, %if.else3.i304.sti_hqvdp_update_hvsrc.exit312_crit_edge, %if.else.i302.sti_hqvdp_update_hvsrc.exit312_crit_edge, %sti_hqvdp_update_hvsrc.exit.sti_hqvdp_update_hvsrc.exit312_crit_edge
  %coef_c.0.i310 = phi ptr [ @coef_lut_f_c_legacy, %sti_hqvdp_update_hvsrc.exit.sti_hqvdp_update_hvsrc.exit312_crit_edge ], [ @coef_lut_e_c_legacy, %if.else.i302.sti_hqvdp_update_hvsrc.exit312_crit_edge ], [ @coef_lut_d_c_legacy, %if.else3.i304.sti_hqvdp_update_hvsrc.exit312_crit_edge ], [ @coef_lut_c_c_legacy, %if.else6.i306.sti_hqvdp_update_hvsrc.exit312_crit_edge ], [ %coef_lut_b.coef_lut_a_legacy.i308, %if.else9.i309 ]
  %coef_y.0.i311 = phi ptr [ @coef_lut_f_y_legacy, %sti_hqvdp_update_hvsrc.exit.sti_hqvdp_update_hvsrc.exit312_crit_edge ], [ @coef_lut_e_y_legacy, %if.else.i302.sti_hqvdp_update_hvsrc.exit312_crit_edge ], [ @coef_lut_d_y_legacy, %if.else3.i304.sti_hqvdp_update_hvsrc.exit312_crit_edge ], [ @coef_lut_c_y_legacy, %if.else6.i306.sti_hqvdp_update_hvsrc.exit312_crit_edge ], [ %coef_lut_b.coef_lut_a_legacy.i308, %if.else9.i309 ]
  %vert_shift.i = getelementptr inbounds %struct.sti_hqvdp_hvsrc, ptr %hvsrc, i32 0, i32 10
  %133 = ptrtoint ptr %vert_shift.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 524296, ptr %vert_shift.i, align 4
  %yv_coef.i = getelementptr inbounds %struct.sti_hqvdp_hvsrc, ptr %hvsrc, i32 0, i32 7
  %134 = call ptr @memcpy(ptr %yv_coef.i, ptr %coef_y.0.i311, i32 512)
  %cv_coef.i = getelementptr inbounds %struct.sti_hqvdp_hvsrc, ptr %hvsrc, i32 0, i32 8
  %135 = call ptr @memcpy(ptr %cv_coef.i, ptr %coef_c.0.i310, i32 512)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !326
  tail call void @arm_heavy_mb() #8
  %136 = ptrtoint ptr %hqvdp_cmd_paddr.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %hqvdp_cmd_paddr.i, align 8
  %add152 = add i32 %137, %retval.0.i299.ph
  %138 = tail call i32 @llvm.bswap.i32(i32 %add152)
  %139 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %regs.i, align 8
  %add.ptr153 = getelementptr i8, ptr %140, i32 933920
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr153, i32 %138) #8, !srcloc !287
  %141 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %flags, align 8
  %and155 = and i32 %142, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and155)
  %tobool156.not = icmp eq i32 %and155, 0
  br i1 %tobool156.not, label %sti_hqvdp_update_hvsrc.exit312.do.body159_crit_edge, label %if.then157

sti_hqvdp_update_hvsrc.exit312.do.body159_crit_edge: ; preds = %sti_hqvdp_update_hvsrc.exit312
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body159

if.then157:                                       ; preds = %sti_hqvdp_update_hvsrc.exit312
  call void @__sanitizer_cov_trace_pc() #10
  %btm_field_pending = getelementptr i8, ptr %drm_plane, i32 848
  %143 = ptrtoint ptr %btm_field_pending to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 1, ptr %btm_field_pending, align 8
  br label %do.body159

do.body159:                                       ; preds = %if.then157, %sti_hqvdp_update_hvsrc.exit312.do.body159_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sti_hqvdp_atomic_update.__UNIQUE_ID_ddebug337, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sti_hqvdp_atomic_update, %if.then165)) #8
          to label %do.end170 [label %if.then165], !srcloc !295

if.then165:                                       ; preds = %do.body159
  call void @__sanitizer_cov_trace_pc() #10
  %144 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %add.ptr4, align 8
  %146 = ptrtoint ptr %hqvdp_cmd_paddr.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %hqvdp_cmd_paddr.i, align 8
  %add167 = add i32 %147, %retval.0.i299.ph
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sti_hqvdp_atomic_update.__UNIQUE_ID_ddebug337, ptr noundef %145, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.116, i32 noundef %add167) #8
  br label %do.end170

do.end170:                                        ; preds = %if.then165, %do.body159
  tail call void @sti_plane_update_fps(ptr noundef %drm_plane, i1 noundef zeroext true, i1 noundef zeroext true) #8
  %status171 = getelementptr inbounds %struct.sti_plane, ptr %drm_plane, i32 0, i32 2
  %148 = ptrtoint ptr %status171 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 1, ptr %status171, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end170, %if.then79, %if.then37, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sti_hqvdp_atomic_disable(ptr noundef %drm_plane, ptr nocapture noundef readonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  %base = getelementptr inbounds %struct.drm_plane, ptr %drm_plane, i32 0, i32 4
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.117, i32 noundef %9) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %base2 = getelementptr inbounds %struct.drm_crtc, ptr %7, i32 0, i32 5
  %10 = ptrtoint ptr %base2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %base2, align 8
  %add.ptr7 = getelementptr i8, ptr %7, i32 -16
  %call8 = tail call ptr @sti_mixer_to_str(ptr noundef %add.ptr7) #8
  %base9 = getelementptr inbounds %struct.drm_plane, ptr %drm_plane, i32 0, i32 4
  %12 = ptrtoint ptr %base9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %base9, align 4
  %call11 = tail call ptr @sti_plane_to_str(ptr noundef %drm_plane) #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.100, i32 noundef %11, ptr noundef %call8, i32 noundef %13, ptr noundef %call11) #8
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
declare dso_local i32 @sti_vtg_register_client(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sti_mixer_to_str(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sti_hqvdp_init_plugs(ptr nocapture noundef readonly %hqvdp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !327
  tail call void @arm_heavy_mb() #8
  %regs = getelementptr inbounds %struct.sti_hqvdp, ptr %hqvdp, i32 0, i32 2
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 921604
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 33554432) #8, !srcloc !287
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !328
  tail call void @arm_heavy_mb() #8
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 8
  %add.ptr4 = getelementptr i8, ptr %3, i32 921608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 50331648) #8, !srcloc !287
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !329
  tail call void @arm_heavy_mb() #8
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 8
  %add.ptr8 = getelementptr i8, ptr %5, i32 921612
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 100663296) #8, !srcloc !287
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !330
  tail call void @arm_heavy_mb() #8
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 8
  %add.ptr12 = getelementptr i8, ptr %7, i32 921616
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 16777216) #8, !srcloc !287
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !331
  tail call void @arm_heavy_mb() #8
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 8
  %add.ptr16 = getelementptr i8, ptr %9, i32 921620
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 0) #8, !srcloc !287
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !332
  tail call void @arm_heavy_mb() #8
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 8
  %add.ptr20 = getelementptr i8, ptr %11, i32 921624
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 0) #8, !srcloc !287
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !333
  tail call void @arm_heavy_mb() #8
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 8
  %add.ptr24 = getelementptr i8, ptr %13, i32 921600
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 16777216) #8, !srcloc !287
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !334
  tail call void @arm_heavy_mb() #8
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 8
  %add.ptr28 = getelementptr i8, ptr %15, i32 929796
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 33554432) #8, !srcloc !287
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !335
  tail call void @arm_heavy_mb() #8
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 8
  %add.ptr32 = getelementptr i8, ptr %17, i32 929800
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr32, i32 50331648) #8, !srcloc !287
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !336
  tail call void @arm_heavy_mb() #8
  %18 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs, align 8
  %add.ptr36 = getelementptr i8, ptr %19, i32 929804
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr36, i32 100663296) #8, !srcloc !287
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !337
  tail call void @arm_heavy_mb() #8
  %20 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs, align 8
  %add.ptr40 = getelementptr i8, ptr %21, i32 929808
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40, i32 16777216) #8, !srcloc !287
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !338
  tail call void @arm_heavy_mb() #8
  %22 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs, align 8
  %add.ptr44 = getelementptr i8, ptr %23, i32 929812
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44, i32 0) #8, !srcloc !287
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !339
  tail call void @arm_heavy_mb() #8
  %24 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs, align 8
  %add.ptr48 = getelementptr i8, ptr %25, i32 929816
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48, i32 0) #8, !srcloc !287
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !340
  tail call void @arm_heavy_mb() #8
  %26 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs, align 8
  %add.ptr52 = getelementptr i8, ptr %27, i32 929792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr52, i32 16777216) #8, !srcloc !287
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 137)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 137)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nobuiltin }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !44, !45, !46, !47, !49, !51, !53, !55, !57, !59, !61, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !261, !262, !263, !265, !267, !269, !271, !272, !274}
!llvm.module.flags = !{!276, !277, !278, !279, !280, !281, !282, !283}
!llvm.ident = !{!284}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 1415, i32 11}
!2 = !{ptr @sti_hqvdp_driver, !3, !"sti_hqvdp_driver", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 1413, i32 24}
!4 = !{ptr @__UNIQUE_ID_author338, !5, !"__UNIQUE_ID_author338", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 1423, i32 1}
!6 = !{ptr @__UNIQUE_ID_description339, !7, !"__UNIQUE_ID_description339", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 1424, i32 1}
!8 = !{ptr @__UNIQUE_ID_file340, !9, !"__UNIQUE_ID_file340", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 1425, i32 1}
!10 = !{ptr @__UNIQUE_ID_license341, !9, !"__UNIQUE_ID_license341", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 1356, i32 2}
!13 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 1360, i32 3}
!15 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 1369, i32 3}
!17 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 1374, i32 3}
!19 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 1379, i32 33}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 1380, i32 42}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 1382, i32 3}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 1391, i32 47}
!27 = !{ptr @sti_hqvdp_ops, !28, !"sti_hqvdp_ops", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 1344, i32 35}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 1333, i32 3}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 1309, i32 3}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 862, i32 3}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 802, i32 3}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 808, i32 3}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 819, i32 4}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 840, i32 3}
!43 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @sti_hqvdp_vtg_cb.__UNIQUE_ID_ddebug320, !42, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 758, i32 2}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 762, i32 3}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 778, i32 3}
!53 = !{ptr @sti_hqvdp_plane_helpers_funcs, !54, !"sti_hqvdp_plane_helpers_funcs", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 1282, i32 37}
!55 = !{ptr @hqvdp_debugfs_files, !56, !"hqvdp_debugfs_files", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 638, i32 29}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 570, i32 16}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 573, i32 2}
!61 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 574, i32 2}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 575, i32 2}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 576, i32 2}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 578, i32 14}
!70 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 580, i32 15}
!72 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 582, i32 15}
!74 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 584, i32 15}
!76 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 586, i32 15}
!78 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 588, i32 2}
!80 = !{ptr @.str.34, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 589, i32 2}
!82 = !{ptr @.str.35, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 592, i32 15}
!84 = !{ptr @.str.36, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 594, i32 15}
!86 = !{ptr @.str.37, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 595, i32 2}
!88 = !{ptr @.str.38, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 598, i32 15}
!90 = !{ptr @.str.39, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 600, i32 15}
!92 = !{ptr @.str.40, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 601, i32 2}
!94 = !{ptr @.str.41, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 602, i32 2}
!96 = !{ptr @.str.42, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 603, i32 2}
!98 = !{ptr @.str.43, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 604, i32 2}
!100 = !{ptr @.str.44, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 606, i32 15}
!102 = !{ptr @.str.45, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 608, i32 15}
!104 = !{ptr @.str.46, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 614, i32 15}
!106 = !{ptr @.str.47, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 617, i32 17}
!108 = !{ptr @.str.48, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 626, i32 15}
!110 = !{ptr @.str.49, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 629, i32 17}
!112 = !{ptr @.str.50, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 482, i32 14}
!114 = !{ptr @.str.51, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 483, i32 16}
!116 = !{ptr @.str.52, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 483, i32 37}
!118 = !{ptr @.str.53, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 486, i32 15}
!120 = !{ptr @.str.54, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 489, i32 15}
!122 = !{ptr @.str.55, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 492, i32 15}
!124 = !{ptr @.str.56, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 495, i32 15}
!126 = !{ptr @.str.57, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 499, i32 37}
!128 = !{ptr @.str.58, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 500, i32 37}
!130 = !{ptr @.str.59, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 501, i32 37}
!132 = !{ptr @.str.60, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 502, i32 37}
!134 = !{ptr @.str.61, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 503, i32 37}
!136 = !{ptr @.str.62, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 505, i32 37}
!138 = !{ptr @.str.63, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 507, i32 16}
!140 = !{ptr @.str.64, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 510, i32 37}
!142 = !{ptr @.str.65, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 516, i32 14}
!144 = !{ptr @.str.66, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 517, i32 37}
!146 = !{ptr @.str.67, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 522, i32 37}
!148 = !{ptr @.str.68, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 524, i32 16}
!150 = !{ptr @.str.69, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 524, i32 33}
!152 = !{ptr @.str.70, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 526, i32 33}
!154 = !{ptr @.str.71, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 528, i32 33}
!156 = !{ptr @.str.72, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 530, i32 33}
!158 = !{ptr @.str.73, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 533, i32 16}
!160 = !{ptr @.str.74, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 533, i32 30}
!162 = !{ptr @.str.75, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 535, i32 17}
!164 = !{ptr @.str.76, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 537, i32 17}
!166 = !{ptr @.str.77, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 539, i32 30}
!168 = !{ptr @.str.78, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 545, i32 14}
!170 = !{ptr @.str.79, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 546, i32 16}
!172 = !{ptr @.str.80, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 549, i32 15}
!174 = !{ptr @.str.81, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 552, i32 15}
!176 = !{ptr @.str.82, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 555, i32 15}
!178 = !{ptr @.str.83, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 559, i32 37}
!180 = !{ptr @.str.84, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 560, i32 37}
!182 = !{ptr @.str.85, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 456, i32 10}
!184 = !{ptr @.str.86, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 458, i32 10}
!186 = !{ptr @.str.87, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 460, i32 10}
!188 = !{ptr @.str.88, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 462, i32 10}
!190 = !{ptr @.str.89, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 464, i32 10}
!192 = !{ptr @.str.90, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 466, i32 10}
!194 = !{ptr @.str.91, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 468, i32 10}
!196 = !{ptr @.str.92, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 470, i32 10}
!198 = !{ptr @.str.93, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 472, i32 10}
!200 = !{ptr @.str.94, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 474, i32 10}
!202 = !{ptr @coef_lut_a_legacy, !203, !"coef_lut_a_legacy", i1 false, i1 false}
!203 = !{!"../drivers/gpu/drm/sti/sti_hqvdp_lut.h", i32 23, i32 18}
!204 = !{ptr @coef_lut_b, !205, !"coef_lut_b", i1 false, i1 false}
!205 = !{!"../drivers/gpu/drm/sti/sti_hqvdp_lut.h", i32 58, i32 18}
!206 = !{ptr @coef_lut_c_y_legacy, !207, !"coef_lut_c_y_legacy", i1 false, i1 false}
!207 = !{!"../drivers/gpu/drm/sti/sti_hqvdp_lut.h", i32 93, i32 18}
!208 = !{ptr @coef_lut_c_c_legacy, !209, !"coef_lut_c_c_legacy", i1 false, i1 false}
!209 = !{!"../drivers/gpu/drm/sti/sti_hqvdp_lut.h", i32 128, i32 18}
!210 = !{ptr @coef_lut_d_y_legacy, !211, !"coef_lut_d_y_legacy", i1 false, i1 false}
!211 = !{!"../drivers/gpu/drm/sti/sti_hqvdp_lut.h", i32 163, i32 18}
!212 = !{ptr @coef_lut_d_c_legacy, !213, !"coef_lut_d_c_legacy", i1 false, i1 false}
!213 = !{!"../drivers/gpu/drm/sti/sti_hqvdp_lut.h", i32 198, i32 18}
!214 = !{ptr @coef_lut_e_y_legacy, !215, !"coef_lut_e_y_legacy", i1 false, i1 false}
!215 = !{!"../drivers/gpu/drm/sti/sti_hqvdp_lut.h", i32 233, i32 18}
!216 = !{ptr @coef_lut_e_c_legacy, !217, !"coef_lut_e_c_legacy", i1 false, i1 false}
!217 = !{!"../drivers/gpu/drm/sti/sti_hqvdp_lut.h", i32 268, i32 18}
!218 = !{ptr @coef_lut_f_y_legacy, !219, !"coef_lut_f_y_legacy", i1 false, i1 false}
!219 = !{!"../drivers/gpu/drm/sti/sti_hqvdp_lut.h", i32 303, i32 18}
!220 = !{ptr @coef_lut_f_c_legacy, !221, !"coef_lut_f_c_legacy", i1 false, i1 false}
!221 = !{!"../drivers/gpu/drm/sti/sti_hqvdp_lut.h", i32 338, i32 18}
!222 = !{ptr @hqvdp_supported_formats, !223, !"hqvdp_supported_formats", i1 false, i1 false}
!223 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 362, i32 23}
!224 = !{ptr @sti_hqvdp_helpers_funcs, !225, !"sti_hqvdp_helpers_funcs", i1 false, i1 false}
!225 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 1266, i32 44}
!226 = !{ptr @.str.95, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 1052, i32 3}
!228 = !{ptr @.str.96, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 1057, i32 3}
!230 = !{ptr @.str.97, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 1072, i32 3}
!232 = !{ptr @.str.98, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 1085, i32 4}
!234 = !{ptr @.str.99, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 1093, i32 4}
!236 = !{ptr @.str.100, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 1100, i32 2}
!238 = !{ptr @.str.101, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 1103, i32 2}
!240 = !{ptr @.str.102, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 912, i32 3}
!242 = !{ptr @.str.103, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 917, i32 34}
!244 = !{ptr @.str.104, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 918, i32 3}
!246 = !{ptr @.str.105, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 924, i32 3}
!248 = !{ptr @.str.106, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 930, i32 3}
!250 = !{ptr @.str.107, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 935, i32 3}
!252 = !{ptr @.str.108, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 954, i32 3}
!254 = !{ptr @.str.109, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 966, i32 3}
!256 = !{ptr @.str.110, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 1003, i32 3}
!258 = !{ptr @.str.111, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 1011, i32 2}
!260 = !{ptr @.str.112, !259, !"<string literal>", i1 false, i1 false}
!261 = !{ptr @sti_hqvdp_start_xp70._entry, !259, !"_entry", i1 false, i1 false}
!262 = !{ptr @sti_hqvdp_start_xp70._entry_ptr, !259, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @.str.113, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 1143, i32 3}
!265 = !{ptr @.str.114, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 1161, i32 3}
!267 = !{ptr @.str.115, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 1181, i32 2}
!269 = !{ptr @.str.116, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 1237, i32 2}
!271 = !{ptr @sti_hqvdp_atomic_update.__UNIQUE_ID_ddebug337, !270, !"__UNIQUE_ID_ddebug337", i1 false, i1 false}
!272 = !{ptr @.str.117, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 1253, i32 3}
!274 = !{ptr @hqvdp_of_match, !275, !"hqvdp_of_match", i1 false, i1 false}
!275 = !{!"../drivers/gpu/drm/sti/sti_hqvdp.c", i32 1407, i32 34}
!276 = !{i32 1, !"wchar_size", i32 2}
!277 = !{i32 1, !"min_enum_size", i32 4}
!278 = !{i32 8, !"branch-target-enforcement", i32 0}
!279 = !{i32 8, !"sign-return-address", i32 0}
!280 = !{i32 8, !"sign-return-address-all", i32 0}
!281 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!282 = !{i32 7, !"uwtable", i32 1}
!283 = !{i32 7, !"frame-pointer", i32 2}
!284 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!285 = !{!"auto-init"}
!286 = !{i64 2156916459}
!287 = !{i64 6267505}
!288 = !{i64 6267923}
!289 = !{i64 2156917244}
!290 = !{i8 0, i8 2}
!291 = !{i64 2156900003}
!292 = !{i64 2156900597}
!293 = !{i64 2156901193}
!294 = !{i64 2156919120}
!295 = !{i64 2148799709, i64 2148799714, i64 2148799727, i64 2148799771, i64 2148799805, i64 2148799826}
!296 = !{i64 2156902562}
!297 = !{i64 2156903276}
!298 = !{i64 2156903992}
!299 = !{i64 2156904706}
!300 = !{i64 2156905300}
!301 = !{i64 2156906270}
!302 = !{i64 2156906988}
!303 = !{i64 2156907582}
!304 = !{i64 2156908382}
!305 = !{i64 2156908976}
!306 = !{i64 2156909772}
!307 = !{i64 2156910485}
!308 = !{i64 2156911201}
!309 = !{i64 2156911916}
!310 = !{i64 2156912510}
!311 = !{i64 2156913104}
!312 = !{i64 2156913698}
!313 = !{i64 2156901789}
!314 = !{i64 2156930121}
!315 = !{i64 2156930984}
!316 = !{i64 2156931372}
!317 = !{i64 2156931842}
!318 = !{i64 2156932433}
!319 = !{i64 2156932982}
!320 = !{i64 2156933460}
!321 = !{i64 2156933895}
!322 = !{i64 2156934353}
!323 = !{i64 2156934935}
!324 = !{i64 2156935798}
!325 = !{i64 2156936220}
!326 = !{i64 2157020600}
!327 = !{i64 2156922402}
!328 = !{i64 2156922904}
!329 = !{i64 2156923406}
!330 = !{i64 2156923908}
!331 = !{i64 2156924410}
!332 = !{i64 2156924912}
!333 = !{i64 2156925414}
!334 = !{i64 2156925916}
!335 = !{i64 2156926418}
!336 = !{i64 2156926920}
!337 = !{i64 2156927422}
!338 = !{i64 2156927924}
!339 = !{i64 2156928426}
!340 = !{i64 2156928928}
