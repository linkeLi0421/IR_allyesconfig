; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/mgag200/mgag200_pll.c_pt.bc'
source_filename = "../drivers/gpu/drm/mgag200/mgag200_pll.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mgag200_pll_funcs = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.mga_device = type { %struct.drm_device, i32, i32, i32, ptr, %struct.mga_mc, ptr, i32, i32, %union.anon.89, %struct.mga_connector, %struct.mgag200_pll, %struct.drm_simple_display_pipe }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.88, ptr, i32, ptr, i8, i32 }
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
%struct.anon.88 = type { i32, ptr }
%struct.mga_mc = type { i32, i32, i32 }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i32, i32, i32 }
%struct.mga_connector = type { %struct.drm_connector, ptr }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.86 }
%union.anon.86 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.mgag200_pll = type { ptr, ptr }
%struct.drm_simple_display_pipe = type { %struct.drm_crtc, %struct.drm_plane, %struct.drm_encoder, ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.mgag200_pll_values = type { i32, i32, i32, i32 }

@mgag200_pixpll_funcs_g200 = internal constant { %struct.mgag200_pll_funcs, [24 x i8] } { %struct.mgag200_pll_funcs { ptr @mgag200_pixpll_compute_g200, ptr @mgag200_pixpll_update_g200 }, [24 x i8] zeroinitializer }, align 32
@mgag200_pixpll_funcs_g200se_04 = internal constant { %struct.mgag200_pll_funcs, [24 x i8] } { %struct.mgag200_pll_funcs { ptr @mgag200_pixpll_compute_g200se_04, ptr @mgag200_pixpll_update_g200se_04 }, [24 x i8] zeroinitializer }, align 32
@mgag200_pixpll_funcs_g200se_00 = internal constant { %struct.mgag200_pll_funcs, [24 x i8] } { %struct.mgag200_pll_funcs { ptr @mgag200_pixpll_compute_g200se_00, ptr @mgag200_pixpll_update_g200se_00 }, [24 x i8] zeroinitializer }, align 32
@mgag200_pixpll_funcs_g200wb = internal constant { %struct.mgag200_pll_funcs, [24 x i8] } { %struct.mgag200_pll_funcs { ptr @mgag200_pixpll_compute_g200wb, ptr @mgag200_pixpll_update_g200wb }, [24 x i8] zeroinitializer }, align 32
@mgag200_pixpll_funcs_g200ev = internal constant { %struct.mgag200_pll_funcs, [24 x i8] } { %struct.mgag200_pll_funcs { ptr @mgag200_pixpll_compute_g200ev, ptr @mgag200_pixpll_update_g200ev }, [24 x i8] zeroinitializer }, align 32
@mgag200_pixpll_funcs_g200eh = internal constant { %struct.mgag200_pll_funcs, [24 x i8] } { %struct.mgag200_pll_funcs { ptr @mgag200_pixpll_compute_g200eh, ptr @mgag200_pixpll_update_g200eh }, [24 x i8] zeroinitializer }, align 32
@mgag200_pixpll_funcs_g200eh3 = internal constant { %struct.mgag200_pll_funcs, [24 x i8] } { %struct.mgag200_pll_funcs { ptr @mgag200_pixpll_compute_g200eh3, ptr @mgag200_pixpll_update_g200eh }, [24 x i8] zeroinitializer }, align 32
@mgag200_pixpll_funcs_g200er = internal constant { %struct.mgag200_pll_funcs, [24 x i8] } { %struct.mgag200_pll_funcs { ptr @mgag200_pixpll_compute_g200er, ptr @mgag200_pixpll_update_g200er }, [24 x i8] zeroinitializer }, align 32
@mgag200_pixpll_funcs_g200ew3 = internal constant { %struct.mgag200_pll_funcs, [24 x i8] } { %struct.mgag200_pll_funcs { ptr @mgag200_pixpll_compute_g200ew3, ptr @mgag200_pixpll_update_g200wb }, [24 x i8] zeroinitializer }, align 32
@mgag200_pixpll_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 988, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"[drm] *ERROR* unknown device type %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mgag200_pixpll_init\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/gpu/drm/mgag200/mgag200_pll.c\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mgag200_pixpll_init._entry_ptr = internal global ptr @mgag200_pixpll_init._entry, section ".printk_index", align 4
@mgag200_pixpll_compute_g200._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 31, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"[drm] *ERROR* Pixel Clock %ld too high\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mgag200_pixpll_compute_g200\00", [36 x i8] zeroinitializer }, align 32
@mgag200_pixpll_compute_g200._entry_ptr = internal global ptr @mgag200_pixpll_compute_g200._entry, section ".printk_index", align 4
@.str.7 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"clock: %ld vco: %ld m: %d n: %d p: %d s: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@mgag200_pixpll_compute_g200se_04.pvalues_e4 = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 16, i32 14, i32 12, i32 10, i32 8, i32 6, i32 4, i32 2, i32 1], [60 x i8] zeroinitializer }, align 32
@mgag200_pixpll_compute_g200se_04._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 247, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\014PLL delta too large\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"mgag200_pixpll_compute_g200se_04\00", [63 x i8] zeroinitializer }, align 32
@mgag200_pixpll_compute_g200se_04._entry_ptr = internal global ptr @mgag200_pixpll_compute_g200se_04._entry, section ".printk_index", align 4
@mgag200_pixpll_compute_g200se_00._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.10, ptr @.str.2, i32 154, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"mgag200_pixpll_compute_g200se_00\00", [63 x i8] zeroinitializer }, align 32
@mgag200_pixpll_compute_g200se_00._entry_ptr = internal global ptr @mgag200_pixpll_compute_g200se_00._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@mgag200_pixpll_compute_g200er.m_div_val = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 2, i32 4, i32 8], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [12 x i64] [i64 10, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@___asan_gen_.11 = private unnamed_addr constant [26 x i8] c"mgag200_pixpll_funcs_g200\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 105, i32 39 }
@___asan_gen_.14 = private unnamed_addr constant [31 x i8] c"mgag200_pixpll_funcs_g200se_04\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 291, i32 39 }
@___asan_gen_.17 = private unnamed_addr constant [31 x i8] c"mgag200_pixpll_funcs_g200se_00\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 286, i32 39 }
@___asan_gen_.20 = private unnamed_addr constant [28 x i8] c"mgag200_pixpll_funcs_g200wb\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 464, i32 39 }
@___asan_gen_.23 = private unnamed_addr constant [28 x i8] c"mgag200_pixpll_funcs_g200ev\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 589, i32 39 }
@___asan_gen_.26 = private unnamed_addr constant [28 x i8] c"mgag200_pixpll_funcs_g200eh\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 713, i32 39 }
@___asan_gen_.29 = private unnamed_addr constant [29 x i8] c"mgag200_pixpll_funcs_g200eh3\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 770, i32 39 }
@___asan_gen_.32 = private unnamed_addr constant [28 x i8] c"mgag200_pixpll_funcs_g200er\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 883, i32 39 }
@___asan_gen_.35 = private unnamed_addr constant [29 x i8] c"mgag200_pixpll_funcs_g200ew3\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 942, i32 39 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 988, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 31, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 71, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant [11 x i8] c"pvalues_e4\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 195, i32 28 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 247, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 154, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant [10 x i8] c"m_div_val\00", align 1
@___asan_gen_.87 = private constant [41 x i8] c"../drivers/gpu/drm/mgag200/mgag200_pll.c\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 785, i32 28 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @mgag200_pixpll_compute_g200._entry, ptr @mgag200_pixpll_compute_g200._entry_ptr, ptr @mgag200_pixpll_compute_g200se_00._entry, ptr @mgag200_pixpll_compute_g200se_00._entry_ptr, ptr @mgag200_pixpll_compute_g200se_04._entry, ptr @mgag200_pixpll_compute_g200se_04._entry_ptr, ptr @mgag200_pixpll_init._entry, ptr @mgag200_pixpll_init._entry_ptr, ptr @mgag200_pixpll_funcs_g200, ptr @mgag200_pixpll_funcs_g200se_04, ptr @mgag200_pixpll_funcs_g200se_00, ptr @mgag200_pixpll_funcs_g200wb, ptr @mgag200_pixpll_funcs_g200ev, ptr @mgag200_pixpll_funcs_g200eh, ptr @mgag200_pixpll_funcs_g200eh3, ptr @mgag200_pixpll_funcs_g200er, ptr @mgag200_pixpll_funcs_g200ew3, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @mgag200_pixpll_compute_g200se_04.pvalues_e4, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @mgag200_pixpll_compute_g200er.m_div_val], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgag200_pixpll_funcs_g200 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgag200_pixpll_funcs_g200se_04 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgag200_pixpll_funcs_g200se_00 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgag200_pixpll_funcs_g200wb to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgag200_pixpll_funcs_g200ev to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgag200_pixpll_funcs_g200eh to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgag200_pixpll_funcs_g200eh3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgag200_pixpll_funcs_g200er to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgag200_pixpll_funcs_g200ew3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgag200_pixpll_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgag200_pixpll_compute_g200._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgag200_pixpll_compute_g200se_04.pvalues_e4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgag200_pixpll_compute_g200se_04._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgag200_pixpll_compute_g200se_00._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mgag200_pixpll_compute_g200er.m_div_val to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mgag200_pixpll_init(ptr nocapture noundef writeonly %pixpll, ptr noundef %mdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pixpll to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %mdev, ptr %pixpll, align 4
  %type = getelementptr inbounds %struct.mga_device, ptr %mdev, i32 0, i32 8
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %type, align 8
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %2, label %do.end [
    i32 0, label %entry.sw.bb_crit_edge
    i32 1, label %entry.sw.bb_crit_edge32
    i32 2, label %entry.sw.bb2_crit_edge
    i32 3, label %entry.sw.bb2_crit_edge33
    i32 4, label %sw.bb5
    i32 5, label %sw.bb7
    i32 6, label %sw.bb9
    i32 7, label %sw.bb11
    i32 8, label %sw.bb13
    i32 9, label %sw.bb15
  ]

entry.sw.bb2_crit_edge33:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb2

entry.sw.bb_crit_edge32:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge32
  %funcs = getelementptr inbounds %struct.mgag200_pll, ptr %pixpll, i32 0, i32 1
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @mgag200_pixpll_funcs_g200, ptr %funcs, align 4
  br label %cleanup

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge33
  %model = getelementptr inbounds %struct.mga_device, ptr %mdev, i32 0, i32 9
  %5 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %model, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %cmp = icmp ugt i32 %6, 3
  %funcs3 = getelementptr inbounds %struct.mgag200_pll, ptr %pixpll, i32 0, i32 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %funcs3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @mgag200_pixpll_funcs_g200se_04, ptr %funcs3, align 4
  br label %cleanup

if.else:                                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %funcs3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @mgag200_pixpll_funcs_g200se_00, ptr %funcs3, align 4
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %funcs6 = getelementptr inbounds %struct.mgag200_pll, ptr %pixpll, i32 0, i32 1
  %9 = ptrtoint ptr %funcs6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @mgag200_pixpll_funcs_g200wb, ptr %funcs6, align 4
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %funcs8 = getelementptr inbounds %struct.mgag200_pll, ptr %pixpll, i32 0, i32 1
  %10 = ptrtoint ptr %funcs8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @mgag200_pixpll_funcs_g200ev, ptr %funcs8, align 4
  br label %cleanup

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %funcs10 = getelementptr inbounds %struct.mgag200_pll, ptr %pixpll, i32 0, i32 1
  %11 = ptrtoint ptr %funcs10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @mgag200_pixpll_funcs_g200eh, ptr %funcs10, align 4
  br label %cleanup

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %funcs12 = getelementptr inbounds %struct.mgag200_pll, ptr %pixpll, i32 0, i32 1
  %12 = ptrtoint ptr %funcs12 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @mgag200_pixpll_funcs_g200eh3, ptr %funcs12, align 4
  br label %cleanup

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %funcs14 = getelementptr inbounds %struct.mgag200_pll, ptr %pixpll, i32 0, i32 1
  %13 = ptrtoint ptr %funcs14 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @mgag200_pixpll_funcs_g200er, ptr %funcs14, align 4
  br label %cleanup

sw.bb15:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %funcs16 = getelementptr inbounds %struct.mgag200_pll, ptr %pixpll, i32 0, i32 1
  %14 = ptrtoint ptr %funcs16 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @mgag200_pixpll_funcs_g200ew3, ptr %funcs16, align 4
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev17 = getelementptr inbounds %struct.drm_device, ptr %mdev, i32 0, i32 2
  %15 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev17, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str, i32 noundef %2) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb15, %sw.bb13, %sw.bb11, %sw.bb9, %sw.bb7, %sw.bb5, %if.else, %if.then, %sw.bb
  %retval.0 = phi i32 [ -19, %do.end ], [ 0, %if.then ], [ 0, %if.else ], [ 0, %sw.bb15 ], [ 0, %sw.bb13 ], [ 0, %sw.bb11 ], [ 0, %sw.bb9 ], [ 0, %sw.bb7 ], [ 0, %sw.bb5 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mgag200_pixpll_compute_g200(ptr nocapture noundef readonly %pixpll, i32 noundef %clock, ptr nocapture noundef writeonly %pixpllc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pixpll to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pixpll, align 4
  %model = getelementptr inbounds %struct.mga_device, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %model to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %model, align 4
  %pclk_min = getelementptr inbounds %struct.mga_device, ptr %1, i32 0, i32 9, i32 0, i32 1
  %4 = ptrtoint ptr %pclk_min to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pclk_min, align 4
  %pclk_max = getelementptr inbounds %struct.mga_device, ptr %1, i32 0, i32 9, i32 0, i32 2
  %6 = ptrtoint ptr %pclk_max to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pclk_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %clock)
  %cmp = icmp slt i32 %7, %clock
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev5 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.5, i32 noundef %clock) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %shr = ashr i32 %5, 3
  %10 = tail call i32 @llvm.smax.i32(i32 %shr, i32 %clock)
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %5)
  %cmp12147 = icmp slt i32 %10, %5
  br i1 %cmp12147, label %for.inc, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc:                                          ; preds = %if.end
  %shl16 = shl i32 %10, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %shl16, i32 %5)
  %cmp12 = icmp slt i32 %shl16, %5
  br i1 %cmp12, label %for.inc.1, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.1:                                        ; preds = %for.inc
  %shl16.1 = shl i32 %10, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %shl16.1, i32 %5)
  %cmp12.1 = icmp slt i32 %shl16.1, %5
  br i1 %cmp12.1, label %for.inc.2, label %for.inc.1.for.end_crit_edge

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  %shl16.2 = shl i32 %10, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %shl16.2, i32 %5)
  %cmp12.2 = icmp slt i32 %shl16.2, %5
  %shl16.3 = shl i32 %10, 4
  %spec.select = select i1 %cmp12.2, i32 16, i32 8
  %spec.select180 = select i1 %cmp12.2, i32 %shl16.3, i32 %shl16.2
  br label %for.end

for.end:                                          ; preds = %for.inc.2, %for.inc.1.for.end_crit_edge, %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %testp.0.lcssa = phi i32 [ 1, %if.end.for.end_crit_edge ], [ 2, %for.inc.for.end_crit_edge ], [ 4, %for.inc.1.for.end_crit_edge ], [ %spec.select, %for.inc.2 ]
  %f_vco.0.lcssa = phi i32 [ %10, %if.end.for.end_crit_edge ], [ %shl16, %for.inc.for.end_crit_edge ], [ %shl16.1, %for.inc.1.for.end_crit_edge ], [ %spec.select180, %for.inc.2 ]
  br label %for.body29

for.body29:                                       ; preds = %for.body29.for.body29_crit_edge, %for.end
  %indvars.iv = phi i32 [ 7, %for.end ], [ %add31, %for.body29.for.body29_crit_edge ]
  %delta.1154 = phi i32 [ %10, %for.end ], [ %11, %for.body29.for.body29_crit_edge ]
  %m.1153 = phi i8 [ 0, %for.end ], [ %m.2, %for.body29.for.body29_crit_edge ]
  %n.1152 = phi i8 [ 0, %for.end ], [ %n.2, %for.body29.for.body29_crit_edge ]
  %add31 = add nuw nsw i32 %indvars.iv, 1
  %mul = mul i32 %add31, %3
  %div = sdiv i32 %mul, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %f_vco.0.lcssa)
  %cmp34 = icmp slt i32 %div, %f_vco.0.lcssa
  %sub = sub i32 %f_vco.0.lcssa, %div
  %sub37 = sub i32 %div, %f_vco.0.lcssa
  %tmp_delta.0 = select i1 %cmp34, i32 %sub, i32 %sub37
  call void @__sanitizer_cov_trace_cmp4(i32 %tmp_delta.0, i32 %delta.1154)
  %cmp39 = icmp slt i32 %tmp_delta.0, %delta.1154
  %conv47 = trunc i32 %add31 to i8
  %n.2 = select i1 %cmp39, i8 %conv47, i8 %n.1152
  %m.2 = select i1 %cmp39, i8 2, i8 %m.1153
  %11 = tail call i32 @llvm.smin.i32(i32 %tmp_delta.0, i32 %delta.1154)
  %exitcond.not = icmp eq i32 %add31, 128
  br i1 %exitcond.not, label %for.body29.for.body29.1_crit_edge, label %for.body29.for.body29_crit_edge

for.body29.for.body29_crit_edge:                  ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body29

for.body29.for.body29.1_crit_edge:                ; preds = %for.body29
  br label %for.body29.1

for.body29.1:                                     ; preds = %for.body29.1.for.body29.1_crit_edge, %for.body29.for.body29.1_crit_edge
  %indvars.iv.1 = phi i32 [ %add31.1, %for.body29.1.for.body29.1_crit_edge ], [ 7, %for.body29.for.body29.1_crit_edge ]
  %delta.1154.1 = phi i32 [ %12, %for.body29.1.for.body29.1_crit_edge ], [ %11, %for.body29.for.body29.1_crit_edge ]
  %m.1153.1 = phi i8 [ %m.2.1, %for.body29.1.for.body29.1_crit_edge ], [ %m.2, %for.body29.for.body29.1_crit_edge ]
  %n.1152.1 = phi i8 [ %n.2.1, %for.body29.1.for.body29.1_crit_edge ], [ %n.2, %for.body29.for.body29.1_crit_edge ]
  %add31.1 = add nuw nsw i32 %indvars.iv.1, 1
  %mul.1 = mul i32 %add31.1, %3
  %div.1 = sdiv i32 %mul.1, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %div.1, i32 %f_vco.0.lcssa)
  %cmp34.1 = icmp slt i32 %div.1, %f_vco.0.lcssa
  %sub.1 = sub i32 %f_vco.0.lcssa, %div.1
  %sub37.1 = sub i32 %div.1, %f_vco.0.lcssa
  %tmp_delta.0.1 = select i1 %cmp34.1, i32 %sub.1, i32 %sub37.1
  call void @__sanitizer_cov_trace_cmp4(i32 %tmp_delta.0.1, i32 %delta.1154.1)
  %cmp39.1 = icmp slt i32 %tmp_delta.0.1, %delta.1154.1
  %conv47.1 = trunc i32 %add31.1 to i8
  %n.2.1 = select i1 %cmp39.1, i8 %conv47.1, i8 %n.1152.1
  %m.2.1 = select i1 %cmp39.1, i8 3, i8 %m.1153.1
  %12 = tail call i32 @llvm.smin.i32(i32 %tmp_delta.0.1, i32 %delta.1154.1)
  %exitcond.1.not = icmp eq i32 %add31.1, 128
  br i1 %exitcond.1.not, label %for.body29.1.for.body29.2_crit_edge, label %for.body29.1.for.body29.1_crit_edge

for.body29.1.for.body29.1_crit_edge:              ; preds = %for.body29.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body29.1

for.body29.1.for.body29.2_crit_edge:              ; preds = %for.body29.1
  br label %for.body29.2

for.body29.2:                                     ; preds = %for.body29.2.for.body29.2_crit_edge, %for.body29.1.for.body29.2_crit_edge
  %indvars.iv.2 = phi i32 [ %add31.2, %for.body29.2.for.body29.2_crit_edge ], [ 7, %for.body29.1.for.body29.2_crit_edge ]
  %delta.1154.2 = phi i32 [ %13, %for.body29.2.for.body29.2_crit_edge ], [ %12, %for.body29.1.for.body29.2_crit_edge ]
  %m.1153.2 = phi i8 [ %m.2.2, %for.body29.2.for.body29.2_crit_edge ], [ %m.2.1, %for.body29.1.for.body29.2_crit_edge ]
  %n.1152.2 = phi i8 [ %n.2.2, %for.body29.2.for.body29.2_crit_edge ], [ %n.2.1, %for.body29.1.for.body29.2_crit_edge ]
  %add31.2 = add nuw nsw i32 %indvars.iv.2, 1
  %mul.2 = mul i32 %add31.2, %3
  %div.2 = sdiv i32 %mul.2, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.2, i32 %f_vco.0.lcssa)
  %cmp34.2 = icmp slt i32 %div.2, %f_vco.0.lcssa
  %sub.2 = sub i32 %f_vco.0.lcssa, %div.2
  %sub37.2 = sub i32 %div.2, %f_vco.0.lcssa
  %tmp_delta.0.2 = select i1 %cmp34.2, i32 %sub.2, i32 %sub37.2
  call void @__sanitizer_cov_trace_cmp4(i32 %tmp_delta.0.2, i32 %delta.1154.2)
  %cmp39.2 = icmp slt i32 %tmp_delta.0.2, %delta.1154.2
  %conv47.2 = trunc i32 %add31.2 to i8
  %n.2.2 = select i1 %cmp39.2, i8 %conv47.2, i8 %n.1152.2
  %m.2.2 = select i1 %cmp39.2, i8 4, i8 %m.1153.2
  %13 = tail call i32 @llvm.smin.i32(i32 %tmp_delta.0.2, i32 %delta.1154.2)
  %exitcond.2.not = icmp eq i32 %add31.2, 128
  br i1 %exitcond.2.not, label %for.body29.2.for.body29.3_crit_edge, label %for.body29.2.for.body29.2_crit_edge

for.body29.2.for.body29.2_crit_edge:              ; preds = %for.body29.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body29.2

for.body29.2.for.body29.3_crit_edge:              ; preds = %for.body29.2
  br label %for.body29.3

for.body29.3:                                     ; preds = %for.body29.3.for.body29.3_crit_edge, %for.body29.2.for.body29.3_crit_edge
  %indvars.iv.3 = phi i32 [ %add31.3, %for.body29.3.for.body29.3_crit_edge ], [ 7, %for.body29.2.for.body29.3_crit_edge ]
  %delta.1154.3 = phi i32 [ %14, %for.body29.3.for.body29.3_crit_edge ], [ %13, %for.body29.2.for.body29.3_crit_edge ]
  %m.1153.3 = phi i8 [ %m.2.3, %for.body29.3.for.body29.3_crit_edge ], [ %m.2.2, %for.body29.2.for.body29.3_crit_edge ]
  %n.1152.3 = phi i8 [ %n.2.3, %for.body29.3.for.body29.3_crit_edge ], [ %n.2.2, %for.body29.2.for.body29.3_crit_edge ]
  %add31.3 = add nuw nsw i32 %indvars.iv.3, 1
  %mul.3 = mul i32 %add31.3, %3
  %div.3 = sdiv i32 %mul.3, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %div.3, i32 %f_vco.0.lcssa)
  %cmp34.3 = icmp slt i32 %div.3, %f_vco.0.lcssa
  %sub.3 = sub i32 %f_vco.0.lcssa, %div.3
  %sub37.3 = sub i32 %div.3, %f_vco.0.lcssa
  %tmp_delta.0.3 = select i1 %cmp34.3, i32 %sub.3, i32 %sub37.3
  call void @__sanitizer_cov_trace_cmp4(i32 %tmp_delta.0.3, i32 %delta.1154.3)
  %cmp39.3 = icmp slt i32 %tmp_delta.0.3, %delta.1154.3
  %conv47.3 = trunc i32 %add31.3 to i8
  %n.2.3 = select i1 %cmp39.3, i8 %conv47.3, i8 %n.1152.3
  %m.2.3 = select i1 %cmp39.3, i8 5, i8 %m.1153.3
  %14 = tail call i32 @llvm.smin.i32(i32 %tmp_delta.0.3, i32 %delta.1154.3)
  %exitcond.3.not = icmp eq i32 %add31.3, 128
  br i1 %exitcond.3.not, label %for.body29.3.for.body29.4_crit_edge, label %for.body29.3.for.body29.3_crit_edge

for.body29.3.for.body29.3_crit_edge:              ; preds = %for.body29.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body29.3

for.body29.3.for.body29.4_crit_edge:              ; preds = %for.body29.3
  br label %for.body29.4

