; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/tve200/tve200_display.c_pt.bc'
source_filename = "../drivers/gpu/drm/tve200/tve200_display.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_simple_display_pipe_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tve200_drm_dev_private = type { ptr, ptr, ptr, ptr, %struct.drm_simple_display_pipe, ptr, ptr, ptr }
%struct.drm_simple_display_pipe = type { %struct.drm_crtc, %struct.drm_plane, %struct.drm_encoder, ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
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
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.86, ptr, i32, ptr, i8, i32 }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.86 = type { i32, ptr }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.88 }
%union.anon.88 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.83, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.83 = type { [4 x i8] }

@tve200_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 62, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"stray IRQ %08x\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tve200_irq\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/gpu/drm/tve200/tve200_display.c\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tve200_irq._entry_ptr = internal global ptr @tve200_irq._entry, section ".printk_index", align 4
@tve200_display_init.formats = internal constant { [11 x i32], [52 x i8] } { [11 x i32] [i32 875713112, i32 875709016, i32 909199186, i32 909199170, i32 892424792, i32 892420696, i32 1448695129, i32 1431918169, i32 1498831189, i32 1498765654, i32 842093913], [52 x i8] zeroinitializer }, align 32
@tve200_display_funcs = internal constant { %struct.drm_simple_display_pipe_funcs, [36 x i8] } { %struct.drm_simple_display_pipe_funcs { ptr null, ptr @tve200_display_enable, ptr @tve200_display_disable, ptr @tve200_display_check, ptr @tve200_display_update, ptr null, ptr null, ptr @tve200_display_enable_vblank, ptr @tve200_display_disable_vblank, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@tve200_display_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 148, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"can't get hardware out of reset\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tve200_display_enable\00", [42 x i8] zeroinitializer }, align 32
@tve200_display_enable._entry_ptr = internal global ptr @tve200_display_enable._entry, section ".printk_index", align 4
@tve200_display_enable._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 173, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CIF mode\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@tve200_display_enable._entry_ptr.10 = internal global ptr @tve200_display_enable._entry.7, section ".printk_index", align 4
@tve200_display_enable._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.6, ptr @.str.2, i32 176, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"VGA mode\0A\00", [22 x i8] zeroinitializer }, align 32
@tve200_display_enable._entry_ptr.13 = internal global ptr @tve200_display_enable._entry.11, section ".printk_index", align 4
@tve200_display_enable._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.6, ptr @.str.2, i32 180, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"D1 mode\0A\00", [23 x i8] zeroinitializer }, align 32
@tve200_display_enable._entry_ptr.16 = internal global ptr @tve200_display_enable._entry.14, section ".printk_index", align 4
@tve200_display_enable._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.6, ptr @.str.2, i32 229, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unknown FB format 0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@tve200_display_enable._entry_ptr.19 = internal global ptr @tve200_display_enable._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"unsupported display mode (%u x %u)\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"FB not 32-bit aligned\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"can't handle pitches\0A\00", [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 16, i64 352, i64 640, i64 720]
@__sancov_gen_cov_switch_values.23 = internal global [13 x i64] [i64 11, i64 32, i64 842093913, i64 875709016, i64 875713112, i64 892420696, i64 892424792, i64 909199170, i64 909199186, i64 1431918169, i64 1448695129, i64 1498765654, i64 1498831189]
@__sancov_gen_cov_switch_values.24 = internal global [5 x i64] [i64 3, i64 16, i64 352, i64 640, i64 720]
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 62, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant [8 x i8] c"formats\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 327, i32 19 }
@___asan_gen_.46 = private unnamed_addr constant [21 x i8] c"tve200_display_funcs\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 314, i32 51 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 148, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 173, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 176, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 180, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 228, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 86, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 96, i32 4 }
@___asan_gen_.91 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.92 = private constant [43 x i8] c"../drivers/gpu/drm/tve200/tve200_display.c\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 105, i32 4 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @tve200_display_enable._entry, ptr @tve200_display_enable._entry.11, ptr @tve200_display_enable._entry.14, ptr @tve200_display_enable._entry.17, ptr @tve200_display_enable._entry.7, ptr @tve200_display_enable._entry_ptr, ptr @tve200_display_enable._entry_ptr.10, ptr @tve200_display_enable._entry_ptr.13, ptr @tve200_display_enable._entry_ptr.16, ptr @tve200_display_enable._entry_ptr.19, ptr @tve200_irq._entry, ptr @tve200_irq._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @tve200_display_init.formats, ptr @tve200_display_funcs, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tve200_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tve200_display_init.formats to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tve200_display_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tve200_display_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tve200_display_enable._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tve200_display_enable._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tve200_display_enable._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tve200_display_enable._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tve200_irq(i32 noundef %irq, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.tve200_drm_dev_private, ptr %data, i32 0, i32 5
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 20
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !49
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %do.end22, label %if.then3

