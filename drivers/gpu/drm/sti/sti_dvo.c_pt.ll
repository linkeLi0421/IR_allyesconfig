; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/sti/sti_dvo.c_pt.bc'
source_filename = "../drivers/gpu/drm/sti/sti_dvo.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.component_ops = type { ptr, ptr }
%struct.drm_bridge_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvo_config = type { i32, i32, i32, i32, ptr }
%struct.drm_info_list = type { ptr, ptr, i32, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.sti_dvo = type { %struct.device, ptr, %struct.drm_display_mode, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.84, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.87, ptr, i32, ptr, i8, i32 }
%struct.anon.84 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.87 = type { i32, ptr }
%struct.sti_dvo_connector = type { %struct.drm_connector, ptr, ptr }
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
%struct.drm_bridge = type { %struct.drm_private_obj, ptr, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.awg_code_generation_params = type { ptr, i8 }
%struct.awg_timing = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.drm_info_node = type { ptr, ptr, %struct.list_head, ptr }

@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sti-dvo\00", [24 x i8] zeroinitializer }, align 32
@dvo_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stih407-dvo\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@sti_dvo_driver = dso_local global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sti_dvo_probe, ptr @sti_dvo_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dvo_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_author307 = internal constant [60 x i8] c"sti_drm.author=Benjamin Gaignard <benjamin.gaignard@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description308 = internal constant [54 x i8] c"sti_drm.description=STMicroelectronics SoC DRM driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file309 = internal constant [41 x i8] c"sti_drm.file=drivers/gpu/drm/sti/sti-drm\00", section ".modinfo", align 1
@__UNIQUE_ID_license310 = internal constant [20 x i8] c"sti_drm.license=GPL\00", section ".modinfo", align 1
@sti_dvo_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 515, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\016[drm] %s\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sti_dvo_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/gpu/drm/sti/sti_dvo.c\00", [34 x i8] zeroinitializer }, align 32
@sti_dvo_probe._entry_ptr = internal global ptr @sti_dvo_probe._entry, section ".printk_index", align 4
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to allocate memory for DVO\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dvo-reg\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Invalid dvo resource\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dvo_pix\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Cannot get dvo_pix clock\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dvo\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Cannot get dvo clock\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"main_parent\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Cannot get main_parent clock\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"aux_parent\00", [21 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Cannot get aux_parent clock\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sti,panel\00", [22 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"No panel associated to the dvo output\0A\00", [57 x i8] zeroinitializer }, align 32
@sti_dvo_ops = internal constant { %struct.component_ops, [24 x i8] } { %struct.component_ops { ptr @sti_dvo_bind, ptr @sti_dvo_unbind }, [24 x i8] zeroinitializer }, align 32
@sti_dvo_bridge_funcs = internal constant { %struct.drm_bridge_funcs, [60 x i8] } { %struct.drm_bridge_funcs { ptr null, ptr null, ptr null, ptr null, ptr @sti_dvo_disable, ptr @sti_dvo_bridge_nope, ptr @sti_dvo_set_mode, ptr @sti_dvo_pre_enable, ptr @sti_dvo_bridge_nope, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@sti_dvo_connector_funcs = internal constant { %struct.drm_connector_funcs, [36 x i8] } { %struct.drm_connector_funcs { ptr null, ptr @drm_atomic_helper_connector_reset, ptr @sti_dvo_connector_detect, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr @sti_dvo_late_register, ptr null, ptr @drm_connector_cleanup, ptr @drm_atomic_helper_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@sti_dvo_connector_helper_funcs = internal constant { %struct.drm_connector_helper_funcs, [56 x i8] } { %struct.drm_connector_helper_funcs { ptr @sti_dvo_connector_get_modes, ptr null, ptr @sti_dvo_connector_mode_valid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Failed to attach a connector to a encoder\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Cannot set rate (%dHz) for dvo_pix clk\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Cannot set rate (%dHz) for dvo clk\0A\00", [60 x i8] zeroinitializer }, align 32
@rgb_24bit_de_cfg = internal global { %struct.dvo_config, [44 x i8] } { %struct.dvo_config { i32 0, i32 5, i32 1, i32 3, ptr @sti_awg_generate_code_data_enable_mode }, [44 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to prepare/enable dvo_pix clk\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to prepare/enable dvo clk\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"AWG firmware not properly generated\0A\00", [59 x i8] zeroinitializer }, align 32
@dvo_debugfs_files = internal global { [1 x %struct.drm_info_list], [16 x i8] } { [1 x %struct.drm_info_list] [%struct.drm_info_list { ptr @.str.9, ptr @dvo_dbg_show, i32 0, ptr null }], [16 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DVO: (vaddr = 0x%p)\00", [44 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\0A  %-25s 0x%08X\00", [16 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DVO_AWG_DIGSYNC_CTRL\00", [43 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DVO_DOF_CFG\00", [20 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DVO_LUT_PROG_LOW\00", [47 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DVO_LUT_PROG_MID\00", [47 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DVO_LUT_PROG_HIGH\00", [46 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\0A\0A\00", [29 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"  DVO AWG microcode:\00", [43 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\0A  %04X:\00", [23 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" %04X\00", [26 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"target rate = %d => available rate = %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"dvo pixclk=%d not supported\0A\00", [35 x i8] zeroinitializer }, align 32
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 583, i32 11 }
@___asan_gen_.40 = private unnamed_addr constant [13 x i8] c"dvo_of_match\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 575, i32 34 }
@___asan_gen_.43 = private unnamed_addr constant [15 x i8] c"sti_dvo_driver\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 581, i32 24 }
@___asan_gen_.46 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 515, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 519, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 525, i32 59 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 527, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 535, i32 35 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 537, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 541, i32 31 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 543, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 547, i32 43 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 549, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 553, i32 42 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 555, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 559, i32 41 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 561, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant [12 x i8] c"sti_dvo_ops\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 503, i32 35 }
@___asan_gen_.100 = private unnamed_addr constant [21 x i8] c"sti_dvo_bridge_funcs\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 327, i32 38 }
@___asan_gen_.103 = private unnamed_addr constant [24 x i8] c"sti_dvo_connector_funcs\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 411, i32 41 }
@___asan_gen_.106 = private unnamed_addr constant [31 x i8] c"sti_dvo_connector_helper_funcs\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 374, i32 35 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 484, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 218, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 308, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 314, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant [17 x i8] c"rgb_24bit_de_cfg\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 61, i32 26 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 261, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 263, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 133, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant [18 x i8] c"dvo_debugfs_files\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 195, i32 29 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 184, i32 16 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 185, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 186, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 187, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 188, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 189, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 170, i32 14 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 171, i32 14 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 174, i32 18 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 175, i32 17 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 362, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.173 = private constant [33 x i8] c"../drivers/gpu/drm/sti/sti_dvo.c\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 366, i32 3 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @__UNIQUE_ID_author307, ptr @__UNIQUE_ID_description308, ptr @__UNIQUE_ID_file309, ptr @__UNIQUE_ID_license310, ptr @sti_dvo_probe._entry, ptr @sti_dvo_probe._entry_ptr, ptr @.str, ptr @dvo_of_match, ptr @sti_dvo_driver, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @sti_dvo_ops, ptr @sti_dvo_bridge_funcs, ptr @sti_dvo_connector_funcs, ptr @sti_dvo_connector_helper_funcs, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @rgb_24bit_de_cfg, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @dvo_debugfs_files, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36], section "llvm.metadata"
@0 = internal global [46 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvo_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_dvo_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_dvo_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_dvo_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_dvo_bridge_funcs to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_dvo_connector_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sti_dvo_connector_helper_funcs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rgb_24bit_de_cfg to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvo_debugfs_files to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sti_dvo_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #9
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 1088, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = call ptr @memcpy(ptr %call.i, ptr %dev1, i32 928)
  %call5 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.5) #6
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.6) #6
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %3 = ptrtoint ptr %call5 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %call5, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call5, i32 0, i32 1
  %5 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %4
  %add.i = add i32 %sub.i, %6
  %call10 = tail call ptr @devm_ioremap(ptr noundef %dev1, i32 noundef %4, i32 noundef %add.i) #6
  %regs = getelementptr inbounds %struct.sti_dvo, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call10, ptr %regs, align 4
  %tobool12.not = icmp eq ptr %call10, null
  br i1 %tobool12.not, label %if.end8.cleanup_crit_edge, label %if.end14

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %if.end8
  %call15 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.7) #6
  %clk_pix = getelementptr inbounds %struct.sti_dvo, ptr %call.i, i32 0, i32 4
  %8 = ptrtoint ptr %clk_pix to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call15, ptr %clk_pix, align 8
  %cmp.i = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then18, label %if.end21

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #6
  %9 = ptrtoint ptr %clk_pix to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk_pix, align 8
  %11 = ptrtoint ptr %10 to i32
  br label %cleanup

if.end21:                                         ; preds = %if.end14
  %call22 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.9) #6
  %clk = getelementptr inbounds %struct.sti_dvo, ptr %call.i, i32 0, i32 5
  %12 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call22, ptr %clk, align 4
  %cmp.i83 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i83, label %if.then25, label %if.end28

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.10) #6
  %13 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clk, align 4
  %15 = ptrtoint ptr %14 to i32
  br label %cleanup

if.end28:                                         ; preds = %if.end21
  %call29 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.11) #6
  %clk_main_parent = getelementptr inbounds %struct.sti_dvo, ptr %call.i, i32 0, i32 6
  %16 = ptrtoint ptr %clk_main_parent to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call29, ptr %clk_main_parent, align 8
  %cmp.i84 = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i84, label %if.then32, label %if.end28.if.end34_crit_edge

if.end28.if.end34_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.12) #6
  %17 = ptrtoint ptr %clk_main_parent to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %clk_main_parent, align 8
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.end28.if.end34_crit_edge
  %call35 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.13) #6
  %clk_aux_parent = getelementptr inbounds %struct.sti_dvo, ptr %call.i, i32 0, i32 7
  %18 = ptrtoint ptr %clk_aux_parent to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call35, ptr %clk_aux_parent, align 4
  %cmp.i85 = icmp ugt ptr %call35, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i85, label %if.then38, label %if.end34.if.end40_crit_edge

if.end34.if.end40_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

if.then38:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.14) #6
  %19 = ptrtoint ptr %clk_aux_parent to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %clk_aux_parent, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.end34.if.end40_crit_edge
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #6
  %20 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i86 = call i32 @__of_parse_phandle_with_args(ptr noundef %1, ptr noundef nonnull @.str.15, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i86)
  %tobool.not.i = icmp eq i32 %call.i86, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #6
  %panel_node88 = getelementptr inbounds %struct.sti_dvo, ptr %call.i, i32 0, i32 8
  %21 = ptrtoint ptr %panel_node88 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %panel_node88, align 8
  br label %if.then44

of_parse_phandle.exit:                            ; preds = %if.end40
  %22 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #6
  %panel_node = getelementptr inbounds %struct.sti_dvo, ptr %call.i, i32 0, i32 8
  %24 = ptrtoint ptr %panel_node to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %panel_node, align 8
  %tobool43.not = icmp eq ptr %23, null
  br i1 %tobool43.not, label %of_parse_phandle.exit.if.then44_crit_edge, label %of_parse_phandle.exit.if.end45_crit_edge

of_parse_phandle.exit.if.end45_crit_edge:         ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

of_parse_phandle.exit.if.then44_crit_edge:        ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then44

if.then44:                                        ; preds = %of_parse_phandle.exit.if.then44_crit_edge, %of_parse_phandle.exit.thread
  %panel_node91 = phi ptr [ %panel_node88, %of_parse_phandle.exit.thread ], [ %panel_node, %of_parse_phandle.exit.if.then44_crit_edge ]
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.16) #6
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %of_parse_phandle.exit.if.end45_crit_edge
  %panel_node90 = phi ptr [ %panel_node91, %if.then44 ], [ %panel_node, %of_parse_phandle.exit.if.end45_crit_edge ]
  %25 = ptrtoint ptr %panel_node90 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %panel_node90, align 8
  call void @of_node_put(ptr noundef %26) #6
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %27 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call48 = call i32 @component_add(ptr noundef %dev1, ptr noundef nonnull @sti_dvo_ops) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %if.then25, %if.then18, %if.end8.cleanup_crit_edge, %if.then7, %if.then
  %retval.0 = phi i32 [ %11, %if.then18 ], [ %15, %if.then25 ], [ %call48, %if.end45 ], [ -12, %if.then7 ], [ -12, %if.then ], [ -12, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sti_dvo_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @component_del(ptr noundef %dev, ptr noundef nonnull @sti_dvo_ops) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sti_dvo_bind(ptr noundef %dev, ptr nocapture noundef readnone %master, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %drm_dev1 = getelementptr inbounds %struct.sti_dvo, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %drm_dev1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %data, ptr %drm_dev1, align 8
  %encoder_list.i = getelementptr inbounds %struct.drm_device, ptr %data, i32 0, i32 30, i32 16
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ %encoder_list.i, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %3 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %encoder_list.i
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %encoder_type.i = getelementptr i8, ptr %.pn.i, i32 32
  %4 = ptrtoint ptr %encoder_type.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %encoder_type.i, align 4
  %cmp3.i = icmp eq i32 %5, 3
  br i1 %cmp3.i, label %sti_dvo_find_encoder.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

sti_dvo_find_encoder.exit:                        ; preds = %for.body.i
  %encoder.0.le.i = getelementptr i8, ptr %.pn.i, i32 -4
  %tobool.not = icmp eq ptr %encoder.0.le.i, null
  br i1 %tobool.not, label %sti_dvo_find_encoder.exit.cleanup_crit_edge, label %if.end

sti_dvo_find_encoder.exit.cleanup_crit_edge:      ; preds = %sti_dvo_find_encoder.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %sti_dvo_find_encoder.exit
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1048, i32 noundef 3520) #6
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %dvo7 = getelementptr inbounds %struct.sti_dvo_connector, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %dvo7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %1, ptr %dvo7, align 4
  %call.i60 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 280, i32 noundef 3520) #6
  %tobool9.not = icmp eq ptr %call.i60, null
  br i1 %tobool9.not, label %if.end6.cleanup_crit_edge, label %if.end11

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %driver_private = getelementptr inbounds %struct.drm_bridge, ptr %call.i60, i32 0, i32 8
  %7 = ptrtoint ptr %driver_private to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %1, ptr %driver_private, align 4
  %funcs = getelementptr inbounds %struct.drm_bridge, ptr %call.i60, i32 0, i32 7
  %8 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @sti_dvo_bridge_funcs, ptr %funcs, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %9 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node, align 8
  %of_node13 = getelementptr inbounds %struct.drm_bridge, ptr %call.i60, i32 0, i32 4
  %11 = ptrtoint ptr %of_node13 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %of_node13, align 4
  tail call void @drm_bridge_add(ptr noundef nonnull %call.i60) #6
  %call14 = tail call i32 @drm_bridge_attach(ptr noundef nonnull %encoder.0.le.i, ptr noundef nonnull %call.i60, ptr noundef null, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17:                                         ; preds = %if.end11
  %bridge18 = getelementptr inbounds %struct.sti_dvo, ptr %1, i32 0, i32 13
  %12 = ptrtoint ptr %bridge18 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i60, ptr %bridge18, align 4
  %encoder19 = getelementptr inbounds %struct.sti_dvo_connector, ptr %call.i, i32 0, i32 1
  %13 = ptrtoint ptr %encoder19 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %encoder.0.le.i, ptr %encoder19, align 8
  %encoder20 = getelementptr inbounds %struct.sti_dvo, ptr %1, i32 0, i32 12
  %14 = ptrtoint ptr %encoder20 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %encoder.0.le.i, ptr %encoder20, align 8
  %polled = getelementptr inbounds %struct.drm_connector, ptr %call.i, i32 0, i32 33
  %15 = ptrtoint ptr %polled to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %polled, align 4
  %call21 = tail call i32 @drm_connector_init(ptr noundef %data, ptr noundef nonnull %call.i, ptr noundef nonnull @sti_dvo_connector_funcs, i32 noundef 7) #6
  %helper_private.i = getelementptr inbounds %struct.drm_connector, ptr %call.i, i32 0, i32 35
  %16 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @sti_dvo_connector_helper_funcs, ptr %helper_private.i, align 4
  %call22 = tail call i32 @drm_connector_attach_encoder(ptr noundef nonnull %call.i, ptr noundef nonnull %encoder.0.le.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end17.cleanup_crit_edge, label %if.then24

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then24:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17) #6
  tail call void @drm_bridge_remove(ptr noundef nonnull %call.i60) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %if.end17.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %sti_dvo_find_encoder.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then24 ], [ -12, %sti_dvo_find_encoder.exit.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end6.cleanup_crit_edge ], [ %call14, %if.end11.cleanup_crit_edge ], [ 0, %if.end17.cleanup_crit_edge ], [ -12, %for.cond.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sti_dvo_unbind(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %master, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %bridge = getelementptr inbounds %struct.sti_dvo, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %bridge to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bridge, align 4
  tail call void @drm_bridge_remove(ptr noundef %3) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_add(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sti_dvo_disable(ptr nocapture noundef readonly %bridge) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_private = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 8
  %0 = ptrtoint ptr %driver_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_private, align 4
  %enabled = getelementptr inbounds %struct.sti_dvo, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %enabled, align 4, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.18) #6
  %config = getelementptr inbounds %struct.sti_dvo, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %config, align 8
  %awg_fwgen_fct = getelementptr inbounds %struct.dvo_config, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %awg_fwgen_fct to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %awg_fwgen_fct, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %if.end.do.body4_crit_edge, label %do.body

if.end.do.body4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body4

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  tail call void @arm_heavy_mb() #6
  %regs = getelementptr inbounds %struct.sti_dvo, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 0) #6, !srcloc !107
  br label %do.body4

do.body4:                                         ; preds = %do.body, %if.end.do.body4_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !108
  tail call void @arm_heavy_mb() #6
  %regs7 = getelementptr inbounds %struct.sti_dvo, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %regs7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs7, align 4
  %add.ptr8 = getelementptr i8, ptr %11, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 0) #6, !srcloc !107
  %panel = getelementptr inbounds %struct.sti_dvo, ptr %1, i32 0, i32 9
  %12 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %panel, align 4
  %call = tail call i32 @drm_panel_disable(ptr noundef %13) #6
  %clk_pix = getelementptr inbounds %struct.sti_dvo, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %clk_pix to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk_pix, align 8
  tail call void @clk_disable(ptr noundef %15) #6
  tail call void @clk_unprepare(ptr noundef %15) #6
  %clk = getelementptr inbounds %struct.sti_dvo, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %17) #6
  tail call void @clk_unprepare(ptr noundef %17) #6
  %18 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %enabled, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body4, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sti_dvo_bridge_nope(ptr nocapture noundef %bridge) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sti_dvo_set_mode(ptr nocapture noundef readonly %bridge, ptr nocapture noundef readonly %mode, ptr nocapture noundef readnone %adjusted_mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_private = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 8
  %0 = ptrtoint ptr %driver_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_private, align 4
  %encoder = getelementptr inbounds %struct.sti_dvo, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %encoder, align 8
  %crtc = getelementptr inbounds %struct.drm_encoder, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %crtc, align 4
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode, align 4
  %mul = mul i32 %7, 1000
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.18) #6
  %mode1 = getelementptr inbounds %struct.sti_dvo, ptr %1, i32 0, i32 2
  %8 = call ptr @memcpy(ptr %mode1, ptr %mode, i32 112)
  %id = getelementptr i8, ptr %5, i32 -8
  %9 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp = icmp eq i32 %10, 0
  %clk_main_parent = getelementptr inbounds %struct.sti_dvo, ptr %1, i32 0, i32 6
  %clk_aux_parent = getelementptr inbounds %struct.sti_dvo, ptr %1, i32 0, i32 7
  %clkp.0.in = select i1 %cmp, ptr %clk_main_parent, ptr %clk_aux_parent
  %11 = ptrtoint ptr %clkp.0.in to i32
  call void @__asan_load4_noabort(i32 %11)
  %clkp.0 = load ptr, ptr %clkp.0.in, align 4
  %tobool.not = icmp eq ptr %clkp.0, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then2

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %clk_pix = getelementptr inbounds %struct.sti_dvo, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %clk_pix to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk_pix, align 8
  %call = tail call i32 @clk_set_parent(ptr noundef %13, ptr noundef nonnull %clkp.0) #6
  %clk = getelementptr inbounds %struct.sti_dvo, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk, align 4
  %call3 = tail call i32 @clk_set_parent(ptr noundef %15, ptr noundef nonnull %clkp.0) #6
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %entry.if.end4_crit_edge
  %clk_pix5 = getelementptr inbounds %struct.sti_dvo, ptr %1, i32 0, i32 4
  %16 = ptrtoint ptr %clk_pix5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clk_pix5, align 8
  %call6 = tail call i32 @clk_set_rate(ptr noundef %17, i32 noundef %mul) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.19, i32 noundef %mul) #6
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %clk10 = getelementptr inbounds %struct.sti_dvo, ptr %1, i32 0, i32 5
  %18 = ptrtoint ptr %clk10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %clk10, align 4
  %call11 = tail call i32 @clk_set_rate(ptr noundef %19, i32 noundef %mul) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.20, i32 noundef %mul) #6
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %config = getelementptr inbounds %struct.sti_dvo, ptr %1, i32 0, i32 10
  %20 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @rgb_24bit_de_cfg, ptr %config, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then13, %if.then8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sti_dvo_pre_enable(ptr nocapture noundef readonly %bridge) #0 align 64 {
entry:
  %fw_gen_params.i = alloca %struct.awg_code_generation_params, align 8
  %timing.i = alloca %struct.awg_timing, align 4
  %awg_ram_code = alloca [64 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_private = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 8
  %0 = ptrtoint ptr %driver_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_private, align 4
  %config1 = getelementptr inbounds %struct.sti_dvo, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config1, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.18) #6
  %enabled = getelementptr inbounds %struct.sti_dvo, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %enabled, align 4, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup45_crit_edge

entry.cleanup45_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup45

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !109
  tail call void @arm_heavy_mb() #6
  %regs = getelementptr inbounds %struct.sti_dvo, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #6, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !110
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 0) #6, !srcloc !107
  %awg_fwgen_fct = getelementptr inbounds %struct.dvo_config, ptr %3, i32 0, i32 4
  %10 = ptrtoint ptr %awg_fwgen_fct to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %awg_fwgen_fct, align 4
  %tobool7.not = icmp eq ptr %11, null
  br i1 %tobool7.not, label %do.body.if.end14_crit_edge, label %if.then8

