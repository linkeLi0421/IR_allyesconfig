; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/ast/ast_main.c_pt.bc'
source_filename = "../drivers/gpu/drm/ast/ast_main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ast_private = type { %struct.drm_device, ptr, ptr, ptr, i32, i8, i32, i32, i32, %struct.drm_plane, %struct.ast_cursor_plane, %struct.drm_crtc, %struct.drm_encoder, %struct.ast_connector, i8, i32, i32, i8, ptr, ptr }
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
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.ast_cursor_plane = type { %struct.drm_plane, [2 x %struct.anon.91], i32 }
%struct.anon.91 = type { ptr, %struct.dma_buf_map, i64 }
%struct.dma_buf_map = type { %union.anon.80, i8 }
%union.anon.80 = type { ptr }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.87 }
%union.anon.87 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.89, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.89 = type { ptr }
%struct.drm_vram_mm = type { i64, i32, %struct.ttm_device }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.86] }
%struct.anon.86 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }

@ast_device_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 431, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"[drm] platform has no IO space, trying MMIO\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ast_device_create\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/gpu/drm/ast/ast_main.c\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ast_device_create._entry_ptr = internal global ptr @ast_device_create._entry, section ".printk_index", align 4
@ast_device_create._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 449, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"[drm] dram MCLK=%u Mhz type=%d bus_width=%d\0A\00", [51 x i8] zeroinitializer }, align 32
@ast_device_create._entry_ptr.7 = internal global ptr @ast_device_create._entry.5, section ".printk_index", align 4
@ast_device_create._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 463, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"[drm] failed to map reserved buffer!\0A\00", [58 x i8] zeroinitializer }, align 32
@ast_device_create._entry_ptr.10 = internal global ptr @ast_device_create._entry.8, section ".printk_index", align 4
@ast_detect_chip._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 139, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"[drm] VGA not enabled on entry, requesting chip POST\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ast_detect_chip\00", [16 x i8] zeroinitializer }, align 32
@ast_detect_chip._entry_ptr = internal global ptr @ast_detect_chip._entry, section ".printk_index", align 4
@ast_detect_chip._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.2, i32 155, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"[drm] AST 2600 detected\0A\00", [39 x i8] zeroinitializer }, align 32
@ast_detect_chip._entry_ptr.15 = internal global ptr @ast_detect_chip._entry.13, section ".printk_index", align 4
@ast_detect_chip._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.12, ptr @.str.2, i32 158, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"[drm] AST 2500 detected\0A\00", [39 x i8] zeroinitializer }, align 32
@ast_detect_chip._entry_ptr.18 = internal global ptr @ast_detect_chip._entry.16, section ".printk_index", align 4
@ast_detect_chip._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.12, ptr @.str.2, i32 161, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"[drm] AST 2400 detected\0A\00", [39 x i8] zeroinitializer }, align 32
@ast_detect_chip._entry_ptr.21 = internal global ptr @ast_detect_chip._entry.19, section ".printk_index", align 4
@ast_detect_chip._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.12, ptr @.str.2, i32 164, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"[drm] AST 2300 detected\0A\00", [39 x i8] zeroinitializer }, align 32
@ast_detect_chip._entry_ptr.24 = internal global ptr @ast_detect_chip._entry.22, section ".printk_index", align 4
@ast_detect_chip._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.12, ptr @.str.2, i32 169, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"[drm] AST 1100 detected\0A\00", [39 x i8] zeroinitializer }, align 32
@ast_detect_chip._entry_ptr.27 = internal global ptr @ast_detect_chip._entry.25, section ".printk_index", align 4
@ast_detect_chip._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.12, ptr @.str.2, i32 173, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"[drm] AST 2200 detected\0A\00", [39 x i8] zeroinitializer }, align 32
@ast_detect_chip._entry_ptr.30 = internal global ptr @ast_detect_chip._entry.28, section ".printk_index", align 4
@ast_detect_chip._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.12, ptr @.str.2, i32 177, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"[drm] AST 2150 detected\0A\00", [39 x i8] zeroinitializer }, align 32
@ast_detect_chip._entry_ptr.33 = internal global ptr @ast_detect_chip._entry.31, section ".printk_index", align 4
@ast_detect_chip._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.12, ptr @.str.2, i32 181, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"[drm] AST 2100 detected\0A\00", [39 x i8] zeroinitializer }, align 32
@ast_detect_chip._entry_ptr.36 = internal global ptr @ast_detect_chip._entry.34, section ".printk_index", align 4
@ast_detect_chip._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.12, ptr @.str.2, i32 187, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"[drm] AST 2000 detected\0A\00", [39 x i8] zeroinitializer }, align 32
@ast_detect_chip._entry_ptr.39 = internal global ptr @ast_detect_chip._entry.37, section ".printk_index", align 4
@ast_detect_chip._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.12, ptr @.str.2, i32 262, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"[drm] Using Sil164 TMDS transmitter\0A\00", [59 x i8] zeroinitializer }, align 32
@ast_detect_chip._entry_ptr.42 = internal global ptr @ast_detect_chip._entry.40, section ".printk_index", align 4
@ast_detect_chip._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.12, ptr @.str.2, i32 265, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"[drm] Using DP501 DisplayPort transmitter\0A\00", [53 x i8] zeroinitializer }, align 32
@ast_detect_chip._entry_ptr.45 = internal global ptr @ast_detect_chip._entry.43, section ".printk_index", align 4
@ast_detect_chip._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.12, ptr @.str.2, i32 268, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"[drm] Analog VGA only\0A\00", [41 x i8] zeroinitializer }, align 32
@ast_detect_chip._entry_ptr.48 = internal global ptr @ast_detect_chip._entry.46, section ".printk_index", align 4
@.str.49 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"aspeed,scu-revision-id\00", [41 x i8] zeroinitializer }, align 32
@ast_detect_config_mode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.2, i32 84, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"[drm] Using device-tree for configuration\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ast_detect_config_mode\00", [41 x i8] zeroinitializer }, align 32
@ast_detect_config_mode._entry_ptr = internal global ptr @ast_detect_config_mode._entry, section ".printk_index", align 4
@ast_detect_config_mode._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.51, ptr @.str.2, i32 111, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"[drm] Using P2A bridge for configuration\0A\00", [54 x i8] zeroinitializer }, align 32
@ast_detect_config_mode._entry_ptr.54 = internal global ptr @ast_detect_config_mode._entry.52, section ".printk_index", align 4
@ast_detect_config_mode._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.51, ptr @.str.2, i32 122, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"[drm] P2A bridge disabled, using default configuration\0A\00", [40 x i8] zeroinitializer }, align 32
@ast_detect_config_mode._entry_ptr.57 = internal global ptr @ast_detect_config_mode._entry.55, section ".printk_index", align 4
@.str.58 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"aspeed,mcr-configuration\00", [39 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"aspeed,mcr-scu-mpll\00", [44 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"aspeed,mcr-scu-strap\00", [43 x i8] zeroinitializer }, align 32
@switch.table.ast_device_create = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 2000, i32 2000, i32 4000], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.61 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 256, i64 512]
@__sancov_gen_cov_switch_values.62 = internal global [5 x i64] [i64 3, i64 32, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.63 = internal global [5 x i64] [i64 3, i64 8, i64 4, i64 8, i64 12]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.65 = internal global [5 x i64] [i64 3, i64 32, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.66 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.67 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.68 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 431, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 448, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 463, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 139, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 155, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 158, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 161, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 164, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 169, i32 4 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 173, i32 4 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 177, i32 4 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 181, i32 4 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 187, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 262, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 265, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 268, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 80, i32 38 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 84, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 111, i32 4 }
@___asan_gen_.198 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 122, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 286, i32 32 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 289, i32 32 }
@___asan_gen_.210 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.211 = private constant [34 x i8] c"../drivers/gpu/drm/ast/ast_main.c\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 292, i32 32 }
@___asan_gen_.213 = private unnamed_addr constant [31 x i8] c"switch.table.ast_device_create\00", align 1
@llvm.compiler.used = appending global [68 x ptr] [ptr @ast_detect_chip._entry, ptr @ast_detect_chip._entry.13, ptr @ast_detect_chip._entry.16, ptr @ast_detect_chip._entry.19, ptr @ast_detect_chip._entry.22, ptr @ast_detect_chip._entry.25, ptr @ast_detect_chip._entry.28, ptr @ast_detect_chip._entry.31, ptr @ast_detect_chip._entry.34, ptr @ast_detect_chip._entry.37, ptr @ast_detect_chip._entry.40, ptr @ast_detect_chip._entry.43, ptr @ast_detect_chip._entry.46, ptr @ast_detect_chip._entry_ptr, ptr @ast_detect_chip._entry_ptr.15, ptr @ast_detect_chip._entry_ptr.18, ptr @ast_detect_chip._entry_ptr.21, ptr @ast_detect_chip._entry_ptr.24, ptr @ast_detect_chip._entry_ptr.27, ptr @ast_detect_chip._entry_ptr.30, ptr @ast_detect_chip._entry_ptr.33, ptr @ast_detect_chip._entry_ptr.36, ptr @ast_detect_chip._entry_ptr.39, ptr @ast_detect_chip._entry_ptr.42, ptr @ast_detect_chip._entry_ptr.45, ptr @ast_detect_chip._entry_ptr.48, ptr @ast_detect_config_mode._entry, ptr @ast_detect_config_mode._entry.52, ptr @ast_detect_config_mode._entry.55, ptr @ast_detect_config_mode._entry_ptr, ptr @ast_detect_config_mode._entry_ptr.54, ptr @ast_detect_config_mode._entry_ptr.57, ptr @ast_device_create._entry, ptr @ast_device_create._entry.5, ptr @ast_device_create._entry.8, ptr @ast_device_create._entry_ptr, ptr @ast_device_create._entry_ptr.10, ptr @ast_device_create._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @switch.table.ast_device_create], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast_device_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast_device_create._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast_device_create._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast_detect_chip._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast_detect_chip._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast_detect_chip._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast_detect_chip._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast_detect_chip._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast_detect_chip._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast_detect_chip._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast_detect_chip._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast_detect_chip._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast_detect_chip._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast_detect_chip._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast_detect_chip._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast_detect_chip._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast_detect_config_mode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast_detect_config_mode._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ast_detect_config_mode._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ast_device_create to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ast_set_index_reg_mask(ptr nocapture noundef readonly %ast, i32 noundef %base, i8 noundef zeroext %index, i8 noundef zeroext %mask, i8 noundef zeroext %val) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ioregs.i = getelementptr inbounds %struct.ast_private, ptr %ast, i32 0, i32 2
  %0 = ptrtoint ptr %ioregs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioregs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 %base
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !99
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %index) #6, !srcloc !100
  %add = add i32 %base, 1
  %2 = ptrtoint ptr %ioregs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioregs.i, align 8
  %add.ptr.i12 = getelementptr i8, ptr %3, i32 %add
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i12) #6, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !102
  %and9 = and i8 %4, %mask
  %or10 = or i8 %and9, %val
  %conv1.i = zext i8 %or10 to i16
  %shl.i = shl nuw i16 %conv1.i, 8
  %conv2.i = zext i8 %index to i16
  %or.i = or i16 %shl.i, %conv2.i
  %5 = ptrtoint ptr %ioregs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ioregs.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 %base
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  tail call void @arm_heavy_mb() #6
  %7 = tail call i16 @llvm.bswap.i16(i16 %or.i) #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 %7) #6, !srcloc !104
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @ast_get_index_reg(ptr nocapture noundef readonly %ast, i32 noundef %base, i8 noundef zeroext %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ioregs.i = getelementptr inbounds %struct.ast_private, ptr %ast, i32 0, i32 2
  %0 = ptrtoint ptr %ioregs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioregs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 %base
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !99
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %index) #6, !srcloc !100
  %add = add i32 %base, 1
  %2 = ptrtoint ptr %ioregs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioregs.i, align 8
  %add.ptr.i4 = getelementptr i8, ptr %3, i32 %add
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i4) #6, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !102
  ret i8 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @ast_get_index_reg_mask(ptr nocapture noundef readonly %ast, i32 noundef %base, i8 noundef zeroext %index, i8 noundef zeroext %mask) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ioregs.i = getelementptr inbounds %struct.ast_private, ptr %ast, i32 0, i32 2
  %0 = ptrtoint ptr %ioregs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioregs.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 %base
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !99
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %index) #6, !srcloc !100
  %add = add i32 %base, 1
  %2 = ptrtoint ptr %ioregs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ioregs.i, align 8
  %add.ptr.i7 = getelementptr i8, ptr %3, i32 %add
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i7) #6, !srcloc !101
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !102
  %and5 = and i8 %4, %mask
  ret i8 %and5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ast_device_create(ptr noundef %drv, ptr noundef %pdev, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %mcr_cfg.i = alloca i32, align 4
  %mcr_scu_mpll.i = alloca i32, align 4
  %mcr_scu_strap.i = alloca i32, align 4
  %scu_rev.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %call = tail call ptr @__devm_drm_dev_alloc(ptr noundef %dev1, ptr noundef %drv, i32 noundef 5616, i32 noundef 0) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %driver_data.i.i, align 4
  %call3 = tail call ptr @pcim_iomap(ptr noundef %pdev, i32 noundef 1, i32 noundef 0) #6
  %regs = getelementptr inbounds %struct.ast_private, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call3, ptr %regs, align 4
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %flags8 = getelementptr %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 2, i32 3
  %2 = ptrtoint ptr %flags8 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags8, align 4
  %and = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  br i1 %tobool9.not, label %do.end, label %if.end7.if.end13_crit_edge

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %dev11 = getelementptr inbounds %struct.drm_device, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev11, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str) #9
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 896
  %ioregs = getelementptr inbounds %struct.ast_private, ptr %call, i32 0, i32 2
  %8 = ptrtoint ptr %ioregs to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %add.ptr, ptr %ioregs, align 8
  br label %if.end13