if.then3:                                         ; preds = %if.end
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 8
  %add.ptr7 = getelementptr i8, ptr %5, i32 24
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #4, !srcloc !49
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !51
  %and11 = and i32 %7, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  %pipe = getelementptr inbounds %struct.tve200_drm_dev_private, ptr %data, i32 0, i32 4
  %call14 = tail call zeroext i1 @drm_crtc_handle_vblank(ptr noundef %pipe) #4
  %or = or i32 %7, 32
  br label %do.body

if.else:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  %and15 = and i32 %7, -49
  br label %do.body

do.body:                                          ; preds = %if.else, %if.then13
  %val.0 = phi i32 [ %and15, %if.else ], [ %or, %if.then13 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !52
  tail call void @arm_heavy_mb() #4
  %8 = tail call i32 @llvm.bswap.i32(i32 %val.0)
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 8
  %add.ptr18 = getelementptr i8, ptr %10, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %8) #4, !srcloc !53
  br label %do.body24

do.end22:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 8
  %dev = getelementptr inbounds %struct.drm_device, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str, i32 noundef %3) #7
  br label %do.body24

do.body24:                                        ; preds = %do.end22, %do.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !54
  tail call void @arm_heavy_mb() #4
  %15 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs, align 8
  %add.ptr28 = getelementptr i8, ptr %16, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 %2) #4, !srcloc !53
  br label %cleanup

cleanup:                                          ; preds = %do.body24, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.body24 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_crtc_handle_vblank(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tve200_display_init(ptr noundef %drm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %pipe = getelementptr inbounds %struct.tve200_drm_dev_private, ptr %1, i32 0, i32 4
  %connector = getelementptr inbounds %struct.tve200_drm_dev_private, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %connector, align 4
  %call = tail call i32 @drm_simple_display_pipe_init(ptr noundef %drm, ptr noundef %pipe, ptr noundef nonnull @tve200_display_funcs, ptr noundef nonnull @tve200_display_init.formats, i32 noundef 11, ptr noundef null, ptr noundef %3) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_simple_display_pipe_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tve200_display_enable(ptr noundef %pipe, ptr nocapture noundef readonly %cstate, ptr nocapture noundef readnone %plane_state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %state = getelementptr inbounds %struct.drm_simple_display_pipe, ptr %pipe, i32 0, i32 1, i32 19
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %state, align 4
  %fb4 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %fb4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fb4, align 4
  %connector5 = getelementptr inbounds %struct.tve200_drm_dev_private, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %connector5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %connector5, align 4
  %format6 = getelementptr inbounds %struct.drm_framebuffer, ptr %7, i32 0, i32 4
  %10 = ptrtoint ptr %format6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %format6, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %clk = getelementptr inbounds %struct.tve200_drm_dev_private, ptr %3, i32 0, i32 7
  %14 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk, align 8
  %call.i = tail call i32 @clk_prepare(ptr noundef %15) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %15) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unprepare(ptr noundef %15) #4
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !55
  tail call void @arm_heavy_mb() #4
  %regs = getelementptr inbounds %struct.tve200_drm_dev_private, ptr %3, i32 0, i32 5
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %17, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #4, !srcloc !53
  tail call void @usleep_range_state(i32 noundef 30000, i32 noundef 50000, i32 noundef 2) #4
  %18 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs, align 8
  %add.ptr9 = getelementptr i8, ptr %19, i32 36
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #4, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !56
  %21 = and i32 %20, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not = icmp eq i32 %21, 0
  br i1 %tobool.not, label %clk_prepare_enable.exit.if.end_crit_edge, label %for.inc

clk_prepare_enable.exit.if.end_crit_edge:         ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

for.inc:                                          ; preds = %clk_prepare_enable.exit
  tail call void @usleep_range_state(i32 noundef 30000, i32 noundef 50000, i32 noundef 2) #4
  %22 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs, align 8
  %add.ptr9.1 = getelementptr i8, ptr %23, i32 36
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.1) #4, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !56
  %25 = and i32 %24, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.1 = icmp eq i32 %25, 0
  br i1 %tobool.not.1, label %for.inc.if.end_crit_edge, label %for.inc.1

for.inc.if.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

for.inc.1:                                        ; preds = %for.inc
  tail call void @usleep_range_state(i32 noundef 30000, i32 noundef 50000, i32 noundef 2) #4
  %26 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs, align 8
  %add.ptr9.2 = getelementptr i8, ptr %27, i32 36
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.2) #4, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !56
  %29 = and i32 %28, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.2 = icmp eq i32 %29, 0
  br i1 %tobool.not.2, label %for.inc.1.if.end_crit_edge, label %for.inc.2