do.body.if.end14_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then8:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %awg_ram_code) #6
  %12 = call ptr @memset(ptr %awg_ram_code, i32 255, i32 256)
  %13 = ptrtoint ptr %config1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %config1, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %fw_gen_params.i) #6
  %15 = ptrtoint ptr %fw_gen_params.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 -4278190081, ptr %fw_gen_params.i, align 8, !annotation !111
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %timing.i) #6
  %16 = ptrtoint ptr %fw_gen_params.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %awg_ram_code, ptr %fw_gen_params.i, align 8
  %vtotal.i = getelementptr inbounds %struct.sti_dvo, ptr %1, i32 0, i32 2, i32 9
  %17 = ptrtoint ptr %vtotal.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %vtotal.i, align 4
  %conv.i = zext i16 %18 to i32
  %19 = ptrtoint ptr %timing.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv.i, ptr %timing.i, align 4
  %vdisplay.i = getelementptr inbounds %struct.sti_dvo, ptr %1, i32 0, i32 2, i32 6
  %20 = ptrtoint ptr %vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %vdisplay.i, align 2
  %conv4.i = zext i16 %21 to i32
  %active_lines.i = getelementptr inbounds %struct.awg_timing, ptr %timing.i, i32 0, i32 1
  %22 = ptrtoint ptr %active_lines.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv4.i, ptr %active_lines.i, align 4
  %vsync_start.i = getelementptr inbounds %struct.sti_dvo, ptr %1, i32 0, i32 2, i32 7
  %23 = ptrtoint ptr %vsync_start.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %vsync_start.i, align 4
  %conv5.i = zext i16 %24 to i32
  %sub.i = sub nsw i32 %conv5.i, %conv4.i
  %blanking_lines.i = getelementptr inbounds %struct.awg_timing, ptr %timing.i, i32 0, i32 2
  %25 = ptrtoint ptr %blanking_lines.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %sub.i, ptr %blanking_lines.i, align 4
  %sub12.i = sub nsw i32 %conv.i, %conv5.i
  %trailing_lines.i = getelementptr inbounds %struct.awg_timing, ptr %timing.i, i32 0, i32 3
  %26 = ptrtoint ptr %trailing_lines.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %sub12.i, ptr %trailing_lines.i, align 4
  %htotal.i = getelementptr inbounds %struct.sti_dvo, ptr %1, i32 0, i32 2, i32 4
  %27 = ptrtoint ptr %htotal.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %htotal.i, align 2
  %conv13.i = zext i16 %28 to i32
  %total_pixels.i = getelementptr inbounds %struct.awg_timing, ptr %timing.i, i32 0, i32 4
  %29 = ptrtoint ptr %total_pixels.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv13.i, ptr %total_pixels.i, align 4
  %hdisplay.i = getelementptr inbounds %struct.sti_dvo, ptr %1, i32 0, i32 2, i32 1
  %30 = ptrtoint ptr %hdisplay.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %hdisplay.i, align 4
  %conv14.i = zext i16 %31 to i32
  %active_pixels.i = getelementptr inbounds %struct.awg_timing, ptr %timing.i, i32 0, i32 5
  %32 = ptrtoint ptr %active_pixels.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv14.i, ptr %active_pixels.i, align 4
  %hsync_start.i = getelementptr inbounds %struct.sti_dvo, ptr %1, i32 0, i32 2, i32 2
  %33 = ptrtoint ptr %hsync_start.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %hsync_start.i, align 2
  %conv15.i = zext i16 %34 to i32
  %sub18.i = sub nsw i32 %conv15.i, %conv14.i
  %blanking_pixels.i = getelementptr inbounds %struct.awg_timing, ptr %timing.i, i32 0, i32 6
  %35 = ptrtoint ptr %blanking_pixels.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %sub18.i, ptr %blanking_pixels.i, align 4
  %sub23.i = sub nsw i32 %conv13.i, %conv15.i
  %trailing_pixels.i = getelementptr inbounds %struct.awg_timing, ptr %timing.i, i32 0, i32 7
  %36 = ptrtoint ptr %trailing_pixels.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %sub23.i, ptr %trailing_pixels.i, align 4
  %blanking_level.i = getelementptr inbounds %struct.awg_timing, ptr %timing.i, i32 0, i32 8
  %37 = ptrtoint ptr %blanking_level.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 16, ptr %blanking_level.i, align 4
  %awg_fwgen_fct.i = getelementptr inbounds %struct.dvo_config, ptr %14, i32 0, i32 4
  %38 = ptrtoint ptr %awg_fwgen_fct.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %awg_fwgen_fct.i, align 4
  %call.i = call i32 %39(ptr noundef nonnull %fw_gen_params.i, ptr noundef nonnull %timing.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then10, label %cleanup45.critedge

if.then10:                                        ; preds = %if.then8
  %instruction_offset.i = getelementptr inbounds %struct.awg_code_generation_params, ptr %fw_gen_params.i, i32 0, i32 1
  %40 = ptrtoint ptr %instruction_offset.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %instruction_offset.i, align 4
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %timing.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %fw_gen_params.i) #6
  %conv = zext i8 %41 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.18) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %cmp29.i.not = icmp eq i8 %41, 0
  br i1 %cmp29.i.not, label %if.then10.do.body5.i.preheader_crit_edge, label %if.then10.do.body.i_crit_edge

