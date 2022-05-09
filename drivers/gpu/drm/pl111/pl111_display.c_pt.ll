; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/pl111/pl111_display.c_pt.bc'
source_filename = "../drivers/gpu/drm/pl111/pl111_display.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_simple_display_pipe_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pl111_drm_dev_private = type { ptr, ptr, ptr, ptr, %struct.drm_simple_display_pipe, ptr, i32, i32, i32, ptr, %struct.clk_hw, %struct.spinlock, ptr, ptr, ptr, i8 }
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
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.88, ptr, i32, ptr, i8, i32 }
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
%struct.anon.88 = type { i32, ptr }
%struct.pl111_variant_data = type { ptr, i8, i8, i8, i8, i8, i8, ptr, i32, i32 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
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
%struct.drm_bridge = type { %struct.drm_private_obj, ptr, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_bridge_timings = type { i32, i32, i32, i8 }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.83, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.83 = type { [4 x i8] }

@pl111_display_funcs = internal global { %struct.drm_simple_display_pipe_funcs, [36 x i8] } { %struct.drm_simple_display_pipe_funcs { ptr @pl111_mode_valid, ptr @pl111_display_enable, ptr @pl111_display_disable, ptr @pl111_display_check, ptr @pl111_display_update, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"clcdclk\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pl111_div\00", [22 x i8] zeroinitializer }, align 32
@pl111_clk_div_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pl111_clk_div_recalc_rate, ptr @pl111_clk_div_round_rate, ptr null, ptr null, ptr null, ptr @pl111_clk_div_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@pl111_init_clock_divider._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 550, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"CLCD: unable to get clcdclk.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"pl111_init_clock_divider\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/gpu/drm/pl111/pl111_display.c\00", [58 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pl111_init_clock_divider._entry_ptr = internal global ptr @pl111_init_clock_divider._entry, section ".printk_index", align 4
@pl111_init_clock_divider.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&priv->tim2_lock\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%d x %d @ %d Hz, %d cpp, bw %llu too fast\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%d x %d @ %d Hz, %d cpp, bw %llu bytes/s OK\0A\00", [51 x i8] zeroinitializer }, align 32
@pl111_display_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.4, i32 140, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to set pixel clock rate to %d: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pl111_display_enable\00", [43 x i8] zeroinitializer }, align 32
@pl111_display_enable._entry_ptr = internal global ptr @pl111_display_enable._entry, section ".printk_index", align 4
@pl111_display_enable.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unknown FB format 0x%08x\0A\00", [38 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [18 x i64] [i64 16, i64 32, i64 842089025, i64 842089048, i64 842093121, i64 842093144, i64 875708993, i64 875709016, i64 875710274, i64 875710290, i64 875713089, i64 875713112, i64 892420673, i64 892420696, i64 892424769, i64 892424792, i64 909199170, i64 909199186]
@___asan_gen_.13 = private unnamed_addr constant [20 x i8] c"pl111_display_funcs\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 436, i32 45 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 537, i32 46 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 541, i32 11 }
@___asan_gen_.22 = private unnamed_addr constant [18 x i8] c"pl111_clk_div_ops\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 527, i32 29 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 550, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 554, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 70, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 76, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 138, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.65 = private constant [41 x i8] c"../drivers/gpu/drm/pl111/pl111_display.c\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 326, i32 3 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @pl111_display_enable._entry, ptr @pl111_display_enable._entry_ptr, ptr @pl111_init_clock_divider._entry, ptr @pl111_init_clock_divider._entry_ptr, ptr @pl111_display_funcs, ptr @.str, ptr @.str.1, ptr @pl111_clk_div_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @pl111_init_clock_divider.__key, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl111_display_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl111_clk_div_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl111_init_clock_divider._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl111_init_clock_divider.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl111_display_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pl111_irq(i32 noundef %irq, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %data, i32 0, i32 5
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 36
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = and i32 %2, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %if.end.do.body_crit_edge, label %if.then3

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %pipe = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %data, i32 0, i32 4
  %call4 = tail call zeroext i1 @drm_crtc_handle_vblank(ptr noundef %pipe) #5
  br label %do.body

do.body:                                          ; preds = %if.then3, %if.end.do.body_crit_edge
  %status.0 = phi i32 [ 1, %if.then3 ], [ 0, %if.end.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void @arm_heavy_mb() #5
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 8
  %add.ptr7 = getelementptr i8, ptr %5, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %2) #5, !srcloc !43
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %status.0, %do.body ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_crtc_handle_vblank(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pl111_display_init(ptr noundef %drm) local_unnamed_addr #0 align 64 {
entry:
  %parent_name.i = alloca ptr, align 4
  %init.i = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %dev.i = getelementptr inbounds %struct.drm_device, ptr %drm, i32 0, i32 2
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %call.i = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str) #5
  %clk_div.i = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %1, i32 0, i32 10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent_name.i) #5
  %4 = ptrtoint ptr %parent_name.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %parent_name.i, align 4, !annotation !44
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i) #5
  %5 = getelementptr inbounds i8, ptr %init.i, i32 20
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 33554431, ptr %5, align 4
  %7 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.1, ptr %init.i, align 4
  %ops.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 1
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @pl111_clk_div_ops, ptr %ops.i, align 4
  %parent_names.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 2
  %9 = ptrtoint ptr %parent_names.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %parent_name.i, ptr %parent_names.i, align 4
  %parent_data.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 3
  %10 = ptrtoint ptr %parent_data.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %parent_data.i, align 4
  %parent_hws.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 4
  %11 = ptrtoint ptr %parent_hws.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %parent_hws.i, align 4
  %flags.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 6
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4, ptr %flags.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i, label %do.body4.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.2) #8
  %15 = ptrtoint ptr %call.i to i32
  br label %pl111_init_clock_divider.exit

do.body4.i:                                       ; preds = %entry
  %tim2_lock.i = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %1, i32 0, i32 11
  call void @__raw_spin_lock_init(ptr noundef %tim2_lock.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @pl111_init_clock_divider.__key, i16 noundef signext 3) #5
  %variant.i = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %1, i32 0, i32 12
  %16 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %variant.i, align 4
  %broken_clockdivider.i = getelementptr inbounds %struct.pl111_variant_data, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %broken_clockdivider.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %broken_clockdivider.i, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i = icmp eq i8 %19, 0
  br i1 %tobool.not.i, label %if.end9.i, label %pl111_init_clock_divider.exit.thread

pl111_init_clock_divider.exit.thread:             ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #7
  %clk.i = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %1, i32 0, i32 9
  %20 = ptrtoint ptr %clk.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i, ptr %clk.i, align 8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name.i) #5
  br label %if.end

