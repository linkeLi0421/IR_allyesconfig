; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/rcar-du/rcar_du_kms.c_pt.bc'
source_filename = "../drivers/gpu/drm/rcar-du/rcar_du_kms.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rcar_du_format_info = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_gem_object_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_mode_config_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_mode_config_helper_funcs = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.rcar_du_device_info = type { i32, i32, i32, i32, [9 x %struct.rcar_du_output_routing], i32, i32, i32, i32 }
%struct.rcar_du_output_routing = type { i32, i32 }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.seqcount_ww_mutex = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.drm_gem_cma_object = type { %struct.drm_gem_object, i32, ptr, ptr, i8 }
%struct.drm_mode_create_dumb = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.rcar_du_device = type { ptr, ptr, ptr, %struct.drm_device, [4 x %struct.rcar_du_crtc], i32, [2 x %struct.rcar_du_group], [4 x ptr], [4 x %struct.rcar_du_vsp], [2 x ptr], %struct.anon.91, i32, i32, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.87, ptr, i32, ptr, i8, i32 }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.anon.87 = type { i32, ptr }
%struct.rcar_du_crtc = type { %struct.drm_crtc, ptr, ptr, ptr, i32, i32, i8, i32, i8, ptr, %struct.wait_queue_head, %struct.spinlock, %struct.wait_queue_head, i32, ptr, ptr, ptr, i32, ptr, i32, %struct.drm_writeback_connector }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_writeback_connector = type { %struct.drm_connector, %struct.drm_encoder, ptr, %struct.spinlock, %struct.list_head, i32, %struct.spinlock, i32, [32 x i8] }
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
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.rcar_du_group = type { ptr, i32, i32, i32, i32, i32, i32, i32, %struct.mutex, i32, i32, [9 x %struct.rcar_du_plane], i8 }
%struct.rcar_du_plane = type { %struct.drm_plane, ptr }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rcar_du_vsp = type { i32, ptr, ptr, ptr, i32 }
%struct.anon.91 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.anon.93 = type { ptr, i32 }
%struct.of_endpoint = type { i32, i32, ptr }
%struct.drm_mode_fb_cmd2 = type { i32, i32, i32, i32, i32, [4 x i32], [4 x i32], [4 x i32], [4 x i64] }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.rcar_du_crtc_state = type { %struct.drm_crtc_state, %struct.vsp1_du_crc_config, i32 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.vsp1_du_crc_config = type { i32, i32 }

@rcar_du_format_infos = internal constant { [41 x %struct.rcar_du_format_info], [260 x i8] } { [41 x %struct.rcar_du_format_info] [%struct.rcar_du_format_info { i32 909199186, i32 1346520914, i32 16, i32 1, i32 1, i32 1, i32 0 }, %struct.rcar_du_format_info { i32 892424769, i32 892424769, i32 16, i32 1, i32 1, i32 4098, i32 0 }, %struct.rcar_du_format_info { i32 892424792, i32 892424792, i32 16, i32 1, i32 0, i32 4098, i32 0 }, %struct.rcar_du_format_info { i32 875713112, i32 875713112, i32 32, i32 1, i32 1, i32 1, i32 2 }, %struct.rcar_du_format_info { i32 875713089, i32 875713089, i32 32, i32 1, i32 1, i32 4097, i32 1 }, %struct.rcar_du_format_info { i32 1498831189, i32 1498831189, i32 16, i32 1, i32 2, i32 16387, i32 0 }, %struct.rcar_du_format_info { i32 1448695129, i32 1448695129, i32 16, i32 1, i32 2, i32 16387, i32 0 }, %struct.rcar_du_format_info { i32 842094158, i32 842091854, i32 12, i32 2, i32 2, i32 16387, i32 0 }, %struct.rcar_du_format_info { i32 825382478, i32 825380174, i32 12, i32 2, i32 2, i32 16387, i32 0 }, %struct.rcar_du_format_info { i32 909203022, i32 909200718, i32 16, i32 2, i32 2, i32 16387, i32 0 }, %struct.rcar_du_format_info { i32 943867730, i32 826427218, i32 8, i32 1, i32 1, i32 0, i32 0 }, %struct.rcar_du_format_info { i32 842093121, i32 842093121, i32 16, i32 1, i32 1, i32 0, i32 0 }, %struct.rcar_du_format_info { i32 842093144, i32 842093144, i32 16, i32 1, i32 1, i32 0, i32 0 }, %struct.rcar_du_format_info { i32 842088786, i32 842088786, i32 16, i32 1, i32 1, i32 0, i32 0 }, %struct.rcar_du_format_info { i32 842094674, i32 842094674, i32 16, i32 1, i32 1, i32 0, i32 0 }, %struct.rcar_du_format_info { i32 842089025, i32 842089025, i32 16, i32 1, i32 1, i32 0, i32 0 }, %struct.rcar_du_format_info { i32 842089048, i32 842089048, i32 16, i32 1, i32 1, i32 0, i32 0 }, %struct.rcar_du_format_info { i32 842088770, i32 842088775, i32 16, i32 1, i32 1, i32 0, i32 0 }, %struct.rcar_du_format_info { i32 842094658, i32 842094658, i32 16, i32 1, i32 1, i32 0, i32 0 }, %struct.rcar_du_format_info { i32 892420434, i32 892420434, i32 16, i32 1, i32 1, i32 0, i32 0 }, %struct.rcar_du_format_info { i32 892426322, i32 892426322, i32 16, i32 1, i32 1, i32 0, i32 0 }, %struct.rcar_du_format_info { i32 892420673, i32 892420673, i32 16, i32 1, i32 1, i32 0, i32 0 }, %struct.rcar_du_format_info { i32 892420696, i32 892420696, i32 16, i32 1, i32 1, i32 0, i32 0 }, %struct.rcar_du_format_info { i32 892420418, i32 892420418, i32 16, i32 1, i32 1, i32 0, i32 0 }, %struct.rcar_du_format_info { i32 892426306, i32 892426306, i32 16, i32 1, i32 1, i32 0, i32 0 }, %struct.rcar_du_format_info { i32 875710274, i32 859981650, i32 24, i32 1, i32 1, i32 0, i32 0 }, %struct.rcar_du_format_info { i32 875710290, i32 861030210, i32 24, i32 1, i32 1, i32 0, i32 0 }, %struct.rcar_du_format_info { i32 875708754, i32 875708754, i32 32, i32 1, i32 1, i32 0, i32 0 }, %struct.rcar_du_format_info { i32 875714642, i32 875714642, i32 32, i32 1, i32 1, i32 0, i32 0 }, %struct.rcar_du_format_info { i32 875708993, i32 875708993, i32 32, i32 1, i32 1, i32 0, i32 0 }, %struct.rcar_du_format_info { i32 875709016, i32 875709016, i32 32, i32 1, i32 1, i32 0, i32 0 }, %struct.rcar_du_format_info { i32 875708738, i32 875708738, i32 32, i32 1, i32 1, i32 0, i32 0 }, %struct.rcar_du_format_info { i32 875714626, i32 875714626, i32 32, i32 1, i32 1, i32 0, i32 0 }, %struct.rcar_du_format_info { i32 1431918169, i32 1431918169, i32 16, i32 1, i32 2, i32 0, i32 0 }, %struct.rcar_du_format_info { i32 825644622, i32 825642318, i32 16, i32 2, i32 2, i32 0, i32 0 }, %struct.rcar_du_format_info { i32 842093913, i32 842091865, i32 12, i32 3, i32 2, i32 0, i32 0 }, %struct.rcar_du_format_info { i32 842094169, i32 825380185, i32 12, i32 3, i32 2, i32 0, i32 0 }, %struct.rcar_du_format_info { i32 909202777, i32 909200729, i32 16, i32 3, i32 2, i32 0, i32 0 }, %struct.rcar_du_format_info { i32 909203033, i32 825642329, i32 16, i32 3, i32 2, i32 0, i32 0 }, %struct.rcar_du_format_info { i32 875713881, i32 875711833, i32 24, i32 3, i32 1, i32 0, i32 0 }, %struct.rcar_du_format_info { i32 875714137, i32 842288473, i32 24, i32 3, i32 1, i32 0, i32 0 }], [260 x i8] zeroinitializer }, align 32
@rcar_du_gem_funcs = internal constant { %struct.drm_gem_object_funcs, [48 x i8] } { %struct.drm_gem_object_funcs { ptr @drm_gem_cma_object_free, ptr null, ptr null, ptr @drm_gem_cma_object_print_info, ptr null, ptr null, ptr null, ptr @drm_gem_cma_object_get_sg_table, ptr @drm_gem_cma_object_vmap, ptr null, ptr @drm_gem_cma_object_mmap, ptr @drm_gem_cma_vm_ops }, [48 x i8] zeroinitializer }, align 32
@rcar_du_modeset_init.mmio_offsets = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 0, i32 262144], [24 x i8] zeroinitializer }, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rcar_du_modeset_cleanup\00", [40 x i8] zeroinitializer }, align 32
@rcar_du_mode_config_funcs = internal constant { %struct.drm_mode_config_funcs, [60 x i8] } { %struct.drm_mode_config_funcs { ptr @rcar_du_fb_create, ptr null, ptr null, ptr null, ptr @rcar_du_atomic_check, ptr @drm_atomic_helper_commit, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@rcar_du_mode_config_helper = internal constant { %struct.drm_mode_config_helper_funcs, [24 x i8] } { %struct.drm_mode_config_helper_funcs { ptr @rcar_du_atomic_commit_tail, ptr null }, [24 x i8] zeroinitializer }, align 32
@rcar_du_modeset_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&rgrp->lock\00", [20 x i8] zeroinitializer }, align 32
@rcar_du_modeset_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 929, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"error: no encoder could be initialized\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rcar_du_modeset_init\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/gpu/drm/rcar-du/rcar_du_kms.c\00", [58 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rcar_du_modeset_init._entry_ptr = internal global ptr @rcar_du_modeset_init._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@drm_gem_cma_vm_ops = external dso_local constant %struct.vm_operations_struct, align 4
@rcar_du_fb_create.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.8, ptr @.str.4, ptr @.str.9, i8 0, i8 102, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rcar_du_drm\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rcar_du_fb_create\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"unsupported pixel format %08x\0A\00", [33 x i8] zeroinitializer }, align 32
@rcar_du_fb_create.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.8, ptr @.str.4, ptr @.str.10, i8 0, i8 110, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"invalid pitch value %u\0A\00", [40 x i8] zeroinitializer }, align 32
@rcar_du_fb_create.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.8, ptr @.str.4, ptr @.str.11, i8 0, i8 114, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"luma and chroma pitches are not compatible\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"colorkey\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"renesas,vsps\00", [19 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vsps\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"renesas,cmms\00", [19 x i8] zeroinitializer }, align 32
@rcar_du_cmm_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.4, i32 739, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Invalid number of entries in 'renesas,cmms'\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rcar_du_cmm_init\00", [47 x i8] zeroinitializer }, align 32
@rcar_du_cmm_init._entry_ptr = internal global ptr @rcar_du_cmm_init._entry, section ".printk_index", align 4
@rcar_du_cmm_init._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.4, i32 752, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to parse 'renesas,cmms' property\0A\00", [55 x i8] zeroinitializer }, align 32
@rcar_du_cmm_init._entry_ptr.20 = internal global ptr @rcar_du_cmm_init._entry.18, section ".printk_index", align 4
@rcar_du_cmm_init._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.17, ptr @.str.4, i32 764, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"No device found for CMM%u\0A\00", [37 x i8] zeroinitializer }, align 32
@rcar_du_cmm_init._entry_ptr.23 = internal global ptr @rcar_du_cmm_init._entry.21, section ".printk_index", align 4
@rcar_du_cmm_init._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.17, ptr @.str.4, i32 790, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to create device link to CMM%u\0A\00", [57 x i8] zeroinitializer }, align 32
@rcar_du_cmm_init._entry_ptr.26 = internal global ptr @rcar_du_cmm_init._entry.24, section ".printk_index", align 4
@rcar_du_encoders_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.4, i32 604, ptr @.str.29, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"port %u references unexisting output, skipping\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rcar_du_encoders_init\00", [42 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@rcar_du_encoders_init._entry_ptr = internal global ptr @rcar_du_encoders_init._entry, section ".printk_index", align 4
@rcar_du_encoders_init_one.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.30, ptr @.str.4, ptr @.str.31, i8 0, i8 -120, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rcar_du_encoders_init_one\00", [38 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"unconnected endpoint %pOF, skipping\0A\00", [59 x i8] zeroinitializer }, align 32
@rcar_du_encoders_init_one.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.30, ptr @.str.4, ptr @.str.32, i8 0, i8 -118, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"connected entity %pOF is disabled, skipping\0A\00", [51 x i8] zeroinitializer }, align 32
@rcar_du_encoders_init_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.30, ptr @.str.4, i32 563, ptr @.str.29, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"failed to initialize encoder %pOF on output %s (%d), skipping\0A\00", [33 x i8] zeroinitializer }, align 32
@rcar_du_encoders_init_one._entry_ptr = internal global ptr @rcar_du_encoders_init_one._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294966779, i64 4294967229]
@___asan_gen_.34 = private unnamed_addr constant [21 x i8] c"rcar_du_format_infos\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 39, i32 41 }
@___asan_gen_.37 = private unnamed_addr constant [18 x i8] c"rcar_du_gem_funcs\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 329, i32 42 }
@___asan_gen_.40 = private unnamed_addr constant [13 x i8] c"mmio_offsets\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 809, i32 28 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 827, i32 8 }
@___asan_gen_.46 = private unnamed_addr constant [26 x i8] c"rcar_du_mode_config_funcs\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 530, i32 43 }
@___asan_gen_.49 = private unnamed_addr constant [27 x i8] c"rcar_du_mode_config_helper\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 526, i32 50 }
@___asan_gen_.52 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 869, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 929, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 408, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 439, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 455, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 633, i32 45 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 644, i32 31 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 663, i32 20 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 733, i32 42 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 738, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 751, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 764, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 789, i32 4 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 602, i32 4 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 546, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 552, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.154 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.155 = private constant [41 x i8] c"../drivers/gpu/drm/rcar-du/rcar_du_kms.c\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 561, i32 3 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @rcar_du_cmm_init._entry, ptr @rcar_du_cmm_init._entry.18, ptr @rcar_du_cmm_init._entry.21, ptr @rcar_du_cmm_init._entry.24, ptr @rcar_du_cmm_init._entry_ptr, ptr @rcar_du_cmm_init._entry_ptr.20, ptr @rcar_du_cmm_init._entry_ptr.23, ptr @rcar_du_cmm_init._entry_ptr.26, ptr @rcar_du_encoders_init._entry, ptr @rcar_du_encoders_init._entry_ptr, ptr @rcar_du_encoders_init_one._entry, ptr @rcar_du_encoders_init_one._entry_ptr, ptr @rcar_du_modeset_init._entry, ptr @rcar_du_modeset_init._entry_ptr, ptr @rcar_du_format_infos, ptr @rcar_du_gem_funcs, ptr @rcar_du_modeset_init.mmio_offsets, ptr @.str, ptr @rcar_du_mode_config_funcs, ptr @rcar_du_mode_config_helper, ptr @rcar_du_modeset_init.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_du_format_infos to i32), i32 1148, i32 1408, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_du_gem_funcs to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_du_modeset_init.mmio_offsets to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_du_mode_config_funcs to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_du_mode_config_helper to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_du_modeset_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_du_modeset_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_du_cmm_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_du_cmm_init._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_du_cmm_init._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_du_cmm_init._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_du_encoders_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_du_encoders_init_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rcar_du_format_info(i32 noundef %fourcc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.07, 1
  %exitcond.not = icmp eq i32 %inc, 41
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry
  %i.07 = phi i32 [ 0, %entry ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr [41 x %struct.rcar_du_format_info], ptr @rcar_du_format_infos, i32 0, i32 %i.07
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %fourcc)
  %cmp2 = icmp eq i32 %1, %fourcc
  br i1 %cmp2, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi ptr [ %arrayidx, %for.body.cleanup_crit_edge ], [ null, %for.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rcar_du_gem_prime_import_sg_table(ptr noundef %dev, ptr noundef %attach, ptr noundef %sgt) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %info.i = getelementptr i8, ptr %dev, i32 -8
  %0 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info.i, align 4
  %features.i = getelementptr inbounds %struct.rcar_du_device_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %features.i, align 4
  %and.i = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call ptr @drm_gem_cma_prime_import_sg_table(ptr noundef %dev, ptr noundef %attach, ptr noundef %sgt) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 368) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %funcs = getelementptr inbounds %struct.drm_gem_object, ptr %call7.i.i, i32 0, i32 11
  %5 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @rcar_du_gem_funcs, ptr %funcs, align 4
  %6 = ptrtoint ptr %attach to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %attach, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  tail call void @drm_gem_private_object_init(ptr noundef %dev, ptr noundef nonnull %call7.i.i, i32 noundef %9) #8
  %map_noncoherent = getelementptr inbounds %struct.drm_gem_cma_object, ptr %call7.i.i, i32 0, i32 4
  %10 = ptrtoint ptr %map_noncoherent to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %map_noncoherent, align 4
  %call7 = tail call i32 @drm_gem_create_mmap_offset(ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end11, label %if.then9

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @drm_gem_object_release(ptr noundef nonnull %call7.i.i) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  %11 = inttoptr i32 %call7 to ptr
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  %paddr = getelementptr inbounds %struct.drm_gem_cma_object, ptr %call7.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %paddr to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %paddr, align 8
  %sgt12 = getelementptr inbounds %struct.drm_gem_cma_object, ptr %call7.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %sgt12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %sgt, ptr %sgt12, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then9, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ %11, %if.then9 ], [ %call7.i.i, %if.end11 ], [ %call2, %if.then ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_cma_prime_import_sg_table(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_private_object_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_create_mmap_offset(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rcar_du_dumb_create(ptr noundef %file, ptr noundef %dev, ptr noundef %args) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %width = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %args, i32 0, i32 1
  %0 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %width, align 4
  %bpp = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %args, i32 0, i32 2
  %2 = ptrtoint ptr %bpp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bpp, align 8
  %info.i = getelementptr i8, ptr %dev, i32 -8
  %4 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %info.i, align 4
  %quirks.i = getelementptr inbounds %struct.rcar_du_device_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %quirks.i, align 4
  %and.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %8 = shl i32 %3, 1
  %div418 = and i32 %8, 536870910
  %align.0 = select i1 %tobool.i.not, i32 %div418, i32 128
  %mul = mul i32 %3, %1
  %sub = add i32 %mul, 7
  %div17 = lshr i32 %sub, 3
  %sub5 = add nsw i32 %div17, -1
  %add6 = add nsw i32 %sub5, %align.0
  %9 = urem i32 %add6, %align.0
  %mul8 = sub nsw i32 %add6, %9
  %pitch = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %args, i32 0, i32 5
  %10 = ptrtoint ptr %pitch to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %mul8, ptr %pitch, align 4
  %call9 = tail call i32 @drm_gem_cma_dumb_create_internal(ptr noundef %file, ptr noundef %dev, ptr noundef %args) #8
  ret i32 %call9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_cma_dumb_create_internal(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rcar_du_modeset_init(ptr noundef %rcdu) local_unnamed_addr #2 align 64 {
entry:
  %args.i.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ddev = getelementptr inbounds %struct.rcar_du_device, ptr %rcdu, i32 0, i32 3
  %call = tail call i32 @drmm_mode_config_init(ptr noundef %ddev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup319_crit_edge

entry.cleanup319_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup319

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @__drmm_add_action(ptr noundef %ddev, ptr noundef nonnull @rcar_du_modeset_cleanup, ptr noundef null, ptr noundef nonnull @.str) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup319_crit_edge

if.end.cleanup319_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup319

if.end5:                                          ; preds = %if.end
  %min_width = getelementptr inbounds %struct.rcar_du_device, ptr %rcdu, i32 0, i32 3, i32 30, i32 23
  %0 = ptrtoint ptr %min_width to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %min_width, align 4
  %min_height = getelementptr inbounds %struct.rcar_du_device, ptr %rcdu, i32 0, i32 3, i32 30, i32 24
  %1 = ptrtoint ptr %min_height to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %min_height, align 4
  %normalize_zpos = getelementptr inbounds %struct.rcar_du_device, ptr %rcdu, i32 0, i32 3, i32 30, i32 98
  %2 = ptrtoint ptr %normalize_zpos to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %normalize_zpos, align 1
  %funcs = getelementptr inbounds %struct.rcar_du_device, ptr %rcdu, i32 0, i32 3, i32 30, i32 27
  %3 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @rcar_du_mode_config_funcs, ptr %funcs, align 4
  %helper_private = getelementptr inbounds %struct.rcar_du_device, ptr %rcdu, i32 0, i32 3, i32 30, i32 103
  %4 = ptrtoint ptr %helper_private to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @rcar_du_mode_config_helper, ptr %helper_private, align 4
  %info = getelementptr inbounds %struct.rcar_du_device, ptr %rcdu, i32 0, i32 1
  %5 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %info, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %8)
  %cmp = icmp ult i32 %8, 3
  %spec.select = select i1 %cmp, i32 4095, i32 8190
  %spec.select506 = select i1 %cmp, i32 2047, i32 8190
  %9 = getelementptr inbounds %struct.rcar_du_device, ptr %rcdu, i32 0, i32 3, i32 30, i32 25
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %spec.select, ptr %9, align 4
  %11 = getelementptr inbounds %struct.rcar_du_device, ptr %rcdu, i32 0, i32 3, i32 30, i32 26
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %spec.select506, ptr %11, align 4
  %channels_mask = getelementptr inbounds %struct.rcar_du_device_info, ptr %6, i32 0, i32 3
  %13 = ptrtoint ptr %channels_mask to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %channels_mask, align 4
  %call.i = tail call i32 @__sw_hweight8(i32 noundef %14) #8
  %num_crtcs = getelementptr inbounds %struct.rcar_du_device, ptr %rcdu, i32 0, i32 5
  %15 = ptrtoint ptr %num_crtcs to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call.i, ptr %num_crtcs, align 8
  %call.i439 = tail call ptr @drm_property_create_range(ptr noundef %ddev, i32 noundef 0, ptr noundef nonnull @.str.12, i64 noundef 0, i64 noundef 33554431) #8
  %props.i = getelementptr inbounds %struct.rcar_du_device, ptr %rcdu, i32 0, i32 10
  %16 = ptrtoint ptr %props.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i439, ptr %props.i, align 8
  %cmp.i = icmp eq ptr %call.i439, null
  br i1 %cmp.i, label %if.end5.cleanup319_crit_edge, label %if.end99

if.end5.cleanup319_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup319

if.end99:                                         ; preds = %if.end5
  %17 = ptrtoint ptr %num_crtcs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_crtcs, align 8
  %call101 = tail call i32 @drm_vblank_init(ptr noundef %ddev, i32 noundef %18) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %cmp102 = icmp slt i32 %call101, 0
  br i1 %cmp102, label %if.end99.cleanup319_crit_edge, label %if.end105

if.end99.cleanup319_crit_edge:                    ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup319

if.end105:                                        ; preds = %if.end99
  %19 = ptrtoint ptr %num_crtcs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_crtcs, align 8
  %sub = add i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub)
  %cmp108470.not = icmp ult i32 %sub, 2
  br i1 %cmp108470.not, label %if.end105.for.end_crit_edge, label %for.body.preheader

if.end105.for.end_crit_edge:                      ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.preheader:                               ; preds = %if.end105
  %div437 = lshr i32 %sub, 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %i.0471 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr %struct.rcar_du_device, ptr %rcdu, i32 0, i32 6, i32 %i.0471
  %lock = getelementptr %struct.rcar_du_device, ptr %rcdu, i32 0, i32 6, i32 %i.0471, i32 8
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @rcar_du_modeset_init.__key) #8
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %rcdu, ptr %arrayidx, align 8
  %arrayidx111 = getelementptr [2 x i32], ptr @rcar_du_modeset_init.mmio_offsets, i32 0, i32 %i.0471
  %22 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx111, align 4
  %mmio_offset = getelementptr %struct.rcar_du_device, ptr %rcdu, i32 0, i32 6, i32 %i.0471, i32 1
  %24 = ptrtoint ptr %mmio_offset to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %mmio_offset, align 4
  %index = getelementptr %struct.rcar_du_device, ptr %rcdu, i32 0, i32 6, i32 %i.0471, i32 2
  %25 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %i.0471, ptr %index, align 8
  %26 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %info, align 4
  %channels_mask113 = getelementptr inbounds %struct.rcar_du_device_info, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %channels_mask113 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %channels_mask113, align 4
  %mul = shl nuw i32 %i.0471, 1
  %shr = lshr i32 %29, %mul
  %and114 = and i32 %shr, 3
  %channels_mask115 = getelementptr %struct.rcar_du_device, ptr %rcdu, i32 0, i32 6, i32 %i.0471, i32 3
  %30 = ptrtoint ptr %channels_mask115 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %and114, ptr %channels_mask115, align 4
  %call.i440 = tail call i32 @__sw_hweight8(i32 noundef %and114) #8
  %num_crtcs194 = getelementptr %struct.rcar_du_device, ptr %rcdu, i32 0, i32 6, i32 %i.0471, i32 5
  %31 = ptrtoint ptr %num_crtcs194 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call.i440, ptr %num_crtcs194, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i440)
  %cmp196 = icmp ugt i32 %call.i440, 1
  br i1 %cmp196, label %cond.true198, label %for.body.cond.end205_crit_edge

for.body.cond.end205_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end205

cond.true198:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %info, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %35)
  %cmp201 = icmp ugt i32 %35, 2
  %cond203 = select i1 %cmp201, i32 4, i32 240
  br label %cond.end205