if.then10.do.body.i_crit_edge:                    ; preds = %if.then10
  br label %do.body.i

if.then10.do.body5.i.preheader_crit_edge:         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body5.i.preheader

do.body5.i.preheader:                             ; preds = %for.cond2.preheader.i.do.body5.i.preheader_crit_edge, %if.then10.do.body5.i.preheader_crit_edge
  br label %do.body5.i

for.cond2.preheader.i:                            ; preds = %do.body.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %41)
  %cmp331.i = icmp ult i8 %41, 64
  br i1 %cmp331.i, label %for.cond2.preheader.i.do.body5.i.preheader_crit_edge, label %for.cond2.preheader.i.dvo_awg_configure.exit_crit_edge

for.cond2.preheader.i.dvo_awg_configure.exit_crit_edge: ; preds = %for.cond2.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dvo_awg_configure.exit

for.cond2.preheader.i.do.body5.i.preheader_crit_edge: ; preds = %for.cond2.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body5.i.preheader

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.then10.do.body.i_crit_edge
  %i.030.i = phi i32 [ %inc.i, %do.body.i.do.body.i_crit_edge ], [ 0, %if.then10.do.body.i_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !112
  call void @arm_heavy_mb() #6
  %arrayidx.i = getelementptr i32, ptr %awg_ram_code, i32 %i.030.i
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.i, align 4
  %44 = call i32 @llvm.bswap.i32(i32 %43) #6
  %45 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %46, i32 256
  %mul.i = shl i32 %i.030.i, 2
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 %44) #6, !srcloc !107
  %inc.i = add nuw nsw i32 %i.030.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv
  br i1 %exitcond.not.i, label %for.cond2.preheader.i, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

