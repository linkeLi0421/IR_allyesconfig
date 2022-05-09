; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/tegra/rgb.c_pt.bc'
source_filename = "../drivers/gpu/drm/tegra/rgb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_encoder_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.reg_entry = type { i32, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.77 }
%struct.atomic_t = type { i32 }
%union.anon.77 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.tegra_dc = type { %struct.host1x_client, ptr, ptr, %struct.drm_crtc, i32, i32, ptr, ptr, ptr, i32, ptr, %struct.tegra_dc_stats, %struct.list_head, ptr, ptr, i8 }
%struct.host1x_client = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.mutex, %struct.host1x_bo_cache }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.host1x_bo_cache = type { %struct.list_head, %struct.mutex }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.tegra_dc_stats = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.tegra_output = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.drm_encoder, %struct.drm_connector }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
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
%struct.tegra_rgb = type { %struct.tegra_output, ptr, ptr, ptr, ptr, ptr }
%struct.tegra_dc_soc_info = type { i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, ptr, i32, ptr, i32, ptr, i32, ptr, i8, i8, i8, i8, i8 }
%struct.drm_connector_state = type { ptr, ptr, ptr, i32, ptr, ptr, %struct.drm_tv_connector_state, i8, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i32, ptr }
%struct.drm_tv_connector_state = type { i32, %struct.drm_connector_tv_margins, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rgb\00", [28 x i8] zeroinitializer }, align 32
@tegra_dc_rgb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 216, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to get clock\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tegra_dc_rgb_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/gpu/drm/tegra/rgb.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tegra_dc_rgb_probe._entry_ptr = internal global ptr @tegra_dc_rgb_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"parent\00", [25 x i8] zeroinitializer }, align 32
@tegra_dc_rgb_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 222, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to get parent clock\0A\00", [36 x i8] zeroinitializer }, align 32
@tegra_dc_rgb_probe._entry_ptr.9 = internal global ptr @tegra_dc_rgb_probe._entry.7, section ".printk_index", align 4
@tegra_dc_rgb_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 228, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to set parent clock: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@tegra_dc_rgb_probe._entry_ptr.12 = internal global ptr @tegra_dc_rgb_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pll_d_out0\00", [21 x i8] zeroinitializer }, align 32
@tegra_dc_rgb_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 235, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to get pll_d_out0: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@tegra_dc_rgb_probe._entry_ptr.16 = internal global ptr @tegra_dc_rgb_probe._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pll_d2_out0\00", [20 x i8] zeroinitializer }, align 32
@tegra_dc_rgb_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 243, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to get pll_d2_out0: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@tegra_dc_rgb_probe._entry_ptr.20 = internal global ptr @tegra_dc_rgb_probe._entry.18, section ".printk_index", align 4
@tegra_rgb_encoder_helper_funcs = internal constant { %struct.drm_encoder_helper_funcs, [44 x i8] } { %struct.drm_encoder_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_rgb_encoder_disable, ptr @tegra_rgb_encoder_enable, ptr @tegra_rgb_encoder_atomic_check }, [44 x i8] zeroinitializer }, align 32
@tegra_dc_rgb_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 293, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to wrap panel into bridge: %pe\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tegra_dc_rgb_init\00", [46 x i8] zeroinitializer }, align 32
@tegra_dc_rgb_init._entry_ptr = internal global ptr @tegra_dc_rgb_init._entry, section ".printk_index", align 4
@tegra_dc_rgb_init._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.3, i32 326, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"failed to initialize bridge connector: %pe\0A\00", [52 x i8] zeroinitializer }, align 32
@tegra_dc_rgb_init._entry_ptr.25 = internal global ptr @tegra_dc_rgb_init._entry.23, section ".printk_index", align 4
@tegra_dc_rgb_init._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.22, ptr @.str.3, i32 335, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to initialize output: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@tegra_dc_rgb_init._entry_ptr.28 = internal global ptr @tegra_dc_rgb_init._entry.26, section ".printk_index", align 4
@rgb_disable = internal constant { [19 x %struct.reg_entry], [40 x i8] } { [19 x %struct.reg_entry] [%struct.reg_entry { i32 794, i32 0 }, %struct.reg_entry { i32 793, i32 0 }, %struct.reg_entry { i32 792, i32 0 }, %struct.reg_entry { i32 791, i32 0 }, %struct.reg_entry { i32 790, i32 0 }, %struct.reg_entry { i32 789, i32 0 }, %struct.reg_entry { i32 788, i32 0 }, %struct.reg_entry { i32 781, i32 -1431655766 }, %struct.reg_entry { i32 780, i32 -1431655766 }, %struct.reg_entry { i32 779, i32 -1431655766 }, %struct.reg_entry { i32 778, i32 -1431655766 }, %struct.reg_entry { i32 777, i32 0 }, %struct.reg_entry { i32 776, i32 0 }, %struct.reg_entry { i32 775, i32 0 }, %struct.reg_entry { i32 774, i32 0 }, %struct.reg_entry { i32 773, i32 1431655765 }, %struct.reg_entry { i32 772, i32 1431655765 }, %struct.reg_entry { i32 771, i32 1427439621 }, %struct.reg_entry { i32 770, i32 1431655765 }], [40 x i8] zeroinitializer }, align 32
@__tracepoint_dc_writel = external dso_local global %struct.tracepoint, align 4
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/gpu/drm/tegra/trace.h\00", [34 x i8] zeroinitializer }, align 32
@trace_dc_writel.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.30 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@rgb_enable = internal constant { [19 x %struct.reg_entry], [40 x i8] } { [19 x %struct.reg_entry] [%struct.reg_entry { i32 770, i32 0 }, %struct.reg_entry { i32 771, i32 0 }, %struct.reg_entry { i32 772, i32 0 }, %struct.reg_entry { i32 773, i32 0 }, %struct.reg_entry { i32 774, i32 0 }, %struct.reg_entry { i32 775, i32 16777216 }, %struct.reg_entry { i32 776, i32 0 }, %struct.reg_entry { i32 777, i32 0 }, %struct.reg_entry { i32 778, i32 0 }, %struct.reg_entry { i32 779, i32 0 }, %struct.reg_entry { i32 780, i32 0 }, %struct.reg_entry { i32 781, i32 0 }, %struct.reg_entry { i32 788, i32 0 }, %struct.reg_entry { i32 789, i32 0 }, %struct.reg_entry { i32 790, i32 0 }, %struct.reg_entry { i32 791, i32 0 }, %struct.reg_entry { i32 792, i32 2163234 }, %struct.reg_entry { i32 793, i32 8704 }, %struct.reg_entry { i32 794, i32 131072 }], [40 x i8] zeroinitializer }, align 32
@__tracepoint_dc_readl = external dso_local global %struct.tracepoint, align 4
@trace_dc_readl.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tegra_rgb_encoder_atomic_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 179, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to setup CRTC state: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"tegra_rgb_encoder_atomic_check\00", [33 x i8] zeroinitializer }, align 32
@tegra_rgb_encoder_atomic_check._entry_ptr = internal global ptr @tegra_rgb_encoder_atomic_check._entry, section ".printk_index", align 4
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 198, i32 46 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 216, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 220, i32 42 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 222, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 228, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 232, i32 38 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 235, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 240, i32 40 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 243, i32 4 }
@___asan_gen_.88 = private unnamed_addr constant [31 x i8] c"tegra_rgb_encoder_helper_funcs\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 186, i32 46 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 291, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 324, i32 4 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 335, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant [12 x i8] c"rgb_disable\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 58, i32 31 }
@___asan_gen_.119 = private unnamed_addr constant [33 x i8] c"../drivers/gpu/drm/tegra/trace.h\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 27, i32 1 }
@___asan_gen_.122 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 108, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant [11 x i8] c"rgb_enable\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 36, i32 31 }
@___asan_gen_.127 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.133 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.134 = private constant [31 x i8] c"../drivers/gpu/drm/tegra/rgb.c\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 179, i32 3 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @tegra_dc_rgb_init._entry, ptr @tegra_dc_rgb_init._entry.23, ptr @tegra_dc_rgb_init._entry.26, ptr @tegra_dc_rgb_init._entry_ptr, ptr @tegra_dc_rgb_init._entry_ptr.25, ptr @tegra_dc_rgb_init._entry_ptr.28, ptr @tegra_dc_rgb_probe._entry, ptr @tegra_dc_rgb_probe._entry.10, ptr @tegra_dc_rgb_probe._entry.14, ptr @tegra_dc_rgb_probe._entry.18, ptr @tegra_dc_rgb_probe._entry.7, ptr @tegra_dc_rgb_probe._entry_ptr, ptr @tegra_dc_rgb_probe._entry_ptr.12, ptr @tegra_dc_rgb_probe._entry_ptr.16, ptr @tegra_dc_rgb_probe._entry_ptr.20, ptr @tegra_dc_rgb_probe._entry_ptr.9, ptr @tegra_rgb_encoder_atomic_check._entry, ptr @tegra_rgb_encoder_atomic_check._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @tegra_rgb_encoder_helper_funcs, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @rgb_disable, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @rgb_enable, ptr @.str.32, ptr @.str.33], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dc_rgb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dc_rgb_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dc_rgb_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dc_rgb_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dc_rgb_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_rgb_encoder_helper_funcs to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dc_rgb_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dc_rgb_init._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dc_rgb_init._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rgb_disable to i32), i32 152, i32 192, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rgb_enable to i32), i32 152, i32 192, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_rgb_encoder_atomic_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tegra_dc_rgb_probe(ptr noundef %dc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.tegra_dc, ptr %dc, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_get_child_by_name(ptr noundef %3, ptr noundef nonnull @.str) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call zeroext i1 @of_device_is_available(ptr noundef nonnull %call) #6
  br i1 %call1, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 1176, i32 noundef 3520) #6
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %dev8 = getelementptr inbounds %struct.tegra_output, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %dev8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %dev8, align 4
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call, ptr %call.i, align 8
  %dc11 = getelementptr inbounds %struct.tegra_rgb, ptr %call.i, i32 0, i32 1
  %10 = ptrtoint ptr %dc11 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dc, ptr %dc11, align 8
  %call13 = tail call i32 @tegra_output_probe(ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp = icmp slt i32 %call13, 0
  br i1 %cmp, label %if.end6.cleanup_crit_edge, label %if.end15

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15:                                         ; preds = %if.end6
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %call17 = tail call ptr @devm_clk_get(ptr noundef %12, ptr noundef null) #6
  %clk = getelementptr inbounds %struct.tegra_rgb, ptr %call.i, i32 0, i32 5
  %13 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call17, ptr %clk, align 8
  %cmp.i = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  br i1 %cmp.i, label %do.end, label %if.end24

do.end:                                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.1) #9
  %16 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clk, align 8
  %18 = ptrtoint ptr %17 to i32
  br label %cleanup