if.end9.i:                                        ; preds = %do.body4.i
  call void @__sanitizer_cov_trace_pc() #7
  %call10.i = call ptr @__clk_get_name(ptr noundef %call.i) #5
  %21 = ptrtoint ptr %parent_name.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call10.i, ptr %parent_name.i, align 4
  %init11.i = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %1, i32 0, i32 10, i32 2
  %22 = ptrtoint ptr %init11.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %init.i, ptr %init11.i, align 4
  %23 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i, align 4
  %call13.i = call i32 @devm_clk_hw_register(ptr noundef %24, ptr noundef %clk_div.i) #5
  %clk14.i = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %1, i32 0, i32 10, i32 1
  %25 = ptrtoint ptr %clk14.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %clk14.i, align 4
  %clk15.i = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %1, i32 0, i32 9
  %27 = ptrtoint ptr %clk15.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %clk15.i, align 8
  br label %pl111_init_clock_divider.exit

pl111_init_clock_divider.exit:                    ; preds = %if.end9.i, %do.end.i
  %retval.0.i = phi i32 [ %15, %do.end.i ], [ %call13.i, %if.end9.i ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not, label %pl111_init_clock_divider.exit.if.end_crit_edge, label %pl111_init_clock_divider.exit.cleanup_crit_edge

pl111_init_clock_divider.exit.cleanup_crit_edge:  ; preds = %pl111_init_clock_divider.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

pl111_init_clock_divider.exit.if.end_crit_edge:   ; preds = %pl111_init_clock_divider.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %pl111_init_clock_divider.exit.if.end_crit_edge, %pl111_init_clock_divider.exit.thread
  %variant = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %1, i32 0, i32 12
  %28 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %variant, align 4
  %broken_vblank = getelementptr inbounds %struct.pl111_variant_data, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %broken_vblank to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %broken_vblank, align 4, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool1.not = icmp eq i8 %31, 0
  br i1 %tobool1.not, label %if.then2, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  store ptr @pl111_display_enable_vblank, ptr getelementptr inbounds (%struct.drm_simple_display_pipe_funcs, ptr @pl111_display_funcs, i32 0, i32 7), align 4
  store ptr @pl111_display_disable_vblank, ptr getelementptr inbounds (%struct.drm_simple_display_pipe_funcs, ptr @pl111_display_funcs, i32 0, i32 8), align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %pipe = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %1, i32 0, i32 4
  %32 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %variant, align 4
  %formats = getelementptr inbounds %struct.pl111_variant_data, ptr %33, i32 0, i32 7
  %34 = ptrtoint ptr %formats to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %formats, align 4
  %nformats = getelementptr inbounds %struct.pl111_variant_data, ptr %33, i32 0, i32 8
  %36 = ptrtoint ptr %nformats to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %nformats, align 4
  %connector = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %1, i32 0, i32 1
  %38 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %connector, align 4
  %call6 = call i32 @drm_simple_display_pipe_init(ptr noundef %drm, ptr noundef %pipe, ptr noundef nonnull @pl111_display_funcs, ptr noundef %35, i32 noundef %37, ptr noundef null, ptr noundef %39) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %pl111_init_clock_divider.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %pl111_init_clock_divider.exit.cleanup_crit_edge ], [ %call6, %if.end3 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl111_display_enable_vblank(ptr nocapture noundef readonly %pipe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  %regs = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 8
  %ienb = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %ienb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ienb, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 67108864) #5, !srcloc !43
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pl111_display_disable_vblank(ptr nocapture noundef readonly %pipe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  tail call void @arm_heavy_mb() #5
  %regs = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 8
  %ienb = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %ienb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ienb, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #5, !srcloc !43
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_simple_display_pipe_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl111_clk_div_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %prate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr i8, ptr %hw, i32 -20
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %add.ptr1 = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #5, !srcloc !40
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !48
  %and = and i32 %3, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %and4 = and i32 %3, 31
  %and5 = lshr i32 %3, 22
  %shr = and i32 %and5, 992
  %or = or i32 %shr, %and4
  %add = add nuw nsw i32 %or, 2
  %conv = zext i32 %prate to i64
  %4 = add nuw nsw i32 %or, 1
  %add7 = zext i32 %4 to i64
  %sub = add nuw nsw i64 %add7, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub)
  %cmp184 = icmp ult i64 %sub, 4294967296
  br i1 %cmp184, label %if.then188, label %if.else194, !prof !49

if.then188:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %conv189 = trunc i64 %sub to i32
  %div192 = udiv i32 %conv189, %add
  br label %cleanup

if.else194:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %5 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %add, i64 %sub) #9, !srcloc !50
  %asmresult1.i = extractvalue { i64, i64 } %5, 1
  %extract.t316 = trunc i64 %asmresult1.i to i32
  br label %cleanup

cleanup:                                          ; preds = %if.else194, %if.then188, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %prate, %entry.cleanup_crit_edge ], [ %div192, %if.then188 ], [ %extract.t316, %if.else194 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl111_clk_div_round_rate(ptr noundef %hw, i32 noundef %rate, ptr nocapture noundef %prate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @clk_hw_get_parent(ptr noundef %hw) #5
  br label %for.body.i

for.body.i:                                       ; preds = %if.end192.i.for.body.i_crit_edge, %entry
  %best_div.0331.i = phi i32 [ 1, %entry ], [ %best_div.1.i, %if.end192.i.for.body.i_crit_edge ]
  %div.0329.i = phi i32 [ 1, %entry ], [ %inc.i, %if.end192.i.for.body.i_crit_edge ]
  %best_prate.0328.i = phi i32 [ 0, %entry ], [ %best_prate.1.i, %if.end192.i.for.body.i_crit_edge ]
  %best_diff.0327.i = phi i32 [ -1, %entry ], [ %2, %if.end192.i.for.body.i_crit_edge ]
  %mul.i = mul i32 %div.0329.i, %rate
  %call1.i = tail call i32 @clk_hw_round_rate(ptr noundef %call.i, i32 noundef %mul.i) #5
  %conv.i = zext i32 %call1.i to i64
  %conv2.i = zext i32 %div.0329.i to i64
  %add.i = add nsw i64 %conv2.i, -1
  %sub.i = add nuw nsw i64 %add.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i)
  %cmp178.i = icmp ult i64 %sub.i, 4294967296
  br i1 %cmp178.i, label %if.then182.i, label %if.else188.i, !prof !49

if.then182.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv183.i = trunc i64 %sub.i to i32
  %div186.i = udiv i32 %conv183.i, %div.0329.i
  br label %if.end192.i

if.else188.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %0 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %div.0329.i, i64 %sub.i) #9, !srcloc !50
  %asmresult1.i.i = extractvalue { i64, i64 } %0, 1
  %extract.t325.i = trunc i64 %asmresult1.i.i to i32
  br label %if.end192.i