do.body5.i:                                       ; preds = %do.body5.i.do.body5.i_crit_edge, %do.body5.i.preheader
  %i.132.i = phi i32 [ %inc13.i, %do.body5.i.do.body5.i_crit_edge ], [ %conv, %do.body5.i.preheader ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  call void @arm_heavy_mb() #6
  %47 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs, align 4
  %add.ptr9.i = getelementptr i8, ptr %48, i32 256
  %mul10.i = shl i32 %i.132.i, 2
  %add.ptr11.i = getelementptr i8, ptr %add.ptr9.i, i32 %mul10.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 0) #6, !srcloc !107
  %inc13.i = add i32 %i.132.i, 1
  %exitcond33.not.i = icmp eq i32 %inc13.i, 64
  br i1 %exitcond33.not.i, label %do.body5.i.dvo_awg_configure.exit_crit_edge, label %do.body5.i.do.body5.i_crit_edge

do.body5.i.do.body5.i_crit_edge:                  ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body5.i

do.body5.i.dvo_awg_configure.exit_crit_edge:      ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dvo_awg_configure.exit

dvo_awg_configure.exit:                           ; preds = %do.body5.i.dvo_awg_configure.exit_crit_edge, %for.cond2.preheader.i.dvo_awg_configure.exit_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !114
  call void @arm_heavy_mb() #6
  %49 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regs, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 16777216) #6, !srcloc !107
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %awg_ram_code) #6
  br label %if.end14