if.end13:                                         ; preds = %do.end, %if.end7.if.end13_crit_edge
  %ioregs14 = getelementptr inbounds %struct.ast_private, ptr %call, i32 0, i32 2
  %9 = ptrtoint ptr %ioregs14 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ioregs14, align 8
  %tobool15.not = icmp eq ptr %10, null
  br i1 %tobool15.not, label %if.then16, label %if.end13.if.end24_crit_edge

if.end13.if.end24_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then16:                                        ; preds = %if.end13
  %call17 = tail call ptr @pcim_iomap(ptr noundef %pdev, i32 noundef 2, i32 noundef 0) #6
  %11 = ptrtoint ptr %ioregs14 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call17, ptr %ioregs14, align 8
  %tobool20.not = icmp eq ptr %call17, null
  br i1 %tobool20.not, label %if.then16.cleanup_crit_edge, label %if.then16.if.end24_crit_edge

if.then16.if.end24_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end24:                                         ; preds = %if.then16.if.end24_crit_edge, %if.end13.if.end24_crit_edge
  %dev1.i = getelementptr inbounds %struct.drm_device, ptr %call, i32 0, i32 2
  %12 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %scu_rev.i) #6
  %call2.i = tail call zeroext i1 @ast_is_vga_enabled(ptr noundef %call) #6
  br i1 %call2.i, label %if.end24.if.end.i_crit_edge, label %if.then.i