cond.end205:                                      ; preds = %cond.true198, %for.body.cond.end205_crit_edge
  %cond206 = phi i32 [ %cond203, %cond.true198 ], [ 0, %for.body.cond.end205_crit_edge ]
  %dptsr_planes = getelementptr %struct.rcar_du_device, ptr %rcdu, i32 0, i32 6, i32 %i.0471, i32 9
  %36 = ptrtoint ptr %dptsr_planes to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %cond206, ptr %dptsr_planes, align 4
  %37 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %info, align 4
  %features.i = getelementptr inbounds %struct.rcar_du_device_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %features.i, align 4
  %and.i = and i32 %40, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then208, label %cond.end205.for.inc_crit_edge

cond.end205.for.inc_crit_edge:                    ; preds = %cond.end205
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then208:                                       ; preds = %cond.end205
  %call209 = tail call i32 @rcar_du_planes_init(ptr noundef %arrayidx) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call209)
  %cmp210 = icmp slt i32 %call209, 0
  br i1 %cmp210, label %if.then208.cleanup319_crit_edge, label %if.then208.for.inc_crit_edge

if.then208.for.inc_crit_edge:                     ; preds = %if.then208
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then208.cleanup319_crit_edge:                  ; preds = %if.then208
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup319

for.inc:                                          ; preds = %if.then208.for.inc_crit_edge, %cond.end205.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0471, 1
  %exitcond.not = icmp eq i32 %inc, %div437
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end105.for.end_crit_edge
  %41 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %info, align 4
  %features.i442 = getelementptr inbounds %struct.rcar_du_device_info, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %features.i442 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %features.i442, align 4
  %and.i443 = and i32 %44, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i443)
  %tobool.i444.not = icmp eq i32 %and.i443, 0
  br i1 %tobool.i444.not, label %for.end.if.end222_crit_edge, label %if.then216