if.end192.i:                                      ; preds = %if.else188.i, %if.then182.i
  %_tmp.0.off0.i = phi i32 [ %div186.i, %if.then182.i ], [ %extract.t325.i, %if.else188.i ]
  %sub196.i = sub i32 %rate, %_tmp.0.off0.i
  %1 = tail call i32 @llvm.abs.i32(i32 %sub196.i, i1 false) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %best_diff.0327.i)
  %cmp205.i = icmp ult i32 %1, %best_diff.0327.i
  %2 = tail call i32 @llvm.umin.i32(i32 %1, i32 %best_diff.0327.i) #5
  %best_prate.1.i = select i1 %cmp205.i, i32 %call1.i, i32 %best_prate.0328.i
  %best_div.1.i = select i1 %cmp205.i, i32 %div.0329.i, i32 %best_div.0331.i
  %inc.i = add nuw nsw i32 %div.0329.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1023
  br i1 %exitcond.not.i, label %pl111_clk_div_choose_div.exit, label %if.end192.i.for.body.i_crit_edge

if.end192.i.for.body.i_crit_edge:                 ; preds = %if.end192.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

pl111_clk_div_choose_div.exit:                    ; preds = %if.end192.i
  %3 = ptrtoint ptr %prate to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %best_prate.1.i, ptr %prate, align 4
  %conv = zext i32 %best_prate.1.i to i64
  %conv1 = sext i32 %best_div.1.i to i64
  %add = add nsw i64 %conv1, -1
  %sub = add nsw i64 %add, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub)
  %cmp171 = icmp ult i64 %sub, 4294967296
  br i1 %cmp171, label %if.then175, label %if.else181, !prof !49

if.then175:                                       ; preds = %pl111_clk_div_choose_div.exit
  call void @__sanitizer_cov_trace_pc() #7
  %conv176 = trunc i64 %sub to i32
  %div179 = udiv i32 %conv176, %best_div.1.i
  br label %if.end185

if.else181:                                       ; preds = %pl111_clk_div_choose_div.exit
  call void @__sanitizer_cov_trace_pc() #7
  %4 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %best_div.1.i, i64 %sub) #9, !srcloc !50
  %asmresult1.i = extractvalue { i64, i64 } %4, 1
  %extract.t299 = trunc i64 %asmresult1.i to i32
  br label %if.end185

if.end185:                                        ; preds = %if.else181, %if.then175
  %_tmp.0.off0 = phi i32 [ %div179, %if.then175 ], [ %extract.t299, %if.else181 ]
  ret i32 %_tmp.0.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl111_clk_div_set_rate(ptr noundef %hw, i32 noundef %rate, i32 noundef %prate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @clk_hw_get_parent(ptr noundef %hw) #5
  %conv.i = zext i32 %prate to i64
  br label %for.body.i

for.body.i:                                       ; preds = %if.end192.i.for.body.i_crit_edge, %entry
  %best_div.0331.i = phi i32 [ 1, %entry ], [ %best_div.1.i, %if.end192.i.for.body.i_crit_edge ]
  %div.0329.i = phi i32 [ 1, %entry ], [ %inc.i, %if.end192.i.for.body.i_crit_edge ]
  %best_diff.0327.i = phi i32 [ -1, %entry ], [ %2, %if.end192.i.for.body.i_crit_edge ]
  %conv2.i = zext i32 %div.0329.i to i64
  %add.i = add nsw i64 %conv2.i, -1
  %sub.i = add nuw nsw i64 %add.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i)
  %cmp178.i = icmp ult i64 %sub.i, 4294967296
  br i1 %cmp178.i, label %if.then182.i, label %if.else188.i, !prof !49

if.then182.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv183.i = trunc i64 %sub.i to i32
  %div186.i = udiv i32 %conv183.i, %div.0329.i
  br label %if.end192.i

if.else188.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %0 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %div.0329.i, i64 %sub.i) #9, !srcloc !50
  %asmresult1.i.i = extractvalue { i64, i64 } %0, 1
  %extract.t325.i = trunc i64 %asmresult1.i.i to i32
  br label %if.end192.i

if.end192.i:                                      ; preds = %if.else188.i, %if.then182.i
  %_tmp.0.off0.i = phi i32 [ %div186.i, %if.then182.i ], [ %extract.t325.i, %if.else188.i ]
  %sub196.i = sub i32 %rate, %_tmp.0.off0.i
  %1 = tail call i32 @llvm.abs.i32(i32 %sub196.i, i1 false) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %best_diff.0327.i)
  %cmp205.i = icmp ult i32 %1, %best_diff.0327.i
  %2 = tail call i32 @llvm.umin.i32(i32 %1, i32 %best_diff.0327.i) #5
  %best_div.1.i = select i1 %cmp205.i, i32 %div.0329.i, i32 %best_div.0331.i
  %inc.i = add nuw nsw i32 %div.0329.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1023
  br i1 %exitcond.not.i, label %pl111_clk_div_choose_div.exit, label %if.end192.i.for.body.i_crit_edge

if.end192.i.for.body.i_crit_edge:                 ; preds = %if.end192.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

pl111_clk_div_choose_div.exit:                    ; preds = %if.end192.i
  %tim2_lock = getelementptr i8, ptr %hw, i32 12
  tail call void @_raw_spin_lock(ptr noundef %tim2_lock) #5
  %regs = getelementptr i8, ptr %hw, i32 -20
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 8
  %add.ptr1 = getelementptr i8, ptr %4, i32 8
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !51
  %6 = and i32 %5, -520093949
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %best_div.1.i)
  %cmp = icmp eq i32 %best_div.1.i, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %pl111_clk_div_choose_div.exit
  call void @__sanitizer_cov_trace_pc() #7
  %or = or i32 %7, 67108864
  br label %do.body

if.else:                                          ; preds = %pl111_clk_div_choose_div.exit
  call void @__sanitizer_cov_trace_pc() #7
  %sub = add i32 %best_div.1.i, -2
  %and5 = and i32 %sub, 31
  %8 = shl i32 %sub, 22
  %shl = and i32 %8, -134217728
  %or6 = or i32 %shl, %and5
  %or7 = or i32 %or6, %7
  br label %do.body

do.body:                                          ; preds = %if.else, %if.then
  %tim2.0 = phi i32 [ %or, %if.then ], [ %or7, %if.else ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !52
  tail call void @arm_heavy_mb() #5
  %9 = tail call i32 @llvm.bswap.i32(i32 %tim2.0)
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 8
  %add.ptr9 = getelementptr i8, ptr %11, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %9) #5, !srcloc !43
  tail call void @_raw_spin_unlock(ptr noundef %tim2_lock) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl111_mode_valid(ptr nocapture noundef readonly %pipe, ptr nocapture noundef readonly %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %variant = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %variant, align 4
  %fb_bpp = getelementptr inbounds %struct.pl111_variant_data, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %fb_bpp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fb_bpp, align 4
  %div46 = lshr i32 %7, 3
  %8 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mode, align 4
  %conv = sext i32 %9 to i64
  %mul = mul nsw i64 %conv, 1000
  %hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 1
  %10 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %hdisplay, align 4
  %conv1 = zext i16 %11 to i64
  %vdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 6
  %12 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %vdisplay, align 2
  %conv3 = zext i16 %13 to i64
  %conv5 = zext i32 %div46 to i64
  %mul2 = mul i64 %mul, %conv5
  %mul4 = mul i64 %mul2, %conv1
  %mul6 = mul i64 %mul4, %conv3
  %htotal = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 4
  %14 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %htotal, align 2
  %conv7 = zext i16 %15 to i32
  %vtotal = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 9
  %16 = ptrtoint ptr %vtotal to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vtotal, align 4
  %conv8 = zext i16 %17 to i32
  %mul9 = mul nuw i32 %conv8, %conv7
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul6)
  %cmp164.i.i = icmp ult i64 %mul6, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !49