if.end24.if.end.i_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ast_enable_vga(ptr noundef %call) #6
  %14 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev1.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %15, ptr noundef nonnull @.str.11) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end24.if.end.i_crit_edge
  %16 = ptrtoint ptr %ioregs14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ioregs14, align 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %17, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i.i, i16 -32600) #6, !srcloc !104
  tail call void @ast_enable_mmio(ptr noundef %call) #6
  %18 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev1.i, align 4
  %of_node.i.i = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 27
  %20 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %of_node.i.i, align 8
  %config_mode.i.i = getelementptr inbounds %struct.ast_private, ptr %call, i32 0, i32 15
  %22 = ptrtoint ptr %config_mode.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2, ptr %config_mode.i.i, align 4
  %23 = ptrtoint ptr %scu_rev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %scu_rev.i, align 4
  %tobool.not.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i, label %if.end.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.end.i.if.end.i.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %call.i.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %21, ptr noundef nonnull @.str.49, ptr noundef nonnull %scu_rev.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i.i)
  %tobool4.not.i.i = icmp sgt i32 %call.i.i.i.i, -1
  br i1 %tobool4.not.i.i, label %if.then.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %config_mode.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %config_mode.i.i, align 4
  %25 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev1.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %26, ptr noundef nonnull @.str.50) #9
  br label %ast_detect_config_mode.exit.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.end.i.if.end.i.i_crit_edge
  %device.i.i = getelementptr i8, ptr %19, i32 -102
  %27 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %device.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %28)
  %cmp.not.i.i = icmp eq i16 %28, 8192
  br i1 %cmp.not.i.i, label %if.end9.i.i, label %if.end.i.i.ast_detect_config_mode.exit.i_crit_edge

if.end.i.i.ast_detect_config_mode.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ast_detect_config_mode.exit.i

if.end9.i.i:                                      ; preds = %if.end.i.i
  %29 = ptrtoint ptr %ioregs14 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ioregs14, align 8
  %add.ptr.i.i.i2.i = getelementptr i8, ptr %30, i32 84
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !99
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i.i2.i, i8 -48) #6, !srcloc !100
  %31 = ptrtoint ptr %ioregs14 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ioregs14, align 8
  %add.ptr.i7.i.i.i = getelementptr i8, ptr %32, i32 85
  %33 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i7.i.i.i) #6, !srcloc !101
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !102
  %conv11.i.i = zext i8 %33 to i32
  %34 = ptrtoint ptr %ioregs14 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ioregs14, align 8
  %add.ptr.i.i74.i.i = getelementptr i8, ptr %35, i32 84
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !99
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i74.i.i, i8 -47) #6, !srcloc !100
  %36 = ptrtoint ptr %ioregs14 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ioregs14, align 8
  %add.ptr.i7.i75.i.i = getelementptr i8, ptr %37, i32 85
  %38 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i7.i75.i.i) #6, !srcloc !101
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !102
  %and.i.i = and i32 %conv11.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool14.not.i.i = icmp eq i32 %and.i.i, 0
  %39 = and i8 %38, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool16.not.i.i = icmp eq i8 %39, 0
  %or.cond.i.i = select i1 %tobool14.not.i.i, i1 true, i1 %tobool16.not.i.i
  br i1 %or.cond.i.i, label %if.then17.i.i, label %if.end9.i.i.do.end45.i.i_crit_edge

if.end9.i.i.do.end45.i.i_crit_edge:               ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end45.i.i

if.then17.i.i:                                    ; preds = %if.end9.i.i
  %revision.i.i = getelementptr i8, ptr %19, i32 -92
  %40 = ptrtoint ptr %revision.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %revision.i.i, align 4
  %42 = and i8 %41, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %42)
  %cmp20.i.i = icmp eq i8 %42, 64
  %and23.i.i = and i32 %conv11.i.i, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i.i)
  %cmp24.i.i = icmp eq i32 %and23.i.i, 0
  %or.cond72.i.i = select i1 %cmp20.i.i, i1 %cmp24.i.i, i1 false
  br i1 %or.cond72.i.i, label %if.then26.i.i, label %if.then17.i.i.if.end27.i.i_crit_edge

if.then17.i.i.if.end27.i.i_crit_edge:             ; preds = %if.then17.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27.i.i

if.then26.i.i:                                    ; preds = %if.then17.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @ast_patch_ahb_2500(ptr noundef %call) #6
  br label %if.end27.i.i

if.end27.i.i:                                     ; preds = %if.then26.i.i, %if.then17.i.i.if.end27.i.i_crit_edge
  %43 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %44, i32 61444
  %45 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #6, !srcloc !105
  %46 = call i32 @llvm.bswap.i32(i32 %45) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  %47 = zext i32 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values)
  switch i32 %46, label %if.then34.i.i [
    i32 -1, label %if.end27.i.i.do.end45.i.i_crit_edge
    i32 0, label %if.end27.i.i.do.end45.i.i_crit_edge139
  ]

if.end27.i.i.do.end45.i.i_crit_edge139:           ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end45.i.i

if.end27.i.i.do.end45.i.i_crit_edge:              ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end45.i.i

if.then34.i.i:                                    ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %48 = ptrtoint ptr %config_mode.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %config_mode.i.i, align 4
  %49 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev1.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %50, ptr noundef nonnull @.str.53) #9
  %51 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regs, align 4
  %add.ptr.i77.i.i = getelementptr i8, ptr %52, i32 61444
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !107
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i77.i.i, i32 28190) #6, !srcloc !108
  %53 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs, align 4
  %add.ptr.i79.i.i = getelementptr i8, ptr %54, i32 61440
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !107
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i79.i.i, i32 16777216) #6, !srcloc !108
  %55 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regs, align 4
  %add.ptr.i81.i.i = getelementptr i8, ptr %56, i32 73852
  %57 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i81.i.i) #6, !srcloc !105
  %58 = call i32 @llvm.bswap.i32(i32 %57) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  %59 = ptrtoint ptr %scu_rev.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %scu_rev.i, align 4
  br label %ast_detect_config_mode.exit.i

do.end45.i.i:                                     ; preds = %if.end27.i.i.do.end45.i.i_crit_edge, %if.end27.i.i.do.end45.i.i_crit_edge139, %if.end9.i.i.do.end45.i.i_crit_edge
  %60 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev1.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %61, ptr noundef nonnull @.str.56) #9
  br label %ast_detect_config_mode.exit.i

ast_detect_config_mode.exit.i:                    ; preds = %do.end45.i.i, %if.then34.i.i, %if.end.i.i.ast_detect_config_mode.exit.i_crit_edge, %if.then.i.i
  %revision.i = getelementptr i8, ptr %13, i32 -92
  %62 = ptrtoint ptr %revision.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %revision.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 79, i8 %63)
  %cmp.i122 = icmp ugt i8 %63, 79
  br i1 %cmp.i122, label %if.then5.i, label %if.else10.i

if.then5.i:                                       ; preds = %ast_detect_config_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %chip.i = getelementptr inbounds %struct.ast_private, ptr %call, i32 0, i32 4
  %64 = ptrtoint ptr %chip.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 8, ptr %chip.i, align 8
  %65 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev1.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %66, ptr noundef nonnull @.str.14) #9
  br label %if.end81.i

if.else10.i:                                      ; preds = %ast_detect_config_mode.exit.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %63)
  %cmp13.i = icmp ugt i8 %63, 63
  br i1 %cmp13.i, label %if.then15.i, label %if.else21.i

if.then15.i:                                      ; preds = %if.else10.i
  call void @__sanitizer_cov_trace_pc() #8
  %chip16.i = getelementptr inbounds %struct.ast_private, ptr %call, i32 0, i32 4
  %67 = ptrtoint ptr %chip16.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 7, ptr %chip16.i, align 8
  %68 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev1.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %69, ptr noundef nonnull @.str.17) #9
  br label %if.end81.i

if.else21.i:                                      ; preds = %if.else10.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %63)
  %cmp24.i = icmp ugt i8 %63, 47
  br i1 %cmp24.i, label %if.then26.i, label %if.else32.i

if.then26.i:                                      ; preds = %if.else21.i
  call void @__sanitizer_cov_trace_pc() #8
  %chip27.i = getelementptr inbounds %struct.ast_private, ptr %call, i32 0, i32 4
  %70 = ptrtoint ptr %chip27.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 6, ptr %chip27.i, align 8
  %71 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev1.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %72, ptr noundef nonnull @.str.20) #9
  br label %if.end81.i