for.end.if.end222_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end222

if.then216:                                       ; preds = %for.end
  %call217 = tail call fastcc i32 @rcar_du_vsps_init(ptr noundef %rcdu)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call217)
  %cmp218 = icmp slt i32 %call217, 0
  br i1 %cmp218, label %if.then216.cleanup319_crit_edge, label %if.then216.if.end222_crit_edge

if.then216.if.end222_crit_edge:                   ; preds = %if.then216
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end222

if.then216.cleanup319_crit_edge:                  ; preds = %if.then216
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup319

if.end222:                                        ; preds = %if.then216.if.end222_crit_edge, %for.end.if.end222_crit_edge
  %45 = ptrtoint ptr %rcdu to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rcdu, align 8
  %of_node.i = getelementptr inbounds %struct.device, ptr %46, i32 0, i32 27
  %47 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %of_node.i, align 8
  %call.i.i = tail call i32 @of_property_count_elems_of_size(ptr noundef %48, ptr noundef nonnull @.str.15, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call.i.i)
  %cmp.i445 = icmp eq i32 %call.i.i, -22
  br i1 %cmp.i445, label %if.end222.rcar_du_cmm_init.exitthread-pre-split_crit_edge, label %if.end.i

if.end222.rcar_du_cmm_init.exitthread-pre-split_crit_edge: ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcar_du_cmm_init.exitthread-pre-split

if.end.i:                                         ; preds = %if.end222
  %49 = ptrtoint ptr %num_crtcs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %num_crtcs, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %50)
  %cmp1.i = icmp ugt i32 %call.i.i, %50
  br i1 %cmp1.i, label %do.end.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp587.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp587.not.i, label %for.cond.preheader.i.rcar_du_cmm_init.exit_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.rcar_du_cmm_init.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcar_du_cmm_init.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %rcdu to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rcdu, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.16) #12
  br label %cleanup319

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.088.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i) #8
  %53 = call ptr @memset(ptr %args.i.i, i32 255, i32 72)
  %call.i71.i = call i32 @__of_parse_phandle_with_args(ptr noundef %48, ptr noundef nonnull @.str.15, ptr noundef null, i32 noundef 0, i32 noundef %i.088.i, ptr noundef nonnull %args.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i71.i)
  %tobool.not.i.i = icmp eq i32 %call.i71.i, 0
  br i1 %tobool.not.i.i, label %of_parse_phandle.exit.i, label %of_parse_phandle.exit.thread.i

of_parse_phandle.exit.thread.i:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #8
  br label %do.end10.i

of_parse_phandle.exit.i:                          ; preds = %for.body.i
  %54 = ptrtoint ptr %args.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %args.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #8
  %tobool.not.i = icmp eq ptr %55, null
  br i1 %tobool.not.i, label %of_parse_phandle.exit.i.do.end10.i_crit_edge, label %if.end12.i

of_parse_phandle.exit.i.do.end10.i_crit_edge:     ; preds = %of_parse_phandle.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end10.i

do.end10.i:                                       ; preds = %of_parse_phandle.exit.i.do.end10.i_crit_edge, %of_parse_phandle.exit.thread.i
  %56 = ptrtoint ptr %rcdu to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %rcdu, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.19) #12
  br label %cleanup319

if.end12.i:                                       ; preds = %of_parse_phandle.exit.i
  %call13.i = call zeroext i1 @of_device_is_available(ptr noundef nonnull %55) #8
  br i1 %call13.i, label %if.end15.i, label %if.then14.i

if.then14.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @of_node_put(ptr noundef nonnull %55) #8
  br label %for.inc.i

if.end15.i:                                       ; preds = %if.end12.i
  %call16.i = call ptr @of_find_device_by_node(ptr noundef nonnull %55) #8
  %tobool17.not.i = icmp eq ptr %call16.i, null
  br i1 %tobool17.not.i, label %do.end21.i, label %if.end23.i

do.end21.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  %58 = ptrtoint ptr %rcdu to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %rcdu, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.22, i32 noundef %i.088.i) #12
  call void @of_node_put(ptr noundef nonnull %55) #8
  br label %cleanup319

if.end23.i:                                       ; preds = %if.end15.i
  call void @of_node_put(ptr noundef nonnull %55) #8
  %call24.i = call i32 @rcar_cmm_init(ptr noundef nonnull %call16.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %if.end28.i, label %if.then26.i

if.then26.i:                                      ; preds = %if.end23.i
  call void @platform_device_put(ptr noundef nonnull %call16.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call24.i)
  %cmp27.i = icmp eq i32 %call24.i, -19
  br i1 %cmp27.i, label %if.then26.i.rcar_du_cmm_init.exitthread-pre-split_crit_edge, label %if.then26.i.cleanup319_crit_edge

if.then26.i.cleanup319_crit_edge:                 ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup319

if.then26.i.rcar_du_cmm_init.exitthread-pre-split_crit_edge: ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcar_du_cmm_init.exitthread-pre-split

if.end28.i:                                       ; preds = %if.end23.i
  %arrayidx.i = getelementptr %struct.rcar_du_device, ptr %rcdu, i32 0, i32 7, i32 %i.088.i
  %60 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call16.i, ptr %arrayidx.i, align 4
  %61 = ptrtoint ptr %rcdu to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %rcdu, align 8
  %dev30.i = getelementptr inbounds %struct.platform_device, ptr %call16.i, i32 0, i32 3
  %call31.i = call ptr @device_link_add(ptr noundef %62, ptr noundef %dev30.i, i32 noundef 1) #8
  %tobool32.not.i = icmp eq ptr %call31.i, null
  br i1 %tobool32.not.i, label %do.end36.i, label %if.end28.i.for.inc.i_crit_edge

if.end28.i.for.inc.i_crit_edge:                   ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

do.end36.i:                                       ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #10
  %63 = ptrtoint ptr %rcdu to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %rcdu, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.25, i32 noundef %i.088.i) #12
  br label %cleanup319