if.then168.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv169.i.i = trunc i64 %mul6 to i32
  %div172.i.i = udiv i32 %conv169.i.i, %mul9
  %conv173.i.i = zext i32 %div172.i.i to i64
  br label %div_u64.exit

if.else174.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %18 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul9, i64 %mul6) #9, !srcloc !50
  %asmresult1.i.i.i = extractvalue { i64, i64 } %18, 1
  br label %div_u64.exit

div_u64.exit:                                     ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i = phi i64 [ %conv173.i.i, %if.then168.i.i ], [ %asmresult1.i.i.i, %if.else174.i.i ]
  %memory_bw = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %3, i32 0, i32 6
  %19 = ptrtoint ptr %memory_bw to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %memory_bw, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not = icmp ne i32 %20, 0
  %conv11 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %dividend.addr.0.i.i, i64 %conv11)
  %cmp = icmp ugt i64 %dividend.addr.0.i.i, %conv11
  %or.cond = and i1 %tobool.not, %cmp
  %conv14 = zext i16 %11 to i32
  %conv16 = zext i16 %13 to i32
  %mul18 = mul i32 %9, 1000
  %.str.8..str.9 = select i1 %or.cond, ptr @.str.8, ptr @.str.9
  %. = select i1 %or.cond, i32 -2, i32 0
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull %.str.8..str.9, i32 noundef %conv14, i32 noundef %conv16, i32 noundef %mul18, i32 noundef %div46, i64 noundef %dividend.addr.0.i.i) #5
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pl111_display_enable(ptr noundef %pipe, ptr nocapture noundef readonly %cstate, ptr nocapture noundef readnone %plane_state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %mode3 = getelementptr inbounds %struct.drm_crtc_state, ptr %cstate, i32 0, i32 8
  %state = getelementptr inbounds %struct.drm_simple_display_pipe, ptr %pipe, i32 0, i32 1, i32 19
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %state, align 4
  %fb4 = getelementptr inbounds %struct.drm_plane_state, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %fb4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fb4, align 4
  %connector5 = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %connector5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %connector5, align 4
  %bridge6 = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %bridge6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bridge6, align 4
  %clk = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %3, i32 0, i32 9
  %12 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk, align 8
  %14 = ptrtoint ptr %mode3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mode3, align 4
  %mul = mul i32 %15, 1000
  %call = tail call i32 @clk_set_rate(ptr noundef %13, i32 noundef %mul) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev7 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev7, align 4
  %18 = ptrtoint ptr %mode3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mode3, align 4
  %mul9 = mul i32 %19, 1000
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.10, i32 noundef %mul9, i32 noundef %call) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %20 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %clk, align 8
  %call.i = tail call i32 @clk_prepare(ptr noundef %21) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.clk_prepare_enable.exit_crit_edge

if.end.clk_prepare_enable.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %21) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %21) #5
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %if.end.clk_prepare_enable.exit_crit_edge
  %hdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %cstate, i32 0, i32 8, i32 1
  %22 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %hdisplay, align 4
  %conv = zext i16 %23 to i32
  %hsync_end = getelementptr inbounds %struct.drm_crtc_state, ptr %cstate, i32 0, i32 8, i32 3
  %24 = ptrtoint ptr %hsync_end to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %hsync_end, align 4
  %conv12 = zext i16 %25 to i32
  %hsync_start = getelementptr inbounds %struct.drm_crtc_state, ptr %cstate, i32 0, i32 8, i32 2
  %26 = ptrtoint ptr %hsync_start to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %hsync_start, align 2
  %conv13 = zext i16 %27 to i32
  %28 = xor i32 %conv13, -1
  %sub15 = add nsw i32 %28, %conv12
  %29 = xor i32 %conv, -1
  %sub21 = add nsw i32 %conv13, %29
  %htotal = getelementptr inbounds %struct.drm_crtc_state, ptr %cstate, i32 0, i32 8, i32 4
  %30 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %htotal, align 2
  %conv22 = zext i16 %31 to i32
  %32 = xor i32 %conv12, -1
  %sub26 = add nsw i32 %conv22, %32
  %vdisplay = getelementptr inbounds %struct.drm_crtc_state, ptr %cstate, i32 0, i32 8, i32 6
  %33 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %vdisplay, align 2
  %conv27 = zext i16 %34 to i32
  %sub28 = add nsw i32 %conv27, -1
  %vsync_end = getelementptr inbounds %struct.drm_crtc_state, ptr %cstate, i32 0, i32 8, i32 8
  %35 = ptrtoint ptr %vsync_end to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %vsync_end, align 2
  %conv29 = zext i16 %36 to i32
  %vsync_start = getelementptr inbounds %struct.drm_crtc_state, ptr %cstate, i32 0, i32 8, i32 7
  %37 = ptrtoint ptr %vsync_start to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %vsync_start, align 4
  %conv30 = zext i16 %38 to i32
  %39 = xor i32 %conv30, -1
  %sub32 = add nsw i32 %39, %conv29
  %sub37 = sub nsw i32 %conv30, %conv27
  %vtotal = getelementptr inbounds %struct.drm_crtc_state, ptr %cstate, i32 0, i32 8, i32 9
  %40 = ptrtoint ptr %vtotal to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %vtotal, align 4
  %conv38 = zext i16 %41 to i32
  %sub41 = sub nsw i32 %conv38, %conv29
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !53
  tail call void @arm_heavy_mb() #5
  %42 = lshr i32 %conv, 2
  %sub = and i32 %42, 16380
  %shl = add nsw i32 %sub, -4
  %shl48 = shl nsw i32 %sub15, 8
  %or = or i32 %shl48, %shl
  %shl49 = shl i32 %sub21, 16
  %or50 = or i32 %or, %shl49
  %shl51 = shl i32 %sub26, 24
  %or52 = or i32 %or50, %shl51
  %43 = tail call i32 @llvm.bswap.i32(i32 %or52)
  %regs = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %3, i32 0, i32 5
  %44 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 %43) #5, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !54
  tail call void @arm_heavy_mb() #5
  %shl56 = shl nsw i32 %sub32, 10
  %or57 = or i32 %shl56, %sub28
  %shl58 = shl i32 %sub37, 16
  %or59 = or i32 %or57, %shl58
  %shl60 = shl i32 %sub41, 24
  %or61 = or i32 %or59, %shl60
  %46 = tail call i32 @llvm.bswap.i32(i32 %or61)
  %47 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs, align 8
  %add.ptr63 = getelementptr i8, ptr %48, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr63, i32 %46) #5, !srcloc !43
  %tim2_lock = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %3, i32 0, i32 11
  tail call void @_raw_spin_lock(ptr noundef %tim2_lock) #5
  %49 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regs, align 8
  %add.ptr65 = getelementptr i8, ptr %50, i32 8
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr65) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !55
  %52 = and i32 %51, 520093948
  %53 = tail call i32 @llvm.bswap.i32(i32 %52)
  %variant = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %3, i32 0, i32 12
  %54 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %variant, align 4
  %broken_clockdivider = getelementptr inbounds %struct.pl111_variant_data, ptr %55, i32 0, i32 4
  %56 = ptrtoint ptr %broken_clockdivider to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %broken_clockdivider, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool68.not = icmp eq i8 %57, 0
  %or70 = or i32 %53, 67108864
  %spec.select = select i1 %tobool68.not, i32 %53, i32 %or70
  %flags = getelementptr inbounds %struct.drm_crtc_state, ptr %cstate, i32 0, i32 8, i32 11
  %58 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %flags, align 4
  %and72 = shl i32 %59, 11
  %60 = and i32 %and72, 4096
  %61 = or i32 %60, %spec.select
  %and78 = shl i32 %59, 8
  %62 = and i32 %and78, 2048
  %63 = or i32 %61, %62
  %tobool83.not = icmp eq ptr %9, null
  br i1 %tobool83.not, label %clk_prepare_enable.exit.if.end108_crit_edge, label %if.then84

