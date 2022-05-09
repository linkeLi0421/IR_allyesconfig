; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/meson/meson_encoder_hdmi.c_pt.bc'
source_filename = "../drivers/gpu/drm/meson/meson_encoder_hdmi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_bridge_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.cec_connector_info = type { i32, %union.anon.97 }
%union.anon.97 = type { [16 x i32] }
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
%struct.meson_encoder_hdmi = type { %struct.drm_encoder, %struct.drm_bridge, ptr, ptr, ptr, i32, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_bridge = type { %struct.drm_private_obj, ptr, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.meson_drm = type { ptr, i32, ptr, ptr, i32, ptr, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, %struct.anon.86, %struct.anon.87, %struct.anon.88, %struct.anon.89 }
%struct.anon.86 = type { i8, i8, i8, i8, i32, i32, [5 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.87 = type { i32, i8, i8, i8 }
%struct.anon.88 = type { i32, ptr, i32 }
%struct.anon.89 = type { ptr, i64, i32 }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.84 }
%union.anon.84 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_connnectors_state = type { ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_state = type { ptr, ptr, ptr, i32, ptr, ptr, %struct.drm_tv_connector_state, i8, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i32, ptr }
%struct.drm_tv_connector_state = type { i32, %struct.drm_connector_tv_margins, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_bridge_state = type { %struct.drm_private_state, ptr, %struct.drm_bus_cfg, %struct.drm_bus_cfg }
%struct.drm_private_state = type { ptr }
%struct.drm_bus_cfg = type { i32, i32 }

@meson_encoder_hdmi_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 361, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"HDMI transceiver device is disabled\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"meson_encoder_hdmi_init\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/gpu/drm/meson/meson_encoder_hdmi.c\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@meson_encoder_hdmi_init._entry_ptr = internal global ptr @meson_encoder_hdmi_init._entry, section ".printk_index", align 4
@meson_encoder_hdmi_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 367, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to find HDMI transceiver bridge\0A\00", [56 x i8] zeroinitializer }, align 32
@meson_encoder_hdmi_init._entry_ptr.7 = internal global ptr @meson_encoder_hdmi_init._entry.5, section ".printk_index", align 4
@meson_encoder_hdmi_bridge_funcs = internal constant { %struct.drm_bridge_funcs, [60 x i8] } { %struct.drm_bridge_funcs { ptr @meson_encoder_hdmi_attach, ptr @meson_encoder_hdmi_detach, ptr @meson_encoder_hdmi_mode_valid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @meson_encoder_hdmi_atomic_enable, ptr @meson_encoder_hdmi_atomic_disable, ptr null, ptr @drm_atomic_helper_bridge_duplicate_state, ptr @drm_atomic_helper_bridge_destroy_state, ptr null, ptr @meson_encoder_hdmi_get_inp_bus_fmts, ptr @meson_encoder_hdmi_atomic_check, ptr @drm_atomic_helper_bridge_reset, ptr null, ptr null, ptr null, ptr @meson_encoder_hdmi_hpd_notify, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@meson_encoder_hdmi_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 385, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to init HDMI encoder: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@meson_encoder_hdmi_init._entry_ptr.10 = internal global ptr @meson_encoder_hdmi_init._entry.8, section ".printk_index", align 4
@meson_encoder_hdmi_init._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 395, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to attach bridge: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@meson_encoder_hdmi_init._entry_ptr.13 = internal global ptr @meson_encoder_hdmi_init._entry.11, section ".printk_index", align 4
@meson_encoder_hdmi_init._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 403, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Unable to create HDMI bridge connector\0A\00", [56 x i8] zeroinitializer }, align 32
@meson_encoder_hdmi_init._entry_ptr.16 = internal global ptr @meson_encoder_hdmi_init._entry.14, section ".printk_index", align 4
@meson_encoder_hdmi_init.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.1, ptr @.str.2, ptr @.str.18, i8 0, i8 111, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"meson_drm\00", [22 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"HDMI encoder initialized\0A\00", [38 x i8] zeroinitializer }, align 32
@meson_encoder_hdmi_mode_valid.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 0, i8 32, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"meson_encoder_hdmi_mode_valid\00", [34 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Modeline \22%s\22: %d %d %d %d %d %d %d %d %d %d 0x%x 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@meson_encoder_hdmi_mode_valid.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.19, ptr @.str.2, ptr @.str.21, i8 0, i8 45, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: vclk:%d phy=%d venc=%d hdmi=%d\0A\00", [60 x i8] zeroinitializer }, align 32
@meson_encoder_hdmi_atomic_enable.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.22, ptr @.str.2, ptr @.str.23, i8 0, i8 54, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"meson_encoder_hdmi_atomic_enable\00", [63 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\22%s\22 vic %d\0A\00", [19 x i8] zeroinitializer }, align 32
@meson_encoder_hdmi_atomic_enable.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.22, ptr @.str.2, ptr @.str.24, i8 0, i8 59, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VENCI\00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VENCP\00", [26 x i8] zeroinitializer }, align 32
@meson_encoder_hdmi_set_vclk.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.27, ptr @.str.2, ptr @.str.28, i8 0, i8 27, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"meson_encoder_hdmi_set_vclk\00", [36 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"vclk:%d phy=%d venc=%d hdmi=%d enci=%d\0A\00", [56 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@meson_encoder_hdmi_atomic_check.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.29, ptr @.str.2, ptr @.str.30, i8 0, i8 76, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"meson_encoder_hdmi_atomic_check\00", [32 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"output_bus_fmt %lx\0A\00", [44 x i8] zeroinitializer }, align 32
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 361, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 367, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant [32 x i8] c"meson_encoder_hdmi_bridge_funcs\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 333, i32 38 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 385, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 395, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 403, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 444, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 130, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 180, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 216, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 237, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 108, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.116 = private constant [46 x i8] c"../drivers/gpu/drm/meson/meson_encoder_hdmi.c\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 306, i32 2 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @meson_encoder_hdmi_init._entry, ptr @meson_encoder_hdmi_init._entry.11, ptr @meson_encoder_hdmi_init._entry.14, ptr @meson_encoder_hdmi_init._entry.5, ptr @meson_encoder_hdmi_init._entry.8, ptr @meson_encoder_hdmi_init._entry_ptr, ptr @meson_encoder_hdmi_init._entry_ptr.10, ptr @meson_encoder_hdmi_init._entry_ptr.13, ptr @meson_encoder_hdmi_init._entry_ptr.16, ptr @meson_encoder_hdmi_init._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @meson_encoder_hdmi_bridge_funcs, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_encoder_hdmi_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_encoder_hdmi_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_encoder_hdmi_bridge_funcs to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_encoder_hdmi_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_encoder_hdmi_init._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_encoder_hdmi_init._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @meson_encoder_hdmi_init(ptr noundef %priv) local_unnamed_addr #0 align 64 {
entry:
  %conn_info = alloca %struct.cec_connector_info, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 372, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup95_crit_edge, label %if.end

entry.cleanup95_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup95

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %call2 = tail call ptr @of_graph_get_remote_node(ptr noundef %5, i32 noundef 1, i32 noundef 0) #6
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str) #9
  br label %cleanup95

if.end6:                                          ; preds = %if.end
  %call7 = tail call ptr @of_drm_find_bridge(ptr noundef nonnull %call2) #6
  %next_bridge = getelementptr inbounds %struct.meson_encoder_hdmi, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %next_bridge to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7, ptr %next_bridge, align 4
  %tobool9.not = icmp eq ptr %call7, null
  br i1 %tobool9.not, label %do.end13, label %if.end15

do.end13:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.6) #9
  br label %cleanup95

if.end15:                                         ; preds = %if.end6
  %bridge = getelementptr inbounds %struct.meson_encoder_hdmi, ptr %call.i, i32 0, i32 1
  %funcs = getelementptr inbounds %struct.meson_encoder_hdmi, ptr %call.i, i32 0, i32 1, i32 7
  %11 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @meson_encoder_hdmi_bridge_funcs, ptr %funcs, align 4
  %12 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv, align 8
  %of_node17 = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 27
  %14 = ptrtoint ptr %of_node17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %of_node17, align 8
  %of_node19 = getelementptr inbounds %struct.meson_encoder_hdmi, ptr %call.i, i32 0, i32 1, i32 4
  %16 = ptrtoint ptr %of_node19 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %of_node19, align 4
  %type = getelementptr inbounds %struct.meson_encoder_hdmi, ptr %call.i, i32 0, i32 1, i32 10
  %17 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 11, ptr %type, align 4
  %interlace_allowed = getelementptr inbounds %struct.meson_encoder_hdmi, ptr %call.i, i32 0, i32 1, i32 11
  %18 = ptrtoint ptr %interlace_allowed to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %interlace_allowed, align 4
  tail call void @drm_bridge_add(ptr noundef %bridge) #6
  %priv23 = getelementptr inbounds %struct.meson_encoder_hdmi, ptr %call.i, i32 0, i32 4
  %19 = ptrtoint ptr %priv23 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %priv, ptr %priv23, align 4
  %drm = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 10
  %20 = ptrtoint ptr %drm to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %drm, align 4
  %call24 = tail call i32 @drm_simple_encoder_init(ptr noundef %21, ptr noundef nonnull %call.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end31, label %do.end29

do.end29:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %priv, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.9, i32 noundef %call24) #9
  br label %cleanup95

if.end31:                                         ; preds = %if.end15
  %possible_crtcs = getelementptr inbounds %struct.drm_encoder, ptr %call.i, i32 0, i32 6
  %24 = ptrtoint ptr %possible_crtcs to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %possible_crtcs, align 4
  %call35 = tail call i32 @drm_bridge_attach(ptr noundef nonnull %call.i, ptr noundef %bridge, ptr noundef null, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end42, label %do.end40

do.end40:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %priv, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.12, i32 noundef %call35) #9
  br label %cleanup95

if.end42:                                         ; preds = %if.end31
  %27 = ptrtoint ptr %drm to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %drm, align 4
  %call45 = tail call ptr @drm_bridge_connector_init(ptr noundef %28, ptr noundef nonnull %call.i) #6
  %connector = getelementptr inbounds %struct.meson_encoder_hdmi, ptr %call.i, i32 0, i32 3
  %29 = ptrtoint ptr %connector to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call45, ptr %connector, align 4
  %cmp.i = icmp ugt ptr %call45, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end51, label %if.end55

do.end51:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %priv, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.15) #9
  %32 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %connector, align 4
  %34 = ptrtoint ptr %33 to i32
  br label %cleanup95

if.end55:                                         ; preds = %if.end42
  %call58 = tail call i32 @drm_connector_attach_encoder(ptr noundef %call45, ptr noundef nonnull %call.i) #6
  %35 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %connector, align 4
  tail call void @drm_atomic_helper_connector_reset(ptr noundef %36) #6
  %compat.i = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 1
  %37 = ptrtoint ptr %compat.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %compat.i, align 4
  %.off = add i32 %38, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %if.then67, label %if.end55.if.end70_crit_edge

if.end55.if.end70_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end70

if.then67:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %connector, align 4
  %call69 = tail call i32 @drm_connector_attach_hdr_output_metadata_property(ptr noundef %40) #6
  br label %if.end70

if.end70:                                         ; preds = %if.then67, %if.end55.if.end70_crit_edge
  %41 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %connector, align 4
  %call72 = tail call i32 @drm_connector_attach_max_bpc_property(ptr noundef %42, i32 noundef 8, i32 noundef 8) #6
  %43 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %connector, align 4
  %ycbcr_420_allowed = getelementptr inbounds %struct.drm_connector, ptr %44, i32 0, i32 15
  %45 = ptrtoint ptr %ycbcr_420_allowed to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %ycbcr_420_allowed, align 1
  %call74 = tail call ptr @of_find_device_by_node(ptr noundef nonnull %call2) #6
  %tobool75.not = icmp eq ptr %call74, null
  br i1 %tobool75.not, label %if.end70.do.body85_crit_edge, label %if.then76

if.end70.do.body85_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body85

if.then76:                                        ; preds = %if.end70
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %conn_info) #6
  %46 = call ptr @memset(ptr %conn_info, i32 255, i32 68)
  %47 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %connector, align 4
  call void @cec_fill_conn_info_from_drm(ptr noundef nonnull %conn_info, ptr noundef %48) #6
  %dev78 = getelementptr inbounds %struct.platform_device, ptr %call74, i32 0, i32 3
  %call79 = call ptr @cec_notifier_conn_register(ptr noundef %dev78, ptr noundef null, ptr noundef nonnull %conn_info) #6
  %tobool80.not = icmp eq ptr %call79, null
  br i1 %tobool80.not, label %cleanup95.critedge, label %if.end82

if.end82:                                         ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #8
  %cec_notifier = getelementptr inbounds %struct.meson_encoder_hdmi, ptr %call.i, i32 0, i32 6
  %49 = ptrtoint ptr %cec_notifier to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call79, ptr %cec_notifier, align 4
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %conn_info) #6
  br label %do.body85

do.body85:                                        ; preds = %if.end82, %if.end70.do.body85_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @meson_encoder_hdmi_init.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@meson_encoder_hdmi_init, %if.then90)) #6
          to label %cleanup95 [label %if.then90], !srcloc !65

if.then90:                                        ; preds = %do.body85
  call void @__sanitizer_cov_trace_pc() #8
  %50 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %priv, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @meson_encoder_hdmi_init.__UNIQUE_ID_ddebug317, ptr noundef %51, ptr noundef nonnull @.str.18) #6
  br label %cleanup95

cleanup95.critedge:                               ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %conn_info) #6
  br label %cleanup95

cleanup95:                                        ; preds = %cleanup95.critedge, %if.then90, %do.body85, %do.end51, %do.end40, %do.end29, %do.end13, %do.end, %entry.cleanup95_crit_edge
  %retval.1 = phi i32 [ %call24, %do.end29 ], [ %call35, %do.end40 ], [ %34, %do.end51 ], [ -517, %do.end13 ], [ 0, %do.end ], [ -12, %entry.cleanup95_crit_edge ], [ -12, %cleanup95.critedge ], [ 0, %if.then90 ], [ 0, %do.body85 ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_node(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_drm_find_bridge(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_simple_encoder_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_bridge_connector_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_hdr_output_metadata_property(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_max_bpc_property(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_fill_conn_info_from_drm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cec_notifier_conn_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_encoder_hdmi_attach(ptr noundef %bridge, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %encoder = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 2
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %next_bridge = getelementptr i8, ptr %bridge, i32 280
  %2 = ptrtoint ptr %next_bridge to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %next_bridge, align 4
  %call = tail call i32 @drm_bridge_attach(ptr noundef %1, ptr noundef %3, ptr noundef %bridge, i32 noundef %flags) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @meson_encoder_hdmi_detach(ptr nocapture noundef %bridge) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cec_notifier = getelementptr i8, ptr %bridge, i32 296
  %0 = ptrtoint ptr %cec_notifier to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cec_notifier, align 4
  tail call void @cec_notifier_conn_unregister(ptr noundef %1) #6
  %2 = ptrtoint ptr %cec_notifier to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %cec_notifier, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_encoder_hdmi_mode_valid(ptr nocapture noundef readonly %bridge, ptr noundef %display_info, ptr noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr i8, ptr %bridge, i32 288
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %hdmi = getelementptr inbounds %struct.drm_display_info, ptr %display_info, i32 0, i32 16
  %2 = ptrtoint ptr %hdmi to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hdmi, align 8, !range !66
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %call = tail call zeroext i8 @drm_match_cea_mode(ptr noundef %mode) #6
  %conv = zext i8 %call to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @meson_encoder_hdmi_mode_valid.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@meson_encoder_hdmi_mode_valid, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !65

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %name = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 31
  %call8 = tail call i32 @drm_mode_vrefresh(ptr noundef %mode) #6
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode, align 4
  %hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 1
  %8 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %hdisplay, align 4
  %conv9 = zext i16 %9 to i32
  %hsync_start = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 2
  %10 = ptrtoint ptr %hsync_start to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %hsync_start, align 2
  %conv10 = zext i16 %11 to i32
  %hsync_end = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 3
  %12 = ptrtoint ptr %hsync_end to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %hsync_end, align 4
  %conv11 = zext i16 %13 to i32
  %htotal = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 4
  %14 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %htotal, align 2
  %conv12 = zext i16 %15 to i32
  %vdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 6
  %16 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vdisplay, align 2
  %conv13 = zext i16 %17 to i32
  %vsync_start = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 7
  %18 = ptrtoint ptr %vsync_start to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %vsync_start, align 4
  %conv14 = zext i16 %19 to i32
  %vsync_end = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 8
  %20 = ptrtoint ptr %vsync_end to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %vsync_end, align 2
  %conv15 = zext i16 %21 to i32
  %vtotal = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 9
  %22 = ptrtoint ptr %vtotal to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %vtotal, align 4
  %conv16 = zext i16 %23 to i32
  %type = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 28
  %24 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %type, align 2
  %conv17 = zext i8 %25 to i32
  %flags = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 11
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flags, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @meson_encoder_hdmi_mode_valid.__UNIQUE_ID_ddebug310, ptr noundef %5, ptr noundef nonnull @.str.20, ptr noundef %name, i32 noundef %call8, i32 noundef %7, i32 noundef %conv9, i32 noundef %conv10, i32 noundef %conv11, i32 noundef %conv12, i32 noundef %conv13, i32 noundef %conv14, i32 noundef %conv15, i32 noundef %conv16, i32 noundef %conv17, i32 noundef %27) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %max_tmds_clock = getelementptr inbounds %struct.drm_display_info, ptr %display_info, i32 0, i32 9
  %28 = ptrtoint ptr %max_tmds_clock to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %max_tmds_clock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool18.not = icmp eq i32 %29, 0
  br i1 %tobool18.not, label %do.end.if.end27_crit_edge, label %land.lhs.true

do.end.if.end27_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

land.lhs.true:                                    ; preds = %do.end
  %30 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %29)
  %cmp = icmp sgt i32 %31, %29
  br i1 %cmp, label %land.lhs.true22, label %land.lhs.true.if.end27_crit_edge

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

land.lhs.true22:                                  ; preds = %land.lhs.true
  %call23 = tail call zeroext i1 @drm_mode_is_420_only(ptr noundef %display_info, ptr noundef %mode) #6
  br i1 %call23, label %land.lhs.true22.if.end27_crit_edge, label %land.lhs.true24

land.lhs.true22.if.end27_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

land.lhs.true24:                                  ; preds = %land.lhs.true22
  %call25 = tail call zeroext i1 @drm_mode_is_420_also(ptr noundef %display_info, ptr noundef %mode) #6
  br i1 %call25, label %land.lhs.true24.if.end27_crit_edge, label %land.lhs.true24.cleanup_crit_edge

land.lhs.true24.cleanup_crit_edge:                ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true24.if.end27_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

if.end27:                                         ; preds = %land.lhs.true24.if.end27_crit_edge, %land.lhs.true22.if.end27_crit_edge, %land.lhs.true.if.end27_crit_edge, %do.end.if.end27_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call)
  %tobool28.not = icmp eq i8 %call, 0
  br i1 %tobool28.not, label %if.then29, label %if.else

if.then29:                                        ; preds = %if.end27
  %call30 = tail call i32 @meson_venc_hdmi_supported_mode(ptr noundef %mode) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31.not = icmp eq i32 %call30, 0
  br i1 %cmp31.not, label %if.end34, label %if.then29.cleanup_crit_edge

if.then29.cleanup_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end34:                                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mode, align 4
  %call36 = tail call i32 @meson_vclk_dmt_supported_freq(ptr noundef %1, i32 noundef %33) #6
  br label %cleanup

if.else:                                          ; preds = %if.end27
  %call37 = tail call zeroext i1 @meson_venc_hdmi_supported_vic(i32 noundef %conv) #6
  br i1 %call37, label %if.end40, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end40:                                         ; preds = %if.else
  %34 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mode, align 4
  %call42 = tail call zeroext i1 @drm_mode_is_420_only(ptr noundef %display_info, ptr noundef %mode) #6
  br i1 %call42, label %if.end40.if.then48_crit_edge, label %lor.lhs.false

if.end40.if.then48_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then48

lor.lhs.false:                                    ; preds = %if.end40
  br i1 %tobool.not, label %land.lhs.true45, label %lor.lhs.false.if.end49_crit_edge

lor.lhs.false.if.end49_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

land.lhs.true45:                                  ; preds = %lor.lhs.false
  %call46 = tail call zeroext i1 @drm_mode_is_420_also(ptr noundef %display_info, ptr noundef %mode) #6
  br i1 %call46, label %land.lhs.true45.if.then48_crit_edge, label %land.lhs.true45.if.end49_crit_edge

land.lhs.true45.if.end49_crit_edge:               ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

land.lhs.true45.if.then48_crit_edge:              ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then48

if.then48:                                        ; preds = %land.lhs.true45.if.then48_crit_edge, %if.end40.if.then48_crit_edge
  %div157 = lshr i32 %35, 1
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %land.lhs.true45.if.end49_crit_edge, %lor.lhs.false.if.end49_crit_edge
  %vclk_freq.0 = phi i32 [ %div157, %if.then48 ], [ %35, %lor.lhs.false.if.end49_crit_edge ], [ %35, %land.lhs.true45.if.end49_crit_edge ]
  %mul = mul i32 %vclk_freq.0, 10
  %flags50 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 11
  %36 = ptrtoint ptr %flags50 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags50, align 4
  %and = lshr i32 %37, 12
  %and.lobit = and i32 %and, 1
  %spec.select = shl i32 %vclk_freq.0, %and.lobit
  %call55 = tail call zeroext i1 @meson_venc_hdmi_venc_repeat(i32 noundef %conv) #6
  br i1 %call55, label %if.end49.if.then65_crit_edge, label %lor.lhs.false57

if.end49.if.then65_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then65

lor.lhs.false57:                                  ; preds = %if.end49
  %call58 = tail call zeroext i1 @drm_mode_is_420_only(ptr noundef %display_info, ptr noundef %mode) #6
  br i1 %call58, label %lor.lhs.false57.if.then65_crit_edge, label %lor.lhs.false60

lor.lhs.false57.if.then65_crit_edge:              ; preds = %lor.lhs.false57
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then65

lor.lhs.false60:                                  ; preds = %lor.lhs.false57
  br i1 %tobool.not, label %land.lhs.true62, label %lor.lhs.false60.if.end67_crit_edge

lor.lhs.false60.if.end67_crit_edge:               ; preds = %lor.lhs.false60
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end67

land.lhs.true62:                                  ; preds = %lor.lhs.false60
  %call63 = tail call zeroext i1 @drm_mode_is_420_also(ptr noundef %display_info, ptr noundef %mode) #6
  br i1 %call63, label %land.lhs.true62.if.then65_crit_edge, label %land.lhs.true62.if.end67_crit_edge

land.lhs.true62.if.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end67

land.lhs.true62.if.then65_crit_edge:              ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then65

if.then65:                                        ; preds = %land.lhs.true62.if.then65_crit_edge, %lor.lhs.false57.if.then65_crit_edge, %if.end49.if.then65_crit_edge
  %mul66 = shl i32 %spec.select, 1
  br label %if.end67

if.end67:                                         ; preds = %if.then65, %land.lhs.true62.if.end67_crit_edge, %lor.lhs.false60.if.end67_crit_edge
  %venc_freq.0 = phi i32 [ %mul66, %if.then65 ], [ %spec.select, %lor.lhs.false60.if.end67_crit_edge ], [ %spec.select, %land.lhs.true62.if.end67_crit_edge ]
  %38 = tail call i32 @llvm.umax.i32(i32 %venc_freq.0, i32 %spec.select)
  %39 = ptrtoint ptr %flags50 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags50, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @meson_encoder_hdmi_mode_valid.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@meson_encoder_hdmi_mode_valid, %if.then89)) #6
          to label %do.end93 [label %if.then89], !srcloc !65

if.then89:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  %and72 = lshr i32 %40, 12
  %and72.lobit = and i32 %and72, 1
  %venc_freq.1 = lshr i32 %venc_freq.0, %and72.lobit
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @meson_encoder_hdmi_mode_valid.__UNIQUE_ID_ddebug313, ptr noundef %42, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.19, i32 noundef %mul, i32 noundef %38, i32 noundef %venc_freq.1, i32 noundef %spec.select) #6
  br label %do.end93

do.end93:                                         ; preds = %if.then89, %if.end67
  %call94 = tail call i32 @meson_vclk_vic_supported_freq(ptr noundef %1, i32 noundef %mul, i32 noundef %38) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end93, %if.else.cleanup_crit_edge, %if.end34, %if.then29.cleanup_crit_edge, %land.lhs.true24.cleanup_crit_edge
  %retval.0 = phi i32 [ %call94, %do.end93 ], [ %call36, %if.end34 ], [ -2, %land.lhs.true24.cleanup_crit_edge ], [ %call30, %if.then29.cleanup_crit_edge ], [ -2, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @meson_encoder_hdmi_atomic_enable(ptr nocapture noundef readonly %bridge, ptr nocapture noundef readonly %bridge_state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %bridge, i32 -72
  %0 = ptrtoint ptr %bridge_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bridge_state, align 4
  %priv2 = getelementptr i8, ptr %bridge, i32 288
  %2 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv2, align 4
  %encoder = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 2
  %4 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %encoder, align 4
  %call = tail call ptr @drm_atomic_get_new_connector_for_encoder(ptr noundef %1, ptr noundef %5) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end26, !prof !67

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 201, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end26:                                         ; preds = %entry
  %index.i.i = getelementptr inbounds %struct.drm_connector, ptr %call, i32 0, i32 9
  %6 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index.i.i, align 4
  %num_connector.i = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %num_connector.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_connector.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp.not.i = icmp slt i32 %7, %9
  br i1 %cmp.not.i, label %drm_atomic_get_new_connector_state.exit, label %if.end26.do.end47_crit_edge

if.end26.do.end47_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end47

drm_atomic_get_new_connector_state.exit:          ; preds = %if.end26
  %connectors.i = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %connectors.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %connectors.i, align 4
  %new_state.i = getelementptr %struct.__drm_connnectors_state, ptr %11, i32 %7, i32 3
  %12 = ptrtoint ptr %new_state.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %new_state.i, align 4
  %tobool29.not = icmp eq ptr %13, null
  br i1 %tobool29.not, label %drm_atomic_get_new_connector_state.exit.do.end47_crit_edge, label %if.end63, !prof !67

drm_atomic_get_new_connector_state.exit.do.end47_crit_edge: ; preds = %drm_atomic_get_new_connector_state.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end47

do.end47:                                         ; preds = %drm_atomic_get_new_connector_state.exit.do.end47_crit_edge, %if.end26.do.end47_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 205, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end63:                                         ; preds = %drm_atomic_get_new_connector_state.exit
  %crtc = getelementptr inbounds %struct.drm_connector_state, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %crtc, align 4
  %crtcs.i = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %crtcs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %crtcs.i, align 4
  %index.i.i194 = getelementptr inbounds %struct.drm_crtc, ptr %15, i32 0, i32 8
  %18 = ptrtoint ptr %index.i.i194 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %index.i.i194, align 4
  %new_state.i195 = getelementptr %struct.__drm_crtcs_state, ptr %17, i32 %19, i32 3
  %20 = ptrtoint ptr %new_state.i195 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %new_state.i195, align 4
  %tobool66.not = icmp eq ptr %21, null
  br i1 %tobool66.not, label %do.end84, label %if.end100, !prof !67

do.end84:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 209, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end100:                                        ; preds = %if.end63
  %adjusted_mode = getelementptr inbounds %struct.drm_crtc_state, ptr %21, i32 0, i32 7
  %call101 = tail call zeroext i8 @drm_match_cea_mode(ptr noundef %adjusted_mode) #6
  %conv = zext i8 %call101 to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @meson_encoder_hdmi_atomic_enable.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@meson_encoder_hdmi_atomic_enable, %if.then112)) #6
          to label %do.end115 [label %if.then112], !srcloc !65

if.then112:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %3, align 8
  %name = getelementptr inbounds %struct.drm_crtc_state, ptr %21, i32 0, i32 7, i32 31
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @meson_encoder_hdmi_atomic_enable.__UNIQUE_ID_ddebug314, ptr noundef %23, ptr noundef nonnull @.str.23, ptr noundef %name, i32 noundef %conv) #6
  br label %do.end115

do.end115:                                        ; preds = %if.then112, %if.end100
  %output_bus_fmt = getelementptr i8, ptr %bridge, i32 292
  %24 = ptrtoint ptr %output_bus_fmt to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %output_bus_fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8230, i32 %25)
  %cmp = icmp eq i32 %25, 8230
  %spec.select = select i1 %cmp, i32 0, i32 128
  tail call void @meson_venc_hdmi_mode_set(ptr noundef %3, i32 noundef %conv, i32 noundef %spec.select, i1 noundef zeroext %cmp, ptr noundef %adjusted_mode) #6
  tail call fastcc void @meson_encoder_hdmi_set_vclk(ptr noundef %add.ptr, ptr noundef %adjusted_mode)
  %26 = ptrtoint ptr %output_bus_fmt to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %output_bus_fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8230, i32 %27)
  %cmp121 = icmp eq i32 %27, 8230
  %io_base = getelementptr inbounds %struct.meson_drm, ptr %3, i32 0, i32 2
  %28 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %io_base, align 8
  %add.ptr124 = getelementptr i8, ptr %29, i32 40204
  br i1 %cmp121, label %if.then123, label %if.else