for.inc.1.if.end_crit_edge:                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

for.inc.2:                                        ; preds = %for.inc.1
  tail call void @usleep_range_state(i32 noundef 30000, i32 noundef 50000, i32 noundef 2) #4
  %30 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs, align 8
  %add.ptr9.3 = getelementptr i8, ptr %31, i32 36
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.3) #4, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !56
  %33 = and i32 %32, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.3 = icmp eq i32 %33, 0
  br i1 %tobool.not.3, label %for.inc.2.if.end_crit_edge, label %for.inc.3

for.inc.2.if.end_crit_edge:                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

for.inc.3:                                        ; preds = %for.inc.2
  tail call void @usleep_range_state(i32 noundef 30000, i32 noundef 50000, i32 noundef 2) #4
  %34 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs, align 8
  %add.ptr9.4 = getelementptr i8, ptr %35, i32 36
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.4) #4, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !56
  %37 = and i32 %36, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.4 = icmp eq i32 %37, 0
  br i1 %tobool.not.4, label %for.inc.3.if.end_crit_edge, label %land.lhs.true

for.inc.3.if.end_crit_edge:                       ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %for.inc.3
  %38 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs, align 8
  %add.ptr16 = getelementptr i8, ptr %39, i32 36
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #4, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !57
  %41 = and i32 %40, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool21.not = icmp eq i32 %41, 0
  br i1 %tobool21.not, label %land.lhs.true.if.end_crit_edge, label %do.end25

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end25:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %dev26 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %42 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev26, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.5) #7
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %for.inc.3.if.end_crit_edge, %for.inc.2.if.end_crit_edge, %for.inc.1.if.end_crit_edge, %for.inc.if.end_crit_edge, %clk_prepare_enable.exit.if.end_crit_edge
  %bus_flags = getelementptr inbounds %struct.drm_connector, ptr %9, i32 0, i32 20, i32 8
  %44 = ptrtoint ptr %bus_flags to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %bus_flags, align 8
  %and32 = and i32 %45, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  %spec.select = select i1 %tobool33.not, i32 1392574976, i32 1526792704
  %hdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %cstate, i32 0, i32 8, i32 1
  %46 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %hdisplay, align 4
  %48 = zext i16 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values)
  switch i16 %47, label %if.end.if.end102_crit_edge [
    i16 352, label %land.lhs.true39
    i16 640, label %land.lhs.true63
    i16 720, label %land.lhs.true79
  ]

if.end.if.end102_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end102

land.lhs.true39:                                  ; preds = %if.end
  %vdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %cstate, i32 0, i32 8, i32 6
  %49 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %vdisplay, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 240, i16 %50)
  %cmp41 = icmp eq i16 %50, 240
  br i1 %cmp41, label %land.lhs.true39.if.end102.sink.split_crit_edge, label %land.lhs.true47

land.lhs.true39.if.end102.sink.split_crit_edge:   ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end102.sink.split

land.lhs.true47:                                  ; preds = %land.lhs.true39
  %51 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %vdisplay, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 288, i16 %52)
  %cmp50 = icmp eq i16 %52, 288
  br i1 %cmp50, label %land.lhs.true47.if.end102.sink.split_crit_edge, label %land.lhs.true47.if.end102_crit_edge

land.lhs.true47.if.end102_crit_edge:              ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end102

land.lhs.true47.if.end102.sink.split_crit_edge:   ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end102.sink.split