if.else32.i:                                      ; preds = %if.else21.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %63)
  %cmp35.i = icmp ugt i8 %63, 31
  br i1 %cmp35.i, label %if.then37.i, label %if.else43.i

if.then37.i:                                      ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_pc() #8
  %chip38.i = getelementptr inbounds %struct.ast_private, ptr %call, i32 0, i32 4
  %73 = ptrtoint ptr %chip38.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 5, ptr %chip38.i, align 8
  %74 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev1.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %75, ptr noundef nonnull @.str.23) #9
  br label %if.end81.i

if.else43.i:                                      ; preds = %if.else32.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %63)
  %cmp46.i = icmp ugt i8 %63, 15
  br i1 %cmp46.i, label %if.then48.i, label %if.else71.i

if.then48.i:                                      ; preds = %if.else43.i
  %76 = ptrtoint ptr %scu_rev.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %scu_rev.i, align 4
  %and.i = and i32 %77, 768
  %78 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %78, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %and.i, label %sw.default.i [
    i32 512, label %if.then48.i.sw.epilog.i_crit_edge
    i32 256, label %sw.bb54.i
    i32 0, label %sw.bb60.i
  ]

if.then48.i.sw.epilog.i_crit_edge:                ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb54.i:                                        ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.bb60.i:                                        ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %sw.bb60.i, %sw.bb54.i, %if.then48.i.sw.epilog.i_crit_edge
  %.sink.i = phi i32 [ 1, %sw.default.i ], [ 4, %sw.bb60.i ], [ 3, %sw.bb54.i ], [ 2, %if.then48.i.sw.epilog.i_crit_edge ]
  %.str.35.sink.i = phi ptr [ @.str.35, %sw.default.i ], [ @.str.32, %sw.bb60.i ], [ @.str.29, %sw.bb54.i ], [ @.str.26, %if.then48.i.sw.epilog.i_crit_edge ]
  %chip66.i = getelementptr inbounds %struct.ast_private, ptr %call, i32 0, i32 4
  %79 = ptrtoint ptr %chip66.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %.sink.i, ptr %chip66.i, align 8
  %80 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev1.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %81, ptr noundef nonnull %.str.35.sink.i) #9
  %vga2_clone.i = getelementptr inbounds %struct.ast_private, ptr %call, i32 0, i32 5
  %82 = ptrtoint ptr %vga2_clone.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 0, ptr %vga2_clone.i, align 4
  br label %if.end81.i

if.else71.i:                                      ; preds = %if.else43.i
  call void @__sanitizer_cov_trace_pc() #8
  %chip72.i = getelementptr inbounds %struct.ast_private, ptr %call, i32 0, i32 4
  %83 = ptrtoint ptr %chip72.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %chip72.i, align 8
  %84 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev1.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %85, ptr noundef nonnull @.str.38) #9
  br label %if.end81.i

if.end81.i:                                       ; preds = %if.else71.i, %sw.epilog.i, %if.then37.i, %if.then26.i, %if.then15.i, %if.then5.i
  %chip82.i = getelementptr inbounds %struct.ast_private, ptr %call, i32 0, i32 4
  %86 = ptrtoint ptr %chip82.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %chip82.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %cond.i = icmp eq i32 %87, 0
  br i1 %cond.i, label %sw.bb83.i, label %sw.default84.i

sw.bb83.i:                                        ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #8
  %support_wide_screen.i = getelementptr inbounds %struct.ast_private, ptr %call, i32 0, i32 14
  %88 = ptrtoint ptr %support_wide_screen.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 0, ptr %support_wide_screen.i, align 8
  br label %sw.epilog127.i

sw.default84.i:                                   ; preds = %if.end81.i
  %89 = ptrtoint ptr %ioregs14 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ioregs14, align 8
  %add.ptr.i.i3.i = getelementptr i8, ptr %90, i32 84
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !99
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i3.i, i8 -48) #6, !srcloc !100
  %91 = ptrtoint ptr %ioregs14 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %ioregs14, align 8
  %add.ptr.i7.i.i = getelementptr i8, ptr %92, i32 85
  %93 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i7.i.i) #6, !srcloc !101
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !102
  %conv86.i = zext i8 %93 to i32
  %and87.i = and i32 %conv86.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87.i)
  %tobool.not.i = icmp eq i32 %and87.i, 0
  br i1 %tobool.not.i, label %if.then88.i, label %if.else90.i

if.then88.i:                                      ; preds = %sw.default84.i
  call void @__sanitizer_cov_trace_pc() #8
  %support_wide_screen89.i = getelementptr inbounds %struct.ast_private, ptr %call, i32 0, i32 14
  %94 = ptrtoint ptr %support_wide_screen89.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 1, ptr %support_wide_screen89.i, align 8
  br label %sw.epilog127.i

if.else90.i:                                      ; preds = %sw.default84.i
  %and91.i = and i32 %conv86.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91.i)
  %tobool92.not.i = icmp eq i32 %and91.i, 0
  %support_wide_screen96.i = getelementptr inbounds %struct.ast_private, ptr %call, i32 0, i32 14
  br i1 %tobool92.not.i, label %if.else95.i, label %if.then93.i

if.then93.i:                                      ; preds = %if.else90.i
  call void @__sanitizer_cov_trace_pc() #8
  %95 = ptrtoint ptr %support_wide_screen96.i to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 1, ptr %support_wide_screen96.i, align 8
  br label %sw.epilog127.i

if.else95.i:                                      ; preds = %if.else90.i
  %96 = ptrtoint ptr %support_wide_screen96.i to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 0, ptr %support_wide_screen96.i, align 8
  %97 = ptrtoint ptr %chip82.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %chip82.i, align 8
  %99 = zext i32 %98 to i64
  call void @__sanitizer_cov_trace_switch(i64 %99, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %98, label %if.else95.i.sw.epilog127.i_crit_edge [
    i32 5, label %land.lhs.true.i
    i32 6, label %land.lhs.true109.i
    i32 7, label %land.lhs.true119.i
  ]

if.else95.i.sw.epilog127.i_crit_edge:             ; preds = %if.else95.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog127.i

land.lhs.true.i:                                  ; preds = %if.else95.i
  %100 = ptrtoint ptr %scu_rev.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %scu_rev.i, align 4
  %and100.i = and i32 %101, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100.i)
  %cmp101.i = icmp eq i32 %and100.i, 0
  br i1 %cmp101.i, label %if.then103.i, label %land.lhs.true.i.sw.epilog127.i_crit_edge

land.lhs.true.i.sw.epilog127.i_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog127.i

if.then103.i:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %102 = ptrtoint ptr %support_wide_screen96.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 1, ptr %support_wide_screen96.i, align 8
  br label %sw.epilog127.i

land.lhs.true109.i:                               ; preds = %if.else95.i
  %103 = ptrtoint ptr %scu_rev.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %scu_rev.i, align 4
  %and110.i = and i32 %104, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %and110.i)
  %cmp111.i = icmp eq i32 %and110.i, 256
  br i1 %cmp111.i, label %if.then113.i, label %land.lhs.true109.i.sw.epilog127.i_crit_edge

land.lhs.true109.i.sw.epilog127.i_crit_edge:      ; preds = %land.lhs.true109.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog127.i

if.then113.i:                                     ; preds = %land.lhs.true109.i
  call void @__sanitizer_cov_trace_pc() #8
  %105 = ptrtoint ptr %support_wide_screen96.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 1, ptr %support_wide_screen96.i, align 8
  br label %sw.epilog127.i

land.lhs.true119.i:                               ; preds = %if.else95.i
  %106 = ptrtoint ptr %scu_rev.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %scu_rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %107)
  %cmp120.i = icmp eq i32 %107, 256
  br i1 %cmp120.i, label %if.then122.i, label %land.lhs.true119.i.sw.epilog127.i_crit_edge