if.then123:                                       ; preds = %do.end115
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr124, i32 167772160) #6, !srcloc !68
  br label %do.body128

if.else:                                          ; preds = %do.end115
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr124, i32 0) #6, !srcloc !68
  br label %do.body128

do.body128:                                       ; preds = %if.else, %if.then123
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @meson_encoder_hdmi_atomic_enable.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@meson_encoder_hdmi_atomic_enable, %if.then140)) #6
          to label %do.end146 [label %if.then140], !srcloc !65

if.then140:                                       ; preds = %do.body128
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %3, align 8
  %hdmi_use_enci = getelementptr inbounds %struct.meson_drm, ptr %3, i32 0, i32 16, i32 3
  %32 = ptrtoint ptr %hdmi_use_enci to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %hdmi_use_enci, align 2, !range !66
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool142.not = icmp eq i8 %33, 0
  %cond = select i1 %tobool142.not, ptr @.str.26, ptr @.str.25
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @meson_encoder_hdmi_atomic_enable.__UNIQUE_ID_ddebug315, ptr noundef %31, ptr noundef nonnull @.str.24, ptr noundef nonnull %cond) #6
  br label %do.end146

do.end146:                                        ; preds = %if.then140, %do.body128
  %hdmi_use_enci148 = getelementptr inbounds %struct.meson_drm, ptr %3, i32 0, i32 16, i32 3
  %34 = ptrtoint ptr %hdmi_use_enci148 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %hdmi_use_enci148, align 2, !range !66
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool149.not = icmp eq i8 %35, 0
  %io_base154 = getelementptr inbounds %struct.meson_drm, ptr %3, i32 0, i32 2
  %36 = ptrtoint ptr %io_base154 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %io_base154, align 8
  br i1 %tobool149.not, label %if.else153, label %if.then150