land.lhs.true63:                                  ; preds = %if.end
  %vdisplay64 = getelementptr inbounds %struct.drm_crtc_state, ptr %cstate, i32 0, i32 8, i32 6
  %53 = ptrtoint ptr %vdisplay64 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %vdisplay64, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 480, i16 %54)
  %cmp66 = icmp eq i16 %54, 480
  br i1 %cmp66, label %if.then68, label %land.lhs.true63.if.end102_crit_edge

land.lhs.true63.if.end102_crit_edge:              ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end102

if.then68:                                        ; preds = %land.lhs.true63
  call void @__sanitizer_cov_trace_pc() #6
  %or69 = or i32 %spec.select, 1024
  br label %if.end102.sink.split

land.lhs.true79:                                  ; preds = %if.end
  %vdisplay80 = getelementptr inbounds %struct.drm_crtc_state, ptr %cstate, i32 0, i32 8, i32 6
  %55 = ptrtoint ptr %vdisplay80 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %vdisplay80, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 480, i16 %56)
  %cmp82 = icmp eq i16 %56, 480
  br i1 %cmp82, label %land.lhs.true79.if.then94_crit_edge, label %land.lhs.true89

land.lhs.true79.if.then94_crit_edge:              ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then94

land.lhs.true89:                                  ; preds = %land.lhs.true79
  %57 = ptrtoint ptr %vdisplay80 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %vdisplay80, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 576, i16 %58)
  %cmp92 = icmp eq i16 %58, 576
  br i1 %cmp92, label %land.lhs.true89.if.then94_crit_edge, label %land.lhs.true89.if.end102_crit_edge

land.lhs.true89.if.end102_crit_edge:              ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end102

land.lhs.true89.if.then94_crit_edge:              ; preds = %land.lhs.true89
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then94

if.then94:                                        ; preds = %land.lhs.true89.if.then94_crit_edge, %land.lhs.true79.if.then94_crit_edge
  %or95 = or i32 %spec.select, 2048
  br label %if.end102.sink.split

if.end102.sink.split:                             ; preds = %if.then94, %if.then68, %land.lhs.true47.if.end102.sink.split_crit_edge, %land.lhs.true39.if.end102.sink.split_crit_edge
  %.str.12.sink = phi ptr [ @.str.12, %if.then68 ], [ @.str.15, %if.then94 ], [ @.str.8, %land.lhs.true47.if.end102.sink.split_crit_edge ], [ @.str.8, %land.lhs.true39.if.end102.sink.split_crit_edge ]
  %ctrl1.1.ph = phi i32 [ %or69, %if.then68 ], [ %or95, %if.then94 ], [ %spec.select, %land.lhs.true47.if.end102.sink.split_crit_edge ], [ %spec.select, %land.lhs.true39.if.end102.sink.split_crit_edge ]
  %dev73 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %59 = ptrtoint ptr %dev73 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev73, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %60, ptr noundef nonnull %.str.12.sink) #7
  br label %if.end102

if.end102:                                        ; preds = %if.end102.sink.split, %land.lhs.true89.if.end102_crit_edge, %land.lhs.true63.if.end102_crit_edge, %land.lhs.true47.if.end102_crit_edge, %if.end.if.end102_crit_edge
  %ctrl1.1 = phi i32 [ %spec.select, %land.lhs.true89.if.end102_crit_edge ], [ %spec.select, %land.lhs.true63.if.end102_crit_edge ], [ %spec.select, %land.lhs.true47.if.end102_crit_edge ], [ %spec.select, %if.end.if.end102_crit_edge ], [ %ctrl1.1.ph, %if.end102.sink.split ]
  %or106 = or i32 %ctrl1.1, 32768
  %and107 = and i32 %13, 2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool104.not217 = icmp slt i32 %13, 0
  %ctrl1.2 = select i1 %tobool104.not217, i32 %or106, i32 %ctrl1.1
  %61 = zext i32 %and107 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %and107, label %do.end137 [
    i32 875713112, label %sw.bb
    i32 909199186, label %sw.bb110
    i32 892424792, label %if.end102.sw.epilog_crit_edge
    i32 875709016, label %sw.bb114
    i32 909199170, label %sw.bb116
    i32 892420696, label %sw.bb118
    i32 1448695129, label %sw.bb120
    i32 1431918169, label %sw.bb123
    i32 1498831189, label %sw.bb126
    i32 1498765654, label %sw.bb129
    i32 842093913, label %sw.bb132
  ]

