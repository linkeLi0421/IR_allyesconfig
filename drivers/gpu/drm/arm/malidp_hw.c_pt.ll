; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/arm/malidp_hw.c_pt.bc'
source_filename = "../drivers/gpu/drm/arm/malidp_hw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.malidp_layer = type { i16, i16, i16, i16, i16, i16, i32, i16 }
%struct.malidp_format_id = type { i32, i8, i8 }
%struct.malidp_hw = type { %struct.malidp_hw_regmap, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.malidp_hw_regmap = type { i16, i16, i16, i16, i8, i8, ptr, %struct.malidp_irq_map, %struct.malidp_irq_map, %struct.malidp_irq_map, ptr, i8, i8 }
%struct.malidp_irq_map = type { i32, i32, i32 }
%struct.drm_format_info = type { i32, i8, i8, %union.anon, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon = type { [4 x i8] }
%struct.malidp_hw_device = type { ptr, ptr, ptr, ptr, ptr, ptr, i8, i16, i32, i8, i8, [2 x i32], i32 }
%struct.videomode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.malidp_se_config = type { i8, i8, i16, i16, i16, i16, i32, i32, i32, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.79, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.84, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.79 = type { %struct.list_head, ptr, %struct.spinlock }
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
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.anon.84 = type { i32, ptr }
%struct.malidp_drm = type { ptr, %struct.drm_crtc, %struct.drm_writeback_connector, %struct.wait_queue_head, ptr, %struct.atomic_t, i32, %struct.malidp_error_stats, %struct.malidp_error_stats, %struct.spinlock }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.87 }
%union.anon.87 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.malidp_error_stats = type { i32, i32, i64 }

@malidp_format_modifiers = dso_local constant { [10 x i64], [48 x i8] } { [10 x i64] [i64 576460752303423569, i64 576460752303423505, i64 576460752303423601, i64 576460752303423585, i64 576460752303423553, i64 576460752303423489, i64 576460752303423681, i64 576460752303423617, i64 0, i64 72057594037927935], [48 x i8] zeroinitializer }, align 32
@malidp500_layers = internal constant { [3 x %struct.malidp_layer], [36 x i8] } { [3 x %struct.malidp_layer] [%struct.malidp_layer { i16 1, i16 256, i16 292, i16 24, i16 -184, i16 0, i32 1, i16 1024 }, %struct.malidp_layer { i16 2, i16 512, i16 540, i16 24, i16 0, i16 0, i32 1, i16 1036 }, %struct.malidp_layer { i16 4, i16 768, i16 796, i16 24, i16 0, i16 0, i32 1, i16 1048 }], [36 x i8] zeroinitializer }, align 32
@malidp500_de_formats = internal constant { [21 x %struct.malidp_format_id], [56 x i8] } { [21 x %struct.malidp_format_id] [%struct.malidp_format_id { i32 808669761, i8 39, i8 0 }, %struct.malidp_format_id { i32 808665665, i8 39, i8 1 }, %struct.malidp_format_id { i32 875713089, i8 7, i8 2 }, %struct.malidp_format_id { i32 875708993, i8 7, i8 3 }, %struct.malidp_format_id { i32 875713112, i8 39, i8 4 }, %struct.malidp_format_id { i32 875709016, i8 39, i8 5 }, %struct.malidp_format_id { i32 875710290, i8 7, i8 6 }, %struct.malidp_format_id { i32 875710274, i8 7, i8 7 }, %struct.malidp_format_id { i32 892420434, i8 7, i8 8 }, %struct.malidp_format_id { i32 892420673, i8 7, i8 9 }, %struct.malidp_format_id { i32 909199186, i8 7, i8 10 }, %struct.malidp_format_id { i32 909199170, i8 7, i8 11 }, %struct.malidp_format_id { i32 1498831189, i8 1, i8 12 }, %struct.malidp_format_id { i32 1448695129, i8 1, i8 13 }, %struct.malidp_format_id { i32 842094158, i8 33, i8 14 }, %struct.malidp_format_id { i32 842093913, i8 1, i8 15 }, %struct.malidp_format_id { i32 1448434008, i8 1, i8 16 }, %struct.malidp_format_id { i32 942691673, i8 1, i8 14 }, %struct.malidp_format_id { i32 875713878, i8 1, i8 16 }, %struct.malidp_format_id { i32 808670550, i8 1, i8 17 }, %struct.malidp_format_id { i32 808539481, i8 1, i8 18 }], [56 x i8] zeroinitializer }, align 32
@malidp550_layers = internal constant { [4 x %struct.malidp_layer], [48 x i8] } { [4 x %struct.malidp_layer] [%struct.malidp_layer { i16 1, i16 256, i16 292, i16 24, i16 132, i16 0, i32 1, i16 440 }, %struct.malidp_layer { i16 2, i16 768, i16 796, i16 24, i16 0, i16 0, i32 1, i16 816 }, %struct.malidp_layer { i16 8, i16 512, i16 548, i16 24, i16 132, i16 0, i32 1, i16 696 }, %struct.malidp_layer { i16 16, i16 1024, i16 1068, i16 40, i16 0, i16 0, i32 0, i16 0 }], [48 x i8] zeroinitializer }, align 32
@malidp550_de_formats = internal constant { [30 x %struct.malidp_format_id], [48 x i8] } { [30 x %struct.malidp_format_id] [%struct.malidp_format_id { i32 808669761, i8 43, i8 0 }, %struct.malidp_format_id { i32 808665665, i8 43, i8 1 }, %struct.malidp_format_id { i32 808665426, i8 43, i8 2 }, %struct.malidp_format_id { i32 808665410, i8 43, i8 3 }, %struct.malidp_format_id { i32 875713089, i8 27, i8 8 }, %struct.malidp_format_id { i32 875708993, i8 27, i8 9 }, %struct.malidp_format_id { i32 875708754, i8 27, i8 10 }, %struct.malidp_format_id { i32 875708738, i8 27, i8 11 }, %struct.malidp_format_id { i32 875713112, i8 59, i8 16 }, %struct.malidp_format_id { i32 875709016, i8 59, i8 17 }, %struct.malidp_format_id { i32 875714642, i8 59, i8 18 }, %struct.malidp_format_id { i32 875714626, i8 59, i8 19 }, %struct.malidp_format_id { i32 875710290, i8 43, i8 24 }, %struct.malidp_format_id { i32 875710274, i8 43, i8 25 }, %struct.malidp_format_id { i32 892420434, i8 11, i8 32 }, %struct.malidp_format_id { i32 892420673, i8 11, i8 33 }, %struct.malidp_format_id { i32 909199186, i8 11, i8 34 }, %struct.malidp_format_id { i32 909199170, i8 11, i8 35 }, %struct.malidp_format_id { i32 1448434008, i8 9, i8 40 }, %struct.malidp_format_id { i32 875713878, i8 9, i8 40 }, %struct.malidp_format_id { i32 1448695129, i8 9, i8 42 }, %struct.malidp_format_id { i32 1498831189, i8 9, i8 43 }, %struct.malidp_format_id { i32 842094158, i8 41, i8 46 }, %struct.malidp_format_id { i32 942691673, i8 9, i8 46 }, %struct.malidp_format_id { i32 842093913, i8 9, i8 47 }, %struct.malidp_format_id { i32 808670808, i8 9, i8 48 }, %struct.malidp_format_id { i32 808670550, i8 9, i8 48 }, %struct.malidp_format_id { i32 843853912, i8 9, i8 54 }, %struct.malidp_format_id { i32 808539481, i8 9, i8 55 }, %struct.malidp_format_id { i32 808530000, i8 9, i8 55 }], [48 x i8] zeroinitializer }, align 32
@malidp650_layers = internal constant { [4 x %struct.malidp_layer], [48 x i8] } { [4 x %struct.malidp_layer] [%struct.malidp_layer { i16 1, i16 256, i16 292, i16 24, i16 132, i16 208, i32 1, i16 440 }, %struct.malidp_layer { i16 2, i16 768, i16 796, i16 24, i16 0, i16 72, i32 2, i16 816 }, %struct.malidp_layer { i16 8, i16 512, i16 548, i16 24, i16 132, i16 208, i32 1, i16 696 }, %struct.malidp_layer { i16 16, i16 1024, i16 1068, i16 40, i16 0, i16 120, i32 0, i16 0 }], [48 x i8] zeroinitializer }, align 32
@malidp650_de_formats = internal constant { [31 x %struct.malidp_format_id], [40 x i8] } { [31 x %struct.malidp_format_id] [%struct.malidp_format_id { i32 808669761, i8 43, i8 0 }, %struct.malidp_format_id { i32 808665665, i8 43, i8 1 }, %struct.malidp_format_id { i32 808665426, i8 43, i8 2 }, %struct.malidp_format_id { i32 808665410, i8 43, i8 3 }, %struct.malidp_format_id { i32 875713089, i8 27, i8 8 }, %struct.malidp_format_id { i32 875708993, i8 27, i8 9 }, %struct.malidp_format_id { i32 875708754, i8 27, i8 10 }, %struct.malidp_format_id { i32 875708738, i8 27, i8 11 }, %struct.malidp_format_id { i32 875713112, i8 59, i8 16 }, %struct.malidp_format_id { i32 875709016, i8 59, i8 17 }, %struct.malidp_format_id { i32 875714642, i8 59, i8 18 }, %struct.malidp_format_id { i32 875714626, i8 59, i8 19 }, %struct.malidp_format_id { i32 875710290, i8 43, i8 24 }, %struct.malidp_format_id { i32 875710274, i8 43, i8 25 }, %struct.malidp_format_id { i32 892420434, i8 11, i8 32 }, %struct.malidp_format_id { i32 892420673, i8 11, i8 33 }, %struct.malidp_format_id { i32 909199186, i8 11, i8 34 }, %struct.malidp_format_id { i32 909199170, i8 11, i8 35 }, %struct.malidp_format_id { i32 1448434008, i8 9, i8 40 }, %struct.malidp_format_id { i32 875713878, i8 9, i8 40 }, %struct.malidp_format_id { i32 1448695129, i8 9, i8 42 }, %struct.malidp_format_id { i32 1498831189, i8 9, i8 43 }, %struct.malidp_format_id { i32 842094158, i8 41, i8 46 }, %struct.malidp_format_id { i32 942691673, i8 9, i8 46 }, %struct.malidp_format_id { i32 842093913, i8 9, i8 47 }, %struct.malidp_format_id { i32 808670808, i8 9, i8 48 }, %struct.malidp_format_id { i32 808670550, i8 9, i8 48 }, %struct.malidp_format_id { i32 843853912, i8 9, i8 54 }, %struct.malidp_format_id { i32 808539481, i8 9, i8 55 }, %struct.malidp_format_id { i32 808530000, i8 9, i8 55 }, %struct.malidp_format_id { i32 810299480, i8 9, i8 44 }], [40 x i8] zeroinitializer }, align 32
@malidp_device = dso_local constant { [3 x %struct.malidp_hw], [92 x i8] } { [3 x %struct.malidp_hw] [%struct.malidp_hw { %struct.malidp_hw_regmap { i16 120, i16 3072, i16 0, i16 68, i8 0, i8 3, ptr @malidp500_layers, %struct.malidp_irq_map { i32 -2147483599, i32 32, i32 145 }, %struct.malidp_irq_map { i32 -2147483631, i32 16, i32 800 }, %struct.malidp_irq_map { i32 256, i32 256, i32 0 }, ptr @malidp500_de_formats, i8 21, i8 8 }, ptr @malidp500_query_hw, ptr @malidp500_enter_config_mode, ptr @malidp500_leave_config_mode, ptr @malidp500_in_config_mode, ptr @malidp500_set_config_valid, ptr @malidp500_modeset, ptr @malidp500_rotmem_required, ptr @malidp500_se_set_scaling_coeffs, ptr @malidp500_se_calc_mclk, ptr @malidp500_enable_memwrite, ptr @malidp500_disable_memwrite, i8 1 }, %struct.malidp_hw { %struct.malidp_hw_regmap { i16 80, i16 -32768, i16 -16384, i16 76, i8 15, i8 4, ptr @malidp550_layers, %struct.malidp_irq_map { i32 4097, i32 4096, i32 65793 }, %struct.malidp_irq_map { i32 1, i32 1, i32 458752 }, %struct.malidp_irq_map { i32 16777217, i32 1, i32 0 }, ptr @malidp550_de_formats, i8 30, i8 8 }, ptr @malidp550_query_hw, ptr @malidp550_enter_config_mode, ptr @malidp550_leave_config_mode, ptr @malidp550_in_config_mode, ptr @malidp550_set_config_valid, ptr @malidp550_modeset, ptr @malidp550_rotmem_required, ptr @malidp550_se_set_scaling_coeffs, ptr @malidp550_se_calc_mclk, ptr @malidp550_enable_memwrite, ptr @malidp550_disable_memwrite, i8 0 }, %struct.malidp_hw { %struct.malidp_hw_regmap { i16 80, i16 -32768, i16 -16384, i16 76, i8 11, i8 4, ptr @malidp650_layers, %struct.malidp_irq_map { i32 4113, i32 4096, i32 269418769 }, %struct.malidp_irq_map { i32 1, i32 1, i32 458752 }, %struct.malidp_irq_map { i32 16777217, i32 1, i32 0 }, ptr @malidp650_de_formats, i8 31, i8 16 }, ptr @malidp650_query_hw, ptr @malidp550_enter_config_mode, ptr @malidp550_leave_config_mode, ptr @malidp550_in_config_mode, ptr @malidp550_set_config_valid, ptr @malidp550_modeset, ptr @malidp650_rotmem_required, ptr @malidp550_se_set_scaling_coeffs, ptr @malidp550_se_calc_mclk, ptr @malidp550_enable_memwrite, ptr @malidp550_disable_memwrite, i8 0 }], [92 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"malidp-de\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to install DE IRQ handler\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"malidp-se\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to install SE IRQ handler\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/gpu/drm/arm/malidp_hw.h\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/gpu/drm/arm/malidp_hw.c\00", [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"timeout while entering config mode\00", [61 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"timeout while leaving config mode\00", [62 x i8] zeroinitializer }, align 32
@dp500_se_scaling_coeffs = internal constant { [5 x [96 x i16]], [224 x i8] } { [5 x [96 x i16]] [[96 x i16] [i16 0, i16 1, i16 7, i16 17, i16 30, i16 46, i16 63, i16 82, i16 100, i16 115, i16 125, i16 128, i16 122, i16 108, i16 83, i16 47, i16 0, i16 16326, i16 16259, i16 16185, i16 16106, i16 16027, i16 15951, i16 15882, i16 15828, i16 15792, i16 15778, i16 15793, i16 15838, i16 15919, i16 16037, i16 16192, i16 0, i16 229, i16 494, i16 789, i16 1110, i16 1450, i16 1801, i16 2156, i16 2505, i16 2837, i16 3146, i16 3421, i16 3658, i16 3846, i16 3985, i16 4069, i16 4096, i16 4069, i16 3985, i16 3846, i16 3658, i16 3421, i16 3146, i16 2837, i16 2505, i16 2156, i16 1801, i16 1450, i16 1110, i16 789, i16 494, i16 229, i16 0, i16 16192, i16 16037, i16 15919, i16 15838, i16 15793, i16 15778, i16 15792, i16 15828, i16 15882, i16 15951, i16 16027, i16 16106, i16 16185, i16 16259, i16 16326, i16 0, i16 47, i16 83, i16 108, i16 122, i16 128, i16 125, i16 115, i16 100, i16 82, i16 63, i16 46, i16 30, i16 17, i16 7, i16 1], [96 x i16] [i16 89, i16 79, i16 65, i16 46, i16 22, i16 16379, i16 16345, i16 16308, i16 16268, i16 16226, i16 16182, i16 16137, i16 16093, i16 16051, i16 16013, i16 15980, i16 15954, i16 15935, i16 15925, i16 15927, i16 15942, i16 15969, i16 16012, i16 16069, i16 16143, i16 16232, i16 16337, i16 74, i16 211, i16 361, i16 523, i16 696, i16 878, i16 1069, i16 1266, i16 1465, i16 1665, i16 1861, i16 2051, i16 2234, i16 2405, i16 2563, i16 2705, i16 2829, i16 2933, i16 3014, i16 3072, i16 3104, i16 3112, i16 3104, i16 3072, i16 3014, i16 2933, i16 2829, i16 2705, i16 2563, i16 2405, i16 2234, i16 2051, i16 1861, i16 1665, i16 1465, i16 1266, i16 1069, i16 878, i16 696, i16 523, i16 361, i16 211, i16 74, i16 16337, i16 16232, i16 16143, i16 16069, i16 16012, i16 15969, i16 15942, i16 15927, i16 15925, i16 15935, i16 15954, i16 15980, i16 16013, i16 16051, i16 16093, i16 16137, i16 16182, i16 16226, i16 16268, i16 16308, i16 16345, i16 16379, i16 22, i16 46, i16 65, i16 79], [96 x i16] [i16 16153, i16 16131, i16 16112, i16 16095, i16 16080, i16 16069, i16 16061, i16 16057, i16 16057, i16 16063, i16 16074, i16 16089, i16 16111, i16 16138, i16 16172, i16 16210, i16 16255, i16 16304, i16 16360, i16 38, i16 106, i16 180, i16 259, i16 344, i16 433, i16 525, i16 620, i16 717, i16 815, i16 914, i16 1012, i16 1109, i16 1204, i16 1310, i16 1413, i16 1515, i16 1612, i16 1704, i16 1790, i16 1870, i16 1942, i16 2005, i16 2060, i16 2105, i16 2140, i16 2165, i16 2178, i16 2183, i16 2177, i16 2183, i16 2178, i16 2165, i16 2140, i16 2105, i16 2060, i16 2005, i16 1942, i16 1870, i16 1790, i16 1704, i16 1612, i16 1515, i16 1413, i16 1310, i16 1204, i16 1109, i16 1012, i16 914, i16 815, i16 717, i16 620, i16 525, i16 433, i16 344, i16 259, i16 180, i16 106, i16 38, i16 16360, i16 16304, i16 16255, i16 16210, i16 16172, i16 16138, i16 16111, i16 16089, i16 16074, i16 16063, i16 16057, i16 16057, i16 16061, i16 16069, i16 16080, i16 16095, i16 16112, i16 16131], [96 x i16] [i16 16209, i16 16224, i16 16241, i16 16260, i16 16280, i16 16303, i16 16328, i16 16355, i16 0, i16 31, i16 64, i16 100, i16 138, i16 177, i16 218, i16 262, i16 307, i16 352, i16 398, i16 445, i16 492, i16 541, i16 590, i16 640, i16 690, i16 740, i16 791, i16 841, i16 892, i16 941, i16 991, i16 1040, i16 1088, i16 1128, i16 1167, i16 1203, i16 1238, i16 1272, i16 1302, i16 1331, i16 1358, i16 1382, i16 1404, i16 1424, i16 1440, i16 1454, i16 1466, i16 1475, i16 1481, i16 1475, i16 1466, i16 1454, i16 1440, i16 1424, i16 1404, i16 1382, i16 1358, i16 1331, i16 1302, i16 1272, i16 1238, i16 1203, i16 1167, i16 1128, i16 1088, i16 1040, i16 991, i16 941, i16 892, i16 841, i16 791, i16 740, i16 690, i16 640, i16 590, i16 541, i16 492, i16 445, i16 398, i16 352, i16 307, i16 262, i16 218, i16 177, i16 138, i16 100, i16 64, i16 31, i16 0, i16 16355, i16 16328, i16 16303, i16 16280, i16 16260, i16 16241, i16 16224], [96 x i16] [i16 148, i16 169, i16 190, i16 212, i16 234, i16 257, i16 280, i16 303, i16 328, i16 352, i16 378, i16 403, i16 430, i16 456, i16 484, i16 511, i16 540, i16 563, i16 586, i16 609, i16 632, i16 655, i16 678, i16 701, i16 724, i16 747, i16 770, i16 793, i16 815, i16 838, i16 861, i16 884, i16 906, i16 919, i16 931, i16 943, i16 955, i16 966, i16 977, i16 987, i16 996, i16 1005, i16 1014, i16 1022, i16 1030, i16 1037, i16 1044, i16 1050, i16 1056, i16 1050, i16 1044, i16 1037, i16 1030, i16 1022, i16 1014, i16 1005, i16 996, i16 987, i16 977, i16 966, i16 955, i16 943, i16 931, i16 919, i16 906, i16 884, i16 861, i16 838, i16 815, i16 793, i16 770, i16 747, i16 724, i16 701, i16 678, i16 655, i16 632, i16 609, i16 586, i16 563, i16 540, i16 511, i16 484, i16 456, i16 430, i16 403, i16 378, i16 352, i16 328, i16 303, i16 280, i16 257, i16 234, i16 212, i16 190, i16 169]], [224 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"mclk requirement of %lu kHz can't be met.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Invalid number of planes\00", [39 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 808539481, i64 808670550, i64 942691673]
@__sancov_gen_cov_switch_values.10 = internal global [5 x i64] [i64 3, i64 32, i64 808539481, i64 808670550, i64 942691673]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.12 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 808539481, i64 843853912]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.15 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.16 = internal global [22 x i64] [i64 20, i64 32, i64 808665410, i64 808665426, i64 808669761, i64 808670808, i64 810299480, i64 843853912, i64 875708738, i64 875708754, i64 875709016, i64 875710290, i64 875713089, i64 875713112, i64 875714626, i64 875714642, i64 892420418, i64 892420434, i64 892424769, i64 909199186, i64 1448434008, i64 1498831189]
@__sancov_gen_cov_switch_values.17 = internal global [6 x i64] [i64 4, i64 32, i64 808539481, i64 808670550, i64 875713878, i64 942691673]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.19 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.20 = internal global [30 x i64] [i64 28, i64 32, i64 808530000, i64 808539481, i64 808665410, i64 808665426, i64 808665665, i64 808669761, i64 808670550, i64 810299480, i64 842093913, i64 842094158, i64 875708738, i64 875708754, i64 875708993, i64 875709016, i64 875710274, i64 875710290, i64 875713089, i64 875713112, i64 875713878, i64 875714626, i64 875714642, i64 892420434, i64 892420673, i64 909199170, i64 909199186, i64 942691673, i64 1448695129, i64 1498831189]
@___asan_gen_.21 = private unnamed_addr constant [24 x i8] c"malidp_format_modifiers\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 168, i32 11 }
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"malidp500_layers\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 115, i32 34 }
@___asan_gen_.27 = private unnamed_addr constant [21 x i8] c"malidp500_de_formats\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 35, i32 38 }
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"malidp550_layers\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 130, i32 34 }
@___asan_gen_.33 = private unnamed_addr constant [21 x i8] c"malidp550_de_formats\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 106, i32 38 }
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"malidp650_layers\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 147, i32 34 }
@___asan_gen_.39 = private unnamed_addr constant [21 x i8] c"malidp650_de_formats\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 110, i32 38 }
@___asan_gen_.42 = private unnamed_addr constant [14 x i8] c"malidp_device\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 936, i32 24 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 1267, i32 19 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 1269, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 1376, i32 19 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 1378, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant [35 x i8] c"../drivers/gpu/drm/arm/malidp_hw.h\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 261, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 300, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 316, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant [24 x i8] c"dp500_se_scaling_coeffs\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 195, i32 18 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 505, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.76 = private constant [35 x i8] c"../drivers/gpu/drm/arm/malidp_hw.c\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 542, i32 3 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @malidp_format_modifiers, ptr @malidp500_layers, ptr @malidp500_de_formats, ptr @malidp550_layers, ptr @malidp550_de_formats, ptr @malidp650_layers, ptr @malidp650_de_formats, ptr @malidp_device, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @dp500_se_scaling_coeffs, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @malidp_format_modifiers to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @malidp500_layers to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @malidp500_de_formats to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @malidp550_layers to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @malidp550_de_formats to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @malidp650_layers to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @malidp650_de_formats to i32), i32 248, i32 288, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @malidp_device to i32), i32 324, i32 416, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dp500_se_scaling_coeffs to i32), i32 960, i32 1184, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @malidp_format_get_bpp(i32 noundef %fmt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @drm_format_info(i32 noundef %fmt) #5
  %0 = getelementptr inbounds %struct.drm_format_info, ptr %call, i32 0, i32 3
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %0, align 2
  %conv = zext i8 %2 to i32
  %mul = shl nuw nsw i32 %conv, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp = icmp eq i8 %2, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %3 = zext i32 %fmt to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %fmt, label %sw.default [
    i32 808670550, label %if.then.if.end_crit_edge
    i32 808539481, label %sw.bb2
    i32 942691673, label %sw.bb3
  ]

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

sw.bb2:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

sw.bb3:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

sw.default:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %sw.default, %sw.bb3, %sw.bb2, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %bpp.0 = phi i32 [ 0, %sw.default ], [ 12, %sw.bb3 ], [ 15, %sw.bb2 ], [ %mul, %entry.if.end_crit_edge ], [ 30, %if.then.if.end_crit_edge ]
  ret i32 %bpp.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_format_info(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @malidp500_query_hw(ptr nocapture noundef %hwdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pm_suspended.i = getelementptr inbounds %struct.malidp_hw_device, ptr %hwdev, i32 0, i32 9
  %0 = ptrtoint ptr %pm_suspended.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_suspended.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.malidp_hw_read.exit_crit_edge, label %do.end.i, !prof !47

entry.malidp_hw_read.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_read.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 261, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_read.exit

malidp_hw_read.exit:                              ; preds = %do.end.i, %entry.malidp_hw_read.exit_crit_edge
  %regs.i = getelementptr inbounds %struct.malidp_hw_device, ptr %hwdev, i32 0, i32 1
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 4052
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %5 = and i32 %4, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %min_line_size = getelementptr inbounds %struct.malidp_hw_device, ptr %hwdev, i32 0, i32 6
  %6 = ptrtoint ptr %min_line_size to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 2, ptr %min_line_size, align 4
  %conv1 = select i1 %tobool.not, i32 1, i32 2
  %conv1.tr = trunc i32 %conv1 to i16
  %conv2 = shl nuw nsw i16 %conv1.tr, 11
  %max_line_size = getelementptr inbounds %struct.malidp_hw_device, ptr %hwdev, i32 0, i32 7
  %7 = ptrtoint ptr %max_line_size to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv2, ptr %max_line_size, align 2
  %mul4 = shl nuw nsw i32 %conv1, 16
  %rotation_memory = getelementptr inbounds %struct.malidp_hw_device, ptr %hwdev, i32 0, i32 11
  %8 = ptrtoint ptr %rotation_memory to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %mul4, ptr %rotation_memory, align 4
  %arrayidx6 = getelementptr %struct.malidp_hw_device, ptr %hwdev, i32 0, i32 11, i32 1
  %9 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %arrayidx6, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @malidp500_enter_config_mode(ptr nocapture noundef readonly %hwdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pm_suspended.i.i = getelementptr inbounds %struct.malidp_hw_device, ptr %hwdev, i32 0, i32 9
  %0 = ptrtoint ptr %pm_suspended.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_suspended.i.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i.i, label %entry.malidp_hw_read.exit.i_crit_edge, label %do.end.i.i, !prof !47

entry.malidp_hw_read.exit.i_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_read.exit.i

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 261, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_read.exit.i

malidp_hw_read.exit.i:                            ; preds = %do.end.i.i, %entry.malidp_hw_read.exit.i_crit_edge
  %regs.i.i = getelementptr inbounds %struct.malidp_hw_device, ptr %hwdev, i32 0, i32 1
  %2 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 12
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %5 = ptrtoint ptr %pm_suspended.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %pm_suspended.i.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i5.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i5.i, label %malidp_hw_read.exit.i.malidp_hw_setbits.exit_crit_edge, label %do.end.i6.i, !prof !47

malidp_hw_read.exit.i.malidp_hw_setbits.exit_crit_edge: ; preds = %malidp_hw_read.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_setbits.exit

do.end.i6.i:                                      ; preds = %malidp_hw_read.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 268, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_setbits.exit

malidp_hw_setbits.exit:                           ; preds = %do.end.i6.i, %malidp_hw_read.exit.i.malidp_hw_setbits.exit_crit_edge
  %7 = or i32 %4, 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %8 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %9, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %7) #5, !srcloc !51
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %malidp_hw_setbits.exit
  %count.030 = phi i32 [ 100, %malidp_hw_setbits.exit ], [ %dec, %if.end.while.body_crit_edge ]
  %10 = ptrtoint ptr %hwdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hwdev, align 4
  %dc_base = getelementptr inbounds %struct.malidp_hw_regmap, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %dc_base to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %dc_base, align 4
  %conv = zext i16 %13 to i32
  %14 = ptrtoint ptr %pm_suspended.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %pm_suspended.i.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i, label %while.body.malidp_hw_read.exit_crit_edge, label %do.end.i, !prof !47

while.body.malidp_hw_read.exit_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_read.exit

do.end.i:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 261, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_read.exit

malidp_hw_read.exit:                              ; preds = %do.end.i, %while.body.malidp_hw_read.exit_crit_edge
  %16 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 %conv
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %19 = and i32 %18, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.not = icmp eq i32 %19, 0
  br i1 %cmp.not, label %if.end, label %malidp_hw_read.exit.if.end18_crit_edge

malidp_hw_read.exit.if.end18_crit_edge:           ; preds = %malidp_hw_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.end:                                           ; preds = %malidp_hw_read.exit
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 10000, i32 noundef 2) #5
  %dec = add nsw i32 %count.030, -1
  %cond = icmp eq i32 %dec, 0
  br i1 %cond, label %do.end, label %if.end.while.body_crit_edge, !prof !52

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 300, i32 noundef 9, ptr noundef nonnull @.str.6) #5
  br label %if.end18

if.end18:                                         ; preds = %do.end, %malidp_hw_read.exit.if.end18_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @malidp500_leave_config_mode(ptr nocapture noundef readonly %hwdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pm_suspended.i.i = getelementptr inbounds %struct.malidp_hw_device, ptr %hwdev, i32 0, i32 9
  %0 = ptrtoint ptr %pm_suspended.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_suspended.i.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i.i, label %entry.malidp_hw_read.exit.i_crit_edge, label %do.end.i.i, !prof !47

entry.malidp_hw_read.exit.i_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_read.exit.i

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 261, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_read.exit.i

malidp_hw_read.exit.i:                            ; preds = %do.end.i.i, %entry.malidp_hw_read.exit.i_crit_edge
  %regs.i.i = getelementptr inbounds %struct.malidp_hw_device, ptr %hwdev, i32 0, i32 1
  %2 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 3840
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %5 = ptrtoint ptr %pm_suspended.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %pm_suspended.i.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i5.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i5.i, label %malidp_hw_read.exit.i.malidp_hw_clearbits.exit_crit_edge, label %do.end.i6.i, !prof !47

malidp_hw_read.exit.i.malidp_hw_clearbits.exit_crit_edge: ; preds = %malidp_hw_read.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_clearbits.exit

do.end.i6.i:                                      ; preds = %malidp_hw_read.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 268, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_clearbits.exit

malidp_hw_clearbits.exit:                         ; preds = %do.end.i6.i, %malidp_hw_read.exit.i.malidp_hw_clearbits.exit_crit_edge
  %7 = and i32 %4, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %8 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %9, i32 3840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %7) #5, !srcloc !51
  %10 = ptrtoint ptr %pm_suspended.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %pm_suspended.i.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i.i32 = icmp eq i8 %11, 0
  br i1 %tobool.not.i.i32, label %malidp_hw_clearbits.exit.malidp_hw_read.exit.i37_crit_edge, label %do.end.i.i33, !prof !47

malidp_hw_clearbits.exit.malidp_hw_read.exit.i37_crit_edge: ; preds = %malidp_hw_clearbits.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_read.exit.i37

do.end.i.i33:                                     ; preds = %malidp_hw_clearbits.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 261, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_read.exit.i37

malidp_hw_read.exit.i37:                          ; preds = %do.end.i.i33, %malidp_hw_clearbits.exit.malidp_hw_read.exit.i37_crit_edge
  %12 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i35 = getelementptr i8, ptr %13, i32 12
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i35) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %15 = ptrtoint ptr %pm_suspended.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %pm_suspended.i.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i5.i36 = icmp eq i8 %16, 0
  br i1 %tobool.not.i5.i36, label %malidp_hw_read.exit.i37.malidp_hw_clearbits.exit41_crit_edge, label %do.end.i6.i38, !prof !47

malidp_hw_read.exit.i37.malidp_hw_clearbits.exit41_crit_edge: ; preds = %malidp_hw_read.exit.i37
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_clearbits.exit41

do.end.i6.i38:                                    ; preds = %malidp_hw_read.exit.i37
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 268, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_clearbits.exit41

malidp_hw_clearbits.exit41:                       ; preds = %do.end.i6.i38, %malidp_hw_read.exit.i37.malidp_hw_clearbits.exit41_crit_edge
  %17 = and i32 %14, -513
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %18 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i8.i40 = getelementptr i8, ptr %19, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i40, i32 %17) #5, !srcloc !51
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %malidp_hw_clearbits.exit41
  %count.042 = phi i32 [ 100, %malidp_hw_clearbits.exit41 ], [ %dec, %if.end.while.body_crit_edge ]
  %20 = ptrtoint ptr %hwdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hwdev, align 4
  %dc_base = getelementptr inbounds %struct.malidp_hw_regmap, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %dc_base to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %dc_base, align 4
  %conv = zext i16 %23 to i32
  %24 = ptrtoint ptr %pm_suspended.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %pm_suspended.i.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i = icmp eq i8 %25, 0
  br i1 %tobool.not.i, label %while.body.malidp_hw_read.exit_crit_edge, label %do.end.i, !prof !47

while.body.malidp_hw_read.exit_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_read.exit

do.end.i:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 261, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_read.exit

malidp_hw_read.exit:                              ; preds = %do.end.i, %while.body.malidp_hw_read.exit_crit_edge
  %26 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %27, i32 %conv
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %29 = and i32 %28, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp = icmp eq i32 %29, 0
  br i1 %cmp, label %malidp_hw_read.exit.if.end18_crit_edge, label %if.end

malidp_hw_read.exit.if.end18_crit_edge:           ; preds = %malidp_hw_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.end:                                           ; preds = %malidp_hw_read.exit
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 1000, i32 noundef 2) #5
  %dec = add nsw i32 %count.042, -1
  %cond = icmp eq i32 %dec, 0
  br i1 %cond, label %do.end, label %if.end.while.body_crit_edge, !prof !52

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 316, i32 noundef 9, ptr noundef nonnull @.str.7) #5
  br label %if.end18