for.body29.4:                                     ; preds = %for.body29.4.for.body29.4_crit_edge, %for.body29.3.for.body29.4_crit_edge
  %indvars.iv.4 = phi i32 [ %add31.4, %for.body29.4.for.body29.4_crit_edge ], [ 7, %for.body29.3.for.body29.4_crit_edge ]
  %delta.1154.4 = phi i32 [ %15, %for.body29.4.for.body29.4_crit_edge ], [ %14, %for.body29.3.for.body29.4_crit_edge ]
  %m.1153.4 = phi i8 [ %m.2.4, %for.body29.4.for.body29.4_crit_edge ], [ %m.2.3, %for.body29.3.for.body29.4_crit_edge ]
  %n.1152.4 = phi i8 [ %n.2.4, %for.body29.4.for.body29.4_crit_edge ], [ %n.2.3, %for.body29.3.for.body29.4_crit_edge ]
  %add31.4 = add nuw nsw i32 %indvars.iv.4, 1
  %mul.4 = mul i32 %add31.4, %3
  %div.4 = sdiv i32 %mul.4, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %div.4, i32 %f_vco.0.lcssa)
  %cmp34.4 = icmp slt i32 %div.4, %f_vco.0.lcssa
  %sub.4 = sub i32 %f_vco.0.lcssa, %div.4
  %sub37.4 = sub i32 %div.4, %f_vco.0.lcssa
  %tmp_delta.0.4 = select i1 %cmp34.4, i32 %sub.4, i32 %sub37.4
  call void @__sanitizer_cov_trace_cmp4(i32 %tmp_delta.0.4, i32 %delta.1154.4)
  %cmp39.4 = icmp slt i32 %tmp_delta.0.4, %delta.1154.4
  %conv47.4 = trunc i32 %add31.4 to i8
  %n.2.4 = select i1 %cmp39.4, i8 %conv47.4, i8 %n.1152.4
  %m.2.4 = select i1 %cmp39.4, i8 6, i8 %m.1153.4
  %15 = tail call i32 @llvm.smin.i32(i32 %tmp_delta.0.4, i32 %delta.1154.4)
  %exitcond.4.not = icmp eq i32 %add31.4, 128
  br i1 %exitcond.4.not, label %for.body29.4.for.body29.5_crit_edge, label %for.body29.4.for.body29.4_crit_edge

for.body29.4.for.body29.4_crit_edge:              ; preds = %for.body29.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body29.4

for.body29.4.for.body29.5_crit_edge:              ; preds = %for.body29.4
  br label %for.body29.5

for.body29.5:                                     ; preds = %for.body29.5.for.body29.5_crit_edge, %for.body29.4.for.body29.5_crit_edge
  %indvars.iv.5 = phi i32 [ %add31.5, %for.body29.5.for.body29.5_crit_edge ], [ 7, %for.body29.4.for.body29.5_crit_edge ]
  %delta.1154.5 = phi i32 [ %16, %for.body29.5.for.body29.5_crit_edge ], [ %15, %for.body29.4.for.body29.5_crit_edge ]
  %m.1153.5 = phi i8 [ %m.2.5, %for.body29.5.for.body29.5_crit_edge ], [ %m.2.4, %for.body29.4.for.body29.5_crit_edge ]
  %n.1152.5 = phi i8 [ %n.2.5, %for.body29.5.for.body29.5_crit_edge ], [ %n.2.4, %for.body29.4.for.body29.5_crit_edge ]
  %add31.5 = add nuw nsw i32 %indvars.iv.5, 1
  %mul.5 = mul i32 %add31.5, %3
  %div.5 = sdiv i32 %mul.5, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %div.5, i32 %f_vco.0.lcssa)
  %cmp34.5 = icmp slt i32 %div.5, %f_vco.0.lcssa
  %sub.5 = sub i32 %f_vco.0.lcssa, %div.5
  %sub37.5 = sub i32 %div.5, %f_vco.0.lcssa
  %tmp_delta.0.5 = select i1 %cmp34.5, i32 %sub.5, i32 %sub37.5
  call void @__sanitizer_cov_trace_cmp4(i32 %tmp_delta.0.5, i32 %delta.1154.5)
  %cmp39.5 = icmp slt i32 %tmp_delta.0.5, %delta.1154.5
  %conv47.5 = trunc i32 %add31.5 to i8
  %n.2.5 = select i1 %cmp39.5, i8 %conv47.5, i8 %n.1152.5
  %m.2.5 = select i1 %cmp39.5, i8 7, i8 %m.1153.5
  %16 = tail call i32 @llvm.smin.i32(i32 %tmp_delta.0.5, i32 %delta.1154.5)
  %exitcond.5.not = icmp eq i32 %add31.5, 128
  br i1 %exitcond.5.not, label %for.inc51.5, label %for.body29.5.for.body29.5_crit_edge

for.body29.5.for.body29.5_crit_edge:              ; preds = %for.body29.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body29.5

for.inc51.5:                                      ; preds = %for.body29.5
  %conv54 = zext i8 %n.2.5 to i32
  %mul55 = mul i32 %3, %conv54
  %conv56 = zext i8 %m.2.5 to i32
  %div57 = sdiv i32 %mul55, %conv56
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %div57)
  %cmp58 = icmp slt i32 %div57, 100000
  br i1 %cmp58, label %for.inc51.5.if.end72_crit_edge, label %if.else61

for.inc51.5.if.end72_crit_edge:                   ; preds = %for.inc51.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end72

if.else61:                                        ; preds = %for.inc51.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 140000, i32 %div57)
  %cmp62 = icmp ult i32 %div57, 140000
  br i1 %cmp62, label %if.else61.if.end72_crit_edge, label %if.else65

if.else61.if.end72_crit_edge:                     ; preds = %if.else61
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end72

if.else65:                                        ; preds = %if.else61
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 180000, i32 %div57)
  %cmp66 = icmp ult i32 %div57, 180000
  %. = select i1 %cmp66, i32 2, i32 3
  br label %if.end72

if.end72:                                         ; preds = %if.else65, %if.else61.if.end72_crit_edge, %for.inc51.5.if.end72_crit_edge
  %s.0 = phi i32 [ 0, %for.inc51.5.if.end72_crit_edge ], [ 1, %if.else61.if.end72_crit_edge ], [ %., %if.else65 ]
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end72.cond.end_crit_edge, label %cond.true

if.end72.cond.end_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.true:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #7
  %dev73 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %dev73 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev73, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end72.cond.end_crit_edge
  %cond = phi ptr [ %18, %cond.true ], [ null, %if.end72.cond.end_crit_edge ]
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %cond, i32 noundef 4, ptr noundef nonnull @.str.7, i32 noundef %10, i32 noundef %div57, i32 noundef %conv56, i32 noundef %conv54, i32 noundef %testp.0.lcssa, i32 noundef %s.0) #5
  %19 = ptrtoint ptr %pixpllc to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv56, ptr %pixpllc, align 4
  %n81 = getelementptr inbounds %struct.mgag200_pll_values, ptr %pixpllc, i32 0, i32 1
  %20 = ptrtoint ptr %n81 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv54, ptr %n81, align 4
  %p83 = getelementptr inbounds %struct.mgag200_pll_values, ptr %pixpllc, i32 0, i32 2
  %21 = ptrtoint ptr %p83 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %testp.0.lcssa, ptr %p83, align 4
  %s85 = getelementptr inbounds %struct.mgag200_pll_values, ptr %pixpllc, i32 0, i32 3
  %22 = ptrtoint ptr %s85 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %s.0, ptr %s85, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %cond.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mgag200_pixpll_update_g200(ptr nocapture noundef readonly %pixpll, ptr nocapture noundef readonly %pixpllc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pixpll to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pixpll, align 4
  %2 = ptrtoint ptr %pixpllc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pixpllc, align 4
  %n = getelementptr inbounds %struct.mgag200_pll_values, ptr %pixpllc, i32 0, i32 1
  %4 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n, align 4
  %p = getelementptr inbounds %struct.mgag200_pll_values, ptr %pixpllc, i32 0, i32 2
  %6 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %p, align 4
  %sub3 = add i32 %7, 255
  %s = getelementptr inbounds %struct.mgag200_pll_values, ptr %pixpllc, i32 0, i32 3
  %8 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s, align 4
  %10 = trunc i32 %3 to i8
  %conv = add i8 %10, -1
  %11 = trunc i32 %5 to i8
  %conv4 = add i8 %11, -1
  %shl = shl i32 %9, 3
  %or = or i32 %shl, %sub3
  %conv5 = trunc i32 %or to i8
  %rmmio = getelementptr inbounds %struct.mga_device, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rmmio, align 8
  %add.ptr = getelementptr i8, ptr %13, i32 8140
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  %15 = or i8 %14, 12
  %16 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rmmio, align 8
  %add.ptr15 = getelementptr i8, ptr %17, i32 8130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr15, i8 %15) #5, !srcloc !106
  %18 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rmmio, align 8
  %add.ptr18 = getelementptr i8, ptr %19, i32 15360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr18, i8 76) #5, !srcloc !106
  %20 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rmmio, align 8
  %add.ptr20 = getelementptr i8, ptr %21, i32 15370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr20, i8 %conv) #5, !srcloc !106
  %22 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rmmio, align 8
  %add.ptr25 = getelementptr i8, ptr %23, i32 15360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr25, i8 77) #5, !srcloc !106
  %24 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rmmio, align 8
  %add.ptr27 = getelementptr i8, ptr %25, i32 15370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr27, i8 %conv4) #5, !srcloc !106
  %26 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rmmio, align 8
  %add.ptr32 = getelementptr i8, ptr %27, i32 15360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr32, i8 78) #5, !srcloc !106
  %28 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rmmio, align 8
  %add.ptr34 = getelementptr i8, ptr %29, i32 15370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr34, i8 %conv5) #5, !srcloc !106
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mgag200_pixpll_compute_g200se_04(ptr nocapture noundef readnone %pixpll, i32 noundef %clock, ptr nocapture noundef writeonly %pixpllc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.smax.i32(i32 %clock, i32 25000)
  %mul = shl nuw i32 %0, 1
  %mul1 = mul i32 %0, 10
  br label %for.body

for.body:                                         ; preds = %for.inc30.for.body_crit_edge, %entry
  %i.0104 = phi i32 [ 0, %entry ], [ %inc31, %for.inc30.for.body_crit_edge ]
  %n.0103 = phi i32 [ 0, %entry ], [ %n.4, %for.inc30.for.body_crit_edge ]
  %m.0102 = phi i32 [ 0, %entry ], [ %m.4, %for.inc30.for.body_crit_edge ]
  %p.0101 = phi i32 [ 0, %entry ], [ %p.4, %for.inc30.for.body_crit_edge ]
  %delta.0100 = phi i32 [ -1, %entry ], [ %delta.4, %for.inc30.for.body_crit_edge ]
  %arrayidx = getelementptr [9 x i32], ptr @mgag200_pixpll_compute_g200se_04.pvalues_e4, i32 0, i32 %i.0104
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %mul3 = mul i32 %2, %mul
  %3 = add i32 %mul3, -1600001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -800001, i32 %3)
  %4 = icmp ult i32 %3, -800001
  br i1 %4, label %for.body.for.inc30_crit_edge, label %for.body.for.cond14.preheader_crit_edge

for.body.for.cond14.preheader_crit_edge:          ; preds = %for.body
  br label %for.cond14.preheader

for.body.for.inc30_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc30

for.cond14.preheader:                             ; preds = %for.inc27.for.cond14.preheader_crit_edge, %for.body.for.cond14.preheader_crit_edge
  %n.199 = phi i32 [ %n.3, %for.inc27.for.cond14.preheader_crit_edge ], [ %n.0103, %for.body.for.cond14.preheader_crit_edge ]
  %m.198 = phi i32 [ %m.3, %for.inc27.for.cond14.preheader_crit_edge ], [ %m.0102, %for.body.for.cond14.preheader_crit_edge ]
  %p.197 = phi i32 [ %p.3, %for.inc27.for.cond14.preheader_crit_edge ], [ %p.0101, %for.body.for.cond14.preheader_crit_edge ]
  %testn.096 = phi i32 [ %inc28, %for.inc27.for.cond14.preheader_crit_edge ], [ 50, %for.body.for.cond14.preheader_crit_edge ]
  %delta.195 = phi i32 [ %delta.3, %for.inc27.for.cond14.preheader_crit_edge ], [ %delta.0100, %for.body.for.cond14.preheader_crit_edge ]
  %mul17 = mul nuw nsw i32 %testn.096, 25000
  br label %for.body16

for.body16:                                       ; preds = %for.inc.for.body16_crit_edge, %for.cond14.preheader
  %n.294 = phi i32 [ %n.199, %for.cond14.preheader ], [ %n.3, %for.inc.for.body16_crit_edge ]
  %m.293 = phi i32 [ %m.198, %for.cond14.preheader ], [ %m.3, %for.inc.for.body16_crit_edge ]
  %p.292 = phi i32 [ %p.197, %for.cond14.preheader ], [ %p.3, %for.inc.for.body16_crit_edge ]
  %testm.090 = phi i32 [ 1, %for.cond14.preheader ], [ %inc, %for.inc.for.body16_crit_edge ]
  %delta.289 = phi i32 [ %delta.195, %for.cond14.preheader ], [ %delta.3, %for.inc.for.body16_crit_edge ]
  %mul18 = mul i32 %testm.090, %2
  %div19 = udiv i32 %mul17, %mul18
  call void @__sanitizer_cov_trace_cmp4(i32 %div19, i32 %mul)
  %cmp20 = icmp ugt i32 %div19, %mul
  %sub = sub i32 %div19, %mul
  %sub22 = sub i32 %mul, %div19
  %tmpdelta.0 = select i1 %cmp20, i32 %sub, i32 %sub22
  call void @__sanitizer_cov_trace_cmp4(i32 %tmpdelta.0, i32 %delta.289)
  %cmp24 = icmp ult i32 %tmpdelta.0, %delta.289
  br i1 %cmp24, label %if.then25, label %for.body16.for.inc_crit_edge

for.body16.for.inc_crit_edge:                     ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then25:                                        ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

for.inc:                                          ; preds = %if.then25, %for.body16.for.inc_crit_edge
  %delta.3 = phi i32 [ %tmpdelta.0, %if.then25 ], [ %delta.289, %for.body16.for.inc_crit_edge ]
  %p.3 = phi i32 [ %2, %if.then25 ], [ %p.292, %for.body16.for.inc_crit_edge ]
  %m.3 = phi i32 [ %testm.090, %if.then25 ], [ %m.293, %for.body16.for.inc_crit_edge ]
  %n.3 = phi i32 [ %testn.096, %if.then25 ], [ %n.294, %for.body16.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %testm.090, 1
  %exitcond.not = icmp eq i32 %inc, 33
  br i1 %exitcond.not, label %for.inc27, label %for.inc.for.body16_crit_edge

for.inc.for.body16_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body16

for.inc27:                                        ; preds = %for.inc
  %inc28 = add nuw nsw i32 %testn.096, 1
  %exitcond105.not = icmp eq i32 %inc28, 257
  br i1 %exitcond105.not, label %for.inc27.for.inc30_crit_edge, label %for.inc27.for.cond14.preheader_crit_edge

for.inc27.for.cond14.preheader_crit_edge:         ; preds = %for.inc27
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond14.preheader

for.inc27.for.inc30_crit_edge:                    ; preds = %for.inc27
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc30

for.inc30:                                        ; preds = %for.inc27.for.inc30_crit_edge, %for.body.for.inc30_crit_edge
  %delta.4 = phi i32 [ %delta.0100, %for.body.for.inc30_crit_edge ], [ %delta.3, %for.inc27.for.inc30_crit_edge ]
  %p.4 = phi i32 [ %p.0101, %for.body.for.inc30_crit_edge ], [ %p.3, %for.inc27.for.inc30_crit_edge ]
  %m.4 = phi i32 [ %m.0102, %for.body.for.inc30_crit_edge ], [ %m.3, %for.inc27.for.inc30_crit_edge ]
  %n.4 = phi i32 [ %n.0103, %for.body.for.inc30_crit_edge ], [ %n.3, %for.inc27.for.inc30_crit_edge ]
  %inc31 = add nuw nsw i32 %i.0104, 1
  %exitcond106.not = icmp eq i32 %inc31, 9
  br i1 %exitcond106.not, label %for.end32, label %for.inc30.for.body_crit_edge

for.inc30.for.body_crit_edge:                     ; preds = %for.inc30
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end32:                                        ; preds = %for.inc30
  %div = sdiv i32 %mul1, 1000
  call void @__sanitizer_cov_trace_cmp4(i32 %delta.4, i32 %div)
  %cmp40 = icmp ugt i32 %delta.4, %div
  br i1 %cmp40, label %do.end, label %if.end42

do.end:                                           ; preds = %for.end32
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #8
  br label %cleanup

if.end42:                                         ; preds = %for.end32
  call void @__sanitizer_cov_trace_pc() #7
  %mul33 = mul i32 %n.4, 25000
  %div34 = udiv i32 %mul33, %m.4
  %sub35 = add i32 %div34, -800000
  %div36 = udiv i32 %sub35, 50000
  %5 = tail call i32 @llvm.umin.i32(i32 %div36, i32 15)
  %shl = shl nuw nsw i32 %5, 1
  %6 = ptrtoint ptr %pixpllc to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %m.4, ptr %pixpllc, align 4
  %n44 = getelementptr inbounds %struct.mgag200_pll_values, ptr %pixpllc, i32 0, i32 1
  %7 = ptrtoint ptr %n44 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %n.4, ptr %n44, align 4
  %p45 = getelementptr inbounds %struct.mgag200_pll_values, ptr %pixpllc, i32 0, i32 2
  %8 = ptrtoint ptr %p45 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %p.4, ptr %p45, align 4
  %s46 = getelementptr inbounds %struct.mgag200_pll_values, ptr %pixpllc, i32 0, i32 3
  %9 = ptrtoint ptr %s46 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %shl, ptr %s46, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end42 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mgag200_pixpll_update_g200se_04(ptr nocapture noundef readonly %pixpll, ptr nocapture noundef readonly %pixpllc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pixpll to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pixpll, align 4
  %2 = ptrtoint ptr %pixpllc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pixpllc, align 4
  %sub = add i32 %3, 255
  %n = getelementptr inbounds %struct.mgag200_pll_values, ptr %pixpllc, i32 0, i32 1
  %4 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n, align 4
  %sub2 = add i32 %5, -1
  %p = getelementptr inbounds %struct.mgag200_pll_values, ptr %pixpllc, i32 0, i32 2
  %6 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %p, align 4
  %sub3 = add i32 %7, 255
  %s = getelementptr inbounds %struct.mgag200_pll_values, ptr %pixpllc, i32 0, i32 3
  %8 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s, align 4
  %and = lshr i32 %sub2, 1
  %shr = and i32 %and, 128
  %or = or i32 %shr, %sub
  %conv = trunc i32 %or to i8
  %conv4 = trunc i32 %sub2 to i8
  %shl = shl i32 %9, 3
  %or5 = or i32 %shl, %sub3
  %conv6 = trunc i32 %or5 to i8
  %rmmio = getelementptr inbounds %struct.mga_device, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio, align 8
  %add.ptr = getelementptr i8, ptr %11, i32 8140
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  %13 = or i8 %12, 12
  %14 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rmmio, align 8
  %add.ptr17 = getelementptr i8, ptr %15, i32 8130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr17, i8 %13) #5, !srcloc !106
  %16 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rmmio, align 8
  %add.ptr20 = getelementptr i8, ptr %17, i32 15360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr20, i8 76) #5, !srcloc !106
  %18 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rmmio, align 8
  %add.ptr22 = getelementptr i8, ptr %19, i32 15370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr22, i8 %conv) #5, !srcloc !106
  %20 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rmmio, align 8
  %add.ptr27 = getelementptr i8, ptr %21, i32 15360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr27, i8 77) #5, !srcloc !106
  %22 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rmmio, align 8
  %add.ptr29 = getelementptr i8, ptr %23, i32 15370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr29, i8 %conv4) #5, !srcloc !106
  %24 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rmmio, align 8
  %add.ptr34 = getelementptr i8, ptr %25, i32 15360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr34, i8 78) #5, !srcloc !106
  %26 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rmmio, align 8
  %add.ptr36 = getelementptr i8, ptr %27, i32 15370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr36, i8 %conv6) #5, !srcloc !106
  %28 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rmmio, align 8
  %add.ptr41 = getelementptr i8, ptr %29, i32 15360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr41, i8 26) #5, !srcloc !106
  %30 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rmmio, align 8
  %add.ptr43 = getelementptr i8, ptr %31, i32 15370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr43, i8 9) #5, !srcloc !106
  tail call void @msleep(i32 noundef 20) #5
  %32 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rmmio, align 8
  %add.ptr48 = getelementptr i8, ptr %33, i32 15360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr48, i8 26) #5, !srcloc !106
  %34 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rmmio, align 8
  %add.ptr50 = getelementptr i8, ptr %35, i32 15370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr50, i8 1) #5, !srcloc !106
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mgag200_pixpll_compute_g200se_00(ptr nocapture noundef readnone %pixpll, i32 noundef %clock, ptr nocapture noundef writeonly %pixpllc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = mul i32 %clock, 5
  %mul1 = shl i32 %clock, 3
  %0 = add i32 %mul1, -320001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -160001, i32 %0)
  %1 = icmp ult i32 %0, -160001
  br i1 %1, label %entry.for.inc26_crit_edge, label %entry.for.cond10.preheader_crit_edge

entry.for.cond10.preheader_crit_edge:             ; preds = %entry
  br label %for.cond10.preheader

entry.for.inc26_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc26

for.cond10.preheader:                             ; preds = %for.inc23.for.cond10.preheader_crit_edge, %entry.for.cond10.preheader_crit_edge
  %n.180 = phi i32 [ %n.3, %for.inc23.for.cond10.preheader_crit_edge ], [ 0, %entry.for.cond10.preheader_crit_edge ]
  %m.179 = phi i32 [ %m.3, %for.inc23.for.cond10.preheader_crit_edge ], [ 0, %entry.for.cond10.preheader_crit_edge ]
  %p.178 = phi i32 [ %p.3, %for.inc23.for.cond10.preheader_crit_edge ], [ 0, %entry.for.cond10.preheader_crit_edge ]
  %testn.077 = phi i32 [ %inc24, %for.inc23.for.cond10.preheader_crit_edge ], [ 17, %entry.for.cond10.preheader_crit_edge ]
  %delta.176 = phi i32 [ %delta.3, %for.inc23.for.cond10.preheader_crit_edge ], [ -1, %entry.for.cond10.preheader_crit_edge ]
  %mul13 = mul nuw nsw i32 %testn.077, 25000
  br label %for.body12

for.body12:                                       ; preds = %for.inc.for.body12_crit_edge, %for.cond10.preheader
  %n.275 = phi i32 [ %n.180, %for.cond10.preheader ], [ %n.3, %for.inc.for.body12_crit_edge ]
  %m.274 = phi i32 [ %m.179, %for.cond10.preheader ], [ %m.3, %for.inc.for.body12_crit_edge ]
  %p.273 = phi i32 [ %p.178, %for.cond10.preheader ], [ %p.3, %for.inc.for.body12_crit_edge ]
  %testm.071 = phi i32 [ 1, %for.cond10.preheader ], [ %inc, %for.inc.for.body12_crit_edge ]
  %delta.270 = phi i32 [ %delta.176, %for.cond10.preheader ], [ %delta.3, %for.inc.for.body12_crit_edge ]
  %mul14 = shl nuw nsw i32 %testm.071, 3
  %div15 = udiv i32 %mul13, %mul14
  call void @__sanitizer_cov_trace_cmp4(i32 %div15, i32 %clock)
  %cmp16 = icmp ugt i32 %div15, %clock
  %sub = sub i32 %div15, %clock
  %sub18 = sub i32 %clock, %div15
  %tmpdelta.0 = select i1 %cmp16, i32 %sub, i32 %sub18
  call void @__sanitizer_cov_trace_cmp4(i32 %tmpdelta.0, i32 %delta.270)
  %cmp20 = icmp ult i32 %tmpdelta.0, %delta.270
  br i1 %cmp20, label %if.then21, label %for.body12.for.inc_crit_edge

for.body12.for.inc_crit_edge:                     ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then21:                                        ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