land.lhs.true119.i.sw.epilog127.i_crit_edge:      ; preds = %land.lhs.true119.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog127.i

if.then122.i:                                     ; preds = %land.lhs.true119.i
  call void @__sanitizer_cov_trace_pc() #8
  %108 = ptrtoint ptr %support_wide_screen96.i to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 1, ptr %support_wide_screen96.i, align 8
  br label %sw.epilog127.i

sw.epilog127.i:                                   ; preds = %if.then122.i, %land.lhs.true119.i.sw.epilog127.i_crit_edge, %if.then113.i, %land.lhs.true109.i.sw.epilog127.i_crit_edge, %if.then103.i, %land.lhs.true.i.sw.epilog127.i_crit_edge, %if.else95.i.sw.epilog127.i_crit_edge, %if.then93.i, %if.then88.i, %sw.bb83.i
  %tx_chip_type.i = getelementptr inbounds %struct.ast_private, ptr %call, i32 0, i32 16
  %109 = ptrtoint ptr %tx_chip_type.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 0, ptr %tx_chip_type.i, align 8
  br i1 %call2.i, label %if.then129.i, label %sw.epilog127.i.if.end137.i_crit_edge

sw.epilog127.i.if.end137.i_crit_edge:             ; preds = %sw.epilog127.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end137.i

if.then129.i:                                     ; preds = %sw.epilog127.i
  %110 = ptrtoint ptr %ioregs14 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %ioregs14, align 8
  %add.ptr.i.i5.i = getelementptr i8, ptr %111, i32 84
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !99
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i5.i, i8 -93) #6, !srcloc !100
  %112 = ptrtoint ptr %ioregs14 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %ioregs14, align 8
  %add.ptr.i7.i6.i = getelementptr i8, ptr %113, i32 85
  %114 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i7.i6.i) #6, !srcloc !101
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !102
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %114)
  %tobool133.not.i = icmp sgt i8 %114, -1
  br i1 %tobool133.not.i, label %if.then129.i.if.end137.i_crit_edge, label %if.then134.i

if.then129.i.if.end137.i_crit_edge:               ; preds = %if.then129.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end137.i

if.then134.i:                                     ; preds = %if.then129.i
  call void @__sanitizer_cov_trace_pc() #8
  %115 = ptrtoint ptr %tx_chip_type.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 1, ptr %tx_chip_type.i, align 8
  br label %if.end137.i

if.end137.i:                                      ; preds = %if.then134.i, %if.then129.i.if.end137.i_crit_edge, %sw.epilog127.i.if.end137.i_crit_edge
  %116 = ptrtoint ptr %chip82.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %chip82.i, align 8
  %.off.i = add i32 %117, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %if.then144.i, label %if.end137.i.if.end164.i_crit_edge

if.end137.i.if.end164.i_crit_edge:                ; preds = %if.end137.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end164.i

if.then144.i:                                     ; preds = %if.end137.i
  %118 = ptrtoint ptr %ioregs14 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %ioregs14, align 8
  %add.ptr.i.i8.i = getelementptr i8, ptr %119, i32 84
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !99
  call void @arm_heavy_mb() #6
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i8.i, i8 -47) #6, !srcloc !100
  %120 = ptrtoint ptr %ioregs14 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %ioregs14, align 8
  %add.ptr.i7.i9.i = getelementptr i8, ptr %121, i32 85
  %122 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i7.i9.i) #6, !srcloc !101
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !102
  %123 = zext i8 %122 to i64
  call void @__sanitizer_cov_trace_switch(i64 %123, ptr @__sancov_gen_cov_switch_values.63)
  switch i8 %122, label %if.then144.i.if.end164.i_crit_edge [
    i8 4, label %if.end164.thread.i
    i8 8, label %sw.bb149.i
    i8 12, label %if.then144.i.if.end164.thread12.i_crit_edge
  ]

if.then144.i.if.end164.thread12.i_crit_edge:      ; preds = %if.then144.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end164.thread12.i

if.then144.i.if.end164.i_crit_edge:               ; preds = %if.then144.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end164.i

if.end164.thread.i:                               ; preds = %if.then144.i
  call void @__sanitizer_cov_trace_pc() #8
  %124 = ptrtoint ptr %tx_chip_type.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 1, ptr %tx_chip_type.i, align 8
  br label %ast_detect_chip.exit

sw.bb149.i:                                       ; preds = %if.then144.i
  %call.i.i = call noalias ptr @drmm_kmalloc(ptr noundef %call, i32 noundef 32768, i32 noundef 3520) #6
  %dp501_fw_addr.i = getelementptr inbounds %struct.ast_private, ptr %call, i32 0, i32 18
  %125 = ptrtoint ptr %dp501_fw_addr.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %call.i.i, ptr %dp501_fw_addr.i, align 8
  %tobool152.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool152.not.i, label %sw.bb149.i.if.end164.thread12.i_crit_edge, label %if.then153.i

sw.bb149.i.if.end164.thread12.i_crit_edge:        ; preds = %sw.bb149.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end164.thread12.i

if.then153.i:                                     ; preds = %sw.bb149.i
  %call155.i = call zeroext i1 @ast_backup_fw(ptr noundef %call, ptr noundef nonnull %call.i.i, i32 noundef 32768) #6
  br i1 %call155.i, label %if.then156.i, label %if.then153.i.if.end164.thread12.i_crit_edge

if.then153.i.if.end164.thread12.i_crit_edge:      ; preds = %if.then153.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end164.thread12.i

if.then156.i:                                     ; preds = %if.then153.i
  call void @__sanitizer_cov_trace_pc() #8
  %126 = ptrtoint ptr %dp501_fw_addr.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %dp501_fw_addr.i, align 8
  call void @drmm_kfree(ptr noundef %call, ptr noundef %127) #6
  %128 = ptrtoint ptr %dp501_fw_addr.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr null, ptr %dp501_fw_addr.i, align 8
  br label %if.end164.thread12.i

if.end164.thread12.i:                             ; preds = %if.then156.i, %if.then153.i.if.end164.thread12.i_crit_edge, %sw.bb149.i.if.end164.thread12.i_crit_edge, %if.then144.i.if.end164.thread12.i_crit_edge
  %129 = ptrtoint ptr %tx_chip_type.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 3, ptr %tx_chip_type.i, align 8
  br label %ast_detect_chip.exit

if.end164.i:                                      ; preds = %if.then144.i.if.end164.i_crit_edge, %if.end137.i.if.end164.i_crit_edge
  %130 = ptrtoint ptr %tx_chip_type.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %.pr.i = load i32, ptr %tx_chip_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr.i)
  %switch.selectcmp.i = icmp eq i32 %.pr.i, 3
  %switch.select.i = select i1 %switch.selectcmp.i, ptr @.str.44, ptr @.str.47
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr.i)
  %switch.selectcmp14.i = icmp eq i32 %.pr.i, 1
  %switch.select15.i = select i1 %switch.selectcmp14.i, ptr @.str.41, ptr %switch.select.i
  br label %ast_detect_chip.exit