if.end18:                                         ; preds = %do.end, %malidp_hw_read.exit.if.end18_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @malidp500_in_config_mode(ptr nocapture noundef readonly %hwdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwdev, align 4
  %dc_base = getelementptr inbounds %struct.malidp_hw_regmap, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dc_base to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %dc_base, align 4
  %pm_suspended.i = getelementptr inbounds %struct.malidp_hw_device, ptr %hwdev, i32 0, i32 9
  %4 = ptrtoint ptr %pm_suspended.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pm_suspended.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %entry.malidp_hw_read.exit_crit_edge, label %do.end.i, !prof !47

entry.malidp_hw_read.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_read.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 261, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_read.exit

malidp_hw_read.exit:                              ; preds = %do.end.i, %entry.malidp_hw_read.exit_crit_edge
  %conv = zext i16 %3 to i32
  %regs.i = getelementptr inbounds %struct.malidp_hw_device, ptr %hwdev, i32 0, i32 1
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %conv
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %9 = and i32 %8, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not = icmp ne i32 %9, 0
  ret i1 %cmp.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @malidp500_set_config_valid(ptr nocapture noundef readonly %hwdev, i8 noundef zeroext %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %value)
  %tobool.not = icmp eq i8 %value, 0
  %pm_suspended.i.i2 = getelementptr inbounds %struct.malidp_hw_device, ptr %hwdev, i32 0, i32 9
  %0 = ptrtoint ptr %pm_suspended.i.i2 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_suspended.i.i2, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i.i3 = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool.not.i.i3, label %if.then.malidp_hw_read.exit.i_crit_edge, label %do.end.i.i, !prof !47

if.then.malidp_hw_read.exit.i_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_read.exit.i

do.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 261, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_read.exit.i

malidp_hw_read.exit.i:                            ; preds = %do.end.i.i, %if.then.malidp_hw_read.exit.i_crit_edge
  %regs.i.i = getelementptr inbounds %struct.malidp_hw_device, ptr %hwdev, i32 0, i32 1
  %2 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 3840
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %5 = ptrtoint ptr %pm_suspended.i.i2 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %pm_suspended.i.i2, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i5.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i5.i, label %malidp_hw_read.exit.i.malidp_hw_setbits.exit_crit_edge, label %do.end.i6.i, !prof !47

malidp_hw_read.exit.i.malidp_hw_setbits.exit_crit_edge: ; preds = %malidp_hw_read.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_setbits.exit

do.end.i6.i:                                      ; preds = %malidp_hw_read.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 268, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_setbits.exit

malidp_hw_setbits.exit:                           ; preds = %do.end.i6.i, %malidp_hw_read.exit.i.malidp_hw_setbits.exit_crit_edge
  %7 = or i32 %4, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %8 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %9, i32 3840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %7) #5, !srcloc !51
  br label %if.end

if.else:                                          ; preds = %entry
  br i1 %tobool.not.i.i3, label %if.else.malidp_hw_read.exit.i8_crit_edge, label %do.end.i.i4, !prof !47

if.else.malidp_hw_read.exit.i8_crit_edge:         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_read.exit.i8

do.end.i.i4:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 261, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_read.exit.i8

malidp_hw_read.exit.i8:                           ; preds = %do.end.i.i4, %if.else.malidp_hw_read.exit.i8_crit_edge
  %regs.i.i5 = getelementptr inbounds %struct.malidp_hw_device, ptr %hwdev, i32 0, i32 1
  %10 = ptrtoint ptr %regs.i.i5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i.i5, align 4
  %add.ptr.i.i6 = getelementptr i8, ptr %11, i32 3840
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i6) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %13 = ptrtoint ptr %pm_suspended.i.i2 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %pm_suspended.i.i2, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i5.i7 = icmp eq i8 %14, 0
  br i1 %tobool.not.i5.i7, label %malidp_hw_read.exit.i8.malidp_hw_clearbits.exit_crit_edge, label %do.end.i6.i9, !prof !47

malidp_hw_read.exit.i8.malidp_hw_clearbits.exit_crit_edge: ; preds = %malidp_hw_read.exit.i8
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_clearbits.exit

do.end.i6.i9:                                     ; preds = %malidp_hw_read.exit.i8
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 268, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_clearbits.exit

malidp_hw_clearbits.exit:                         ; preds = %do.end.i6.i9, %malidp_hw_read.exit.i8.malidp_hw_clearbits.exit_crit_edge
  %15 = and i32 %12, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %16 = ptrtoint ptr %regs.i.i5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i.i5, align 4
  %add.ptr.i8.i10 = getelementptr i8, ptr %17, i32 3840
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i10, i32 %15) #5, !srcloc !51
  br label %if.end

if.end:                                           ; preds = %malidp_hw_clearbits.exit, %malidp_hw_setbits.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @malidp500_modeset(ptr noundef readonly %hwdev, ptr nocapture noundef readonly %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %output_color_depth = getelementptr inbounds %struct.malidp_hw_device, ptr %hwdev, i32 0, i32 8
  %0 = ptrtoint ptr %output_color_depth to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %output_color_depth, align 4
  %2 = ptrtoint ptr %hwdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwdev, align 4
  %out_depth_base = getelementptr inbounds %struct.malidp_hw_regmap, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %out_depth_base to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %out_depth_base, align 2
  %conv = zext i16 %5 to i32
  %pm_suspended.i = getelementptr inbounds %struct.malidp_hw_device, ptr %hwdev, i32 0, i32 9
  %6 = ptrtoint ptr %pm_suspended.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pm_suspended.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %entry.malidp_hw_write.exit_crit_edge, label %do.end.i, !prof !47

entry.malidp_hw_write.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_write.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 268, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_write.exit

malidp_hw_write.exit:                             ; preds = %do.end.i, %entry.malidp_hw_write.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %8 = tail call i32 @llvm.bswap.i32(i32 %1) #5
  %regs.i = getelementptr inbounds %struct.malidp_hw_device, ptr %hwdev, i32 0, i32 1
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 %conv
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #5, !srcloc !51
  %11 = ptrtoint ptr %pm_suspended.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %pm_suspended.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i.i, label %malidp_hw_write.exit.malidp_hw_read.exit.i_crit_edge, label %do.end.i.i, !prof !47

malidp_hw_write.exit.malidp_hw_read.exit.i_crit_edge: ; preds = %malidp_hw_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_read.exit.i

do.end.i.i:                                       ; preds = %malidp_hw_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 261, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_read.exit.i

malidp_hw_read.exit.i:                            ; preds = %do.end.i.i, %malidp_hw_write.exit.malidp_hw_read.exit.i_crit_edge
  %13 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 12
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %16 = ptrtoint ptr %pm_suspended.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %pm_suspended.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i5.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i5.i, label %malidp_hw_read.exit.i.malidp_hw_clearbits.exit_crit_edge, label %do.end.i6.i, !prof !47

malidp_hw_read.exit.i.malidp_hw_clearbits.exit_crit_edge: ; preds = %malidp_hw_read.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_clearbits.exit

do.end.i6.i:                                      ; preds = %malidp_hw_read.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 268, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_clearbits.exit

malidp_hw_clearbits.exit:                         ; preds = %do.end.i6.i, %malidp_hw_read.exit.i.malidp_hw_clearbits.exit_crit_edge
  %18 = and i32 %15, 15781887
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %19 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %20, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %18) #5, !srcloc !51
  %flags = getelementptr inbounds %struct.videomode, ptr %mode, i32 0, i32 9
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags, align 4
  %and = shl i32 %22, 19
  %23 = and i32 %and, 1048576
  %and2 = shl i32 %22, 18
  %24 = and i32 %and2, 2097152
  %25 = ptrtoint ptr %pm_suspended.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %pm_suspended.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i.i71 = icmp eq i8 %26, 0
  br i1 %tobool.not.i.i71, label %malidp_hw_clearbits.exit.malidp_hw_read.exit.i76_crit_edge, label %do.end.i.i72, !prof !47

malidp_hw_clearbits.exit.malidp_hw_read.exit.i76_crit_edge: ; preds = %malidp_hw_clearbits.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_read.exit.i76

do.end.i.i72:                                     ; preds = %malidp_hw_clearbits.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 261, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_read.exit.i76

malidp_hw_read.exit.i76:                          ; preds = %do.end.i.i72, %malidp_hw_clearbits.exit.malidp_hw_read.exit.i76_crit_edge
  %27 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i74 = getelementptr i8, ptr %28, i32 12
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i74) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %30 = ptrtoint ptr %pm_suspended.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %pm_suspended.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i5.i75 = icmp eq i8 %31, 0
  br i1 %tobool.not.i5.i75, label %malidp_hw_read.exit.i76.malidp_hw_setbits.exit_crit_edge, label %do.end.i6.i77, !prof !47

malidp_hw_read.exit.i76.malidp_hw_setbits.exit_crit_edge: ; preds = %malidp_hw_read.exit.i76
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_setbits.exit

do.end.i6.i77:                                    ; preds = %malidp_hw_read.exit.i76
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 268, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_setbits.exit

malidp_hw_setbits.exit:                           ; preds = %do.end.i6.i77, %malidp_hw_read.exit.i76.malidp_hw_setbits.exit_crit_edge
  %32 = tail call i32 @llvm.bswap.i32(i32 %29) #5
  %33 = or i32 %23, %24
  %or7 = or i32 %33, %32
  %or.i = or i32 %or7, 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %34 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  %35 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs.i, align 4
  %add.ptr.i8.i78 = getelementptr i8, ptr %36, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i78, i32 %34) #5, !srcloc !51
  %37 = ptrtoint ptr %pm_suspended.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %pm_suspended.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i80 = icmp eq i8 %38, 0
  br i1 %tobool.not.i80, label %malidp_hw_setbits.exit.malidp_hw_write.exit84_crit_edge, label %do.end.i81, !prof !47

malidp_hw_setbits.exit.malidp_hw_write.exit84_crit_edge: ; preds = %malidp_hw_setbits.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_write.exit84

do.end.i81:                                       ; preds = %malidp_hw_setbits.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 268, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_write.exit84

malidp_hw_write.exit84:                           ; preds = %do.end.i81, %malidp_hw_setbits.exit.malidp_hw_write.exit84_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %39 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs.i, align 4
  %add.ptr.i83 = getelementptr i8, ptr %40, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i83, i32 0) #5, !srcloc !51
  %41 = ptrtoint ptr %pm_suspended.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %pm_suspended.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.i86 = icmp eq i8 %42, 0
  br i1 %tobool.not.i86, label %malidp_hw_write.exit84.malidp_hw_write.exit90_crit_edge, label %do.end.i87, !prof !47

malidp_hw_write.exit84.malidp_hw_write.exit90_crit_edge: ; preds = %malidp_hw_write.exit84
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_write.exit90

do.end.i87:                                       ; preds = %malidp_hw_write.exit84
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 268, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_write.exit90

malidp_hw_write.exit90:                           ; preds = %do.end.i87, %malidp_hw_write.exit84.malidp_hw_write.exit90_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %43 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs.i, align 4
  %add.ptr.i89 = getelementptr i8, ptr %44, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i89, i32 0) #5, !srcloc !51
  %hfront_porch = getelementptr inbounds %struct.videomode, ptr %mode, i32 0, i32 2
  %45 = ptrtoint ptr %hfront_porch to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %hfront_porch, align 4
  %and8 = and i32 %46, 4095
  %hback_porch = getelementptr inbounds %struct.videomode, ptr %mode, i32 0, i32 3
  %47 = ptrtoint ptr %hback_porch to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %hback_porch, align 4
  %and9 = shl i32 %48, 16
  %shl10 = and i32 %and9, 67043328
  %or11 = or i32 %shl10, %and8
  %49 = ptrtoint ptr %pm_suspended.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %pm_suspended.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not.i92 = icmp eq i8 %50, 0
  br i1 %tobool.not.i92, label %malidp_hw_write.exit90.malidp_hw_write.exit96_crit_edge, label %do.end.i93, !prof !47

malidp_hw_write.exit90.malidp_hw_write.exit96_crit_edge: ; preds = %malidp_hw_write.exit90
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_write.exit96

do.end.i93:                                       ; preds = %malidp_hw_write.exit90
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 268, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_write.exit96

malidp_hw_write.exit96:                           ; preds = %do.end.i93, %malidp_hw_write.exit90.malidp_hw_write.exit96_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %51 = tail call i32 @llvm.bswap.i32(i32 %or11) #5
  %52 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs.i, align 4
  %add.ptr.i95 = getelementptr i8, ptr %53, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i95, i32 %51) #5, !srcloc !51
  %vfront_porch = getelementptr inbounds %struct.videomode, ptr %mode, i32 0, i32 6
  %54 = ptrtoint ptr %vfront_porch to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %vfront_porch, align 4
  %and12 = and i32 %55, 255
  %vback_porch = getelementptr inbounds %struct.videomode, ptr %mode, i32 0, i32 7
  %56 = ptrtoint ptr %vback_porch to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %vback_porch, align 4
  %and14 = shl i32 %57, 16
  %shl15 = and i32 %and14, 16711680
  %or16 = or i32 %shl15, %and12
  %58 = ptrtoint ptr %pm_suspended.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %pm_suspended.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool.not.i98 = icmp eq i8 %59, 0
  br i1 %tobool.not.i98, label %malidp_hw_write.exit96.malidp_hw_write.exit102_crit_edge, label %do.end.i99, !prof !47

malidp_hw_write.exit96.malidp_hw_write.exit102_crit_edge: ; preds = %malidp_hw_write.exit96
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_write.exit102

do.end.i99:                                       ; preds = %malidp_hw_write.exit96
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 268, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_write.exit102

malidp_hw_write.exit102:                          ; preds = %do.end.i99, %malidp_hw_write.exit96.malidp_hw_write.exit102_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %60 = tail call i32 @llvm.bswap.i32(i32 %or16) #5
  %61 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regs.i, align 4
  %add.ptr.i101 = getelementptr i8, ptr %62, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i101, i32 %60) #5, !srcloc !51
  %hsync_len = getelementptr inbounds %struct.videomode, ptr %mode, i32 0, i32 4
  %63 = ptrtoint ptr %hsync_len to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %hsync_len, align 4
  %and17 = and i32 %64, 1023
  %vsync_len = getelementptr inbounds %struct.videomode, ptr %mode, i32 0, i32 8
  %65 = ptrtoint ptr %vsync_len to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %vsync_len, align 4
  %and19 = shl i32 %66, 16
  %shl20 = and i32 %and19, 16711680
  %or21 = or i32 %shl20, %and17
  %67 = ptrtoint ptr %pm_suspended.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %pm_suspended.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool.not.i104 = icmp eq i8 %68, 0
  br i1 %tobool.not.i104, label %malidp_hw_write.exit102.malidp_hw_write.exit108_crit_edge, label %do.end.i105, !prof !47

malidp_hw_write.exit102.malidp_hw_write.exit108_crit_edge: ; preds = %malidp_hw_write.exit102
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_write.exit108

do.end.i105:                                      ; preds = %malidp_hw_write.exit102
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 268, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_write.exit108

malidp_hw_write.exit108:                          ; preds = %do.end.i105, %malidp_hw_write.exit102.malidp_hw_write.exit108_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %69 = tail call i32 @llvm.bswap.i32(i32 %or21) #5
  %70 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regs.i, align 4
  %add.ptr.i107 = getelementptr i8, ptr %71, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i107, i32 %69) #5, !srcloc !51
  %hactive = getelementptr inbounds %struct.videomode, ptr %mode, i32 0, i32 1
  %72 = ptrtoint ptr %hactive to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %hactive, align 4
  %and22 = and i32 %73, 8191
  %vactive = getelementptr inbounds %struct.videomode, ptr %mode, i32 0, i32 5
  %74 = ptrtoint ptr %vactive to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %vactive, align 4
  %and24 = shl i32 %75, 16
  %shl25 = and i32 %and24, 536805376
  %or26 = or i32 %shl25, %and22
  %76 = ptrtoint ptr %pm_suspended.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %pm_suspended.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool.not.i110 = icmp eq i8 %77, 0
  br i1 %tobool.not.i110, label %malidp_hw_write.exit108.malidp_hw_write.exit114_crit_edge, label %do.end.i111, !prof !47

malidp_hw_write.exit108.malidp_hw_write.exit114_crit_edge: ; preds = %malidp_hw_write.exit108
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_write.exit114

do.end.i111:                                      ; preds = %malidp_hw_write.exit108
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 268, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_write.exit114

malidp_hw_write.exit114:                          ; preds = %do.end.i111, %malidp_hw_write.exit108.malidp_hw_write.exit114_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %78 = tail call i32 @llvm.bswap.i32(i32 %or26) #5
  %79 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %regs.i, align 4
  %add.ptr.i113 = getelementptr i8, ptr %80, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i113, i32 %78) #5, !srcloc !51
  %81 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %flags, align 4
  %and28 = and i32 %82, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  %83 = ptrtoint ptr %pm_suspended.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %pm_suspended.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool.not.i.i127 = icmp eq i8 %84, 0
  br i1 %tobool29.not, label %if.else, label %if.then30