if.end24:                                         ; preds = %if.end15
  %call26 = tail call ptr @devm_clk_get(ptr noundef %15, ptr noundef nonnull @.str.6) #6
  %clk_parent = getelementptr inbounds %struct.tegra_rgb, ptr %call.i, i32 0, i32 4
  %19 = ptrtoint ptr %clk_parent to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call26, ptr %clk_parent, align 4
  %cmp.i117 = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i117, label %do.end32, label %if.end36

do.end32:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.8) #9
  %22 = ptrtoint ptr %clk_parent to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %clk_parent, align 4
  %24 = ptrtoint ptr %23 to i32
  br label %cleanup

if.end36:                                         ; preds = %if.end24
  %25 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %clk, align 8
  %call39 = tail call i32 @clk_set_parent(ptr noundef %26, ptr noundef %call26) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %do.end44, label %if.end46

do.end44:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.11, i32 noundef %call39) #9
  br label %cleanup

if.end46:                                         ; preds = %if.end36
  %call47 = tail call ptr @clk_get_sys(ptr noundef null, ptr noundef nonnull @.str.13) #6
  %pll_d_out0 = getelementptr inbounds %struct.tegra_rgb, ptr %call.i, i32 0, i32 2
  %29 = ptrtoint ptr %pll_d_out0 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call47, ptr %pll_d_out0, align 4
  %cmp.i118 = icmp ugt ptr %call47, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i118, label %if.then50, label %if.end57