if.end102.sw.epilog_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #6
  %or109 = or i32 %ctrl1.2, 128
  br label %sw.epilog

sw.bb110:                                         ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #6
  %or111 = or i32 %ctrl1.2, 64
  br label %sw.epilog

sw.bb114:                                         ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #6
  %or115 = or i32 %ctrl1.2, 130
  br label %sw.epilog

sw.bb116:                                         ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #6
  %or117 = or i32 %ctrl1.2, 66
  br label %sw.epilog

sw.bb118:                                         ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #6
  %or119 = or i32 %ctrl1.2, 2
  br label %sw.epilog

sw.bb120:                                         ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #6
  %or122 = or i32 %ctrl1.2, 16576
  br label %sw.epilog

sw.bb123:                                         ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #6
  %or125 = or i32 %ctrl1.2, 24768
  br label %sw.epilog

sw.bb126:                                         ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #6
  %or128 = or i32 %ctrl1.2, 20672
  br label %sw.epilog

sw.bb129:                                         ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #6
  %or131 = or i32 %ctrl1.2, 12480
  br label %sw.epilog

sw.bb132:                                         ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #6
  %or134 = or i32 %ctrl1.2, -2147483520
  br label %sw.epilog

do.end137:                                        ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #6
  %dev138 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %62 = ptrtoint ptr %dev138 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev138, align 4
  %64 = ptrtoint ptr %format6 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %format6, align 8
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %65, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.18, i32 noundef %67) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end137, %sw.bb132, %sw.bb129, %sw.bb126, %sw.bb123, %sw.bb120, %sw.bb118, %sw.bb116, %sw.bb114, %sw.bb110, %sw.bb, %if.end102.sw.epilog_crit_edge
  %ctrl1.3 = phi i32 [ %ctrl1.2, %do.end137 ], [ %or134, %sw.bb132 ], [ %or131, %sw.bb129 ], [ %or128, %sw.bb126 ], [ %or125, %sw.bb123 ], [ %or122, %sw.bb120 ], [ %or119, %sw.bb118 ], [ %or117, %sw.bb116 ], [ %or115, %sw.bb114 ], [ %or111, %sw.bb110 ], [ %or109, %sw.bb ], [ %ctrl1.2, %if.end102.sw.epilog_crit_edge ]
  %or141 = or i32 %ctrl1.3, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !58
  tail call void @arm_heavy_mb() #4
  %68 = tail call i32 @llvm.bswap.i32(i32 %or141)
  %69 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regs, align 8
  %add.ptr146 = getelementptr i8, ptr %70, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr146, i32 %68) #4, !srcloc !53
  tail call void @drm_crtc_vblank_on(ptr noundef %pipe) #4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end25
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tve200_display_disable(ptr noundef %pipe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  tail call void @drm_crtc_vblank_off(ptr noundef %pipe) #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !59
  tail call void @arm_heavy_mb() #4
  %regs = getelementptr inbounds %struct.tve200_drm_dev_private, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #4, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !60
  tail call void @arm_heavy_mb() #4
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 8
  %add.ptr6 = getelementptr i8, ptr %7, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 16777216) #4, !srcloc !53
  %clk = getelementptr inbounds %struct.tve200_drm_dev_private, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %9) #4
  tail call void @clk_unprepare(ptr noundef %9) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tve200_display_check(ptr nocapture noundef readonly %pipe, ptr noundef %pstate, ptr nocapture noundef %cstate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.drm_simple_display_pipe, ptr %pipe, i32 0, i32 1, i32 19
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %fb = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fb, align 4
  %fb3 = getelementptr inbounds %struct.drm_plane_state, ptr %pstate, i32 0, i32 2
  %4 = ptrtoint ptr %fb3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fb3, align 4
  %hdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %cstate, i32 0, i32 8, i32 1
  %6 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %hdisplay, align 4
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.24)
  switch i16 %7, label %entry.if.then_crit_edge [
    i16 352, label %land.lhs.true
    i16 640, label %land.lhs.true23
    i16 720, label %land.lhs.true33
  ]

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