clk_prepare_enable.exit.if.end108_crit_edge:      ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end108

if.then84:                                        ; preds = %clk_prepare_enable.exit
  %bus_flags = getelementptr inbounds %struct.drm_connector, ptr %9, i32 0, i32 20, i32 8
  %64 = ptrtoint ptr %bus_flags to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %bus_flags, align 8
  %and85 = shl i32 %65, 14
  %66 = and i32 %and85, 16384
  %67 = or i32 %66, %63
  %and92 = shl i32 %65, 10
  %68 = and i32 %and92, 8192
  %69 = or i32 %67, %68
  %num_bus_formats = getelementptr inbounds %struct.drm_connector, ptr %9, i32 0, i32 20, i32 7
  %70 = ptrtoint ptr %num_bus_formats to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %num_bus_formats, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %71)
  %cmp = icmp eq i32 %71, 1
  br i1 %cmp, label %if.end103, label %if.then84.if.end108_crit_edge

if.then84.if.end108_crit_edge:                    ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end108

if.end103:                                        ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #7
  %bus_formats = getelementptr inbounds %struct.drm_connector, ptr %9, i32 0, i32 20, i32 6
  %72 = ptrtoint ptr %bus_formats to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %bus_formats, align 8
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %73, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8193, i32 %75)
  %cmp100 = icmp eq i32 %75, 8193
  %or106 = or i32 %69, 1984
  %spec.select427 = select i1 %cmp100, i32 %or106, i32 %69
  br label %if.end108

if.end108:                                        ; preds = %if.end103, %if.then84.if.end108_crit_edge, %clk_prepare_enable.exit.if.end108_crit_edge
  %grayscale.1.off0 = phi i1 [ false, %clk_prepare_enable.exit.if.end108_crit_edge ], [ false, %if.then84.if.end108_crit_edge ], [ %cmp100, %if.end103 ]
  %tim2.5 = phi i32 [ %63, %clk_prepare_enable.exit.if.end108_crit_edge ], [ %69, %if.then84.if.end108_crit_edge ], [ %spec.select427, %if.end103 ]
  %tobool109.not = icmp eq ptr %11, null
  br i1 %tobool109.not, label %if.end108.if.end117_crit_edge, label %if.then110

if.end108.if.end117_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end117

if.then110:                                       ; preds = %if.end108
  %timings = getelementptr inbounds %struct.drm_bridge, ptr %11, i32 0, i32 6
  %76 = ptrtoint ptr %timings to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %timings, align 4
  %tobool111.not = icmp eq ptr %77, null
  br i1 %tobool111.not, label %if.then110.if.end117_crit_edge, label %land.lhs.true112

if.then110.if.end117_crit_edge:                   ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end117

land.lhs.true112:                                 ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #7
  %setup_time_ps = getelementptr inbounds %struct.drm_bridge_timings, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %setup_time_ps to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %setup_time_ps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2999, i32 %79)
  %cmp113 = icmp ugt i32 %79, 2999
  %xor = xor i32 %tim2.5, 8192
  %spec.select417 = select i1 %cmp113, i32 %xor, i32 %tim2.5
  br label %if.end117

if.end117:                                        ; preds = %land.lhs.true112, %if.then110.if.end117_crit_edge, %if.end108.if.end117_crit_edge
  %tim2.7 = phi i32 [ %tim2.5, %if.end108.if.end117_crit_edge ], [ %tim2.5, %if.then110.if.end117_crit_edge ], [ %spec.select417, %land.lhs.true112 ]
  %sub44 = shl nuw i32 %conv, 16
  %shl118 = add i32 %sub44, -65536
  %or119 = or i32 %tim2.7, %shl118
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !56
  tail call void @arm_heavy_mb() #5
  %80 = tail call i32 @llvm.bswap.i32(i32 %or119)
  %81 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %regs, align 8
  %add.ptr124 = getelementptr i8, ptr %82, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr124, i32 %80) #5, !srcloc !43
  tail call void @_raw_spin_unlock(ptr noundef %tim2_lock) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !57
  tail call void @arm_heavy_mb() #5
  %83 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %regs, align 8
  %add.ptr130 = getelementptr i8, ptr %84, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr130, i32 0) #5, !srcloc !43
  %. = select i1 %grayscale.1.off0, i32 65, i32 4129
  %85 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %variant, align 4
  %st_bitmux_control = getelementptr inbounds %struct.pl111_variant_data, ptr %86, i32 0, i32 6
  %87 = ptrtoint ptr %st_bitmux_control to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %st_bitmux_control, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool135.not = icmp eq i8 %88, 0
  %or137 = or i32 %., 1572864
  %cntl.1 = select i1 %tobool135.not, i32 %., i32 %or137
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %7, i32 0, i32 4
  %89 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %format, align 8
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %90, align 4
  %93 = zext i32 %92 to i64
  call void @__sanitizer_cov_trace_switch(i64 %93, ptr @__sancov_gen_cov_switch_values)
  switch i32 %92, label %land.end [
    i32 875710274, label %sw.bb
    i32 875710290, label %sw.bb146
    i32 875708993, label %if.end117.sw.bb153_crit_edge
    i32 875709016, label %if.end117.sw.bb153_crit_edge428
    i32 875713089, label %if.end117.sw.bb162_crit_edge
    i32 875713112, label %if.end117.sw.bb162_crit_edge429
    i32 909199170, label %sw.bb171
    i32 909199186, label %sw.bb186
    i32 892420673, label %if.end117.sw.bb202_crit_edge
    i32 892420696, label %if.end117.sw.bb202_crit_edge430
    i32 892424769, label %if.end117.sw.bb210_crit_edge
    i32 892424792, label %if.end117.sw.bb210_crit_edge431
    i32 842089025, label %if.end117.sw.bb220_crit_edge
    i32 842089048, label %if.end117.sw.bb220_crit_edge432
    i32 842093121, label %if.end117.sw.bb228_crit_edge
    i32 842093144, label %if.end117.sw.bb228_crit_edge433
  ]