if.then50:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %call47 to i32
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.15, i32 noundef %30) #9
  br label %cleanup

if.end57:                                         ; preds = %if.end46
  %soc = getelementptr inbounds %struct.tegra_dc, ptr %dc, i32 0, i32 14
  %33 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %soc, align 8
  %has_pll_d2_out0 = getelementptr inbounds %struct.tegra_dc_soc_info, ptr %34, i32 0, i32 21
  %35 = ptrtoint ptr %has_pll_d2_out0 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %has_pll_d2_out0, align 4, !range !77
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool58.not = icmp eq i8 %36, 0
  br i1 %tobool58.not, label %if.end57.if.end71_crit_edge, label %if.then59

if.end57.if.end71_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end71

if.then59:                                        ; preds = %if.end57
  %call60 = tail call ptr @clk_get_sys(ptr noundef null, ptr noundef nonnull @.str.17) #6
  %pll_d2_out0 = getelementptr inbounds %struct.tegra_rgb, ptr %call.i, i32 0, i32 3
  %37 = ptrtoint ptr %pll_d2_out0 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call60, ptr %pll_d2_out0, align 8
  %cmp.i119 = icmp ugt ptr %call60, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i119, label %if.then63, label %if.then59.if.end71_crit_edge

if.then59.if.end71_crit_edge:                     ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end71