if.then30:                                        ; preds = %malidp_hw_write.exit114
  br i1 %tobool.not.i.i127, label %if.then30.malidp_hw_read.exit.i121_crit_edge, label %do.end.i.i117, !prof !47

if.then30.malidp_hw_read.exit.i121_crit_edge:     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_read.exit.i121

do.end.i.i117:                                    ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 261, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_read.exit.i121

malidp_hw_read.exit.i121:                         ; preds = %do.end.i.i117, %if.then30.malidp_hw_read.exit.i121_crit_edge
  %85 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i119 = getelementptr i8, ptr %86, i32 32
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i119) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %88 = ptrtoint ptr %pm_suspended.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %pm_suspended.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool.not.i5.i120 = icmp eq i8 %89, 0
  br i1 %tobool.not.i5.i120, label %malidp_hw_read.exit.i121.malidp_hw_setbits.exit125_crit_edge, label %do.end.i6.i122, !prof !47

malidp_hw_read.exit.i121.malidp_hw_setbits.exit125_crit_edge: ; preds = %malidp_hw_read.exit.i121
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_setbits.exit125

do.end.i6.i122:                                   ; preds = %malidp_hw_read.exit.i121
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 268, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_setbits.exit125

malidp_hw_setbits.exit125:                        ; preds = %do.end.i6.i122, %malidp_hw_read.exit.i121.malidp_hw_setbits.exit125_crit_edge
  %90 = or i32 %87, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %91 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %regs.i, align 4
  %add.ptr.i8.i124 = getelementptr i8, ptr %92, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i124, i32 %90) #5, !srcloc !51
  br label %if.end31

if.else:                                          ; preds = %malidp_hw_write.exit114
  br i1 %tobool.not.i.i127, label %if.else.malidp_hw_read.exit.i132_crit_edge, label %do.end.i.i128, !prof !47

if.else.malidp_hw_read.exit.i132_crit_edge:       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_read.exit.i132

do.end.i.i128:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 261, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_read.exit.i132

malidp_hw_read.exit.i132:                         ; preds = %do.end.i.i128, %if.else.malidp_hw_read.exit.i132_crit_edge
  %93 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i130 = getelementptr i8, ptr %94, i32 32
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i130) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %96 = ptrtoint ptr %pm_suspended.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %pm_suspended.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool.not.i5.i131 = icmp eq i8 %97, 0
  br i1 %tobool.not.i5.i131, label %malidp_hw_read.exit.i132.malidp_hw_clearbits.exit136_crit_edge, label %do.end.i6.i133, !prof !47

malidp_hw_read.exit.i132.malidp_hw_clearbits.exit136_crit_edge: ; preds = %malidp_hw_read.exit.i132
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_clearbits.exit136

do.end.i6.i133:                                   ; preds = %malidp_hw_read.exit.i132
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 268, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_clearbits.exit136

malidp_hw_clearbits.exit136:                      ; preds = %do.end.i6.i133, %malidp_hw_read.exit.i132.malidp_hw_clearbits.exit136_crit_edge
  %98 = and i32 %95, -65537
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %99 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %regs.i, align 4
  %add.ptr.i8.i135 = getelementptr i8, ptr %100, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i135, i32 %98) #5, !srcloc !51
  br label %if.end31

if.end31:                                         ; preds = %malidp_hw_clearbits.exit136, %malidp_hw_setbits.exit125
  %arqos_value = getelementptr inbounds %struct.malidp_hw_device, ptr %hwdev, i32 0, i32 12
  %101 = ptrtoint ptr %arqos_value to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arqos_value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool32.not = icmp eq i32 %102, 0
  br i1 %tobool32.not, label %if.end31.if.end35_crit_edge, label %if.then33

if.end31.if.end35_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

if.then33:                                        ; preds = %if.end31
  %103 = ptrtoint ptr %pm_suspended.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %pm_suspended.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %tobool.not.i.i138 = icmp eq i8 %104, 0
  br i1 %tobool.not.i.i138, label %if.then33.malidp_hw_read.exit.i143_crit_edge, label %do.end.i.i139, !prof !47

if.then33.malidp_hw_read.exit.i143_crit_edge:     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_read.exit.i143

do.end.i.i139:                                    ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 261, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_read.exit.i143

malidp_hw_read.exit.i143:                         ; preds = %do.end.i.i139, %if.then33.malidp_hw_read.exit.i143_crit_edge
  %105 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i141 = getelementptr i8, ptr %106, i32 1280
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i141) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %108 = ptrtoint ptr %pm_suspended.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %pm_suspended.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool.not.i5.i142 = icmp eq i8 %109, 0
  br i1 %tobool.not.i5.i142, label %malidp_hw_read.exit.i143.malidp_hw_setbits.exit147_crit_edge, label %do.end.i6.i144, !prof !47

malidp_hw_read.exit.i143.malidp_hw_setbits.exit147_crit_edge: ; preds = %malidp_hw_read.exit.i143
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_setbits.exit147

do.end.i6.i144:                                   ; preds = %malidp_hw_read.exit.i143
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 268, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_setbits.exit147

malidp_hw_setbits.exit147:                        ; preds = %do.end.i6.i144, %malidp_hw_read.exit.i143.malidp_hw_setbits.exit147_crit_edge
  %110 = tail call i32 @llvm.bswap.i32(i32 %107) #5
  %or.i145 = or i32 %110, %102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %111 = tail call i32 @llvm.bswap.i32(i32 %or.i145) #5
  %112 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %regs.i, align 4
  %add.ptr.i8.i146 = getelementptr i8, ptr %113, i32 1280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i146, i32 %111) #5, !srcloc !51
  br label %if.end35

if.end35:                                         ; preds = %malidp_hw_setbits.exit147, %if.end31.if.end35_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @malidp500_rotmem_required(ptr nocapture noundef readnone %hwdev, i16 noundef zeroext %w, i16 noundef zeroext %h, i32 noundef %fmt, i1 noundef zeroext %has_modifier) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @drm_format_info(i32 noundef %fmt) #5
  %0 = getelementptr inbounds %struct.drm_format_info, ptr %call.i, i32 0, i32 3
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %0, align 2
  %conv.i = zext i8 %2 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp.i = icmp eq i8 %2, 0
  br i1 %cmp.i, label %if.then.i, label %entry.malidp_format_get_bpp.exit_crit_edge

entry.malidp_format_get_bpp.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_format_get_bpp.exit

if.then.i:                                        ; preds = %entry
  %3 = zext i32 %fmt to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %fmt, label %sw.default.i [
    i32 808670550, label %if.then.i.malidp_format_get_bpp.exit_crit_edge
    i32 808539481, label %sw.bb2.i
    i32 942691673, label %sw.bb3.i
  ]

if.then.i.malidp_format_get_bpp.exit_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_format_get_bpp.exit

sw.bb2.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_format_get_bpp.exit

sw.bb3.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_format_get_bpp.exit

sw.default.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_format_get_bpp.exit

malidp_format_get_bpp.exit:                       ; preds = %sw.default.i, %sw.bb3.i, %sw.bb2.i, %if.then.i.malidp_format_get_bpp.exit_crit_edge, %entry.malidp_format_get_bpp.exit_crit_edge
  %bpp.0.i = phi i32 [ 0, %sw.default.i ], [ 12, %sw.bb3.i ], [ 15, %sw.bb2.i ], [ %mul.i, %entry.malidp_format_get_bpp.exit_crit_edge ], [ 30, %if.then.i.malidp_format_get_bpp.exit_crit_edge ]
  %conv = zext i16 %w to i32
  %mul = mul nuw nsw i32 %bpp.0.i, %conv
  ret i32 %mul
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @malidp500_se_set_scaling_coeffs(ptr nocapture noundef readonly %hwdev, ptr nocapture noundef readonly %se_config, ptr nocapture noundef readonly %old_config) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %se_config to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %se_config, align 4
  %bf.lshr = lshr i8 %bf.load, 3
  %bf.clear = and i8 %bf.lshr, 7
  %sub = add nsw i8 %bf.clear, -1
  %bf.clear3 = and i8 %bf.load, 7
  %sub5 = add nsw i8 %bf.clear3, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %sub)
  %cmp = icmp ugt i8 %sub, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %sub5)
  %cmp10 = icmp ugt i8 %sub5, 4
  %spec.select = select i1 %cmp, i1 true, i1 %cmp10
  br i1 %spec.select, label %do.end, label %if.end32, !prof !53

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 456, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end32:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_cmp1(i8 %bf.clear, i8 %bf.clear3)
  %cmp35 = icmp eq i8 %bf.clear, %bf.clear3
  br i1 %cmp35, label %land.lhs.true, label %if.end32.if.else_crit_edge

if.end32.if.else_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true:                                    ; preds = %if.end32
  %1 = ptrtoint ptr %old_config to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load41 = load i8, ptr %old_config, align 4
  %bf.lshr3897 = xor i8 %bf.load41, %bf.load
  %2 = and i8 %bf.lshr3897, 63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %land.lhs.true.if.else_crit_edge, label %if.then55

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then55:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @malidp500_se_write_pp_coefftab(ptr noundef %hwdev, i32 noundef 768, i8 noundef zeroext %sub5)
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end32.if.else_crit_edge
  %4 = ptrtoint ptr %old_config to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load59 = load i8, ptr %old_config, align 4
  %5 = xor i8 %bf.load59, %bf.load
  %6 = and i8 %5, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp62.not = icmp eq i8 %6, 0
  br i1 %cmp62.not, label %if.else.if.end65_crit_edge, label %if.then64

if.else.if.end65_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end65

if.then64:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @malidp500_se_write_pp_coefftab(ptr noundef %hwdev, i32 noundef 256, i8 noundef zeroext %sub5)
  br label %if.end65

if.end65:                                         ; preds = %if.then64, %if.else.if.end65_crit_edge
  %7 = ptrtoint ptr %se_config to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load66 = load i8, ptr %se_config, align 4
  %8 = ptrtoint ptr %old_config to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load70 = load i8, ptr %old_config, align 4
  %bf.lshr6796 = xor i8 %bf.load70, %bf.load66
  %9 = and i8 %bf.lshr6796, 56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp74.not = icmp eq i8 %9, 0
  br i1 %cmp74.not, label %if.end65.cleanup_crit_edge, label %if.then76

if.end65.cleanup_crit_edge:                       ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then76:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @malidp500_se_write_pp_coefftab(ptr noundef %hwdev, i32 noundef 512, i8 noundef zeroext %sub)
  br label %cleanup

cleanup:                                          ; preds = %if.then76, %if.end65.cleanup_crit_edge, %if.then55, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end65.cleanup_crit_edge ], [ 0, %if.then76 ], [ 0, %if.then55 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @malidp500_se_calc_mclk(ptr nocapture noundef readonly %hwdev, ptr nocapture noundef readonly %se_config, ptr nocapture noundef readonly %vm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vm, align 4
  %2 = ptrtoint ptr %se_config to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %se_config, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %input_w = getelementptr inbounds %struct.malidp_se_config, ptr %se_config, i32 0, i32 2
  %3 = ptrtoint ptr %input_w to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %input_w, align 2
  %conv = zext i16 %4 to i32
  %input_h = getelementptr inbounds %struct.malidp_se_config, ptr %se_config, i32 0, i32 3
  %5 = ptrtoint ptr %input_h to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %input_h, align 4
  %conv3 = zext i16 %6 to i32
  %hactive = getelementptr inbounds %struct.videomode, ptr %vm, i32 0, i32 1
  %7 = ptrtoint ptr %hactive to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hactive, align 4
  %hfront_porch = getelementptr inbounds %struct.videomode, ptr %vm, i32 0, i32 2
  %9 = ptrtoint ptr %hfront_porch to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hfront_porch, align 4
  %add = add i32 %10, %8
  %hback_porch = getelementptr inbounds %struct.videomode, ptr %vm, i32 0, i32 3
  %11 = ptrtoint ptr %hback_porch to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hback_porch, align 4
  %add1 = add i32 %add, %12
  %hsync_len = getelementptr inbounds %struct.videomode, ptr %vm, i32 0, i32 4
  %13 = ptrtoint ptr %hsync_len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hsync_len, align 4
  %add2 = add i32 %add1, %14
  %mul = mul nuw nsw i32 %conv, 15
  %mul4 = mul i32 %mul, %conv3
  %output_h = getelementptr inbounds %struct.malidp_se_config, ptr %se_config, i32 0, i32 5
  %15 = ptrtoint ptr %output_h to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %output_h, align 4
  %conv5 = zext i16 %16 to i32
  %mul6 = mul i32 %add2, %conv5
  %div = udiv i32 %mul4, %mul6
  %17 = tail call i32 @llvm.umax.i32(i32 %div, i32 15)
  br label %if.end9

if.end9:                                          ; preds = %if.then, %entry.if.end9_crit_edge
  %a.0 = phi i32 [ %17, %if.then ], [ 10, %entry.if.end9_crit_edge ]
  %mul10 = mul i32 %a.0, %1
  %div11 = udiv i32 %mul10, 10
  %mclk12 = getelementptr inbounds %struct.malidp_hw_device, ptr %hwdev, i32 0, i32 4
  %18 = ptrtoint ptr %mclk12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mclk12, align 4
  %call = tail call i32 @clk_get_rate(ptr noundef %19) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %div11)
  %cmp13 = icmp ult i32 %call, %div11
  br i1 %cmp13, label %if.then15, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then15:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %div16 = udiv i32 %mul10, 10000
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.8, i32 noundef %div16) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.end9.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then15 ], [ %call, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @malidp500_enable_memwrite(ptr noundef %hwdev, ptr nocapture noundef readonly %addrs, ptr nocapture noundef readonly %pitches, i32 noundef %num_planes, i16 noundef zeroext %w, i16 noundef zeroext %h, i32 noundef %fmt_id, ptr noundef readonly %rgb2yuv_coeffs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pm_suspended.i.i = getelementptr inbounds %struct.malidp_hw_device, ptr %hwdev, i32 0, i32 9
  %0 = ptrtoint ptr %pm_suspended.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_suspended.i.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i.i, label %entry.malidp_hw_read.exit.i_crit_edge, label %do.end.i.i, !prof !47

entry.malidp_hw_read.exit.i_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_read.exit.i

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 261, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_read.exit.i

malidp_hw_read.exit.i:                            ; preds = %do.end.i.i, %entry.malidp_hw_read.exit.i_crit_edge
  %regs.i.i = getelementptr inbounds %struct.malidp_hw_device, ptr %hwdev, i32 0, i32 1
  %2 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 32
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %5 = ptrtoint ptr %pm_suspended.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %pm_suspended.i.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i5.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i5.i, label %malidp_hw_read.exit.i.malidp_hw_setbits.exit_crit_edge, label %do.end.i6.i, !prof !47

malidp_hw_read.exit.i.malidp_hw_setbits.exit_crit_edge: ; preds = %malidp_hw_read.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_setbits.exit

do.end.i6.i:                                      ; preds = %malidp_hw_read.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 268, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_setbits.exit

malidp_hw_setbits.exit:                           ; preds = %do.end.i6.i, %malidp_hw_read.exit.i.malidp_hw_setbits.exit_crit_edge
  %7 = or i32 %4, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %8 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %9, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %7) #5, !srcloc !51
  %mw_state = getelementptr inbounds %struct.malidp_hw_device, ptr %hwdev, i32 0, i32 10
  %10 = ptrtoint ptr %mw_state to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %mw_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp.not = icmp eq i8 %11, 0
  %. = select i1 %cmp.not, i8 2, i8 3
  %12 = ptrtoint ptr %mw_state to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %., ptr %mw_state, align 1
  %13 = ptrtoint ptr %pm_suspended.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %pm_suspended.i.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i, label %malidp_hw_setbits.exit.malidp_hw_write.exit_crit_edge, label %do.end.i, !prof !47

malidp_hw_setbits.exit.malidp_hw_write.exit_crit_edge: ; preds = %malidp_hw_setbits.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_write.exit

do.end.i:                                         ; preds = %malidp_hw_setbits.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 268, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_write.exit

malidp_hw_write.exit:                             ; preds = %do.end.i, %malidp_hw_setbits.exit.malidp_hw_write.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %15 = tail call i32 @llvm.bswap.i32(i32 %fmt_id) #5
  %16 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 3584
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %15) #5, !srcloc !51
  %18 = zext i32 %num_planes to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %num_planes, label %do.end [
    i32 2, label %sw.bb
    i32 1, label %malidp_hw_write.exit.sw.bb11_crit_edge
  ]

malidp_hw_write.exit.sw.bb11_crit_edge:           ; preds = %malidp_hw_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb11

sw.bb:                                            ; preds = %malidp_hw_write.exit
  %arrayidx = getelementptr i32, ptr %addrs, i32 1
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx, align 4
  %21 = ptrtoint ptr %pm_suspended.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %pm_suspended.i.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i80 = icmp eq i8 %22, 0
  br i1 %tobool.not.i80, label %sw.bb.malidp_hw_write.exit84_crit_edge, label %do.end.i81, !prof !47

sw.bb.malidp_hw_write.exit84_crit_edge:           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_write.exit84

do.end.i81:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 268, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_write.exit84

malidp_hw_write.exit84:                           ; preds = %do.end.i81, %sw.bb.malidp_hw_write.exit84_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %23 = tail call i32 @llvm.bswap.i32(i32 %20) #5
  %24 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i83 = getelementptr i8, ptr %25, i32 3628
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i83, i32 %23) #5, !srcloc !51
  %26 = ptrtoint ptr %pm_suspended.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %pm_suspended.i.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i86 = icmp eq i8 %27, 0
  br i1 %tobool.not.i86, label %malidp_hw_write.exit84.malidp_hw_write.exit90_crit_edge, label %do.end.i87, !prof !47

malidp_hw_write.exit84.malidp_hw_write.exit90_crit_edge: ; preds = %malidp_hw_write.exit84
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_write.exit90

do.end.i87:                                       ; preds = %malidp_hw_write.exit84
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 268, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_write.exit90

malidp_hw_write.exit90:                           ; preds = %do.end.i87, %malidp_hw_write.exit84.malidp_hw_write.exit90_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %28 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i89 = getelementptr i8, ptr %29, i32 3632
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i89, i32 0) #5, !srcloc !51
  %arrayidx9 = getelementptr i32, ptr %pitches, i32 1
  %30 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx9, align 4
  %32 = ptrtoint ptr %pm_suspended.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %pm_suspended.i.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i92 = icmp eq i8 %33, 0
  br i1 %tobool.not.i92, label %malidp_hw_write.exit90.malidp_hw_write.exit96_crit_edge, label %do.end.i93, !prof !47

malidp_hw_write.exit90.malidp_hw_write.exit96_crit_edge: ; preds = %malidp_hw_write.exit90
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_write.exit96

do.end.i93:                                       ; preds = %malidp_hw_write.exit90
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 268, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_write.exit96

malidp_hw_write.exit96:                           ; preds = %do.end.i93, %malidp_hw_write.exit90.malidp_hw_write.exit96_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %34 = tail call i32 @llvm.bswap.i32(i32 %31) #5
  %35 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i95 = getelementptr i8, ptr %36, i32 3592
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i95, i32 %34) #5, !srcloc !51
  br label %sw.bb11

sw.bb11:                                          ; preds = %malidp_hw_write.exit96, %malidp_hw_write.exit.sw.bb11_crit_edge
  %37 = ptrtoint ptr %addrs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %addrs, align 4
  %39 = ptrtoint ptr %pm_suspended.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %pm_suspended.i.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.i98 = icmp eq i8 %40, 0
  br i1 %tobool.not.i98, label %sw.bb11.malidp_hw_write.exit102_crit_edge, label %do.end.i99, !prof !47

sw.bb11.malidp_hw_write.exit102_crit_edge:        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_write.exit102

do.end.i99:                                       ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 268, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_write.exit102

malidp_hw_write.exit102:                          ; preds = %do.end.i99, %sw.bb11.malidp_hw_write.exit102_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %41 = tail call i32 @llvm.bswap.i32(i32 %38) #5
  %42 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i101 = getelementptr i8, ptr %43, i32 3596
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i101, i32 %41) #5, !srcloc !51
  %44 = ptrtoint ptr %pm_suspended.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %pm_suspended.i.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not.i104 = icmp eq i8 %45, 0
  br i1 %tobool.not.i104, label %malidp_hw_write.exit102.malidp_hw_write.exit108_crit_edge, label %do.end.i105, !prof !47

malidp_hw_write.exit102.malidp_hw_write.exit108_crit_edge: ; preds = %malidp_hw_write.exit102
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_write.exit108

do.end.i105:                                      ; preds = %malidp_hw_write.exit102
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 268, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_write.exit108

malidp_hw_write.exit108:                          ; preds = %do.end.i105, %malidp_hw_write.exit102.malidp_hw_write.exit108_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %46 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i107 = getelementptr i8, ptr %47, i32 3600
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i107, i32 0) #5, !srcloc !51
  %48 = ptrtoint ptr %pitches to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pitches, align 4
  %50 = ptrtoint ptr %pm_suspended.i.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %pm_suspended.i.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool.not.i110 = icmp eq i8 %51, 0
  br i1 %tobool.not.i110, label %malidp_hw_write.exit108.malidp_hw_write.exit114_crit_edge, label %do.end.i111, !prof !47

malidp_hw_write.exit108.malidp_hw_write.exit114_crit_edge: ; preds = %malidp_hw_write.exit108
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_write.exit114

do.end.i111:                                      ; preds = %malidp_hw_write.exit108
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 268, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_write.exit114

malidp_hw_write.exit114:                          ; preds = %do.end.i111, %malidp_hw_write.exit108.malidp_hw_write.exit114_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %52 = tail call i32 @llvm.bswap.i32(i32 %49) #5
  %53 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i113 = getelementptr i8, ptr %54, i32 3588
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i113, i32 %52) #5, !srcloc !51
  br label %sw.epilog

do.end:                                           ; preds = %malidp_hw_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 542, i32 noundef 9, ptr noundef nonnull @.str.9) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %malidp_hw_write.exit114
  %55 = and i16 %w, 8191
  %and38 = zext i16 %55 to i32
  %56 = and i16 %h, 8191
  %and40 = zext i16 %56 to i32
  %shl41 = shl nuw nsw i32 %and40, 16
  %or = or i32 %shl41, %and38
  %57 = ptrtoint ptr %pm_suspended.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %pm_suspended.i.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool.not.i116 = icmp eq i8 %58, 0
  br i1 %tobool.not.i116, label %sw.epilog.malidp_hw_write.exit120_crit_edge, label %do.end.i117, !prof !47

sw.epilog.malidp_hw_write.exit120_crit_edge:      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_write.exit120

do.end.i117:                                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 268, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_write.exit120

malidp_hw_write.exit120:                          ; preds = %do.end.i117, %sw.epilog.malidp_hw_write.exit120_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %59 = tail call i32 @llvm.bswap.i32(i32 %or) #5
  %60 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i119 = getelementptr i8, ptr %61, i32 3116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i119, i32 %59) #5, !srcloc !51
  %tobool42.not = icmp eq ptr %rgb2yuv_coeffs, null
  br i1 %tobool42.not, label %malidp_hw_write.exit120.if.end49_crit_edge, label %malidp_hw_write.exit120.for.body_crit_edge

malidp_hw_write.exit120.for.body_crit_edge:       ; preds = %malidp_hw_write.exit120
  br label %for.body

malidp_hw_write.exit120.if.end49_crit_edge:       ; preds = %malidp_hw_write.exit120
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49

for.body:                                         ; preds = %malidp_hw_write.exit126.for.body_crit_edge, %malidp_hw_write.exit120.for.body_crit_edge
  %i.0138 = phi i32 [ %inc, %malidp_hw_write.exit126.for.body_crit_edge ], [ 0, %malidp_hw_write.exit120.for.body_crit_edge ]
  %arrayidx46 = getelementptr i16, ptr %rgb2yuv_coeffs, i32 %i.0138
  %62 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %arrayidx46, align 2
  %conv47 = sext i16 %63 to i32
  %mul = shl i32 %i.0138, 2
  %add48 = add nuw nsw i32 %mul, 3188
  %64 = ptrtoint ptr %pm_suspended.i.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %pm_suspended.i.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool.not.i122 = icmp eq i8 %65, 0
  br i1 %tobool.not.i122, label %for.body.malidp_hw_write.exit126_crit_edge, label %do.end.i123, !prof !47

for.body.malidp_hw_write.exit126_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_write.exit126

do.end.i123:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 268, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_write.exit126

malidp_hw_write.exit126:                          ; preds = %do.end.i123, %for.body.malidp_hw_write.exit126_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %66 = tail call i32 @llvm.bswap.i32(i32 %conv47) #5
  %67 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i125 = getelementptr i8, ptr %68, i32 %add48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i125, i32 %66) #5, !srcloc !51
  %inc = add nuw nsw i32 %i.0138, 1
  %exitcond.not = icmp eq i32 %inc, 12
  br i1 %exitcond.not, label %malidp_hw_write.exit126.if.end49_crit_edge, label %malidp_hw_write.exit126.for.body_crit_edge

malidp_hw_write.exit126.for.body_crit_edge:       ; preds = %malidp_hw_write.exit126
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

malidp_hw_write.exit126.if.end49_crit_edge:       ; preds = %malidp_hw_write.exit126
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49

if.end49:                                         ; preds = %malidp_hw_write.exit126.if.end49_crit_edge, %malidp_hw_write.exit120.if.end49_crit_edge
  %69 = ptrtoint ptr %pm_suspended.i.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %pm_suspended.i.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool.not.i.i128 = icmp eq i8 %70, 0
  br i1 %tobool.not.i.i128, label %if.end49.malidp_hw_read.exit.i133_crit_edge, label %do.end.i.i129, !prof !47