for.inc.i:                                        ; preds = %if.end28.i.for.inc.i_crit_edge, %if.then14.i
  %inc.i = add nuw i32 %i.088.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %call.i.i
  br i1 %exitcond.not.i, label %for.inc.i.rcar_du_cmm_init.exitthread-pre-split_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.rcar_du_cmm_init.exitthread-pre-split_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcar_du_cmm_init.exitthread-pre-split

rcar_du_cmm_init.exitthread-pre-split:            ; preds = %for.inc.i.rcar_du_cmm_init.exitthread-pre-split_crit_edge, %if.then26.i.rcar_du_cmm_init.exitthread-pre-split_crit_edge, %if.end222.rcar_du_cmm_init.exitthread-pre-split_crit_edge
  %65 = ptrtoint ptr %num_crtcs to i32
  call void @__asan_load4_noabort(i32 %65)
  %.pr = load i32, ptr %num_crtcs, align 8
  br label %rcar_du_cmm_init.exit

rcar_du_cmm_init.exit:                            ; preds = %rcar_du_cmm_init.exitthread-pre-split, %for.cond.preheader.i.rcar_du_cmm_init.exit_crit_edge
  %66 = phi i32 [ %.pr, %rcar_du_cmm_init.exitthread-pre-split ], [ %50, %for.cond.preheader.i.rcar_du_cmm_init.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp229472.not = icmp eq i32 %66, 0
  br i1 %cmp229472.not, label %rcar_du_cmm_init.exit.for.end253_crit_edge, label %rcar_du_cmm_init.exit.for.body231_crit_edge

rcar_du_cmm_init.exit.for.body231_crit_edge:      ; preds = %rcar_du_cmm_init.exit
  br label %for.body231

rcar_du_cmm_init.exit.for.end253_crit_edge:       ; preds = %rcar_du_cmm_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end253

for.body231:                                      ; preds = %for.inc251.for.body231_crit_edge, %rcar_du_cmm_init.exit.for.body231_crit_edge
  %swindex.0475 = phi i32 [ %swindex.1.ph, %for.inc251.for.body231_crit_edge ], [ 0, %rcar_du_cmm_init.exit.for.body231_crit_edge ]
  %hwindex.0473 = phi i32 [ %inc252, %for.inc251.for.body231_crit_edge ], [ 0, %rcar_du_cmm_init.exit.for.body231_crit_edge ]
  %67 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %info, align 4
  %channels_mask234 = getelementptr inbounds %struct.rcar_du_device_info, ptr %68, i32 0, i32 3
  %69 = ptrtoint ptr %channels_mask234 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %channels_mask234, align 4
  %shl = shl nuw i32 1, %hwindex.0473
  %and235 = and i32 %70, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and235)
  %tobool236.not = icmp eq i32 %and235, 0
  br i1 %tobool236.not, label %for.body231.for.inc251_crit_edge, label %if.end238

for.body231.for.inc251_crit_edge:                 ; preds = %for.body231
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc251

if.end238:                                        ; preds = %for.body231
  %div240438 = lshr i32 %hwindex.0473, 1
  %arrayidx241 = getelementptr %struct.rcar_du_device, ptr %rcdu, i32 0, i32 6, i32 %div240438
  %inc242 = add nuw i32 %swindex.0475, 1
  %call243 = call i32 @rcar_du_crtc_create(ptr noundef %arrayidx241, i32 noundef %swindex.0475, i32 noundef %hwindex.0473) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call243)
  %cmp244 = icmp slt i32 %call243, 0
  br i1 %cmp244, label %if.end238.cleanup319_crit_edge, label %if.end238.for.inc251_crit_edge

if.end238.for.inc251_crit_edge:                   ; preds = %if.end238
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc251

if.end238.cleanup319_crit_edge:                   ; preds = %if.end238
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup319

for.inc251:                                       ; preds = %if.end238.for.inc251_crit_edge, %for.body231.for.inc251_crit_edge
  %swindex.1.ph = phi i32 [ %inc242, %if.end238.for.inc251_crit_edge ], [ %swindex.0475, %for.body231.for.inc251_crit_edge ]
  %inc252 = add i32 %hwindex.0473, 1
  %71 = ptrtoint ptr %num_crtcs to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %num_crtcs, align 8
  %cmp229 = icmp ult i32 %swindex.1.ph, %72
  br i1 %cmp229, label %for.inc251.for.body231_crit_edge, label %for.inc251.for.end253_crit_edge

for.inc251.for.end253_crit_edge:                  ; preds = %for.inc251
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end253

for.inc251.for.body231_crit_edge:                 ; preds = %for.inc251
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body231

for.end253:                                       ; preds = %for.inc251.for.end253_crit_edge, %rcar_du_cmm_init.exit.for.end253_crit_edge
  %call254 = call fastcc i32 @rcar_du_encoders_init(ptr noundef %rcdu)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call254)
  %cmp255 = icmp slt i32 %call254, 0
  br i1 %cmp255, label %for.end253.cleanup319_crit_edge, label %if.end258

for.end253.cleanup319_crit_edge:                  ; preds = %for.end253
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup319

if.end258:                                        ; preds = %for.end253
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call254)
  %cmp259 = icmp eq i32 %call254, 0
  br i1 %cmp259, label %do.end264, label %if.end266

do.end264:                                        ; preds = %if.end258
  call void @__sanitizer_cov_trace_pc() #10
  %73 = ptrtoint ptr %rcdu to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %rcdu, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.2) #12
  br label %cleanup319

if.end266:                                        ; preds = %if.end258
  %encoder_list = getelementptr inbounds %struct.rcar_du_device, ptr %rcdu, i32 0, i32 3, i32 30, i32 16
  %75 = ptrtoint ptr %encoder_list to i32
  call void @__asan_load4_noabort(i32 %75)
  %.pn476 = load ptr, ptr %encoder_list, align 4
  %cmp271.not477 = icmp eq ptr %.pn476, %encoder_list
  br i1 %cmp271.not477, label %if.end266.for.end290_crit_edge, label %for.body275.lr.ph

if.end266.for.end290_crit_edge:                   ; preds = %if.end266
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end290

for.body275.lr.ph:                                ; preds = %if.end266
  %notmask = shl nsw i32 -1, %call254
  %sub283 = xor i32 %notmask, -1
  br label %for.body275

for.body275:                                      ; preds = %for.body275.for.body275_crit_edge, %for.body275.lr.ph
  %.pn478 = phi ptr [ %.pn476, %for.body275.lr.ph ], [ %.pn, %for.body275.for.body275_crit_edge ]
  %76 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %info, align 4
  %output = getelementptr i8, ptr %.pn478, i32 68
  %78 = ptrtoint ptr %output to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %output, align 4
  %arrayidx280 = getelementptr %struct.rcar_du_device_info, ptr %77, i32 0, i32 4, i32 %79
  %80 = ptrtoint ptr %arrayidx280 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx280, align 4
  %possible_crtcs281 = getelementptr i8, ptr %.pn478, i32 40
  %82 = ptrtoint ptr %possible_crtcs281 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %possible_crtcs281, align 4
  %possible_clones = getelementptr i8, ptr %.pn478, i32 44
  %83 = ptrtoint ptr %possible_clones to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %sub283, ptr %possible_clones, align 4
  %84 = ptrtoint ptr %.pn478 to i32
  call void @__asan_load4_noabort(i32 %84)
  %.pn = load ptr, ptr %.pn478, align 4
  %cmp271.not = icmp eq ptr %.pn, %encoder_list
  br i1 %cmp271.not, label %for.body275.for.end290_crit_edge, label %for.body275.for.body275_crit_edge

for.body275.for.body275_crit_edge:                ; preds = %for.body275
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body275

for.body275.for.end290_crit_edge:                 ; preds = %for.body275
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end290

for.end290:                                       ; preds = %for.body275.for.end290_crit_edge, %if.end266.for.end290_crit_edge
  %85 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %info, align 4
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %86, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %88)
  %cmp293 = icmp ugt i32 %88, 2
  br i1 %cmp293, label %for.cond296, label %for.end290.if.end313_crit_edge

for.end290.if.end313_crit_edge:                   ; preds = %for.end290
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end313

for.cond296:                                      ; preds = %for.end290
  %89 = ptrtoint ptr %num_crtcs to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %num_crtcs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp298.not = icmp eq i32 %90, 0
  br i1 %cmp298.not, label %for.cond296.if.end313_crit_edge, label %for.cond296.cleanup319_crit_edge

for.cond296.cleanup319_crit_edge:                 ; preds = %for.cond296
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup319

for.cond296.if.end313_crit_edge:                  ; preds = %for.cond296
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end313

if.end313:                                        ; preds = %for.cond296.if.end313_crit_edge, %for.end290.if.end313_crit_edge
  %routes315 = getelementptr inbounds %struct.rcar_du_device_info, ptr %86, i32 0, i32 4
  %91 = ptrtoint ptr %routes315 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %routes315, align 4
  %93 = call i32 @llvm.cttz.i32(i32 %92, i1 true), !range !85
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %iszero = icmp eq i32 %92, 0
  %sub318 = select i1 %iszero, i32 -1, i32 %93
  %dpad0_source = getelementptr inbounds %struct.rcar_du_device, ptr %rcdu, i32 0, i32 11
  %94 = ptrtoint ptr %dpad0_source to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %sub318, ptr %dpad0_source, align 4
  call void @drm_mode_config_reset(ptr noundef %ddev) #8
  call void @drm_kms_helper_poll_init(ptr noundef %ddev) #8
  br label %cleanup319