if.then63:                                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %call60 to i32
  %39 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.19, i32 noundef %38) #9
  br label %cleanup

if.end71:                                         ; preds = %if.then59.if.end71_crit_edge, %if.end57.if.end71_crit_edge
  %rgb73 = getelementptr inbounds %struct.tegra_dc, ptr %dc, i32 0, i32 10
  %41 = ptrtoint ptr %rgb73 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call.i, ptr %rgb73, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end71, %if.then63, %if.then50, %do.end44, %do.end32, %do.end, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %18, %do.end ], [ %24, %do.end32 ], [ %call39, %do.end44 ], [ %30, %if.then50 ], [ %38, %if.then63 ], [ 0, %if.end71 ], [ -19, %lor.lhs.false.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call13, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_output_probe(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get_sys(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tegra_dc_rgb_remove(ptr nocapture noundef %dc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rgb1 = getelementptr inbounds %struct.tegra_dc, ptr %dc, i32 0, i32 10
  %0 = ptrtoint ptr %rgb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rgb1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pll_d2_out0 = getelementptr inbounds %struct.tegra_rgb, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %pll_d2_out0 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pll_d2_out0, align 8
  tail call void @clk_put(ptr noundef %3) #6
  %pll_d_out0 = getelementptr inbounds %struct.tegra_rgb, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %pll_d_out0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pll_d_out0, align 4
  tail call void @clk_put(ptr noundef %5) #6
  %6 = ptrtoint ptr %rgb1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rgb1, align 8
  tail call void @tegra_output_remove(ptr noundef %7) #6
  %8 = ptrtoint ptr %rgb1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %rgb1, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_output_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tegra_dc_rgb_init(ptr noundef %drm, ptr nocapture noundef readonly %dc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rgb = getelementptr inbounds %struct.tegra_dc, ptr %dc, i32 0, i32 10
  %0 = ptrtoint ptr %rgb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rgb, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %encoder = getelementptr inbounds %struct.tegra_output, ptr %1, i32 0, i32 9
  %call = tail call i32 @drm_simple_encoder_init(ptr noundef %drm, ptr noundef %encoder, i32 noundef 3) #6
  %helper_private.i = getelementptr inbounds %struct.tegra_output, ptr %1, i32 0, i32 9, i32 11
  %2 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @tegra_rgb_encoder_helper_funcs, ptr %helper_private.i, align 4
  %panel = getelementptr inbounds %struct.tegra_output, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %panel, align 4
  %tobool3.not = icmp eq ptr %4, null
  br i1 %tobool3.not, label %if.end.if.end16_crit_edge, label %if.then4

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

if.then4:                                         ; preds = %if.end
  %dev = getelementptr inbounds %struct.tegra_output, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %call6 = tail call ptr @devm_drm_panel_bridge_add(ptr noundef %6, ptr noundef nonnull %4) #6
  %bridge = getelementptr inbounds %struct.tegra_output, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %bridge to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call6, ptr %bridge, align 8
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end14

do.end:                                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.21, ptr noundef nonnull %call6) #9
  %10 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bridge, align 8
  %12 = ptrtoint ptr %11 to i32
  br label %cleanup

if.end14:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %panel to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %panel, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.end14, %if.end.if.end16_crit_edge
  %bridge17 = getelementptr inbounds %struct.tegra_output, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %bridge17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bridge17, align 8
  %tobool18.not = icmp eq ptr %15, null
  br i1 %tobool18.not, label %if.end16.if.end38_crit_edge, label %if.then19

if.end16.if.end38_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.then19:                                        ; preds = %if.end16
  %call22 = tail call i32 @drm_bridge_attach(ptr noundef %encoder, ptr noundef nonnull %15, ptr noundef null, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.then19.cleanup_crit_edge

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end25:                                         ; preds = %if.then19
  %call27 = tail call ptr @drm_bridge_connector_init(ptr noundef %drm, ptr noundef %encoder) #6
  %cmp.i82 = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i82, label %do.end32, label %if.end35

do.end32:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %dev33 = getelementptr inbounds %struct.tegra_output, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev33, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.24, ptr noundef nonnull %call27) #9
  %18 = ptrtoint ptr %call27 to i32
  br label %cleanup

if.end35:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %call37 = tail call i32 @drm_connector_attach_encoder(ptr noundef %call27, ptr noundef %encoder) #6
  br label %if.end38

if.end38:                                         ; preds = %if.end35, %if.end16.if.end38_crit_edge
  %call39 = tail call i32 @tegra_output_init(ptr noundef %drm, ptr noundef nonnull %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp = icmp slt i32 %call39, 0
  br i1 %cmp, label %do.end43, label %if.end45

do.end43:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  %dev44 = getelementptr inbounds %struct.tegra_output, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %dev44 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev44, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.27, i32 noundef %call39) #9
  br label %cleanup

if.end45:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  %index.i.i = getelementptr inbounds %struct.tegra_dc, ptr %dc, i32 0, i32 3, i32 8
  %21 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %index.i.i, align 4
  %shl.i = shl nuw i32 1, %22
  %possible_crtcs = getelementptr inbounds %struct.tegra_output, ptr %1, i32 0, i32 9, i32 6
  %23 = ptrtoint ptr %possible_crtcs to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %shl.i, ptr %possible_crtcs, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %do.end43, %do.end32, %if.then19.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %12, %do.end ], [ %18, %do.end32 ], [ %call39, %do.end43 ], [ 0, %if.end45 ], [ -19, %entry.cleanup_crit_edge ], [ %call22, %if.then19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_simple_encoder_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_drm_panel_bridge_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_bridge_connector_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_output_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tegra_dc_rgb_exit(ptr nocapture noundef readonly %dc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rgb = getelementptr inbounds %struct.tegra_dc, ptr %dc, i32 0, i32 10
  %0 = ptrtoint ptr %rgb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rgb, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @tegra_output_exit(ptr noundef nonnull %1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_output_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_rgb_encoder_disable(ptr nocapture noundef readonly %encoder) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dc = getelementptr i8, ptr %encoder, i32 1116
  %0 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dc, align 8
  %dev.i.i = getelementptr inbounds %struct.tegra_dc, ptr %1, i32 0, i32 2
  %regs.i.i = getelementptr inbounds %struct.tegra_dc, ptr %1, i32 0, i32 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %i.01.i = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.reg_entry, ptr @rgb_disable, i32 %i.01.i
  %value.i = getelementptr %struct.reg_entry, ptr @rgb_disable, i32 %i.01.i, i32 1
  %2 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value.i, align 4
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %6 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i.i, align 4
  tail call fastcc void @trace_dc_writel(ptr noundef %7, i32 noundef %5, i32 noundef %3) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !78
  tail call void @arm_heavy_mb() #6
  %8 = tail call i32 @llvm.bswap.i32(i32 %3) #6
  %9 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i.i, align 8
  %shl.i.i = shl i32 %5, 2
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 %shl.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %8) #6, !srcloc !79
  %inc.i = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 19
  br i1 %exitcond.not.i, label %tegra_dc_write_regs.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

tegra_dc_write_regs.exit:                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dc, align 8
  tail call void @tegra_dc_commit(ptr noundef %12) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_rgb_encoder_enable(ptr nocapture noundef readonly %encoder) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dc = getelementptr i8, ptr %encoder, i32 1116
  %0 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dc, align 8
  %dev.i.i = getelementptr inbounds %struct.tegra_dc, ptr %1, i32 0, i32 2
  %regs.i.i = getelementptr inbounds %struct.tegra_dc, ptr %1, i32 0, i32 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %i.01.i = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.reg_entry, ptr @rgb_enable, i32 %i.01.i
  %value.i = getelementptr %struct.reg_entry, ptr @rgb_enable, i32 %i.01.i, i32 1
  %2 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value.i, align 4
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %6 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i.i, align 4
  tail call fastcc void @trace_dc_writel(ptr noundef %7, i32 noundef %5, i32 noundef %3) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !78
  tail call void @arm_heavy_mb() #6
  %8 = tail call i32 @llvm.bswap.i32(i32 %3) #6
  %9 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs.i.i, align 8
  %shl.i.i = shl i32 %5, 2
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 %shl.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %8) #6, !srcloc !79
  %inc.i = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 19
  br i1 %exitcond.not.i, label %tegra_dc_write_regs.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

tegra_dc_write_regs.exit:                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dc, align 8
  %dev.i = getelementptr inbounds %struct.tegra_dc, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  tail call fastcc void @trace_dc_writel(ptr noundef %14, i32 noundef 1074, i32 noundef 5) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !78
  tail call void @arm_heavy_mb() #6
  %regs.i = getelementptr inbounds %struct.tegra_dc, ptr %12, i32 0, i32 8
  %15 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i, align 8
  %add.ptr.i18 = getelementptr i8, ptr %16, i32 4296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18, i32 83886080) #6, !srcloc !79
  %17 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dc, align 8
  %regs.i19 = getelementptr inbounds %struct.tegra_dc, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %regs.i19 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs.i19, align 8
  %add.ptr.i20 = getelementptr i8, ptr %20, i32 3100
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i20) #6, !srcloc !80
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  %dev.i21 = getelementptr inbounds %struct.tegra_dc, ptr %18, i32 0, i32 2
  %23 = ptrtoint ptr %dev.i21 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i21, align 4
  tail call fastcc void @trace_dc_readl(ptr noundef %24, i32 noundef %22) #6
  %and5 = and i32 %22, -1342177281
  %25 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dc, align 8
  %dev.i22 = getelementptr inbounds %struct.tegra_dc, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %dev.i22 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i22, align 4
  tail call fastcc void @trace_dc_writel(ptr noundef %28, i32 noundef 775, i32 noundef %and5) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !78
  tail call void @arm_heavy_mb() #6
  %29 = tail call i32 @llvm.bswap.i32(i32 %and5) #6
  %regs.i23 = getelementptr inbounds %struct.tegra_dc, ptr %26, i32 0, i32 8
  %30 = ptrtoint ptr %regs.i23 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs.i23, align 8
  %add.ptr.i24 = getelementptr i8, ptr %31, i32 3100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24, i32 %29) #6, !srcloc !79
  %32 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dc, align 8
  %dev.i25 = getelementptr inbounds %struct.tegra_dc, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %dev.i25 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i25, align 4
  tail call fastcc void @trace_dc_writel(ptr noundef %35, i32 noundef 1071, i32 noundef 0) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !78
  tail call void @arm_heavy_mb() #6
  %regs.i26 = getelementptr inbounds %struct.tegra_dc, ptr %33, i32 0, i32 8
  %36 = ptrtoint ptr %regs.i26 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs.i26, align 8
  %add.ptr.i27 = getelementptr i8, ptr %37, i32 4284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27, i32 0) #6, !srcloc !79
  %38 = ptrtoint ptr %dc to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dc, align 8
  tail call void @tegra_dc_commit(ptr noundef %39) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_rgb_encoder_atomic_check(ptr nocapture noundef readonly %encoder, ptr noundef %crtc_state, ptr nocapture noundef readonly %conn_state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %crtc = getelementptr inbounds %struct.drm_connector_state, ptr %conn_state, i32 0, i32 1
  %0 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crtc, align 4
  %tobool.not.i = icmp eq ptr %1, null
  %add.ptr.i25 = getelementptr i8, ptr %1, i32 -248
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %add.ptr.i25
  %mode = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 8
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  %pll_d2_out0.i = getelementptr i8, ptr %encoder, i32 1124
  %4 = ptrtoint ptr %pll_d2_out0.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pll_d2_out0.i, align 8
  %tobool.not.i26 = icmp eq ptr %5, null
  br i1 %tobool.not.i26, label %entry.if.else_crit_edge, label %if.end.i

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.end.i:                                         ; preds = %entry
  %clk_parent.i = getelementptr i8, ptr %encoder, i32 1128
  %6 = ptrtoint ptr %clk_parent.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk_parent.i, align 4
  %pll_d_out0.i = getelementptr i8, ptr %encoder, i32 1120
  %8 = ptrtoint ptr %pll_d_out0.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pll_d_out0.i, align 4
  %call.i = tail call zeroext i1 @clk_is_match(ptr noundef %7, ptr noundef %9) #6
  br i1 %call.i, label %if.end.i.if.then_crit_edge, label %land.lhs.true.i

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

land.lhs.true.i:                                  ; preds = %if.end.i
  %10 = ptrtoint ptr %clk_parent.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk_parent.i, align 4
  %12 = ptrtoint ptr %pll_d2_out0.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pll_d2_out0.i, align 8
  %call3.i = tail call zeroext i1 @clk_is_match(ptr noundef %11, ptr noundef %13) #6
  br i1 %call3.i, label %land.lhs.true.i.if.then_crit_edge, label %land.lhs.true.i.if.else_crit_edge

land.lhs.true.i.if.else_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true.i.if.then_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %land.lhs.true.i.if.then_crit_edge, %if.end.i.if.then_crit_edge
  %mul4 = mul i32 %3, 2000
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.i.if.else_crit_edge, %entry.if.else_crit_edge
  %mul = mul i32 %3, 1000
  %clk = getelementptr i8, ptr %encoder, i32 1132
  %14 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk, align 8
  %call5 = tail call i32 @clk_get_rate(ptr noundef %15) #6
  %mul6 = shl i32 %call5, 1
  %div7 = udiv i32 %mul6, %mul
  %sub = add i32 %div7, -2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %pclk.0 = phi i32 [ %mul4, %if.then ], [ 0, %if.else ]
  %div.0 = phi i32 [ 2, %if.then ], [ %sub, %if.else ]
  %clk_parent = getelementptr i8, ptr %encoder, i32 1128
  %16 = ptrtoint ptr %clk_parent to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clk_parent, align 4
  %call8 = tail call i32 @tegra_dc_state_setup_clock(ptr noundef %spec.select.i, ptr noundef %crtc_state, ptr noundef %17, i32 noundef %pclk.0, i32 noundef %div.0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %do.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr i8, ptr %encoder, i32 -32
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.32, i32 noundef %call8) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge
  ret i32 %call8
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_dc_commit(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dc_writel(ptr noundef %dev, i32 noundef %offset, i32 noundef %value) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 1), ptr blockaddress(@trace_dc_writel, %do.body)) #6
          to label %if.end48 [label %do.body], !srcloc !82

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !67) #6
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !83

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #8
  %9 = tail call i32 @llvm.read_register.i32(metadata !67) #6
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !84
  %call42 = tail call i32 @__traceiter_dc_writel(ptr noundef null, ptr noundef %dev, i32 noundef %offset, i32 noundef %value) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !85
  %13 = tail call i32 @llvm.read_register.i32(metadata !67) #6
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !67) #6
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !83

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !67) #6
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !86
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_writel, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_dc_writel.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @trace_dc_writel.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.29, i32 noundef 29, ptr noundef nonnull @.str.30) #6
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !87
  %31 = tail call i32 @llvm.read_register.i32(metadata !67) #6
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dc_writel(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_dc_readl(ptr noundef %dev, i32 noundef %value) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_readl, i32 0, i32 1), ptr blockaddress(@trace_dc_readl, %do.body)) #6
          to label %if.end48 [label %do.body], !srcloc !82

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !67) #6
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !83

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #8
  %9 = tail call i32 @llvm.read_register.i32(metadata !67) #6
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !88
  %call42 = tail call i32 @__traceiter_dc_readl(ptr noundef null, ptr noundef %dev, i32 noundef 775, i32 noundef %value) #6
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !89
  %13 = tail call i32 @llvm.read_register.i32(metadata !67) #6
  %and.i.i.i2 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i2 to ptr
  %preempt_count.i.i3 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i3, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !67) #6
  %and.i5 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i5 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i6, label %if.end48.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end48.cpu_online.exit14_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !83

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 108, i32 noundef 9, ptr noundef null) #6
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end48.cpu_online.exit14_crit_edge
  %div1.i.i.i10 = lshr i32 %20, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i10
  %22 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i12
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i13.not = icmp eq i32 %25, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end69_crit_edge, label %if.then52