for.inc:                                          ; preds = %if.then21, %for.body12.for.inc_crit_edge
  %delta.3 = phi i32 [ %tmpdelta.0, %if.then21 ], [ %delta.270, %for.body12.for.inc_crit_edge ]
  %p.3 = phi i32 [ 8, %if.then21 ], [ %p.273, %for.body12.for.inc_crit_edge ]
  %m.3 = phi i32 [ %testm.071, %if.then21 ], [ %m.274, %for.body12.for.inc_crit_edge ]
  %n.3 = phi i32 [ %testn.077, %if.then21 ], [ %n.275, %for.body12.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %testm.071, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.inc23, label %for.inc.for.body12_crit_edge

for.inc.for.body12_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body12

for.inc23:                                        ; preds = %for.inc
  %inc24 = add nuw nsw i32 %testn.077, 1
  %exitcond86.not = icmp eq i32 %inc24, 256
  br i1 %exitcond86.not, label %for.inc23.for.inc26_crit_edge, label %for.inc23.for.cond10.preheader_crit_edge

for.inc23.for.cond10.preheader_crit_edge:         ; preds = %for.inc23
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond10.preheader

for.inc23.for.inc26_crit_edge:                    ; preds = %for.inc23
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc26

for.inc26:                                        ; preds = %for.inc23.for.inc26_crit_edge, %entry.for.inc26_crit_edge
  %delta.4 = phi i32 [ -1, %entry.for.inc26_crit_edge ], [ %delta.3, %for.inc23.for.inc26_crit_edge ]
  %p.4 = phi i32 [ 0, %entry.for.inc26_crit_edge ], [ %p.3, %for.inc23.for.inc26_crit_edge ]
  %m.4 = phi i32 [ 0, %entry.for.inc26_crit_edge ], [ %m.3, %for.inc23.for.inc26_crit_edge ]
  %n.4 = phi i32 [ 0, %entry.for.inc26_crit_edge ], [ %n.3, %for.inc23.for.inc26_crit_edge ]
  %mul1.1 = shl i32 %clock, 2
  %2 = add i32 %mul1.1, -320001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -160001, i32 %2)
  %3 = icmp ult i32 %2, -160001
  br i1 %3, label %for.inc26.for.inc26.1_crit_edge, label %for.inc26.for.cond10.preheader.1_crit_edge

for.inc26.for.cond10.preheader.1_crit_edge:       ; preds = %for.inc26
  br label %for.cond10.preheader.1

for.inc26.for.inc26.1_crit_edge:                  ; preds = %for.inc26
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc26.1

for.cond10.preheader.1:                           ; preds = %for.inc23.1.for.cond10.preheader.1_crit_edge, %for.inc26.for.cond10.preheader.1_crit_edge
  %n.180.1 = phi i32 [ %n.3.1, %for.inc23.1.for.cond10.preheader.1_crit_edge ], [ %n.4, %for.inc26.for.cond10.preheader.1_crit_edge ]
  %m.179.1 = phi i32 [ %m.3.1, %for.inc23.1.for.cond10.preheader.1_crit_edge ], [ %m.4, %for.inc26.for.cond10.preheader.1_crit_edge ]
  %p.178.1 = phi i32 [ %p.3.1, %for.inc23.1.for.cond10.preheader.1_crit_edge ], [ %p.4, %for.inc26.for.cond10.preheader.1_crit_edge ]
  %testn.077.1 = phi i32 [ %inc24.1, %for.inc23.1.for.cond10.preheader.1_crit_edge ], [ 17, %for.inc26.for.cond10.preheader.1_crit_edge ]
  %delta.176.1 = phi i32 [ %delta.3.1, %for.inc23.1.for.cond10.preheader.1_crit_edge ], [ %delta.4, %for.inc26.for.cond10.preheader.1_crit_edge ]
  %mul13.1 = mul nuw nsw i32 %testn.077.1, 25000
  br label %for.body12.1

for.body12.1:                                     ; preds = %for.inc.1.for.body12.1_crit_edge, %for.cond10.preheader.1
  %n.275.1 = phi i32 [ %n.180.1, %for.cond10.preheader.1 ], [ %n.3.1, %for.inc.1.for.body12.1_crit_edge ]
  %m.274.1 = phi i32 [ %m.179.1, %for.cond10.preheader.1 ], [ %m.3.1, %for.inc.1.for.body12.1_crit_edge ]
  %p.273.1 = phi i32 [ %p.178.1, %for.cond10.preheader.1 ], [ %p.3.1, %for.inc.1.for.body12.1_crit_edge ]
  %testm.071.1 = phi i32 [ 1, %for.cond10.preheader.1 ], [ %inc.1, %for.inc.1.for.body12.1_crit_edge ]
  %delta.270.1 = phi i32 [ %delta.176.1, %for.cond10.preheader.1 ], [ %delta.3.1, %for.inc.1.for.body12.1_crit_edge ]
  %mul14.1 = shl nuw nsw i32 %testm.071.1, 2
  %div15.1 = udiv i32 %mul13.1, %mul14.1
  call void @__sanitizer_cov_trace_cmp4(i32 %div15.1, i32 %clock)
  %cmp16.1 = icmp ugt i32 %div15.1, %clock
  %sub.1 = sub i32 %div15.1, %clock
  %sub18.1 = sub i32 %clock, %div15.1
  %tmpdelta.0.1 = select i1 %cmp16.1, i32 %sub.1, i32 %sub18.1
  call void @__sanitizer_cov_trace_cmp4(i32 %tmpdelta.0.1, i32 %delta.270.1)
  %cmp20.1 = icmp ult i32 %tmpdelta.0.1, %delta.270.1
  br i1 %cmp20.1, label %if.then21.1, label %for.body12.1.for.inc.1_crit_edge

for.body12.1.for.inc.1_crit_edge:                 ; preds = %for.body12.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

if.then21.1:                                      ; preds = %for.body12.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then21.1, %for.body12.1.for.inc.1_crit_edge
  %delta.3.1 = phi i32 [ %tmpdelta.0.1, %if.then21.1 ], [ %delta.270.1, %for.body12.1.for.inc.1_crit_edge ]
  %p.3.1 = phi i32 [ 4, %if.then21.1 ], [ %p.273.1, %for.body12.1.for.inc.1_crit_edge ]
  %m.3.1 = phi i32 [ %testm.071.1, %if.then21.1 ], [ %m.274.1, %for.body12.1.for.inc.1_crit_edge ]
  %n.3.1 = phi i32 [ %testn.077.1, %if.then21.1 ], [ %n.275.1, %for.body12.1.for.inc.1_crit_edge ]
  %inc.1 = add nuw nsw i32 %testm.071.1, 1
  %exitcond.1.not = icmp eq i32 %inc.1, 32
  br i1 %exitcond.1.not, label %for.inc23.1, label %for.inc.1.for.body12.1_crit_edge

for.inc.1.for.body12.1_crit_edge:                 ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body12.1

for.inc23.1:                                      ; preds = %for.inc.1
  %inc24.1 = add nuw nsw i32 %testn.077.1, 1
  %exitcond86.1.not = icmp eq i32 %inc24.1, 256
  br i1 %exitcond86.1.not, label %for.inc23.1.for.inc26.1_crit_edge, label %for.inc23.1.for.cond10.preheader.1_crit_edge

for.inc23.1.for.cond10.preheader.1_crit_edge:     ; preds = %for.inc23.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond10.preheader.1

for.inc23.1.for.inc26.1_crit_edge:                ; preds = %for.inc23.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc26.1

for.inc26.1:                                      ; preds = %for.inc23.1.for.inc26.1_crit_edge, %for.inc26.for.inc26.1_crit_edge
  %delta.4.1 = phi i32 [ %delta.4, %for.inc26.for.inc26.1_crit_edge ], [ %delta.3.1, %for.inc23.1.for.inc26.1_crit_edge ]
  %p.4.1 = phi i32 [ %p.4, %for.inc26.for.inc26.1_crit_edge ], [ %p.3.1, %for.inc23.1.for.inc26.1_crit_edge ]
  %m.4.1 = phi i32 [ %m.4, %for.inc26.for.inc26.1_crit_edge ], [ %m.3.1, %for.inc23.1.for.inc26.1_crit_edge ]
  %n.4.1 = phi i32 [ %n.4, %for.inc26.for.inc26.1_crit_edge ], [ %n.3.1, %for.inc23.1.for.inc26.1_crit_edge ]
  %mul1.2 = shl i32 %clock, 1
  %4 = add i32 %mul1.2, -320001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -160001, i32 %4)
  %5 = icmp ult i32 %4, -160001
  br i1 %5, label %for.inc26.1.for.inc26.2_crit_edge, label %for.inc26.1.for.cond10.preheader.2_crit_edge

for.inc26.1.for.cond10.preheader.2_crit_edge:     ; preds = %for.inc26.1
  br label %for.cond10.preheader.2

for.inc26.1.for.inc26.2_crit_edge:                ; preds = %for.inc26.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc26.2

for.cond10.preheader.2:                           ; preds = %for.inc23.2.for.cond10.preheader.2_crit_edge, %for.inc26.1.for.cond10.preheader.2_crit_edge
  %n.180.2 = phi i32 [ %n.3.2, %for.inc23.2.for.cond10.preheader.2_crit_edge ], [ %n.4.1, %for.inc26.1.for.cond10.preheader.2_crit_edge ]
  %m.179.2 = phi i32 [ %m.3.2, %for.inc23.2.for.cond10.preheader.2_crit_edge ], [ %m.4.1, %for.inc26.1.for.cond10.preheader.2_crit_edge ]
  %p.178.2 = phi i32 [ %p.3.2, %for.inc23.2.for.cond10.preheader.2_crit_edge ], [ %p.4.1, %for.inc26.1.for.cond10.preheader.2_crit_edge ]
  %testn.077.2 = phi i32 [ %inc24.2, %for.inc23.2.for.cond10.preheader.2_crit_edge ], [ 17, %for.inc26.1.for.cond10.preheader.2_crit_edge ]
  %delta.176.2 = phi i32 [ %delta.3.2, %for.inc23.2.for.cond10.preheader.2_crit_edge ], [ %delta.4.1, %for.inc26.1.for.cond10.preheader.2_crit_edge ]
  %mul13.2 = mul nuw nsw i32 %testn.077.2, 25000
  br label %for.body12.2

for.body12.2:                                     ; preds = %for.inc.2.for.body12.2_crit_edge, %for.cond10.preheader.2
  %n.275.2 = phi i32 [ %n.180.2, %for.cond10.preheader.2 ], [ %n.3.2, %for.inc.2.for.body12.2_crit_edge ]
  %m.274.2 = phi i32 [ %m.179.2, %for.cond10.preheader.2 ], [ %m.3.2, %for.inc.2.for.body12.2_crit_edge ]
  %p.273.2 = phi i32 [ %p.178.2, %for.cond10.preheader.2 ], [ %p.3.2, %for.inc.2.for.body12.2_crit_edge ]
  %testm.071.2 = phi i32 [ 1, %for.cond10.preheader.2 ], [ %inc.2, %for.inc.2.for.body12.2_crit_edge ]
  %delta.270.2 = phi i32 [ %delta.176.2, %for.cond10.preheader.2 ], [ %delta.3.2, %for.inc.2.for.body12.2_crit_edge ]
  %mul14.2 = shl nuw nsw i32 %testm.071.2, 1
  %div15.2 = udiv i32 %mul13.2, %mul14.2
  call void @__sanitizer_cov_trace_cmp4(i32 %div15.2, i32 %clock)
  %cmp16.2 = icmp ugt i32 %div15.2, %clock
  %sub.2 = sub i32 %div15.2, %clock
  %sub18.2 = sub i32 %clock, %div15.2
  %tmpdelta.0.2 = select i1 %cmp16.2, i32 %sub.2, i32 %sub18.2
  call void @__sanitizer_cov_trace_cmp4(i32 %tmpdelta.0.2, i32 %delta.270.2)
  %cmp20.2 = icmp ult i32 %tmpdelta.0.2, %delta.270.2
  br i1 %cmp20.2, label %if.then21.2, label %for.body12.2.for.inc.2_crit_edge

for.body12.2.for.inc.2_crit_edge:                 ; preds = %for.body12.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

if.then21.2:                                      ; preds = %for.body12.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then21.2, %for.body12.2.for.inc.2_crit_edge
  %delta.3.2 = phi i32 [ %tmpdelta.0.2, %if.then21.2 ], [ %delta.270.2, %for.body12.2.for.inc.2_crit_edge ]
  %p.3.2 = phi i32 [ 2, %if.then21.2 ], [ %p.273.2, %for.body12.2.for.inc.2_crit_edge ]
  %m.3.2 = phi i32 [ %testm.071.2, %if.then21.2 ], [ %m.274.2, %for.body12.2.for.inc.2_crit_edge ]
  %n.3.2 = phi i32 [ %testn.077.2, %if.then21.2 ], [ %n.275.2, %for.body12.2.for.inc.2_crit_edge ]
  %inc.2 = add nuw nsw i32 %testm.071.2, 1
  %exitcond.2.not = icmp eq i32 %inc.2, 32
  br i1 %exitcond.2.not, label %for.inc23.2, label %for.inc.2.for.body12.2_crit_edge

for.inc.2.for.body12.2_crit_edge:                 ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body12.2

for.inc23.2:                                      ; preds = %for.inc.2
  %inc24.2 = add nuw nsw i32 %testn.077.2, 1
  %exitcond86.2.not = icmp eq i32 %inc24.2, 256
  br i1 %exitcond86.2.not, label %for.inc23.2.for.inc26.2_crit_edge, label %for.inc23.2.for.cond10.preheader.2_crit_edge

for.inc23.2.for.cond10.preheader.2_crit_edge:     ; preds = %for.inc23.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond10.preheader.2

for.inc23.2.for.inc26.2_crit_edge:                ; preds = %for.inc23.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc26.2

for.inc26.2:                                      ; preds = %for.inc23.2.for.inc26.2_crit_edge, %for.inc26.1.for.inc26.2_crit_edge
  %delta.4.2 = phi i32 [ %delta.4.1, %for.inc26.1.for.inc26.2_crit_edge ], [ %delta.3.2, %for.inc23.2.for.inc26.2_crit_edge ]
  %p.4.2 = phi i32 [ %p.4.1, %for.inc26.1.for.inc26.2_crit_edge ], [ %p.3.2, %for.inc23.2.for.inc26.2_crit_edge ]
  %m.4.2 = phi i32 [ %m.4.1, %for.inc26.1.for.inc26.2_crit_edge ], [ %m.3.2, %for.inc23.2.for.inc26.2_crit_edge ]
  %n.4.2 = phi i32 [ %n.4.1, %for.inc26.1.for.inc26.2_crit_edge ], [ %n.3.2, %for.inc23.2.for.inc26.2_crit_edge ]
  %6 = add i32 %clock, -320001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -160001, i32 %6)
  %7 = icmp ult i32 %6, -160001
  br i1 %7, label %for.inc26.2.for.inc26.3_crit_edge, label %for.inc26.2.for.cond10.preheader.3_crit_edge

for.inc26.2.for.cond10.preheader.3_crit_edge:     ; preds = %for.inc26.2
  br label %for.cond10.preheader.3

for.inc26.2.for.inc26.3_crit_edge:                ; preds = %for.inc26.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc26.3

for.cond10.preheader.3:                           ; preds = %for.inc23.3.for.cond10.preheader.3_crit_edge, %for.inc26.2.for.cond10.preheader.3_crit_edge
  %n.180.3 = phi i32 [ %n.3.3, %for.inc23.3.for.cond10.preheader.3_crit_edge ], [ %n.4.2, %for.inc26.2.for.cond10.preheader.3_crit_edge ]
  %m.179.3 = phi i32 [ %m.3.3, %for.inc23.3.for.cond10.preheader.3_crit_edge ], [ %m.4.2, %for.inc26.2.for.cond10.preheader.3_crit_edge ]
  %p.178.3 = phi i32 [ %p.3.3, %for.inc23.3.for.cond10.preheader.3_crit_edge ], [ %p.4.2, %for.inc26.2.for.cond10.preheader.3_crit_edge ]
  %testn.077.3 = phi i32 [ %inc24.3, %for.inc23.3.for.cond10.preheader.3_crit_edge ], [ 17, %for.inc26.2.for.cond10.preheader.3_crit_edge ]
  %delta.176.3 = phi i32 [ %delta.3.3, %for.inc23.3.for.cond10.preheader.3_crit_edge ], [ %delta.4.2, %for.inc26.2.for.cond10.preheader.3_crit_edge ]
  %mul13.3 = mul nuw nsw i32 %testn.077.3, 25000
  br label %for.body12.3

for.body12.3:                                     ; preds = %for.inc.3.for.body12.3_crit_edge, %for.cond10.preheader.3
  %n.275.3 = phi i32 [ %n.180.3, %for.cond10.preheader.3 ], [ %n.3.3, %for.inc.3.for.body12.3_crit_edge ]
  %m.274.3 = phi i32 [ %m.179.3, %for.cond10.preheader.3 ], [ %m.3.3, %for.inc.3.for.body12.3_crit_edge ]
  %p.273.3 = phi i32 [ %p.178.3, %for.cond10.preheader.3 ], [ %p.3.3, %for.inc.3.for.body12.3_crit_edge ]
  %testm.071.3 = phi i32 [ 1, %for.cond10.preheader.3 ], [ %inc.3, %for.inc.3.for.body12.3_crit_edge ]
  %delta.270.3 = phi i32 [ %delta.176.3, %for.cond10.preheader.3 ], [ %delta.3.3, %for.inc.3.for.body12.3_crit_edge ]
  %div15.3 = udiv i32 %mul13.3, %testm.071.3
  call void @__sanitizer_cov_trace_cmp4(i32 %div15.3, i32 %clock)
  %cmp16.3 = icmp ugt i32 %div15.3, %clock
  %sub.3 = sub i32 %div15.3, %clock
  %sub18.3 = sub i32 %clock, %div15.3
  %tmpdelta.0.3 = select i1 %cmp16.3, i32 %sub.3, i32 %sub18.3
  call void @__sanitizer_cov_trace_cmp4(i32 %tmpdelta.0.3, i32 %delta.270.3)
  %cmp20.3 = icmp ult i32 %tmpdelta.0.3, %delta.270.3
  br i1 %cmp20.3, label %if.then21.3, label %for.body12.3.for.inc.3_crit_edge

for.body12.3.for.inc.3_crit_edge:                 ; preds = %for.body12.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3

if.then21.3:                                      ; preds = %for.body12.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then21.3, %for.body12.3.for.inc.3_crit_edge
  %delta.3.3 = phi i32 [ %tmpdelta.0.3, %if.then21.3 ], [ %delta.270.3, %for.body12.3.for.inc.3_crit_edge ]
  %p.3.3 = phi i32 [ 1, %if.then21.3 ], [ %p.273.3, %for.body12.3.for.inc.3_crit_edge ]
  %m.3.3 = phi i32 [ %testm.071.3, %if.then21.3 ], [ %m.274.3, %for.body12.3.for.inc.3_crit_edge ]
  %n.3.3 = phi i32 [ %testn.077.3, %if.then21.3 ], [ %n.275.3, %for.body12.3.for.inc.3_crit_edge ]
  %inc.3 = add nuw nsw i32 %testm.071.3, 1
  %exitcond.3.not = icmp eq i32 %inc.3, 32
  br i1 %exitcond.3.not, label %for.inc23.3, label %for.inc.3.for.body12.3_crit_edge

for.inc.3.for.body12.3_crit_edge:                 ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body12.3

for.inc23.3:                                      ; preds = %for.inc.3
  %inc24.3 = add nuw nsw i32 %testn.077.3, 1
  %exitcond86.3.not = icmp eq i32 %inc24.3, 256
  br i1 %exitcond86.3.not, label %for.inc23.3.for.inc26.3_crit_edge, label %for.inc23.3.for.cond10.preheader.3_crit_edge

for.inc23.3.for.cond10.preheader.3_crit_edge:     ; preds = %for.inc23.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond10.preheader.3

for.inc23.3.for.inc26.3_crit_edge:                ; preds = %for.inc23.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc26.3

for.inc26.3:                                      ; preds = %for.inc23.3.for.inc26.3_crit_edge, %for.inc26.2.for.inc26.3_crit_edge
  %delta.4.3 = phi i32 [ %delta.4.2, %for.inc26.2.for.inc26.3_crit_edge ], [ %delta.3.3, %for.inc23.3.for.inc26.3_crit_edge ]
  %p.4.3 = phi i32 [ %p.4.2, %for.inc26.2.for.inc26.3_crit_edge ], [ %p.3.3, %for.inc23.3.for.inc26.3_crit_edge ]
  %m.4.3 = phi i32 [ %m.4.2, %for.inc26.2.for.inc26.3_crit_edge ], [ %m.3.3, %for.inc23.3.for.inc26.3_crit_edge ]
  %n.4.3 = phi i32 [ %n.4.2, %for.inc26.2.for.inc26.3_crit_edge ], [ %n.3.3, %for.inc23.3.for.inc26.3_crit_edge ]
  %div = sdiv i32 %mul, 1000
  call void @__sanitizer_cov_trace_cmp4(i32 %delta.4.3, i32 %div)
  %cmp29 = icmp ugt i32 %delta.4.3, %div
  br i1 %cmp29, label %do.end, label %if.end31

do.end:                                           ; preds = %for.inc26.3
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #8
  br label %cleanup

if.end31:                                         ; preds = %for.inc26.3
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %pixpllc to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %m.4.3, ptr %pixpllc, align 4
  %n33 = getelementptr inbounds %struct.mgag200_pll_values, ptr %pixpllc, i32 0, i32 1
  %9 = ptrtoint ptr %n33 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %n.4.3, ptr %n33, align 4
  %p34 = getelementptr inbounds %struct.mgag200_pll_values, ptr %pixpllc, i32 0, i32 2
  %10 = ptrtoint ptr %p34 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %p.4.3, ptr %p34, align 4
  %s35 = getelementptr inbounds %struct.mgag200_pll_values, ptr %pixpllc, i32 0, i32 3
  %11 = ptrtoint ptr %s35 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %s35, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end31 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mgag200_pixpll_update_g200se_00(ptr nocapture noundef readonly %pixpll, ptr nocapture noundef readonly %pixpllc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pixpll to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pixpll, align 4
  %2 = ptrtoint ptr %pixpllc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pixpllc, align 4
  %sub = add i32 %3, 255
  %n = getelementptr inbounds %struct.mgag200_pll_values, ptr %pixpllc, i32 0, i32 1
  %4 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n, align 4
  %sub2 = add i32 %5, -1
  %p = getelementptr inbounds %struct.mgag200_pll_values, ptr %pixpllc, i32 0, i32 2
  %6 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %p, align 4
  %sub3 = add i32 %7, 255
  %s = getelementptr inbounds %struct.mgag200_pll_values, ptr %pixpllc, i32 0, i32 3
  %8 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s, align 4
  %and = lshr i32 %sub2, 1
  %shr = and i32 %and, 128
  %or = or i32 %shr, %sub
  %conv = trunc i32 %or to i8
  %conv4 = trunc i32 %sub2 to i8
  %shl = shl i32 %9, 3
  %or5 = or i32 %shl, %sub3
  %conv6 = trunc i32 %or5 to i8
  %rmmio = getelementptr inbounds %struct.mga_device, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio, align 8
  %add.ptr = getelementptr i8, ptr %11, i32 8140
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  %13 = or i8 %12, 12
  %14 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rmmio, align 8
  %add.ptr17 = getelementptr i8, ptr %15, i32 8130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr17, i8 %13) #5, !srcloc !106
  %16 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rmmio, align 8
  %add.ptr20 = getelementptr i8, ptr %17, i32 15360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr20, i8 76) #5, !srcloc !106
  %18 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rmmio, align 8
  %add.ptr22 = getelementptr i8, ptr %19, i32 15370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr22, i8 %conv) #5, !srcloc !106
  %20 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rmmio, align 8
  %add.ptr27 = getelementptr i8, ptr %21, i32 15360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr27, i8 77) #5, !srcloc !106
  %22 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rmmio, align 8
  %add.ptr29 = getelementptr i8, ptr %23, i32 15370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr29, i8 %conv4) #5, !srcloc !106
  %24 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rmmio, align 8
  %add.ptr34 = getelementptr i8, ptr %25, i32 15360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr34, i8 78) #5, !srcloc !106
  %26 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rmmio, align 8
  %add.ptr36 = getelementptr i8, ptr %27, i32 15370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr36, i8 %conv6) #5, !srcloc !106
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define internal i32 @mgag200_pixpll_compute_g200wb(ptr nocapture noundef readnone %pixpll, i32 noundef %clock, ptr nocapture noundef writeonly %pixpllc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc24.for.body_crit_edge, %entry
  %n.067 = phi i32 [ 0, %entry ], [ %n.4, %for.inc24.for.body_crit_edge ]
  %m.066 = phi i32 [ 0, %entry ], [ %m.4, %for.inc24.for.body_crit_edge ]
  %p.065 = phi i32 [ 0, %entry ], [ %p.4, %for.inc24.for.body_crit_edge ]
  %testp.064 = phi i32 [ 1, %entry ], [ %inc25, %for.inc24.for.body_crit_edge ]
  %delta.063 = phi i32 [ -1, %entry ], [ %delta.4, %for.inc24.for.body_crit_edge ]
  %mul = mul i32 %testp.064, %clock
  %0 = add i32 %mul, -550001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -400001, i32 %0)
  %1 = icmp ult i32 %0, -400001
  br i1 %1, label %for.body.for.inc24_crit_edge, label %for.body.for.cond9.preheader_crit_edge