if.end117.sw.bb228_crit_edge433:                  ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb228

if.end117.sw.bb228_crit_edge:                     ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb228

if.end117.sw.bb220_crit_edge432:                  ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb220

if.end117.sw.bb220_crit_edge:                     ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb220

if.end117.sw.bb210_crit_edge431:                  ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb210

if.end117.sw.bb210_crit_edge:                     ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb210

if.end117.sw.bb202_crit_edge430:                  ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb202

if.end117.sw.bb202_crit_edge:                     ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb202

if.end117.sw.bb162_crit_edge429:                  ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb162

if.end117.sw.bb162_crit_edge:                     ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb162

if.end117.sw.bb153_crit_edge428:                  ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb153

if.end117.sw.bb153_crit_edge:                     ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb153

sw.bb:                                            ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #7
  %or144 = or i32 %., 1573132
  %spec.select418 = select i1 %tobool135.not, i32 %., i32 %or144
  br label %sw.epilog

sw.bb146:                                         ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #7
  %or151 = or i32 %., 1572876
  %spec.select419 = select i1 %tobool135.not, i32 %., i32 %or151
  br label %sw.epilog

sw.bb153:                                         ; preds = %if.end117.sw.bb153_crit_edge, %if.end117.sw.bb153_crit_edge428
  br i1 %tobool135.not, label %if.else159, label %if.then157

if.then157:                                       ; preds = %sw.bb153
  call void @__sanitizer_cov_trace_pc() #7
  %or158 = or i32 %cntl.1, 266
  br label %sw.epilog

if.else159:                                       ; preds = %sw.bb153
  call void @__sanitizer_cov_trace_pc() #7
  %or160 = or i32 %cntl.1, 10
  br label %sw.epilog

sw.bb162:                                         ; preds = %if.end117.sw.bb162_crit_edge, %if.end117.sw.bb162_crit_edge429
  br i1 %tobool135.not, label %if.else168, label %if.then166

if.then166:                                       ; preds = %sw.bb162
  call void @__sanitizer_cov_trace_pc() #7
  %or167 = or i32 %cntl.1, 10
  br label %sw.epilog

if.else168:                                       ; preds = %sw.bb162
  call void @__sanitizer_cov_trace_pc() #7
  %or169 = or i32 %cntl.1, 266
  br label %sw.epilog

sw.bb171:                                         ; preds = %if.end117
  %is_pl110 = getelementptr inbounds %struct.pl111_variant_data, ptr %86, i32 0, i32 1
  %94 = ptrtoint ptr %is_pl110 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %is_pl110, align 4, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool173.not = icmp eq i8 %95, 0
  br i1 %tobool173.not, label %if.else176, label %if.then174

if.then174:                                       ; preds = %sw.bb171
  call void @__sanitizer_cov_trace_pc() #7
  %or175 = or i32 %cntl.1, 8
  br label %sw.epilog

if.else176:                                       ; preds = %sw.bb171
  br i1 %tobool135.not, label %if.else182, label %if.then180

if.then180:                                       ; preds = %if.else176
  call void @__sanitizer_cov_trace_pc() #7
  %or181 = or i32 %cntl.1, 262408
  br label %sw.epilog

if.else182:                                       ; preds = %if.else176
  call void @__sanitizer_cov_trace_pc() #7
  %or183 = or i32 %cntl.1, 12
  br label %sw.epilog

sw.bb186:                                         ; preds = %if.end117
  %is_pl110188 = getelementptr inbounds %struct.pl111_variant_data, ptr %86, i32 0, i32 1
  %96 = ptrtoint ptr %is_pl110188 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %is_pl110188, align 4, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool189.not = icmp eq i8 %97, 0
  br i1 %tobool189.not, label %if.else192, label %if.then190

if.then190:                                       ; preds = %sw.bb186
  call void @__sanitizer_cov_trace_pc() #7
  %or191 = or i32 %cntl.1, 264
  br label %sw.epilog

if.else192:                                       ; preds = %sw.bb186
  br i1 %tobool135.not, label %if.else198, label %if.then196

if.then196:                                       ; preds = %if.else192
  call void @__sanitizer_cov_trace_pc() #7
  %or197 = or i32 %cntl.1, 262152
  br label %sw.epilog

if.else198:                                       ; preds = %if.else192
  call void @__sanitizer_cov_trace_pc() #7
  %or199 = or i32 %cntl.1, 268
  br label %sw.epilog

sw.bb202:                                         ; preds = %if.end117.sw.bb202_crit_edge, %if.end117.sw.bb202_crit_edge430
  %spec.select420.v = select i1 %tobool135.not, i32 8, i32 131336
  %spec.select420 = or i32 %cntl.1, %spec.select420.v
  br label %sw.epilog

sw.bb210:                                         ; preds = %if.end117.sw.bb210_crit_edge, %if.end117.sw.bb210_crit_edge431
  br i1 %tobool135.not, label %if.else217, label %if.then215

if.then215:                                       ; preds = %sw.bb210
  call void @__sanitizer_cov_trace_pc() #7
  %or216 = or i32 %cntl.1, 131080
  br label %sw.epilog

if.else217:                                       ; preds = %sw.bb210
  call void @__sanitizer_cov_trace_pc() #7
  %or218 = or i32 %cntl.1, 264
  br label %sw.epilog

sw.bb220:                                         ; preds = %if.end117.sw.bb220_crit_edge, %if.end117.sw.bb220_crit_edge432
  %spec.select421.v = select i1 %tobool135.not, i32 14, i32 270
  %spec.select421 = or i32 %cntl.1, %spec.select421.v
  br label %sw.epilog

sw.bb228:                                         ; preds = %if.end117.sw.bb228_crit_edge, %if.end117.sw.bb228_crit_edge433
  br i1 %tobool135.not, label %if.else235, label %if.then233

if.then233:                                       ; preds = %sw.bb228
  call void @__sanitizer_cov_trace_pc() #7
  %or229 = or i32 %cntl.1, 14
  br label %sw.epilog

if.else235:                                       ; preds = %sw.bb228
  call void @__sanitizer_cov_trace_pc() #7
  %or236 = or i32 %cntl.1, 270
  br label %sw.epilog