if.end49.malidp_hw_read.exit.i133_crit_edge:      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_read.exit.i133

do.end.i.i129:                                    ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 261, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_read.exit.i133

malidp_hw_read.exit.i133:                         ; preds = %do.end.i.i129, %if.end49.malidp_hw_read.exit.i133_crit_edge
  %71 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i131 = getelementptr i8, ptr %72, i32 3084
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i131) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %74 = ptrtoint ptr %pm_suspended.i.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %pm_suspended.i.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool.not.i5.i132 = icmp eq i8 %75, 0
  br i1 %tobool.not.i5.i132, label %malidp_hw_read.exit.i133.malidp_hw_setbits.exit137_crit_edge, label %do.end.i6.i134, !prof !47

malidp_hw_read.exit.i133.malidp_hw_setbits.exit137_crit_edge: ; preds = %malidp_hw_read.exit.i133
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_setbits.exit137

do.end.i6.i134:                                   ; preds = %malidp_hw_read.exit.i133
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 268, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_setbits.exit137

malidp_hw_setbits.exit137:                        ; preds = %do.end.i6.i134, %malidp_hw_read.exit.i133.malidp_hw_setbits.exit137_crit_edge
  %76 = or i32 %73, 1073741824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %77 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i8.i136 = getelementptr i8, ptr %78, i32 3084
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i136, i32 %76) #5, !srcloc !51
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @malidp500_disable_memwrite(ptr nocapture noundef %hwdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mw_state = getelementptr inbounds %struct.malidp_hw_device, ptr %hwdev, i32 0, i32 10
  %0 = ptrtoint ptr %mw_state to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %mw_state, align 1
  %2 = and i8 %1, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %2)
  %switch = icmp eq i8 %2, 2
  br i1 %switch, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %mw_state to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 4, ptr %mw_state, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %pm_suspended.i.i = getelementptr inbounds %struct.malidp_hw_device, ptr %hwdev, i32 0, i32 9
  %4 = ptrtoint ptr %pm_suspended.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pm_suspended.i.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i.i, label %if.end.malidp_hw_read.exit.i_crit_edge, label %do.end.i.i, !prof !47

if.end.malidp_hw_read.exit.i_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_read.exit.i

do.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 261, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_read.exit.i

malidp_hw_read.exit.i:                            ; preds = %do.end.i.i, %if.end.malidp_hw_read.exit.i_crit_edge
  %regs.i.i = getelementptr inbounds %struct.malidp_hw_device, ptr %hwdev, i32 0, i32 1
  %6 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 3084
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %9 = ptrtoint ptr %pm_suspended.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %pm_suspended.i.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i5.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i5.i, label %malidp_hw_read.exit.i.malidp_hw_clearbits.exit_crit_edge, label %do.end.i6.i, !prof !47

malidp_hw_read.exit.i.malidp_hw_clearbits.exit_crit_edge: ; preds = %malidp_hw_read.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_clearbits.exit

do.end.i6.i:                                      ; preds = %malidp_hw_read.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 268, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_clearbits.exit

malidp_hw_clearbits.exit:                         ; preds = %do.end.i6.i, %malidp_hw_read.exit.i.malidp_hw_clearbits.exit_crit_edge
  %11 = and i32 %8, -1073741825
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %12 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %13, i32 3084
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %11) #5, !srcloc !51
  %14 = ptrtoint ptr %pm_suspended.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %pm_suspended.i.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i.i13 = icmp eq i8 %15, 0
  br i1 %tobool.not.i.i13, label %malidp_hw_clearbits.exit.malidp_hw_read.exit.i18_crit_edge, label %do.end.i.i14, !prof !47

malidp_hw_clearbits.exit.malidp_hw_read.exit.i18_crit_edge: ; preds = %malidp_hw_clearbits.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_read.exit.i18

do.end.i.i14:                                     ; preds = %malidp_hw_clearbits.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 261, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_read.exit.i18

malidp_hw_read.exit.i18:                          ; preds = %do.end.i.i14, %malidp_hw_clearbits.exit.malidp_hw_read.exit.i18_crit_edge
  %16 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i16 = getelementptr i8, ptr %17, i32 32
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i16) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %19 = ptrtoint ptr %pm_suspended.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %pm_suspended.i.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i5.i17 = icmp eq i8 %20, 0
  br i1 %tobool.not.i5.i17, label %malidp_hw_read.exit.i18.malidp_hw_clearbits.exit22_crit_edge, label %do.end.i6.i19, !prof !47

malidp_hw_read.exit.i18.malidp_hw_clearbits.exit22_crit_edge: ; preds = %malidp_hw_read.exit.i18
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_clearbits.exit22

do.end.i6.i19:                                    ; preds = %malidp_hw_read.exit.i18
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 268, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_clearbits.exit22

malidp_hw_clearbits.exit22:                       ; preds = %do.end.i6.i19, %malidp_hw_read.exit.i18.malidp_hw_clearbits.exit22_crit_edge
  %21 = and i32 %18, -257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %22 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i8.i21 = getelementptr i8, ptr %23, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i21, i32 %21) #5, !srcloc !51
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @malidp550_query_hw(ptr nocapture noundef %hwdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pm_suspended.i = getelementptr inbounds %struct.malidp_hw_device, ptr %hwdev, i32 0, i32 9
  %0 = ptrtoint ptr %pm_suspended.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_suspended.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.malidp_hw_read.exit_crit_edge, label %do.end.i, !prof !47

entry.malidp_hw_read.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_read.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 261, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_read.exit

malidp_hw_read.exit:                              ; preds = %do.end.i, %entry.malidp_hw_read.exit_crit_edge
  %regs.i = getelementptr inbounds %struct.malidp_hw_device, ptr %hwdev, i32 0, i32 1
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 65492
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !48
  %5 = lshr i32 %4, 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %conv = and i32 %5, 3
  %min_line_size = getelementptr inbounds %struct.malidp_hw_device, ptr %hwdev, i32 0, i32 6
  %6 = ptrtoint ptr %min_line_size to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 2, ptr %min_line_size, align 4
  %7 = zext i32 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %conv, label %entry.unreachabledefault [
    i32 0, label %malidp_hw_read.exit.sw.epilog_crit_edge
    i32 1, label %sw.bb2
    i32 2, label %sw.bb4
    i32 3, label %sw.bb6
  ]

malidp_hw_read.exit.sw.epilog_crit_edge:          ; preds = %malidp_hw_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb2:                                           ; preds = %malidp_hw_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb4:                                           ; preds = %malidp_hw_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb6:                                           ; preds = %malidp_hw_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  %max_line_size7 = getelementptr inbounds %struct.malidp_hw_device, ptr %hwdev, i32 0, i32 7
  %8 = ptrtoint ptr %max_line_size7 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %max_line_size7, align 2
  br label %cleanup

entry.unreachabledefault:                         ; preds = %malidp_hw_read.exit
  unreachable

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb2, %malidp_hw_read.exit.sw.epilog_crit_edge
  %.sink = phi i16 [ 1280, %sw.bb4 ], [ 4096, %sw.bb2 ], [ 2048, %malidp_hw_read.exit.sw.epilog_crit_edge ]
  %rsize.0 = phi i32 [ 40960, %sw.bb4 ], [ 131072, %sw.bb2 ], [ 65536, %malidp_hw_read.exit.sw.epilog_crit_edge ]
  %max_line_size5 = getelementptr inbounds %struct.malidp_hw_device, ptr %hwdev, i32 0, i32 7
  %9 = ptrtoint ptr %max_line_size5 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %.sink, ptr %max_line_size5, align 2
  %rotation_memory = getelementptr inbounds %struct.malidp_hw_device, ptr %hwdev, i32 0, i32 11
  %arrayidx = getelementptr %struct.malidp_hw_device, ptr %hwdev, i32 0, i32 11, i32 1
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %rsize.0, ptr %arrayidx, align 4
  %11 = ptrtoint ptr %rotation_memory to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %rsize.0, ptr %rotation_memory, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb6
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %sw.bb6 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @malidp550_enter_config_mode(ptr nocapture noundef readonly %hwdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pm_suspended.i.i = getelementptr inbounds %struct.malidp_hw_device, ptr %hwdev, i32 0, i32 9
  %0 = ptrtoint ptr %pm_suspended.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_suspended.i.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i.i, label %entry.malidp_hw_read.exit.i_crit_edge, label %do.end.i.i, !prof !47

entry.malidp_hw_read.exit.i_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_read.exit.i

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 261, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_read.exit.i

malidp_hw_read.exit.i:                            ; preds = %do.end.i.i, %entry.malidp_hw_read.exit.i_crit_edge
  %regs.i.i = getelementptr inbounds %struct.malidp_hw_device, ptr %hwdev, i32 0, i32 1
  %2 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 49168
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %5 = ptrtoint ptr %pm_suspended.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %pm_suspended.i.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i5.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i5.i, label %malidp_hw_read.exit.i.malidp_hw_setbits.exit_crit_edge, label %do.end.i6.i, !prof !47

malidp_hw_read.exit.i.malidp_hw_setbits.exit_crit_edge: ; preds = %malidp_hw_read.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_setbits.exit

do.end.i6.i:                                      ; preds = %malidp_hw_read.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 268, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_setbits.exit

malidp_hw_setbits.exit:                           ; preds = %do.end.i6.i, %malidp_hw_read.exit.i.malidp_hw_setbits.exit_crit_edge
  %7 = or i32 %4, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %8 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %9, i32 49168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %7) #5, !srcloc !51
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %malidp_hw_setbits.exit
  %count.030 = phi i32 [ 100, %malidp_hw_setbits.exit ], [ %dec, %if.end.while.body_crit_edge ]
  %10 = ptrtoint ptr %hwdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hwdev, align 4
  %dc_base = getelementptr inbounds %struct.malidp_hw_regmap, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %dc_base to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %dc_base, align 4
  %conv = zext i16 %13 to i32
  %14 = ptrtoint ptr %pm_suspended.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %pm_suspended.i.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i, label %while.body.malidp_hw_read.exit_crit_edge, label %do.end.i, !prof !47

while.body.malidp_hw_read.exit_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_read.exit

do.end.i:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 261, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_read.exit

malidp_hw_read.exit:                              ; preds = %do.end.i, %while.body.malidp_hw_read.exit_crit_edge
  %16 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 %conv
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %19 = and i32 %18, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.not = icmp eq i32 %19, 0
  br i1 %cmp.not, label %if.end, label %malidp_hw_read.exit.if.end18_crit_edge

malidp_hw_read.exit.if.end18_crit_edge:           ; preds = %malidp_hw_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.end:                                           ; preds = %malidp_hw_read.exit
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 10000, i32 noundef 2) #5
  %dec = add nsw i32 %count.030, -1
  %cond = icmp eq i32 %dec, 0
  br i1 %cond, label %do.end, label %if.end.while.body_crit_edge, !prof !52

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 621, i32 noundef 9, ptr noundef nonnull @.str.6) #5
  br label %if.end18

if.end18:                                         ; preds = %do.end, %malidp_hw_read.exit.if.end18_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @malidp550_leave_config_mode(ptr nocapture noundef readonly %hwdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pm_suspended.i.i = getelementptr inbounds %struct.malidp_hw_device, ptr %hwdev, i32 0, i32 9
  %0 = ptrtoint ptr %pm_suspended.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_suspended.i.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i.i, label %entry.malidp_hw_read.exit.i_crit_edge, label %do.end.i.i, !prof !47

entry.malidp_hw_read.exit.i_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_read.exit.i

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 261, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_read.exit.i

malidp_hw_read.exit.i:                            ; preds = %do.end.i.i, %entry.malidp_hw_read.exit.i_crit_edge
  %regs.i.i = getelementptr inbounds %struct.malidp_hw_device, ptr %hwdev, i32 0, i32 1
  %2 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 49172
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %5 = ptrtoint ptr %pm_suspended.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %pm_suspended.i.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i5.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i5.i, label %malidp_hw_read.exit.i.malidp_hw_clearbits.exit_crit_edge, label %do.end.i6.i, !prof !47

malidp_hw_read.exit.i.malidp_hw_clearbits.exit_crit_edge: ; preds = %malidp_hw_read.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_clearbits.exit

do.end.i6.i:                                      ; preds = %malidp_hw_read.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 268, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_clearbits.exit

malidp_hw_clearbits.exit:                         ; preds = %do.end.i6.i, %malidp_hw_read.exit.i.malidp_hw_clearbits.exit_crit_edge
  %7 = and i32 %4, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %8 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %9, i32 49172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %7) #5, !srcloc !51
  %10 = ptrtoint ptr %pm_suspended.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %pm_suspended.i.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i.i32 = icmp eq i8 %11, 0
  br i1 %tobool.not.i.i32, label %malidp_hw_clearbits.exit.malidp_hw_read.exit.i37_crit_edge, label %do.end.i.i33, !prof !47

malidp_hw_clearbits.exit.malidp_hw_read.exit.i37_crit_edge: ; preds = %malidp_hw_clearbits.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_read.exit.i37

do.end.i.i33:                                     ; preds = %malidp_hw_clearbits.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 261, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_read.exit.i37

malidp_hw_read.exit.i37:                          ; preds = %do.end.i.i33, %malidp_hw_clearbits.exit.malidp_hw_read.exit.i37_crit_edge
  %12 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i35 = getelementptr i8, ptr %13, i32 49168
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i35) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %15 = ptrtoint ptr %pm_suspended.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %pm_suspended.i.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i5.i36 = icmp eq i8 %16, 0
  br i1 %tobool.not.i5.i36, label %malidp_hw_read.exit.i37.malidp_hw_clearbits.exit41_crit_edge, label %do.end.i6.i38, !prof !47

malidp_hw_read.exit.i37.malidp_hw_clearbits.exit41_crit_edge: ; preds = %malidp_hw_read.exit.i37
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_clearbits.exit41

do.end.i6.i38:                                    ; preds = %malidp_hw_read.exit.i37
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 268, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_clearbits.exit41

malidp_hw_clearbits.exit41:                       ; preds = %do.end.i6.i38, %malidp_hw_read.exit.i37.malidp_hw_clearbits.exit41_crit_edge
  %17 = and i32 %14, -257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %18 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i8.i40 = getelementptr i8, ptr %19, i32 49168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i40, i32 %17) #5, !srcloc !51
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %malidp_hw_clearbits.exit41
  %count.042 = phi i32 [ 100, %malidp_hw_clearbits.exit41 ], [ %dec, %if.end.while.body_crit_edge ]
  %20 = ptrtoint ptr %hwdev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hwdev, align 4
  %dc_base = getelementptr inbounds %struct.malidp_hw_regmap, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %dc_base to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %dc_base, align 4
  %conv = zext i16 %23 to i32
  %24 = ptrtoint ptr %pm_suspended.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %pm_suspended.i.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i = icmp eq i8 %25, 0
  br i1 %tobool.not.i, label %while.body.malidp_hw_read.exit_crit_edge, label %do.end.i, !prof !47

while.body.malidp_hw_read.exit_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_read.exit

do.end.i:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 261, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_read.exit

malidp_hw_read.exit:                              ; preds = %do.end.i, %while.body.malidp_hw_read.exit_crit_edge
  %26 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %27, i32 %conv
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %29 = and i32 %28, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp = icmp eq i32 %29, 0
  br i1 %cmp, label %malidp_hw_read.exit.if.end18_crit_edge, label %if.end

malidp_hw_read.exit.if.end18_crit_edge:           ; preds = %malidp_hw_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.end:                                           ; preds = %malidp_hw_read.exit
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 1000, i32 noundef 2) #5
  %dec = add nsw i32 %count.042, -1
  %cond = icmp eq i32 %dec, 0
  br i1 %cond, label %do.end, label %if.end.while.body_crit_edge, !prof !52

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 637, i32 noundef 9, ptr noundef nonnull @.str.7) #5
  br label %if.end18

if.end18:                                         ; preds = %do.end, %malidp_hw_read.exit.if.end18_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @malidp550_in_config_mode(ptr nocapture noundef readonly %hwdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwdev, align 4
  %dc_base = getelementptr inbounds %struct.malidp_hw_regmap, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dc_base to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %dc_base, align 4
  %pm_suspended.i = getelementptr inbounds %struct.malidp_hw_device, ptr %hwdev, i32 0, i32 9
  %4 = ptrtoint ptr %pm_suspended.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pm_suspended.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %entry.malidp_hw_read.exit_crit_edge, label %do.end.i, !prof !47

entry.malidp_hw_read.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_read.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 261, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_read.exit

malidp_hw_read.exit:                              ; preds = %do.end.i, %entry.malidp_hw_read.exit_crit_edge
  %conv = zext i16 %3 to i32
  %regs.i = getelementptr inbounds %struct.malidp_hw_device, ptr %hwdev, i32 0, i32 1
  %6 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %conv
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %9 = and i32 %8, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not = icmp ne i32 %9, 0
  ret i1 %cmp.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @malidp550_set_config_valid(ptr nocapture noundef readonly %hwdev, i8 noundef zeroext %value) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %value)
  %tobool.not = icmp eq i8 %value, 0
  %pm_suspended.i.i2 = getelementptr inbounds %struct.malidp_hw_device, ptr %hwdev, i32 0, i32 9
  %0 = ptrtoint ptr %pm_suspended.i.i2 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_suspended.i.i2, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i.i3 = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool.not.i.i3, label %if.then.malidp_hw_read.exit.i_crit_edge, label %do.end.i.i, !prof !47

if.then.malidp_hw_read.exit.i_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_read.exit.i

do.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 261, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_read.exit.i

malidp_hw_read.exit.i:                            ; preds = %do.end.i.i, %if.then.malidp_hw_read.exit.i_crit_edge
  %regs.i.i = getelementptr inbounds %struct.malidp_hw_device, ptr %hwdev, i32 0, i32 1
  %2 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 49172
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %5 = ptrtoint ptr %pm_suspended.i.i2 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %pm_suspended.i.i2, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i5.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i5.i, label %malidp_hw_read.exit.i.malidp_hw_setbits.exit_crit_edge, label %do.end.i6.i, !prof !47

malidp_hw_read.exit.i.malidp_hw_setbits.exit_crit_edge: ; preds = %malidp_hw_read.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_setbits.exit

do.end.i6.i:                                      ; preds = %malidp_hw_read.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 268, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_setbits.exit

malidp_hw_setbits.exit:                           ; preds = %do.end.i6.i, %malidp_hw_read.exit.i.malidp_hw_setbits.exit_crit_edge
  %7 = or i32 %4, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %8 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %9, i32 49172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %7) #5, !srcloc !51
  br label %if.end

if.else:                                          ; preds = %entry
  br i1 %tobool.not.i.i3, label %if.else.malidp_hw_read.exit.i8_crit_edge, label %do.end.i.i4, !prof !47

if.else.malidp_hw_read.exit.i8_crit_edge:         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_read.exit.i8

do.end.i.i4:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 261, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_read.exit.i8

malidp_hw_read.exit.i8:                           ; preds = %do.end.i.i4, %if.else.malidp_hw_read.exit.i8_crit_edge
  %regs.i.i5 = getelementptr inbounds %struct.malidp_hw_device, ptr %hwdev, i32 0, i32 1
  %10 = ptrtoint ptr %regs.i.i5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i.i5, align 4
  %add.ptr.i.i6 = getelementptr i8, ptr %11, i32 49172
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i6) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %13 = ptrtoint ptr %pm_suspended.i.i2 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %pm_suspended.i.i2, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i5.i7 = icmp eq i8 %14, 0
  br i1 %tobool.not.i5.i7, label %malidp_hw_read.exit.i8.malidp_hw_clearbits.exit_crit_edge, label %do.end.i6.i9, !prof !47

malidp_hw_read.exit.i8.malidp_hw_clearbits.exit_crit_edge: ; preds = %malidp_hw_read.exit.i8
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_clearbits.exit

do.end.i6.i9:                                     ; preds = %malidp_hw_read.exit.i8
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 268, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_clearbits.exit

malidp_hw_clearbits.exit:                         ; preds = %do.end.i6.i9, %malidp_hw_read.exit.i8.malidp_hw_clearbits.exit_crit_edge
  %15 = and i32 %12, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %16 = ptrtoint ptr %regs.i.i5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs.i.i5, align 4
  %add.ptr.i8.i10 = getelementptr i8, ptr %17, i32 49172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i10, i32 %15) #5, !srcloc !51
  br label %if.end

if.end:                                           ; preds = %malidp_hw_clearbits.exit, %malidp_hw_setbits.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @malidp550_modeset(ptr nocapture noundef readonly %hwdev, ptr nocapture noundef readonly %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %output_color_depth = getelementptr inbounds %struct.malidp_hw_device, ptr %hwdev, i32 0, i32 8
  %0 = ptrtoint ptr %output_color_depth to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %output_color_depth, align 4
  %2 = ptrtoint ptr %hwdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hwdev, align 4
  %out_depth_base = getelementptr inbounds %struct.malidp_hw_regmap, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %out_depth_base to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %out_depth_base, align 2
  %conv = zext i16 %5 to i32
  %pm_suspended.i = getelementptr inbounds %struct.malidp_hw_device, ptr %hwdev, i32 0, i32 9
  %6 = ptrtoint ptr %pm_suspended.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pm_suspended.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %entry.malidp_hw_write.exit_crit_edge, label %do.end.i, !prof !47

entry.malidp_hw_write.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_write.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 268, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_write.exit

malidp_hw_write.exit:                             ; preds = %do.end.i, %entry.malidp_hw_write.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %8 = tail call i32 @llvm.bswap.i32(i32 %1) #5
  %regs.i = getelementptr inbounds %struct.malidp_hw_device, ptr %hwdev, i32 0, i32 1
  %9 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 %conv
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #5, !srcloc !51
  %11 = ptrtoint ptr %pm_suspended.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %pm_suspended.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i59 = icmp eq i8 %12, 0
  br i1 %tobool.not.i59, label %malidp_hw_write.exit.malidp_hw_write.exit63_crit_edge, label %do.end.i60, !prof !47

malidp_hw_write.exit.malidp_hw_write.exit63_crit_edge: ; preds = %malidp_hw_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_write.exit63

do.end.i60:                                       ; preds = %malidp_hw_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 268, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_write.exit63

malidp_hw_write.exit63:                           ; preds = %do.end.i60, %malidp_hw_write.exit.malidp_hw_write.exit63_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %13 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i, align 4
  %add.ptr.i62 = getelementptr i8, ptr %14, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i62, i32 83886080) #5, !srcloc !51
  %15 = ptrtoint ptr %pm_suspended.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %pm_suspended.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i65 = icmp eq i8 %16, 0
  br i1 %tobool.not.i65, label %malidp_hw_write.exit63.malidp_hw_write.exit69_crit_edge, label %do.end.i66, !prof !47

malidp_hw_write.exit63.malidp_hw_write.exit69_crit_edge: ; preds = %malidp_hw_write.exit63
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_write.exit69

do.end.i66:                                       ; preds = %malidp_hw_write.exit63
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 268, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_write.exit69

malidp_hw_write.exit69:                           ; preds = %do.end.i66, %malidp_hw_write.exit63.malidp_hw_write.exit69_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 4
  %add.ptr.i68 = getelementptr i8, ptr %18, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i68, i32 0) #5, !srcloc !51
  %hfront_porch = getelementptr inbounds %struct.videomode, ptr %mode, i32 0, i32 2
  %19 = ptrtoint ptr %hfront_porch to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %hfront_porch, align 4
  %and = and i32 %20, 4095
  %hback_porch = getelementptr inbounds %struct.videomode, ptr %mode, i32 0, i32 3
  %21 = ptrtoint ptr %hback_porch to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %hback_porch, align 4
  %and1 = shl i32 %22, 16
  %shl2 = and i32 %and1, 67043328
  %or = or i32 %shl2, %and
  %23 = ptrtoint ptr %pm_suspended.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %pm_suspended.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i71 = icmp eq i8 %24, 0
  br i1 %tobool.not.i71, label %malidp_hw_write.exit69.malidp_hw_write.exit75_crit_edge, label %do.end.i72, !prof !47

malidp_hw_write.exit69.malidp_hw_write.exit75_crit_edge: ; preds = %malidp_hw_write.exit69
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_write.exit75

do.end.i72:                                       ; preds = %malidp_hw_write.exit69
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 268, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_write.exit75

malidp_hw_write.exit75:                           ; preds = %do.end.i72, %malidp_hw_write.exit69.malidp_hw_write.exit75_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %25 = tail call i32 @llvm.bswap.i32(i32 %or) #5
  %26 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i, align 4
  %add.ptr.i74 = getelementptr i8, ptr %27, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i74, i32 %25) #5, !srcloc !51
  %vfront_porch = getelementptr inbounds %struct.videomode, ptr %mode, i32 0, i32 6
  %28 = ptrtoint ptr %vfront_porch to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %vfront_porch, align 4
  %and3 = and i32 %29, 4095
  %vback_porch = getelementptr inbounds %struct.videomode, ptr %mode, i32 0, i32 7
  %30 = ptrtoint ptr %vback_porch to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %vback_porch, align 4
  %and5 = shl i32 %31, 16
  %shl6 = and i32 %and5, 16711680
  %or7 = or i32 %shl6, %and3
  %32 = ptrtoint ptr %pm_suspended.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %pm_suspended.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i77 = icmp eq i8 %33, 0
  br i1 %tobool.not.i77, label %malidp_hw_write.exit75.malidp_hw_write.exit81_crit_edge, label %do.end.i78, !prof !47

malidp_hw_write.exit75.malidp_hw_write.exit81_crit_edge: ; preds = %malidp_hw_write.exit75
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_write.exit81

do.end.i78:                                       ; preds = %malidp_hw_write.exit75
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 268, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_write.exit81