for.body.for.cond9.preheader_crit_edge:           ; preds = %for.body
  br label %for.cond9.preheader

for.body.for.inc24_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc24

for.cond9.preheader:                              ; preds = %for.inc21.for.cond9.preheader_crit_edge, %for.body.for.cond9.preheader_crit_edge
  %n.162 = phi i32 [ %n.3, %for.inc21.for.cond9.preheader_crit_edge ], [ %n.067, %for.body.for.cond9.preheader_crit_edge ]
  %m.161 = phi i32 [ %m.3, %for.inc21.for.cond9.preheader_crit_edge ], [ %m.066, %for.body.for.cond9.preheader_crit_edge ]
  %p.160 = phi i32 [ %p.3, %for.inc21.for.cond9.preheader_crit_edge ], [ %p.065, %for.body.for.cond9.preheader_crit_edge ]
  %testm.059 = phi i32 [ %inc22, %for.inc21.for.cond9.preheader_crit_edge ], [ 1, %for.body.for.cond9.preheader_crit_edge ]
  %delta.158 = phi i32 [ %delta.3, %for.inc21.for.cond9.preheader_crit_edge ], [ %delta.063, %for.body.for.cond9.preheader_crit_edge ]
  %mul13 = mul nuw nsw i32 %testm.059, %testp.064
  br label %for.body11

for.body11:                                       ; preds = %for.inc.for.body11_crit_edge, %for.cond9.preheader
  %n.257 = phi i32 [ %n.162, %for.cond9.preheader ], [ %n.3, %for.inc.for.body11_crit_edge ]
  %m.256 = phi i32 [ %m.161, %for.cond9.preheader ], [ %m.3, %for.inc.for.body11_crit_edge ]
  %p.255 = phi i32 [ %p.160, %for.cond9.preheader ], [ %p.3, %for.inc.for.body11_crit_edge ]
  %testn.053 = phi i32 [ 1, %for.cond9.preheader ], [ %inc, %for.inc.for.body11_crit_edge ]
  %delta.252 = phi i32 [ %delta.158, %for.cond9.preheader ], [ %delta.3, %for.inc.for.body11_crit_edge ]
  %mul12 = mul nuw nsw i32 %testn.053, 48000
  %div = udiv i32 %mul12, %mul13
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %clock)
  %cmp14 = icmp ugt i32 %div, %clock
  %sub = sub i32 %div, %clock
  %sub16 = sub i32 %clock, %div
  %tmpdelta.0 = select i1 %cmp14, i32 %sub, i32 %sub16
  call void @__sanitizer_cov_trace_cmp4(i32 %tmpdelta.0, i32 %delta.252)
  %cmp18 = icmp ult i32 %tmpdelta.0, %delta.252
  br i1 %cmp18, label %if.then19, label %for.body11.for.inc_crit_edge

for.body11.for.inc_crit_edge:                     ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then19:                                        ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

for.inc:                                          ; preds = %if.then19, %for.body11.for.inc_crit_edge
  %delta.3 = phi i32 [ %tmpdelta.0, %if.then19 ], [ %delta.252, %for.body11.for.inc_crit_edge ]
  %p.3 = phi i32 [ %testp.064, %if.then19 ], [ %p.255, %for.body11.for.inc_crit_edge ]
  %m.3 = phi i32 [ %testm.059, %if.then19 ], [ %m.256, %for.body11.for.inc_crit_edge ]
  %n.3 = phi i32 [ %testn.053, %if.then19 ], [ %n.257, %for.body11.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %testn.053, 1
  %exitcond.not = icmp eq i32 %inc, 151
  br i1 %exitcond.not, label %for.inc21, label %for.inc.for.body11_crit_edge

for.inc.for.body11_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body11

for.inc21:                                        ; preds = %for.inc
  %inc22 = add nuw nsw i32 %testm.059, 1
  %exitcond68.not = icmp eq i32 %inc22, 17
  br i1 %exitcond68.not, label %for.inc21.for.inc24_crit_edge, label %for.inc21.for.cond9.preheader_crit_edge

for.inc21.for.cond9.preheader_crit_edge:          ; preds = %for.inc21
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond9.preheader

for.inc21.for.inc24_crit_edge:                    ; preds = %for.inc21
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc24

for.inc24:                                        ; preds = %for.inc21.for.inc24_crit_edge, %for.body.for.inc24_crit_edge
  %delta.4 = phi i32 [ %delta.063, %for.body.for.inc24_crit_edge ], [ %delta.3, %for.inc21.for.inc24_crit_edge ]
  %p.4 = phi i32 [ %p.065, %for.body.for.inc24_crit_edge ], [ %p.3, %for.inc21.for.inc24_crit_edge ]
  %m.4 = phi i32 [ %m.066, %for.body.for.inc24_crit_edge ], [ %m.3, %for.inc21.for.inc24_crit_edge ]
  %n.4 = phi i32 [ %n.067, %for.body.for.inc24_crit_edge ], [ %n.3, %for.inc21.for.inc24_crit_edge ]
  %inc25 = add nuw nsw i32 %testp.064, 1
  %exitcond69.not = icmp eq i32 %inc25, 9
  br i1 %exitcond69.not, label %for.end26, label %for.inc24.for.body_crit_edge

for.inc24.for.body_crit_edge:                     ; preds = %for.inc24
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end26:                                        ; preds = %for.inc24
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %pixpllc to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %m.4, ptr %pixpllc, align 4
  %n28 = getelementptr inbounds %struct.mgag200_pll_values, ptr %pixpllc, i32 0, i32 1
  %3 = ptrtoint ptr %n28 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %n.4, ptr %n28, align 4
  %p29 = getelementptr inbounds %struct.mgag200_pll_values, ptr %pixpllc, i32 0, i32 2
  %4 = ptrtoint ptr %p29 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %p.4, ptr %p29, align 4
  %s30 = getelementptr inbounds %struct.mgag200_pll_values, ptr %pixpllc, i32 0, i32 3
  %5 = ptrtoint ptr %s30 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %s30, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mgag200_pixpll_update_g200wb(ptr nocapture noundef readonly %pixpll, ptr nocapture noundef readonly %pixpllc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pixpll to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pixpll, align 4
  %2 = ptrtoint ptr %pixpllc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pixpllc, align 4
  %sub = add i32 %3, 255
  %n = getelementptr inbounds %struct.mgag200_pll_values, ptr %pixpllc, i32 0, i32 1
  %4 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n, align 4
  %sub2 = add i32 %5, -1
  %p = getelementptr inbounds %struct.mgag200_pll_values, ptr %pixpllc, i32 0, i32 2
  %6 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %p, align 4
  %sub3 = add i32 %7, 255
  %s = getelementptr inbounds %struct.mgag200_pll_values, ptr %pixpllc, i32 0, i32 3
  %8 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s, align 4
  %and = lshr i32 %sub2, 1
  %shr = and i32 %and, 128
  %or = or i32 %shr, %sub
  %conv = trunc i32 %or to i8
  %conv4 = trunc i32 %sub2 to i8
  %and5 = lshr i32 %sub2, 3
  %shr6 = and i32 %and5, 192
  %shl = shl i32 %9, 3
  %or7 = or i32 %shl, %sub3
  %or8 = or i32 %or7, %shr6
  %conv9 = trunc i32 %or8 to i8
  %rmmio = getelementptr inbounds %struct.mga_device, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio, align 8
  %add.ptr = getelementptr i8, ptr %11, i32 8140
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  %13 = or i8 %12, 12
  %14 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rmmio, align 8
  %add.ptr20 = getelementptr i8, ptr %15, i32 8130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr20, i8 %13) #5, !srcloc !106
  br label %for.body

for.body:                                         ; preds = %for.inc198.for.body_crit_edge, %entry
  %i.0309 = phi i32 [ 0, %entry ], [ %inc199, %for.inc198.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0309)
  %cmp25.not = icmp eq i32 %i.0309, 0
  br i1 %cmp25.not, label %for.body.for.body184.preheader_crit_edge, label %if.then

for.body.for.body184.preheader_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body184.preheader

if.then:                                          ; preds = %for.body
  %16 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rmmio, align 8
  %add.ptr28 = getelementptr i8, ptr %17, i32 8148
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr28, i8 30) #5, !srcloc !106
  %18 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rmmio, align 8
  %add.ptr30 = getelementptr i8, ptr %19, i32 8149
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr30) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %20)
  %cmp33.not = icmp eq i8 %20, -1
  br i1 %cmp33.not, label %if.then.for.body184.preheader_crit_edge, label %if.then35

if.then.for.body184.preheader_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body184.preheader

if.then35:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %add = add nuw i8 %20, 1
  %21 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rmmio, align 8
  %add.ptr39 = getelementptr i8, ptr %22, i32 8149
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr39, i8 %add) #5, !srcloc !106
  br label %for.body184.preheader

for.body184.preheader:                            ; preds = %if.then35, %if.then.for.body184.preheader_crit_edge, %for.body.for.body184.preheader_crit_edge
  %23 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rmmio, align 8
  %add.ptr42 = getelementptr i8, ptr %24, i32 15360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr42, i8 26) #5, !srcloc !106
  %25 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rmmio, align 8
  %add.ptr44 = getelementptr i8, ptr %26, i32 15370
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr44) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  %28 = or i8 %27, 4
  %29 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %rmmio, align 8
  %add.ptr50 = getelementptr i8, ptr %30, i32 15370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr50, i8 %28) #5, !srcloc !106
  %31 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rmmio, align 8
  %add.ptr52 = getelementptr i8, ptr %32, i32 15360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr52, i8 48) #5, !srcloc !106
  %33 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rmmio, align 8
  %add.ptr54 = getelementptr i8, ptr %34, i32 15370
  %35 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr54) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  %36 = or i8 %35, 1
  %37 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rmmio, align 8
  %add.ptr60 = getelementptr i8, ptr %38, i32 15370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr60, i8 %36) #5, !srcloc !106
  %39 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rmmio, align 8
  %add.ptr62 = getelementptr i8, ptr %40, i32 8140
  %41 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr62) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  %42 = or i8 %41, 12
  %43 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rmmio, align 8
  %add.ptr68 = getelementptr i8, ptr %44, i32 8130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr68, i8 %42) #5, !srcloc !106
  %45 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rmmio, align 8
  %add.ptr70 = getelementptr i8, ptr %46, i32 15360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr70, i8 26) #5, !srcloc !106
  %47 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rmmio, align 8
  %add.ptr72 = getelementptr i8, ptr %48, i32 15370
  %49 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr72) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  %50 = or i8 %49, -120
  %51 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rmmio, align 8
  %add.ptr78 = getelementptr i8, ptr %52, i32 15370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr78, i8 %50) #5, !srcloc !106
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 107374000) #5
  %54 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rmmio, align 8
  %add.ptr80 = getelementptr i8, ptr %55, i32 15360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr80, i8 24) #5, !srcloc !106
  %56 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %rmmio, align 8
  %add.ptr82 = getelementptr i8, ptr %57, i32 15370
  %58 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr82) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  %59 = and i8 %58, -5
  %60 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rmmio, align 8
  %add.ptr88 = getelementptr i8, ptr %61, i32 15370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr88, i8 %59) #5, !srcloc !106
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %62(i32 noundef 10737400) #5
  %63 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %rmmio, align 8
  %add.ptr91 = getelementptr i8, ptr %64, i32 15360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr91, i8 -74) #5, !srcloc !106
  %65 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %rmmio, align 8
  %add.ptr93 = getelementptr i8, ptr %66, i32 15370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr93, i8 %conv4) #5, !srcloc !106
  %67 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %rmmio, align 8
  %add.ptr98 = getelementptr i8, ptr %68, i32 15360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr98, i8 -73) #5, !srcloc !106
  %69 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %rmmio, align 8
  %add.ptr100 = getelementptr i8, ptr %70, i32 15370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr100, i8 %conv) #5, !srcloc !106
  %71 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %rmmio, align 8
  %add.ptr105 = getelementptr i8, ptr %72, i32 15360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr105, i8 -72) #5, !srcloc !106
  %73 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %rmmio, align 8
  %add.ptr107 = getelementptr i8, ptr %74, i32 15370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr107, i8 %conv9) #5, !srcloc !106
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %75 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %75(i32 noundef 10737400) #5
  %76 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %rmmio, align 8
  %add.ptr111 = getelementptr i8, ptr %77, i32 15360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr111, i8 24) #5, !srcloc !106
  %78 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %rmmio, align 8
  %add.ptr113 = getelementptr i8, ptr %79, i32 15370
  %80 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr113) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  %81 = or i8 %80, 4
  %82 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %rmmio, align 8
  %add.ptr120 = getelementptr i8, ptr %83, i32 15360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr120, i8 24) #5, !srcloc !106
  %84 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %rmmio, align 8
  %add.ptr122 = getelementptr i8, ptr %85, i32 15370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr122, i8 %81) #5, !srcloc !106
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %86 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %86(i32 noundef 107374000) #5
  %87 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %rmmio, align 8
  %add.ptr126 = getelementptr i8, ptr %88, i32 15360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr126, i8 26) #5, !srcloc !106
  %89 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %rmmio, align 8
  %add.ptr128 = getelementptr i8, ptr %90, i32 15370
  %91 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr128) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  %92 = and i8 %91, -4
  %93 = or i8 %92, 1
  %94 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %rmmio, align 8
  %add.ptr137 = getelementptr i8, ptr %95, i32 15370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr137, i8 %93) #5, !srcloc !106
  %96 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %rmmio, align 8
  %add.ptr139 = getelementptr i8, ptr %97, i32 15360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr139, i8 48) #5, !srcloc !106
  %98 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %rmmio, align 8
  %add.ptr141 = getelementptr i8, ptr %99, i32 15370
  %100 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr141) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  %101 = and i8 %100, -7
  %102 = or i8 %101, 2
  %103 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %rmmio, align 8
  %add.ptr150 = getelementptr i8, ptr %104, i32 15370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr150, i8 %102) #5, !srcloc !106
  %105 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %rmmio, align 8
  %add.ptr152 = getelementptr i8, ptr %106, i32 8132
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr152, i8 1) #5, !srcloc !106
  %107 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %rmmio, align 8
  %add.ptr154 = getelementptr i8, ptr %108, i32 8133
  %109 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr154) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  %110 = and i8 %109, -9
  %111 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %rmmio, align 8
  %add.ptr160 = getelementptr i8, ptr %112, i32 8133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr160, i8 %110) #5, !srcloc !106
  %113 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %rmmio, align 8
  %add.ptr162 = getelementptr i8, ptr %114, i32 15360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr162, i8 26) #5, !srcloc !106
  %115 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %rmmio, align 8
  %add.ptr164 = getelementptr i8, ptr %116, i32 15370
  %117 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr164) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  %118 = and i8 %117, -5
  %119 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %rmmio, align 8
  %add.ptr170 = getelementptr i8, ptr %120, i32 15370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr170, i8 %118) #5, !srcloc !106
  %121 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %rmmio, align 8
  %add.ptr172 = getelementptr i8, ptr %122, i32 7712
  %123 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr172) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  %conv174 = zext i8 %123 to i32
  br label %for.body184

for.body184:                                      ; preds = %for.inc.for.body184_crit_edge, %for.body184.preheader
  %vcount.0307 = phi i32 [ %spec.store.select, %for.inc.for.body184_crit_edge ], [ %conv174, %for.body184.preheader ]
  %j.0306 = phi i32 [ %inc, %for.inc.for.body184_crit_edge ], [ 0, %for.body184.preheader ]
  %124 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %rmmio, align 8
  %add.ptr186 = getelementptr i8, ptr %125, i32 7712
  %126 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr186) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  %conv188 = zext i8 %126 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %vcount.0307, i32 %conv188)
  %cmp189 = icmp sgt i32 %vcount.0307, %conv188
  %spec.store.select = select i1 %cmp189, i32 0, i32 %vcount.0307
  %sub193 = sub i32 %conv188, %spec.store.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub193)
  %cmp194 = icmp sgt i32 %sub193, 2
  br i1 %cmp194, label %for.body184.for.end200_crit_edge, label %for.inc

for.body184.for.end200_crit_edge:                 ; preds = %for.body184
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end200

for.inc:                                          ; preds = %for.body184
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %127 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %127(i32 noundef 1073740) #5
  %inc = add nuw nsw i32 %j.0306, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %j.0306)
  %cmp176 = icmp ugt i32 %j.0306, 28
  %brmerge304 = select i1 %cmp176, i1 true, i1 %cmp194
  br i1 %brmerge304, label %for.inc198, label %for.inc.for.body184_crit_edge

for.inc.for.body184_crit_edge:                    ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body184

for.inc198:                                       ; preds = %for.inc
  %inc199 = add nuw nsw i32 %i.0309, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %i.0309)
  %cmp = icmp ugt i32 %i.0309, 31
  %brmerge = select i1 %cmp, i1 true, i1 %cmp194
  br i1 %brmerge, label %for.inc198.for.end200_crit_edge, label %for.inc198.for.body_crit_edge

for.inc198.for.body_crit_edge:                    ; preds = %for.inc198
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc198.for.end200_crit_edge:                  ; preds = %for.inc198
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end200

for.end200:                                       ; preds = %for.inc198.for.end200_crit_edge, %for.body184.for.end200_crit_edge
  %128 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %rmmio, align 8
  %add.ptr202 = getelementptr i8, ptr %129, i32 15360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr202, i8 48) #5, !srcloc !106
  %130 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %rmmio, align 8
  %add.ptr204 = getelementptr i8, ptr %131, i32 15370
  %132 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr204) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  %133 = and i8 %132, -2
  %134 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %rmmio, align 8
  %add.ptr211 = getelementptr i8, ptr %135, i32 15360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr211, i8 48) #5, !srcloc !106
  %136 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %rmmio, align 8
  %add.ptr213 = getelementptr i8, ptr %137, i32 15370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr213, i8 %133) #5, !srcloc !106
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define internal i32 @mgag200_pixpll_compute_g200ev(ptr nocapture noundef readnone %pixpll, i32 noundef %clock, ptr nocapture noundef writeonly %pixpllc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc24.for.body_crit_edge, %entry
  %n.066 = phi i32 [ 0, %entry ], [ %n.4, %for.inc24.for.body_crit_edge ]
  %m.065 = phi i32 [ 0, %entry ], [ %m.4, %for.inc24.for.body_crit_edge ]
  %p.064 = phi i32 [ 0, %entry ], [ %p.4, %for.inc24.for.body_crit_edge ]
  %testp.063 = phi i32 [ 16, %entry ], [ %dec, %for.inc24.for.body_crit_edge ]
  %delta.062 = phi i32 [ -1, %entry ], [ %delta.4, %for.inc24.for.body_crit_edge ]
  %mul = mul i32 %testp.063, %clock
  %0 = add i32 %mul, -550001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -400001, i32 %0)
  %1 = icmp ult i32 %0, -400001
  br i1 %1, label %for.body.for.inc24_crit_edge, label %for.body.for.cond9.preheader_crit_edge

for.body.for.cond9.preheader_crit_edge:           ; preds = %for.body
  br label %for.cond9.preheader

for.body.for.inc24_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc24

for.cond9.preheader:                              ; preds = %for.inc21.for.cond9.preheader_crit_edge, %for.body.for.cond9.preheader_crit_edge
  %n.161 = phi i32 [ %n.3, %for.inc21.for.cond9.preheader_crit_edge ], [ %n.066, %for.body.for.cond9.preheader_crit_edge ]
  %m.160 = phi i32 [ %m.3, %for.inc21.for.cond9.preheader_crit_edge ], [ %m.065, %for.body.for.cond9.preheader_crit_edge ]
  %p.159 = phi i32 [ %p.3, %for.inc21.for.cond9.preheader_crit_edge ], [ %p.064, %for.body.for.cond9.preheader_crit_edge ]
  %testn.058 = phi i32 [ %inc22, %for.inc21.for.cond9.preheader_crit_edge ], [ 1, %for.body.for.cond9.preheader_crit_edge ]
  %delta.157 = phi i32 [ %delta.3, %for.inc21.for.cond9.preheader_crit_edge ], [ %delta.062, %for.body.for.cond9.preheader_crit_edge ]
  %mul12 = mul nuw nsw i32 %testn.058, 50000
  br label %for.body11

for.body11:                                       ; preds = %for.inc.for.body11_crit_edge, %for.cond9.preheader
  %n.256 = phi i32 [ %n.161, %for.cond9.preheader ], [ %n.3, %for.inc.for.body11_crit_edge ]
  %m.255 = phi i32 [ %m.160, %for.cond9.preheader ], [ %m.3, %for.inc.for.body11_crit_edge ]
  %p.254 = phi i32 [ %p.159, %for.cond9.preheader ], [ %p.3, %for.inc.for.body11_crit_edge ]
  %testm.052 = phi i32 [ 1, %for.cond9.preheader ], [ %inc, %for.inc.for.body11_crit_edge ]
  %delta.251 = phi i32 [ %delta.157, %for.cond9.preheader ], [ %delta.3, %for.inc.for.body11_crit_edge ]
  %mul13 = mul nuw nsw i32 %testm.052, %testp.063
  %div = udiv i32 %mul12, %mul13
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %clock)
  %cmp14 = icmp ugt i32 %div, %clock
  %sub = sub i32 %div, %clock
  %sub16 = sub i32 %clock, %div
  %tmpdelta.0 = select i1 %cmp14, i32 %sub, i32 %sub16
  call void @__sanitizer_cov_trace_cmp4(i32 %tmpdelta.0, i32 %delta.251)
  %cmp18 = icmp ult i32 %tmpdelta.0, %delta.251
  br i1 %cmp18, label %if.then19, label %for.body11.for.inc_crit_edge

for.body11.for.inc_crit_edge:                     ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then19:                                        ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