cleanup319:                                       ; preds = %if.end313, %for.cond296.cleanup319_crit_edge, %do.end264, %for.end253.cleanup319_crit_edge, %if.end238.cleanup319_crit_edge, %do.end36.i, %if.then26.i.cleanup319_crit_edge, %do.end21.i, %do.end10.i, %do.end.i, %if.then216.cleanup319_crit_edge, %if.then208.cleanup319_crit_edge, %if.end99.cleanup319_crit_edge, %if.end5.cleanup319_crit_edge, %if.end.cleanup319_crit_edge, %entry.cleanup319_crit_edge
  %retval.6 = phi i32 [ -22, %do.end264 ], [ 0, %if.end313 ], [ %call, %entry.cleanup319_crit_edge ], [ %call2, %if.end.cleanup319_crit_edge ], [ -12, %if.end5.cleanup319_crit_edge ], [ %call101, %if.end99.cleanup319_crit_edge ], [ %call217, %if.then216.cleanup319_crit_edge ], [ %call254, %for.end253.cleanup319_crit_edge ], [ -6, %for.cond296.cleanup319_crit_edge ], [ %call24.i, %if.then26.i.cleanup319_crit_edge ], [ -22, %do.end36.i ], [ -22, %do.end21.i ], [ -22, %do.end10.i ], [ -22, %do.end.i ], [ %call243, %if.end238.cleanup319_crit_edge ], [ %call209, %if.then208.cleanup319_crit_edge ]
  ret i32 %retval.6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drmm_mode_config_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__drmm_add_action(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rcar_du_modeset_cleanup(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %res) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr i8, ptr %dev, i32 22132
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  tail call void @platform_device_put(ptr noundef %1) #8
  %arrayidx.1 = getelementptr i8, ptr %dev, i32 22136
  %2 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.1, align 4
  tail call void @platform_device_put(ptr noundef %3) #8
  %arrayidx.2 = getelementptr i8, ptr %dev, i32 22140
  %4 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.2, align 4
  tail call void @platform_device_put(ptr noundef %5) #8
  %arrayidx.3 = getelementptr i8, ptr %dev, i32 22144
  %6 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.3, align 4
  tail call void @platform_device_put(ptr noundef %7) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_vblank_init(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcar_du_planes_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rcar_du_vsps_init(ptr noundef %rcdu) unnamed_addr #2 align 64 {
entry:
  %args = alloca %struct.of_phandle_args, align 4
  %vsps = alloca [4 x %struct.anon.93], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rcdu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rcdu, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args) #8
  %4 = call ptr @memset(ptr %args, i32 255, i32 72)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %vsps) #8
  %5 = call ptr @memset(ptr %vsps, i32 0, i32 32)
  %call.i = tail call i32 @of_property_count_elems_of_size(ptr noundef %3, ptr noundef nonnull @.str.13, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i118 = tail call i32 @of_property_count_elems_of_size(ptr noundef %3, ptr noundef nonnull @.str.14, i32 noundef 4) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %vsps_prop_name.0 = phi ptr [ @.str.14, %if.then ], [ @.str.13, %entry.if.end_crit_edge ]
  %ret.0 = phi i32 [ %call.i118, %if.then ], [ %call.i, %entry.if.end_crit_edge ]
  %num_crtcs = getelementptr inbounds %struct.rcar_du_device, ptr %rcdu, i32 0, i32 5
  %6 = ptrtoint ptr %num_crtcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_crtcs, align 8
  %div = udiv i32 %ret.0, %7
  %sub = add i32 %div, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp2 = icmp ugt i32 %sub, 1
  br i1 %cmp2, label %if.end.cleanup68_crit_edge, label %for.cond.preheader

if.end.cleanup68_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup68

for.cond.preheader:                               ; preds = %if.end
  %8 = ptrtoint ptr %num_crtcs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_crtcs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp6130.not = icmp eq i32 %9, 0
  br i1 %cmp6130.not, label %for.cond.preheader.cleanup68_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup68_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup68

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp31.not = icmp eq i32 %sub, 0
  %args32 = getelementptr inbounds %struct.of_phandle_args, ptr %args, i32 0, i32 2
  br label %for.body

for.cond39.preheader:                             ; preds = %for.inc36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vsps_count.1)
  %cmp40134.not = icmp eq i32 %vsps_count.1, 0
  br i1 %cmp40134.not, label %for.cond39.preheader.cleanup68_crit_edge, label %for.cond39.preheader.for.body41_crit_edge

for.cond39.preheader.for.body41_crit_edge:        ; preds = %for.cond39.preheader
  br label %for.body41

for.cond39.preheader.cleanup68_crit_edge:         ; preds = %for.cond39.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup68

for.body:                                         ; preds = %for.inc36.for.body_crit_edge, %for.body.lr.ph
  %i.0132 = phi i32 [ 0, %for.body.lr.ph ], [ %inc37, %for.inc36.for.body_crit_edge ]
  %vsps_count.0131 = phi i32 [ 0, %for.body.lr.ph ], [ %vsps_count.1, %for.inc36.for.body_crit_edge ]
  %call.i119 = call i32 @__of_parse_phandle_with_args(ptr noundef %3, ptr noundef nonnull %vsps_prop_name.0, ptr noundef null, i32 noundef %sub, i32 noundef %i.0132, ptr noundef nonnull %args) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i119)
  %cmp8 = icmp slt i32 %call.i119, 0
  br i1 %cmp8, label %for.body.error_crit_edge, label %for.cond11.preheader

for.body.error_crit_edge:                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

for.cond11.preheader:                             ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vsps_count.0131)
  %cmp12128.not = icmp eq i32 %vsps_count.0131, 0
  br i1 %cmp12128.not, label %for.cond11.preheader.if.else_crit_edge, label %for.body13.lr.ph

for.cond11.preheader.if.else_crit_edge:           ; preds = %for.cond11.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

for.body13.lr.ph:                                 ; preds = %for.cond11.preheader
  %10 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %args, align 4
  br label %for.body13

for.body13:                                       ; preds = %for.inc.for.body13_crit_edge, %for.body13.lr.ph
  %j.0129 = phi i32 [ 0, %for.body13.lr.ph ], [ %inc, %for.inc.for.body13_crit_edge ]
  %arrayidx = getelementptr [4 x %struct.anon.93], ptr %vsps, i32 0, i32 %j.0129
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %cmp16 = icmp eq ptr %13, %11
  br i1 %cmp16, label %if.then20.critedge, label %for.inc

for.inc:                                          ; preds = %for.body13
  %inc = add nuw i32 %j.0129, 1
  %exitcond.not = icmp eq i32 %inc, %vsps_count.0131
  br i1 %exitcond.not, label %for.inc.if.else_crit_edge, label %for.inc.for.body13_crit_edge

for.inc.for.body13_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body13

for.inc.if.else_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else

if.then20.critedge:                               ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #10
  call void @of_node_put(ptr noundef %11) #8
  br label %if.end26

if.else:                                          ; preds = %for.inc.if.else_crit_edge, %for.cond11.preheader.if.else_crit_edge
  %14 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %args, align 4
  %inc23 = add i32 %vsps_count.0131, 1
  %arrayidx24 = getelementptr [4 x %struct.anon.93], ptr %vsps, i32 0, i32 %vsps_count.0131
  %16 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %arrayidx24, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then20.critedge
  %j.0126 = phi i32 [ %j.0129, %if.then20.critedge ], [ %vsps_count.0131, %if.else ]
  %vsps_count.1 = phi i32 [ %vsps_count.0131, %if.then20.critedge ], [ %inc23, %if.else ]
  %shl = shl nuw i32 1, %i.0132
  %crtcs_mask = getelementptr [4 x %struct.anon.93], ptr %vsps, i32 0, i32 %j.0126, i32 1
  %17 = ptrtoint ptr %crtcs_mask to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %crtcs_mask, align 4
  %or = or i32 %18, %shl
  store i32 %or, ptr %crtcs_mask, align 4
  %arrayidx29 = getelementptr %struct.rcar_du_device, ptr %rcdu, i32 0, i32 8, i32 %j.0126
  %vsp = getelementptr %struct.rcar_du_device, ptr %rcdu, i32 0, i32 4, i32 %i.0132, i32 16
  %19 = ptrtoint ptr %vsp to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %arrayidx29, ptr %vsp, align 4
  br i1 %cmp31.not, label %if.end26.for.inc36_crit_edge, label %cond.true

if.end26.for.inc36_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc36

cond.true:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %args32 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %args32, align 4
  br label %for.inc36

for.inc36:                                        ; preds = %cond.true, %if.end26.for.inc36_crit_edge
  %cond = phi i32 [ %21, %cond.true ], [ 0, %if.end26.for.inc36_crit_edge ]
  %vsp_pipe = getelementptr %struct.rcar_du_device, ptr %rcdu, i32 0, i32 4, i32 %i.0132, i32 17
  %22 = ptrtoint ptr %vsp_pipe to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %cond, ptr %vsp_pipe, align 8
  %inc37 = add nuw i32 %i.0132, 1
  %23 = ptrtoint ptr %num_crtcs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_crtcs, align 8
  %cmp6 = icmp ult i32 %inc37, %24
  br i1 %cmp6, label %for.inc36.for.body_crit_edge, label %for.cond39.preheader

for.inc36.for.body_crit_edge:                     ; preds = %for.inc36
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.cond39:                                       ; preds = %for.body41
  %inc58 = add nuw i32 %i.1135, 1
  %exitcond142.not = icmp eq i32 %inc58, %vsps_count.1
  br i1 %exitcond142.not, label %for.cond39.cleanup68_crit_edge, label %for.cond39.for.body41_crit_edge

for.cond39.for.body41_crit_edge:                  ; preds = %for.cond39
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body41

for.cond39.cleanup68_crit_edge:                   ; preds = %for.cond39
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup68

for.body41:                                       ; preds = %for.cond39.for.body41_crit_edge, %for.cond39.preheader.for.body41_crit_edge
  %i.1135 = phi i32 [ %inc58, %for.cond39.for.body41_crit_edge ], [ 0, %for.cond39.preheader.for.body41_crit_edge ]
  %arrayidx44 = getelementptr %struct.rcar_du_device, ptr %rcdu, i32 0, i32 8, i32 %i.1135
  %25 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %i.1135, ptr %arrayidx44, align 4
  %dev45 = getelementptr %struct.rcar_du_device, ptr %rcdu, i32 0, i32 8, i32 %i.1135, i32 2
  %26 = ptrtoint ptr %dev45 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %rcdu, ptr %dev45, align 4
  %arrayidx46 = getelementptr [4 x %struct.anon.93], ptr %vsps, i32 0, i32 %i.1135
  %27 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx46, align 4
  %crtcs_mask49 = getelementptr [4 x %struct.anon.93], ptr %vsps, i32 0, i32 %i.1135, i32 1
  %29 = ptrtoint ptr %crtcs_mask49 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %crtcs_mask49, align 4
  %call50 = call i32 @rcar_du_vsp_init(ptr noundef %arrayidx44, ptr noundef %28, i32 noundef %30) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51 = icmp slt i32 %call50, 0
  br i1 %cmp51, label %for.body41.error_crit_edge, label %for.cond39

for.body41.error_crit_edge:                       ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

error:                                            ; preds = %for.body41.error_crit_edge, %for.body.error_crit_edge
  %ret.1 = phi i32 [ %call50, %for.body41.error_crit_edge ], [ %call.i119, %for.body.error_crit_edge ]
  %31 = ptrtoint ptr %vsps to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %vsps, align 4
  call void @of_node_put(ptr noundef %32) #8
  %arrayidx63.1 = getelementptr inbounds [4 x %struct.anon.93], ptr %vsps, i32 0, i32 1
  %33 = ptrtoint ptr %arrayidx63.1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx63.1, align 4
  call void @of_node_put(ptr noundef %34) #8
  %arrayidx63.2 = getelementptr inbounds [4 x %struct.anon.93], ptr %vsps, i32 0, i32 2
  %35 = ptrtoint ptr %arrayidx63.2 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx63.2, align 4
  call void @of_node_put(ptr noundef %36) #8
  %arrayidx63.3 = getelementptr inbounds [4 x %struct.anon.93], ptr %vsps, i32 0, i32 3
  %37 = ptrtoint ptr %arrayidx63.3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx63.3, align 4
  call void @of_node_put(ptr noundef %38) #8
  br label %cleanup68