land.lhs.true:                                    ; preds = %entry
  %vdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %cstate, i32 0, i32 8, i32 6
  %9 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %vdisplay, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 240, i16 %10)
  %cmp6 = icmp eq i16 %10, 240
  br i1 %cmp6, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true13

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true13:                                  ; preds = %land.lhs.true
  %11 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %vdisplay, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 288, i16 %12)
  %cmp16 = icmp eq i16 %12, 288
  br i1 %cmp16, label %land.lhs.true13.if.end_crit_edge, label %land.lhs.true13.if.then_crit_edge

land.lhs.true13.if.then_crit_edge:                ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

land.lhs.true13.if.end_crit_edge:                 ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true23:                                  ; preds = %entry
  %vdisplay24 = getelementptr inbounds %struct.drm_crtc_state, ptr %cstate, i32 0, i32 8, i32 6
  %13 = ptrtoint ptr %vdisplay24 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %vdisplay24, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 480, i16 %14)
  %cmp26 = icmp eq i16 %14, 480
  br i1 %cmp26, label %land.lhs.true23.if.end_crit_edge, label %land.lhs.true23.if.then_crit_edge

land.lhs.true23.if.then_crit_edge:                ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

land.lhs.true23.if.end_crit_edge:                 ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true33:                                  ; preds = %entry
  %vdisplay34 = getelementptr inbounds %struct.drm_crtc_state, ptr %cstate, i32 0, i32 8, i32 6
  %15 = ptrtoint ptr %vdisplay34 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %vdisplay34, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 480, i16 %16)
  %cmp36 = icmp eq i16 %16, 480
  br i1 %cmp36, label %land.lhs.true33.if.end_crit_edge, label %land.lhs.true43

land.lhs.true33.if.end_crit_edge:                 ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true43:                                  ; preds = %land.lhs.true33
  %17 = ptrtoint ptr %vdisplay34 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %vdisplay34, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 576, i16 %18)
  %cmp46 = icmp eq i16 %18, 576
  br i1 %cmp46, label %land.lhs.true43.if.end_crit_edge, label %land.lhs.true43.if.then_crit_edge

land.lhs.true43.if.then_crit_edge:                ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

land.lhs.true43.if.end_crit_edge:                 ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %land.lhs.true43.if.then_crit_edge, %land.lhs.true23.if.then_crit_edge, %land.lhs.true13.if.then_crit_edge, %entry.if.then_crit_edge
  %conv49 = zext i16 %7 to i32
  %vdisplay50 = getelementptr inbounds %struct.drm_crtc_state, ptr %cstate, i32 0, i32 8, i32 6
  %19 = ptrtoint ptr %vdisplay50 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %vdisplay50, align 2
  %conv51 = zext i16 %20 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.20, i32 noundef %conv49, i32 noundef %conv51) #4
  br label %cleanup73

if.end:                                           ; preds = %land.lhs.true43.if.end_crit_edge, %land.lhs.true33.if.end_crit_edge, %land.lhs.true23.if.end_crit_edge, %land.lhs.true13.if.end_crit_edge, %land.lhs.true.if.end_crit_edge
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end.cleanup73_crit_edge, label %if.then52

if.end.cleanup73_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup73

if.then52:                                        ; preds = %if.end
  %call = tail call i32 @drm_fb_cma_get_gem_addr(ptr noundef nonnull %5, ptr noundef %pstate, i32 noundef 0) #4
  %and = and i32 %call, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool53.not = icmp eq i32 %and, 0
  br i1 %tobool53.not, label %if.end55, label %if.then54

if.then54:                                        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.21) #4
  br label %cleanup73

if.end55:                                         ; preds = %if.then52
  %pitches = getelementptr inbounds %struct.drm_framebuffer, ptr %5, i32 0, i32 6
  %21 = ptrtoint ptr %pitches to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pitches, align 8
  %23 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %hdisplay, align 4
  %conv57 = zext i16 %24 to i32
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %5, i32 0, i32 4
  %25 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %format, align 8
  %27 = getelementptr inbounds %struct.drm_format_info, ptr %26, i32 0, i32 3
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %27, align 2
  %conv59 = zext i8 %29 to i32
  %mul = mul nuw nsw i32 %conv59, %conv57
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %mul)
  %cmp60.not = icmp eq i32 %22, %mul
  br i1 %cmp60.not, label %if.end63, label %if.then62

if.then62:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.22) #4
  br label %cleanup73

if.end63:                                         ; preds = %if.end55
  %tobool64.not = icmp eq ptr %3, null
  br i1 %tobool64.not, label %if.end63.cleanup73_crit_edge, label %land.lhs.true65