malidp_hw_write.exit81:                           ; preds = %do.end.i78, %malidp_hw_write.exit75.malidp_hw_write.exit81_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %34 = tail call i32 @llvm.bswap.i32(i32 %or7) #5
  %35 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs.i, align 4
  %add.ptr.i80 = getelementptr i8, ptr %36, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i80, i32 %34) #5, !srcloc !51
  %hsync_len = getelementptr inbounds %struct.videomode, ptr %mode, i32 0, i32 4
  %37 = ptrtoint ptr %hsync_len to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %hsync_len, align 4
  %and8 = and i32 %38, 1023
  %vsync_len = getelementptr inbounds %struct.videomode, ptr %mode, i32 0, i32 8
  %39 = ptrtoint ptr %vsync_len to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %vsync_len, align 4
  %and10 = shl i32 %40, 16
  %shl11 = and i32 %and10, 16711680
  %or12 = or i32 %shl11, %and8
  %flags = getelementptr inbounds %struct.videomode, ptr %mode, i32 0, i32 9
  %41 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags, align 4
  %and13 = shl i32 %42, 11
  %43 = and i32 %and13, 4096
  %44 = or i32 %or12, %43
  %and16 = shl i32 %42, 25
  %45 = and i32 %and16, 268435456
  %46 = or i32 %44, %45
  %47 = ptrtoint ptr %pm_suspended.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %pm_suspended.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool.not.i83 = icmp eq i8 %48, 0
  br i1 %tobool.not.i83, label %malidp_hw_write.exit81.malidp_hw_write.exit87_crit_edge, label %do.end.i84, !prof !47

malidp_hw_write.exit81.malidp_hw_write.exit87_crit_edge: ; preds = %malidp_hw_write.exit81
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_write.exit87

do.end.i84:                                       ; preds = %malidp_hw_write.exit81
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 268, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_write.exit87

malidp_hw_write.exit87:                           ; preds = %do.end.i84, %malidp_hw_write.exit81.malidp_hw_write.exit87_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %49 = tail call i32 @llvm.bswap.i32(i32 %46) #5
  %50 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regs.i, align 4
  %add.ptr.i86 = getelementptr i8, ptr %51, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i86, i32 %49) #5, !srcloc !51
  %hactive = getelementptr inbounds %struct.videomode, ptr %mode, i32 0, i32 1
  %52 = ptrtoint ptr %hactive to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %hactive, align 4
  %and21 = and i32 %53, 8191
  %vactive = getelementptr inbounds %struct.videomode, ptr %mode, i32 0, i32 5
  %54 = ptrtoint ptr %vactive to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %vactive, align 4
  %and23 = shl i32 %55, 16
  %shl24 = and i32 %and23, 536805376
  %or25 = or i32 %shl24, %and21
  %56 = ptrtoint ptr %pm_suspended.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %pm_suspended.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool.not.i89 = icmp eq i8 %57, 0
  br i1 %tobool.not.i89, label %malidp_hw_write.exit87.malidp_hw_write.exit93_crit_edge, label %do.end.i90, !prof !47

malidp_hw_write.exit87.malidp_hw_write.exit93_crit_edge: ; preds = %malidp_hw_write.exit87
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_write.exit93

do.end.i90:                                       ; preds = %malidp_hw_write.exit87
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 268, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_write.exit93

malidp_hw_write.exit93:                           ; preds = %do.end.i90, %malidp_hw_write.exit87.malidp_hw_write.exit93_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %58 = tail call i32 @llvm.bswap.i32(i32 %or25) #5
  %59 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regs.i, align 4
  %add.ptr.i92 = getelementptr i8, ptr %60, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i92, i32 %58) #5, !srcloc !51
  %61 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %flags, align 4
  %and27 = and i32 %62, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  %63 = ptrtoint ptr %pm_suspended.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %pm_suspended.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool.not.i.i95 = icmp eq i8 %64, 0
  br i1 %tobool28.not, label %if.else, label %if.then29

if.then29:                                        ; preds = %malidp_hw_write.exit93
  br i1 %tobool.not.i.i95, label %if.then29.malidp_hw_read.exit.i_crit_edge, label %do.end.i.i, !prof !47

if.then29.malidp_hw_read.exit.i_crit_edge:        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_read.exit.i

do.end.i.i:                                       ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 261, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_read.exit.i

malidp_hw_read.exit.i:                            ; preds = %do.end.i.i, %if.then29.malidp_hw_read.exit.i_crit_edge
  %65 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %66, i32 32
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %68 = ptrtoint ptr %pm_suspended.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %pm_suspended.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool.not.i5.i = icmp eq i8 %69, 0
  br i1 %tobool.not.i5.i, label %malidp_hw_read.exit.i.malidp_hw_setbits.exit_crit_edge, label %do.end.i6.i, !prof !47

malidp_hw_read.exit.i.malidp_hw_setbits.exit_crit_edge: ; preds = %malidp_hw_read.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_setbits.exit

do.end.i6.i:                                      ; preds = %malidp_hw_read.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 268, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_setbits.exit

malidp_hw_setbits.exit:                           ; preds = %do.end.i6.i, %malidp_hw_read.exit.i.malidp_hw_setbits.exit_crit_edge
  %70 = or i32 %67, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %71 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %regs.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %72, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %70) #5, !srcloc !51
  br label %if.end30

if.else:                                          ; preds = %malidp_hw_write.exit93
  br i1 %tobool.not.i.i95, label %if.else.malidp_hw_read.exit.i100_crit_edge, label %do.end.i.i96, !prof !47

if.else.malidp_hw_read.exit.i100_crit_edge:       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_read.exit.i100

do.end.i.i96:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 261, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_read.exit.i100

malidp_hw_read.exit.i100:                         ; preds = %do.end.i.i96, %if.else.malidp_hw_read.exit.i100_crit_edge
  %73 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regs.i, align 4
  %add.ptr.i.i98 = getelementptr i8, ptr %74, i32 32
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i98) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %76 = ptrtoint ptr %pm_suspended.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %pm_suspended.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool.not.i5.i99 = icmp eq i8 %77, 0
  br i1 %tobool.not.i5.i99, label %malidp_hw_read.exit.i100.malidp_hw_clearbits.exit_crit_edge, label %do.end.i6.i101, !prof !47

malidp_hw_read.exit.i100.malidp_hw_clearbits.exit_crit_edge: ; preds = %malidp_hw_read.exit.i100
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_clearbits.exit

do.end.i6.i101:                                   ; preds = %malidp_hw_read.exit.i100
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 268, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_clearbits.exit

malidp_hw_clearbits.exit:                         ; preds = %do.end.i6.i101, %malidp_hw_read.exit.i100.malidp_hw_clearbits.exit_crit_edge
  %78 = and i32 %75, -65537
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %79 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %regs.i, align 4
  %add.ptr.i8.i102 = getelementptr i8, ptr %80, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i102, i32 %78) #5, !srcloc !51
  br label %if.end30

if.end30:                                         ; preds = %malidp_hw_clearbits.exit, %malidp_hw_setbits.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @malidp550_rotmem_required(ptr nocapture noundef readnone %hwdev, i16 noundef zeroext %w, i16 noundef zeroext %h, i32 noundef %fmt, i1 noundef zeroext %has_modifier) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %fmt to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %fmt, label %sw.epilog [
    i32 808539481, label %entry.if.end3_crit_edge
    i32 843853912, label %sw.bb1
  ]

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

sw.bb1:                                           ; preds = %entry
  br i1 %has_modifier, label %sw.bb1.if.end3_crit_edge, label %sw.bb1.cleanup_crit_edge

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb1.if.end3_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

sw.epilog:                                        ; preds = %entry
  %call = tail call fastcc i32 @malidpx50_get_bytes_per_column(i32 noundef %fmt)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call)
  %cmp = icmp eq i32 %call, -22
  br i1 %cmp, label %sw.epilog.cleanup_crit_edge, label %sw.epilog.if.end3_crit_edge

sw.epilog.if.end3_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %sw.epilog.if.end3_crit_edge, %sw.bb1.if.end3_crit_edge, %entry.if.end3_crit_edge
  %bytes_per_column.09 = phi i32 [ %call, %sw.epilog.if.end3_crit_edge ], [ 8, %sw.bb1.if.end3_crit_edge ], [ 15, %entry.if.end3_crit_edge ]
  %conv = zext i16 %w to i32
  %mul = mul i32 %bytes_per_column.09, %conv
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %sw.epilog.cleanup_crit_edge, %sw.bb1.cleanup_crit_edge
  %retval.0 = phi i32 [ %mul, %if.end3 ], [ -22, %sw.bb1.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @malidp550_se_set_scaling_coeffs(ptr nocapture noundef readonly %hwdev, ptr nocapture noundef readonly %se_config, ptr nocapture noundef readnone %old_config) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %se_config to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %se_config, align 4
  %pm_suspended.i.i = getelementptr inbounds %struct.malidp_hw_device, ptr %hwdev, i32 0, i32 9
  %1 = ptrtoint ptr %pm_suspended.i.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %pm_suspended.i.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i.i, label %entry.malidp_hw_read.exit.i_crit_edge, label %do.end.i.i, !prof !47

entry.malidp_hw_read.exit.i_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_read.exit.i

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 261, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_read.exit.i

malidp_hw_read.exit.i:                            ; preds = %do.end.i.i, %entry.malidp_hw_read.exit.i_crit_edge
  %regs.i.i = getelementptr inbounds %struct.malidp_hw_device, ptr %hwdev, i32 0, i32 1
  %3 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 32784
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %6 = ptrtoint ptr %pm_suspended.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pm_suspended.i.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i5.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i5.i, label %malidp_hw_read.exit.i.malidp_hw_clearbits.exit_crit_edge, label %do.end.i6.i, !prof !47

malidp_hw_read.exit.i.malidp_hw_clearbits.exit_crit_edge: ; preds = %malidp_hw_read.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_clearbits.exit

do.end.i6.i:                                      ; preds = %malidp_hw_read.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 268, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_clearbits.exit

malidp_hw_clearbits.exit:                         ; preds = %do.end.i6.i, %malidp_hw_read.exit.i.malidp_hw_clearbits.exit_crit_edge
  %8 = and i32 %5, -30465
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %9 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %10, i32 32784
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %8) #5, !srcloc !51
  %11 = ptrtoint ptr %pm_suspended.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %pm_suspended.i.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i.i9 = icmp eq i8 %12, 0
  br i1 %tobool.not.i.i9, label %malidp_hw_clearbits.exit.malidp_hw_read.exit.i14_crit_edge, label %do.end.i.i10, !prof !47

malidp_hw_clearbits.exit.malidp_hw_read.exit.i14_crit_edge: ; preds = %malidp_hw_clearbits.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_read.exit.i14

do.end.i.i10:                                     ; preds = %malidp_hw_clearbits.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 261, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_read.exit.i14

malidp_hw_read.exit.i14:                          ; preds = %do.end.i.i10, %malidp_hw_clearbits.exit.malidp_hw_read.exit.i14_crit_edge
  %13 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i12 = getelementptr i8, ptr %14, i32 32784
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i12) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %16 = ptrtoint ptr %pm_suspended.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %pm_suspended.i.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i5.i13 = icmp eq i8 %17, 0
  br i1 %tobool.not.i5.i13, label %malidp_hw_read.exit.i14.malidp_hw_setbits.exit_crit_edge, label %do.end.i6.i15, !prof !47

malidp_hw_read.exit.i14.malidp_hw_setbits.exit_crit_edge: ; preds = %malidp_hw_read.exit.i14
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_setbits.exit

do.end.i6.i15:                                    ; preds = %malidp_hw_read.exit.i14
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 268, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_setbits.exit

malidp_hw_setbits.exit:                           ; preds = %do.end.i6.i15, %malidp_hw_read.exit.i14.malidp_hw_setbits.exit_crit_edge
  %18 = and i8 %bf.load, 7
  %and = zext i8 %18 to i32
  %shl = shl nuw nsw i32 %and, 20
  %bf.lshr = lshr i8 %bf.load, 3
  %19 = and i8 %bf.lshr, 7
  %and4 = zext i8 %19 to i32
  %shl5 = shl nuw nsw i32 %and4, 16
  %or = or i32 %shl5, %shl
  %20 = tail call i32 @llvm.bswap.i32(i32 %15) #5
  %or.i = or i32 %20, %or
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %21 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  %22 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i8.i16 = getelementptr i8, ptr %23, i32 32784
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i16, i32 %21) #5, !srcloc !51
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @malidp550_se_calc_mclk(ptr nocapture noundef readonly %hwdev, ptr nocapture noundef readonly %se_config, ptr nocapture noundef readonly %vm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %vm, align 4
  %2 = ptrtoint ptr %se_config to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %se_config, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %hactive = getelementptr inbounds %struct.videomode, ptr %vm, i32 0, i32 1
  %3 = ptrtoint ptr %hactive to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hactive, align 4
  %hfront_porch = getelementptr inbounds %struct.videomode, ptr %vm, i32 0, i32 2
  %5 = ptrtoint ptr %hfront_porch to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %hfront_porch, align 4
  %hback_porch = getelementptr inbounds %struct.videomode, ptr %vm, i32 0, i32 3
  %7 = ptrtoint ptr %hback_porch to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %hback_porch, align 4
  %hsync_len = getelementptr inbounds %struct.videomode, ptr %vm, i32 0, i32 4
  %9 = ptrtoint ptr %hsync_len to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hsync_len, align 4
  %input_w = getelementptr inbounds %struct.malidp_se_config, ptr %se_config, i32 0, i32 2
  %11 = ptrtoint ptr %input_w to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %input_w, align 2
  %output_w = getelementptr inbounds %struct.malidp_se_config, ptr %se_config, i32 0, i32 4
  %13 = ptrtoint ptr %output_w to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %output_w, align 2
  %15 = tail call i16 @llvm.umax.i16(i16 %12, i16 %14)
  %cond = zext i16 %15 to i32
  %input_h = getelementptr inbounds %struct.malidp_se_config, ptr %se_config, i32 0, i32 3
  %16 = ptrtoint ptr %input_h to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %input_h, align 4
  %conv7 = zext i16 %17 to i32
  %mul = mul nuw i32 %cond, %conv7
  %conv9 = zext i16 %14 to i32
  %output_h = getelementptr inbounds %struct.malidp_se_config, ptr %se_config, i32 0, i32 5
  %18 = ptrtoint ptr %output_h to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %output_h, align 4
  %conv10 = zext i16 %19 to i32
  %20 = tail call i16 @llvm.umin.i16(i16 %17, i16 %19)
  %21 = zext i16 %20 to i32
  %sub = sub nsw i32 %conv10, %21
  %mul24 = mul i32 %sub, %conv9
  %add25 = add i32 %mul24, %mul
  %add = add i32 %4, -2
  %add1 = add i32 %add, %6
  %add2 = add i32 %add1, %8
  %sub26 = add i32 %add2, %10
  %mul29 = mul i32 %sub26, %conv10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %numerator.0 = phi i32 [ %add25, %if.then ], [ 1, %entry.if.end_crit_edge ]
  %denominator.0 = phi i32 [ %mul29, %if.then ], [ 1, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %numerator.0, i32 %denominator.0)
  %cmp30 = icmp ult i32 %numerator.0, %denominator.0
  %spec.select = select i1 %cmp30, i32 1, i32 %numerator.0
  %spec.select67 = select i1 %cmp30, i32 1, i32 %denominator.0
  %mul34 = mul i32 %spec.select, %1
  %div = udiv i32 %mul34, %spec.select67
  %mclk35 = getelementptr inbounds %struct.malidp_hw_device, ptr %hwdev, i32 0, i32 4
  %22 = ptrtoint ptr %mclk35 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mclk35, align 4
  %call = tail call i32 @clk_get_rate(ptr noundef %23) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %div)
  %cmp36 = icmp ult i32 %call, %div
  br i1 %cmp36, label %if.then38, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then38:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %div39 = udiv i32 %div, 1000
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.8, i32 noundef %div39) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then38, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then38 ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @malidp550_enable_memwrite(ptr noundef %hwdev, ptr nocapture noundef readonly %addrs, ptr nocapture noundef readonly %pitches, i32 noundef %num_planes, i16 noundef zeroext %w, i16 noundef zeroext %h, i32 noundef %fmt_id, ptr noundef readonly %rgb2yuv_coeffs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pm_suspended.i.i = getelementptr inbounds %struct.malidp_hw_device, ptr %hwdev, i32 0, i32 9
  %0 = ptrtoint ptr %pm_suspended.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_suspended.i.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i.i, label %entry.malidp_hw_read.exit.i_crit_edge, label %do.end.i.i, !prof !47

entry.malidp_hw_read.exit.i_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_read.exit.i

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 261, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_read.exit.i

malidp_hw_read.exit.i:                            ; preds = %do.end.i.i, %entry.malidp_hw_read.exit.i_crit_edge
  %regs.i.i = getelementptr inbounds %struct.malidp_hw_device, ptr %hwdev, i32 0, i32 1
  %2 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 32
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %5 = ptrtoint ptr %pm_suspended.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %pm_suspended.i.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i5.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i5.i, label %malidp_hw_read.exit.i.malidp_hw_setbits.exit_crit_edge, label %do.end.i6.i, !prof !47

malidp_hw_read.exit.i.malidp_hw_setbits.exit_crit_edge: ; preds = %malidp_hw_read.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_setbits.exit

do.end.i6.i:                                      ; preds = %malidp_hw_read.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 268, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_setbits.exit

malidp_hw_setbits.exit:                           ; preds = %do.end.i6.i, %malidp_hw_read.exit.i.malidp_hw_setbits.exit_crit_edge
  %7 = or i32 %4, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %8 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %9, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %7) #5, !srcloc !51
  %mw_state = getelementptr inbounds %struct.malidp_hw_device, ptr %hwdev, i32 0, i32 10
  %10 = ptrtoint ptr %mw_state to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %mw_state, align 1
  %11 = ptrtoint ptr %pm_suspended.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %pm_suspended.i.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i, label %malidp_hw_setbits.exit.malidp_hw_write.exit_crit_edge, label %do.end.i, !prof !47

malidp_hw_setbits.exit.malidp_hw_write.exit_crit_edge: ; preds = %malidp_hw_setbits.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_write.exit

do.end.i:                                         ; preds = %malidp_hw_setbits.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 268, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_write.exit

malidp_hw_write.exit:                             ; preds = %do.end.i, %malidp_hw_setbits.exit.malidp_hw_write.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %13 = tail call i32 @llvm.bswap.i32(i32 %fmt_id) #5
  %14 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 33024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %13) #5, !srcloc !51
  %16 = zext i32 %num_planes to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %num_planes, label %do.end [
    i32 2, label %sw.bb
    i32 1, label %malidp_hw_write.exit.sw.bb8_crit_edge
  ]

malidp_hw_write.exit.sw.bb8_crit_edge:            ; preds = %malidp_hw_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb8

sw.bb:                                            ; preds = %malidp_hw_write.exit
  %arrayidx = getelementptr i32, ptr %addrs, i32 1
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  %19 = ptrtoint ptr %pm_suspended.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %pm_suspended.i.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i71 = icmp eq i8 %20, 0
  br i1 %tobool.not.i71, label %sw.bb.malidp_hw_write.exit75_crit_edge, label %do.end.i72, !prof !47

sw.bb.malidp_hw_write.exit75_crit_edge:           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_write.exit75

do.end.i72:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 268, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_write.exit75

malidp_hw_write.exit75:                           ; preds = %do.end.i72, %sw.bb.malidp_hw_write.exit75_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %21 = tail call i32 @llvm.bswap.i32(i32 %18) #5
  %22 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i74 = getelementptr i8, ptr %23, i32 33068
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i74, i32 %21) #5, !srcloc !51
  %24 = ptrtoint ptr %pm_suspended.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %pm_suspended.i.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i77 = icmp eq i8 %25, 0
  br i1 %tobool.not.i77, label %malidp_hw_write.exit75.malidp_hw_write.exit81_crit_edge, label %do.end.i78, !prof !47

malidp_hw_write.exit75.malidp_hw_write.exit81_crit_edge: ; preds = %malidp_hw_write.exit75
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_write.exit81

do.end.i78:                                       ; preds = %malidp_hw_write.exit75
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 268, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_write.exit81

malidp_hw_write.exit81:                           ; preds = %do.end.i78, %malidp_hw_write.exit75.malidp_hw_write.exit81_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %26 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i80 = getelementptr i8, ptr %27, i32 33072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i80, i32 0) #5, !srcloc !51
  %arrayidx6 = getelementptr i32, ptr %pitches, i32 1
  %28 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx6, align 4
  %30 = ptrtoint ptr %pm_suspended.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %pm_suspended.i.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i83 = icmp eq i8 %31, 0
  br i1 %tobool.not.i83, label %malidp_hw_write.exit81.malidp_hw_write.exit87_crit_edge, label %do.end.i84, !prof !47

malidp_hw_write.exit81.malidp_hw_write.exit87_crit_edge: ; preds = %malidp_hw_write.exit81
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_write.exit87

do.end.i84:                                       ; preds = %malidp_hw_write.exit81
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 268, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_write.exit87

malidp_hw_write.exit87:                           ; preds = %do.end.i84, %malidp_hw_write.exit81.malidp_hw_write.exit87_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %32 = tail call i32 @llvm.bswap.i32(i32 %29) #5
  %33 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i86 = getelementptr i8, ptr %34, i32 33032
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i86, i32 %32) #5, !srcloc !51
  br label %sw.bb8

sw.bb8:                                           ; preds = %malidp_hw_write.exit87, %malidp_hw_write.exit.sw.bb8_crit_edge
  %35 = ptrtoint ptr %addrs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %addrs, align 4
  %37 = ptrtoint ptr %pm_suspended.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %pm_suspended.i.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i89 = icmp eq i8 %38, 0
  br i1 %tobool.not.i89, label %sw.bb8.malidp_hw_write.exit93_crit_edge, label %do.end.i90, !prof !47

sw.bb8.malidp_hw_write.exit93_crit_edge:          ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_write.exit93

do.end.i90:                                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 268, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_write.exit93

malidp_hw_write.exit93:                           ; preds = %do.end.i90, %sw.bb8.malidp_hw_write.exit93_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %39 = tail call i32 @llvm.bswap.i32(i32 %36) #5
  %40 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i92 = getelementptr i8, ptr %41, i32 33036
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i92, i32 %39) #5, !srcloc !51
  %42 = ptrtoint ptr %pm_suspended.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %pm_suspended.i.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not.i95 = icmp eq i8 %43, 0
  br i1 %tobool.not.i95, label %malidp_hw_write.exit93.malidp_hw_write.exit99_crit_edge, label %do.end.i96, !prof !47

malidp_hw_write.exit93.malidp_hw_write.exit99_crit_edge: ; preds = %malidp_hw_write.exit93
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_write.exit99

do.end.i96:                                       ; preds = %malidp_hw_write.exit93
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 268, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_write.exit99

malidp_hw_write.exit99:                           ; preds = %do.end.i96, %malidp_hw_write.exit93.malidp_hw_write.exit99_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %44 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i98 = getelementptr i8, ptr %45, i32 33040
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i98, i32 0) #5, !srcloc !51
  %46 = ptrtoint ptr %pitches to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %pitches, align 4
  %48 = ptrtoint ptr %pm_suspended.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %pm_suspended.i.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool.not.i101 = icmp eq i8 %49, 0
  br i1 %tobool.not.i101, label %malidp_hw_write.exit99.malidp_hw_write.exit105_crit_edge, label %do.end.i102, !prof !47

malidp_hw_write.exit99.malidp_hw_write.exit105_crit_edge: ; preds = %malidp_hw_write.exit99
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_write.exit105

do.end.i102:                                      ; preds = %malidp_hw_write.exit99
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 268, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_write.exit105

malidp_hw_write.exit105:                          ; preds = %do.end.i102, %malidp_hw_write.exit99.malidp_hw_write.exit105_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %50 = tail call i32 @llvm.bswap.i32(i32 %47) #5
  %51 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i104 = getelementptr i8, ptr %52, i32 33028
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i104, i32 %50) #5, !srcloc !51
  br label %sw.epilog

do.end:                                           ; preds = %malidp_hw_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 879, i32 noundef 9, ptr noundef nonnull @.str.9) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %malidp_hw_write.exit105
  %53 = and i16 %w, 8191
  %and32 = zext i16 %53 to i32
  %54 = and i16 %h, 8191
  %and34 = zext i16 %54 to i32
  %shl35 = shl nuw nsw i32 %and34, 16
  %or = or i32 %shl35, %and32
  %55 = ptrtoint ptr %pm_suspended.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %pm_suspended.i.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool.not.i107 = icmp eq i8 %56, 0
  br i1 %tobool.not.i107, label %sw.epilog.malidp_hw_write.exit111_crit_edge, label %do.end.i108, !prof !47

sw.epilog.malidp_hw_write.exit111_crit_edge:      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_write.exit111

do.end.i108:                                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 268, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_write.exit111

malidp_hw_write.exit111:                          ; preds = %do.end.i108, %sw.epilog.malidp_hw_write.exit111_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %57 = tail call i32 @llvm.bswap.i32(i32 %or) #5
  %58 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i110 = getelementptr i8, ptr %59, i32 32816
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i110, i32 %57) #5, !srcloc !51
  %60 = ptrtoint ptr %pm_suspended.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %pm_suspended.i.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool.not.i.i113 = icmp eq i8 %61, 0
  br i1 %tobool.not.i.i113, label %malidp_hw_write.exit111.malidp_hw_read.exit.i118_crit_edge, label %do.end.i.i114, !prof !47

malidp_hw_write.exit111.malidp_hw_read.exit.i118_crit_edge: ; preds = %malidp_hw_write.exit111
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_read.exit.i118