ast_detect_chip.exit:                             ; preds = %if.end164.i, %if.end164.thread12.i, %if.end164.thread.i
  %.str.47.sink.i = phi ptr [ @.str.44, %if.end164.thread12.i ], [ @.str.41, %if.end164.thread.i ], [ %switch.select15.i, %if.end164.i ]
  %131 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %dev1.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %132, ptr noundef nonnull %.str.47.sink.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %scu_rev.i) #6
  %133 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %dev1.i, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %134, i32 0, i32 27
  %135 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mcr_cfg.i) #6
  %137 = ptrtoint ptr %mcr_cfg.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 -1, ptr %mcr_cfg.i, align 4, !annotation !109
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mcr_scu_mpll.i) #6
  %138 = ptrtoint ptr %mcr_scu_mpll.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 -1, ptr %mcr_scu_mpll.i, align 4, !annotation !109
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mcr_scu_strap.i) #6
  %139 = ptrtoint ptr %mcr_scu_strap.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 -1, ptr %mcr_scu_strap.i, align 4, !annotation !109
  %140 = ptrtoint ptr %config_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %config_mode.i.i, align 4
  %142 = zext i32 %141 to i64
  call void @__sanitizer_cov_trace_switch(i64 %142, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %141, label %sw.default.i130 [
    i32 1, label %sw.bb.i
    i32 0, label %sw.bb11.i
  ]

sw.bb.i:                                          ; preds = %ast_detect_chip.exit
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %136, ptr noundef nonnull @.str.58, ptr noundef nonnull %mcr_cfg.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i124 = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i124, label %sw.bb.i.if.end.i126_crit_edge, label %if.then.i125

sw.bb.i.if.end.i126_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i126

if.then.i125:                                     ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  %143 = ptrtoint ptr %mcr_cfg.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 1399, ptr %mcr_cfg.i, align 4
  br label %if.end.i126

if.end.i126:                                      ; preds = %if.then.i125, %sw.bb.i.if.end.i126_crit_edge
  %call.i.i1.i = call i32 @of_property_read_variable_u32_array(ptr noundef %136, ptr noundef nonnull @.str.59, ptr noundef nonnull %mcr_scu_mpll.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i1.i)
  %tobool4.not.i = icmp sgt i32 %call.i.i1.i, -1
  br i1 %tobool4.not.i, label %if.end.i126.if.end6.i_crit_edge, label %if.then5.i127

if.end.i126.if.end6.i_crit_edge:                  ; preds = %if.end.i126
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6.i

if.then5.i127:                                    ; preds = %if.end.i126
  call void @__sanitizer_cov_trace_pc() #8
  %144 = ptrtoint ptr %mcr_scu_mpll.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 20672, ptr %mcr_scu_mpll.i, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then5.i127, %if.end.i126.if.end6.i_crit_edge
  %call.i.i2.i = call i32 @of_property_read_variable_u32_array(ptr noundef %136, ptr noundef nonnull @.str.60, ptr noundef nonnull %mcr_scu_strap.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i2.i)
  %tobool8.not.i = icmp sgt i32 %call.i.i2.i, -1
  br i1 %tobool8.not.i, label %if.end6.i.sw.epilog.i132_crit_edge, label %if.then9.i

if.end6.i.sw.epilog.i132_crit_edge:               ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i132

if.then9.i:                                       ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  %145 = ptrtoint ptr %mcr_scu_strap.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 0, ptr %mcr_scu_strap.i, align 4
  br label %sw.epilog.i132

sw.bb11.i:                                        ; preds = %ast_detect_chip.exit
  call void @__sanitizer_cov_trace_pc() #8
  %146 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %regs, align 4
  %add.ptr.i.i = getelementptr i8, ptr %147, i32 61444
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !107
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 28190) #6, !srcloc !108
  %148 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %regs, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %149, i32 61440
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !107
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 16777216) #6, !srcloc !108
  %150 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %regs, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %151, i32 65540
  %152 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6.i) #6, !srcloc !105
  %153 = call i32 @llvm.bswap.i32(i32 %152) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  %154 = ptrtoint ptr %mcr_cfg.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %153, ptr %mcr_cfg.i, align 4
  %155 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %regs, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %156, i32 65824
  %157 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8.i) #6, !srcloc !105
  %158 = call i32 @llvm.bswap.i32(i32 %157) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  %159 = ptrtoint ptr %mcr_scu_mpll.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %158, ptr %mcr_scu_mpll.i, align 4
  %160 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %regs, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %161, i32 65904
  %162 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10.i) #6, !srcloc !105
  %163 = call i32 @llvm.bswap.i32(i32 %162) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  %164 = ptrtoint ptr %mcr_scu_strap.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %163, ptr %mcr_scu_strap.i, align 4
  br label %sw.epilog.i132

sw.default.i130:                                  ; preds = %ast_detect_chip.exit
  %dram_bus_width.i = getelementptr inbounds %struct.ast_private, ptr %call, i32 0, i32 6
  %165 = ptrtoint ptr %dram_bus_width.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 16, ptr %dram_bus_width.i, align 8
  %dram_type.i = getelementptr inbounds %struct.ast_private, ptr %call, i32 0, i32 7
  %166 = ptrtoint ptr %dram_type.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 1, ptr %dram_type.i, align 4
  %167 = ptrtoint ptr %chip82.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %chip82.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %168)
  %cmp.i129 = icmp eq i32 %168, 7
  %mclk.i = getelementptr inbounds %struct.ast_private, ptr %call, i32 0, i32 8
  br i1 %cmp.i129, label %if.then16.i, label %if.else.i

if.then16.i:                                      ; preds = %sw.default.i130
  call void @__sanitizer_cov_trace_pc() #8
  %169 = ptrtoint ptr %mclk.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 800, ptr %mclk.i, align 8
  br label %ast_get_dram_info.exit

if.else.i:                                        ; preds = %sw.default.i130
  call void @__sanitizer_cov_trace_pc() #8
  %170 = ptrtoint ptr %mclk.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 396, ptr %mclk.i, align 8
  br label %ast_get_dram_info.exit