for.inc:                                          ; preds = %if.then19, %for.body11.for.inc_crit_edge
  %delta.3 = phi i32 [ %tmpdelta.0, %if.then19 ], [ %delta.251, %for.body11.for.inc_crit_edge ]
  %p.3 = phi i32 [ %testp.063, %if.then19 ], [ %p.254, %for.body11.for.inc_crit_edge ]
  %m.3 = phi i32 [ %testm.052, %if.then19 ], [ %m.255, %for.body11.for.inc_crit_edge ]
  %n.3 = phi i32 [ %testn.058, %if.then19 ], [ %n.256, %for.body11.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %testm.052, 1
  %exitcond.not = icmp eq i32 %inc, 17
  br i1 %exitcond.not, label %for.inc21, label %for.inc.for.body11_crit_edge

for.inc.for.body11_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body11

for.inc21:                                        ; preds = %for.inc
  %inc22 = add nuw nsw i32 %testn.058, 1
  %exitcond67.not = icmp eq i32 %inc22, 257
  br i1 %exitcond67.not, label %for.inc21.for.inc24_crit_edge, label %for.inc21.for.cond9.preheader_crit_edge

for.inc21.for.cond9.preheader_crit_edge:          ; preds = %for.inc21
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond9.preheader

for.inc21.for.inc24_crit_edge:                    ; preds = %for.inc21
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc24

for.inc24:                                        ; preds = %for.inc21.for.inc24_crit_edge, %for.body.for.inc24_crit_edge
  %delta.4 = phi i32 [ %delta.062, %for.body.for.inc24_crit_edge ], [ %delta.3, %for.inc21.for.inc24_crit_edge ]
  %p.4 = phi i32 [ %p.064, %for.body.for.inc24_crit_edge ], [ %p.3, %for.inc21.for.inc24_crit_edge ]
  %m.4 = phi i32 [ %m.065, %for.body.for.inc24_crit_edge ], [ %m.3, %for.inc21.for.inc24_crit_edge ]
  %n.4 = phi i32 [ %n.066, %for.body.for.inc24_crit_edge ], [ %n.3, %for.inc21.for.inc24_crit_edge ]
  %dec = add nsw i32 %testp.063, -1
  %cmp.not = icmp eq i32 %dec, 0
  br i1 %cmp.not, label %for.end25, label %for.inc24.for.body_crit_edge

for.inc24.for.body_crit_edge:                     ; preds = %for.inc24
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end25:                                        ; preds = %for.inc24
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %pixpllc to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %m.4, ptr %pixpllc, align 4
  %n27 = getelementptr inbounds %struct.mgag200_pll_values, ptr %pixpllc, i32 0, i32 1
  %3 = ptrtoint ptr %n27 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %n.4, ptr %n27, align 4
  %p28 = getelementptr inbounds %struct.mgag200_pll_values, ptr %pixpllc, i32 0, i32 2
  %4 = ptrtoint ptr %p28 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %p.4, ptr %p28, align 4
  %s29 = getelementptr inbounds %struct.mgag200_pll_values, ptr %pixpllc, i32 0, i32 3
  %5 = ptrtoint ptr %s29 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %s29, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mgag200_pixpll_update_g200ev(ptr nocapture noundef readonly %pixpll, ptr nocapture noundef readonly %pixpllc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pixpll to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pixpll, align 4
  %2 = ptrtoint ptr %pixpllc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pixpllc, align 4
  %n = getelementptr inbounds %struct.mgag200_pll_values, ptr %pixpllc, i32 0, i32 1
  %4 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n, align 4
  %p = getelementptr inbounds %struct.mgag200_pll_values, ptr %pixpllc, i32 0, i32 2
  %6 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %p, align 4
  %sub3 = add i32 %7, 255
  %s = getelementptr inbounds %struct.mgag200_pll_values, ptr %pixpllc, i32 0, i32 3
  %8 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s, align 4
  %10 = trunc i32 %3 to i8
  %conv = add i8 %10, -1
  %11 = trunc i32 %5 to i8
  %conv4 = add i8 %11, -1
  %shl = shl i32 %9, 3
  %or = or i32 %shl, %sub3
  %conv5 = trunc i32 %or to i8
  %rmmio = getelementptr inbounds %struct.mga_device, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rmmio, align 8
  %add.ptr = getelementptr i8, ptr %13, i32 8140
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  %15 = or i8 %14, 12
  %16 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rmmio, align 8
  %add.ptr15 = getelementptr i8, ptr %17, i32 8130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr15, i8 %15) #5, !srcloc !106
  %18 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rmmio, align 8
  %add.ptr17 = getelementptr i8, ptr %19, i32 15360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr17, i8 26) #5, !srcloc !106
  %20 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rmmio, align 8
  %add.ptr19 = getelementptr i8, ptr %21, i32 15370
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr19) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  %23 = or i8 %22, 4
  %24 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rmmio, align 8
  %add.ptr25 = getelementptr i8, ptr %25, i32 15370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr25, i8 %23) #5, !srcloc !106
  %26 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rmmio, align 8
  %add.ptr27 = getelementptr i8, ptr %27, i32 8140
  %28 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr27) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  %29 = or i8 %28, 12
  %30 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rmmio, align 8
  %add.ptr33 = getelementptr i8, ptr %31, i32 8130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr33, i8 %29) #5, !srcloc !106
  %32 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rmmio, align 8
  %add.ptr35 = getelementptr i8, ptr %33, i32 15360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr35, i8 79) #5, !srcloc !106
  %34 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rmmio, align 8
  %add.ptr37 = getelementptr i8, ptr %35, i32 15370
  %36 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr37) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  %37 = and i8 %36, -65
  %38 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rmmio, align 8
  %add.ptr43 = getelementptr i8, ptr %39, i32 15370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr43, i8 %37) #5, !srcloc !106
  %40 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rmmio, align 8
  %add.ptr45 = getelementptr i8, ptr %41, i32 15360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr45, i8 26) #5, !srcloc !106
  %42 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rmmio, align 8
  %add.ptr47 = getelementptr i8, ptr %43, i32 15370
  %44 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr47) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  %45 = or i8 %44, 8
  %46 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rmmio, align 8
  %add.ptr53 = getelementptr i8, ptr %47, i32 15370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr53, i8 %45) #5, !srcloc !106
  %48 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rmmio, align 8
  %add.ptr56 = getelementptr i8, ptr %49, i32 15360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr56, i8 -74) #5, !srcloc !106
  %50 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rmmio, align 8
  %add.ptr58 = getelementptr i8, ptr %51, i32 15370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr58, i8 %conv) #5, !srcloc !106
  %52 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rmmio, align 8
  %add.ptr63 = getelementptr i8, ptr %53, i32 15360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr63, i8 -73) #5, !srcloc !106
  %54 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rmmio, align 8
  %add.ptr65 = getelementptr i8, ptr %55, i32 15370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr65, i8 %conv4) #5, !srcloc !106
  %56 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %rmmio, align 8
  %add.ptr70 = getelementptr i8, ptr %57, i32 15360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr70, i8 -72) #5, !srcloc !106
  %58 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %rmmio, align 8
  %add.ptr72 = getelementptr i8, ptr %59, i32 15370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr72, i8 %conv5) #5, !srcloc !106
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %60(i32 noundef 10737400) #5
  %61 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %rmmio, align 8
  %add.ptr76 = getelementptr i8, ptr %62, i32 15360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr76, i8 26) #5, !srcloc !106
  %63 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %rmmio, align 8
  %add.ptr78 = getelementptr i8, ptr %64, i32 15370
  %65 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr78) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  %66 = and i8 %65, -9
  %67 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %rmmio, align 8
  %add.ptr84 = getelementptr i8, ptr %68, i32 15370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr84, i8 %66) #5, !srcloc !106
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %69 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %69(i32 noundef 107374000) #5
  %70 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %rmmio, align 8
  %add.ptr86 = getelementptr i8, ptr %71, i32 15360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr86, i8 26) #5, !srcloc !106
  %72 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %rmmio, align 8
  %add.ptr88 = getelementptr i8, ptr %73, i32 15370
  %74 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr88) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  %75 = and i8 %74, -4
  %76 = or i8 %75, 1
  %77 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %rmmio, align 8
  %add.ptr97 = getelementptr i8, ptr %78, i32 15370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr97, i8 %76) #5, !srcloc !106
  %79 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %rmmio, align 8
  %add.ptr99 = getelementptr i8, ptr %80, i32 15360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr99, i8 79) #5, !srcloc !106
  %81 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %rmmio, align 8
  %add.ptr101 = getelementptr i8, ptr %82, i32 15370
  %83 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr101) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  %84 = or i8 %83, 64
  %85 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %rmmio, align 8
  %add.ptr107 = getelementptr i8, ptr %86, i32 15370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr107, i8 %84) #5, !srcloc !106
  %87 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %rmmio, align 8
  %add.ptr109 = getelementptr i8, ptr %88, i32 8140
  %89 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr109) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  %90 = or i8 %89, 12
  %91 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %rmmio, align 8
  %add.ptr115 = getelementptr i8, ptr %92, i32 8130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr115, i8 %90) #5, !srcloc !106
  %93 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %rmmio, align 8
  %add.ptr117 = getelementptr i8, ptr %94, i32 15360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr117, i8 26) #5, !srcloc !106
  %95 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %rmmio, align 8
  %add.ptr119 = getelementptr i8, ptr %96, i32 15370
  %97 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr119) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  %98 = and i8 %97, -5
  %99 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %rmmio, align 8
  %add.ptr125 = getelementptr i8, ptr %100, i32 15370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr125, i8 %98) #5, !srcloc !106
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define internal i32 @mgag200_pixpll_compute_g200eh(ptr nocapture noundef readnone %pixpll, i32 noundef %clock, ptr nocapture noundef writeonly %pixpllc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %clock, 4
  %0 = add i32 %mul, -800001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -400001, i32 %0)
  %1 = icmp ult i32 %0, -400001
  br i1 %1, label %entry.for.inc24_crit_edge, label %entry.for.cond9.preheader_crit_edge

entry.for.cond9.preheader_crit_edge:              ; preds = %entry
  br label %for.cond9.preheader

entry.for.inc24_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc24

for.cond9.preheader:                              ; preds = %for.inc21.for.cond9.preheader_crit_edge, %entry.for.cond9.preheader_crit_edge
  %n.161 = phi i32 [ %n.3, %for.inc21.for.cond9.preheader_crit_edge ], [ 0, %entry.for.cond9.preheader_crit_edge ]
  %m.160 = phi i32 [ %m.3, %for.inc21.for.cond9.preheader_crit_edge ], [ 0, %entry.for.cond9.preheader_crit_edge ]
  %p.159 = phi i32 [ %p.3, %for.inc21.for.cond9.preheader_crit_edge ], [ 0, %entry.for.cond9.preheader_crit_edge ]
  %testm.058 = phi i32 [ %inc22, %for.inc21.for.cond9.preheader_crit_edge ], [ 1, %entry.for.cond9.preheader_crit_edge ]
  %delta.157 = phi i32 [ %delta.3, %for.inc21.for.cond9.preheader_crit_edge ], [ -1, %entry.for.cond9.preheader_crit_edge ]
  %mul13 = shl nuw nsw i32 %testm.058, 4
  br label %for.body11

for.body11:                                       ; preds = %for.inc.for.body11_crit_edge, %for.cond9.preheader
  %n.256 = phi i32 [ %n.161, %for.cond9.preheader ], [ %n.3, %for.inc.for.body11_crit_edge ]
  %m.255 = phi i32 [ %m.160, %for.cond9.preheader ], [ %m.3, %for.inc.for.body11_crit_edge ]
  %p.254 = phi i32 [ %p.159, %for.cond9.preheader ], [ %p.3, %for.inc.for.body11_crit_edge ]
  %testn.052 = phi i32 [ 17, %for.cond9.preheader ], [ %inc, %for.inc.for.body11_crit_edge ]
  %delta.251 = phi i32 [ %delta.157, %for.cond9.preheader ], [ %delta.3, %for.inc.for.body11_crit_edge ]
  %mul12 = mul nuw nsw i32 %testn.052, 33333
  %div = udiv i32 %mul12, %mul13
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %clock)
  %cmp14 = icmp ugt i32 %div, %clock
  %sub = sub i32 %div, %clock
  %sub16 = sub i32 %clock, %div
  %tmpdelta.0 = select i1 %cmp14, i32 %sub, i32 %sub16
  call void @__sanitizer_cov_trace_cmp4(i32 %tmpdelta.0, i32 %delta.251)
  %cmp18 = icmp ult i32 %tmpdelta.0, %delta.251
  br i1 %cmp18, label %if.then19, label %for.body11.for.inc_crit_edge

for.body11.for.inc_crit_edge:                     ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then19:                                        ; preds = %for.body11
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

for.inc:                                          ; preds = %if.then19, %for.body11.for.inc_crit_edge
  %delta.3 = phi i32 [ %tmpdelta.0, %if.then19 ], [ %delta.251, %for.body11.for.inc_crit_edge ]
  %p.3 = phi i32 [ 16, %if.then19 ], [ %p.254, %for.body11.for.inc_crit_edge ]
  %m.3 = phi i32 [ %testm.058, %if.then19 ], [ %m.255, %for.body11.for.inc_crit_edge ]
  %n.3 = phi i32 [ %testn.052, %if.then19 ], [ %n.256, %for.body11.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %testn.052, 1
  %exitcond.not = icmp eq i32 %inc, 257
  br i1 %exitcond.not, label %for.inc21, label %for.inc.for.body11_crit_edge

for.inc.for.body11_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body11

for.inc21:                                        ; preds = %for.inc
  %inc22 = add nuw nsw i32 %testm.058, 1
  %exitcond67.not = icmp eq i32 %inc22, 33
  br i1 %exitcond67.not, label %for.inc21.for.inc24_crit_edge, label %for.inc21.for.cond9.preheader_crit_edge

for.inc21.for.cond9.preheader_crit_edge:          ; preds = %for.inc21
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond9.preheader

for.inc21.for.inc24_crit_edge:                    ; preds = %for.inc21
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc24

for.inc24:                                        ; preds = %for.inc21.for.inc24_crit_edge, %entry.for.inc24_crit_edge
  %delta.4 = phi i32 [ -1, %entry.for.inc24_crit_edge ], [ %delta.3, %for.inc21.for.inc24_crit_edge ]
  %p.4 = phi i32 [ 0, %entry.for.inc24_crit_edge ], [ %p.3, %for.inc21.for.inc24_crit_edge ]
  %m.4 = phi i32 [ 0, %entry.for.inc24_crit_edge ], [ %m.3, %for.inc21.for.inc24_crit_edge ]
  %n.4 = phi i32 [ 0, %entry.for.inc24_crit_edge ], [ %n.3, %for.inc21.for.inc24_crit_edge ]
  %mul.1 = shl i32 %clock, 3
  %2 = add i32 %mul.1, -800001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -400001, i32 %2)
  %3 = icmp ult i32 %2, -400001
  br i1 %3, label %for.inc24.for.inc24.1_crit_edge, label %for.inc24.for.cond9.preheader.1_crit_edge

for.inc24.for.cond9.preheader.1_crit_edge:        ; preds = %for.inc24
  br label %for.cond9.preheader.1

for.inc24.for.inc24.1_crit_edge:                  ; preds = %for.inc24
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc24.1

for.cond9.preheader.1:                            ; preds = %for.inc21.1.for.cond9.preheader.1_crit_edge, %for.inc24.for.cond9.preheader.1_crit_edge
  %n.161.1 = phi i32 [ %n.3.1, %for.inc21.1.for.cond9.preheader.1_crit_edge ], [ %n.4, %for.inc24.for.cond9.preheader.1_crit_edge ]
  %m.160.1 = phi i32 [ %m.3.1, %for.inc21.1.for.cond9.preheader.1_crit_edge ], [ %m.4, %for.inc24.for.cond9.preheader.1_crit_edge ]
  %p.159.1 = phi i32 [ %p.3.1, %for.inc21.1.for.cond9.preheader.1_crit_edge ], [ %p.4, %for.inc24.for.cond9.preheader.1_crit_edge ]
  %testm.058.1 = phi i32 [ %inc22.1, %for.inc21.1.for.cond9.preheader.1_crit_edge ], [ 1, %for.inc24.for.cond9.preheader.1_crit_edge ]
  %delta.157.1 = phi i32 [ %delta.3.1, %for.inc21.1.for.cond9.preheader.1_crit_edge ], [ %delta.4, %for.inc24.for.cond9.preheader.1_crit_edge ]
  %mul13.1 = shl nuw nsw i32 %testm.058.1, 3
  br label %for.body11.1

for.body11.1:                                     ; preds = %for.inc.1.for.body11.1_crit_edge, %for.cond9.preheader.1
  %n.256.1 = phi i32 [ %n.161.1, %for.cond9.preheader.1 ], [ %n.3.1, %for.inc.1.for.body11.1_crit_edge ]
  %m.255.1 = phi i32 [ %m.160.1, %for.cond9.preheader.1 ], [ %m.3.1, %for.inc.1.for.body11.1_crit_edge ]
  %p.254.1 = phi i32 [ %p.159.1, %for.cond9.preheader.1 ], [ %p.3.1, %for.inc.1.for.body11.1_crit_edge ]
  %testn.052.1 = phi i32 [ 17, %for.cond9.preheader.1 ], [ %inc.1, %for.inc.1.for.body11.1_crit_edge ]
  %delta.251.1 = phi i32 [ %delta.157.1, %for.cond9.preheader.1 ], [ %delta.3.1, %for.inc.1.for.body11.1_crit_edge ]
  %mul12.1 = mul nuw nsw i32 %testn.052.1, 33333
  %div.1 = udiv i32 %mul12.1, %mul13.1
  call void @__sanitizer_cov_trace_cmp4(i32 %div.1, i32 %clock)
  %cmp14.1 = icmp ugt i32 %div.1, %clock
  %sub.1 = sub i32 %div.1, %clock
  %sub16.1 = sub i32 %clock, %div.1
  %tmpdelta.0.1 = select i1 %cmp14.1, i32 %sub.1, i32 %sub16.1
  call void @__sanitizer_cov_trace_cmp4(i32 %tmpdelta.0.1, i32 %delta.251.1)
  %cmp18.1 = icmp ult i32 %tmpdelta.0.1, %delta.251.1
  br i1 %cmp18.1, label %if.then19.1, label %for.body11.1.for.inc.1_crit_edge

for.body11.1.for.inc.1_crit_edge:                 ; preds = %for.body11.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

if.then19.1:                                      ; preds = %for.body11.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then19.1, %for.body11.1.for.inc.1_crit_edge
  %delta.3.1 = phi i32 [ %tmpdelta.0.1, %if.then19.1 ], [ %delta.251.1, %for.body11.1.for.inc.1_crit_edge ]
  %p.3.1 = phi i32 [ 8, %if.then19.1 ], [ %p.254.1, %for.body11.1.for.inc.1_crit_edge ]
  %m.3.1 = phi i32 [ %testm.058.1, %if.then19.1 ], [ %m.255.1, %for.body11.1.for.inc.1_crit_edge ]
  %n.3.1 = phi i32 [ %testn.052.1, %if.then19.1 ], [ %n.256.1, %for.body11.1.for.inc.1_crit_edge ]
  %inc.1 = add nuw nsw i32 %testn.052.1, 1
  %exitcond.1.not = icmp eq i32 %inc.1, 257
  br i1 %exitcond.1.not, label %for.inc21.1, label %for.inc.1.for.body11.1_crit_edge

for.inc.1.for.body11.1_crit_edge:                 ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body11.1

for.inc21.1:                                      ; preds = %for.inc.1
  %inc22.1 = add nuw nsw i32 %testm.058.1, 1
  %exitcond67.1.not = icmp eq i32 %inc22.1, 33
  br i1 %exitcond67.1.not, label %for.inc21.1.for.inc24.1_crit_edge, label %for.inc21.1.for.cond9.preheader.1_crit_edge

for.inc21.1.for.cond9.preheader.1_crit_edge:      ; preds = %for.inc21.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond9.preheader.1

for.inc21.1.for.inc24.1_crit_edge:                ; preds = %for.inc21.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc24.1

for.inc24.1:                                      ; preds = %for.inc21.1.for.inc24.1_crit_edge, %for.inc24.for.inc24.1_crit_edge
  %delta.4.1 = phi i32 [ %delta.4, %for.inc24.for.inc24.1_crit_edge ], [ %delta.3.1, %for.inc21.1.for.inc24.1_crit_edge ]
  %p.4.1 = phi i32 [ %p.4, %for.inc24.for.inc24.1_crit_edge ], [ %p.3.1, %for.inc21.1.for.inc24.1_crit_edge ]
  %m.4.1 = phi i32 [ %m.4, %for.inc24.for.inc24.1_crit_edge ], [ %m.3.1, %for.inc21.1.for.inc24.1_crit_edge ]
  %n.4.1 = phi i32 [ %n.4, %for.inc24.for.inc24.1_crit_edge ], [ %n.3.1, %for.inc21.1.for.inc24.1_crit_edge ]
  %mul.2 = shl i32 %clock, 2
  %4 = add i32 %mul.2, -800001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -400001, i32 %4)
  %5 = icmp ult i32 %4, -400001
  br i1 %5, label %for.inc24.1.for.inc24.2_crit_edge, label %for.inc24.1.for.cond9.preheader.2_crit_edge

for.inc24.1.for.cond9.preheader.2_crit_edge:      ; preds = %for.inc24.1
  br label %for.cond9.preheader.2

for.inc24.1.for.inc24.2_crit_edge:                ; preds = %for.inc24.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc24.2

for.cond9.preheader.2:                            ; preds = %for.inc21.2.for.cond9.preheader.2_crit_edge, %for.inc24.1.for.cond9.preheader.2_crit_edge
  %n.161.2 = phi i32 [ %n.3.2, %for.inc21.2.for.cond9.preheader.2_crit_edge ], [ %n.4.1, %for.inc24.1.for.cond9.preheader.2_crit_edge ]
  %m.160.2 = phi i32 [ %m.3.2, %for.inc21.2.for.cond9.preheader.2_crit_edge ], [ %m.4.1, %for.inc24.1.for.cond9.preheader.2_crit_edge ]
  %p.159.2 = phi i32 [ %p.3.2, %for.inc21.2.for.cond9.preheader.2_crit_edge ], [ %p.4.1, %for.inc24.1.for.cond9.preheader.2_crit_edge ]
  %testm.058.2 = phi i32 [ %inc22.2, %for.inc21.2.for.cond9.preheader.2_crit_edge ], [ 1, %for.inc24.1.for.cond9.preheader.2_crit_edge ]
  %delta.157.2 = phi i32 [ %delta.3.2, %for.inc21.2.for.cond9.preheader.2_crit_edge ], [ %delta.4.1, %for.inc24.1.for.cond9.preheader.2_crit_edge ]
  %mul13.2 = shl nuw nsw i32 %testm.058.2, 2
  br label %for.body11.2

for.body11.2:                                     ; preds = %for.inc.2.for.body11.2_crit_edge, %for.cond9.preheader.2
  %n.256.2 = phi i32 [ %n.161.2, %for.cond9.preheader.2 ], [ %n.3.2, %for.inc.2.for.body11.2_crit_edge ]
  %m.255.2 = phi i32 [ %m.160.2, %for.cond9.preheader.2 ], [ %m.3.2, %for.inc.2.for.body11.2_crit_edge ]
  %p.254.2 = phi i32 [ %p.159.2, %for.cond9.preheader.2 ], [ %p.3.2, %for.inc.2.for.body11.2_crit_edge ]
  %testn.052.2 = phi i32 [ 17, %for.cond9.preheader.2 ], [ %inc.2, %for.inc.2.for.body11.2_crit_edge ]
  %delta.251.2 = phi i32 [ %delta.157.2, %for.cond9.preheader.2 ], [ %delta.3.2, %for.inc.2.for.body11.2_crit_edge ]
  %mul12.2 = mul nuw nsw i32 %testn.052.2, 33333
  %div.2 = udiv i32 %mul12.2, %mul13.2
  call void @__sanitizer_cov_trace_cmp4(i32 %div.2, i32 %clock)
  %cmp14.2 = icmp ugt i32 %div.2, %clock
  %sub.2 = sub i32 %div.2, %clock
  %sub16.2 = sub i32 %clock, %div.2
  %tmpdelta.0.2 = select i1 %cmp14.2, i32 %sub.2, i32 %sub16.2
  call void @__sanitizer_cov_trace_cmp4(i32 %tmpdelta.0.2, i32 %delta.251.2)
  %cmp18.2 = icmp ult i32 %tmpdelta.0.2, %delta.251.2
  br i1 %cmp18.2, label %if.then19.2, label %for.body11.2.for.inc.2_crit_edge

for.body11.2.for.inc.2_crit_edge:                 ; preds = %for.body11.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

if.then19.2:                                      ; preds = %for.body11.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then19.2, %for.body11.2.for.inc.2_crit_edge
  %delta.3.2 = phi i32 [ %tmpdelta.0.2, %if.then19.2 ], [ %delta.251.2, %for.body11.2.for.inc.2_crit_edge ]
  %p.3.2 = phi i32 [ 4, %if.then19.2 ], [ %p.254.2, %for.body11.2.for.inc.2_crit_edge ]
  %m.3.2 = phi i32 [ %testm.058.2, %if.then19.2 ], [ %m.255.2, %for.body11.2.for.inc.2_crit_edge ]
  %n.3.2 = phi i32 [ %testn.052.2, %if.then19.2 ], [ %n.256.2, %for.body11.2.for.inc.2_crit_edge ]
  %inc.2 = add nuw nsw i32 %testn.052.2, 1
  %exitcond.2.not = icmp eq i32 %inc.2, 257
  br i1 %exitcond.2.not, label %for.inc21.2, label %for.inc.2.for.body11.2_crit_edge

for.inc.2.for.body11.2_crit_edge:                 ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body11.2

for.inc21.2:                                      ; preds = %for.inc.2
  %inc22.2 = add nuw nsw i32 %testm.058.2, 1
  %exitcond67.2.not = icmp eq i32 %inc22.2, 33
  br i1 %exitcond67.2.not, label %for.inc21.2.for.inc24.2_crit_edge, label %for.inc21.2.for.cond9.preheader.2_crit_edge

for.inc21.2.for.cond9.preheader.2_crit_edge:      ; preds = %for.inc21.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond9.preheader.2

for.inc21.2.for.inc24.2_crit_edge:                ; preds = %for.inc21.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc24.2