if.end63.cleanup73_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup73

land.lhs.true65:                                  ; preds = %if.end63
  %format66 = getelementptr inbounds %struct.drm_framebuffer, ptr %3, i32 0, i32 4
  %30 = ptrtoint ptr %format66 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %format66, align 8
  %cmp68.not = icmp eq ptr %31, %26
  br i1 %cmp68.not, label %land.lhs.true65.cleanup73_crit_edge, label %if.then70

land.lhs.true65.cleanup73_crit_edge:              ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup73

if.then70:                                        ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #6
  %mode_changed = getelementptr inbounds %struct.drm_crtc_state, ptr %cstate, i32 0, i32 3
  %32 = ptrtoint ptr %mode_changed to i32
  call void @__asan_load1_noabort(i32 %32)
  %bf.load = load i8, ptr %mode_changed, align 2
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %mode_changed, align 2
  br label %cleanup73

cleanup73:                                        ; preds = %if.then70, %land.lhs.true65.cleanup73_crit_edge, %if.end63.cleanup73_crit_edge, %if.then62, %if.then54, %if.end.cleanup73_crit_edge, %if.then
  %retval.1 = phi i32 [ -22, %if.then ], [ -22, %if.then62 ], [ -22, %if.then54 ], [ 0, %if.then70 ], [ 0, %land.lhs.true65.cleanup73_crit_edge ], [ 0, %if.end63.cleanup73_crit_edge ], [ 0, %if.end.cleanup73_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tve200_display_update(ptr noundef %pipe, ptr nocapture noundef readnone %old_pstate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.drm_crtc, ptr %pipe, i32 0, i32 22
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %event2 = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %event2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %event2, align 4
  %state4 = getelementptr inbounds %struct.drm_simple_display_pipe, ptr %pipe, i32 0, i32 1, i32 19
  %4 = ptrtoint ptr %state4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %state4, align 4
  %fb5 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %fb5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fb5, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end20_crit_edge, label %do.body

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20

do.body:                                          ; preds = %entry
  %8 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pipe, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !61
  tail call void @arm_heavy_mb() #4
  %call = tail call i32 @drm_fb_cma_get_gem_addr(ptr noundef nonnull %7, ptr noundef %5, i32 noundef 0) #4
  %12 = tail call i32 @llvm.bswap.i32(i32 %call)
  %regs = getelementptr inbounds %struct.tve200_drm_dev_private, ptr %11, i32 0, i32 5
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %12) #4, !srcloc !53
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %7, i32 0, i32 4
  %15 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %format, align 8
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 842093913, i32 %18)
  %cmp = icmp eq i32 %18, 842093913
  br i1 %cmp, label %do.body8, label %do.body.if.end20_crit_edge

do.body.if.end20_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20

do.body8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !62
  tail call void @arm_heavy_mb() #4
  %call11 = tail call i32 @drm_fb_cma_get_gem_addr(ptr noundef nonnull %7, ptr noundef %5, i32 noundef 1) #4
  %19 = tail call i32 @llvm.bswap.i32(i32 %call11)
  %20 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs, align 8
  %add.ptr13 = getelementptr i8, ptr %21, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %19) #4, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !63
  tail call void @arm_heavy_mb() #4
  %call17 = tail call i32 @drm_fb_cma_get_gem_addr(ptr noundef nonnull %7, ptr noundef %5, i32 noundef 2) #4
  %22 = tail call i32 @llvm.bswap.i32(i32 %call17)
  %23 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs, align 8
  %add.ptr19 = getelementptr i8, ptr %24, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %22) #4, !srcloc !53
  br label %if.end20

if.end20:                                         ; preds = %do.body8, %do.body.if.end20_crit_edge, %entry.if.end20_crit_edge
  %tobool21.not = icmp eq ptr %3, null
  br i1 %tobool21.not, label %if.end20.if.end34_crit_edge, label %if.then22

if.end20.if.end34_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end34