cpu_online.exit14.if.end69_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %26 = tail call i32 @llvm.read_register.i32(metadata !67) #6
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !86
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_readl, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_dc_readl, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_dc_readl.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @trace_dc_readl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.29, i32 noundef 32, ptr noundef nonnull @.str.30) #6
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !87
  %31 = tail call i32 @llvm.read_register.i32(metadata !67) #6
  %and.i.i.i.i15 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit14.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_dc_readl(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_dc_state_setup_clock(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @clk_is_match(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !14, !15, !16, !18, !19, !20, !22, !24, !25, !26, !28, !30, !31, !32, !34, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !49, !50, !51, !52, !54, !55, !57, !59, !61, !62, !64, !65, !66}
!llvm.named.register.sp = !{!67}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/tegra/rgb.c", i32 198, i32 46}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/tegra/rgb.c", i32 216, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @tegra_dc_rgb_probe._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @tegra_dc_rgb_probe._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/tegra/rgb.c", i32 220, i32 42}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/tegra/rgb.c", i32 222, i32 3}
!14 = !{ptr @tegra_dc_rgb_probe._entry.7, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @tegra_dc_rgb_probe._entry_ptr.9, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/tegra/rgb.c", i32 228, i32 3}
!18 = !{ptr @tegra_dc_rgb_probe._entry.10, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @tegra_dc_rgb_probe._entry_ptr.12, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/tegra/rgb.c", i32 232, i32 38}
!22 = !{ptr @.str.15, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/tegra/rgb.c", i32 235, i32 3}
!24 = !{ptr @tegra_dc_rgb_probe._entry.14, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @tegra_dc_rgb_probe._entry_ptr.16, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.17, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/tegra/rgb.c", i32 240, i32 40}
!28 = !{ptr @.str.19, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/tegra/rgb.c", i32 243, i32 4}
!30 = !{ptr @tegra_dc_rgb_probe._entry.18, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @tegra_dc_rgb_probe._entry_ptr.20, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.21, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/tegra/rgb.c", i32 291, i32 4}
!34 = !{ptr @.str.22, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @tegra_dc_rgb_init._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @tegra_dc_rgb_init._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.24, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/tegra/rgb.c", i32 324, i32 4}
!39 = !{ptr @tegra_dc_rgb_init._entry.23, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @tegra_dc_rgb_init._entry_ptr.25, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.27, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/tegra/rgb.c", i32 335, i32 3}
!43 = !{ptr @tegra_dc_rgb_init._entry.26, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @tegra_dc_rgb_init._entry_ptr.28, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @tegra_rgb_encoder_helper_funcs, !46, !"tegra_rgb_encoder_helper_funcs", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/tegra/rgb.c", i32 186, i32 46}
!47 = distinct !{null, !48, !"__already_done", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/tegra/trace.h", i32 27, i32 1}
!49 = !{ptr @.str.29, !48, !"<string literal>", i1 false, i1 false}
!50 = distinct !{null, !48, !"__warned", i1 false, i1 false}
!51 = !{ptr @.str.30, !48, !"<string literal>", i1 false, i1 false}
!52 = distinct !{null, !53, !"__already_done", i1 false, i1 false}
!53 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!54 = !{ptr @.str.31, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @rgb_disable, !56, !"rgb_disable", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/tegra/rgb.c", i32 58, i32 31}
!57 = !{ptr @rgb_enable, !58, !"rgb_enable", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/tegra/rgb.c", i32 36, i32 31}
!59 = distinct !{null, !60, !"__already_done", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/tegra/trace.h", i32 30, i32 1}
!61 = distinct !{null, !60, !"__warned", i1 false, i1 false}
!62 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/tegra/rgb.c", i32 179, i32 3}
!64 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @tegra_rgb_encoder_atomic_check._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @tegra_rgb_encoder_atomic_check._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{!"sp"}
!68 = !{i32 1, !"wchar_size", i32 2}
!69 = !{i32 1, !"min_enum_size", i32 4}
!70 = !{i32 8, !"branch-target-enforcement", i32 0}
!71 = !{i32 8, !"sign-return-address", i32 0}
!72 = !{i32 8, !"sign-return-address-all", i32 0}
!73 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!74 = !{i32 7, !"uwtable", i32 1}
!75 = !{i32 7, !"frame-pointer", i32 2}
!76 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!77 = !{i8 0, i8 2}
!78 = !{i64 2157197804}
!79 = !{i64 6917803}
!80 = !{i64 6918221}
!81 = !{i64 2157198675}
!82 = !{i64 2148729991, i64 2148729996, i64 2148730009, i64 2148730053, i64 2148730087, i64 2148730108}
!83 = !{!"branch_weights", i32 2000, i32 1}
!84 = !{i64 2156989247}
!85 = !{i64 2156989464}
!86 = !{i64 2149306077}
!87 = !{i64 2149307113}
!88 = !{i64 2157009456}
!89 = !{i64 2157009671}