sw.epilog.i132:                                   ; preds = %sw.bb11.i, %if.then9.i, %if.end6.i.sw.epilog.i132_crit_edge
  %171 = ptrtoint ptr %mcr_cfg.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %mcr_cfg.i, align 4
  %and.i131 = and i32 %172, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i131)
  %tobool19.not.i = icmp eq i32 %and.i131, 0
  %spec.select.i = select i1 %tobool19.not.i, i32 32, i32 16
  %173 = getelementptr inbounds %struct.ast_private, ptr %call, i32 0, i32 6
  %174 = ptrtoint ptr %173 to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %spec.select.i, ptr %173, align 8
  %175 = ptrtoint ptr %chip82.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %chip82.i, align 8
  %177 = zext i32 %176 to i64
  call void @__sanitizer_cov_trace_switch(i64 %177, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %176, label %if.else56.i [
    i32 7, label %if.then27.i
    i32 5, label %sw.epilog.i132.if.then44.i_crit_edge
    i32 6, label %sw.epilog.i132.if.then44.i_crit_edge140
  ]

sw.epilog.i132.if.then44.i_crit_edge140:          ; preds = %sw.epilog.i132
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then44.i

sw.epilog.i132.if.then44.i_crit_edge:             ; preds = %sw.epilog.i132
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then44.i

if.then27.i:                                      ; preds = %sw.epilog.i132
  %and28.i = and i32 %172, 3
  %178 = zext i32 %and28.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %178, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %and28.i, label %if.then27.unreachabledefault.i [
    i32 0, label %sw.bb29.i
    i32 1, label %sw.bb32.i
    i32 2, label %sw.bb34.i
    i32 3, label %sw.bb36.i
  ]

sw.bb29.i:                                        ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #8
  %dram_type30.i = getelementptr inbounds %struct.ast_private, ptr %call, i32 0, i32 7
  %179 = ptrtoint ptr %dram_type30.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 1, ptr %dram_type30.i, align 4
  br label %if.end72.i

if.then27.unreachabledefault.i:                   ; preds = %if.then27.i
  unreachable

sw.bb32.i:                                        ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #8
  %dram_type33.i = getelementptr inbounds %struct.ast_private, ptr %call, i32 0, i32 7
  %180 = ptrtoint ptr %dram_type33.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 6, ptr %dram_type33.i, align 4
  br label %if.end72.i

sw.bb34.i:                                        ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #8
  %dram_type35.i = getelementptr inbounds %struct.ast_private, ptr %call, i32 0, i32 7
  %181 = ptrtoint ptr %dram_type35.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 7, ptr %dram_type35.i, align 4
  br label %if.end72.i

sw.bb36.i:                                        ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #8
  %dram_type37.i = getelementptr inbounds %struct.ast_private, ptr %call, i32 0, i32 7
  %182 = ptrtoint ptr %dram_type37.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 8, ptr %dram_type37.i, align 4
  br label %if.end72.i

if.then44.i:                                      ; preds = %sw.epilog.i132.if.then44.i_crit_edge, %sw.epilog.i132.if.then44.i_crit_edge140
  %and45.i = and i32 %172, 3
  %183 = zext i32 %and45.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %183, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %and45.i, label %if.then44.unreachabledefault.i [
    i32 0, label %sw.bb46.i
    i32 1, label %sw.bb49.i
    i32 2, label %sw.bb51.i
    i32 3, label %sw.bb53.i
  ]

sw.bb46.i:                                        ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #8
  %dram_type47.i = getelementptr inbounds %struct.ast_private, ptr %call, i32 0, i32 7
  %184 = ptrtoint ptr %dram_type47.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 0, ptr %dram_type47.i, align 4
  br label %if.end72.i

if.then44.unreachabledefault.i:                   ; preds = %if.then44.i
  unreachable

sw.bb49.i:                                        ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #8
  %dram_type50.i = getelementptr inbounds %struct.ast_private, ptr %call, i32 0, i32 7
  %185 = ptrtoint ptr %dram_type50.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 1, ptr %dram_type50.i, align 4
  br label %if.end72.i

sw.bb51.i:                                        ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #8
  %dram_type52.i = getelementptr inbounds %struct.ast_private, ptr %call, i32 0, i32 7
  %186 = ptrtoint ptr %dram_type52.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 6, ptr %dram_type52.i, align 4
  br label %if.end72.i

sw.bb53.i:                                        ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #8
  %dram_type54.i = getelementptr inbounds %struct.ast_private, ptr %call, i32 0, i32 7
  %187 = ptrtoint ptr %dram_type54.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 7, ptr %dram_type54.i, align 4
  br label %if.end72.i

if.else56.i:                                      ; preds = %sw.epilog.i132
  %and57.i = lshr i32 %172, 2
  %188 = and i32 %and57.i, 3
  %189 = zext i32 %188 to i64
  call void @__sanitizer_cov_trace_switch(i64 %189, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %188, label %if.else56.unreachabledefault.i [
    i32 0, label %if.else56.i.sw.bb58.i_crit_edge
    i32 1, label %if.else56.i.sw.bb58.i_crit_edge141
    i32 2, label %sw.bb60.i133
    i32 3, label %sw.bb68.i
  ]

if.else56.i.sw.bb58.i_crit_edge141:               ; preds = %if.else56.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb58.i

if.else56.i.sw.bb58.i_crit_edge:                  ; preds = %if.else56.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb58.i

sw.bb58.i:                                        ; preds = %if.else56.i.sw.bb58.i_crit_edge, %if.else56.i.sw.bb58.i_crit_edge141
  %dram_type59.i = getelementptr inbounds %struct.ast_private, ptr %call, i32 0, i32 7
  %190 = ptrtoint ptr %dram_type59.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 0, ptr %dram_type59.i, align 4
  br label %if.end72.i

sw.bb60.i133:                                     ; preds = %if.else56.i
  %dram_type66.i = getelementptr inbounds %struct.ast_private, ptr %call, i32 0, i32 7
  br i1 %tobool19.not.i, label %if.else65.i, label %if.then63.i

if.then63.i:                                      ; preds = %sw.bb60.i133
  call void @__sanitizer_cov_trace_pc() #8
  %191 = ptrtoint ptr %dram_type66.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 1, ptr %dram_type66.i, align 4
  br label %if.end72.i

if.else65.i:                                      ; preds = %sw.bb60.i133
  call void @__sanitizer_cov_trace_pc() #8
  %192 = ptrtoint ptr %dram_type66.i to i32
  call void @__asan_store4_noabort(i32 %192)
  store i32 2, ptr %dram_type66.i, align 4
  br label %if.end72.i

sw.bb68.i:                                        ; preds = %if.else56.i
  call void @__sanitizer_cov_trace_pc() #8
  %dram_type69.i = getelementptr inbounds %struct.ast_private, ptr %call, i32 0, i32 7
  %193 = ptrtoint ptr %dram_type69.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store i32 3, ptr %dram_type69.i, align 4
  br label %if.end72.i

if.else56.unreachabledefault.i:                   ; preds = %if.else56.i
  unreachable

if.end72.i:                                       ; preds = %sw.bb68.i, %if.else65.i, %if.then63.i, %sw.bb58.i, %sw.bb53.i, %sw.bb51.i, %sw.bb49.i, %sw.bb46.i, %sw.bb36.i, %sw.bb34.i, %sw.bb32.i, %sw.bb29.i
  %194 = ptrtoint ptr %mcr_scu_strap.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %mcr_scu_strap.i, align 4
  %and73.i = and i32 %195, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73.i)
  %tobool74.not.i = icmp eq i32 %and73.i, 0
  %..i = select i1 %tobool74.not.i, i32 12000, i32 14318
  %196 = ptrtoint ptr %mcr_scu_mpll.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %mcr_scu_mpll.i, align 4
  %and78.i = and i32 %197, 31
  %and79.i = lshr i32 %197, 5
  %shr.i = and i32 %and79.i, 511
  %and80.i = lshr i32 %197, 14
  %shr81.i = and i32 %and80.i, 3
  %switch.tableidx = add nsw i32 %shr81.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %198 = icmp ult i32 %switch.tableidx, 3
  br i1 %198, label %switch.lookup, label %if.end72.i.sw.epilog85.i_crit_edge

if.end72.i.sw.epilog85.i_crit_edge:               ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog85.i

switch.lookup:                                    ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.ast_device_create, i32 0, i32 %switch.tableidx
  %199 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %199)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog85.i

sw.epilog85.i:                                    ; preds = %switch.lookup, %if.end72.i.sw.epilog85.i_crit_edge
  %div.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 1000, %if.end72.i.sw.epilog85.i_crit_edge ]
  %add.i = add nuw nsw i32 %shr.i, 2
  %mul.i = mul nuw nsw i32 %add.i, %..i
  %add86.i = add nuw nsw i32 %and78.i, 2
  %mul88.i = mul nuw nsw i32 %div.0.i, %add86.i
  %div89.i = udiv i32 %mul.i, %mul88.i
  %mclk90.i = getelementptr inbounds %struct.ast_private, ptr %call, i32 0, i32 8
  %200 = ptrtoint ptr %mclk90.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 %div89.i, ptr %mclk90.i, align 8
  br label %ast_get_dram_info.exit

ast_get_dram_info.exit:                           ; preds = %sw.epilog85.i, %if.else.i, %if.then16.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mcr_scu_strap.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mcr_scu_mpll.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mcr_cfg.i) #6
  %201 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %dev1.i, align 4
  %mclk = getelementptr inbounds %struct.ast_private, ptr %call, i32 0, i32 8
  %203 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %mclk, align 8
  %dram_type = getelementptr inbounds %struct.ast_private, ptr %call, i32 0, i32 7
  %205 = ptrtoint ptr %dram_type to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %dram_type, align 4
  %dram_bus_width = getelementptr inbounds %struct.ast_private, ptr %call, i32 0, i32 6
  %207 = ptrtoint ptr %dram_bus_width to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %dram_bus_width, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %202, ptr noundef nonnull @.str.6, i32 noundef %204, i32 noundef %206, i32 noundef %208) #9
  br i1 %call2.i, label %ast_get_dram_info.exit.if.end37_crit_edge, label %if.then36

ast_get_dram_info.exit.if.end37_crit_edge:        ; preds = %ast_get_dram_info.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.then36:                                        ; preds = %ast_get_dram_info.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void @ast_post_gpu(ptr noundef %call) #6
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %ast_get_dram_info.exit.if.end37_crit_edge
  %call38 = call i32 @ast_mm_init(ptr noundef %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end42, label %if.then40

if.then40:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  %209 = inttoptr i32 %call38 to ptr
  br label %cleanup

if.end42:                                         ; preds = %if.end37
  %dp501_fw_buf = getelementptr inbounds %struct.ast_private, ptr %call, i32 0, i32 3
  %210 = ptrtoint ptr %dp501_fw_buf to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr null, ptr %dp501_fw_buf, align 4
  %vram_mm = getelementptr inbounds %struct.drm_device, ptr %call, i32 0, i32 34
  %211 = ptrtoint ptr %vram_mm to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %vram_mm, align 4
  %vram_size = getelementptr inbounds %struct.drm_vram_mm, ptr %212, i32 0, i32 1
  %213 = ptrtoint ptr %vram_size to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %vram_size, align 8
  %end = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %215 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %216)
  %cmp = icmp eq i32 %216, 0
  br i1 %cmp, label %if.end42.if.end64_crit_edge, label %cond.end