if.then22:                                        ; preds = %if.end20
  %25 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %state, align 4
  %event24 = getelementptr inbounds %struct.drm_crtc_state, ptr %26, i32 0, i32 18
  %27 = ptrtoint ptr %event24 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %event24, align 4
  %28 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pipe, align 8
  %event_lock = getelementptr inbounds %struct.drm_device, ptr %29, i32 0, i32 28
  tail call void @_raw_spin_lock_irq(ptr noundef %event_lock) #4
  %30 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %state, align 4
  %active = getelementptr inbounds %struct.drm_crtc_state, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %active, align 1, !range !64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool27.not = icmp eq i8 %33, 0
  br i1 %tobool27.not, label %if.then22.if.else_crit_edge, label %land.lhs.true

if.then22.if.else_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

land.lhs.true:                                    ; preds = %if.then22
  %call28 = tail call i32 @drm_crtc_vblank_get(ptr noundef %pipe) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp eq i32 %call28, 0
  br i1 %cmp29, label %if.then30, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

if.then30:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @drm_crtc_arm_vblank_event(ptr noundef %pipe, ptr noundef nonnull %3) #4
  br label %if.end31

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.then22.if.else_crit_edge
  tail call void @drm_crtc_send_vblank_event(ptr noundef %pipe, ptr noundef nonnull %3) #4
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then30
  %34 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pipe, align 8
  %event_lock33 = getelementptr inbounds %struct.drm_device, ptr %35, i32 0, i32 28
  tail call void @_raw_spin_unlock_irq(ptr noundef %event_lock33) #4
  br label %if.end34

if.end34:                                         ; preds = %if.end31, %if.end20.if.end34_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tve200_display_enable_vblank(ptr nocapture noundef readonly %pipe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !65
  tail call void @arm_heavy_mb() #4
  %regs = getelementptr inbounds %struct.tve200_drm_dev_private, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -16777216) #4, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !66
  tail call void @arm_heavy_mb() #4
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 8
  %add.ptr6 = getelementptr i8, ptr %7, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 1073741824) #4, !srcloc !53
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tve200_display_disable_vblank(ptr nocapture noundef readonly %pipe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !67
  tail call void @arm_heavy_mb() #4
  %regs = getelementptr inbounds %struct.tve200_drm_dev_private, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #4, !srcloc !53
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_cma_get_gem_addr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_vblank_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_arm_vblank_event(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_send_vblank_event(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !14, !15, !16, !17, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !38}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/tve200/tve200_display.c", i32 62, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @tve200_irq._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @tve200_irq._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @tve200_display_init.formats, !9, !"formats", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/tve200/tve200_display.c", i32 327, i32 19}
!10 = !{ptr @tve200_display_funcs, !11, !"tve200_display_funcs", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/tve200/tve200_display.c", i32 314, i32 51}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/tve200/tve200_display.c", i32 148, i32 3}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @tve200_display_enable._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @tve200_display_enable._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/tve200/tve200_display.c", i32 173, i32 3}
!19 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @tve200_display_enable._entry.7, !18, !"_entry", i1 false, i1 false}
!21 = !{ptr @tve200_display_enable._entry_ptr.10, !18, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/tve200/tve200_display.c", i32 176, i32 3}
!24 = !{ptr @tve200_display_enable._entry.11, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @tve200_display_enable._entry_ptr.13, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/tve200/tve200_display.c", i32 180, i32 3}
!28 = !{ptr @tve200_display_enable._entry.14, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @tve200_display_enable._entry_ptr.16, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/tve200/tve200_display.c", i32 228, i32 3}
!32 = !{ptr @tve200_display_enable._entry.17, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @tve200_display_enable._entry_ptr.19, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.20, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/tve200/tve200_display.c", i32 86, i32 3}
!36 = !{ptr @.str.21, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/tve200/tve200_display.c", i32 96, i32 4}
!38 = !{ptr @.str.22, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/tve200/tve200_display.c", i32 105, i32 4}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{i64 2067143}
!50 = !{i64 2156755345}
!51 = !{i64 2156755918}
!52 = !{i64 2156756482}
!53 = !{i64 2066725}
!54 = !{i64 2156758429}
!55 = !{i64 2156759188}
!56 = !{i64 2156759926}
!57 = !{i64 2156760499}
!58 = !{i64 2156771052}
!59 = !{i64 2156771450}
!60 = !{i64 2156771944}
!61 = !{i64 2156772445}
!62 = !{i64 2156773109}
!63 = !{i64 2156773643}
!64 = !{i8 0, i8 2}
!65 = !{i64 2156774155}
!66 = !{i64 2156774658}
!67 = !{i64 2156775122}