if.end14:                                         ; preds = %dvo_awg_configure.exit, %do.body.if.end14_crit_edge
  %clk_pix = getelementptr inbounds %struct.sti_dvo, ptr %1, i32 0, i32 4
  %51 = ptrtoint ptr %clk_pix to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %clk_pix, align 8
  %call.i67 = call i32 @clk_prepare(ptr noundef %52) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67)
  %tobool.not.i68 = icmp eq i32 %call.i67, 0
  br i1 %tobool.not.i68, label %if.end.i69, label %if.end14.if.then17_crit_edge

if.end14.if.then17_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then17

if.end.i69:                                       ; preds = %if.end14
  %call1.i = call i32 @clk_enable(ptr noundef %52) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i69.if.end18_crit_edge, label %if.then3.i

if.end.i69.if.end18_crit_edge:                    ; preds = %if.end.i69
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then3.i:                                       ; preds = %if.end.i69
  call void @__sanitizer_cov_trace_pc() #8
  call void @clk_unprepare(ptr noundef %52) #6
  br label %if.then17

if.then17:                                        ; preds = %if.then3.i, %if.end14.if.then17_crit_edge
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.21) #6
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end.i69.if.end18_crit_edge
  %clk = getelementptr inbounds %struct.sti_dvo, ptr %1, i32 0, i32 5
  %53 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %clk, align 4
  %call.i71 = call i32 @clk_prepare(ptr noundef %54) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i71)
  %tobool.not.i72 = icmp eq i32 %call.i71, 0
  br i1 %tobool.not.i72, label %if.end.i75, label %if.end18.if.then21_crit_edge