land.end:                                         ; preds = %if.end117
  %.b413 = load i1, ptr @pl111_display_enable.__already_done, align 1
  br i1 %.b413, label %land.end.sw.epilog_crit_edge, label %if.then244, !prof !49

land.end.sw.epilog_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then244:                                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @pl111_display_enable.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.12, i32 noundef %92) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then244, %land.end.sw.epilog_crit_edge, %if.else235, %if.then233, %sw.bb220, %if.else217, %if.then215, %sw.bb202, %if.else198, %if.then196, %if.then190, %if.else182, %if.then180, %if.then174, %if.else168, %if.then166, %if.else159, %if.then157, %sw.bb146, %sw.bb
  %cntl.2 = phi i32 [ %or229, %if.then233 ], [ %or236, %if.else235 ], [ %or216, %if.then215 ], [ %or218, %if.else217 ], [ %or191, %if.then190 ], [ %or197, %if.then196 ], [ %or199, %if.else198 ], [ %or175, %if.then174 ], [ %or181, %if.then180 ], [ %or183, %if.else182 ], [ %or167, %if.then166 ], [ %or169, %if.else168 ], [ %or158, %if.then157 ], [ %or160, %if.else159 ], [ %spec.select418, %sw.bb ], [ %spec.select419, %sw.bb146 ], [ %spec.select420, %sw.bb202 ], [ %spec.select421, %sw.bb220 ], [ %cntl.1, %if.then244 ], [ %cntl.1, %land.end.sw.epilog_crit_edge ]
  %98 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %variant, align 4
  %external_bgr = getelementptr inbounds %struct.pl111_variant_data, ptr %99, i32 0, i32 3
  %100 = ptrtoint ptr %external_bgr to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %external_bgr, align 2, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool281.not = icmp eq i8 %101, 0
  %and283 = and i32 %cntl.2, -257
  %spec.select422 = select i1 %tobool281.not, i32 %cntl.2, i32 %and283
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !58
  tail call void @arm_heavy_mb() #5
  %102 = tail call i32 @llvm.bswap.i32(i32 %spec.select422)
  %103 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %regs, align 8
  %ctrl = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %3, i32 0, i32 8
  %105 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %ctrl, align 4
  %add.ptr289 = getelementptr i8, ptr %104, i32 %106
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr289, i32 %102) #5, !srcloc !43
  tail call void @msleep(i32 noundef 20) #5
  %variant_display_enable = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %3, i32 0, i32 13
  %107 = ptrtoint ptr %variant_display_enable to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %variant_display_enable, align 8
  %tobool290.not = icmp eq ptr %108, null
  br i1 %tobool290.not, label %sw.epilog.if.end295_crit_edge, label %if.then291

sw.epilog.if.end295_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end295

if.then291:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %109 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %format, align 8
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %110, align 4
  tail call void %108(ptr noundef %1, i32 noundef %112) #5
  br label %if.end295

if.end295:                                        ; preds = %if.then291, %sw.epilog.if.end295_crit_edge
  %or296 = or i32 %spec.select422, 2048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !59
  tail call void @arm_heavy_mb() #5
  %113 = tail call i32 @llvm.bswap.i32(i32 %or296)
  %114 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %regs, align 8
  %116 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %ctrl, align 4
  %add.ptr302 = getelementptr i8, ptr %115, i32 %117
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr302, i32 %113) #5, !srcloc !43
  %118 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %variant, align 4
  %broken_vblank = getelementptr inbounds %struct.pl111_variant_data, ptr %119, i32 0, i32 5
  %120 = ptrtoint ptr %broken_vblank to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %broken_vblank, align 4, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %tobool304.not = icmp eq i8 %121, 0
  br i1 %tobool304.not, label %if.then305, label %if.end295.if.end306_crit_edge

if.end295.if.end306_crit_edge:                    ; preds = %if.end295
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end306

if.then305:                                       ; preds = %if.end295
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @drm_crtc_vblank_on(ptr noundef %pipe) #5
  br label %if.end306

if.end306:                                        ; preds = %if.then305, %if.end295.if.end306_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pl111_display_disable(ptr noundef %pipe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private, align 4
  %variant = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %3, i32 0, i32 12
  %4 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %variant, align 4
  %broken_vblank = getelementptr inbounds %struct.pl111_variant_data, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %broken_vblank to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %broken_vblank, align 4, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @drm_crtc_vblank_off(ptr noundef %pipe) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %regs = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %3, i32 0, i32 5
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 8
  %ctrl = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %3, i32 0, i32 8
  %10 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ctrl, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 %11
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !40
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  %and = and i32 %13, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end.if.end9_crit_edge, label %if.then4

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %and5 = and i32 %13, -2049
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %14 = tail call i32 @llvm.bswap.i32(i32 %and5)
  %15 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs, align 8
  %17 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ctrl, align 4
  %add.ptr8 = getelementptr i8, ptr %16, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %14) #5, !srcloc !43
  br label %if.end9

if.end9:                                          ; preds = %if.then4, %if.end.if.end9_crit_edge
  tail call void @msleep(i32 noundef 20) #5
  %variant_display_disable = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %3, i32 0, i32 14
  %19 = ptrtoint ptr %variant_display_disable to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %variant_display_disable, align 4
  %tobool10.not = icmp eq ptr %20, null
  br i1 %tobool10.not, label %if.end9.do.body14_crit_edge, label %if.then11

if.end9.do.body14_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body14

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %20(ptr noundef %1) #5
  br label %do.body14

do.body14:                                        ; preds = %if.then11, %if.end9.do.body14_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  tail call void @arm_heavy_mb() #5
  %21 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs, align 8
  %23 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ctrl, align 4
  %add.ptr19 = getelementptr i8, ptr %22, i32 %24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 0) #5, !srcloc !43
  %clk = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %3, i32 0, i32 9
  %25 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %clk, align 8
  tail call void @clk_disable(ptr noundef %26) #5
  tail call void @clk_unprepare(ptr noundef %26) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl111_display_check(ptr nocapture noundef readonly %pipe, ptr noundef %pstate, ptr nocapture noundef %cstate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  %8 = and i16 %7, 15
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool.not = icmp eq i16 %8, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup24_crit_edge

entry.cleanup24_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup24

if.end:                                           ; preds = %entry
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %if.end.cleanup24_crit_edge, label %if.then5

if.end.cleanup24_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup24

if.then5:                                         ; preds = %if.end
  %call = tail call i32 @drm_fb_cma_get_gem_addr(ptr noundef nonnull %5, ptr noundef %pstate, i32 noundef 0) #5
  %and = and i32 %call, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.end8, label %if.then5.cleanup24_crit_edge

if.then5.cleanup24_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup24

if.end8:                                          ; preds = %if.then5
  %pitches = getelementptr inbounds %struct.drm_framebuffer, ptr %5, i32 0, i32 6
  %9 = ptrtoint ptr %pitches to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pitches, align 8
  %11 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %hdisplay, align 4
  %conv10 = zext i16 %12 to i32
  %format = getelementptr inbounds %struct.drm_framebuffer, ptr %5, i32 0, i32 4
  %13 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %format, align 8
  %15 = getelementptr inbounds %struct.drm_format_info, ptr %14, i32 0, i32 3
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %15, align 2
  %conv12 = zext i8 %17 to i32
  %mul = mul nuw nsw i32 %conv12, %conv10
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %mul)
  %cmp.not = icmp eq i32 %10, %mul
  br i1 %cmp.not, label %if.end15, label %if.end8.cleanup24_crit_edge