cleanup68:                                        ; preds = %error, %for.cond39.cleanup68_crit_edge, %for.cond39.preheader.cleanup68_crit_edge, %for.cond.preheader.cleanup68_crit_edge, %if.end.cleanup68_crit_edge
  %retval.0 = phi i32 [ -22, %if.end.cleanup68_crit_edge ], [ 0, %for.cond39.preheader.cleanup68_crit_edge ], [ %ret.1, %error ], [ 0, %for.cond.preheader.cleanup68_crit_edge ], [ 0, %for.cond39.cleanup68_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %vsps) #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcar_du_crtc_create(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rcar_du_encoders_init(ptr noundef %rcdu) unnamed_addr #2 align 64 {
entry:
  %ep = alloca %struct.of_endpoint, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rcdu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rcdu, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_graph_get_next_endpoint(ptr noundef %3, ptr noundef null) #8
  %cmp.not70 = icmp eq ptr %call, null
  br i1 %cmp.not70, label %entry.cleanup32_crit_edge, label %for.body.lr.ph

entry.cleanup32_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup32

for.body.lr.ph:                                   ; preds = %entry
  %4 = getelementptr inbounds %struct.of_endpoint, ptr %ep, i32 0, i32 1
  %5 = getelementptr inbounds %struct.of_endpoint, ptr %ep, i32 0, i32 2
  %info = getelementptr inbounds %struct.rcar_du_device, ptr %rcdu, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc29.for.body_crit_edge, %for.body.lr.ph
  %num_encoders.073 = phi i32 [ 0, %for.body.lr.ph ], [ %num_encoders.1.ph, %for.inc29.for.body_crit_edge ]
  %ep_node.071 = phi ptr [ %call, %for.body.lr.ph ], [ %call30, %for.inc29.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ep) #8
  %6 = ptrtoint ptr %ep to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %ep, align 4, !annotation !86
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %4, align 4, !annotation !86
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %5, align 4, !annotation !86
  %call1 = call i32 @of_graph_parse_endpoint(ptr noundef nonnull %ep_node.071, ptr noundef nonnull %ep) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %for.body.cleanup_crit_edge, label %for.cond3.preheader

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond3.preheader:                              ; preds = %for.body
  %9 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %info, align 4
  %arrayidx = getelementptr %struct.rcar_du_device_info, ptr %10, i32 0, i32 4, i32 0
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %for.cond3.preheader.for.inc_crit_edge, label %land.lhs.true

for.cond3.preheader.for.inc_crit_edge:            ; preds = %for.cond3.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true:                                    ; preds = %for.cond3.preheader
  %port = getelementptr %struct.rcar_du_device_info, ptr %10, i32 0, i32 4, i32 0, i32 1
  %13 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %port, align 4
  %15 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ep, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp10 = icmp eq i32 %14, %16
  br i1 %cmp10, label %land.lhs.true.if.end17_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.cond3.preheader.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.rcar_du_device_info, ptr %10, i32 0, i32 4, i32 1
  %17 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.1 = icmp eq i32 %18, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %land.lhs.true.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  %port.1 = getelementptr %struct.rcar_du_device_info, ptr %10, i32 0, i32 4, i32 1, i32 1
  %19 = ptrtoint ptr %port.1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %port.1, align 4
  %21 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ep, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %22)
  %cmp10.1 = icmp eq i32 %20, %22
  br i1 %cmp10.1, label %land.lhs.true.1.if.end17_crit_edge, label %land.lhs.true.1.for.inc.1_crit_edge

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

land.lhs.true.1.if.end17_crit_edge:               ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

for.inc.1:                                        ; preds = %land.lhs.true.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.rcar_du_device_info, ptr %10, i32 0, i32 4, i32 2
  %23 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.2 = icmp eq i32 %24, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %land.lhs.true.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.inc.1
  %port.2 = getelementptr %struct.rcar_du_device_info, ptr %10, i32 0, i32 4, i32 2, i32 1
  %25 = ptrtoint ptr %port.2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %port.2, align 4
  %27 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ep, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp10.2 = icmp eq i32 %26, %28
  br i1 %cmp10.2, label %land.lhs.true.2.if.end17_crit_edge, label %land.lhs.true.2.for.inc.2_crit_edge

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

land.lhs.true.2.if.end17_crit_edge:               ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

for.inc.2:                                        ; preds = %land.lhs.true.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.rcar_du_device_info, ptr %10, i32 0, i32 4, i32 3
  %29 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.3 = icmp eq i32 %30, 0
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %land.lhs.true.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3

land.lhs.true.3:                                  ; preds = %for.inc.2
  %port.3 = getelementptr %struct.rcar_du_device_info, ptr %10, i32 0, i32 4, i32 3, i32 1
  %31 = ptrtoint ptr %port.3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %port.3, align 4
  %33 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ep, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %34)
  %cmp10.3 = icmp eq i32 %32, %34
  br i1 %cmp10.3, label %land.lhs.true.3.if.end17_crit_edge, label %land.lhs.true.3.for.inc.3_crit_edge

land.lhs.true.3.for.inc.3_crit_edge:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3

land.lhs.true.3.if.end17_crit_edge:               ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

for.inc.3:                                        ; preds = %land.lhs.true.3.for.inc.3_crit_edge, %for.inc.2.for.inc.3_crit_edge
  %arrayidx.4 = getelementptr %struct.rcar_du_device_info, ptr %10, i32 0, i32 4, i32 4
  %35 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.4 = icmp eq i32 %36, 0
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %land.lhs.true.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.4

land.lhs.true.4:                                  ; preds = %for.inc.3
  %port.4 = getelementptr %struct.rcar_du_device_info, ptr %10, i32 0, i32 4, i32 4, i32 1
  %37 = ptrtoint ptr %port.4 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %port.4, align 4
  %39 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ep, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %40)
  %cmp10.4 = icmp eq i32 %38, %40
  br i1 %cmp10.4, label %land.lhs.true.4.if.end17_crit_edge, label %land.lhs.true.4.for.inc.4_crit_edge

land.lhs.true.4.for.inc.4_crit_edge:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.4

land.lhs.true.4.if.end17_crit_edge:               ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

for.inc.4:                                        ; preds = %land.lhs.true.4.for.inc.4_crit_edge, %for.inc.3.for.inc.4_crit_edge
  %arrayidx.5 = getelementptr %struct.rcar_du_device_info, ptr %10, i32 0, i32 4, i32 5
  %41 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.5 = icmp eq i32 %42, 0
  br i1 %tobool.not.5, label %for.inc.4.for.inc.5_crit_edge, label %land.lhs.true.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.5

land.lhs.true.5:                                  ; preds = %for.inc.4
  %port.5 = getelementptr %struct.rcar_du_device_info, ptr %10, i32 0, i32 4, i32 5, i32 1
  %43 = ptrtoint ptr %port.5 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %port.5, align 4
  %45 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ep, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %46)
  %cmp10.5 = icmp eq i32 %44, %46
  br i1 %cmp10.5, label %land.lhs.true.5.if.end17_crit_edge, label %land.lhs.true.5.for.inc.5_crit_edge

land.lhs.true.5.for.inc.5_crit_edge:              ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.5

land.lhs.true.5.if.end17_crit_edge:               ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

for.inc.5:                                        ; preds = %land.lhs.true.5.for.inc.5_crit_edge, %for.inc.4.for.inc.5_crit_edge
  %arrayidx.6 = getelementptr %struct.rcar_du_device_info, ptr %10, i32 0, i32 4, i32 6
  %47 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.6 = icmp eq i32 %48, 0
  br i1 %tobool.not.6, label %for.inc.5.for.inc.6_crit_edge, label %land.lhs.true.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.6

land.lhs.true.6:                                  ; preds = %for.inc.5
  %port.6 = getelementptr %struct.rcar_du_device_info, ptr %10, i32 0, i32 4, i32 6, i32 1
  %49 = ptrtoint ptr %port.6 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %port.6, align 4
  %51 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %ep, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %52)
  %cmp10.6 = icmp eq i32 %50, %52
  br i1 %cmp10.6, label %land.lhs.true.6.if.end17_crit_edge, label %land.lhs.true.6.for.inc.6_crit_edge

land.lhs.true.6.for.inc.6_crit_edge:              ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.6

land.lhs.true.6.if.end17_crit_edge:               ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

for.inc.6:                                        ; preds = %land.lhs.true.6.for.inc.6_crit_edge, %for.inc.5.for.inc.6_crit_edge
  %arrayidx.7 = getelementptr %struct.rcar_du_device_info, ptr %10, i32 0, i32 4, i32 7
  %53 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx.7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.not.7 = icmp eq i32 %54, 0
  br i1 %tobool.not.7, label %for.inc.6.for.inc.7_crit_edge, label %land.lhs.true.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.7

land.lhs.true.7:                                  ; preds = %for.inc.6
  %port.7 = getelementptr %struct.rcar_du_device_info, ptr %10, i32 0, i32 4, i32 7, i32 1
  %55 = ptrtoint ptr %port.7 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %port.7, align 4
  %57 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ep, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %58)
  %cmp10.7 = icmp eq i32 %56, %58
  br i1 %cmp10.7, label %land.lhs.true.7.if.end17_crit_edge, label %land.lhs.true.7.for.inc.7_crit_edge

land.lhs.true.7.for.inc.7_crit_edge:              ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.7

land.lhs.true.7.if.end17_crit_edge:               ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

for.inc.7:                                        ; preds = %land.lhs.true.7.for.inc.7_crit_edge, %for.inc.6.for.inc.7_crit_edge
  %arrayidx.8 = getelementptr %struct.rcar_du_device_info, ptr %10, i32 0, i32 4, i32 8
  %59 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx.8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool.not.8 = icmp eq i32 %60, 0
  br i1 %tobool.not.8, label %for.inc.7.do.end_crit_edge, label %land.lhs.true.8

for.inc.7.do.end_crit_edge:                       ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true.8:                                  ; preds = %for.inc.7
  %port.8 = getelementptr %struct.rcar_du_device_info, ptr %10, i32 0, i32 4, i32 8, i32 1
  %61 = ptrtoint ptr %port.8 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %port.8, align 4
  %63 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %ep, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %64)
  %cmp10.8 = icmp eq i32 %62, %64
  br i1 %cmp10.8, label %land.lhs.true.8.if.end17_crit_edge, label %land.lhs.true.8.do.end_crit_edge

land.lhs.true.8.do.end_crit_edge:                 ; preds = %land.lhs.true.8
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true.8.if.end17_crit_edge:               ; preds = %land.lhs.true.8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

do.end:                                           ; preds = %land.lhs.true.8.do.end_crit_edge, %for.inc.7.do.end_crit_edge
  %65 = ptrtoint ptr %rcdu to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %rcdu, align 8
  %67 = ptrtoint ptr %ep to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %ep, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %66, ptr noundef nonnull @.str.27, i32 noundef %68) #12
  br label %for.inc29