for.inc24.2:                                      ; preds = %for.inc21.2.for.inc24.2_crit_edge, %for.inc24.1.for.inc24.2_crit_edge
  %delta.4.2 = phi i32 [ %delta.4.1, %for.inc24.1.for.inc24.2_crit_edge ], [ %delta.3.2, %for.inc21.2.for.inc24.2_crit_edge ]
  %p.4.2 = phi i32 [ %p.4.1, %for.inc24.1.for.inc24.2_crit_edge ], [ %p.3.2, %for.inc21.2.for.inc24.2_crit_edge ]
  %m.4.2 = phi i32 [ %m.4.1, %for.inc24.1.for.inc24.2_crit_edge ], [ %m.3.2, %for.inc21.2.for.inc24.2_crit_edge ]
  %n.4.2 = phi i32 [ %n.4.1, %for.inc24.1.for.inc24.2_crit_edge ], [ %n.3.2, %for.inc21.2.for.inc24.2_crit_edge ]
  %mul.3 = shl i32 %clock, 1
  %6 = add i32 %mul.3, -800001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -400001, i32 %6)
  %7 = icmp ult i32 %6, -400001
  br i1 %7, label %for.inc24.2.for.inc24.3_crit_edge, label %for.inc24.2.for.cond9.preheader.3_crit_edge

for.inc24.2.for.cond9.preheader.3_crit_edge:      ; preds = %for.inc24.2
  br label %for.cond9.preheader.3

for.inc24.2.for.inc24.3_crit_edge:                ; preds = %for.inc24.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc24.3

for.cond9.preheader.3:                            ; preds = %for.inc21.3.for.cond9.preheader.3_crit_edge, %for.inc24.2.for.cond9.preheader.3_crit_edge
  %n.161.3 = phi i32 [ %n.3.3, %for.inc21.3.for.cond9.preheader.3_crit_edge ], [ %n.4.2, %for.inc24.2.for.cond9.preheader.3_crit_edge ]
  %m.160.3 = phi i32 [ %m.3.3, %for.inc21.3.for.cond9.preheader.3_crit_edge ], [ %m.4.2, %for.inc24.2.for.cond9.preheader.3_crit_edge ]
  %p.159.3 = phi i32 [ %p.3.3, %for.inc21.3.for.cond9.preheader.3_crit_edge ], [ %p.4.2, %for.inc24.2.for.cond9.preheader.3_crit_edge ]
  %testm.058.3 = phi i32 [ %inc22.3, %for.inc21.3.for.cond9.preheader.3_crit_edge ], [ 1, %for.inc24.2.for.cond9.preheader.3_crit_edge ]
  %delta.157.3 = phi i32 [ %delta.3.3, %for.inc21.3.for.cond9.preheader.3_crit_edge ], [ %delta.4.2, %for.inc24.2.for.cond9.preheader.3_crit_edge ]
  %mul13.3 = shl nuw nsw i32 %testm.058.3, 1
  br label %for.body11.3

for.body11.3:                                     ; preds = %for.inc.3.for.body11.3_crit_edge, %for.cond9.preheader.3
  %n.256.3 = phi i32 [ %n.161.3, %for.cond9.preheader.3 ], [ %n.3.3, %for.inc.3.for.body11.3_crit_edge ]
  %m.255.3 = phi i32 [ %m.160.3, %for.cond9.preheader.3 ], [ %m.3.3, %for.inc.3.for.body11.3_crit_edge ]
  %p.254.3 = phi i32 [ %p.159.3, %for.cond9.preheader.3 ], [ %p.3.3, %for.inc.3.for.body11.3_crit_edge ]
  %testn.052.3 = phi i32 [ 17, %for.cond9.preheader.3 ], [ %inc.3, %for.inc.3.for.body11.3_crit_edge ]
  %delta.251.3 = phi i32 [ %delta.157.3, %for.cond9.preheader.3 ], [ %delta.3.3, %for.inc.3.for.body11.3_crit_edge ]
  %mul12.3 = mul nuw nsw i32 %testn.052.3, 33333
  %div.3 = udiv i32 %mul12.3, %mul13.3
  call void @__sanitizer_cov_trace_cmp4(i32 %div.3, i32 %clock)
  %cmp14.3 = icmp ugt i32 %div.3, %clock
  %sub.3 = sub i32 %div.3, %clock
  %sub16.3 = sub i32 %clock, %div.3
  %tmpdelta.0.3 = select i1 %cmp14.3, i32 %sub.3, i32 %sub16.3
  call void @__sanitizer_cov_trace_cmp4(i32 %tmpdelta.0.3, i32 %delta.251.3)
  %cmp18.3 = icmp ult i32 %tmpdelta.0.3, %delta.251.3
  br i1 %cmp18.3, label %if.then19.3, label %for.body11.3.for.inc.3_crit_edge

for.body11.3.for.inc.3_crit_edge:                 ; preds = %for.body11.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3

if.then19.3:                                      ; preds = %for.body11.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then19.3, %for.body11.3.for.inc.3_crit_edge
  %delta.3.3 = phi i32 [ %tmpdelta.0.3, %if.then19.3 ], [ %delta.251.3, %for.body11.3.for.inc.3_crit_edge ]
  %p.3.3 = phi i32 [ 2, %if.then19.3 ], [ %p.254.3, %for.body11.3.for.inc.3_crit_edge ]
  %m.3.3 = phi i32 [ %testm.058.3, %if.then19.3 ], [ %m.255.3, %for.body11.3.for.inc.3_crit_edge ]
  %n.3.3 = phi i32 [ %testn.052.3, %if.then19.3 ], [ %n.256.3, %for.body11.3.for.inc.3_crit_edge ]
  %inc.3 = add nuw nsw i32 %testn.052.3, 1
  %exitcond.3.not = icmp eq i32 %inc.3, 257
  br i1 %exitcond.3.not, label %for.inc21.3, label %for.inc.3.for.body11.3_crit_edge

for.inc.3.for.body11.3_crit_edge:                 ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body11.3

for.inc21.3:                                      ; preds = %for.inc.3
  %inc22.3 = add nuw nsw i32 %testm.058.3, 1
  %exitcond67.3.not = icmp eq i32 %inc22.3, 33
  br i1 %exitcond67.3.not, label %for.inc21.3.for.inc24.3_crit_edge, label %for.inc21.3.for.cond9.preheader.3_crit_edge

for.inc21.3.for.cond9.preheader.3_crit_edge:      ; preds = %for.inc21.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond9.preheader.3

for.inc21.3.for.inc24.3_crit_edge:                ; preds = %for.inc21.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc24.3

for.inc24.3:                                      ; preds = %for.inc21.3.for.inc24.3_crit_edge, %for.inc24.2.for.inc24.3_crit_edge
  %delta.4.3 = phi i32 [ %delta.4.2, %for.inc24.2.for.inc24.3_crit_edge ], [ %delta.3.3, %for.inc21.3.for.inc24.3_crit_edge ]
  %p.4.3 = phi i32 [ %p.4.2, %for.inc24.2.for.inc24.3_crit_edge ], [ %p.3.3, %for.inc21.3.for.inc24.3_crit_edge ]
  %m.4.3 = phi i32 [ %m.4.2, %for.inc24.2.for.inc24.3_crit_edge ], [ %m.3.3, %for.inc21.3.for.inc24.3_crit_edge ]
  %n.4.3 = phi i32 [ %n.4.2, %for.inc24.2.for.inc24.3_crit_edge ], [ %n.3.3, %for.inc21.3.for.inc24.3_crit_edge ]
  %8 = add i32 %clock, -800001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -400001, i32 %8)
  %9 = icmp ult i32 %8, -400001
  br i1 %9, label %for.inc24.3.for.inc24.4_crit_edge, label %for.inc24.3.for.cond9.preheader.4_crit_edge

for.inc24.3.for.cond9.preheader.4_crit_edge:      ; preds = %for.inc24.3
  br label %for.cond9.preheader.4

for.inc24.3.for.inc24.4_crit_edge:                ; preds = %for.inc24.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc24.4

for.cond9.preheader.4:                            ; preds = %for.inc21.4.for.cond9.preheader.4_crit_edge, %for.inc24.3.for.cond9.preheader.4_crit_edge
  %n.161.4 = phi i32 [ %n.3.4, %for.inc21.4.for.cond9.preheader.4_crit_edge ], [ %n.4.3, %for.inc24.3.for.cond9.preheader.4_crit_edge ]
  %m.160.4 = phi i32 [ %m.3.4, %for.inc21.4.for.cond9.preheader.4_crit_edge ], [ %m.4.3, %for.inc24.3.for.cond9.preheader.4_crit_edge ]
  %p.159.4 = phi i32 [ %p.3.4, %for.inc21.4.for.cond9.preheader.4_crit_edge ], [ %p.4.3, %for.inc24.3.for.cond9.preheader.4_crit_edge ]
  %testm.058.4 = phi i32 [ %inc22.4, %for.inc21.4.for.cond9.preheader.4_crit_edge ], [ 1, %for.inc24.3.for.cond9.preheader.4_crit_edge ]
  %delta.157.4 = phi i32 [ %delta.3.4, %for.inc21.4.for.cond9.preheader.4_crit_edge ], [ %delta.4.3, %for.inc24.3.for.cond9.preheader.4_crit_edge ]
  br label %for.body11.4

for.body11.4:                                     ; preds = %for.inc.4.for.body11.4_crit_edge, %for.cond9.preheader.4
  %n.256.4 = phi i32 [ %n.161.4, %for.cond9.preheader.4 ], [ %n.3.4, %for.inc.4.for.body11.4_crit_edge ]
  %m.255.4 = phi i32 [ %m.160.4, %for.cond9.preheader.4 ], [ %m.3.4, %for.inc.4.for.body11.4_crit_edge ]
  %p.254.4 = phi i32 [ %p.159.4, %for.cond9.preheader.4 ], [ %p.3.4, %for.inc.4.for.body11.4_crit_edge ]
  %testn.052.4 = phi i32 [ 17, %for.cond9.preheader.4 ], [ %inc.4, %for.inc.4.for.body11.4_crit_edge ]
  %delta.251.4 = phi i32 [ %delta.157.4, %for.cond9.preheader.4 ], [ %delta.3.4, %for.inc.4.for.body11.4_crit_edge ]
  %mul12.4 = mul nuw nsw i32 %testn.052.4, 33333
  %div.4 = udiv i32 %mul12.4, %testm.058.4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.4, i32 %clock)
  %cmp14.4 = icmp ugt i32 %div.4, %clock
  %sub.4 = sub i32 %div.4, %clock
  %sub16.4 = sub i32 %clock, %div.4
  %tmpdelta.0.4 = select i1 %cmp14.4, i32 %sub.4, i32 %sub16.4
  call void @__sanitizer_cov_trace_cmp4(i32 %tmpdelta.0.4, i32 %delta.251.4)
  %cmp18.4 = icmp ult i32 %tmpdelta.0.4, %delta.251.4
  br i1 %cmp18.4, label %if.then19.4, label %for.body11.4.for.inc.4_crit_edge

for.body11.4.for.inc.4_crit_edge:                 ; preds = %for.body11.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.4

if.then19.4:                                      ; preds = %for.body11.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then19.4, %for.body11.4.for.inc.4_crit_edge
  %delta.3.4 = phi i32 [ %tmpdelta.0.4, %if.then19.4 ], [ %delta.251.4, %for.body11.4.for.inc.4_crit_edge ]
  %p.3.4 = phi i32 [ 1, %if.then19.4 ], [ %p.254.4, %for.body11.4.for.inc.4_crit_edge ]
  %m.3.4 = phi i32 [ %testm.058.4, %if.then19.4 ], [ %m.255.4, %for.body11.4.for.inc.4_crit_edge ]
  %n.3.4 = phi i32 [ %testn.052.4, %if.then19.4 ], [ %n.256.4, %for.body11.4.for.inc.4_crit_edge ]
  %inc.4 = add nuw nsw i32 %testn.052.4, 1
  %exitcond.4.not = icmp eq i32 %inc.4, 257
  br i1 %exitcond.4.not, label %for.inc21.4, label %for.inc.4.for.body11.4_crit_edge

for.inc.4.for.body11.4_crit_edge:                 ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body11.4

for.inc21.4:                                      ; preds = %for.inc.4
  %inc22.4 = add nuw nsw i32 %testm.058.4, 1
  %exitcond67.4.not = icmp eq i32 %inc22.4, 33
  br i1 %exitcond67.4.not, label %for.inc21.4.for.inc24.4_crit_edge, label %for.inc21.4.for.cond9.preheader.4_crit_edge

for.inc21.4.for.cond9.preheader.4_crit_edge:      ; preds = %for.inc21.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond9.preheader.4

for.inc21.4.for.inc24.4_crit_edge:                ; preds = %for.inc21.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc24.4

for.inc24.4:                                      ; preds = %for.inc21.4.for.inc24.4_crit_edge, %for.inc24.3.for.inc24.4_crit_edge
  %p.4.4 = phi i32 [ %p.4.3, %for.inc24.3.for.inc24.4_crit_edge ], [ %p.3.4, %for.inc21.4.for.inc24.4_crit_edge ]
  %m.4.4 = phi i32 [ %m.4.3, %for.inc24.3.for.inc24.4_crit_edge ], [ %m.3.4, %for.inc21.4.for.inc24.4_crit_edge ]
  %n.4.4 = phi i32 [ %n.4.3, %for.inc24.3.for.inc24.4_crit_edge ], [ %n.3.4, %for.inc21.4.for.inc24.4_crit_edge ]
  %10 = ptrtoint ptr %pixpllc to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %m.4.4, ptr %pixpllc, align 4
  %n27 = getelementptr inbounds %struct.mgag200_pll_values, ptr %pixpllc, i32 0, i32 1
  %11 = ptrtoint ptr %n27 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %n.4.4, ptr %n27, align 4
  %p28 = getelementptr inbounds %struct.mgag200_pll_values, ptr %pixpllc, i32 0, i32 2
  %12 = ptrtoint ptr %p28 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %p.4.4, ptr %p28, align 4
  %s29 = getelementptr inbounds %struct.mgag200_pll_values, ptr %pixpllc, i32 0, i32 3
  %13 = ptrtoint ptr %s29 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %s29, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mgag200_pixpll_update_g200eh(ptr nocapture noundef readonly %pixpll, ptr nocapture noundef readonly %pixpllc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pixpll to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pixpll, align 4
  %2 = ptrtoint ptr %pixpllc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pixpllc, align 4
  %sub = add i32 %3, 255
  %n = getelementptr inbounds %struct.mgag200_pll_values, ptr %pixpllc, i32 0, i32 1
  %4 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n, align 4
  %sub2 = add i32 %5, -1
  %p = getelementptr inbounds %struct.mgag200_pll_values, ptr %pixpllc, i32 0, i32 2
  %6 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %p, align 4
  %sub3 = add i32 %7, 255
  %s = getelementptr inbounds %struct.mgag200_pll_values, ptr %pixpllc, i32 0, i32 3
  %8 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s, align 4
  %and = lshr i32 %sub2, 1
  %shr = and i32 %and, 128
  %or = or i32 %shr, %sub
  %conv = trunc i32 %or to i8
  %conv4 = trunc i32 %sub2 to i8
  %shl = shl i32 %9, 3
  %or5 = or i32 %shl, %sub3
  %conv6 = trunc i32 %or5 to i8
  %rmmio = getelementptr inbounds %struct.mga_device, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rmmio, align 8
  %add.ptr = getelementptr i8, ptr %11, i32 8140
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  %13 = or i8 %12, 12
  %14 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rmmio, align 8
  %add.ptr17 = getelementptr i8, ptr %15, i32 8130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr17, i8 %13) #5, !srcloc !106
  br label %for.body110.preheader

for.body110.preheader:                            ; preds = %for.inc122.for.body110.preheader_crit_edge, %entry
  %i.0179 = phi i32 [ 0, %entry ], [ %inc123, %for.inc122.for.body110.preheader_crit_edge ]
  %16 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rmmio, align 8
  %add.ptr23 = getelementptr i8, ptr %17, i32 15360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr23, i8 26) #5, !srcloc !106
  %18 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rmmio, align 8
  %add.ptr25 = getelementptr i8, ptr %19, i32 15370
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr25) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  %21 = or i8 %20, 4
  %22 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rmmio, align 8
  %add.ptr31 = getelementptr i8, ptr %23, i32 15370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr31, i8 %21) #5, !srcloc !106
  %24 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rmmio, align 8
  %add.ptr33 = getelementptr i8, ptr %25, i32 8140
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr33) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  %27 = or i8 %26, 12
  %28 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rmmio, align 8
  %add.ptr39 = getelementptr i8, ptr %29, i32 8130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr39, i8 %27) #5, !srcloc !106
  %30 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rmmio, align 8
  %add.ptr41 = getelementptr i8, ptr %31, i32 15360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr41, i8 26) #5, !srcloc !106
  %32 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rmmio, align 8
  %add.ptr43 = getelementptr i8, ptr %33, i32 15370
  %34 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr43) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  %35 = or i8 %34, 8
  %36 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rmmio, align 8
  %add.ptr49 = getelementptr i8, ptr %37, i32 15370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr49, i8 %35) #5, !srcloc !106
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 107374000) #5
  %39 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rmmio, align 8
  %add.ptr52 = getelementptr i8, ptr %40, i32 15360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr52, i8 -74) #5, !srcloc !106
  %41 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rmmio, align 8
  %add.ptr54 = getelementptr i8, ptr %42, i32 15370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr54, i8 %conv) #5, !srcloc !106
  %43 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rmmio, align 8
  %add.ptr59 = getelementptr i8, ptr %44, i32 15360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr59, i8 -73) #5, !srcloc !106
  %45 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rmmio, align 8
  %add.ptr61 = getelementptr i8, ptr %46, i32 15370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr61, i8 %conv4) #5, !srcloc !106
  %47 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rmmio, align 8
  %add.ptr66 = getelementptr i8, ptr %48, i32 15360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr66, i8 -72) #5, !srcloc !106
  %49 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %rmmio, align 8
  %add.ptr68 = getelementptr i8, ptr %50, i32 15370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr68, i8 %conv6) #5, !srcloc !106
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 107374000) #5
  %52 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rmmio, align 8
  %add.ptr72 = getelementptr i8, ptr %53, i32 15360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr72, i8 26) #5, !srcloc !106
  %54 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rmmio, align 8
  %add.ptr74 = getelementptr i8, ptr %55, i32 15370
  %56 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr74) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  %57 = and i8 %56, -4
  %58 = or i8 %57, 1
  %59 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %rmmio, align 8
  %add.ptr83 = getelementptr i8, ptr %60, i32 15370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr83, i8 %58) #5, !srcloc !106
  %61 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %rmmio, align 8
  %add.ptr85 = getelementptr i8, ptr %62, i32 15360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr85, i8 26) #5, !srcloc !106
  %63 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %rmmio, align 8
  %add.ptr87 = getelementptr i8, ptr %64, i32 15370
  %65 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr87) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  %66 = and i8 %65, -13
  %67 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %rmmio, align 8
  %add.ptr96 = getelementptr i8, ptr %68, i32 15370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr96, i8 %66) #5, !srcloc !106
  %69 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %rmmio, align 8
  %add.ptr98 = getelementptr i8, ptr %70, i32 7712
  %71 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr98) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  %conv100 = zext i8 %71 to i32
  br label %for.body110

for.body110:                                      ; preds = %for.inc.for.body110_crit_edge, %for.body110.preheader
  %vcount.0177 = phi i32 [ %spec.store.select, %for.inc.for.body110_crit_edge ], [ %conv100, %for.body110.preheader ]
  %j.0176 = phi i32 [ %inc, %for.inc.for.body110_crit_edge ], [ 0, %for.body110.preheader ]
  %72 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %rmmio, align 8
  %add.ptr112 = getelementptr i8, ptr %73, i32 7712
  %74 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr112) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  %conv114 = zext i8 %74 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %vcount.0177, i32 %conv114)
  %cmp115 = icmp sgt i32 %vcount.0177, %conv114
  %spec.store.select = select i1 %cmp115, i32 0, i32 %vcount.0177
  %sub117 = sub i32 %conv114, %spec.store.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub117)
  %cmp118 = icmp sgt i32 %sub117, 2
  br i1 %cmp118, label %for.body110.for.end124_crit_edge, label %for.inc

for.body110.for.end124_crit_edge:                 ; preds = %for.body110
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end124

for.inc:                                          ; preds = %for.body110
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %75 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %75(i32 noundef 1073740) #5
  %inc = add nuw nsw i32 %j.0176, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %j.0176)
  %cmp102 = icmp ugt i32 %j.0176, 28
  %brmerge174 = select i1 %cmp102, i1 true, i1 %cmp118
  br i1 %brmerge174, label %for.inc122, label %for.inc.for.body110_crit_edge

for.inc.for.body110_crit_edge:                    ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body110

for.inc122:                                       ; preds = %for.inc
  %inc123 = add nuw nsw i32 %i.0179, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %i.0179)
  %cmp = icmp ugt i32 %i.0179, 31
  %brmerge = select i1 %cmp, i1 true, i1 %cmp118
  br i1 %brmerge, label %for.inc122.for.end124_crit_edge, label %for.inc122.for.body110.preheader_crit_edge

for.inc122.for.body110.preheader_crit_edge:       ; preds = %for.inc122
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body110.preheader

for.inc122.for.end124_crit_edge:                  ; preds = %for.inc122
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end124

for.end124:                                       ; preds = %for.inc122.for.end124_crit_edge, %for.body110.for.end124_crit_edge
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define internal i32 @mgag200_pixpll_compute_g200eh3(ptr nocapture noundef readnone %pixpll, i32 noundef %clock, ptr nocapture noundef writeonly %pixpllc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc25.for.body_crit_edge, %entry
  %n.072 = phi i32 [ 0, %entry ], [ %n.4, %for.inc25.for.body_crit_edge ]
  %m.071 = phi i32 [ 0, %entry ], [ %m.4, %for.inc25.for.body_crit_edge ]
  %p.070 = phi i32 [ 0, %entry ], [ %p.4, %for.inc25.for.body_crit_edge ]
  %testm.069 = phi i32 [ 150, %entry ], [ %dec26, %for.inc25.for.body_crit_edge ]
  %delta.068 = phi i32 [ -1, %entry ], [ %delta.4, %for.inc25.for.body_crit_edge ]
  %mul = mul i32 %testm.069, %clock
  %0 = add i32 %mul, -3000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1500001, i32 %0)
  %1 = icmp ult i32 %0, -1500001
  br i1 %1, label %for.body.for.inc25_crit_edge, label %for.cond6.preheader

for.body.for.inc25_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc25

for.cond6.preheader:                              ; preds = %for.body
  %add16 = add nuw nsw i32 %testm.069, 1
  br label %for.body8

for.cond6:                                        ; preds = %if.end18
  %dec = add nsw i32 %testn.063, -1
  %cmp7 = icmp ugt i32 %dec, 59
  br i1 %cmp7, label %for.cond6.for.body8_crit_edge, label %for.cond6.for.inc25_crit_edge

for.cond6.for.inc25_crit_edge:                    ; preds = %for.cond6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc25

for.cond6.for.body8_crit_edge:                    ; preds = %for.cond6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body8

for.body8:                                        ; preds = %for.cond6.for.body8_crit_edge, %for.cond6.preheader
  %n.167 = phi i32 [ %n.072, %for.cond6.preheader ], [ %n.2, %for.cond6.for.body8_crit_edge ]
  %m.166 = phi i32 [ %m.071, %for.cond6.preheader ], [ %m.2, %for.cond6.for.body8_crit_edge ]
  %p.165 = phi i32 [ %p.070, %for.cond6.preheader ], [ %p.2, %for.cond6.for.body8_crit_edge ]
  %testn.063 = phi i32 [ 120, %for.cond6.preheader ], [ %dec, %for.cond6.for.body8_crit_edge ]
  %delta.162 = phi i32 [ %delta.068, %for.cond6.preheader ], [ %delta.2, %for.cond6.for.body8_crit_edge ]
  %mul9 = mul nuw nsw i32 %testn.063, 25000
  %div = udiv i32 %mul9, %testm.069
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %clock)
  %cmp10 = icmp ugt i32 %div, %clock
  %sub = sub i32 %div, %clock
  %sub12 = sub i32 %clock, %div
  %tmpdelta.0 = select i1 %cmp10, i32 %sub, i32 %sub12
  call void @__sanitizer_cov_trace_cmp4(i32 %tmpdelta.0, i32 %delta.162)
  %cmp14 = icmp ult i32 %tmpdelta.0, %delta.162
  br i1 %cmp14, label %if.then15, label %for.body8.if.end18_crit_edge

for.body8.if.end18_crit_edge:                     ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.then15:                                        ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #7
  %add = add nuw nsw i32 %testn.063, 1
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %for.body8.if.end18_crit_edge
  %delta.2 = phi i32 [ %tmpdelta.0, %if.then15 ], [ %delta.162, %for.body8.if.end18_crit_edge ]
  %p.2 = phi i32 [ 1, %if.then15 ], [ %p.165, %for.body8.if.end18_crit_edge ]
  %m.2 = phi i32 [ %add16, %if.then15 ], [ %m.166, %for.body8.if.end18_crit_edge ]
  %n.2 = phi i32 [ %add, %if.then15 ], [ %n.167, %for.body8.if.end18_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %delta.2)
  %cmp19 = icmp eq i32 %delta.2, 0
  br i1 %cmp19, label %if.end18.for.end27_crit_edge, label %for.cond6