if.end8.cleanup24_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup24

if.end15:                                         ; preds = %if.end8
  %tobool16.not = icmp eq ptr %3, null
  br i1 %tobool16.not, label %if.end15.cleanup24_crit_edge, label %land.lhs.true

if.end15.cleanup24_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup24

land.lhs.true:                                    ; preds = %if.end15
  %format17 = getelementptr inbounds %struct.drm_framebuffer, ptr %3, i32 0, i32 4
  %18 = ptrtoint ptr %format17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %format17, align 8
  %cmp19.not = icmp eq ptr %19, %14
  br i1 %cmp19.not, label %land.lhs.true.cleanup24_crit_edge, label %if.then21

land.lhs.true.cleanup24_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup24

if.then21:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %mode_changed = getelementptr inbounds %struct.drm_crtc_state, ptr %cstate, i32 0, i32 3
  %20 = ptrtoint ptr %mode_changed to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load = load i8, ptr %mode_changed, align 2
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %mode_changed, align 2
  br label %cleanup24

cleanup24:                                        ; preds = %if.then21, %land.lhs.true.cleanup24_crit_edge, %if.end15.cleanup24_crit_edge, %if.end8.cleanup24_crit_edge, %if.then5.cleanup24_crit_edge, %if.end.cleanup24_crit_edge, %entry.cleanup24_crit_edge
  %retval.1 = phi i32 [ -22, %entry.cleanup24_crit_edge ], [ 0, %if.then21 ], [ 0, %land.lhs.true.cleanup24_crit_edge ], [ 0, %if.end15.cleanup24_crit_edge ], [ 0, %if.end.cleanup24_crit_edge ], [ -22, %if.then5.cleanup24_crit_edge ], [ -22, %if.end8.cleanup24_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pl111_display_update(ptr noundef %pipe, ptr nocapture noundef readnone %old_pstate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pipe, align 8
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_private, align 4
  %call = tail call i32 @drm_fb_cma_get_gem_addr(ptr noundef nonnull %7, ptr noundef %5, i32 noundef 0) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !63
  tail call void @arm_heavy_mb() #5
  %12 = tail call i32 @llvm.bswap.i32(i32 %call)
  %regs = getelementptr inbounds %struct.pl111_drm_dev_private, ptr %11, i32 0, i32 5
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %14, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %12) #5, !srcloc !43
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tobool6.not = icmp eq ptr %3, null
  br i1 %tobool6.not, label %if.end.if.end18_crit_edge, label %if.then7

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.then7:                                         ; preds = %if.end
  %15 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %state, align 4
  %event9 = getelementptr inbounds %struct.drm_crtc_state, ptr %16, i32 0, i32 18
  %17 = ptrtoint ptr %event9 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %event9, align 4
  %18 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pipe, align 8
  %event_lock = getelementptr inbounds %struct.drm_device, ptr %19, i32 0, i32 28
  tail call void @_raw_spin_lock_irq(ptr noundef %event_lock) #5
  %20 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %state, align 4
  %active = getelementptr inbounds %struct.drm_crtc_state, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %active to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %active, align 1, !range !45
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool12.not = icmp eq i8 %23, 0
  br i1 %tobool12.not, label %if.then7.if.else_crit_edge, label %land.lhs.true

if.then7.if.else_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true:                                    ; preds = %if.then7
  %call13 = tail call i32 @drm_crtc_vblank_get(ptr noundef %pipe) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp = icmp eq i32 %call13, 0
  br i1 %cmp, label %if.then14, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then14:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @drm_crtc_arm_vblank_event(ptr noundef %pipe, ptr noundef nonnull %3) #5
  br label %if.end15

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.then7.if.else_crit_edge
  tail call void @drm_crtc_send_vblank_event(ptr noundef %pipe, ptr noundef nonnull %3) #5
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then14
  %24 = ptrtoint ptr %pipe to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pipe, align 8
  %event_lock17 = getelementptr inbounds %struct.drm_device, ptr %25, i32 0, i32 28
  tail call void @_raw_spin_unlock_irq(ptr noundef %event_lock17) #5
  br label %if.end18

if.end18:                                         ; preds = %if.end15, %if.end.if.end18_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_on(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_off(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_fb_cma_get_gem_addr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_vblank_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_arm_vblank_event(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_send_vblank_event(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !15, !17, !19, !21, !23, !25, !26, !27, !28, !30}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/pl111/pl111_display.c", i32 537, i32 46}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/pl111/pl111_display.c", i32 541, i32 11}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/pl111/pl111_display.c", i32 550, i32 3}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @pl111_init_clock_divider._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @pl111_init_clock_divider._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @pl111_init_clock_divider.__key, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/pl111/pl111_display.c", i32 554, i32 2}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @pl111_clk_div_ops, !16, !"pl111_clk_div_ops", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/pl111/pl111_display.c", i32 527, i32 29}
!17 = !{ptr @pl111_display_funcs, !18, !"pl111_display_funcs", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/pl111/pl111_display.c", i32 436, i32 45}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/pl111/pl111_display.c", i32 70, i32 3}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/pl111/pl111_display.c", i32 76, i32 2}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/pl111/pl111_display.c", i32 138, i32 3}
!25 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @pl111_display_enable._entry, !24, !"_entry", i1 false, i1 false}
!27 = !{ptr @pl111_display_enable._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!28 = distinct !{null, !29, !"__already_done", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/pl111/pl111_display.c", i32 326, i32 3}
!30 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!40 = !{i64 3113127}
!41 = !{i64 2156911898}
!42 = !{i64 2156912216}
!43 = !{i64 3112709}
!44 = !{!"auto-init"}
!45 = !{i8 0, i8 2}
!46 = !{i64 2156925929}
!47 = !{i64 2156926400}
!48 = !{i64 2156944131}
!49 = !{!"branch_weights", i32 2000, i32 1}
!50 = !{i64 2148644299, i64 2148644579, i64 2148644913, i64 2148645247}
!51 = !{i64 2156952553}
!52 = !{i64 2156954850}
!53 = !{i64 2156914850}
!54 = !{i64 2156915544}
!55 = !{i64 2156916444}
!56 = !{i64 2156918816}
!57 = !{i64 2156919229}
!58 = !{i64 2156923248}
!59 = !{i64 2156923663}
!60 = !{i64 2156924357}
!61 = !{i64 2156924598}
!62 = !{i64 2156925000}
!63 = !{i64 2156925407}