if.end18.if.then21_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then21

if.end.i75:                                       ; preds = %if.end18
  %call1.i73 = call i32 @clk_enable(ptr noundef %54) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i73)
  %tobool2.not.i74 = icmp eq i32 %call1.i73, 0
  br i1 %tobool2.not.i74, label %if.end.i75.if.end22_crit_edge, label %if.then3.i76

if.end.i75.if.end22_crit_edge:                    ; preds = %if.end.i75
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then3.i76:                                     ; preds = %if.end.i75
  call void @__sanitizer_cov_trace_pc() #8
  call void @clk_unprepare(ptr noundef %54) #6
  br label %if.then21

if.then21:                                        ; preds = %if.then3.i76, %if.end18.if.then21_crit_edge
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.22) #6
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end.i75.if.end22_crit_edge
  %panel = getelementptr inbounds %struct.sti_dvo, ptr %1, i32 0, i32 9
  %55 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %panel, align 4
  %call23 = call i32 @drm_panel_enable(ptr noundef %56) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !115
  call void @arm_heavy_mb() #6
  %lowbyte = getelementptr inbounds %struct.dvo_config, ptr %3, i32 0, i32 1
  %57 = ptrtoint ptr %lowbyte to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %lowbyte, align 4
  %59 = call i32 @llvm.bswap.i32(i32 %58)
  %60 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regs, align 4
  %add.ptr28 = getelementptr i8, ptr %61, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 %59) #6, !srcloc !107
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !116
  call void @arm_heavy_mb() #6
  %midbyte = getelementptr inbounds %struct.dvo_config, ptr %3, i32 0, i32 2
  %62 = ptrtoint ptr %midbyte to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %midbyte, align 4
  %64 = call i32 @llvm.bswap.i32(i32 %63)
  %65 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regs, align 4
  %add.ptr33 = getelementptr i8, ptr %66, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 %64) #6, !srcloc !107
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !117
  call void @arm_heavy_mb() #6
  %highbyte = getelementptr inbounds %struct.dvo_config, ptr %3, i32 0, i32 3
  %67 = ptrtoint ptr %highbyte to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %highbyte, align 4
  %69 = call i32 @llvm.bswap.i32(i32 %68)
  %70 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regs, align 4
  %add.ptr38 = getelementptr i8, ptr %71, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 %69) #6, !srcloc !107
  %72 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %3, align 4
  %or = or i32 %73, 64
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  call void @arm_heavy_mb() #6
  %74 = call i32 @llvm.bswap.i32(i32 %or)
  %75 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %regs, align 4
  %add.ptr43 = getelementptr i8, ptr %76, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43, i32 %74) #6, !srcloc !107
  %77 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 1, ptr %enabled, align 4
  br label %cleanup45