if.end18.for.end27_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end27

for.inc25:                                        ; preds = %for.cond6.for.inc25_crit_edge, %for.body.for.inc25_crit_edge
  %delta.4 = phi i32 [ %delta.068, %for.body.for.inc25_crit_edge ], [ %delta.2, %for.cond6.for.inc25_crit_edge ]
  %p.4 = phi i32 [ %p.070, %for.body.for.inc25_crit_edge ], [ %p.2, %for.cond6.for.inc25_crit_edge ]
  %m.4 = phi i32 [ %m.071, %for.body.for.inc25_crit_edge ], [ %m.2, %for.cond6.for.inc25_crit_edge ]
  %n.4 = phi i32 [ %n.072, %for.body.for.inc25_crit_edge ], [ %n.2, %for.cond6.for.inc25_crit_edge ]
  %dec26 = add nsw i32 %testm.069, -1
  %cmp = icmp ugt i32 %dec26, 5
  br i1 %cmp, label %for.inc25.for.body_crit_edge, label %for.inc25.for.end27_crit_edge

for.inc25.for.end27_crit_edge:                    ; preds = %for.inc25
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end27

for.inc25.for.body_crit_edge:                     ; preds = %for.inc25
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end27:                                        ; preds = %for.inc25.for.end27_crit_edge, %if.end18.for.end27_crit_edge
  %p.5 = phi i32 [ %p.2, %if.end18.for.end27_crit_edge ], [ %p.4, %for.inc25.for.end27_crit_edge ]
  %m.5 = phi i32 [ %m.2, %if.end18.for.end27_crit_edge ], [ %m.4, %for.inc25.for.end27_crit_edge ]
  %n.5 = phi i32 [ %n.2, %if.end18.for.end27_crit_edge ], [ %n.4, %for.inc25.for.end27_crit_edge ]
  %2 = ptrtoint ptr %pixpllc to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %m.5, ptr %pixpllc, align 4
  %n29 = getelementptr inbounds %struct.mgag200_pll_values, ptr %pixpllc, i32 0, i32 1
  %3 = ptrtoint ptr %n29 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %n.5, ptr %n29, align 4
  %p30 = getelementptr inbounds %struct.mgag200_pll_values, ptr %pixpllc, i32 0, i32 2
  %4 = ptrtoint ptr %p30 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %p.5, ptr %p30, align 4
  %s31 = getelementptr inbounds %struct.mgag200_pll_values, ptr %pixpllc, i32 0, i32 3
  %5 = ptrtoint ptr %s31 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %s31, align 4
  ret i32 0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define internal i32 @mgag200_pixpll_compute_g200er(ptr nocapture noundef readnone %pixpll, i32 noundef %clock, ptr nocapture noundef writeonly %pixpllc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond8.preheader.lr.ph

for.cond8.preheader.lr.ph:                        ; preds = %for.inc42.for.cond8.preheader.lr.ph_crit_edge, %entry
  %s.0116 = phi i32 [ 0, %entry ], [ %s.4.lcssa.lcssa, %for.inc42.for.cond8.preheader.lr.ph_crit_edge ]
  %n.0115 = phi i32 [ 0, %entry ], [ %n.4.lcssa.lcssa, %for.inc42.for.cond8.preheader.lr.ph_crit_edge ]
  %m.0114 = phi i32 [ 0, %entry ], [ %m.4.lcssa.lcssa, %for.inc42.for.cond8.preheader.lr.ph_crit_edge ]
  %p.0113 = phi i32 [ 0, %entry ], [ %p.4.lcssa.lcssa, %for.inc42.for.cond8.preheader.lr.ph_crit_edge ]
  %testr.0111 = phi i32 [ 0, %entry ], [ %add17, %for.inc42.for.cond8.preheader.lr.ph_crit_edge ]
  %delta.0110 = phi i32 [ -1, %entry ], [ %delta.4.lcssa.lcssa, %for.inc42.for.cond8.preheader.lr.ph_crit_edge ]
  %add17 = add nuw nsw i32 %testr.0111, 1
  br label %for.cond14.preheader.lr.ph

for.cond14.preheader.lr.ph:                       ; preds = %for.inc39.for.cond14.preheader.lr.ph_crit_edge, %for.cond8.preheader.lr.ph
  %s.1104 = phi i32 [ %s.0116, %for.cond8.preheader.lr.ph ], [ %s.4.lcssa.lcssa, %for.inc39.for.cond14.preheader.lr.ph_crit_edge ]
  %n.1103 = phi i32 [ %n.0115, %for.cond8.preheader.lr.ph ], [ %n.4.lcssa.lcssa, %for.inc39.for.cond14.preheader.lr.ph_crit_edge ]
  %m.1102 = phi i32 [ %m.0114, %for.cond8.preheader.lr.ph ], [ %m.4.lcssa.lcssa, %for.inc39.for.cond14.preheader.lr.ph_crit_edge ]
  %p.1101 = phi i32 [ %p.0113, %for.cond8.preheader.lr.ph ], [ %p.4.lcssa.lcssa, %for.inc39.for.cond14.preheader.lr.ph_crit_edge ]
  %testn.099 = phi i32 [ 5, %for.cond8.preheader.lr.ph ], [ %add, %for.inc39.for.cond14.preheader.lr.ph_crit_edge ]
  %delta.198 = phi i32 [ %delta.0110, %for.cond8.preheader.lr.ph ], [ %delta.4.lcssa.lcssa, %for.inc39.for.cond14.preheader.lr.ph_crit_edge ]
  %add = add nuw nsw i32 %testn.099, 1
  %mul = mul nuw nsw i32 %add, 48000
  %div = udiv i32 %mul, %add17
  %0 = add nsw i32 %div, -1488001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -432001, i32 %0)
  %1 = icmp ult i32 %0, -432001
  br label %for.body16

for.body16:                                       ; preds = %for.inc.for.body16_crit_edge, %for.cond14.preheader.lr.ph
  %s.383 = phi i32 [ %s.1104, %for.cond14.preheader.lr.ph ], [ %s.4, %for.inc.for.body16_crit_edge ]
  %n.382 = phi i32 [ %n.1103, %for.cond14.preheader.lr.ph ], [ %n.4, %for.inc.for.body16_crit_edge ]
  %m.381 = phi i32 [ %m.1102, %for.cond14.preheader.lr.ph ], [ %m.4, %for.inc.for.body16_crit_edge ]
  %p.380 = phi i32 [ %p.1101, %for.cond14.preheader.lr.ph ], [ %p.4, %for.inc.for.body16_crit_edge ]
  %testo.079 = phi i32 [ 5, %for.cond14.preheader.lr.ph ], [ %inc.pre-phi, %for.inc.for.body16_crit_edge ]
  %delta.378 = phi i32 [ %delta.198, %for.cond14.preheader.lr.ph ], [ %delta.4, %for.inc.for.body16_crit_edge ]
  br i1 %1, label %for.body16.for.inc_crit_edge, label %if.end23

for.body16.for.inc_crit_edge:                     ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #7
  %.pre118 = add nuw nsw i32 %testo.079, 1
  br label %for.inc

if.end23:                                         ; preds = %for.body16
  %add24 = add nuw nsw i32 %testo.079, 1
  %mul25 = shl i32 %add24, 3
  %div26 = udiv i32 %div, %mul25
  call void @__sanitizer_cov_trace_cmp4(i32 %div26, i32 %clock)
  %cmp27 = icmp ugt i32 %div26, %clock
  %sub = sub i32 %div26, %clock
  %sub29 = sub i32 %clock, %div26
  %tmpdelta.0 = select i1 %cmp27, i32 %sub, i32 %sub29
  call void @__sanitizer_cov_trace_cmp4(i32 %tmpdelta.0, i32 %delta.378)
  %cmp31 = icmp ult i32 %tmpdelta.0, %delta.378
  br i1 %cmp31, label %if.then32, label %if.end23.for.inc_crit_edge

if.end23.for.inc_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then32:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  %shl = shl i32 %testo.079, 3
  %add33 = or i32 %shl, 4
  br label %for.inc

for.inc:                                          ; preds = %if.then32, %if.end23.for.inc_crit_edge, %for.body16.for.inc_crit_edge
  %inc.pre-phi = phi i32 [ %.pre118, %for.body16.for.inc_crit_edge ], [ %add24, %if.end23.for.inc_crit_edge ], [ %add24, %if.then32 ]
  %delta.4 = phi i32 [ %delta.378, %for.body16.for.inc_crit_edge ], [ %delta.378, %if.end23.for.inc_crit_edge ], [ %tmpdelta.0, %if.then32 ]
  %p.4 = phi i32 [ %p.380, %for.body16.for.inc_crit_edge ], [ %p.380, %if.end23.for.inc_crit_edge ], [ %add17, %if.then32 ]
  %m.4 = phi i32 [ %m.381, %for.body16.for.inc_crit_edge ], [ %m.381, %if.end23.for.inc_crit_edge ], [ %add33, %if.then32 ]
  %n.4 = phi i32 [ %n.382, %for.body16.for.inc_crit_edge ], [ %n.382, %if.end23.for.inc_crit_edge ], [ %add, %if.then32 ]
  %s.4 = phi i32 [ %s.383, %for.body16.for.inc_crit_edge ], [ %s.383, %if.end23.for.inc_crit_edge ], [ %testr.0111, %if.then32 ]
  %exitcond.not = icmp eq i32 %inc.pre-phi, 33
  br i1 %exitcond.not, label %for.inc37, label %for.inc.for.body16_crit_edge

for.inc.for.body16_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body16

for.inc37:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %delta.4)
  %cmp11 = icmp eq i32 %delta.4, 0
  br i1 %cmp11, label %for.inc37.for.inc39_crit_edge, label %for.inc37.for.body16.1_crit_edge

for.inc37.for.body16.1_crit_edge:                 ; preds = %for.inc37
  br label %for.body16.1

for.inc37.for.inc39_crit_edge:                    ; preds = %for.inc37
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc39

for.body16.1:                                     ; preds = %for.inc.1.for.body16.1_crit_edge, %for.inc37.for.body16.1_crit_edge
  %s.383.1 = phi i32 [ %s.4.1, %for.inc.1.for.body16.1_crit_edge ], [ %s.4, %for.inc37.for.body16.1_crit_edge ]
  %n.382.1 = phi i32 [ %n.4.1, %for.inc.1.for.body16.1_crit_edge ], [ %n.4, %for.inc37.for.body16.1_crit_edge ]
  %m.381.1 = phi i32 [ %m.4.1, %for.inc.1.for.body16.1_crit_edge ], [ %m.4, %for.inc37.for.body16.1_crit_edge ]
  %p.380.1 = phi i32 [ %p.4.1, %for.inc.1.for.body16.1_crit_edge ], [ %p.4, %for.inc37.for.body16.1_crit_edge ]
  %testo.079.1 = phi i32 [ %inc.pre-phi.1, %for.inc.1.for.body16.1_crit_edge ], [ 5, %for.inc37.for.body16.1_crit_edge ]
  %delta.378.1 = phi i32 [ %delta.4.1, %for.inc.1.for.body16.1_crit_edge ], [ %delta.4, %for.inc37.for.body16.1_crit_edge ]
  br i1 %1, label %for.body16.for.inc_crit_edge.1, label %if.end23.1

if.end23.1:                                       ; preds = %for.body16.1
  %add24.1 = add nuw nsw i32 %testo.079.1, 1
  %mul25.1 = shl i32 %add24.1, 2
  %div26.1 = udiv i32 %div, %mul25.1
  call void @__sanitizer_cov_trace_cmp4(i32 %div26.1, i32 %clock)
  %cmp27.1 = icmp ugt i32 %div26.1, %clock
  %sub.1 = sub i32 %div26.1, %clock
  %sub29.1 = sub i32 %clock, %div26.1
  %tmpdelta.0.1 = select i1 %cmp27.1, i32 %sub.1, i32 %sub29.1
  call void @__sanitizer_cov_trace_cmp4(i32 %tmpdelta.0.1, i32 %delta.378.1)
  %cmp31.1 = icmp ult i32 %tmpdelta.0.1, %delta.378.1
  br i1 %cmp31.1, label %if.then32.1, label %if.end23.1.for.inc.1_crit_edge

if.end23.1.for.inc.1_crit_edge:                   ; preds = %if.end23.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

if.then32.1:                                      ; preds = %if.end23.1
  call void @__sanitizer_cov_trace_pc() #7
  %shl.1 = shl i32 %testo.079.1, 3
  %add33.1 = or i32 %shl.1, 3
  br label %for.inc.1

for.body16.for.inc_crit_edge.1:                   ; preds = %for.body16.1
  call void @__sanitizer_cov_trace_pc() #7
  %.pre118.1 = add nuw nsw i32 %testo.079.1, 1
  br label %for.inc.1

for.inc.1:                                        ; preds = %for.body16.for.inc_crit_edge.1, %if.then32.1, %if.end23.1.for.inc.1_crit_edge
  %inc.pre-phi.1 = phi i32 [ %.pre118.1, %for.body16.for.inc_crit_edge.1 ], [ %add24.1, %if.end23.1.for.inc.1_crit_edge ], [ %add24.1, %if.then32.1 ]
  %delta.4.1 = phi i32 [ %delta.378.1, %for.body16.for.inc_crit_edge.1 ], [ %delta.378.1, %if.end23.1.for.inc.1_crit_edge ], [ %tmpdelta.0.1, %if.then32.1 ]
  %p.4.1 = phi i32 [ %p.380.1, %for.body16.for.inc_crit_edge.1 ], [ %p.380.1, %if.end23.1.for.inc.1_crit_edge ], [ %add17, %if.then32.1 ]
  %m.4.1 = phi i32 [ %m.381.1, %for.body16.for.inc_crit_edge.1 ], [ %m.381.1, %if.end23.1.for.inc.1_crit_edge ], [ %add33.1, %if.then32.1 ]
  %n.4.1 = phi i32 [ %n.382.1, %for.body16.for.inc_crit_edge.1 ], [ %n.382.1, %if.end23.1.for.inc.1_crit_edge ], [ %add, %if.then32.1 ]
  %s.4.1 = phi i32 [ %s.383.1, %for.body16.for.inc_crit_edge.1 ], [ %s.383.1, %if.end23.1.for.inc.1_crit_edge ], [ %testr.0111, %if.then32.1 ]
  %exitcond.not.1 = icmp eq i32 %inc.pre-phi.1, 33
  br i1 %exitcond.not.1, label %for.inc37.1, label %for.inc.1.for.body16.1_crit_edge

for.inc.1.for.body16.1_crit_edge:                 ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body16.1

for.inc37.1:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %delta.4.1)
  %cmp11.1 = icmp eq i32 %delta.4.1, 0
  br i1 %cmp11.1, label %for.inc37.1.for.inc39_crit_edge, label %for.inc37.1.for.body16.2_crit_edge

for.inc37.1.for.body16.2_crit_edge:               ; preds = %for.inc37.1
  br label %for.body16.2

for.inc37.1.for.inc39_crit_edge:                  ; preds = %for.inc37.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc39

for.body16.2:                                     ; preds = %for.inc.2.for.body16.2_crit_edge, %for.inc37.1.for.body16.2_crit_edge
  %s.383.2 = phi i32 [ %s.4.2, %for.inc.2.for.body16.2_crit_edge ], [ %s.4.1, %for.inc37.1.for.body16.2_crit_edge ]
  %n.382.2 = phi i32 [ %n.4.2, %for.inc.2.for.body16.2_crit_edge ], [ %n.4.1, %for.inc37.1.for.body16.2_crit_edge ]
  %m.381.2 = phi i32 [ %m.4.2, %for.inc.2.for.body16.2_crit_edge ], [ %m.4.1, %for.inc37.1.for.body16.2_crit_edge ]
  %p.380.2 = phi i32 [ %p.4.2, %for.inc.2.for.body16.2_crit_edge ], [ %p.4.1, %for.inc37.1.for.body16.2_crit_edge ]
  %testo.079.2 = phi i32 [ %inc.pre-phi.2, %for.inc.2.for.body16.2_crit_edge ], [ 5, %for.inc37.1.for.body16.2_crit_edge ]
  %delta.378.2 = phi i32 [ %delta.4.2, %for.inc.2.for.body16.2_crit_edge ], [ %delta.4.1, %for.inc37.1.for.body16.2_crit_edge ]
  br i1 %1, label %for.body16.for.inc_crit_edge.2, label %if.end23.2

if.end23.2:                                       ; preds = %for.body16.2
  %add24.2 = add nuw nsw i32 %testo.079.2, 1
  %mul25.2 = shl i32 %add24.2, 1
  %div26.2 = udiv i32 %div, %mul25.2
  call void @__sanitizer_cov_trace_cmp4(i32 %div26.2, i32 %clock)
  %cmp27.2 = icmp ugt i32 %div26.2, %clock
  %sub.2 = sub i32 %div26.2, %clock
  %sub29.2 = sub i32 %clock, %div26.2
  %tmpdelta.0.2 = select i1 %cmp27.2, i32 %sub.2, i32 %sub29.2
  call void @__sanitizer_cov_trace_cmp4(i32 %tmpdelta.0.2, i32 %delta.378.2)
  %cmp31.2 = icmp ult i32 %tmpdelta.0.2, %delta.378.2
  br i1 %cmp31.2, label %if.then32.2, label %if.end23.2.for.inc.2_crit_edge

if.end23.2.for.inc.2_crit_edge:                   ; preds = %if.end23.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

if.then32.2:                                      ; preds = %if.end23.2
  call void @__sanitizer_cov_trace_pc() #7
  %shl.2 = shl i32 %testo.079.2, 3
  %add33.2 = or i32 %shl.2, 2
  br label %for.inc.2

for.body16.for.inc_crit_edge.2:                   ; preds = %for.body16.2
  call void @__sanitizer_cov_trace_pc() #7
  %.pre118.2 = add nuw nsw i32 %testo.079.2, 1
  br label %for.inc.2

for.inc.2:                                        ; preds = %for.body16.for.inc_crit_edge.2, %if.then32.2, %if.end23.2.for.inc.2_crit_edge
  %inc.pre-phi.2 = phi i32 [ %.pre118.2, %for.body16.for.inc_crit_edge.2 ], [ %add24.2, %if.end23.2.for.inc.2_crit_edge ], [ %add24.2, %if.then32.2 ]
  %delta.4.2 = phi i32 [ %delta.378.2, %for.body16.for.inc_crit_edge.2 ], [ %delta.378.2, %if.end23.2.for.inc.2_crit_edge ], [ %tmpdelta.0.2, %if.then32.2 ]
  %p.4.2 = phi i32 [ %p.380.2, %for.body16.for.inc_crit_edge.2 ], [ %p.380.2, %if.end23.2.for.inc.2_crit_edge ], [ %add17, %if.then32.2 ]
  %m.4.2 = phi i32 [ %m.381.2, %for.body16.for.inc_crit_edge.2 ], [ %m.381.2, %if.end23.2.for.inc.2_crit_edge ], [ %add33.2, %if.then32.2 ]
  %n.4.2 = phi i32 [ %n.382.2, %for.body16.for.inc_crit_edge.2 ], [ %n.382.2, %if.end23.2.for.inc.2_crit_edge ], [ %add, %if.then32.2 ]
  %s.4.2 = phi i32 [ %s.383.2, %for.body16.for.inc_crit_edge.2 ], [ %s.383.2, %if.end23.2.for.inc.2_crit_edge ], [ %testr.0111, %if.then32.2 ]
  %exitcond.not.2 = icmp eq i32 %inc.pre-phi.2, 33
  br i1 %exitcond.not.2, label %for.inc37.2, label %for.inc.2.for.body16.2_crit_edge

for.inc.2.for.body16.2_crit_edge:                 ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body16.2

for.inc37.2:                                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %delta.4.2)
  %cmp11.2 = icmp eq i32 %delta.4.2, 0
  br i1 %cmp11.2, label %for.inc37.2.for.inc39_crit_edge, label %for.inc37.2.for.body16.3_crit_edge

for.inc37.2.for.body16.3_crit_edge:               ; preds = %for.inc37.2
  br label %for.body16.3

for.inc37.2.for.inc39_crit_edge:                  ; preds = %for.inc37.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc39

for.body16.3:                                     ; preds = %for.inc.3.for.body16.3_crit_edge, %for.inc37.2.for.body16.3_crit_edge
  %s.383.3 = phi i32 [ %s.4.3, %for.inc.3.for.body16.3_crit_edge ], [ %s.4.2, %for.inc37.2.for.body16.3_crit_edge ]
  %n.382.3 = phi i32 [ %n.4.3, %for.inc.3.for.body16.3_crit_edge ], [ %n.4.2, %for.inc37.2.for.body16.3_crit_edge ]
  %m.381.3 = phi i32 [ %m.4.3, %for.inc.3.for.body16.3_crit_edge ], [ %m.4.2, %for.inc37.2.for.body16.3_crit_edge ]
  %p.380.3 = phi i32 [ %p.4.3, %for.inc.3.for.body16.3_crit_edge ], [ %p.4.2, %for.inc37.2.for.body16.3_crit_edge ]
  %testo.079.3 = phi i32 [ %inc.pre-phi.3, %for.inc.3.for.body16.3_crit_edge ], [ 5, %for.inc37.2.for.body16.3_crit_edge ]
  %delta.378.3 = phi i32 [ %delta.4.3, %for.inc.3.for.body16.3_crit_edge ], [ %delta.4.2, %for.inc37.2.for.body16.3_crit_edge ]
  br i1 %1, label %for.body16.for.inc_crit_edge.3, label %if.end23.3

if.end23.3:                                       ; preds = %for.body16.3
  %add24.3 = add nuw nsw i32 %testo.079.3, 1
  %div26.3 = udiv i32 %div, %add24.3
  call void @__sanitizer_cov_trace_cmp4(i32 %div26.3, i32 %clock)
  %cmp27.3 = icmp ugt i32 %div26.3, %clock
  %sub.3 = sub i32 %div26.3, %clock
  %sub29.3 = sub i32 %clock, %div26.3
  %tmpdelta.0.3 = select i1 %cmp27.3, i32 %sub.3, i32 %sub29.3
  call void @__sanitizer_cov_trace_cmp4(i32 %tmpdelta.0.3, i32 %delta.378.3)
  %cmp31.3 = icmp ult i32 %tmpdelta.0.3, %delta.378.3
  br i1 %cmp31.3, label %if.then32.3, label %if.end23.3.for.inc.3_crit_edge

if.end23.3.for.inc.3_crit_edge:                   ; preds = %if.end23.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3

if.then32.3:                                      ; preds = %if.end23.3
  call void @__sanitizer_cov_trace_pc() #7
  %shl.3 = shl i32 %testo.079.3, 3
  %add33.3 = or i32 %shl.3, 1
  br label %for.inc.3

for.body16.for.inc_crit_edge.3:                   ; preds = %for.body16.3
  call void @__sanitizer_cov_trace_pc() #7
  %.pre118.3 = add nuw nsw i32 %testo.079.3, 1
  br label %for.inc.3

for.inc.3:                                        ; preds = %for.body16.for.inc_crit_edge.3, %if.then32.3, %if.end23.3.for.inc.3_crit_edge
  %inc.pre-phi.3 = phi i32 [ %.pre118.3, %for.body16.for.inc_crit_edge.3 ], [ %add24.3, %if.end23.3.for.inc.3_crit_edge ], [ %add24.3, %if.then32.3 ]
  %delta.4.3 = phi i32 [ %delta.378.3, %for.body16.for.inc_crit_edge.3 ], [ %delta.378.3, %if.end23.3.for.inc.3_crit_edge ], [ %tmpdelta.0.3, %if.then32.3 ]
  %p.4.3 = phi i32 [ %p.380.3, %for.body16.for.inc_crit_edge.3 ], [ %p.380.3, %if.end23.3.for.inc.3_crit_edge ], [ %add17, %if.then32.3 ]
  %m.4.3 = phi i32 [ %m.381.3, %for.body16.for.inc_crit_edge.3 ], [ %m.381.3, %if.end23.3.for.inc.3_crit_edge ], [ %add33.3, %if.then32.3 ]
  %n.4.3 = phi i32 [ %n.382.3, %for.body16.for.inc_crit_edge.3 ], [ %n.382.3, %if.end23.3.for.inc.3_crit_edge ], [ %add, %if.then32.3 ]
  %s.4.3 = phi i32 [ %s.383.3, %for.body16.for.inc_crit_edge.3 ], [ %s.383.3, %if.end23.3.for.inc.3_crit_edge ], [ %testr.0111, %if.then32.3 ]
  %exitcond.not.3 = icmp eq i32 %inc.pre-phi.3, 33
  br i1 %exitcond.not.3, label %for.inc.3.for.inc39_crit_edge, label %for.inc.3.for.body16.3_crit_edge