do.end.i.i114:                                    ; preds = %malidp_hw_write.exit111
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 261, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_read.exit.i118

malidp_hw_read.exit.i118:                         ; preds = %do.end.i.i114, %malidp_hw_write.exit111.malidp_hw_read.exit.i118_crit_edge
  %62 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i116 = getelementptr i8, ptr %63, i32 32784
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i116) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %65 = ptrtoint ptr %pm_suspended.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %pm_suspended.i.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool.not.i5.i117 = icmp eq i8 %66, 0
  br i1 %tobool.not.i5.i117, label %malidp_hw_read.exit.i118.malidp_hw_setbits.exit122_crit_edge, label %do.end.i6.i119, !prof !47

malidp_hw_read.exit.i118.malidp_hw_setbits.exit122_crit_edge: ; preds = %malidp_hw_read.exit.i118
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_setbits.exit122

do.end.i6.i119:                                   ; preds = %malidp_hw_read.exit.i118
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 268, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_setbits.exit122

malidp_hw_setbits.exit122:                        ; preds = %do.end.i6.i119, %malidp_hw_read.exit.i118.malidp_hw_setbits.exit122_crit_edge
  %67 = or i32 %64, -1073741824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %68 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i8.i121 = getelementptr i8, ptr %69, i32 32784
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i121, i32 %67) #5, !srcloc !51
  %tobool36.not = icmp eq ptr %rgb2yuv_coeffs, null
  br i1 %tobool36.not, label %malidp_hw_setbits.exit122.if.end42_crit_edge, label %malidp_hw_setbits.exit122.for.body_crit_edge

malidp_hw_setbits.exit122.for.body_crit_edge:     ; preds = %malidp_hw_setbits.exit122
  br label %for.body

malidp_hw_setbits.exit122.if.end42_crit_edge:     ; preds = %malidp_hw_setbits.exit122
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

for.body:                                         ; preds = %malidp_hw_write.exit128.for.body_crit_edge, %malidp_hw_setbits.exit122.for.body_crit_edge
  %i.0129 = phi i32 [ %inc, %malidp_hw_write.exit128.for.body_crit_edge ], [ 0, %malidp_hw_setbits.exit122.for.body_crit_edge ]
  %arrayidx39 = getelementptr i16, ptr %rgb2yuv_coeffs, i32 %i.0129
  %70 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %arrayidx39, align 2
  %conv40 = sext i16 %71 to i32
  %mul = shl i32 %i.0129, 2
  %add41 = add nuw nsw i32 %mul, 32888
  %72 = ptrtoint ptr %pm_suspended.i.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %pm_suspended.i.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool.not.i124 = icmp eq i8 %73, 0
  br i1 %tobool.not.i124, label %for.body.malidp_hw_write.exit128_crit_edge, label %do.end.i125, !prof !47

for.body.malidp_hw_write.exit128_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_write.exit128

do.end.i125:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 268, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_write.exit128

malidp_hw_write.exit128:                          ; preds = %do.end.i125, %for.body.malidp_hw_write.exit128_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %74 = tail call i32 @llvm.bswap.i32(i32 %conv40) #5
  %75 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i127 = getelementptr i8, ptr %76, i32 %add41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i127, i32 %74) #5, !srcloc !51
  %inc = add nuw nsw i32 %i.0129, 1
  %exitcond.not = icmp eq i32 %inc, 12
  br i1 %exitcond.not, label %malidp_hw_write.exit128.if.end42_crit_edge, label %malidp_hw_write.exit128.for.body_crit_edge

malidp_hw_write.exit128.for.body_crit_edge:       ; preds = %malidp_hw_write.exit128
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

malidp_hw_write.exit128.if.end42_crit_edge:       ; preds = %malidp_hw_write.exit128
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

if.end42:                                         ; preds = %malidp_hw_write.exit128.if.end42_crit_edge, %malidp_hw_setbits.exit122.if.end42_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @malidp550_disable_memwrite(ptr nocapture noundef readonly %hwdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pm_suspended.i.i = getelementptr inbounds %struct.malidp_hw_device, ptr %hwdev, i32 0, i32 9
  %0 = ptrtoint ptr %pm_suspended.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_suspended.i.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i.i, label %entry.malidp_hw_read.exit.i_crit_edge, label %do.end.i.i, !prof !47

entry.malidp_hw_read.exit.i_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_read.exit.i

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 261, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_read.exit.i

malidp_hw_read.exit.i:                            ; preds = %do.end.i.i, %entry.malidp_hw_read.exit.i_crit_edge
  %regs.i.i = getelementptr inbounds %struct.malidp_hw_device, ptr %hwdev, i32 0, i32 1
  %2 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 32784
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %5 = ptrtoint ptr %pm_suspended.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %pm_suspended.i.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i5.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i5.i, label %malidp_hw_read.exit.i.malidp_hw_clearbits.exit_crit_edge, label %do.end.i6.i, !prof !47

malidp_hw_read.exit.i.malidp_hw_clearbits.exit_crit_edge: ; preds = %malidp_hw_read.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_clearbits.exit

do.end.i6.i:                                      ; preds = %malidp_hw_read.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 268, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_clearbits.exit

malidp_hw_clearbits.exit:                         ; preds = %do.end.i6.i, %malidp_hw_read.exit.i.malidp_hw_clearbits.exit_crit_edge
  %7 = and i32 %4, 1073741823
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %8 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %9, i32 32784
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 %7) #5, !srcloc !51
  %10 = ptrtoint ptr %pm_suspended.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %pm_suspended.i.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i.i4 = icmp eq i8 %11, 0
  br i1 %tobool.not.i.i4, label %malidp_hw_clearbits.exit.malidp_hw_read.exit.i9_crit_edge, label %do.end.i.i5, !prof !47

malidp_hw_clearbits.exit.malidp_hw_read.exit.i9_crit_edge: ; preds = %malidp_hw_clearbits.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_read.exit.i9

do.end.i.i5:                                      ; preds = %malidp_hw_clearbits.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 261, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_read.exit.i9

malidp_hw_read.exit.i9:                           ; preds = %do.end.i.i5, %malidp_hw_clearbits.exit.malidp_hw_read.exit.i9_crit_edge
  %12 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i7 = getelementptr i8, ptr %13, i32 32
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i7) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %15 = ptrtoint ptr %pm_suspended.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %pm_suspended.i.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i5.i8 = icmp eq i8 %16, 0
  br i1 %tobool.not.i5.i8, label %malidp_hw_read.exit.i9.malidp_hw_clearbits.exit13_crit_edge, label %do.end.i6.i10, !prof !47

malidp_hw_read.exit.i9.malidp_hw_clearbits.exit13_crit_edge: ; preds = %malidp_hw_read.exit.i9
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_clearbits.exit13

do.end.i6.i10:                                    ; preds = %malidp_hw_read.exit.i9
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 268, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_clearbits.exit13

malidp_hw_clearbits.exit13:                       ; preds = %do.end.i6.i10, %malidp_hw_read.exit.i9.malidp_hw_clearbits.exit13_crit_edge
  %17 = and i32 %14, -257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %18 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i8.i12 = getelementptr i8, ptr %19, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i12, i32 %17) #5, !srcloc !51
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @malidp650_query_hw(ptr nocapture noundef %hwdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pm_suspended.i = getelementptr inbounds %struct.malidp_hw_device, ptr %hwdev, i32 0, i32 9
  %0 = ptrtoint ptr %pm_suspended.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_suspended.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.malidp_hw_read.exit_crit_edge, label %do.end.i, !prof !47

entry.malidp_hw_read.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_read.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 261, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_read.exit

malidp_hw_read.exit:                              ; preds = %do.end.i, %entry.malidp_hw_read.exit_crit_edge
  %regs.i = getelementptr inbounds %struct.malidp_hw_device, ptr %hwdev, i32 0, i32 1
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 65492
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !48
  %5 = lshr i32 %4, 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %conv = and i32 %5, 3
  %min_line_size = getelementptr inbounds %struct.malidp_hw_device, ptr %hwdev, i32 0, i32 6
  %6 = ptrtoint ptr %min_line_size to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 4, ptr %min_line_size, align 4
  %7 = zext i32 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %conv, label %entry.unreachabledefault [
    i32 0, label %malidp_hw_read.exit.sw.bb_crit_edge
    i32 2, label %malidp_hw_read.exit.sw.bb_crit_edge17
    i32 1, label %malidp_hw_read.exit.sw.epilog_crit_edge
    i32 3, label %sw.bb4
  ]

malidp_hw_read.exit.sw.epilog_crit_edge:          ; preds = %malidp_hw_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

malidp_hw_read.exit.sw.bb_crit_edge17:            ; preds = %malidp_hw_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

malidp_hw_read.exit.sw.bb_crit_edge:              ; preds = %malidp_hw_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

sw.bb:                                            ; preds = %malidp_hw_read.exit.sw.bb_crit_edge, %malidp_hw_read.exit.sw.bb_crit_edge17
  %max_line_size = getelementptr inbounds %struct.malidp_hw_device, ptr %hwdev, i32 0, i32 7
  %8 = ptrtoint ptr %max_line_size to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 0, ptr %max_line_size, align 2
  br label %cleanup

sw.bb4:                                           ; preds = %malidp_hw_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.unreachabledefault:                         ; preds = %malidp_hw_read.exit
  unreachable

sw.epilog:                                        ; preds = %sw.bb4, %malidp_hw_read.exit.sw.epilog_crit_edge
  %.sink = phi i16 [ 2560, %sw.bb4 ], [ 4096, %malidp_hw_read.exit.sw.epilog_crit_edge ]
  %rsize.0 = phi i32 [ 81920, %sw.bb4 ], [ 131072, %malidp_hw_read.exit.sw.epilog_crit_edge ]
  %max_line_size5 = getelementptr inbounds %struct.malidp_hw_device, ptr %hwdev, i32 0, i32 7
  %9 = ptrtoint ptr %max_line_size5 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %.sink, ptr %max_line_size5, align 2
  %rotation_memory = getelementptr inbounds %struct.malidp_hw_device, ptr %hwdev, i32 0, i32 11
  %arrayidx = getelementptr %struct.malidp_hw_device, ptr %hwdev, i32 0, i32 11, i32 1
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %rsize.0, ptr %arrayidx, align 4
  %11 = ptrtoint ptr %rotation_memory to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %rsize.0, ptr %rotation_memory, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @malidp650_rotmem_required(ptr nocapture noundef readnone %hwdev, i16 noundef zeroext %w, i16 noundef zeroext %h, i32 noundef %fmt, i1 noundef zeroext %has_modifier) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 843853912, i32 %fmt)
  %cond = icmp eq i32 %fmt, 843853912
  br i1 %cond, label %sw.epilog.thread, label %sw.epilog

sw.epilog.thread:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv6 = zext i16 %w to i32
  %mul7 = shl nuw nsw i32 %conv6, 5
  br label %0

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call fastcc i32 @malidpx50_get_bytes_per_column(i32 noundef %fmt)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call)
  %cmp = icmp eq i32 %call, -22
  %conv = zext i16 %w to i32
  %mul = mul i32 %call, %conv
  %spec.select = select i1 %cmp, i32 -22, i32 %mul
  br label %0

0:                                                ; preds = %sw.epilog, %sw.epilog.thread
  %1 = phi i32 [ %mul7, %sw.epilog.thread ], [ %spec.select, %sw.epilog ]
  ret i32 %1
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @malidp_hw_get_format_id(ptr nocapture noundef readonly %map, i8 noundef zeroext %layer_id, i32 noundef %format, i1 noundef zeroext %has_modifier) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %n_pixel_formats = getelementptr inbounds %struct.malidp_hw_regmap, ptr %map, i32 0, i32 11
  %0 = ptrtoint ptr %n_pixel_formats to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %n_pixel_formats, align 4
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp35.not = icmp eq i8 %1, 0
  br i1 %cmp35.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %pixel_formats = getelementptr inbounds %struct.malidp_hw_regmap, ptr %map, i32 0, i32 10
  %2 = ptrtoint ptr %pixel_formats to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pixel_formats, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.036 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %layer = getelementptr %struct.malidp_format_id, ptr %3, i32 %i.036, i32 1
  %4 = ptrtoint ptr %layer to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %layer, align 4
  %and33 = and i8 %5, %layer_id
  call void @__sanitizer_cov_trace_cmp1(i8 %and33, i8 %layer_id)
  %cmp5 = icmp eq i8 %and33, %layer_id
  br i1 %cmp5, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %arrayidx = getelementptr %struct.malidp_format_id, ptr %3, i32 %i.036
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %format)
  %cmp10 = icmp eq i32 %7, %format
  br i1 %cmp10, label %if.then, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 1448695129, i32 %format)
  %cmp12 = icmp eq i32 %format, 1448695129
  %8 = and i1 %cmp12, %has_modifier
  br i1 %8, label %land.lhs.true16, label %if.then.if.else_crit_edge

if.then.if.else_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true16:                                  ; preds = %if.then
  %features = getelementptr inbounds %struct.malidp_hw_regmap, ptr %map, i32 0, i32 4
  %9 = ptrtoint ptr %features to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %features, align 4
  %11 = and i8 %10, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool19.not = icmp eq i8 %11, 0
  br i1 %tobool19.not, label %land.lhs.true16.if.else_crit_edge, label %land.lhs.true16.cleanup_crit_edge

land.lhs.true16.cleanup_crit_edge:                ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true16.if.else_crit_edge:                ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.else:                                          ; preds = %land.lhs.true16.if.else_crit_edge, %if.then.if.else_crit_edge
  %id = getelementptr %struct.malidp_format_id, ptr %3, i32 %i.036, i32 2
  %12 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %id, align 1
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.036, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.else, %land.lhs.true16.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ %13, %if.else ], [ 41, %land.lhs.true16.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ], [ -1, %for.inc.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @malidp_hw_format_is_linear_only(i32 noundef %format) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %format to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %format, label %sw.default [
    i32 808669761, label %entry.return_crit_edge
    i32 808665426, label %entry.return_crit_edge1
    i32 808665410, label %entry.return_crit_edge2
    i32 875713089, label %entry.return_crit_edge3
    i32 875708754, label %entry.return_crit_edge4
    i32 875708738, label %entry.return_crit_edge5
    i32 875709016, label %entry.return_crit_edge6
    i32 875713112, label %entry.return_crit_edge7
    i32 875714642, label %entry.return_crit_edge8
    i32 875714626, label %entry.return_crit_edge9
    i32 875710290, label %entry.return_crit_edge10
    i32 909199186, label %entry.return_crit_edge11
    i32 892424769, label %entry.return_crit_edge12
    i32 892420434, label %entry.return_crit_edge13
    i32 892420418, label %entry.return_crit_edge14
    i32 1498831189, label %entry.return_crit_edge15
    i32 1448434008, label %entry.return_crit_edge16
    i32 808670808, label %entry.return_crit_edge17
    i32 843853912, label %entry.return_crit_edge18
    i32 810299480, label %entry.return_crit_edge19
  ]

entry.return_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @malidp_hw_format_is_afbc_only(i32 noundef %format) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %format to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %format, label %sw.default [
    i32 875713878, label %entry.return_crit_edge
    i32 808670550, label %entry.return_crit_edge1
    i32 942691673, label %entry.return_crit_edge2
    i32 808539481, label %entry.return_crit_edge3
  ]

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @malidp_de_irq_hw_init(ptr nocapture noundef readonly %hwdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pm_suspended.i.i.i = getelementptr inbounds %struct.malidp_hw_device, ptr %hwdev, i32 0, i32 9
  %0 = ptrtoint ptr %pm_suspended.i.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_suspended.i.i.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i.i.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i.i.i, label %entry.malidp_hw_read.exit.i.i_crit_edge, label %do.end.i.i.i, !prof !47

entry.malidp_hw_read.exit.i.i_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_read.exit.i.i

do.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 261, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_read.exit.i.i

malidp_hw_read.exit.i.i:                          ; preds = %do.end.i.i.i, %entry.malidp_hw_read.exit.i.i_crit_edge
  %regs.i.i.i = getelementptr inbounds %struct.malidp_hw_device, ptr %hwdev, i32 0, i32 1
  %2 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %3, i32 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %5 = ptrtoint ptr %pm_suspended.i.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %pm_suspended.i.i.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i5.i.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i5.i.i, label %malidp_hw_read.exit.i.i.malidp_hw_disable_irq.exit_crit_edge, label %do.end.i6.i.i, !prof !47

malidp_hw_read.exit.i.i.malidp_hw_disable_irq.exit_crit_edge: ; preds = %malidp_hw_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_disable_irq.exit

do.end.i6.i.i:                                    ; preds = %malidp_hw_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 268, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_disable_irq.exit

malidp_hw_disable_irq.exit:                       ; preds = %do.end.i6.i.i, %malidp_hw_read.exit.i.i.malidp_hw_disable_irq.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %7 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i8.i.i = getelementptr i8, ptr %8, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i.i, i32 0) #5, !srcloc !51
  tail call fastcc void @malidp_hw_clear_irq(ptr noundef %hwdev, i8 noundef zeroext 0, i32 noundef -1)
  %9 = ptrtoint ptr %hwdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hwdev, align 4
  %dc_base.i.i = getelementptr inbounds %struct.malidp_hw_regmap, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %dc_base.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %dc_base.i.i, align 4
  %retval.0.i.i = zext i16 %12 to i32
  %add.i = add nuw nsw i32 %retval.0.i.i, 8
  %13 = ptrtoint ptr %pm_suspended.i.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %pm_suspended.i.i.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i.i.i12 = icmp eq i8 %14, 0
  br i1 %tobool.not.i.i.i12, label %malidp_hw_disable_irq.exit.malidp_hw_read.exit.i.i17_crit_edge, label %do.end.i.i.i13, !prof !47

malidp_hw_disable_irq.exit.malidp_hw_read.exit.i.i17_crit_edge: ; preds = %malidp_hw_disable_irq.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_read.exit.i.i17

do.end.i.i.i13:                                   ; preds = %malidp_hw_disable_irq.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 261, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_read.exit.i.i17

malidp_hw_read.exit.i.i17:                        ; preds = %do.end.i.i.i13, %malidp_hw_disable_irq.exit.malidp_hw_read.exit.i.i17_crit_edge
  %15 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i.i15 = getelementptr i8, ptr %16, i32 %add.i
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i15) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %18 = ptrtoint ptr %pm_suspended.i.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %pm_suspended.i.i.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i5.i.i16 = icmp eq i8 %19, 0
  br i1 %tobool.not.i5.i.i16, label %malidp_hw_read.exit.i.i17.malidp_hw_disable_irq.exit20_crit_edge, label %do.end.i6.i.i18, !prof !47

malidp_hw_read.exit.i.i17.malidp_hw_disable_irq.exit20_crit_edge: ; preds = %malidp_hw_read.exit.i.i17
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_disable_irq.exit20

do.end.i6.i.i18:                                  ; preds = %malidp_hw_read.exit.i.i17
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 268, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_disable_irq.exit20

malidp_hw_disable_irq.exit20:                     ; preds = %do.end.i6.i.i18, %malidp_hw_read.exit.i.i17.malidp_hw_disable_irq.exit20_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %20 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i8.i.i19 = getelementptr i8, ptr %21, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i.i19, i32 0) #5, !srcloc !51
  tail call fastcc void @malidp_hw_clear_irq(ptr noundef %hwdev, i8 noundef zeroext 2, i32 noundef -1)
  %22 = ptrtoint ptr %hwdev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hwdev, align 4
  %dc_irq_map = getelementptr inbounds %struct.malidp_hw_regmap, ptr %23, i32 0, i32 9
  %24 = ptrtoint ptr %dc_irq_map to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dc_irq_map, align 4
  %dc_base.i.i21 = getelementptr inbounds %struct.malidp_hw_regmap, ptr %23, i32 0, i32 2
  %26 = ptrtoint ptr %dc_base.i.i21 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %dc_base.i.i21, align 4
  %retval.0.i.i22 = zext i16 %27 to i32
  %add.i23 = add nuw nsw i32 %retval.0.i.i22, 8
  %28 = ptrtoint ptr %pm_suspended.i.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %pm_suspended.i.i.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i.i.i25 = icmp eq i8 %29, 0
  br i1 %tobool.not.i.i.i25, label %malidp_hw_disable_irq.exit20.malidp_hw_read.exit.i.i30_crit_edge, label %do.end.i.i.i26, !prof !47

malidp_hw_disable_irq.exit20.malidp_hw_read.exit.i.i30_crit_edge: ; preds = %malidp_hw_disable_irq.exit20
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_read.exit.i.i30

do.end.i.i.i26:                                   ; preds = %malidp_hw_disable_irq.exit20
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 261, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_read.exit.i.i30

malidp_hw_read.exit.i.i30:                        ; preds = %do.end.i.i.i26, %malidp_hw_disable_irq.exit20.malidp_hw_read.exit.i.i30_crit_edge
  %30 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i.i28 = getelementptr i8, ptr %31, i32 %add.i23
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i28) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %33 = ptrtoint ptr %pm_suspended.i.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %pm_suspended.i.i.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i5.i.i29 = icmp eq i8 %34, 0
  br i1 %tobool.not.i5.i.i29, label %malidp_hw_read.exit.i.i30.malidp_hw_enable_irq.exit_crit_edge, label %do.end.i6.i.i31, !prof !47

malidp_hw_read.exit.i.i30.malidp_hw_enable_irq.exit_crit_edge: ; preds = %malidp_hw_read.exit.i.i30
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_enable_irq.exit

do.end.i6.i.i31:                                  ; preds = %malidp_hw_read.exit.i.i30
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 268, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_enable_irq.exit

malidp_hw_enable_irq.exit:                        ; preds = %do.end.i6.i.i31, %malidp_hw_read.exit.i.i30.malidp_hw_enable_irq.exit_crit_edge
  %35 = tail call i32 @llvm.bswap.i32(i32 %32) #5
  %or.i.i = or i32 %35, %25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %36 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #5
  %37 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i8.i.i32 = getelementptr i8, ptr %38, i32 %add.i23
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i.i32, i32 %36) #5, !srcloc !51
  %39 = ptrtoint ptr %hwdev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hwdev, align 4
  %de_irq_map = getelementptr inbounds %struct.malidp_hw_regmap, ptr %40, i32 0, i32 7
  %41 = ptrtoint ptr %de_irq_map to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %de_irq_map, align 4
  %43 = ptrtoint ptr %pm_suspended.i.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %pm_suspended.i.i.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool.not.i.i.i36 = icmp eq i8 %44, 0
  br i1 %tobool.not.i.i.i36, label %malidp_hw_enable_irq.exit.malidp_hw_read.exit.i.i41_crit_edge, label %do.end.i.i.i37, !prof !47

malidp_hw_enable_irq.exit.malidp_hw_read.exit.i.i41_crit_edge: ; preds = %malidp_hw_enable_irq.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_read.exit.i.i41

do.end.i.i.i37:                                   ; preds = %malidp_hw_enable_irq.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 261, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_read.exit.i.i41

malidp_hw_read.exit.i.i41:                        ; preds = %do.end.i.i.i37, %malidp_hw_enable_irq.exit.malidp_hw_read.exit.i.i41_crit_edge
  %45 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i.i39 = getelementptr i8, ptr %46, i32 8
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i39) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %48 = ptrtoint ptr %pm_suspended.i.i.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %pm_suspended.i.i.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool.not.i5.i.i40 = icmp eq i8 %49, 0
  br i1 %tobool.not.i5.i.i40, label %malidp_hw_read.exit.i.i41.malidp_hw_enable_irq.exit45_crit_edge, label %do.end.i6.i.i42, !prof !47

malidp_hw_read.exit.i.i41.malidp_hw_enable_irq.exit45_crit_edge: ; preds = %malidp_hw_read.exit.i.i41
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_enable_irq.exit45

do.end.i6.i.i42:                                  ; preds = %malidp_hw_read.exit.i.i41
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 268, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_enable_irq.exit45

malidp_hw_enable_irq.exit45:                      ; preds = %do.end.i6.i.i42, %malidp_hw_read.exit.i.i41.malidp_hw_enable_irq.exit45_crit_edge
  %50 = tail call i32 @llvm.bswap.i32(i32 %47) #5
  %or.i.i43 = or i32 %50, %42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %51 = tail call i32 @llvm.bswap.i32(i32 %or.i.i43) #5
  %52 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i8.i.i44 = getelementptr i8, ptr %53, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i.i44, i32 %51) #5, !srcloc !51
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @malidp_hw_clear_irq(ptr nocapture noundef readonly %hwdev, i8 noundef zeroext %block, i32 noundef %irq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %block to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.18)
  switch i8 %block, label %entry.malidp_get_block_base.exit_crit_edge [
    i8 1, label %sw.bb.i
    i8 2, label %sw.bb2.i
  ]

entry.malidp_get_block_base.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_get_block_base.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %hwdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hwdev, align 4
  %se_base.i = getelementptr inbounds %struct.malidp_hw_regmap, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %se_base.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %se_base.i, align 2
  br label %malidp_get_block_base.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %hwdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hwdev, align 4
  %dc_base.i = getelementptr inbounds %struct.malidp_hw_regmap, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %dc_base.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %dc_base.i, align 4
  br label %malidp_get_block_base.exit

malidp_get_block_base.exit:                       ; preds = %sw.bb2.i, %sw.bb.i, %entry.malidp_get_block_base.exit_crit_edge
  %retval.0.shrunk.i = phi i16 [ %8, %sw.bb2.i ], [ %4, %sw.bb.i ], [ 0, %entry.malidp_get_block_base.exit_crit_edge ]
  %retval.0.i = zext i16 %retval.0.shrunk.i to i32
  %9 = ptrtoint ptr %hwdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hwdev, align 4
  %features = getelementptr inbounds %struct.malidp_hw_regmap, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %features to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %features, align 4
  %13 = and i8 %12, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %malidp_get_block_base.exit
  %add = add nuw nsw i32 %retval.0.i, 12
  %pm_suspended.i = getelementptr inbounds %struct.malidp_hw_device, ptr %hwdev, i32 0, i32 9
  %14 = ptrtoint ptr %pm_suspended.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %pm_suspended.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i, label %if.then.malidp_hw_write.exit_crit_edge, label %do.end.i, !prof !47