cleanup45.critedge:                               ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.23) #6
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %timing.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %fw_gen_params.i) #6
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %awg_ram_code) #6
  br label %cleanup45

cleanup45:                                        ; preds = %cleanup45.critedge, %if.end22, %entry.cleanup45_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sti_awg_generate_code_data_enable_mode(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_reset(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sti_dvo_connector_detect(ptr nocapture noundef readonly %connector, i1 noundef zeroext %force) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dvo1 = getelementptr inbounds %struct.sti_dvo_connector, ptr %connector, i32 0, i32 2
  %0 = ptrtoint ptr %dvo1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvo1, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.18) #6
  %panel = getelementptr inbounds %struct.sti_dvo, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %panel, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %panel_node = getelementptr inbounds %struct.sti_dvo, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %panel_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %panel_node, align 8
  %call = tail call ptr @of_drm_find_panel(ptr noundef %5) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %spec.store.select = select i1 %cmp.i, ptr null, ptr %call
  %6 = ptrtoint ptr %panel to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %spec.store.select, ptr %panel, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then, %entry.if.end7_crit_edge
  %7 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %panel, align 4
  %tobool9.not = icmp eq ptr %8, null
  %. = select i1 %tobool9.not, i32 2, i32 1
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sti_dvo_late_register(ptr nocapture noundef readonly %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dvo1 = getelementptr inbounds %struct.sti_dvo_connector, ptr %connector, i32 0, i32 2
  %0 = ptrtoint ptr %dvo1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvo1, align 4
  %drm_dev = getelementptr inbounds %struct.sti_dvo, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %drm_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drm_dev, align 8
  %primary = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %primary, align 4
  store ptr %1, ptr getelementptr inbounds ([1 x %struct.drm_info_list], ptr @dvo_debugfs_files, i32 0, i32 0, i32 3), align 4
  %debugfs_root.i = getelementptr inbounds %struct.drm_minor, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %debugfs_root.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %debugfs_root.i, align 4
  tail call void @drm_debugfs_create_files(ptr noundef nonnull @dvo_debugfs_files, i32 noundef 1, ptr noundef %7, ptr noundef %5) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_cleanup(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_connector_duplicate_state(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_destroy_state(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_drm_find_panel(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_debugfs_create_files(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dvo_dbg_show(ptr noundef %s, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %regs = getelementptr inbounds %struct.sti_dvo, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.24, ptr noundef %7) #6
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #6, !srcloc !119
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !120
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, i32 noundef %11) #6
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  %add.ptr7 = getelementptr i8, ptr %13, i32 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #6, !srcloc !119
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !121
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.27, i32 noundef %15) #6
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 4
  %add.ptr14 = getelementptr i8, ptr %17, i32 8
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #6, !srcloc !119
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !122
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.28, i32 noundef %19) #6
  %20 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regs, align 4
  %add.ptr21 = getelementptr i8, ptr %21, i32 12
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #6, !srcloc !119
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.29, i32 noundef %23) #6
  %24 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs, align 4
  %add.ptr28 = getelementptr i8, ptr %25, i32 16
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28) #6, !srcloc !119
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !124
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.30, i32 noundef %27) #6
  %28 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs, align 4
  %add.ptr33 = getelementptr i8, ptr %29, i32 256
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.31) #6
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.32) #6
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry
  %i.010.i = phi i32 [ 0, %entry ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %rem.i = and i32 %i.010.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp1.i = icmp eq i32 %rem.i, 0
  br i1 %cmp1.i, label %if.then.i, label %for.body.i.if.end.i_crit_edge

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.33, i32 noundef %i.010.i) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %mul.i = shl nuw nsw i32 %i.010.i, 2
  %add.ptr.i = getelementptr i8, ptr %add.ptr33, i32 %mul.i
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !119
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !125
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.34, i32 noundef %31) #6
  %inc.i = add nuw nsw i32 %i.010.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %dvo_dbg_awg_microcode.exit, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