for.inc.3.for.body16.3_crit_edge:                 ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body16.3

for.inc.3.for.inc39_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc39

for.inc39:                                        ; preds = %for.inc.3.for.inc39_crit_edge, %for.inc37.2.for.inc39_crit_edge, %for.inc37.1.for.inc39_crit_edge, %for.inc37.for.inc39_crit_edge
  %delta.4.lcssa.lcssa = phi i32 [ %delta.4, %for.inc37.for.inc39_crit_edge ], [ %delta.4.1, %for.inc37.1.for.inc39_crit_edge ], [ %delta.4.2, %for.inc37.2.for.inc39_crit_edge ], [ %delta.4.3, %for.inc.3.for.inc39_crit_edge ]
  %p.4.lcssa.lcssa = phi i32 [ %p.4, %for.inc37.for.inc39_crit_edge ], [ %p.4.1, %for.inc37.1.for.inc39_crit_edge ], [ %p.4.2, %for.inc37.2.for.inc39_crit_edge ], [ %p.4.3, %for.inc.3.for.inc39_crit_edge ]
  %m.4.lcssa.lcssa = phi i32 [ %m.4, %for.inc37.for.inc39_crit_edge ], [ %m.4.1, %for.inc37.1.for.inc39_crit_edge ], [ %m.4.2, %for.inc37.2.for.inc39_crit_edge ], [ %m.4.3, %for.inc.3.for.inc39_crit_edge ]
  %n.4.lcssa.lcssa = phi i32 [ %n.4, %for.inc37.for.inc39_crit_edge ], [ %n.4.1, %for.inc37.1.for.inc39_crit_edge ], [ %n.4.2, %for.inc37.2.for.inc39_crit_edge ], [ %n.4.3, %for.inc.3.for.inc39_crit_edge ]
  %s.4.lcssa.lcssa = phi i32 [ %s.4, %for.inc37.for.inc39_crit_edge ], [ %s.4.1, %for.inc37.1.for.inc39_crit_edge ], [ %s.4.2, %for.inc37.2.for.inc39_crit_edge ], [ %s.4.3, %for.inc.3.for.inc39_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %testn.099)
  %cmp3 = icmp ugt i32 %testn.099, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %delta.4.lcssa.lcssa)
  %cmp5 = icmp eq i32 %delta.4.lcssa.lcssa, 0
  %or.cond75 = select i1 %cmp3, i1 true, i1 %cmp5
  br i1 %or.cond75, label %for.inc42, label %for.inc39.for.cond14.preheader.lr.ph_crit_edge

for.inc39.for.cond14.preheader.lr.ph_crit_edge:   ; preds = %for.inc39
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond14.preheader.lr.ph

for.inc42:                                        ; preds = %for.inc39
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %testr.0111)
  %cmp = icmp ugt i32 %testr.0111, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %delta.4.lcssa.lcssa)
  %cmp1 = icmp eq i32 %delta.4.lcssa.lcssa, 0
  %or.cond = select i1 %cmp, i1 true, i1 %cmp1
  br i1 %or.cond, label %for.end44, label %for.inc42.for.cond8.preheader.lr.ph_crit_edge

for.inc42.for.cond8.preheader.lr.ph_crit_edge:    ; preds = %for.inc42
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond8.preheader.lr.ph

for.end44:                                        ; preds = %for.inc42
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %pixpllc to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %m.4.lcssa.lcssa, ptr %pixpllc, align 4
  %n46 = getelementptr inbounds %struct.mgag200_pll_values, ptr %pixpllc, i32 0, i32 1
  %3 = ptrtoint ptr %n46 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %n.4.lcssa.lcssa, ptr %n46, align 4
  %p47 = getelementptr inbounds %struct.mgag200_pll_values, ptr %pixpllc, i32 0, i32 2
  %4 = ptrtoint ptr %p47 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %p.4.lcssa.lcssa, ptr %p47, align 4
  %s48 = getelementptr inbounds %struct.mgag200_pll_values, ptr %pixpllc, i32 0, i32 3
  %5 = ptrtoint ptr %s48 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %s.4.lcssa.lcssa, ptr %s48, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mgag200_pixpll_update_g200er(ptr nocapture noundef readonly %pixpll, ptr nocapture noundef readonly %pixpllc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pixpll to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pixpll, align 4
  %2 = ptrtoint ptr %pixpllc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pixpllc, align 4
  %n = getelementptr inbounds %struct.mgag200_pll_values, ptr %pixpllc, i32 0, i32 1
  %4 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %n, align 4
  %p = getelementptr inbounds %struct.mgag200_pll_values, ptr %pixpllc, i32 0, i32 2
  %6 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %p, align 4
  %sub3 = add i32 %7, 255
  %s = getelementptr inbounds %struct.mgag200_pll_values, ptr %pixpllc, i32 0, i32 3
  %8 = ptrtoint ptr %s to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %s, align 4
  %10 = trunc i32 %3 to i8
  %conv = add i8 %10, -1
  %11 = trunc i32 %5 to i8
  %conv4 = add i8 %11, -1
  %shl = shl i32 %9, 3
  %or = or i32 %shl, %sub3
  %conv5 = trunc i32 %or to i8
  %rmmio = getelementptr inbounds %struct.mga_device, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rmmio, align 8
  %add.ptr = getelementptr i8, ptr %13, i32 8140
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  %15 = or i8 %14, 12
  %16 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rmmio, align 8
  %add.ptr15 = getelementptr i8, ptr %17, i32 8130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr15, i8 %15) #5, !srcloc !106
  %18 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rmmio, align 8
  %add.ptr17 = getelementptr i8, ptr %19, i32 15360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr17, i8 26) #5, !srcloc !106
  %20 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rmmio, align 8
  %add.ptr19 = getelementptr i8, ptr %21, i32 15370
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr19) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  %23 = or i8 %22, 4
  %24 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rmmio, align 8
  %add.ptr25 = getelementptr i8, ptr %25, i32 15370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr25, i8 %23) #5, !srcloc !106
  %26 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rmmio, align 8
  %add.ptr27 = getelementptr i8, ptr %27, i32 15360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr27, i8 48) #5, !srcloc !106
  %28 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rmmio, align 8
  %add.ptr29 = getelementptr i8, ptr %29, i32 15370
  %30 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr29) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  %31 = or i8 %30, 1
  %32 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rmmio, align 8
  %add.ptr35 = getelementptr i8, ptr %33, i32 15370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr35, i8 %31) #5, !srcloc !106
  %34 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rmmio, align 8
  %add.ptr37 = getelementptr i8, ptr %35, i32 8140
  %36 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr37) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  %37 = or i8 %36, -52
  %38 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rmmio, align 8
  %add.ptr43 = getelementptr i8, ptr %39, i32 8130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr43, i8 %37) #5, !srcloc !106
  %40 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rmmio, align 8
  %add.ptr45 = getelementptr i8, ptr %41, i32 15360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr45, i8 26) #5, !srcloc !106
  %42 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rmmio, align 8
  %add.ptr47 = getelementptr i8, ptr %43, i32 15370
  %44 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr47) #5, !srcloc !103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !104
  %45 = and i8 %44, -13
  %46 = or i8 %45, 8
  %47 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rmmio, align 8
  %add.ptr56 = getelementptr i8, ptr %48, i32 15370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr56, i8 %46) #5, !srcloc !106
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 107374000) #5
  %50 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rmmio, align 8
  %add.ptr59 = getelementptr i8, ptr %51, i32 15360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr59, i8 -74) #5, !srcloc !106
  %52 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rmmio, align 8
  %add.ptr61 = getelementptr i8, ptr %53, i32 15370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr61, i8 %conv4) #5, !srcloc !106
  %54 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %rmmio, align 8
  %add.ptr66 = getelementptr i8, ptr %55, i32 15360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr66, i8 -73) #5, !srcloc !106
  %56 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %rmmio, align 8
  %add.ptr68 = getelementptr i8, ptr %57, i32 15370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr68, i8 %conv) #5, !srcloc !106
  %58 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %rmmio, align 8
  %add.ptr73 = getelementptr i8, ptr %59, i32 15360
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr73, i8 -72) #5, !srcloc !106
  %60 = ptrtoint ptr %rmmio to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %rmmio, align 8
  %add.ptr75 = getelementptr i8, ptr %61, i32 15370
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !105
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr75, i8 %conv5) #5, !srcloc !106
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %62(i32 noundef 10737400) #5
  ret void
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync)
define internal i32 @mgag200_pixpll_compute_g200ew3(ptr nocapture noundef readnone %pixpll, i32 noundef %clock, ptr nocapture noundef writeonly %pixpllc) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.inc38.for.cond1.preheader_crit_edge, %entry
  %s.098 = phi i32 [ 0, %entry ], [ %s.5, %for.inc38.for.cond1.preheader_crit_edge ]
  %n.097 = phi i32 [ 0, %entry ], [ %n.5, %for.inc38.for.cond1.preheader_crit_edge ]
  %m.096 = phi i32 [ 0, %entry ], [ %m.5, %for.inc38.for.cond1.preheader_crit_edge ]
  %p.095 = phi i32 [ 0, %entry ], [ %p.5, %for.inc38.for.cond1.preheader_crit_edge ]
  %testp.094 = phi i32 [ 1, %entry ], [ %add30, %for.inc38.for.cond1.preheader_crit_edge ]
  %delta.093 = phi i32 [ -1, %entry ], [ %delta.5, %for.inc38.for.cond1.preheader_crit_edge ]
  %add30 = add nuw nsw i32 %testp.094, 1
  br label %for.body3

for.body3:                                        ; preds = %for.inc35.for.body3_crit_edge, %for.cond1.preheader
  %s.192 = phi i32 [ %s.098, %for.cond1.preheader ], [ %s.5, %for.inc35.for.body3_crit_edge ]
  %n.191 = phi i32 [ %n.097, %for.cond1.preheader ], [ %n.5, %for.inc35.for.body3_crit_edge ]
  %m.190 = phi i32 [ %m.096, %for.cond1.preheader ], [ %m.5, %for.inc35.for.body3_crit_edge ]
  %p.189 = phi i32 [ %p.095, %for.cond1.preheader ], [ %p.5, %for.inc35.for.body3_crit_edge ]
  %testp2.087 = phi i32 [ 1, %for.cond1.preheader ], [ %inc36, %for.inc35.for.body3_crit_edge ]
  %delta.186 = phi i32 [ %delta.093, %for.cond1.preheader ], [ %delta.5, %for.inc35.for.body3_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %testp.094, i32 %testp2.087)
  %cmp4 = icmp ult i32 %testp.094, %testp2.087
  br i1 %cmp4, label %for.body3.for.inc35_crit_edge, label %if.end

for.body3.for.inc35_crit_edge:                    ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc35

if.end:                                           ; preds = %for.body3
  %mul = mul nuw nsw i32 %testp2.087, %testp.094
  %mul5 = mul i32 %mul, %clock
  %0 = add i32 %mul5, -800001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -400001, i32 %0)
  %1 = icmp ult i32 %0, -400001
  br i1 %1, label %if.end.for.inc35_crit_edge, label %if.end.for.cond17.preheader_crit_edge

if.end.for.cond17.preheader_crit_edge:            ; preds = %if.end
  br label %for.cond17.preheader

if.end.for.inc35_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc35

for.cond17.preheader:                             ; preds = %for.inc32.for.cond17.preheader_crit_edge, %if.end.for.cond17.preheader_crit_edge
  %s.285 = phi i32 [ %testp2.087.s.379, %for.inc32.for.cond17.preheader_crit_edge ], [ %s.192, %if.end.for.cond17.preheader_crit_edge ]
  %n.284 = phi i32 [ %add29.n.378, %for.inc32.for.cond17.preheader_crit_edge ], [ %n.191, %if.end.for.cond17.preheader_crit_edge ]
  %m.283 = phi i32 [ %add.m.377, %for.inc32.for.cond17.preheader_crit_edge ], [ %m.190, %if.end.for.cond17.preheader_crit_edge ]
  %p.282 = phi i32 [ %add30.p.376, %for.inc32.for.cond17.preheader_crit_edge ], [ %p.189, %if.end.for.cond17.preheader_crit_edge ]
  %testm.081 = phi i32 [ %add, %for.inc32.for.cond17.preheader_crit_edge ], [ 1, %if.end.for.cond17.preheader_crit_edge ]
  %delta.280 = phi i32 [ %2, %for.inc32.for.cond17.preheader_crit_edge ], [ %delta.186, %if.end.for.cond17.preheader_crit_edge ]
  %mul22 = mul nuw nsw i32 %mul, %testm.081
  %add = add nuw nsw i32 %testm.081, 1
  br label %for.body19

for.body19:                                       ; preds = %for.body19.for.body19_crit_edge, %for.cond17.preheader
  %s.379 = phi i32 [ %s.285, %for.cond17.preheader ], [ %testp2.087.s.379, %for.body19.for.body19_crit_edge ]
  %n.378 = phi i32 [ %n.284, %for.cond17.preheader ], [ %add29.n.378, %for.body19.for.body19_crit_edge ]
  %m.377 = phi i32 [ %m.283, %for.cond17.preheader ], [ %add.m.377, %for.body19.for.body19_crit_edge ]
  %p.376 = phi i32 [ %p.282, %for.cond17.preheader ], [ %add30.p.376, %for.body19.for.body19_crit_edge ]
  %testn.074 = phi i32 [ 32, %for.cond17.preheader ], [ %add29, %for.body19.for.body19_crit_edge ]
  %delta.373 = phi i32 [ %delta.280, %for.cond17.preheader ], [ %2, %for.body19.for.body19_crit_edge ]
  %mul20 = mul nuw nsw i32 %testn.074, 25000
  %div = udiv i32 %mul20, %mul22
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %clock)
  %cmp23 = icmp ugt i32 %div, %clock
  %sub = sub i32 %div, %clock
  %sub25 = sub i32 %clock, %div
  %tmpdelta.0 = select i1 %cmp23, i32 %sub, i32 %sub25
  call void @__sanitizer_cov_trace_cmp4(i32 %tmpdelta.0, i32 %delta.373)
  %cmp27 = icmp ult i32 %tmpdelta.0, %delta.373
  %add29 = add nuw nsw i32 %testn.074, 1
  %2 = call i32 @llvm.umin.i32(i32 %tmpdelta.0, i32 %delta.373)
  %add30.p.376 = select i1 %cmp27, i32 %add30, i32 %p.376
  %add.m.377 = select i1 %cmp27, i32 %add, i32 %m.377
  %add29.n.378 = select i1 %cmp27, i32 %add29, i32 %n.378
  %testp2.087.s.379 = select i1 %cmp27, i32 %testp2.087, i32 %s.379
  %exitcond.not = icmp eq i32 %add29, 2048
  br i1 %exitcond.not, label %for.inc32, label %for.body19.for.body19_crit_edge

for.body19.for.body19_crit_edge:                  ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body19

for.inc32:                                        ; preds = %for.body19
  %exitcond99.not = icmp eq i32 %add, 26
  br i1 %exitcond99.not, label %for.inc32.for.inc35_crit_edge, label %for.inc32.for.cond17.preheader_crit_edge

for.inc32.for.cond17.preheader_crit_edge:         ; preds = %for.inc32
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond17.preheader

for.inc32.for.inc35_crit_edge:                    ; preds = %for.inc32
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc35

for.inc35:                                        ; preds = %for.inc32.for.inc35_crit_edge, %if.end.for.inc35_crit_edge, %for.body3.for.inc35_crit_edge
  %delta.5 = phi i32 [ %delta.186, %for.body3.for.inc35_crit_edge ], [ %delta.186, %if.end.for.inc35_crit_edge ], [ %2, %for.inc32.for.inc35_crit_edge ]
  %p.5 = phi i32 [ %p.189, %for.body3.for.inc35_crit_edge ], [ %p.189, %if.end.for.inc35_crit_edge ], [ %add30.p.376, %for.inc32.for.inc35_crit_edge ]
  %m.5 = phi i32 [ %m.190, %for.body3.for.inc35_crit_edge ], [ %m.190, %if.end.for.inc35_crit_edge ], [ %add.m.377, %for.inc32.for.inc35_crit_edge ]
  %n.5 = phi i32 [ %n.191, %for.body3.for.inc35_crit_edge ], [ %n.191, %if.end.for.inc35_crit_edge ], [ %add29.n.378, %for.inc32.for.inc35_crit_edge ]
  %s.5 = phi i32 [ %s.192, %for.body3.for.inc35_crit_edge ], [ %s.192, %if.end.for.inc35_crit_edge ], [ %testp2.087.s.379, %for.inc32.for.inc35_crit_edge ]
  %inc36 = add nuw nsw i32 %testp2.087, 1
  %exitcond100.not = icmp eq i32 %inc36, 8
  br i1 %exitcond100.not, label %for.inc38, label %for.inc35.for.body3_crit_edge

for.inc35.for.body3_crit_edge:                    ; preds = %for.inc35
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body3

for.inc38:                                        ; preds = %for.inc35
  %exitcond101.not = icmp eq i32 %add30, 8
  br i1 %exitcond101.not, label %for.end40, label %for.inc38.for.cond1.preheader_crit_edge

for.inc38.for.cond1.preheader_crit_edge:          ; preds = %for.inc38
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond1.preheader

for.end40:                                        ; preds = %for.inc38
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %pixpllc to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %m.5, ptr %pixpllc, align 4
  %n42 = getelementptr inbounds %struct.mgag200_pll_values, ptr %pixpllc, i32 0, i32 1
  %4 = ptrtoint ptr %n42 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %n.5, ptr %n42, align 4
  %p43 = getelementptr inbounds %struct.mgag200_pll_values, ptr %pixpllc, i32 0, i32 2
  %5 = ptrtoint ptr %p43 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %p.5, ptr %p43, align 4
  %s44 = getelementptr inbounds %struct.mgag200_pll_values, ptr %pixpllc, i32 0, i32 3
  %6 = ptrtoint ptr %s44 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %s.5, ptr %s44, align 4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !13, !14, !15, !17, !19, !21, !23, !25, !27, !29, !30, !31, !32, !34, !36, !38, !40, !42, !43, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92}
!llvm.module.flags = !{!94, !95, !96, !97, !98, !99, !100, !101}
!llvm.ident = !{!102}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/mgag200/mgag200_pll.c", i32 988, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @mgag200_pixpll_init._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @mgag200_pixpll_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @mgag200_pixpll_funcs_g200, !9, !"mgag200_pixpll_funcs_g200", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/mgag200/mgag200_pll.c", i32 105, i32 39}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/mgag200/mgag200_pll.c", i32 31, i32 3}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @mgag200_pixpll_compute_g200._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @mgag200_pixpll_compute_g200._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/mgag200/mgag200_pll.c", i32 71, i32 2}
!17 = !{ptr @mgag200_pixpll_funcs_g200se_04, !18, !"mgag200_pixpll_funcs_g200se_04", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/mgag200/mgag200_pll.c", i32 291, i32 39}
!19 = distinct !{null, !20, !"vcomax", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/mgag200/mgag200_pll.c", i32 192, i32 28}
!21 = distinct !{null, !22, !"vcomin", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/mgag200/mgag200_pll.c", i32 193, i32 28}
!23 = distinct !{null, !24, !"pllreffreq", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/mgag200/mgag200_pll.c", i32 194, i32 28}
!25 = !{ptr @mgag200_pixpll_compute_g200se_04.pvalues_e4, !26, !"pvalues_e4", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/mgag200/mgag200_pll.c", i32 195, i32 28}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/mgag200/mgag200_pll.c", i32 247, i32 3}
!29 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @mgag200_pixpll_compute_g200se_04._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @mgag200_pixpll_compute_g200se_04._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @mgag200_pixpll_funcs_g200se_00, !33, !"mgag200_pixpll_funcs_g200se_00", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/mgag200/mgag200_pll.c", i32 286, i32 39}
!34 = distinct !{null, !35, !"vcomax", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/mgag200/mgag200_pll.c", i32 117, i32 28}
!36 = distinct !{null, !37, !"vcomin", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/mgag200/mgag200_pll.c", i32 118, i32 28}
!38 = distinct !{null, !39, !"pllreffreq", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/mgag200/mgag200_pll.c", i32 119, i32 28}
!40 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/mgag200/mgag200_pll.c", i32 154, i32 3}
!42 = !{ptr @mgag200_pixpll_compute_g200se_00._entry, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @mgag200_pixpll_compute_g200se_00._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @mgag200_pixpll_funcs_g200wb, !45, !"mgag200_pixpll_funcs_g200wb", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/mgag200/mgag200_pll.c", i32 464, i32 39}
!46 = distinct !{null, !47, !"vcomax", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/mgag200/mgag200_pll.c", i32 303, i32 28}
!48 = distinct !{null, !49, !"vcomin", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/mgag200/mgag200_pll.c", i32 304, i32 28}
!50 = distinct !{null, !51, !"pllreffreq", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/mgag200/mgag200_pll.c", i32 305, i32 28}
!52 = !{ptr @mgag200_pixpll_funcs_g200ev, !53, !"mgag200_pixpll_funcs_g200ev", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/mgag200/mgag200_pll.c", i32 589, i32 39}
!54 = distinct !{null, !55, !"vcomax", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/mgag200/mgag200_pll.c", i32 476, i32 28}
!56 = distinct !{null, !57, !"vcomin", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/mgag200/mgag200_pll.c", i32 477, i32 28}
!58 = distinct !{null, !59, !"pllreffreq", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/mgag200/mgag200_pll.c", i32 478, i32 28}
!60 = !{ptr @mgag200_pixpll_funcs_g200eh, !61, !"mgag200_pixpll_funcs_g200eh", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/mgag200/mgag200_pll.c", i32 713, i32 39}
!62 = distinct !{null, !63, !"vcomax", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/mgag200/mgag200_pll.c", i32 601, i32 28}
!64 = distinct !{null, !65, !"vcomin", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/mgag200/mgag200_pll.c", i32 602, i32 28}
!66 = distinct !{null, !67, !"pllreffreq", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/mgag200/mgag200_pll.c", i32 603, i32 28}
!68 = !{ptr @mgag200_pixpll_funcs_g200eh3, !69, !"mgag200_pixpll_funcs_g200eh3", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/mgag200/mgag200_pll.c", i32 770, i32 39}
!70 = distinct !{null, !71, !"vcomax", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/mgag200/mgag200_pll.c", i32 725, i32 28}
!72 = distinct !{null, !73, !"vcomin", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/mgag200/mgag200_pll.c", i32 726, i32 28}
!74 = distinct !{null, !75, !"pllreffreq", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/mgag200/mgag200_pll.c", i32 727, i32 28}
!76 = !{ptr @mgag200_pixpll_funcs_g200er, !77, !"mgag200_pixpll_funcs_g200er", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/mgag200/mgag200_pll.c", i32 883, i32 39}
!78 = distinct !{null, !79, !"vcomax", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/mgag200/mgag200_pll.c", i32 782, i32 28}
!80 = distinct !{null, !81, !"vcomin", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/mgag200/mgag200_pll.c", i32 783, i32 28}
!82 = distinct !{null, !83, !"pllreffreq", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/mgag200/mgag200_pll.c", i32 784, i32 28}
!84 = !{ptr @mgag200_pixpll_compute_g200er.m_div_val, !85, !"m_div_val", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/mgag200/mgag200_pll.c", i32 785, i32 28}
!86 = !{ptr @mgag200_pixpll_funcs_g200ew3, !87, !"mgag200_pixpll_funcs_g200ew3", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/mgag200/mgag200_pll.c", i32 942, i32 39}
!88 = distinct !{null, !89, !"vcomax", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/mgag200/mgag200_pll.c", i32 895, i32 28}
!90 = distinct !{null, !91, !"vcomin", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/mgag200/mgag200_pll.c", i32 896, i32 28}
!92 = distinct !{null, !93, !"pllreffreq", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/mgag200/mgag200_pll.c", i32 897, i32 28}
!94 = !{i32 1, !"wchar_size", i32 2}
!95 = !{i32 1, !"min_enum_size", i32 4}
!96 = !{i32 8, !"branch-target-enforcement", i32 0}
!97 = !{i32 8, !"sign-return-address", i32 0}
!98 = !{i32 8, !"sign-return-address-all", i32 0}
!99 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!100 = !{i32 7, !"uwtable", i32 1}
!101 = !{i32 7, !"frame-pointer", i32 2}
!102 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!103 = !{i64 6859371}
!104 = !{i64 2154391226}
!105 = !{i64 2154392831}
!106 = !{i64 6858976}