if.then.malidp_hw_write.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_write.exit

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 268, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_write.exit

malidp_hw_write.exit:                             ; preds = %do.end.i, %if.then.malidp_hw_write.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %16 = tail call i32 @llvm.bswap.i32(i32 %irq) #5
  %regs.i = getelementptr inbounds %struct.malidp_hw_device, ptr %hwdev, i32 0, i32 1
  %17 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %16) #5, !srcloc !51
  br label %if.end

if.else:                                          ; preds = %malidp_get_block_base.exit
  %pm_suspended.i7 = getelementptr inbounds %struct.malidp_hw_device, ptr %hwdev, i32 0, i32 9
  %19 = ptrtoint ptr %pm_suspended.i7 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %pm_suspended.i7, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i8 = icmp eq i8 %20, 0
  br i1 %tobool.not.i8, label %if.else.malidp_hw_write.exit12_crit_edge, label %do.end.i9, !prof !47

if.else.malidp_hw_write.exit12_crit_edge:         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_write.exit12

do.end.i9:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 268, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_write.exit12

malidp_hw_write.exit12:                           ; preds = %do.end.i9, %if.else.malidp_hw_write.exit12_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %21 = tail call i32 @llvm.bswap.i32(i32 %irq) #5
  %regs.i10 = getelementptr inbounds %struct.malidp_hw_device, ptr %hwdev, i32 0, i32 1
  %22 = ptrtoint ptr %regs.i10 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i10, align 4
  %add.ptr.i11 = getelementptr i8, ptr %23, i32 %retval.0.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 %21) #5, !srcloc !51
  br label %if.end

if.end:                                           ; preds = %malidp_hw_write.exit12, %malidp_hw_write.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @malidp_de_irq_init(ptr noundef %drm, i32 noundef %irq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %pm_suspended.i.i.i = getelementptr inbounds %struct.malidp_hw_device, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %pm_suspended.i.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pm_suspended.i.i.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i.i.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i.i.i, label %entry.malidp_hw_read.exit.i.i_crit_edge, label %do.end.i.i.i, !prof !47

entry.malidp_hw_read.exit.i.i_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_read.exit.i.i

do.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 261, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_read.exit.i.i

malidp_hw_read.exit.i.i:                          ; preds = %do.end.i.i.i, %entry.malidp_hw_read.exit.i.i_crit_edge
  %regs.i.i.i = getelementptr inbounds %struct.malidp_hw_device, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %9 = ptrtoint ptr %pm_suspended.i.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %pm_suspended.i.i.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i5.i.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i5.i.i, label %malidp_hw_read.exit.i.i.malidp_hw_disable_irq.exit_crit_edge, label %do.end.i6.i.i, !prof !47

malidp_hw_read.exit.i.i.malidp_hw_disable_irq.exit_crit_edge: ; preds = %malidp_hw_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_disable_irq.exit

do.end.i6.i.i:                                    ; preds = %malidp_hw_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 268, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_disable_irq.exit

malidp_hw_disable_irq.exit:                       ; preds = %do.end.i6.i.i, %malidp_hw_read.exit.i.i.malidp_hw_disable_irq.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %11 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i8.i.i = getelementptr i8, ptr %12, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i.i, i32 0) #5, !srcloc !51
  tail call fastcc void @malidp_hw_clear_irq(ptr noundef %3, i8 noundef zeroext 0, i32 noundef -1)
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %3, align 4
  %dc_base.i.i = getelementptr inbounds %struct.malidp_hw_regmap, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %dc_base.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %dc_base.i.i, align 4
  %retval.0.i.i = zext i16 %16 to i32
  %add.i = add nuw nsw i32 %retval.0.i.i, 8
  %17 = ptrtoint ptr %pm_suspended.i.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %pm_suspended.i.i.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i.i.i12 = icmp eq i8 %18, 0
  br i1 %tobool.not.i.i.i12, label %malidp_hw_disable_irq.exit.malidp_hw_read.exit.i.i17_crit_edge, label %do.end.i.i.i13, !prof !47

malidp_hw_disable_irq.exit.malidp_hw_read.exit.i.i17_crit_edge: ; preds = %malidp_hw_disable_irq.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_read.exit.i.i17

do.end.i.i.i13:                                   ; preds = %malidp_hw_disable_irq.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 261, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_read.exit.i.i17

malidp_hw_read.exit.i.i17:                        ; preds = %do.end.i.i.i13, %malidp_hw_disable_irq.exit.malidp_hw_read.exit.i.i17_crit_edge
  %19 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i.i15 = getelementptr i8, ptr %20, i32 %add.i
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i15) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %22 = ptrtoint ptr %pm_suspended.i.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %pm_suspended.i.i.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i5.i.i16 = icmp eq i8 %23, 0
  br i1 %tobool.not.i5.i.i16, label %malidp_hw_read.exit.i.i17.malidp_hw_disable_irq.exit20_crit_edge, label %do.end.i6.i.i18, !prof !47

malidp_hw_read.exit.i.i17.malidp_hw_disable_irq.exit20_crit_edge: ; preds = %malidp_hw_read.exit.i.i17
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_disable_irq.exit20

do.end.i6.i.i18:                                  ; preds = %malidp_hw_read.exit.i.i17
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 268, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_disable_irq.exit20

malidp_hw_disable_irq.exit20:                     ; preds = %do.end.i6.i.i18, %malidp_hw_read.exit.i.i17.malidp_hw_disable_irq.exit20_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %24 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i8.i.i19 = getelementptr i8, ptr %25, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i.i19, i32 0) #5, !srcloc !51
  tail call fastcc void @malidp_hw_clear_irq(ptr noundef %3, i8 noundef zeroext 2, i32 noundef -1)
  %dev1 = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 2
  %26 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev1, align 4
  %call = tail call i32 @devm_request_threaded_irq(ptr noundef %27, i32 noundef %irq, ptr noundef nonnull @malidp_de_irq, ptr noundef nonnull @malidp_de_irq_thread_handler, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %drm) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %malidp_hw_disable_irq.exit20
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.1) #5
  br label %cleanup

if.end:                                           ; preds = %malidp_hw_disable_irq.exit20
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @malidp_de_irq_hw_init(ptr noundef %3)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @malidp_de_irq(i32 noundef %irq, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %arg, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %de_irq_map = getelementptr inbounds %struct.malidp_hw_regmap, ptr %5, i32 0, i32 7
  %pm_suspended = getelementptr inbounds %struct.malidp_hw_device, ptr %3, i32 0, i32 9
  %6 = ptrtoint ptr %pm_suspended to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pm_suspended, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %malidp_hw_read.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

malidp_hw_read.exit:                              ; preds = %entry
  %dc_base = getelementptr inbounds %struct.malidp_hw_regmap, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %dc_base to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %dc_base, align 4
  %conv = zext i16 %9 to i32
  %regs.i = getelementptr inbounds %struct.malidp_hw_device, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 %conv
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !48
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %vsync_irq = getelementptr inbounds %struct.malidp_hw_regmap, ptr %5, i32 0, i32 9, i32 1
  %14 = ptrtoint ptr %vsync_irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %vsync_irq, align 4
  %and = and i32 %15, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %malidp_hw_read.exit.if.end12_crit_edge, label %if.then5

malidp_hw_read.exit.if.end12_crit_edge:           ; preds = %malidp_hw_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then5:                                         ; preds = %malidp_hw_read.exit
  tail call fastcc void @malidp_hw_clear_irq(ptr noundef %3, i8 noundef zeroext 2, i32 noundef %13)
  %event = getelementptr inbounds %struct.malidp_drm, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %event, align 4
  %cmp.not = icmp eq ptr %17, null
  br i1 %cmp.not, label %if.then5.if.end11_crit_edge, label %if.then7

if.then5.if.end11_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then7:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  %event_lock = getelementptr inbounds %struct.drm_device, ptr %arg, i32 0, i32 28
  tail call void @_raw_spin_lock(ptr noundef %event_lock) #5
  %crtc = getelementptr inbounds %struct.malidp_drm, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %event, align 4
  tail call void @drm_crtc_send_vblank_event(ptr noundef %crtc, ptr noundef %19) #5
  %20 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %event, align 4
  tail call void @_raw_spin_unlock(ptr noundef %event_lock) #5
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %if.then5.if.end11_crit_edge
  %config_valid = getelementptr inbounds %struct.malidp_drm, ptr %1, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %config_valid, i32 noundef 4) #5
  %21 = ptrtoint ptr %config_valid to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile i32 1, ptr %config_valid, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %malidp_hw_read.exit.if.end12_crit_edge
  %spec.select = phi i32 [ 2, %if.end11 ], [ 1, %malidp_hw_read.exit.if.end12_crit_edge ]
  %ret.0 = phi i32 [ 2, %if.end11 ], [ 0, %malidp_hw_read.exit.if.end12_crit_edge ]
  %22 = ptrtoint ptr %pm_suspended to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %pm_suspended, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i79 = icmp eq i8 %23, 0
  br i1 %tobool.not.i79, label %if.end12.malidp_hw_read.exit82_crit_edge, label %do.end.i80, !prof !47

if.end12.malidp_hw_read.exit82_crit_edge:         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_read.exit82

do.end.i80:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 261, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_read.exit82

malidp_hw_read.exit82:                            ; preds = %do.end.i80, %if.end12.malidp_hw_read.exit82_crit_edge
  %24 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs.i, align 4
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #5, !srcloc !48
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %28 = ptrtoint ptr %de_irq_map to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %de_irq_map, align 4
  %and14 = and i32 %29, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %malidp_hw_read.exit82.cleanup_crit_edge, label %if.end17

malidp_hw_read.exit82.cleanup_crit_edge:          ; preds = %malidp_hw_read.exit82
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end17:                                         ; preds = %malidp_hw_read.exit82
  %30 = ptrtoint ptr %pm_suspended to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %pm_suspended, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i84 = icmp eq i8 %31, 0
  br i1 %tobool.not.i84, label %if.end17.malidp_hw_read.exit88_crit_edge, label %do.end.i85, !prof !47

if.end17.malidp_hw_read.exit88_crit_edge:         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_read.exit88

do.end.i85:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 261, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_read.exit88

malidp_hw_read.exit88:                            ; preds = %do.end.i85, %if.end17.malidp_hw_read.exit88_crit_edge
  %32 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs.i, align 4
  %add.ptr.i87 = getelementptr i8, ptr %33, i32 8
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i87) #5, !srcloc !48
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %err_mask = getelementptr inbounds %struct.malidp_hw_regmap, ptr %5, i32 0, i32 7, i32 2
  %36 = ptrtoint ptr %err_mask to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %err_mask, align 4
  %or = or i32 %37, %35
  %and19 = and i32 %or, %27
  %vsync_irq20 = getelementptr inbounds %struct.malidp_hw_regmap, ptr %5, i32 0, i32 7, i32 1
  %38 = ptrtoint ptr %vsync_irq20 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %vsync_irq20, align 4
  %and21 = and i32 %and19, %39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %malidp_hw_read.exit88.if.end29_crit_edge, label %land.lhs.true

malidp_hw_read.exit88.if.end29_crit_edge:         ; preds = %malidp_hw_read.exit88
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

land.lhs.true:                                    ; preds = %malidp_hw_read.exit88
  %enabled = getelementptr inbounds %struct.malidp_drm, ptr %1, i32 0, i32 1, i32 11
  %40 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %enabled, align 8, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool24.not = icmp eq i8 %41, 0
  br i1 %tobool24.not, label %land.lhs.true.if.end29_crit_edge, label %if.then26

land.lhs.true.if.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.then26:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %crtc23 = getelementptr inbounds %struct.malidp_drm, ptr %1, i32 0, i32 1
  %call28 = tail call zeroext i1 @drm_crtc_handle_vblank(ptr noundef %crtc23) #5
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %land.lhs.true.if.end29_crit_edge, %malidp_hw_read.exit88.if.end29_crit_edge
  %42 = ptrtoint ptr %err_mask to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %err_mask, align 4
  %and31 = and i32 %43, %and19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end29.if.end36_crit_edge, label %if.then33

if.end29.if.end36_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

if.then33:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  %de_errors = getelementptr inbounds %struct.malidp_drm, ptr %1, i32 0, i32 7
  %crtc34 = getelementptr inbounds %struct.malidp_drm, ptr %1, i32 0, i32 1
  %call35 = tail call i64 @drm_crtc_vblank_count(ptr noundef %crtc34) #5
  tail call void @malidp_error(ptr noundef %1, ptr noundef %de_errors, i32 noundef %and19, i64 noundef %call35) #5
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %if.end29.if.end36_crit_edge
  tail call fastcc void @malidp_hw_clear_irq(ptr noundef %3, i8 noundef zeroext 0, i32 noundef %and19)
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %malidp_hw_read.exit82.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end36 ], [ 0, %entry.cleanup_crit_edge ], [ %ret.0, %malidp_hw_read.exit82.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @malidp_de_irq_thread_handler(i32 noundef %irq, ptr nocapture noundef readonly %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %arg, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %wq = getelementptr inbounds %struct.malidp_drm, ptr %1, i32 0, i32 3
  tail call void @__wake_up(ptr noundef %wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #5
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @malidp_de_irq_fini(ptr nocapture noundef readonly %hwdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwdev, align 4
  %de_irq_map = getelementptr inbounds %struct.malidp_hw_regmap, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %de_irq_map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %de_irq_map, align 4
  %pm_suspended.i.i.i = getelementptr inbounds %struct.malidp_hw_device, ptr %hwdev, i32 0, i32 9
  %4 = ptrtoint ptr %pm_suspended.i.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pm_suspended.i.i.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i.i.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i.i.i, label %entry.malidp_hw_read.exit.i.i_crit_edge, label %do.end.i.i.i, !prof !47

entry.malidp_hw_read.exit.i.i_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_read.exit.i.i

do.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 261, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_read.exit.i.i

malidp_hw_read.exit.i.i:                          ; preds = %do.end.i.i.i, %entry.malidp_hw_read.exit.i.i_crit_edge
  %regs.i.i.i = getelementptr inbounds %struct.malidp_hw_device, ptr %hwdev, i32 0, i32 1
  %6 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %9 = ptrtoint ptr %pm_suspended.i.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %pm_suspended.i.i.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i5.i.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i5.i.i, label %malidp_hw_read.exit.i.i.malidp_hw_disable_irq.exit_crit_edge, label %do.end.i6.i.i, !prof !47

malidp_hw_read.exit.i.i.malidp_hw_disable_irq.exit_crit_edge: ; preds = %malidp_hw_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_disable_irq.exit

do.end.i6.i.i:                                    ; preds = %malidp_hw_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 268, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_disable_irq.exit

malidp_hw_disable_irq.exit:                       ; preds = %do.end.i6.i.i, %malidp_hw_read.exit.i.i.malidp_hw_disable_irq.exit_crit_edge
  %11 = tail call i32 @llvm.bswap.i32(i32 %8) #5
  %neg.i.i = xor i32 %3, -1
  %and.i.i = and i32 %11, %neg.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %12 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #5
  %13 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i8.i.i = getelementptr i8, ptr %14, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i.i, i32 %12) #5, !srcloc !51
  %15 = ptrtoint ptr %hwdev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hwdev, align 4
  %dc_irq_map = getelementptr inbounds %struct.malidp_hw_regmap, ptr %16, i32 0, i32 9
  %17 = ptrtoint ptr %dc_irq_map to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dc_irq_map, align 4
  %dc_base.i.i = getelementptr inbounds %struct.malidp_hw_regmap, ptr %16, i32 0, i32 2
  %19 = ptrtoint ptr %dc_base.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %dc_base.i.i, align 4
  %retval.0.i.i = zext i16 %20 to i32
  %add.i = add nuw nsw i32 %retval.0.i.i, 8
  %21 = ptrtoint ptr %pm_suspended.i.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %pm_suspended.i.i.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i.i.i8 = icmp eq i8 %22, 0
  br i1 %tobool.not.i.i.i8, label %malidp_hw_disable_irq.exit.malidp_hw_read.exit.i.i13_crit_edge, label %do.end.i.i.i9, !prof !47

malidp_hw_disable_irq.exit.malidp_hw_read.exit.i.i13_crit_edge: ; preds = %malidp_hw_disable_irq.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_read.exit.i.i13

do.end.i.i.i9:                                    ; preds = %malidp_hw_disable_irq.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 261, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_read.exit.i.i13

malidp_hw_read.exit.i.i13:                        ; preds = %do.end.i.i.i9, %malidp_hw_disable_irq.exit.malidp_hw_read.exit.i.i13_crit_edge
  %23 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i.i11 = getelementptr i8, ptr %24, i32 %add.i
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i11) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %26 = ptrtoint ptr %pm_suspended.i.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %pm_suspended.i.i.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i5.i.i12 = icmp eq i8 %27, 0
  br i1 %tobool.not.i5.i.i12, label %malidp_hw_read.exit.i.i13.malidp_hw_disable_irq.exit18_crit_edge, label %do.end.i6.i.i14, !prof !47

malidp_hw_read.exit.i.i13.malidp_hw_disable_irq.exit18_crit_edge: ; preds = %malidp_hw_read.exit.i.i13
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_disable_irq.exit18

do.end.i6.i.i14:                                  ; preds = %malidp_hw_read.exit.i.i13
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 268, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_disable_irq.exit18

malidp_hw_disable_irq.exit18:                     ; preds = %do.end.i6.i.i14, %malidp_hw_read.exit.i.i13.malidp_hw_disable_irq.exit18_crit_edge
  %28 = tail call i32 @llvm.bswap.i32(i32 %25) #5
  %neg.i.i15 = xor i32 %18, -1
  %and.i.i16 = and i32 %28, %neg.i.i15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %29 = tail call i32 @llvm.bswap.i32(i32 %and.i.i16) #5
  %30 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i8.i.i17 = getelementptr i8, ptr %31, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i.i17, i32 %29) #5, !srcloc !51
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @malidp_se_irq_hw_init(ptr nocapture noundef readonly %hwdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwdev, align 4
  %se_base.i.i = getelementptr inbounds %struct.malidp_hw_regmap, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %se_base.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %se_base.i.i, align 2
  %retval.0.i.i = zext i16 %3 to i32
  %add.i = add nuw nsw i32 %retval.0.i.i, 8
  %pm_suspended.i.i.i = getelementptr inbounds %struct.malidp_hw_device, ptr %hwdev, i32 0, i32 9
  %4 = ptrtoint ptr %pm_suspended.i.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pm_suspended.i.i.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i.i.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i.i.i, label %entry.malidp_hw_read.exit.i.i_crit_edge, label %do.end.i.i.i, !prof !47

entry.malidp_hw_read.exit.i.i_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_read.exit.i.i

do.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 261, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_read.exit.i.i

malidp_hw_read.exit.i.i:                          ; preds = %do.end.i.i.i, %entry.malidp_hw_read.exit.i.i_crit_edge
  %regs.i.i.i = getelementptr inbounds %struct.malidp_hw_device, ptr %hwdev, i32 0, i32 1
  %6 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %7, i32 %add.i
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %9 = ptrtoint ptr %pm_suspended.i.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %pm_suspended.i.i.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i5.i.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i5.i.i, label %malidp_hw_read.exit.i.i.malidp_hw_disable_irq.exit_crit_edge, label %do.end.i6.i.i, !prof !47

malidp_hw_read.exit.i.i.malidp_hw_disable_irq.exit_crit_edge: ; preds = %malidp_hw_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_disable_irq.exit

do.end.i6.i.i:                                    ; preds = %malidp_hw_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 268, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_disable_irq.exit

malidp_hw_disable_irq.exit:                       ; preds = %do.end.i6.i.i, %malidp_hw_read.exit.i.i.malidp_hw_disable_irq.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %11 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i8.i.i = getelementptr i8, ptr %12, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i.i, i32 0) #5, !srcloc !51
  tail call fastcc void @malidp_hw_clear_irq(ptr noundef %hwdev, i8 noundef zeroext 1, i32 noundef -1)
  %13 = ptrtoint ptr %hwdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hwdev, align 4
  %se_irq_map = getelementptr inbounds %struct.malidp_hw_regmap, ptr %14, i32 0, i32 8
  %15 = ptrtoint ptr %se_irq_map to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %se_irq_map, align 4
  %se_base.i.i4 = getelementptr inbounds %struct.malidp_hw_regmap, ptr %14, i32 0, i32 1
  %17 = ptrtoint ptr %se_base.i.i4 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %se_base.i.i4, align 2
  %retval.0.i.i5 = zext i16 %18 to i32
  %add.i6 = add nuw nsw i32 %retval.0.i.i5, 8
  %19 = ptrtoint ptr %pm_suspended.i.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %pm_suspended.i.i.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i.i.i8 = icmp eq i8 %20, 0
  br i1 %tobool.not.i.i.i8, label %malidp_hw_disable_irq.exit.malidp_hw_read.exit.i.i13_crit_edge, label %do.end.i.i.i9, !prof !47

malidp_hw_disable_irq.exit.malidp_hw_read.exit.i.i13_crit_edge: ; preds = %malidp_hw_disable_irq.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_read.exit.i.i13

do.end.i.i.i9:                                    ; preds = %malidp_hw_disable_irq.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 261, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_read.exit.i.i13

malidp_hw_read.exit.i.i13:                        ; preds = %do.end.i.i.i9, %malidp_hw_disable_irq.exit.malidp_hw_read.exit.i.i13_crit_edge
  %21 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i.i11 = getelementptr i8, ptr %22, i32 %add.i6
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i11) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %24 = ptrtoint ptr %pm_suspended.i.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %pm_suspended.i.i.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i5.i.i12 = icmp eq i8 %25, 0
  br i1 %tobool.not.i5.i.i12, label %malidp_hw_read.exit.i.i13.malidp_hw_enable_irq.exit_crit_edge, label %do.end.i6.i.i14, !prof !47

malidp_hw_read.exit.i.i13.malidp_hw_enable_irq.exit_crit_edge: ; preds = %malidp_hw_read.exit.i.i13
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_enable_irq.exit

do.end.i6.i.i14:                                  ; preds = %malidp_hw_read.exit.i.i13
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 268, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_enable_irq.exit

malidp_hw_enable_irq.exit:                        ; preds = %do.end.i6.i.i14, %malidp_hw_read.exit.i.i13.malidp_hw_enable_irq.exit_crit_edge
  %26 = tail call i32 @llvm.bswap.i32(i32 %23) #5
  %or.i.i = or i32 %26, %16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %27 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #5
  %28 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i8.i.i15 = getelementptr i8, ptr %29, i32 %add.i6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i.i15, i32 %27) #5, !srcloc !51
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @malidp_se_irq_init(ptr noundef %drm, i32 noundef %irq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %se_base.i.i = getelementptr inbounds %struct.malidp_hw_regmap, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %se_base.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %se_base.i.i, align 2
  %retval.0.i.i = zext i16 %7 to i32
  %add.i = add nuw nsw i32 %retval.0.i.i, 8
  %pm_suspended.i.i.i = getelementptr inbounds %struct.malidp_hw_device, ptr %3, i32 0, i32 9
  %8 = ptrtoint ptr %pm_suspended.i.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %pm_suspended.i.i.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i.i.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i.i.i, label %entry.malidp_hw_read.exit.i.i_crit_edge, label %do.end.i.i.i, !prof !47

entry.malidp_hw_read.exit.i.i_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_read.exit.i.i

do.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 261, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_read.exit.i.i

malidp_hw_read.exit.i.i:                          ; preds = %do.end.i.i.i, %entry.malidp_hw_read.exit.i.i_crit_edge
  %regs.i.i.i = getelementptr inbounds %struct.malidp_hw_device, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %11, i32 %add.i
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %13 = ptrtoint ptr %pm_suspended.i.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %pm_suspended.i.i.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i5.i.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i5.i.i, label %malidp_hw_read.exit.i.i.malidp_hw_disable_irq.exit_crit_edge, label %do.end.i6.i.i, !prof !47

malidp_hw_read.exit.i.i.malidp_hw_disable_irq.exit_crit_edge: ; preds = %malidp_hw_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_disable_irq.exit

do.end.i6.i.i:                                    ; preds = %malidp_hw_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 268, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_disable_irq.exit

malidp_hw_disable_irq.exit:                       ; preds = %do.end.i6.i.i, %malidp_hw_read.exit.i.i.malidp_hw_disable_irq.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %15 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i8.i.i = getelementptr i8, ptr %16, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i.i, i32 0) #5, !srcloc !51
  tail call fastcc void @malidp_hw_clear_irq(ptr noundef %3, i8 noundef zeroext 1, i32 noundef -1)
  %dev1 = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 2
  %17 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev1, align 4
  %call = tail call i32 @devm_request_threaded_irq(ptr noundef %18, i32 noundef %irq, ptr noundef nonnull @malidp_se_irq, ptr noundef nonnull @malidp_se_irq_thread_handler, i32 noundef 128, ptr noundef nonnull @.str.2, ptr noundef %drm) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %malidp_hw_disable_irq.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #5
  br label %cleanup