dvo_dbg_awg_microcode.exit:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @seq_putc(ptr noundef %s, i8 noundef zeroext 10) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sti_dvo_connector_get_modes(ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dvo1 = getelementptr inbounds %struct.sti_dvo_connector, ptr %connector, i32 0, i32 2
  %0 = ptrtoint ptr %dvo1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dvo1, align 4
  %panel = getelementptr inbounds %struct.sti_dvo, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %panel, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @drm_panel_get_modes(ptr noundef nonnull %3, ptr noundef %connector) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sti_dvo_connector_mode_valid(ptr nocapture noundef readonly %connector, ptr nocapture noundef readonly %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  %mul = mul i32 %1, 1000
  %sub = add i32 %mul, -50
  %dvo1 = getelementptr inbounds %struct.sti_dvo_connector, ptr %connector, i32 0, i32 2
  %2 = ptrtoint ptr %dvo1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dvo1, align 4
  %clk_pix = getelementptr inbounds %struct.sti_dvo, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %clk_pix to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk_pix, align 8
  %call = tail call i32 @clk_round_rate(ptr noundef %5, i32 noundef %mul) #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.35, i32 noundef %mul, i32 noundef %call) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %sub)
  %cmp = icmp slt i32 %call, %sub
  %add = add i32 %mul, 50
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %add)
  %cmp2 = icmp sgt i32 %call, %add
  %or.cond = or i1 %cmp, %cmp2
  br i1 %or.cond, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.36, i32 noundef %mul) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_get_modes(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #3

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !14, !15, !16, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94}
!llvm.module.flags = !{!96, !97, !98, !99, !100, !101, !102, !103}
!llvm.ident = !{!104}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/sti/sti_dvo.c", i32 583, i32 11}
!2 = !{ptr @sti_dvo_driver, !3, !"sti_dvo_driver", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/sti/sti_dvo.c", i32 581, i32 24}
!4 = !{ptr @__UNIQUE_ID_author307, !5, !"__UNIQUE_ID_author307", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/sti/sti_dvo.c", i32 591, i32 1}
!6 = !{ptr @__UNIQUE_ID_description308, !7, !"__UNIQUE_ID_description308", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/sti/sti_dvo.c", i32 592, i32 1}
!8 = !{ptr @__UNIQUE_ID_file309, !9, !"__UNIQUE_ID_file309", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/sti/sti_dvo.c", i32 593, i32 1}
!10 = !{ptr @__UNIQUE_ID_license310, !9, !"__UNIQUE_ID_license310", i1 false, i1 false}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/sti/sti_dvo.c", i32 515, i32 2}
!13 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @sti_dvo_probe._entry, !12, !"_entry", i1 false, i1 false}
!16 = !{ptr @sti_dvo_probe._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/sti/sti_dvo.c", i32 519, i32 3}
!19 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/sti/sti_dvo.c", i32 525, i32 59}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/sti/sti_dvo.c", i32 527, i32 3}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/sti/sti_dvo.c", i32 535, i32 35}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/sti/sti_dvo.c", i32 537, i32 3}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/sti/sti_dvo.c", i32 541, i32 31}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/sti/sti_dvo.c", i32 543, i32 3}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/sti/sti_dvo.c", i32 547, i32 43}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/sti/sti_dvo.c", i32 549, i32 3}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/sti/sti_dvo.c", i32 553, i32 42}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/sti/sti_dvo.c", i32 555, i32 3}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/sti/sti_dvo.c", i32 559, i32 41}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/sti/sti_dvo.c", i32 561, i32 3}
!43 = !{ptr @sti_dvo_ops, !44, !"sti_dvo_ops", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/sti/sti_dvo.c", i32 503, i32 35}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/sti/sti_dvo.c", i32 484, i32 3}
!47 = !{ptr @sti_dvo_bridge_funcs, !48, !"sti_dvo_bridge_funcs", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/sti/sti_dvo.c", i32 327, i32 38}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/sti/sti_dvo.c", i32 218, i32 2}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/sti/sti_dvo.c", i32 308, i32 3}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/sti/sti_dvo.c", i32 314, i32 3}
!55 = !{ptr @rgb_24bit_de_cfg, !56, !"rgb_24bit_de_cfg", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/sti/sti_dvo.c", i32 61, i32 26}
!57 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/sti/sti_dvo.c", i32 261, i32 3}
!59 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/sti/sti_dvo.c", i32 263, i32 3}
!61 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/sti/sti_dvo.c", i32 133, i32 3}
!63 = !{ptr @sti_dvo_connector_funcs, !64, !"sti_dvo_connector_funcs", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/sti/sti_dvo.c", i32 411, i32 41}
!65 = !{ptr @dvo_debugfs_files, !66, !"dvo_debugfs_files", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/sti/sti_dvo.c", i32 195, i32 29}
!67 = !{ptr @.str.24, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/sti/sti_dvo.c", i32 184, i32 16}
!69 = !{ptr @.str.25, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/sti/sti_dvo.c", i32 185, i32 2}
!71 = !{ptr @.str.26, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.27, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/sti/sti_dvo.c", i32 186, i32 2}
!74 = !{ptr @.str.28, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/sti/sti_dvo.c", i32 187, i32 2}
!76 = !{ptr @.str.29, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/sti/sti_dvo.c", i32 188, i32 2}
!78 = !{ptr @.str.30, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/sti/sti_dvo.c", i32 189, i32 2}
!80 = !{ptr @.str.31, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/sti/sti_dvo.c", i32 170, i32 14}
!82 = !{ptr @.str.32, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/sti/sti_dvo.c", i32 171, i32 14}
!84 = !{ptr @.str.33, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/sti/sti_dvo.c", i32 174, i32 18}
!86 = !{ptr @.str.34, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/sti/sti_dvo.c", i32 175, i32 17}
!88 = !{ptr @sti_dvo_connector_helper_funcs, !89, !"sti_dvo_connector_helper_funcs", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/sti/sti_dvo.c", i32 374, i32 35}
!90 = !{ptr @.str.35, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/sti/sti_dvo.c", i32 362, i32 2}
!92 = !{ptr @.str.36, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/sti/sti_dvo.c", i32 366, i32 3}
!94 = !{ptr @dvo_of_match, !95, !"dvo_of_match", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/sti/sti_dvo.c", i32 575, i32 34}
!96 = !{i32 1, !"wchar_size", i32 2}
!97 = !{i32 1, !"min_enum_size", i32 4}
!98 = !{i32 8, !"branch-target-enforcement", i32 0}
!99 = !{i32 8, !"sign-return-address", i32 0}
!100 = !{i32 8, !"sign-return-address-all", i32 0}
!101 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!102 = !{i32 7, !"uwtable", i32 1}
!103 = !{i32 7, !"frame-pointer", i32 2}
!104 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!105 = !{i8 0, i8 2}
!106 = !{i64 2156801281}
!107 = !{i64 5661622}
!108 = !{i64 2156801707}
!109 = !{i64 2156802183}
!110 = !{i64 2156802609}
!111 = !{!"auto-init"}
!112 = !{i64 2156795471}
!113 = !{i64 2156795922}
!114 = !{i64 2156796428}
!115 = !{i64 2156803181}
!116 = !{i64 2156803627}
!117 = !{i64 2156804074}
!118 = !{i64 2156804593}
!119 = !{i64 5662040}
!120 = !{i64 2156797741}
!121 = !{i64 2156798332}
!122 = !{i64 2156798928}
!123 = !{i64 2156799524}
!124 = !{i64 2156800121}
!125 = !{i64 2156797141}