if.then150:                                       ; preds = %do.end146
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr152 = getelementptr i8, ptr %37, i32 27996
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr152, i32 16777216) #6, !srcloc !68
  br label %cleanup

if.else153:                                       ; preds = %do.end146
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr155 = getelementptr i8, ptr %37, i32 28160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr155, i32 16777216) #6, !srcloc !68
  br label %cleanup

cleanup:                                          ; preds = %if.else153, %if.then150, %do.end84, %do.end47, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @meson_encoder_hdmi_atomic_disable(ptr nocapture noundef readonly %bridge, ptr nocapture noundef readnone %bridge_state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr i8, ptr %bridge, i32 288
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %io_base = getelementptr inbounds %struct.meson_drm, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io_base, align 8
  %add.ptr2 = getelementptr i8, ptr %3, i32 40044
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #6, !srcloc !69
  %5 = and i32 %4, -50331649
  %6 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io_base, align 8
  %add.ptr5 = getelementptr i8, ptr %7, i32 40044
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %5) #6, !srcloc !68
  %8 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io_base, align 8
  %add.ptr7 = getelementptr i8, ptr %9, i32 27996
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 0) #6, !srcloc !68
  %10 = ptrtoint ptr %io_base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %io_base, align 8
  %add.ptr9 = getelementptr i8, ptr %11, i32 28160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 0) #6, !srcloc !68
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_bridge_duplicate_state(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_bridge_destroy_state(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @meson_encoder_hdmi_get_inp_bus_fmts(ptr nocapture noundef readnone %bridge, ptr nocapture noundef readnone %bridge_state, ptr nocapture noundef readnone %crtc_state, ptr nocapture noundef readnone %conn_state, i32 noundef %output_fmt, ptr nocapture noundef writeonly %num_input_fmts) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %num_input_fmts to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %num_input_fmts, align 4
  %output_fmt.off = add i32 %output_fmt, -8229
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %output_fmt.off)
  %switch = icmp ult i32 %output_fmt.off, 2
  br i1 %switch, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %entry
  %1 = ptrtoint ptr %num_input_fmts to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %num_input_fmts, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 4) #10
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %output_fmt, ptr %call7.i.i.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then.cleanup_crit_edge ], [ %call7.i.i.i, %if.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_encoder_hdmi_atomic_check(ptr nocapture noundef %bridge, ptr nocapture noundef readonly %bridge_state, ptr nocapture noundef %crtc_state, ptr noundef %conn_state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.drm_connector_state, ptr %conn_state, i32 0, i32 4
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %2 = ptrtoint ptr %conn_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %conn_state, align 4
  %index.i.i = getelementptr inbounds %struct.drm_connector, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index.i.i, align 4
  %num_connector.i = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %num_connector.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_connector.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not.i = icmp slt i32 %5, %7
  br i1 %cmp.not.i, label %if.end.i, label %entry.drm_atomic_get_old_connector_state.exit_crit_edge

entry.drm_atomic_get_old_connector_state.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %drm_atomic_get_old_connector_state.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %connectors.i = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %connectors.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %connectors.i, align 4
  %old_state.i = getelementptr %struct.__drm_connnectors_state, ptr %9, i32 %5, i32 2
  %10 = ptrtoint ptr %old_state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %old_state.i, align 4
  br label %drm_atomic_get_old_connector_state.exit

drm_atomic_get_old_connector_state.exit:          ; preds = %if.end.i, %entry.drm_atomic_get_old_connector_state.exit_crit_edge
  %retval.0.i14 = phi ptr [ %11, %if.end.i ], [ null, %entry.drm_atomic_get_old_connector_state.exit_crit_edge ]
  %priv1 = getelementptr i8, ptr %bridge, i32 288
  %12 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv1, align 4
  %output_bus_cfg = getelementptr inbounds %struct.drm_bridge_state, ptr %bridge_state, i32 0, i32 3
  %14 = ptrtoint ptr %output_bus_cfg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %output_bus_cfg, align 4
  %output_bus_fmt = getelementptr i8, ptr %bridge, i32 292
  %16 = ptrtoint ptr %output_bus_fmt to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %output_bus_fmt, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @meson_encoder_hdmi_atomic_check.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@meson_encoder_hdmi_atomic_check, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !65

if.then:                                          ; preds = %drm_atomic_get_old_connector_state.exit
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %13, align 8
  %19 = ptrtoint ptr %output_bus_fmt to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %output_bus_fmt, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @meson_encoder_hdmi_atomic_check.__UNIQUE_ID_ddebug316, ptr noundef %18, ptr noundef nonnull @.str.30, i32 noundef %20) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %drm_atomic_get_old_connector_state.exit
  %call7 = tail call zeroext i1 @drm_connector_atomic_hdr_metadata_equal(ptr noundef %retval.0.i14, ptr noundef %conn_state) #6
  br i1 %call7, label %do.end.if.end9_crit_edge, label %if.then8

do.end.if.end9_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then8:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %mode_changed = getelementptr inbounds %struct.drm_crtc_state, ptr %crtc_state, i32 0, i32 3
  %21 = ptrtoint ptr %mode_changed to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load = load i8, ptr %mode_changed, align 2
  %bf.set = or i8 %bf.load, 64
  store i8 %bf.set, ptr %mode_changed, align 2
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %do.end.if.end9_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_bridge_reset(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @meson_encoder_hdmi_hpd_notify(ptr nocapture noundef readonly %bridge, i32 noundef %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cec_notifier = getelementptr i8, ptr %bridge, i32 296
  %0 = ptrtoint ptr %cec_notifier to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cec_notifier, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %status)
  %cmp = icmp eq i32 %status, 1
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  %next_bridge = getelementptr i8, ptr %bridge, i32 280
  %2 = ptrtoint ptr %next_bridge to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %next_bridge, align 4
  %connector = getelementptr i8, ptr %bridge, i32 284
  %4 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %connector, align 4
  %call = tail call ptr @drm_bridge_get_edid(ptr noundef %3, ptr noundef %5) #6
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.then1.cleanup_crit_edge, label %if.end4

if.then1.cleanup_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %cec_notifier to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cec_notifier, align 4
  tail call void @cec_notifier_set_phys_addr_from_edid(ptr noundef %7, ptr noundef nonnull %call) #6
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @cec_notifier_set_phys_addr(ptr noundef nonnull %1, i16 noundef zeroext -1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end4, %if.then1.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_notifier_conn_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @drm_match_cea_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_mode_is_420_only(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_mode_is_420_also(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @meson_venc_hdmi_supported_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @meson_vclk_dmt_supported_freq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @meson_venc_hdmi_supported_vic(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @meson_venc_hdmi_venc_repeat(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @meson_vclk_vic_supported_freq(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_new_connector_for_encoder(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @meson_venc_hdmi_mode_set(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @meson_encoder_hdmi_set_vclk(ptr nocapture noundef readonly %encoder_hdmi, ptr noundef %mode) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.meson_encoder_hdmi, ptr %encoder_hdmi, i32 0, i32 4
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %call = tail call zeroext i8 @drm_match_cea_mode(ptr noundef %mode) #6
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  %output_bus_fmt = getelementptr inbounds %struct.meson_encoder_hdmi, ptr %encoder_hdmi, i32 0, i32 5
  %4 = ptrtoint ptr %output_bus_fmt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %output_bus_fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8230, i32 %5)
  %cmp = icmp eq i32 %5, 8230
  %div72 = zext i1 %cmp to i32
  %spec.select = lshr i32 %3, %div72
  %mul = mul i32 %spec.select, 10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call)
  %tobool.not = icmp eq i8 %call, 0
  br i1 %tobool.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @meson_vclk_setup(ptr noundef %1, i32 noundef 2, i32 noundef %mul, i32 noundef %spec.select, i32 noundef %spec.select, i32 noundef %spec.select, i1 noundef zeroext false) #6
  br label %cleanup

if.end4:                                          ; preds = %entry
  %conv = zext i8 %call to i32
  %flags = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 11
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and = lshr i32 %7, 12
  %and.lobit = and i32 %and, 1
  %spec.select73 = shl i32 %spec.select, %and.lobit
  %call9 = tail call zeroext i1 @meson_venc_hdmi_venc_repeat(i32 noundef %conv) #6
  br i1 %call9, label %if.end4.if.then14_crit_edge, label %lor.lhs.false

if.end4.if.then14_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then14

lor.lhs.false:                                    ; preds = %if.end4
  %8 = ptrtoint ptr %output_bus_fmt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %output_bus_fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8230, i32 %9)
  %cmp12 = icmp eq i32 %9, 8230
  br i1 %cmp12, label %lor.lhs.false.if.then14_crit_edge, label %lor.lhs.false.if.end16_crit_edge

lor.lhs.false.if.end16_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

lor.lhs.false.if.then14_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then14

if.then14:                                        ; preds = %lor.lhs.false.if.then14_crit_edge, %if.end4.if.then14_crit_edge
  %mul15 = shl i32 %spec.select73, 1
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %lor.lhs.false.if.end16_crit_edge
  %venc_freq.0 = phi i32 [ %mul15, %if.then14 ], [ %spec.select73, %lor.lhs.false.if.end16_crit_edge ]
  %10 = tail call i32 @llvm.umax.i32(i32 %venc_freq.0, i32 %spec.select73)
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 4
  %and20 = lshr i32 %12, 12
  %and20.lobit = and i32 %and20, 1
  %venc_freq.1 = lshr i32 %venc_freq.0, %and20.lobit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @meson_encoder_hdmi_set_vclk.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@meson_encoder_hdmi_set_vclk, %if.then30)) #6
          to label %do.end [label %if.then30], !srcloc !65

if.then30:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 8
  %hdmi_use_enci = getelementptr inbounds %struct.meson_drm, ptr %1, i32 0, i32 16, i32 3
  %15 = ptrtoint ptr %hdmi_use_enci to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %hdmi_use_enci, align 2, !range !66
  %17 = zext i8 %16 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @meson_encoder_hdmi_set_vclk.__UNIQUE_ID_ddebug309, ptr noundef %14, ptr noundef nonnull @.str.28, i32 noundef %mul, i32 noundef %10, i32 noundef %venc_freq.1, i32 noundef %spec.select73, i32 noundef %17) #6
  br label %do.end

do.end:                                           ; preds = %if.then30, %if.end16
  %hdmi_use_enci35 = getelementptr inbounds %struct.meson_drm, ptr %1, i32 0, i32 16, i32 3
  %18 = ptrtoint ptr %hdmi_use_enci35 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %hdmi_use_enci35, align 2, !range !66
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool36 = icmp ne i8 %19, 0
  tail call void @meson_vclk_setup(ptr noundef %1, i32 noundef 1, i32 noundef %mul, i32 noundef %10, i32 noundef %venc_freq.1, i32 noundef %spec.select73, i1 noundef zeroext %tobool36) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @meson_vclk_setup(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_connector_atomic_hdr_metadata_equal(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_bridge_get_edid(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_notifier_set_phys_addr_from_edid(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cec_notifier_set_phys_addr(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !32, !33, !34, !36, !37, !39, !40, !41, !43, !44, !45, !46, !48, !49, !50, !52, !54, !55}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/meson/meson_encoder_hdmi.c", i32 361, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @meson_encoder_hdmi_init._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @meson_encoder_hdmi_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/meson/meson_encoder_hdmi.c", i32 367, i32 3}
!10 = !{ptr @meson_encoder_hdmi_init._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @meson_encoder_hdmi_init._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/meson/meson_encoder_hdmi.c", i32 385, i32 3}
!14 = !{ptr @meson_encoder_hdmi_init._entry.8, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @meson_encoder_hdmi_init._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/meson/meson_encoder_hdmi.c", i32 395, i32 3}
!18 = !{ptr @meson_encoder_hdmi_init._entry.11, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @meson_encoder_hdmi_init._entry_ptr.13, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.15, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/meson/meson_encoder_hdmi.c", i32 403, i32 3}
!22 = !{ptr @meson_encoder_hdmi_init._entry.14, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @meson_encoder_hdmi_init._entry_ptr.16, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.17, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/meson/meson_encoder_hdmi.c", i32 444, i32 2}
!26 = !{ptr @.str.18, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @meson_encoder_hdmi_init.__UNIQUE_ID_ddebug317, !25, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!28 = !{ptr @meson_encoder_hdmi_bridge_funcs, !29, !"meson_encoder_hdmi_bridge_funcs", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/meson/meson_encoder_hdmi.c", i32 333, i32 38}
!30 = !{ptr @.str.19, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/meson/meson_encoder_hdmi.c", i32 130, i32 2}
!32 = !{ptr @.str.20, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @meson_encoder_hdmi_mode_valid.__UNIQUE_ID_ddebug310, !31, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!34 = !{ptr @.str.21, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/meson/meson_encoder_hdmi.c", i32 180, i32 2}
!36 = !{ptr @meson_encoder_hdmi_mode_valid.__UNIQUE_ID_ddebug313, !35, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!37 = !{ptr @.str.22, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/meson/meson_encoder_hdmi.c", i32 216, i32 2}
!39 = !{ptr @.str.23, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @meson_encoder_hdmi_atomic_enable.__UNIQUE_ID_ddebug314, !38, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!41 = !{ptr @.str.24, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/meson/meson_encoder_hdmi.c", i32 237, i32 2}
!43 = !{ptr @meson_encoder_hdmi_atomic_enable.__UNIQUE_ID_ddebug315, !42, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!44 = !{ptr @.str.25, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.26, !42, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.27, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/meson/meson_encoder_hdmi.c", i32 108, i32 2}
!48 = !{ptr @.str.28, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @meson_encoder_hdmi_set_vclk.__UNIQUE_ID_ddebug309, !47, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!50 = distinct !{null, !51, !"meson_encoder_hdmi_out_bus_fmts", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/meson/meson_encoder_hdmi.c", i32 258, i32 18}
!52 = !{ptr @.str.29, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/meson/meson_encoder_hdmi.c", i32 306, i32 2}
!54 = !{ptr @.str.30, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @meson_encoder_hdmi_atomic_check.__UNIQUE_ID_ddebug316, !53, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{i64 2148733473, i64 2148733478, i64 2148733491, i64 2148733535, i64 2148733569, i64 2148733590}
!66 = !{i8 0, i8 2}
!67 = !{!"branch_weights", i32 1, i32 2000}
!68 = !{i64 5997476}
!69 = !{i64 5997894}