if.end17:                                         ; preds = %land.lhs.true.8.if.end17_crit_edge, %land.lhs.true.7.if.end17_crit_edge, %land.lhs.true.6.if.end17_crit_edge, %land.lhs.true.5.if.end17_crit_edge, %land.lhs.true.4.if.end17_crit_edge, %land.lhs.true.3.if.end17_crit_edge, %land.lhs.true.2.if.end17_crit_edge, %land.lhs.true.1.if.end17_crit_edge, %land.lhs.true.if.end17_crit_edge
  %i.068.lcssa = phi i32 [ 0, %land.lhs.true.if.end17_crit_edge ], [ 1, %land.lhs.true.1.if.end17_crit_edge ], [ 2, %land.lhs.true.2.if.end17_crit_edge ], [ 3, %land.lhs.true.3.if.end17_crit_edge ], [ 4, %land.lhs.true.4.if.end17_crit_edge ], [ 5, %land.lhs.true.5.if.end17_crit_edge ], [ 6, %land.lhs.true.6.if.end17_crit_edge ], [ 7, %land.lhs.true.7.if.end17_crit_edge ], [ 8, %land.lhs.true.8.if.end17_crit_edge ]
  %call18 = call fastcc i32 @rcar_du_encoders_init_one(ptr noundef %rcdu, i32 noundef %i.068.lcssa, ptr noundef nonnull %ep)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.then20, label %if.end24

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %call18)
  %cmp21 = icmp eq i32 %call18, -517
  br i1 %cmp21, label %if.then20.cleanup_crit_edge, label %if.then20.for.inc29_crit_edge

if.then20.for.inc29_crit_edge:                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc29

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end24:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %inc25 = add i32 %num_encoders.073, 1
  br label %for.inc29

cleanup:                                          ; preds = %if.then20.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %retval.1 = phi i32 [ %call1, %for.body.cleanup_crit_edge ], [ -517, %if.then20.cleanup_crit_edge ]
  call void @of_node_put(ptr noundef nonnull %ep_node.071) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ep) #8
  br label %cleanup32

for.inc29:                                        ; preds = %if.end24, %if.then20.for.inc29_crit_edge, %do.end
  %num_encoders.1.ph = phi i32 [ %num_encoders.073, %if.then20.for.inc29_crit_edge ], [ %inc25, %if.end24 ], [ %num_encoders.073, %do.end ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ep) #8
  %call30 = call ptr @of_graph_get_next_endpoint(ptr noundef %3, ptr noundef nonnull %ep_node.071) #8
  %cmp.not = icmp eq ptr %call30, null
  br i1 %cmp.not, label %for.inc29.cleanup32_crit_edge, label %for.inc29.for.body_crit_edge

for.inc29.for.body_crit_edge:                     ; preds = %for.inc29
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc29.cleanup32_crit_edge:                    ; preds = %for.inc29
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup32

cleanup32:                                        ; preds = %for.inc29.cleanup32_crit_edge, %cleanup, %entry.cleanup32_crit_edge
  %retval.2 = phi i32 [ %retval.1, %cleanup ], [ 0, %entry.cleanup32_crit_edge ], [ %num_encoders.1.ph, %for.inc29.cleanup32_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_config_reset(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @drm_gem_cma_object_free(ptr noundef %obj) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @drm_gem_cma_free(ptr noundef %obj) #8
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @drm_gem_cma_object_print_info(ptr noundef %p, i32 noundef %indent, ptr noundef %obj) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @drm_gem_cma_print_info(ptr noundef %obj, ptr noundef %p, i32 noundef %indent) #8
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @drm_gem_cma_object_get_sg_table(ptr noundef %obj) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call ptr @drm_gem_cma_get_sg_table(ptr noundef %obj) #8
  ret ptr %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @drm_gem_cma_object_vmap(ptr noundef %obj, ptr noundef %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @drm_gem_cma_vmap(ptr noundef %obj, ptr noundef %map) #8
  ret i32 %call
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @drm_gem_cma_object_mmap(ptr noundef %obj, ptr noundef %vma) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @drm_gem_cma_mmap(ptr noundef %obj, ptr noundef %vma) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_cma_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_cma_print_info(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_cma_get_sg_table(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_cma_vmap(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_cma_mmap(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @rcar_du_fb_create(ptr noundef %dev, ptr noundef %file_priv, ptr noundef %mode_cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pixel_format = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 3
  %0 = ptrtoint ptr %pixel_format to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pixel_format, align 4
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 41
  br i1 %exitcond.not.i, label %for.cond.i.do.body_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.cond.i.do.body_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %entry
  %i.07.i = phi i32 [ 0, %entry ], [ %inc.i, %for.cond.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [41 x %struct.rcar_du_format_info], ptr @rcar_du_format_infos, i32 0, i32 %i.07.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp2.i = icmp eq i32 %3, %1
  br i1 %cmp2.i, label %rcar_du_format_info.exit, label %for.cond.i

rcar_du_format_info.exit:                         ; preds = %for.body.i
  %cmp = icmp eq ptr %arrayidx.i, null
  br i1 %cmp, label %rcar_du_format_info.exit.do.body_crit_edge, label %if.end9

rcar_du_format_info.exit.do.body_crit_edge:       ; preds = %rcar_du_format_info.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body:                                          ; preds = %rcar_du_format_info.exit.do.body_crit_edge, %for.cond.i.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_du_fb_create.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rcar_du_fb_create, %if.then5)) #8
          to label %cleanup [label %if.then5], !srcloc !87

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev6 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %4 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev6, align 4
  %6 = ptrtoint ptr %pixel_format to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pixel_format, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rcar_du_fb_create.__UNIQUE_ID_ddebug318, ptr noundef %5, ptr noundef nonnull @.str.9, i32 noundef %7) #8
  br label %cleanup

if.end9:                                          ; preds = %rcar_du_format_info.exit
  %info = getelementptr i8, ptr %dev, i32 -8
  %8 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %info, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp10 = icmp ult i32 %11, 3
  br i1 %cmp10, label %if.then11, label %if.end9.if.end19_crit_edge

if.end9.if.end19_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then11:                                        ; preds = %if.end9
  %planes = getelementptr [41 x %struct.rcar_du_format_info], ptr @rcar_du_format_infos, i32 0, i32 %i.07.i, i32 3
  %12 = ptrtoint ptr %planes to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %planes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp12 = icmp eq i32 %13, 1
  br i1 %cmp12, label %cond.true, label %if.then11.cond.end_crit_edge

if.then11.cond.end_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  %bpp13 = getelementptr [41 x %struct.rcar_du_format_info], ptr @rcar_du_format_infos, i32 0, i32 %i.07.i, i32 2
  %14 = ptrtoint ptr %bpp13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bpp13, align 4
  %div106 = lshr i32 %15, 3
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.then11.cond.end_crit_edge
  %cond = phi i32 [ %div106, %cond.true ], [ 1, %if.then11.cond.end_crit_edge ]
  %mul = mul i32 %cond, 4095
  %quirks.i = getelementptr inbounds %struct.rcar_du_device_info, ptr %9, i32 0, i32 2
  %16 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %quirks.i, align 4
  %and.i = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %mul16 = shl i32 %cond, 4
  %mul16.op = add i32 %mul16, -1
  %phi.bo = select i1 %tobool.i.not, i32 %mul16.op, i32 127
  br label %if.end19

if.end19:                                         ; preds = %cond.end, %if.end9.if.end19_crit_edge
  %align.1 = phi i32 [ %phi.bo, %cond.end ], [ 0, %if.end9.if.end19_crit_edge ]
  %max_pitch.0 = phi i32 [ %mul, %cond.end ], [ 65535, %if.end9.if.end19_crit_edge ]
  %pitches = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 6
  %18 = ptrtoint ptr %pitches to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pitches, align 4
  %and = and i32 %19, %align.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool20.not = icmp ne i32 %and, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %max_pitch.0)
  %cmp23 = icmp ugt i32 %19, %max_pitch.0
  %or.cond = select i1 %tobool20.not, i1 true, i1 %cmp23
  br i1 %or.cond, label %do.body25, label %if.end45

do.body25:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_du_fb_create.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rcar_du_fb_create, %if.then37)) #8
          to label %cleanup [label %if.then37], !srcloc !87

if.then37:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #10
  %dev38 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %20 = ptrtoint ptr %dev38 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev38, align 4
  %22 = ptrtoint ptr %pitches to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pitches, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rcar_du_fb_create.__UNIQUE_ID_ddebug319, ptr noundef %21, ptr noundef nonnull @.str.10, i32 noundef %23) #8
  br label %cleanup

if.end45:                                         ; preds = %if.end19
  %hsub = getelementptr [41 x %struct.rcar_du_format_info], ptr @rcar_du_format_infos, i32 0, i32 %i.07.i, i32 4
  %24 = ptrtoint ptr %hsub to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %hsub, align 4
  %div48 = udiv i32 %19, %25
  %planes49 = getelementptr [41 x %struct.rcar_du_format_info], ptr @rcar_du_format_infos, i32 0, i32 %i.07.i, i32 3
  %26 = ptrtoint ptr %planes49 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %planes49, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cmp50 = icmp eq i32 %27, 2
  %mul52 = zext i1 %cmp50 to i32
  %spec.select = shl i32 %div48, %mul52
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp55125 = icmp ugt i32 %27, 1
  br i1 %cmp55125, label %if.end45.for.body_crit_edge, label %if.end45.for.end_crit_edge

if.end45.for.end_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end45.for.body_crit_edge:                      ; preds = %if.end45
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.0126, 1
  %exitcond.not = icmp eq i32 %inc, %27
  br i1 %exitcond.not, label %for.cond.for.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end45.for.body_crit_edge
  %i.0126 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 1, %if.end45.for.body_crit_edge ]
  %arrayidx57 = getelementptr %struct.drm_mode_fb_cmd2, ptr %mode_cmd, i32 0, i32 6, i32 %i.0126
  %28 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx57, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %spec.select)
  %cmp58.not = icmp eq i32 %29, %spec.select
  br i1 %cmp58.not, label %for.cond, label %do.body60

do.body60:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_du_fb_create.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rcar_du_fb_create, %if.then72)) #8
          to label %cleanup [label %if.then72], !srcloc !87