if.end:                                           ; preds = %malidp_hw_disable_irq.exit
  call void @__sanitizer_cov_trace_pc() #7
  %mw_state = getelementptr inbounds %struct.malidp_hw_device, ptr %3, i32 0, i32 10
  %19 = ptrtoint ptr %mw_state to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %mw_state, align 1
  tail call void @malidp_se_irq_hw_init(ptr noundef %3)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @malidp_se_irq(i32 noundef %irq, ptr nocapture noundef readonly %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %arg, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %pm_suspended = getelementptr inbounds %struct.malidp_hw_device, ptr %3, i32 0, i32 9
  %6 = ptrtoint ptr %pm_suspended to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pm_suspended, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %malidp_hw_read.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

malidp_hw_read.exit:                              ; preds = %entry
  %se_irq_map = getelementptr inbounds %struct.malidp_hw_regmap, ptr %5, i32 0, i32 8
  %se_base = getelementptr inbounds %struct.malidp_hw_regmap, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %se_base to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %se_base, align 2
  %conv = zext i16 %9 to i32
  %regs.i = getelementptr inbounds %struct.malidp_hw_device, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 %conv
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !48
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %14 = ptrtoint ptr %se_irq_map to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %se_irq_map, align 4
  %err_mask = getelementptr inbounds %struct.malidp_hw_regmap, ptr %5, i32 0, i32 8, i32 2
  %16 = ptrtoint ptr %err_mask to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %err_mask, align 4
  %or = or i32 %17, %15
  %and = and i32 %or, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %malidp_hw_read.exit.cleanup_crit_edge, label %if.end5

malidp_hw_read.exit.cleanup_crit_edge:            ; preds = %malidp_hw_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %malidp_hw_read.exit
  %and7 = and i32 %17, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end5.if.end11_crit_edge, label %if.then9

if.end5.if.end11_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %se_errors = getelementptr inbounds %struct.malidp_drm, ptr %1, i32 0, i32 8
  %crtc = getelementptr inbounds %struct.malidp_drm, ptr %1, i32 0, i32 1
  %call10 = tail call i64 @drm_crtc_vblank_count(ptr noundef %crtc) #5
  tail call void @malidp_error(ptr noundef %1, ptr noundef %se_errors, i32 noundef %13, i64 noundef %call10) #5
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end5.if.end11_crit_edge
  %18 = ptrtoint ptr %se_base to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %se_base, align 2
  %conv14 = zext i16 %19 to i32
  %add15 = add nuw nsw i32 %conv14, 8
  %20 = ptrtoint ptr %pm_suspended to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %pm_suspended, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i79 = icmp eq i8 %21, 0
  br i1 %tobool.not.i79, label %if.end11.malidp_hw_read.exit83_crit_edge, label %do.end.i80, !prof !47

if.end11.malidp_hw_read.exit83_crit_edge:         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_read.exit83

do.end.i80:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 261, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_read.exit83

malidp_hw_read.exit83:                            ; preds = %do.end.i80, %if.end11.malidp_hw_read.exit83_crit_edge
  %22 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs.i, align 4
  %add.ptr.i82 = getelementptr i8, ptr %23, i32 %add15
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i82) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %25 = and i32 %24, %12
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %vsync_irq = getelementptr inbounds %struct.malidp_hw_regmap, ptr %5, i32 0, i32 8, i32 1
  %27 = ptrtoint ptr %vsync_irq to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %vsync_irq, align 4
  %and18 = and i32 %26, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %malidp_hw_read.exit83.if.end40_crit_edge, label %if.then20

malidp_hw_read.exit83.if.end40_crit_edge:         ; preds = %malidp_hw_read.exit83
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40

if.then20:                                        ; preds = %malidp_hw_read.exit83
  %mw_state = getelementptr inbounds %struct.malidp_hw_device, ptr %3, i32 0, i32 10
  %29 = ptrtoint ptr %mw_state to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %mw_state, align 1
  %31 = zext i8 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.19)
  switch i8 %30, label %if.then20.if.end40_crit_edge [
    i8 1, label %sw.bb
    i8 4, label %sw.bb22
    i8 3, label %sw.bb25
    i8 2, label %if.then20.sw.bb27_crit_edge
  ]

if.then20.sw.bb27_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb27

if.then20.if.end40_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40

sw.bb:                                            ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  %mw_connector = getelementptr inbounds %struct.malidp_drm, ptr %1, i32 0, i32 2
  tail call void @drm_writeback_signal_completion(ptr noundef %mw_connector, i32 noundef 0) #5
  br label %if.end40

sw.bb22:                                          ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  %mw_connector23 = getelementptr inbounds %struct.malidp_drm, ptr %1, i32 0, i32 2
  tail call void @drm_writeback_signal_completion(ptr noundef %mw_connector23, i32 noundef 0) #5
  %32 = ptrtoint ptr %mw_state to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %mw_state, align 1
  br label %if.end40

sw.bb25:                                          ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #7
  %mw_connector26 = getelementptr inbounds %struct.malidp_drm, ptr %1, i32 0, i32 2
  tail call void @drm_writeback_signal_completion(ptr noundef %mw_connector26, i32 noundef 0) #5
  br label %sw.bb27

sw.bb27:                                          ; preds = %sw.bb25, %if.then20.sw.bb27_crit_edge
  %disable_memwrite = getelementptr inbounds %struct.malidp_hw, ptr %5, i32 0, i32 11
  %33 = ptrtoint ptr %disable_memwrite to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %disable_memwrite, align 4
  tail call void %34(ptr noundef %3) #5
  %dc_base = getelementptr inbounds %struct.malidp_hw_regmap, ptr %5, i32 0, i32 2
  %35 = ptrtoint ptr %dc_base to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %dc_base, align 4
  %conv29 = zext i16 %36 to i32
  %37 = ptrtoint ptr %pm_suspended to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %pm_suspended, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i85 = icmp eq i8 %38, 0
  br i1 %tobool.not.i85, label %sw.bb27.malidp_hw_read.exit89_crit_edge, label %do.end.i86, !prof !47

sw.bb27.malidp_hw_read.exit89_crit_edge:          ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_read.exit89

do.end.i86:                                       ; preds = %sw.bb27
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 261, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_read.exit89

malidp_hw_read.exit89:                            ; preds = %do.end.i86, %sw.bb27.malidp_hw_read.exit89_crit_edge
  %39 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs.i, align 4
  %add.ptr.i88 = getelementptr i8, ptr %40, i32 %conv29
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i88) #5, !srcloc !48
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %config_valid = getelementptr inbounds %struct.malidp_drm, ptr %1, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %config_valid, i32 noundef 4) #5
  %43 = ptrtoint ptr %config_valid to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %config_valid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 208, i32 %44)
  %cmp.not = icmp eq i32 %44, 208
  br i1 %cmp.not, label %lor.lhs.false, label %malidp_hw_read.exit89.if.then38_crit_edge

malidp_hw_read.exit89.if.then38_crit_edge:        ; preds = %malidp_hw_read.exit89
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then38

lor.lhs.false:                                    ; preds = %malidp_hw_read.exit89
  %vsync_irq35 = getelementptr inbounds %struct.malidp_hw_regmap, ptr %5, i32 0, i32 9, i32 1
  %45 = ptrtoint ptr %vsync_irq35 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %vsync_irq35, align 4
  %and36 = and i32 %46, %42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %lor.lhs.false.if.end40_crit_edge, label %lor.lhs.false.if.then38_crit_edge

lor.lhs.false.if.then38_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then38

lor.lhs.false.if.end40_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40

if.then38:                                        ; preds = %lor.lhs.false.if.then38_crit_edge, %malidp_hw_read.exit89.if.then38_crit_edge
  %set_config_valid = getelementptr inbounds %struct.malidp_hw, ptr %5, i32 0, i32 5
  %47 = ptrtoint ptr %set_config_valid to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %set_config_valid, align 4
  tail call void %48(ptr noundef %3, i8 noundef zeroext 1) #5
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %lor.lhs.false.if.end40_crit_edge, %sw.bb22, %sw.bb, %if.then20.if.end40_crit_edge, %malidp_hw_read.exit83.if.end40_crit_edge
  %status.0 = phi i32 [ %26, %if.then20.if.end40_crit_edge ], [ %42, %if.then38 ], [ %42, %lor.lhs.false.if.end40_crit_edge ], [ %26, %sw.bb22 ], [ %26, %sw.bb ], [ %26, %malidp_hw_read.exit83.if.end40_crit_edge ]
  tail call fastcc void @malidp_hw_clear_irq(ptr noundef %3, i8 noundef zeroext 1, i32 noundef %status.0)
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %malidp_hw_read.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end40 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %malidp_hw_read.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @malidp_se_irq_thread_handler(i32 noundef %irq, ptr nocapture noundef readnone %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @malidp_se_irq_fini(ptr nocapture noundef readonly %hwdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hwdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hwdev, align 4
  %se_irq_map = getelementptr inbounds %struct.malidp_hw_regmap, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %se_irq_map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %se_irq_map, align 4
  %se_base.i.i = getelementptr inbounds %struct.malidp_hw_regmap, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %se_base.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %se_base.i.i, align 2
  %retval.0.i.i = zext i16 %5 to i32
  %add.i = add nuw nsw i32 %retval.0.i.i, 8
  %pm_suspended.i.i.i = getelementptr inbounds %struct.malidp_hw_device, ptr %hwdev, i32 0, i32 9
  %6 = ptrtoint ptr %pm_suspended.i.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pm_suspended.i.i.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i.i.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i.i.i, label %entry.malidp_hw_read.exit.i.i_crit_edge, label %do.end.i.i.i, !prof !47

entry.malidp_hw_read.exit.i.i_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_read.exit.i.i

do.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 261, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_read.exit.i.i

malidp_hw_read.exit.i.i:                          ; preds = %do.end.i.i.i, %entry.malidp_hw_read.exit.i.i_crit_edge
  %regs.i.i.i = getelementptr inbounds %struct.malidp_hw_device, ptr %hwdev, i32 0, i32 1
  %8 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 %add.i
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #5, !srcloc !48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %11 = ptrtoint ptr %pm_suspended.i.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %pm_suspended.i.i.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i5.i.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i5.i.i, label %malidp_hw_read.exit.i.i.malidp_hw_disable_irq.exit_crit_edge, label %do.end.i6.i.i, !prof !47

malidp_hw_read.exit.i.i.malidp_hw_disable_irq.exit_crit_edge: ; preds = %malidp_hw_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_disable_irq.exit

do.end.i6.i.i:                                    ; preds = %malidp_hw_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 268, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_disable_irq.exit

malidp_hw_disable_irq.exit:                       ; preds = %do.end.i6.i.i, %malidp_hw_read.exit.i.i.malidp_hw_disable_irq.exit_crit_edge
  %13 = tail call i32 @llvm.bswap.i32(i32 %10) #5
  %neg.i.i = xor i32 %3, -1
  %and.i.i = and i32 %13, %neg.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %14 = tail call i32 @llvm.bswap.i32(i32 %and.i.i) #5
  %15 = ptrtoint ptr %regs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i.i.i, align 4
  %add.ptr.i8.i.i = getelementptr i8, ptr %16, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i.i, i32 %14) #5, !srcloc !51
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @malidp500_se_write_pp_coefftab(ptr nocapture noundef readonly %hwdev, i32 noundef %direction, i8 noundef zeroext %coeffs_id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %pm_suspended.i = getelementptr inbounds %struct.malidp_hw_device, ptr %hwdev, i32 0, i32 9
  %0 = ptrtoint ptr %pm_suspended.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pm_suspended.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %entry.malidp_hw_write.exit_crit_edge, label %do.end.i, !prof !47

entry.malidp_hw_write.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_write.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 268, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_write.exit

malidp_hw_write.exit:                             ; preds = %do.end.i, %entry.malidp_hw_write.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %2 = tail call i32 @llvm.bswap.i32(i32 %direction) #5
  %regs.i = getelementptr inbounds %struct.malidp_hw_device, ptr %hwdev, i32 0, i32 1
  %3 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 3136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #5, !srcloc !51
  %idxprom = zext i8 %coeffs_id to i32
  %arrayidx3 = getelementptr [5 x [96 x i16]], ptr @dp500_se_scaling_coeffs, i32 0, i32 %idxprom, i32 0
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx3, align 2
  %7 = and i16 %6, 16383
  %and5 = zext i16 %7 to i32
  %8 = ptrtoint ptr %pm_suspended.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %pm_suspended.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i2 = icmp eq i8 %9, 0
  br i1 %tobool.not.i2, label %malidp_hw_write.exit.malidp_hw_write.exit6_crit_edge, label %do.end.i3, !prof !47

malidp_hw_write.exit.malidp_hw_write.exit6_crit_edge: ; preds = %malidp_hw_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_write.exit6

do.end.i3:                                        ; preds = %malidp_hw_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 268, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_write.exit6

malidp_hw_write.exit6:                            ; preds = %do.end.i3, %malidp_hw_write.exit.malidp_hw_write.exit6_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %10 = tail call i32 @llvm.bswap.i32(i32 %and5) #5
  %11 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i, align 4
  %add.ptr.i5 = getelementptr i8, ptr %12, i32 3140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5, i32 %10) #5, !srcloc !51
  %arrayidx3.1 = getelementptr [5 x [96 x i16]], ptr @dp500_se_scaling_coeffs, i32 0, i32 %idxprom, i32 1
  %13 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx3.1, align 2
  %15 = and i16 %14, 16383
  %and5.1 = zext i16 %15 to i32
  %16 = ptrtoint ptr %pm_suspended.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %pm_suspended.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i2.1 = icmp eq i8 %17, 0
  br i1 %tobool.not.i2.1, label %malidp_hw_write.exit6.malidp_hw_write.exit6.1_crit_edge, label %do.end.i3.1, !prof !47

malidp_hw_write.exit6.malidp_hw_write.exit6.1_crit_edge: ; preds = %malidp_hw_write.exit6
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_write.exit6.1

do.end.i3.1:                                      ; preds = %malidp_hw_write.exit6
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 268, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_write.exit6.1

malidp_hw_write.exit6.1:                          ; preds = %do.end.i3.1, %malidp_hw_write.exit6.malidp_hw_write.exit6.1_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %18 = tail call i32 @llvm.bswap.i32(i32 %and5.1) #5
  %19 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs.i, align 4
  %add.ptr.i5.1 = getelementptr i8, ptr %20, i32 3140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.1, i32 %18) #5, !srcloc !51
  %arrayidx3.2 = getelementptr [5 x [96 x i16]], ptr @dp500_se_scaling_coeffs, i32 0, i32 %idxprom, i32 2
  %21 = ptrtoint ptr %arrayidx3.2 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx3.2, align 2
  %23 = and i16 %22, 16383
  %and5.2 = zext i16 %23 to i32
  %24 = ptrtoint ptr %pm_suspended.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %pm_suspended.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i2.2 = icmp eq i8 %25, 0
  br i1 %tobool.not.i2.2, label %malidp_hw_write.exit6.1.malidp_hw_write.exit6.2_crit_edge, label %do.end.i3.2, !prof !47

malidp_hw_write.exit6.1.malidp_hw_write.exit6.2_crit_edge: ; preds = %malidp_hw_write.exit6.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_write.exit6.2

do.end.i3.2:                                      ; preds = %malidp_hw_write.exit6.1
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 268, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_write.exit6.2

malidp_hw_write.exit6.2:                          ; preds = %do.end.i3.2, %malidp_hw_write.exit6.1.malidp_hw_write.exit6.2_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %26 = tail call i32 @llvm.bswap.i32(i32 %and5.2) #5
  %27 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs.i, align 4
  %add.ptr.i5.2 = getelementptr i8, ptr %28, i32 3140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.2, i32 %26) #5, !srcloc !51
  %arrayidx3.3 = getelementptr [5 x [96 x i16]], ptr @dp500_se_scaling_coeffs, i32 0, i32 %idxprom, i32 3
  %29 = ptrtoint ptr %arrayidx3.3 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %arrayidx3.3, align 2
  %31 = and i16 %30, 16383
  %and5.3 = zext i16 %31 to i32
  %32 = ptrtoint ptr %pm_suspended.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %pm_suspended.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i2.3 = icmp eq i8 %33, 0
  br i1 %tobool.not.i2.3, label %malidp_hw_write.exit6.2.malidp_hw_write.exit6.3_crit_edge, label %do.end.i3.3, !prof !47

malidp_hw_write.exit6.2.malidp_hw_write.exit6.3_crit_edge: ; preds = %malidp_hw_write.exit6.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_write.exit6.3

do.end.i3.3:                                      ; preds = %malidp_hw_write.exit6.2
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 268, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_write.exit6.3

malidp_hw_write.exit6.3:                          ; preds = %do.end.i3.3, %malidp_hw_write.exit6.2.malidp_hw_write.exit6.3_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %34 = tail call i32 @llvm.bswap.i32(i32 %and5.3) #5
  %35 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs.i, align 4
  %add.ptr.i5.3 = getelementptr i8, ptr %36, i32 3140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.3, i32 %34) #5, !srcloc !51
  %arrayidx3.4 = getelementptr [5 x [96 x i16]], ptr @dp500_se_scaling_coeffs, i32 0, i32 %idxprom, i32 4
  %37 = ptrtoint ptr %arrayidx3.4 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %arrayidx3.4, align 2
  %39 = ptrtoint ptr %pm_suspended.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %pm_suspended.i, align 4, !range !46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.not.i2.4 = icmp eq i8 %40, 0
  br i1 %tobool.not.i2.4, label %malidp_hw_write.exit6.3.malidp_hw_write.exit6.4_crit_edge, label %do.end.i3.4, !prof !47

malidp_hw_write.exit6.3.malidp_hw_write.exit6.4_crit_edge: ; preds = %malidp_hw_write.exit6.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %malidp_hw_write.exit6.4

do.end.i3.4:                                      ; preds = %malidp_hw_write.exit6.3
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 268, i32 noundef 9, ptr noundef null) #5
  br label %malidp_hw_write.exit6.4

malidp_hw_write.exit6.4:                          ; preds = %do.end.i3.4, %malidp_hw_write.exit6.3.malidp_hw_write.exit6.4_crit_edge
  %41 = and i16 %38, 16383
  %and5.4 = zext i16 %41 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %42 = tail call i32 @llvm.bswap.i32(i32 %and5.4) #5
  %43 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs.i, align 4
  %add.ptr.i5.4 = getelementptr i8, ptr %44, i32 3140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.4, i32 %42) #5, !srcloc !51
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @malidpx50_get_bytes_per_column(i32 noundef %fmt) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %fmt to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %fmt, label %entry.cleanup_crit_edge [
    i32 808669761, label %entry.sw.epilog_crit_edge
    i32 808665665, label %entry.sw.epilog_crit_edge3
    i32 808665426, label %entry.sw.epilog_crit_edge4
    i32 808665410, label %entry.sw.epilog_crit_edge5
    i32 875713089, label %entry.sw.epilog_crit_edge6
    i32 875708993, label %entry.sw.epilog_crit_edge7
    i32 875708754, label %entry.sw.epilog_crit_edge8
    i32 875708738, label %entry.sw.epilog_crit_edge9
    i32 875713112, label %entry.sw.epilog_crit_edge10
    i32 875709016, label %entry.sw.epilog_crit_edge11
    i32 875714642, label %entry.sw.epilog_crit_edge12
    i32 875714626, label %entry.sw.epilog_crit_edge13
    i32 875710290, label %entry.sw.epilog_crit_edge14
    i32 875710274, label %entry.sw.epilog_crit_edge15
    i32 892420434, label %entry.sw.epilog_crit_edge16
    i32 892420673, label %entry.sw.epilog_crit_edge17
    i32 909199186, label %entry.sw.epilog_crit_edge18
    i32 909199170, label %entry.sw.epilog_crit_edge19
    i32 1498831189, label %entry.sw.epilog_crit_edge20
    i32 1448695129, label %entry.sw.epilog_crit_edge21
    i32 810299480, label %entry.sw.epilog_crit_edge22
    i32 842094158, label %entry.sw.bb1_crit_edge
    i32 842093913, label %entry.sw.bb1_crit_edge23
    i32 875713878, label %entry.sw.bb1_crit_edge24
    i32 942691673, label %entry.sw.bb1_crit_edge25
    i32 808530000, label %entry.sw.bb1_crit_edge26
    i32 808670550, label %entry.sw.bb2_crit_edge
    i32 808539481, label %entry.sw.bb2_crit_edge27
  ]

entry.sw.bb2_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb2

entry.sw.bb1_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1

entry.sw.bb1_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1

entry.sw.bb1_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1

entry.sw.bb1_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1

entry.sw.epilog_crit_edge22:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.sw.epilog_crit_edge21:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.sw.epilog_crit_edge20:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.sw.epilog_crit_edge19:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.sw.epilog_crit_edge18:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.sw.epilog_crit_edge17:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.sw.epilog_crit_edge16:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.sw.epilog_crit_edge15:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.sw.epilog_crit_edge14:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.sw.epilog_crit_edge13:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.sw.epilog_crit_edge12:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.sw.epilog_crit_edge11:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.sw.epilog_crit_edge10:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.sw.epilog_crit_edge9:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.sw.epilog_crit_edge8:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.sw.epilog_crit_edge7:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.sw.epilog_crit_edge6:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.sw.epilog_crit_edge5:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.sw.epilog_crit_edge4:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.sw.epilog_crit_edge3:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge23, %entry.sw.bb1_crit_edge24, %entry.sw.bb1_crit_edge25, %entry.sw.bb1_crit_edge26
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge27
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge3, %entry.sw.epilog_crit_edge4, %entry.sw.epilog_crit_edge5, %entry.sw.epilog_crit_edge6, %entry.sw.epilog_crit_edge7, %entry.sw.epilog_crit_edge8, %entry.sw.epilog_crit_edge9, %entry.sw.epilog_crit_edge10, %entry.sw.epilog_crit_edge11, %entry.sw.epilog_crit_edge12, %entry.sw.epilog_crit_edge13, %entry.sw.epilog_crit_edge14, %entry.sw.epilog_crit_edge15, %entry.sw.epilog_crit_edge16, %entry.sw.epilog_crit_edge17, %entry.sw.epilog_crit_edge18, %entry.sw.epilog_crit_edge19, %entry.sw.epilog_crit_edge20, %entry.sw.epilog_crit_edge21, %entry.sw.epilog_crit_edge22
  %bytes_per_column.0 = phi i32 [ 30, %sw.bb2 ], [ 24, %sw.bb1 ], [ 32, %entry.sw.epilog_crit_edge ], [ 32, %entry.sw.epilog_crit_edge3 ], [ 32, %entry.sw.epilog_crit_edge4 ], [ 32, %entry.sw.epilog_crit_edge5 ], [ 32, %entry.sw.epilog_crit_edge6 ], [ 32, %entry.sw.epilog_crit_edge7 ], [ 32, %entry.sw.epilog_crit_edge8 ], [ 32, %entry.sw.epilog_crit_edge9 ], [ 32, %entry.sw.epilog_crit_edge10 ], [ 32, %entry.sw.epilog_crit_edge11 ], [ 32, %entry.sw.epilog_crit_edge12 ], [ 32, %entry.sw.epilog_crit_edge13 ], [ 32, %entry.sw.epilog_crit_edge14 ], [ 32, %entry.sw.epilog_crit_edge15 ], [ 32, %entry.sw.epilog_crit_edge16 ], [ 32, %entry.sw.epilog_crit_edge17 ], [ 32, %entry.sw.epilog_crit_edge18 ], [ 32, %entry.sw.epilog_crit_edge19 ], [ 32, %entry.sw.epilog_crit_edge20 ], [ 32, %entry.sw.epilog_crit_edge21 ], [ 32, %entry.sw.epilog_crit_edge22 ]
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %bytes_per_column.0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_send_vblank_event(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_crtc_handle_vblank(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @malidp_error(ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @drm_crtc_vblank_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_writeback_signal_completion(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !21, !23, !25, !27, !29, !31, !33, !35}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @malidp_format_modifiers, !1, !"malidp_format_modifiers", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/arm/malidp_hw.c", i32 168, i32 11}
!2 = !{ptr @malidp_device, !3, !"malidp_device", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/arm/malidp_hw.c", i32 936, i32 24}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/arm/malidp_hw.c", i32 1267, i32 19}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/arm/malidp_hw.c", i32 1269, i32 3}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/arm/malidp_hw.c", i32 1376, i32 19}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/arm/malidp_hw.c", i32 1378, i32 3}
!12 = !{ptr @malidp500_layers, !13, !"malidp500_layers", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/arm/malidp_hw.c", i32 115, i32 34}
!14 = !{ptr @malidp500_de_formats, !15, !"malidp500_de_formats", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/arm/malidp_hw.c", i32 35, i32 38}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/arm/malidp_hw.h", i32 261, i32 2}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/arm/malidp_hw.c", i32 300, i32 2}
!20 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/arm/malidp_hw.c", i32 316, i32 2}
!23 = !{ptr @dp500_se_scaling_coeffs, !24, !"dp500_se_scaling_coeffs", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/arm/malidp_hw.c", i32 195, i32 18}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/arm/malidp_hw.c", i32 505, i32 3}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/arm/malidp_hw.c", i32 542, i32 3}
!29 = !{ptr @malidp550_layers, !30, !"malidp550_layers", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/arm/malidp_hw.c", i32 130, i32 34}
!31 = !{ptr @malidp550_de_formats, !32, !"malidp550_de_formats", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/arm/malidp_hw.c", i32 106, i32 38}
!33 = !{ptr @malidp650_layers, !34, !"malidp650_layers", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/arm/malidp_hw.c", i32 147, i32 34}
!35 = !{ptr @malidp650_de_formats, !36, !"malidp650_de_formats", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/arm/malidp_hw.c", i32 110, i32 38}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!46 = !{i8 0, i8 2}
!47 = !{!"branch_weights", i32 2000, i32 1}
!48 = !{i64 3114620}
!49 = !{i64 2156594849}
!50 = !{i64 2156595748}
!51 = !{i64 3114202}
!52 = !{!"branch_weights", i32 1, i32 1}
!53 = !{!"branch_weights", i32 1, i32 2000}