if.end42.if.end64_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

cond.end:                                         ; preds = %if.end42
  %217 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %resource, align 8
  %sub = add i32 %216, 1
  %add = sub i32 %sub, %218
  call void @__sanitizer_cov_trace_cmp4(i32 %214, i32 %add)
  %cmp50 = icmp ult i32 %214, %add
  br i1 %cmp50, label %if.then51, label %cond.end.if.end64_crit_edge

cond.end.if.end64_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

if.then51:                                        ; preds = %cond.end
  %call54 = call ptr @pci_iomap_range(ptr noundef %pdev, i32 noundef 0, i32 noundef %214, i32 noundef 0) #6
  %219 = ptrtoint ptr %dp501_fw_buf to i32
  call void @__asan_store4_noabort(i32 %219)
  store ptr %call54, ptr %dp501_fw_buf, align 4
  %tobool57.not = icmp eq ptr %call54, null
  br i1 %tobool57.not, label %do.end61, label %if.then51.if.end64_crit_edge

if.then51.if.end64_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

do.end61:                                         ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #8
  %220 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %dev1.i, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %221, ptr noundef nonnull @.str.9) #9
  br label %if.end64

if.end64:                                         ; preds = %do.end61, %if.then51.if.end64_crit_edge, %cond.end.if.end64_crit_edge, %if.end42.if.end64_crit_edge
  %call65 = call i32 @ast_mode_config_init(ptr noundef %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end69, label %if.then67

if.then67:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  %222 = inttoptr i32 %call65 to ptr
  br label %cleanup

if.end69:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  %223 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %dev1.i, align 4
  %call71 = call fastcc i32 @devm_add_action_or_reset(ptr noundef %224, ptr noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  %225 = inttoptr i32 %call71 to ptr
  %spec.select = select i1 %tobool72.not, ptr %call, ptr %225
  br label %cleanup

cleanup:                                          ; preds = %if.end69, %if.then67, %if.then40, %if.then16.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %209, %if.then40 ], [ %222, %if.then67 ], [ %call, %entry.cleanup_crit_edge ], [ inttoptr (i32 -5 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -5 to ptr), %if.then16.cleanup_crit_edge ], [ %spec.select, %if.end69 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_drm_dev_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcim_iomap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ast_post_gpu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ast_mm_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_iomap_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ast_mode_config_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @devm_add_action_or_reset(ptr noundef %dev, ptr noundef %data) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @ast_device_release, ptr noundef %data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ioregs.i.i.i = getelementptr inbounds %struct.ast_private, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %ioregs.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioregs.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i, i16 -24316) #6, !srcloc !104
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ast_device_release(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ioregs.i.i = getelementptr inbounds %struct.ast_private, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %ioregs.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ioregs.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 -24316) #6, !srcloc !104
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ast_is_vga_enabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ast_enable_vga(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ast_enable_mmio(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ast_backup_fw(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drmm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ast_patch_ahb_2500(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @drmm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !73, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !88}
!llvm.module.flags = !{!90, !91, !92, !93, !94, !95, !96, !97}
!llvm.ident = !{!98}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/ast/ast_main.c", i32 431, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @ast_device_create._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @ast_device_create._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/ast/ast_main.c", i32 448, i32 2}
!10 = !{ptr @ast_device_create._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @ast_device_create._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/ast/ast_main.c", i32 463, i32 4}
!14 = !{ptr @ast_device_create._entry.8, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @ast_device_create._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/ast/ast_main.c", i32 139, i32 3}
!18 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @ast_detect_chip._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @ast_detect_chip._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.14, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/ast/ast_main.c", i32 155, i32 3}
!23 = !{ptr @ast_detect_chip._entry.13, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @ast_detect_chip._entry_ptr.15, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.17, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/ast/ast_main.c", i32 158, i32 3}
!27 = !{ptr @ast_detect_chip._entry.16, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @ast_detect_chip._entry_ptr.18, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.20, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/ast/ast_main.c", i32 161, i32 3}
!31 = !{ptr @ast_detect_chip._entry.19, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @ast_detect_chip._entry_ptr.21, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.23, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/ast/ast_main.c", i32 164, i32 3}
!35 = !{ptr @ast_detect_chip._entry.22, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @ast_detect_chip._entry_ptr.24, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.26, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/ast/ast_main.c", i32 169, i32 4}
!39 = !{ptr @ast_detect_chip._entry.25, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @ast_detect_chip._entry_ptr.27, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.29, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/ast/ast_main.c", i32 173, i32 4}
!43 = !{ptr @ast_detect_chip._entry.28, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @ast_detect_chip._entry_ptr.30, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.32, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/ast/ast_main.c", i32 177, i32 4}
!47 = !{ptr @ast_detect_chip._entry.31, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @ast_detect_chip._entry_ptr.33, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.35, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/ast/ast_main.c", i32 181, i32 4}
!51 = !{ptr @ast_detect_chip._entry.34, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @ast_detect_chip._entry_ptr.36, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.38, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/ast/ast_main.c", i32 187, i32 3}
!55 = !{ptr @ast_detect_chip._entry.37, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @ast_detect_chip._entry_ptr.39, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.41, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/ast/ast_main.c", i32 262, i32 3}
!59 = !{ptr @ast_detect_chip._entry.40, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @ast_detect_chip._entry_ptr.42, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.44, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/ast/ast_main.c", i32 265, i32 3}
!63 = !{ptr @ast_detect_chip._entry.43, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @ast_detect_chip._entry_ptr.45, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.47, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/ast/ast_main.c", i32 268, i32 3}
!67 = !{ptr @ast_detect_chip._entry.46, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @ast_detect_chip._entry_ptr.48, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.49, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/ast/ast_main.c", i32 80, i32 38}
!71 = !{ptr @.str.50, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/ast/ast_main.c", i32 84, i32 3}
!73 = !{ptr @.str.51, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @ast_detect_config_mode._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @ast_detect_config_mode._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.53, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/ast/ast_main.c", i32 111, i32 4}
!78 = !{ptr @ast_detect_config_mode._entry.52, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @ast_detect_config_mode._entry_ptr.54, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.56, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/ast/ast_main.c", i32 122, i32 2}
!82 = !{ptr @ast_detect_config_mode._entry.55, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @ast_detect_config_mode._entry_ptr.57, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.58, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/ast/ast_main.c", i32 286, i32 32}
!86 = !{ptr @.str.59, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/ast/ast_main.c", i32 289, i32 32}
!88 = !{ptr @.str.60, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/ast/ast_main.c", i32 292, i32 32}
!90 = !{i32 1, !"wchar_size", i32 2}
!91 = !{i32 1, !"min_enum_size", i32 4}
!92 = !{i32 8, !"branch-target-enforcement", i32 0}
!93 = !{i32 8, !"sign-return-address", i32 0}
!94 = !{i32 8, !"sign-return-address-all", i32 0}
!95 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!96 = !{i32 7, !"uwtable", i32 1}
!97 = !{i32 7, !"frame-pointer", i32 2}
!98 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!99 = !{i64 2152531346}
!100 = !{i64 4990001}
!101 = !{i64 4990396}
!102 = !{i64 2152529741}
!103 = !{i64 2152531770}
!104 = !{i64 4989578}
!105 = !{i64 4990616}
!106 = !{i64 2152530965}
!107 = !{i64 2152532320}
!108 = !{i64 4990198}
!109 = !{!"auto-init"}