if.then72:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #10
  %dev73 = getelementptr inbounds %struct.drm_device, ptr %dev, i32 0, i32 2
  %30 = ptrtoint ptr %dev73 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev73, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rcar_du_fb_create.__UNIQUE_ID_ddebug320, ptr noundef %31, ptr noundef nonnull @.str.11) #8
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %if.end45.for.end_crit_edge
  %call79 = tail call ptr @drm_gem_fb_create(ptr noundef %dev, ptr noundef %file_priv, ptr noundef %mode_cmd) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then72, %do.body60, %if.then37, %do.body25, %if.then5, %do.body
  %retval.0 = phi ptr [ %call79, %for.end ], [ inttoptr (i32 -22 to ptr), %do.body ], [ inttoptr (i32 -22 to ptr), %if.then5 ], [ inttoptr (i32 -22 to ptr), %do.body25 ], [ inttoptr (i32 -22 to ptr), %if.then37 ], [ inttoptr (i32 -22 to ptr), %do.body60 ], [ inttoptr (i32 -22 to ptr), %if.then72 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_du_atomic_check(ptr noundef %dev, ptr noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call i32 @drm_atomic_helper_check(ptr noundef %dev, ptr noundef %state) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %info.i = getelementptr i8, ptr %dev, i32 -8
  %0 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info.i, align 4
  %features.i = getelementptr inbounds %struct.rcar_du_device_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %features.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %features.i, align 4
  %and.i = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call i32 @rcar_du_atomic_check_planes(ptr noundef %dev, ptr noundef %state) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end4 ], [ %call1, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_commit(ptr noundef, ptr noundef, i1 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_fb_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcar_du_atomic_check_planes(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rcar_du_atomic_commit_tail(ptr noundef %old_state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.drm_atomic_state, ptr %old_state, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %dpad1_source = getelementptr i8, ptr %1, i32 22244
  %2 = ptrtoint ptr %dpad1_source to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %dpad1_source, align 8
  %3 = load ptr, ptr %dev1, align 4
  %num_crtc46 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 19
  %4 = ptrtoint ptr %num_crtc46 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_crtc46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp47.not = icmp eq i32 %5, 0
  br i1 %cmp47.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %crtcs = getelementptr inbounds %struct.drm_atomic_state, ptr %old_state, i32 0, i32 4
  %dpad0_source = getelementptr i8, ptr %1, i32 22240
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.048 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %6 = ptrtoint ptr %crtcs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %crtcs, align 4
  %arrayidx = getelementptr %struct.__drm_crtcs_state, ptr %7, i32 %i.048
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 8
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %new_state = getelementptr %struct.__drm_crtcs_state, ptr %7, i32 %i.048, i32 3
  %10 = ptrtoint ptr %new_state to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %new_state, align 4
  %outputs = getelementptr inbounds %struct.rcar_du_crtc_state, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %outputs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %outputs, align 4
  %and = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %land.lhs.true.if.end_crit_edge, label %if.then12

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then12:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %index = getelementptr inbounds %struct.rcar_du_crtc, ptr %9, i32 0, i32 5
  %14 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %index, align 8
  %16 = ptrtoint ptr %dpad0_source to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %dpad0_source, align 4
  br label %if.end

if.end:                                           ; preds = %if.then12, %land.lhs.true.if.end_crit_edge
  %17 = ptrtoint ptr %outputs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %outputs, align 4
  %and14 = and i32 %18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end.for.inc_crit_edge, label %if.then16

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %index17 = getelementptr inbounds %struct.rcar_du_crtc, ptr %9, i32 0, i32 5
  %19 = ptrtoint ptr %index17 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %index17, align 8
  %21 = ptrtoint ptr %dpad1_source to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %dpad1_source, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then16, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.048, 1
  %22 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev1, align 4
  %num_crtc = getelementptr inbounds %struct.drm_device, ptr %23, i32 0, i32 30, i32 19
  %24 = ptrtoint ptr %num_crtc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_crtc, align 4
  %cmp = icmp ult i32 %inc, %25
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @drm_atomic_helper_commit_modeset_disables(ptr noundef %1, ptr noundef %old_state) #8
  tail call void @drm_atomic_helper_commit_planes(ptr noundef %1, ptr noundef %old_state, i32 noundef 1) #8
  tail call void @drm_atomic_helper_commit_modeset_enables(ptr noundef %1, ptr noundef %old_state) #8
  tail call void @drm_atomic_helper_commit_hw_done(ptr noundef %old_state) #8
  tail call void @drm_atomic_helper_wait_for_flip_done(ptr noundef %1, ptr noundef %old_state) #8
  tail call void @drm_atomic_helper_cleanup_planes(ptr noundef %1, ptr noundef %old_state) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_commit_modeset_disables(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_commit_planes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_commit_modeset_enables(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_commit_hw_done(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_wait_for_flip_done(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_cleanup_planes(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight8(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_property_create_range(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcar_du_vsp_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcar_cmm_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_link_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_next_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_graph_parse_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rcar_du_encoders_init_one(ptr noundef %rcdu, i32 noundef %output, ptr nocapture noundef readonly %ep) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %local_node = getelementptr inbounds %struct.of_endpoint, ptr %ep, i32 0, i32 2
  %0 = ptrtoint ptr %local_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %local_node, align 4
  %call = tail call ptr @of_graph_get_remote_port_parent(ptr noundef %1) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_du_encoders_init_one.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rcar_du_encoders_init_one, %if.then5)) #8
          to label %cleanup [label %if.then5], !srcloc !87

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %rcdu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rcdu, align 8
  %4 = ptrtoint ptr %local_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %local_node, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rcar_du_encoders_init_one.__UNIQUE_ID_ddebug321, ptr noundef %3, ptr noundef nonnull @.str.31, ptr noundef %5) #8
  br label %cleanup

if.end7:                                          ; preds = %entry
  %call8 = tail call zeroext i1 @of_device_is_available(ptr noundef nonnull %call) #8
  br i1 %call8, label %if.end27, label %do.body10

do.body10:                                        ; preds = %if.end7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_du_encoders_init_one.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rcar_du_encoders_init_one, %if.then22)) #8
          to label %do.end26 [label %if.then22], !srcloc !87

if.then22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %rcdu to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rcdu, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rcar_du_encoders_init_one.__UNIQUE_ID_ddebug322, ptr noundef %7, ptr noundef nonnull @.str.32, ptr noundef nonnull %call) #8
  br label %do.end26

do.end26:                                         ; preds = %if.then22, %do.body10
  tail call void @of_node_put(ptr noundef nonnull %call) #8
  br label %cleanup

if.end27:                                         ; preds = %if.end7
  %call28 = tail call i32 @rcar_du_encoder_init(ptr noundef %rcdu, i32 noundef %output, ptr noundef nonnull %call) #8
  %8 = zext i32 %call28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call28, label %do.end35 [
    i32 0, label %if.end27.if.end38_crit_edge
    i32 -517, label %if.end27.if.end38_crit_edge60
    i32 -67, label %if.end27.if.end38_crit_edge61
  ]

if.end27.if.end38_crit_edge61:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.end27.if.end38_crit_edge60:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.end27.if.end38_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

do.end35:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %rcdu to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rcdu, align 8
  %call37 = tail call ptr @rcar_du_output_name(i32 noundef %output) #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %10, ptr noundef nonnull @.str.33, ptr noundef nonnull %call, ptr noundef %call37, i32 noundef %call28) #12
  br label %if.end38

if.end38:                                         ; preds = %do.end35, %if.end27.if.end38_crit_edge, %if.end27.if.end38_crit_edge60, %if.end27.if.end38_crit_edge61
  tail call void @of_node_put(ptr noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %do.end26, %if.then5, %do.body
  %retval.0 = phi i32 [ %call28, %if.end38 ], [ -19, %do.end26 ], [ -19, %if.then5 ], [ -19, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_port_parent(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcar_du_encoder_init(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rcar_du_output_name(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !12, !13, !14, !15, !17, !19, !21, !23, !24, !25, !26, !28, !29, !31, !32, !34, !36, !38, !40, !42, !44, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !64, !65, !67, !68, !69, !71, !72, !74, !75}
!llvm.module.flags = !{!76, !77, !78, !79, !80, !81, !82, !83}
!llvm.ident = !{!84}

!0 = !{ptr @rcar_du_modeset_init.mmio_offsets, !1, !"mmio_offsets", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_kms.c", i32 809, i32 28}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_kms.c", i32 827, i32 8}
!4 = !{ptr @rcar_du_modeset_init.__key, !5, !"__key", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_kms.c", i32 869, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_kms.c", i32 929, i32 3}
!9 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.6, !8, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @rcar_du_modeset_init._entry, !8, !"_entry", i1 false, i1 false}
!14 = !{ptr @rcar_du_modeset_init._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @rcar_du_format_infos, !16, !"rcar_du_format_infos", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_kms.c", i32 39, i32 41}
!17 = !{ptr @rcar_du_gem_funcs, !18, !"rcar_du_gem_funcs", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_kms.c", i32 329, i32 42}
!19 = !{ptr @rcar_du_mode_config_funcs, !20, !"rcar_du_mode_config_funcs", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_kms.c", i32 530, i32 43}
!21 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_kms.c", i32 408, i32 3}
!23 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @rcar_du_fb_create.__UNIQUE_ID_ddebug318, !22, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_kms.c", i32 439, i32 3}
!28 = !{ptr @rcar_du_fb_create.__UNIQUE_ID_ddebug319, !27, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_kms.c", i32 455, i32 4}
!31 = !{ptr @rcar_du_fb_create.__UNIQUE_ID_ddebug320, !30, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!32 = !{ptr @rcar_du_mode_config_helper, !33, !"rcar_du_mode_config_helper", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_kms.c", i32 526, i32 50}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_kms.c", i32 633, i32 45}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_kms.c", i32 644, i32 31}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_kms.c", i32 663, i32 20}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_kms.c", i32 733, i32 42}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_kms.c", i32 738, i32 3}
!44 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @rcar_du_cmm_init._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @rcar_du_cmm_init._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_kms.c", i32 751, i32 4}
!49 = !{ptr @rcar_du_cmm_init._entry.18, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @rcar_du_cmm_init._entry_ptr.20, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_kms.c", i32 764, i32 4}
!53 = !{ptr @rcar_du_cmm_init._entry.21, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @rcar_du_cmm_init._entry_ptr.23, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_kms.c", i32 789, i32 4}
!57 = !{ptr @rcar_du_cmm_init._entry.24, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @rcar_du_cmm_init._entry_ptr.26, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_kms.c", i32 602, i32 4}
!61 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.29, !60, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @rcar_du_encoders_init._entry, !60, !"_entry", i1 false, i1 false}
!64 = !{ptr @rcar_du_encoders_init._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_kms.c", i32 546, i32 3}
!67 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @rcar_du_encoders_init_one.__UNIQUE_ID_ddebug321, !66, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!69 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_kms.c", i32 552, i32 3}
!71 = !{ptr @rcar_du_encoders_init_one.__UNIQUE_ID_ddebug322, !70, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!72 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/rcar-du/rcar_du_kms.c", i32 561, i32 3}
!74 = !{ptr @rcar_du_encoders_init_one._entry, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @rcar_du_encoders_init_one._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{i32 1, !"wchar_size", i32 2}
!77 = !{i32 1, !"min_enum_size", i32 4}
!78 = !{i32 8, !"branch-target-enforcement", i32 0}
!79 = !{i32 8, !"sign-return-address", i32 0}
!80 = !{i32 8, !"sign-return-address-all", i32 0}
!81 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!82 = !{i32 7, !"uwtable", i32 1}
!83 = !{i32 7, !"frame-pointer", i32 2}
!84 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!85 = !{i32 0, i32 33}
!86 = !{!"auto-init"}
!87 = !{i64 2149095589, i64 2149095594, i64 2149095607, i64 2149095651, i64 2149095685, i64 2149095706}
