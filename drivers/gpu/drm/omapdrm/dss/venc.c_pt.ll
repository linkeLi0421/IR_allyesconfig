; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/omapdrm/dss/venc.c_pt.bc'
source_filename = "../drivers/gpu/drm/omapdrm/dss/venc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.soc_device_attribute = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.venc_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.component_ops = type { ptr, ptr }
%struct.drm_bridge_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.venc_device = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, %struct.omap_dss_device, %struct.drm_bridge }
%struct.omap_dss_device = type { ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, ptr, ptr, i32, i32, i32, i32 }
%struct.drm_bridge = type { %struct.drm_private_obj, ptr, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.dss_device = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, i32, i32, i32, %struct.dispc_clock_info, [2 x i32], i32, [3 x i32], i8, [128 x i32], ptr, %struct.anon.84, [4 x ptr], ptr, ptr, ptr, ptr }
%struct.dispc_clock_info = type { i32, i32, i16, i16 }
%struct.anon.84 = type { ptr, ptr, ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"omapdss_venc\00", [19 x i8] zeroinitializer }, align 32
@venc_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap2-venc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap3-venc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap4-venc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@venc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @venc_runtime_suspend, ptr @venc_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@omap_venchw_driver = dso_local global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @venc_probe, ptr @venc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @venc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @venc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@venc_soc_devices = internal constant { [3 x %struct.soc_device_attribute], [44 x i8] } { [3 x %struct.soc_device_attribute] [%struct.soc_device_attribute { ptr @.str.5, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.soc_device_attribute { ptr @.str.6, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.soc_device_attribute zeroinitializer], [44 x i8] zeroinitializer }, align 32
@venc_config_pal_trm = internal constant { %struct.venc_config, [36 x i8] } { %struct.venc_config { i32 0, i32 1, i32 64, i32 863, i32 624, i32 0, i32 796009965, i32 0, i32 273, i32 385, i32 320, i32 59, i32 59, i32 7, i32 2, i32 63, i32 705268427, i32 0, i32 19464213, i32 62979, i32 0, i32 111608072, i32 1573488, i32 262453, i32 8913752, i32 983903, i32 27721728, i32 423, i32 28246016, i32 65967, i32 37, i32 55771267, i32 40632366, i32 65674, i32 3014968, i32 20447233, i32 1310721, i32 65537, i32 16711680 }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vdda\00", [27 x i8] zeroinitializer }, align 32
@venc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 835, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013VENC: omapdss VENC error: can't get VDDA_DAC regulator\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"venc_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/gpu/drm/omapdrm/dss/venc.c\00", [61 x i8] zeroinitializer }, align 32
@venc_probe._entry_ptr = internal global ptr @venc_probe._entry, section ".printk_index", align 4
@venc_component_ops = internal constant { %struct.component_ops, [24 x i8] } { %struct.component_ops { ptr @venc_bind, ptr @venc_unbind }, [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"OMAP3[45]*\00", [21 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AM35*\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tv_dac_clk\00", [21 x i8] zeroinitializer }, align 32
@venc_get_clocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.4, i32 524, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013VENC: omapdss VENC error: can't get tv_dac_clk\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"venc_get_clocks\00", [16 x i8] zeroinitializer }, align 32
@venc_get_clocks._entry_ptr = internal global ptr @venc_get_clocks._entry, section ".printk_index", align 4
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ti,invert-polarity\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ti,channels\00", [20 x i8] zeroinitializer }, align 32
@venc_probe_of._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.4, i32 773, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to read property 'ti,channels': %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"venc_probe_of\00", [18 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@venc_probe_of._entry_ptr = internal global ptr @venc_probe_of._entry, section ".printk_index", align 4
@venc_probe_of._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.13, ptr @.str.4, i32 786, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bad channel property '%d'\0A\00", [37 x i8] zeroinitializer }, align 32
@venc_probe_of._entry_ptr.18 = internal global ptr @venc_probe_of._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"venc.0\00", [25 x i8] zeroinitializer }, align 32
@venc_bridge_funcs = internal constant { %struct.drm_bridge_funcs, [60 x i8] } { %struct.drm_bridge_funcs { ptr @venc_bridge_attach, ptr null, ptr @venc_bridge_mode_valid, ptr @venc_bridge_mode_fixup, ptr @venc_bridge_disable, ptr null, ptr @venc_bridge_mode_set, ptr null, ptr @venc_bridge_enable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @venc_bridge_get_modes, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@omap_dss_pal_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 13500, i16 720, i16 732, i16 796, i16 864, i16 0, i16 574, i16 579, i16 584, i16 625, i16 0, i32 26, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@omap_dss_ntsc_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 13500, i16 720, i16 736, i16 800, i16 858, i16 0, i16 482, i16 488, i16 494, i16 525, i16 0, i32 26, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@venc_runtime_put.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.21, ptr @.str.4, ptr @.str.22, i8 0, i8 93, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"omapdrm\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"venc_runtime_put\00", [47 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"venc_runtime_put\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"VENC: venc_runtime_put\0A\00", [40 x i8] zeroinitializer }, align 32
@venc_bridge_mode_set.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@venc_config_ntsc_trm = internal constant { %struct.venc_config, [36 x i8] } { %struct.venc_config { i32 0, i32 1, i32 32832, i32 857, i32 524, i32 0, i32 71247409, i32 0, i32 258, i32 364, i32 303, i32 67, i32 56, i32 7, i32 1, i32 56, i32 569408543, i32 0, i32 19988497, i32 61443, i32 0, i32 110297332, i32 1442316, i32 393479, i32 9306960, i32 983897, i32 27262976, i32 34013600, i32 28049444, i32 34406828, i32 6, i32 55050360, i32 33947684, i32 65674, i32 28049670, i32 17170438, i32 1310721, i32 65537, i32 16318464 }, [36 x i8] zeroinitializer }, align 32
@venc_runtime_get.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.24, ptr @.str.4, ptr @.str.25, i8 0, i8 90, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"venc_runtime_get\00", [47 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"venc_runtime_get\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"VENC: venc_runtime_get\0A\00", [40 x i8] zeroinitializer }, align 32
@venc_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.4, i32 345, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013VENC: omapdss VENC error: Failed to reset venc\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"venc_reset\00", [21 x i8] zeroinitializer }, align 32
@venc_reset._entry_ptr = internal global ptr @venc_reset._entry, section ".printk_index", align 4
@venc_write_config.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.29, ptr @.str.4, ptr @.str.30, i8 0, i8 70, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"venc_write_config\00", [46 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"write venc conf\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"VENC: write venc conf\0A\00", [41 x i8] zeroinitializer }, align 32
@venc_bind.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.32, ptr @.str.4, ptr @.str.33, i8 0, i8 -82, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"venc_bind\00", [22 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"OMAP VENC rev %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"venc\00", [27 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%-35s %08x\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"VENC_F_CONTROL\00", [17 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"VENC_VIDOUT_CTRL\00", [47 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"VENC_SYNC_CTRL\00", [17 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"VENC_LLEN\00", [22 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"VENC_FLENS\00", [21 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"VENC_HFLTR_CTRL\00", [16 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"VENC_CC_CARR_WSS_CARR\00", [42 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"VENC_C_PHASE\00", [19 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"VENC_GAIN_U\00", [20 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"VENC_GAIN_V\00", [20 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"VENC_GAIN_Y\00", [20 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"VENC_BLACK_LEVEL\00", [47 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"VENC_BLANK_LEVEL\00", [47 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"VENC_X_COLOR\00", [19 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"VENC_M_CONTROL\00", [17 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"VENC_BSTAMP_WSS_DATA\00", [43 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"VENC_S_CARR\00", [20 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"VENC_LINE21\00", [20 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"VENC_LN_SEL\00", [20 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"VENC_L21__WC_CTL\00", [47 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"VENC_HTRIGGER_VTRIGGER\00", [41 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"VENC_SAVID__EAVID\00", [46 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"VENC_FLEN__FAL\00", [17 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"VENC_LAL__PHASE_RESET\00", [42 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"VENC_HS_INT_START_STOP_X\00", [39 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"VENC_HS_EXT_START_STOP_X\00", [39 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"VENC_VS_INT_START_X\00", [44 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VENC_VS_INT_STOP_X__VS_INT_START_Y\00", [61 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VENC_VS_INT_STOP_Y__VS_EXT_START_X\00", [61 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VENC_VS_EXT_STOP_X__VS_EXT_START_Y\00", [61 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"VENC_VS_EXT_STOP_Y\00", [45 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"VENC_AVID_START_STOP_X\00", [41 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"VENC_AVID_START_STOP_Y\00", [41 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"VENC_FID_INT_START_X__FID_INT_START_Y\00", [58 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"VENC_FID_INT_OFFSET_Y__FID_EXT_START_X\00", [57 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"VENC_FID_EXT_START_Y__FID_EXT_OFFSET_Y\00", [57 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"VENC_TVDETGP_INT_START_STOP_X\00", [34 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"VENC_TVDETGP_INT_START_STOP_Y\00", [34 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"VENC_GEN_CTRL\00", [18 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"VENC_OUTPUT_CONTROL\00", [44 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"VENC_OUTPUT_TEST\00", [47 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.77 = internal global [4 x i64] [i64 2, i64 16, i64 482, i64 574]
@__sancov_gen_cov_switch_values.78 = internal global [4 x i64] [i64 2, i64 16, i64 482, i64 574]
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 918, i32 13 }
@___asan_gen_.82 = private unnamed_addr constant [14 x i8] c"venc_of_match\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 907, i32 34 }
@___asan_gen_.85 = private unnamed_addr constant [12 x i8] c"venc_pm_ops\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 902, i32 32 }
@___asan_gen_.88 = private unnamed_addr constant [19 x i8] c"omap_venchw_driver\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 914, i32 24 }
@___asan_gen_.91 = private unnamed_addr constant [17 x i8] c"venc_soc_devices\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 800, i32 42 }
@___asan_gen_.94 = private unnamed_addr constant [20 x i8] c"venc_config_pal_trm\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 122, i32 33 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 831, i32 54 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 835, i32 4 }
@___asan_gen_.112 = private unnamed_addr constant [19 x i8] c"venc_component_ops\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 715, i32 35 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 801, i32 15 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 802, i32 15 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 522, i32 40 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 524, i32 4 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 768, i32 52 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 770, i32 31 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 772, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 785, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 734, i32 14 }
@___asan_gen_.163 = private unnamed_addr constant [18 x i8] c"venc_bridge_funcs\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 654, i32 38 }
@___asan_gen_.166 = private unnamed_addr constant [18 x i8] c"omap_dss_pal_mode\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 217, i32 38 }
@___asan_gen_.169 = private unnamed_addr constant [19 x i8] c"omap_dss_ntsc_mode\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 232, i32 38 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 375, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant [21 x i8] c"venc_config_ntsc_trm\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 167, i32 33 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 361, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 345, i32 4 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 282, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 698, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 702, i32 47 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 469, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 470, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 471, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 472, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 473, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 474, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 475, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 476, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 477, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 478, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 479, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 480, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 481, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 482, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 483, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 484, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 485, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 486, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 487, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 488, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 489, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 490, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 491, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 492, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 493, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 494, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 495, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 496, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 497, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 498, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 499, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 500, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 501, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 502, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 503, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 504, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 505, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 506, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 507, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 508, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.347 = private constant [38 x i8] c"../drivers/gpu/drm/omapdrm/dss/venc.c\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 509, i32 2 }
@llvm.compiler.used = appending global [95 x ptr] [ptr @venc_get_clocks._entry, ptr @venc_get_clocks._entry_ptr, ptr @venc_probe._entry, ptr @venc_probe._entry_ptr, ptr @venc_probe_of._entry, ptr @venc_probe_of._entry.16, ptr @venc_probe_of._entry_ptr, ptr @venc_probe_of._entry_ptr.18, ptr @venc_reset._entry, ptr @venc_reset._entry_ptr, ptr @.str, ptr @venc_of_match, ptr @venc_pm_ops, ptr @omap_venchw_driver, ptr @venc_soc_devices, ptr @venc_config_pal_trm, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @venc_component_ops, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @venc_bridge_funcs, ptr @omap_dss_pal_mode, ptr @omap_dss_ntsc_mode, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @venc_config_ntsc_trm, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76], section "llvm.metadata"
@0 = internal global [90 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venc_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_venchw_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venc_soc_devices to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venc_config_pal_trm to i32), i32 156, i32 192, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venc_component_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venc_get_clocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venc_probe_of._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venc_probe_of._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venc_bridge_funcs to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_dss_pal_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_dss_ntsc_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venc_config_ntsc_trm to i32), i32 156, i32 192, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venc_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @venc_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %channels.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 372) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %pdev, ptr %call7.i.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %call2 = tail call ptr @soc_device_match(ptr noundef nonnull @venc_soc_devices) #8
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %requires_tv_dac_clk = getelementptr inbounds %struct.venc_device, ptr %call7.i.i, i32 0, i32 9
  %3 = ptrtoint ptr %requires_tv_dac_clk to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %requires_tv_dac_clk, align 1
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %config = getelementptr inbounds %struct.venc_device, ptr %call7.i.i, i32 0, i32 6
  %4 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @venc_config_pal_trm, ptr %config, align 8
  %call6 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #8
  %base = getelementptr inbounds %struct.venc_device, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call6, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %call6 to i32
  br label %err_free

if.end12:                                         ; preds = %if.end5
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call13 = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  %vdda_dac_reg = getelementptr inbounds %struct.venc_device, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %vdda_dac_reg to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call13, ptr %vdda_dac_reg, align 8
  %cmp.i69 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i69, label %if.then16, label %if.end22

if.then16:                                        ; preds = %if.end12
  %cmp.not = icmp eq ptr %call13, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not, label %if.then16.err_free_crit_edge, label %do.end

if.then16.err_free_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free

do.end:                                           ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %call13 to i32
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #12
  br label %err_free

if.end22:                                         ; preds = %if.end12
  %requires_tv_dac_clk.i = getelementptr inbounds %struct.venc_device, ptr %call7.i.i, i32 0, i32 9
  %9 = ptrtoint ptr %requires_tv_dac_clk.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %requires_tv_dac_clk.i, align 1, !range !181
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %if.end22.venc_get_clocks.exit.thread_crit_edge, label %if.then.i

if.end22.venc_get_clocks.exit.thread_crit_edge:   ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %venc_get_clocks.exit.thread

if.then.i:                                        ; preds = %if.end22
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call7.i.i, align 8
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %12, i32 0, i32 3
  %call.i = tail call ptr @devm_clk_get(ptr noundef %dev.i, ptr noundef nonnull @.str.7) #8
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %venc_get_clocks.exit, label %if.then.i.venc_get_clocks.exit.thread_crit_edge

if.then.i.venc_get_clocks.exit.thread_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %venc_get_clocks.exit.thread

venc_get_clocks.exit.thread:                      ; preds = %if.then.i.venc_get_clocks.exit.thread_crit_edge, %if.end22.venc_get_clocks.exit.thread_crit_edge
  %clk.0.i = phi ptr [ %call.i, %if.then.i.venc_get_clocks.exit.thread_crit_edge ], [ null, %if.end22.venc_get_clocks.exit.thread_crit_edge ]
  %tv_dac_clk.i = getelementptr inbounds %struct.venc_device, ptr %call7.i.i, i32 0, i32 5
  %13 = ptrtoint ptr %tv_dac_clk.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %clk.0.i, ptr %tv_dac_clk.i, align 4
  %14 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call7.i.i, align 8
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %15, i32 0, i32 3, i32 27
  %16 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %channels.i) #8
  %18 = ptrtoint ptr %channels.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %channels.i, align 4, !annotation !182
  %call.i70 = tail call ptr @of_graph_get_endpoint_by_regs(ptr noundef %17, i32 noundef 0, i32 noundef 0) #8
  %tobool.not.i71 = icmp eq ptr %call.i70, null
  br i1 %tobool.not.i71, label %venc_probe_of.exit.thread, label %if.end.i

venc_get_clocks.exit:                             ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #12
  %19 = ptrtoint ptr %call.i to i32
  br label %err_free

venc_probe_of.exit.thread:                        ; preds = %venc_get_clocks.exit.thread
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %channels.i) #8
  br label %if.end30

if.end.i:                                         ; preds = %venc_get_clocks.exit.thread
  %call.i.i = tail call ptr @of_find_property(ptr noundef nonnull %call.i70, ptr noundef nonnull @.str.10, ptr noundef null) #8
  %tobool.i.i = icmp ne ptr %call.i.i, null
  %invert_polarity.i = getelementptr inbounds %struct.venc_device, ptr %call7.i.i, i32 0, i32 8
  %frombool.i = zext i1 %tobool.i.i to i8
  %20 = ptrtoint ptr %invert_polarity.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %frombool.i, ptr %invert_polarity.i, align 8
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call.i70, ptr noundef nonnull @.str.11, ptr noundef nonnull %channels.i, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool3.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool3.not.i, label %if.end7.i, label %do.end.i72

do.end.i72:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call7.i.i, align 8
  %dev6.i = getelementptr inbounds %struct.platform_device, ptr %22, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev6.i, ptr noundef nonnull @.str.12, i32 noundef %call.i.i.i) #12
  br label %venc_probe_of.exit.thread84

if.end7.i:                                        ; preds = %if.end.i
  %23 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %channels.i, align 4
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values)
  switch i32 %24, label %do.end12.i [
    i32 1, label %if.end7.i.venc_probe_of.exit_crit_edge
    i32 2, label %sw.bb8.i
  ]

if.end7.i.venc_probe_of.exit_crit_edge:           ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %venc_probe_of.exit

sw.bb8.i:                                         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %venc_probe_of.exit

do.end12.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call7.i.i, align 8
  %dev14.i = getelementptr inbounds %struct.platform_device, ptr %27, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev14.i, ptr noundef nonnull @.str.17, i32 noundef %24) #12
  br label %venc_probe_of.exit.thread84

venc_probe_of.exit.thread84:                      ; preds = %do.end12.i, %do.end.i72
  %retval.0.ph.i.ph = phi i32 [ -22, %do.end12.i ], [ %call.i.i.i, %do.end.i72 ]
  call void @of_node_put(ptr noundef nonnull %call.i70) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %channels.i) #8
  br label %err_free

venc_probe_of.exit:                               ; preds = %sw.bb8.i, %if.end7.i.venc_probe_of.exit_crit_edge
  %.sink.i = phi i32 [ 1, %sw.bb8.i ], [ 0, %if.end7.i.venc_probe_of.exit_crit_edge ]
  %type9.i = getelementptr inbounds %struct.venc_device, ptr %call7.i.i, i32 0, i32 7
  %28 = ptrtoint ptr %type9.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %.sink.i, ptr %type9.i, align 4
  call void @of_node_put(ptr noundef nonnull %call.i70) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %channels.i) #8
  br label %if.end30

if.end30:                                         ; preds = %venc_probe_of.exit, %venc_probe_of.exit.thread
  call void @pm_runtime_enable(ptr noundef %dev) #8
  %output.i = getelementptr inbounds %struct.venc_device, ptr %call7.i.i, i32 0, i32 10
  %bridge.i.i = getelementptr inbounds %struct.venc_device, ptr %call7.i.i, i32 0, i32 11
  %funcs.i.i = getelementptr inbounds %struct.venc_device, ptr %call7.i.i, i32 0, i32 11, i32 7
  %29 = ptrtoint ptr %funcs.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @venc_bridge_funcs, ptr %funcs.i.i, align 8
  %30 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call7.i.i, align 8
  %of_node.i.i = getelementptr inbounds %struct.platform_device, ptr %31, i32 0, i32 3, i32 27
  %32 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %of_node.i.i, align 8
  %of_node2.i.i = getelementptr inbounds %struct.venc_device, ptr %call7.i.i, i32 0, i32 11, i32 4
  %34 = ptrtoint ptr %of_node2.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %of_node2.i.i, align 8
  %ops.i.i = getelementptr inbounds %struct.venc_device, ptr %call7.i.i, i32 0, i32 11, i32 9
  %35 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 8, ptr %ops.i.i, align 8
  %type.i.i = getelementptr inbounds %struct.venc_device, ptr %call7.i.i, i32 0, i32 11, i32 10
  %36 = ptrtoint ptr %type.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 6, ptr %type.i.i, align 4
  %interlace_allowed.i.i = getelementptr inbounds %struct.venc_device, ptr %call7.i.i, i32 0, i32 11, i32 11
  %37 = ptrtoint ptr %interlace_allowed.i.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %interlace_allowed.i.i, align 8
  call void @drm_bridge_add(ptr noundef %bridge.i.i) #8
  %38 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %call7.i.i, align 8
  %dev.i74 = getelementptr inbounds %struct.platform_device, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %output.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %dev.i74, ptr %output.i, align 4
  %id.i = getelementptr inbounds %struct.venc_device, ptr %call7.i.i, i32 0, i32 10, i32 11
  %41 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 32, ptr %id.i, align 4
  %type.i = getelementptr inbounds %struct.venc_device, ptr %call7.i.i, i32 0, i32 10, i32 6
  %42 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 16, ptr %type.i, align 8
  %name.i = getelementptr inbounds %struct.venc_device, ptr %call7.i.i, i32 0, i32 10, i32 7
  %43 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @.str.19, ptr %name.i, align 4
  %dispc_channel.i = getelementptr inbounds %struct.venc_device, ptr %call7.i.i, i32 0, i32 10, i32 10
  %44 = ptrtoint ptr %dispc_channel.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %dispc_channel.i, align 8
  %of_port.i = getelementptr inbounds %struct.venc_device, ptr %call7.i.i, i32 0, i32 10, i32 12
  %45 = ptrtoint ptr %of_port.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %of_port.i, align 8
  %call.i75 = call i32 @omapdss_device_init_output(ptr noundef %output.i, ptr noundef %bridge.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75)
  %cmp.i76 = icmp slt i32 %call.i75, 0
  br i1 %cmp.i76, label %venc_init_output.exit, label %if.end35

venc_init_output.exit:                            ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  call void @drm_bridge_remove(ptr noundef %bridge.i.i) #8
  br label %err_pm_disable

if.end35:                                         ; preds = %if.end30
  call void @omapdss_device_register(ptr noundef %output.i) #8
  %call37 = call i32 @component_add(ptr noundef %dev, ptr noundef nonnull @venc_component_ops) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end35.cleanup_crit_edge, label %err_uninit_output

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

err_uninit_output:                                ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @venc_uninit_output(ptr noundef nonnull %call7.i.i)
  br label %err_pm_disable

err_pm_disable:                                   ; preds = %err_uninit_output, %venc_init_output.exit
  %r.0 = phi i32 [ %call.i75, %venc_init_output.exit ], [ %call37, %err_uninit_output ]
  call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #8
  br label %err_free

err_free:                                         ; preds = %err_pm_disable, %venc_probe_of.exit.thread84, %venc_get_clocks.exit, %do.end, %if.then16.err_free_crit_edge, %if.then9
  %r.1 = phi i32 [ %6, %if.then9 ], [ %8, %do.end ], [ -517, %if.then16.err_free_crit_edge ], [ %19, %venc_get_clocks.exit ], [ %r.0, %err_pm_disable ], [ %retval.0.ph.i.ph, %venc_probe_of.exit.thread84 ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %err_free, %if.end35.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %r.1, %err_free ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end35.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @venc_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @component_del(ptr noundef %dev, ptr noundef nonnull @venc_component_ops) #8
  %output.i = getelementptr inbounds %struct.venc_device, ptr %1, i32 0, i32 10
  tail call void @omapdss_device_unregister(ptr noundef %output.i) #8
  tail call void @omapdss_device_cleanup_output(ptr noundef %output.i) #8
  %bridge.i.i = getelementptr inbounds %struct.venc_device, ptr %1, i32 0, i32 11
  tail call void @drm_bridge_remove(ptr noundef %bridge.i.i) #8
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #8
  tail call void @kfree(ptr noundef %1) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @soc_device_match(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @venc_uninit_output(ptr noundef %venc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %output = getelementptr inbounds %struct.venc_device, ptr %venc, i32 0, i32 10
  tail call void @omapdss_device_unregister(ptr noundef %output) #8
  tail call void @omapdss_device_cleanup_output(ptr noundef %output) #8
  %bridge.i = getelementptr inbounds %struct.venc_device, ptr %venc, i32 0, i32 11
  tail call void @drm_bridge_remove(ptr noundef %bridge.i) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_endpoint_by_regs(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omapdss_device_init_output(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omapdss_device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @venc_bridge_attach(ptr noundef %bridge, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %encoder = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 2
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %next_bridge = getelementptr i8, ptr %bridge, i32 -44
  %2 = ptrtoint ptr %next_bridge to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %next_bridge, align 4
  %call = tail call i32 @drm_bridge_attach(ptr noundef %1, ptr noundef %3, ptr noundef %bridge, i32 noundef %flags) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @venc_bridge_mode_valid(ptr nocapture noundef readnone %bridge, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %mode) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 11
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.venc_get_videomode.exit_crit_edge, label %if.end.i

entry.venc_get_videomode.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %venc_get_videomode.exit

if.end.i:                                         ; preds = %entry
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13500, i32 %3)
  %cmp.i = icmp eq i32 %3, 13500
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.i.venc_get_videomode.exit_crit_edge

if.end.i.venc_get_videomode.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %venc_get_videomode.exit

land.lhs.true.i:                                  ; preds = %if.end.i
  %hdisplay.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 1
  %4 = ptrtoint ptr %hdisplay.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %hdisplay.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 720, i16 %5)
  %cmp2.i = icmp eq i16 %5, 720
  br i1 %cmp2.i, label %land.lhs.true4.i, label %land.lhs.true.i.venc_get_videomode.exit_crit_edge

land.lhs.true.i.venc_get_videomode.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %venc_get_videomode.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %vdisplay.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 6
  %6 = ptrtoint ptr %vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vdisplay.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 482, i16 %7)
  %switch.selectcmp = icmp eq i16 %7, 482
  call void @__sanitizer_cov_trace_const_cmp2(i16 574, i16 %7)
  %switch.selectcmp1 = icmp eq i16 %7, 574
  %phi.cmp = or i1 %switch.selectcmp1, %switch.selectcmp
  %phi.sel = select i1 %phi.cmp, i32 0, i32 -2
  br label %venc_get_videomode.exit

venc_get_videomode.exit:                          ; preds = %land.lhs.true4.i, %land.lhs.true.i.venc_get_videomode.exit_crit_edge, %if.end.i.venc_get_videomode.exit_crit_edge, %entry.venc_get_videomode.exit_crit_edge
  %retval.0.i = phi i32 [ -2, %entry.venc_get_videomode.exit_crit_edge ], [ %phi.sel, %land.lhs.true4.i ], [ -2, %land.lhs.true.i.venc_get_videomode.exit_crit_edge ], [ -2, %if.end.i.venc_get_videomode.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @venc_bridge_mode_fixup(ptr nocapture noundef readnone %bridge, ptr nocapture noundef readnone %mode, ptr noundef %adjusted_mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 11
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %2 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %adjusted_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13500, i32 %3)
  %cmp.i = icmp eq i32 %3, 13500
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.end.i
  %hdisplay.i = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 1
  %4 = ptrtoint ptr %hdisplay.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %hdisplay.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 720, i16 %5)
  %cmp2.i = icmp eq i16 %5, 720
  br i1 %cmp2.i, label %land.lhs.true4.i, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %vdisplay.i = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 6
  %6 = ptrtoint ptr %vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vdisplay.i, align 2
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.77)
  switch i16 %7, label %land.lhs.true4.i.cleanup_crit_edge [
    i16 574, label %land.lhs.true4.i.sw.epilog_crit_edge
    i16 482, label %sw.epilog.fold.split
  ]

land.lhs.true4.i.sw.epilog_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

land.lhs.true4.i.cleanup_crit_edge:               ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.epilog.fold.split:                             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.fold.split, %land.lhs.true4.i.sw.epilog_crit_edge
  %venc_mode.0 = phi ptr [ @omap_dss_pal_mode, %land.lhs.true4.i.sw.epilog_crit_edge ], [ @omap_dss_ntsc_mode, %sw.epilog.fold.split ]
  tail call void @drm_mode_copy(ptr noundef %adjusted_mode, ptr noundef nonnull %venc_mode.0) #8
  tail call void @drm_mode_set_crtcinfo(ptr noundef %adjusted_mode, i32 noundef 1) #8
  tail call void @drm_mode_set_name(ptr noundef %adjusted_mode) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %land.lhs.true4.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %sw.epilog ], [ false, %entry.cleanup_crit_edge ], [ false, %land.lhs.true.i.cleanup_crit_edge ], [ false, %if.end.i.cleanup_crit_edge ], [ false, %land.lhs.true4.i.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @venc_bridge_disable(ptr noundef %bridge) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %bridge, i32 -92
  tail call fastcc void @venc_power_off(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @venc_bridge_mode_set(ptr nocapture noundef %bridge, ptr nocapture noundef readnone %mode, ptr nocapture noundef readonly %adjusted_mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flags.i = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 11
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.land.end_crit_edge, label %if.end.i

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

if.end.i:                                         ; preds = %entry
  %2 = ptrtoint ptr %adjusted_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %adjusted_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13500, i32 %3)
  %cmp.i = icmp eq i32 %3, 13500
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.i.land.end_crit_edge

if.end.i.land.end_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true.i:                                  ; preds = %if.end.i
  %hdisplay.i = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 1
  %4 = ptrtoint ptr %hdisplay.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %hdisplay.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 720, i16 %5)
  %cmp2.i = icmp eq i16 %5, 720
  br i1 %cmp2.i, label %land.lhs.true4.i, label %land.lhs.true.i.land.end_crit_edge

land.lhs.true.i.land.end_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %vdisplay.i = getelementptr inbounds %struct.drm_display_mode, ptr %adjusted_mode, i32 0, i32 6
  %6 = ptrtoint ptr %vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vdisplay.i, align 2
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.78)
  switch i16 %7, label %land.lhs.true4.i.land.end_crit_edge [
    i16 574, label %land.lhs.true4.i.sw.epilog_crit_edge
    i16 482, label %sw.bb34
  ]

land.lhs.true4.i.sw.epilog_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

land.lhs.true4.i.land.end_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.end:                                         ; preds = %land.lhs.true4.i.land.end_crit_edge, %land.lhs.true.i.land.end_crit_edge, %if.end.i.land.end_crit_edge, %entry.land.end_crit_edge
  %.b40 = load i1, ptr @venc_bridge_mode_set.__already_done, align 1
  br i1 %.b40, label %land.end.sw.epilog_crit_edge, label %if.then, !prof !183

land.end.sw.epilog_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then:                                          ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @venc_bridge_mode_set.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 602, i32 noundef 9, ptr noundef null) #8
  br label %sw.epilog

sw.bb34:                                          ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb34, %if.then, %land.end.sw.epilog_crit_edge, %land.lhs.true4.i.sw.epilog_crit_edge
  %venc_config_ntsc_trm.sink = phi ptr [ @venc_config_ntsc_trm, %sw.bb34 ], [ @venc_config_pal_trm, %land.lhs.true4.i.sw.epilog_crit_edge ], [ @venc_config_pal_trm, %land.end.sw.epilog_crit_edge ], [ @venc_config_pal_trm, %if.then ]
  %config35 = getelementptr i8, ptr %bridge, i32 -68
  %9 = ptrtoint ptr %config35 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %venc_config_ntsc_trm.sink, ptr %config35, align 4
  %dss = getelementptr i8, ptr %bridge, i32 -80
  %10 = ptrtoint ptr %dss to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dss, align 4
  %dispc = getelementptr inbounds %struct.dss_device, ptr %11, i32 0, i32 21
  %12 = ptrtoint ptr %dispc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dispc, align 4
  tail call void @dispc_set_tv_pclk(ptr noundef %13, i32 noundef 13500000) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @venc_bridge_enable(ptr noundef %bridge) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %bridge, i32 -92
  tail call fastcc void @venc_power_on(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @venc_bridge_get_modes(ptr nocapture noundef readnone %bridge, ptr noundef %connector) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %call = tail call ptr @drm_mode_duplicate(ptr noundef %1, ptr noundef nonnull @omap_dss_pal_mode) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup1_crit_edge, label %for.inc

entry.cleanup1_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup1

for.inc:                                          ; preds = %entry
  %type = getelementptr inbounds %struct.drm_display_mode, ptr %call, i32 0, i32 28
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 72, ptr %type, align 2
  tail call void @drm_mode_set_name(ptr noundef nonnull %call) #8
  tail call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef nonnull %call) #8
  %3 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %connector, align 8
  %call.1 = tail call ptr @drm_mode_duplicate(ptr noundef %4, ptr noundef nonnull @omap_dss_ntsc_mode) #8
  %tobool.not.1 = icmp eq ptr %call.1, null
  br i1 %tobool.not.1, label %for.inc.cleanup1_crit_edge, label %for.inc.1

for.inc.cleanup1_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup1

for.inc.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  %type.1 = getelementptr inbounds %struct.drm_display_mode, ptr %call.1, i32 0, i32 28
  %5 = ptrtoint ptr %type.1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 72, ptr %type.1, align 2
  tail call void @drm_mode_set_name(ptr noundef nonnull %call.1) #8
  tail call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef nonnull %call.1) #8
  br label %cleanup1

cleanup1:                                         ; preds = %for.inc.1, %for.inc.cleanup1_crit_edge, %entry.cleanup1_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup1_crit_edge ], [ 1, %for.inc.cleanup1_crit_edge ], [ 2, %for.inc.1 ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_set_crtcinfo(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_set_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @venc_power_off(ptr noundef %venc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.venc_device, ptr %venc, i32 0, i32 1
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !184
  %dss = getelementptr inbounds %struct.venc_device, ptr %venc, i32 0, i32 3
  %2 = ptrtoint ptr %dss to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dss, align 4
  tail call void @dss_set_dac_pwrdn_bgz(ptr noundef %3, i1 noundef zeroext false) #8
  %output = getelementptr inbounds %struct.venc_device, ptr %venc, i32 0, i32 10
  tail call void @dss_mgr_disable(ptr noundef %output) #8
  %vdda_dac_reg = getelementptr inbounds %struct.venc_device, ptr %venc, i32 0, i32 2
  %4 = ptrtoint ptr %vdda_dac_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vdda_dac_reg, align 4
  %call = tail call i32 @regulator_disable(ptr noundef %5) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @venc_runtime_put.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@venc_power_off, %do.end.i)) #8
          to label %if.then.i [label %do.end.i], !srcloc !185

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @venc_runtime_put.__UNIQUE_ID_ddebug310, ptr noundef nonnull @.str.23) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %entry
  %6 = ptrtoint ptr %venc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %venc, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  %call.i.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev.i, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -38, i32 %call.i.i)
  %cmp5.i = icmp ne i32 %call.i.i, -38
  %spec.select.i = and i1 %cmp.i, %cmp5.i
  br i1 %spec.select.i, label %do.end21.i, label %do.end.i.venc_runtime_put.exit_crit_edge, !prof !186

do.end.i.venc_runtime_put.exit_crit_edge:         ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %venc_runtime_put.exit

do.end21.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 378, i32 noundef 9, ptr noundef null) #8
  br label %venc_runtime_put.exit

venc_runtime_put.exit:                            ; preds = %do.end21.i, %do.end.i.venc_runtime_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dss_set_dac_pwrdn_bgz(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dss_mgr_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dispc_set_tv_pclk(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @venc_power_on(ptr noundef %venc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @venc_runtime_get.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@venc_power_on, %do.end.i)) #8
          to label %if.then.i [label %do.end.i], !srcloc !185

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @venc_runtime_get.__UNIQUE_ID_ddebug309, ptr noundef nonnull @.str.26) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %entry
  %0 = ptrtoint ptr %venc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %venc, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev.i, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %venc_runtime_get.exit, label %if.end, !prof !186

venc_runtime_get.exit:                            ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 364, i32 noundef 9, ptr noundef null) #8
  %2 = ptrtoint ptr %venc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %venc, align 4
  %dev37.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call fastcc void @pm_runtime_put_noidle(ptr noundef %dev37.i) #8
  br label %cleanup

if.end:                                           ; preds = %do.end.i
  %base.i.i = getelementptr inbounds %struct.venc_device, ptr %venc, i32 0, i32 1
  %4 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 256) #8, !srcloc !184
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.end
  %t.0.i = phi i32 [ 1000, %if.end ], [ %dec.i, %while.body.i.while.cond.i_crit_edge ]
  %6 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %7, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4.i) #8, !srcloc !187
  %and.i = and i32 %8, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %while.end.i, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  %dec.i = add nsw i32 %t.0.i, -1
  %cmp.i1 = icmp eq i32 %dec.i, 0
  br i1 %cmp.i1, label %do.end.i2, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

do.end.i2:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #12
  br label %venc_reset.exit

while.end.i:                                      ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @msleep(i32 noundef 20) #8
  br label %venc_reset.exit

venc_reset.exit:                                  ; preds = %while.end.i, %do.end.i2
  %config = getelementptr inbounds %struct.venc_device, ptr %venc, i32 0, i32 6
  %9 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %config, align 4
  tail call fastcc void @venc_write_config(ptr noundef %venc, ptr noundef %10)
  %dss = getelementptr inbounds %struct.venc_device, ptr %venc, i32 0, i32 3
  %11 = ptrtoint ptr %dss to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dss, align 4
  %type = getelementptr inbounds %struct.venc_device, ptr %venc, i32 0, i32 7
  %13 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %type, align 4
  tail call void @dss_set_venc_output(ptr noundef %12, i32 noundef %14) #8
  %15 = ptrtoint ptr %dss to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dss, align 4
  tail call void @dss_set_dac_pwrdn_bgz(ptr noundef %16, i1 noundef zeroext true) #8
  %17 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp = icmp eq i32 %18, 0
  %. = select i1 %cmp, i32 2, i32 5
  %invert_polarity = getelementptr inbounds %struct.venc_device, ptr %venc, i32 0, i32 8
  %19 = ptrtoint ptr %invert_polarity to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %invert_polarity, align 4, !range !181
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp7 = icmp eq i8 %20, 0
  %or10 = or i32 %., 8
  %l.1 = select i1 %cmp7, i32 %or10, i32 %.
  %21 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %22, i32 196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %l.1) #8, !srcloc !184
  %vdda_dac_reg = getelementptr inbounds %struct.venc_device, ptr %venc, i32 0, i32 2
  %23 = ptrtoint ptr %vdda_dac_reg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vdda_dac_reg, align 4
  %call12 = tail call i32 @regulator_enable(ptr noundef %24) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %venc_reset.exit.err1_crit_edge

venc_reset.exit.err1_crit_edge:                   ; preds = %venc_reset.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %err1

if.end15:                                         ; preds = %venc_reset.exit
  %output = getelementptr inbounds %struct.venc_device, ptr %venc, i32 0, i32 10
  %call16 = tail call i32 @dss_mgr_enable(ptr noundef %output) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end15.cleanup_crit_edge, label %err2

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

err2:                                             ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %vdda_dac_reg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %vdda_dac_reg, align 4
  %call21 = tail call i32 @regulator_disable(ptr noundef %26) #8
  br label %err1

err1:                                             ; preds = %err2, %venc_reset.exit.err1_crit_edge
  %27 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i4 = getelementptr i8, ptr %28, i32 196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4, i32 0) #8, !srcloc !184
  %29 = ptrtoint ptr %dss to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dss, align 4
  tail call void @dss_set_dac_pwrdn_bgz(ptr noundef %30, i1 noundef zeroext false) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @venc_runtime_put.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@venc_power_on, %do.end.i9)) #8
          to label %if.then.i5 [label %do.end.i9], !srcloc !185

if.then.i5:                                       ; preds = %err1
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @venc_runtime_put.__UNIQUE_ID_ddebug310, ptr noundef nonnull @.str.23) #8
  br label %do.end.i9

do.end.i9:                                        ; preds = %if.then.i5, %err1
  %31 = ptrtoint ptr %venc to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %venc, align 4
  %dev.i6 = getelementptr inbounds %struct.platform_device, ptr %32, i32 0, i32 3
  %call.i.i7 = tail call i32 @__pm_runtime_idle(ptr noundef %dev.i6, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i7)
  %cmp.i8 = icmp slt i32 %call.i.i7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -38, i32 %call.i.i7)
  %cmp5.i = icmp ne i32 %call.i.i7, -38
  %spec.select.i = and i1 %cmp.i8, %cmp5.i
  br i1 %spec.select.i, label %do.end21.i, label %do.end.i9.cleanup_crit_edge, !prof !186

do.end.i9.cleanup_crit_edge:                      ; preds = %do.end.i9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end21.i:                                       ; preds = %do.end.i9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 378, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end21.i, %do.end.i9.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %venc_runtime_get.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @venc_write_config(ptr noundef readonly %venc, ptr noundef readonly %config) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @venc_write_config.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@venc_write_config, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !185

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @venc_write_config.__UNIQUE_ID_ddebug308, ptr noundef nonnull @.str.31) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %llen = getelementptr inbounds %struct.venc_config, ptr %config, i32 0, i32 3
  %0 = ptrtoint ptr %llen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %llen, align 4
  %base.i = getelementptr inbounds %struct.venc_device, ptr %venc, i32 0, i32 1
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %1) #8, !srcloc !184
  %flens = getelementptr inbounds %struct.venc_config, ptr %config, i32 0, i32 4
  %4 = ptrtoint ptr %flens to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flens, align 4
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr.i84 = getelementptr i8, ptr %7, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i84, i32 %5) #8, !srcloc !184
  %cc_carr_wss_carr = getelementptr inbounds %struct.venc_config, ptr %config, i32 0, i32 6
  %8 = ptrtoint ptr %cc_carr_wss_carr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cc_carr_wss_carr, align 4
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %add.ptr.i86 = getelementptr i8, ptr %11, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i86, i32 %9) #8, !srcloc !184
  %c_phase = getelementptr inbounds %struct.venc_config, ptr %config, i32 0, i32 7
  %12 = ptrtoint ptr %c_phase to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %c_phase, align 4
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 4
  %add.ptr.i88 = getelementptr i8, ptr %15, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i88, i32 %13) #8, !srcloc !184
  %gain_u = getelementptr inbounds %struct.venc_config, ptr %config, i32 0, i32 8
  %16 = ptrtoint ptr %gain_u to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %gain_u, align 4
  %18 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i, align 4
  %add.ptr.i90 = getelementptr i8, ptr %19, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i90, i32 %17) #8, !srcloc !184
  %gain_v = getelementptr inbounds %struct.venc_config, ptr %config, i32 0, i32 9
  %20 = ptrtoint ptr %gain_v to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %gain_v, align 4
  %22 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i, align 4
  %add.ptr.i92 = getelementptr i8, ptr %23, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i92, i32 %21) #8, !srcloc !184
  %gain_y = getelementptr inbounds %struct.venc_config, ptr %config, i32 0, i32 10
  %24 = ptrtoint ptr %gain_y to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %gain_y, align 4
  %26 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i, align 4
  %add.ptr.i94 = getelementptr i8, ptr %27, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i94, i32 %25) #8, !srcloc !184
  %black_level = getelementptr inbounds %struct.venc_config, ptr %config, i32 0, i32 11
  %28 = ptrtoint ptr %black_level to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %black_level, align 4
  %30 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i, align 4
  %add.ptr.i96 = getelementptr i8, ptr %31, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i96, i32 %29) #8, !srcloc !184
  %blank_level = getelementptr inbounds %struct.venc_config, ptr %config, i32 0, i32 12
  %32 = ptrtoint ptr %blank_level to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %blank_level, align 4
  %34 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i, align 4
  %add.ptr.i98 = getelementptr i8, ptr %35, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i98, i32 %33) #8, !srcloc !184
  %m_control = getelementptr inbounds %struct.venc_config, ptr %config, i32 0, i32 14
  %36 = ptrtoint ptr %m_control to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %m_control, align 4
  %38 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base.i, align 4
  %add.ptr.i100 = getelementptr i8, ptr %39, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i100, i32 %37) #8, !srcloc !184
  %bstamp_wss_data = getelementptr inbounds %struct.venc_config, ptr %config, i32 0, i32 15
  %40 = ptrtoint ptr %bstamp_wss_data to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %bstamp_wss_data, align 4
  %42 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base.i, align 4
  %add.ptr.i102 = getelementptr i8, ptr %43, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i102, i32 %41) #8, !srcloc !184
  %s_carr = getelementptr inbounds %struct.venc_config, ptr %config, i32 0, i32 16
  %44 = ptrtoint ptr %s_carr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %s_carr, align 4
  %46 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base.i, align 4
  %add.ptr.i104 = getelementptr i8, ptr %47, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i104, i32 %45) #8, !srcloc !184
  %l21__wc_ctl = getelementptr inbounds %struct.venc_config, ptr %config, i32 0, i32 19
  %48 = ptrtoint ptr %l21__wc_ctl to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %l21__wc_ctl, align 4
  %50 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base.i, align 4
  %add.ptr.i106 = getelementptr i8, ptr %51, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i106, i32 %49) #8, !srcloc !184
  %savid__eavid = getelementptr inbounds %struct.venc_config, ptr %config, i32 0, i32 21
  %52 = ptrtoint ptr %savid__eavid to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %savid__eavid, align 4
  %54 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base.i, align 4
  %add.ptr.i108 = getelementptr i8, ptr %55, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i108, i32 %53) #8, !srcloc !184
  %flen__fal = getelementptr inbounds %struct.venc_config, ptr %config, i32 0, i32 22
  %56 = ptrtoint ptr %flen__fal to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %flen__fal, align 4
  %58 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base.i, align 4
  %add.ptr.i110 = getelementptr i8, ptr %59, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i110, i32 %57) #8, !srcloc !184
  %lal__phase_reset = getelementptr inbounds %struct.venc_config, ptr %config, i32 0, i32 23
  %60 = ptrtoint ptr %lal__phase_reset to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %lal__phase_reset, align 4
  %62 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %base.i, align 4
  %add.ptr.i112 = getelementptr i8, ptr %63, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i112, i32 %61) #8, !srcloc !184
  %hs_int_start_stop_x = getelementptr inbounds %struct.venc_config, ptr %config, i32 0, i32 24
  %64 = ptrtoint ptr %hs_int_start_stop_x to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %hs_int_start_stop_x, align 4
  %66 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %base.i, align 4
  %add.ptr.i114 = getelementptr i8, ptr %67, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i114, i32 %65) #8, !srcloc !184
  %hs_ext_start_stop_x = getelementptr inbounds %struct.venc_config, ptr %config, i32 0, i32 25
  %68 = ptrtoint ptr %hs_ext_start_stop_x to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %hs_ext_start_stop_x, align 4
  %70 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %base.i, align 4
  %add.ptr.i116 = getelementptr i8, ptr %71, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i116, i32 %69) #8, !srcloc !184
  %vs_int_start_x = getelementptr inbounds %struct.venc_config, ptr %config, i32 0, i32 26
  %72 = ptrtoint ptr %vs_int_start_x to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %vs_int_start_x, align 4
  %74 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %base.i, align 4
  %add.ptr.i118 = getelementptr i8, ptr %75, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i118, i32 %73) #8, !srcloc !184
  %vs_int_stop_x__vs_int_start_y = getelementptr inbounds %struct.venc_config, ptr %config, i32 0, i32 27
  %76 = ptrtoint ptr %vs_int_stop_x__vs_int_start_y to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %vs_int_stop_x__vs_int_start_y, align 4
  %78 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %base.i, align 4
  %add.ptr.i120 = getelementptr i8, ptr %79, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i120, i32 %77) #8, !srcloc !184
  %vs_int_stop_y__vs_ext_start_x = getelementptr inbounds %struct.venc_config, ptr %config, i32 0, i32 28
  %80 = ptrtoint ptr %vs_int_stop_y__vs_ext_start_x to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %vs_int_stop_y__vs_ext_start_x, align 4
  %82 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %base.i, align 4
  %add.ptr.i122 = getelementptr i8, ptr %83, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i122, i32 %81) #8, !srcloc !184
  %vs_ext_stop_x__vs_ext_start_y = getelementptr inbounds %struct.venc_config, ptr %config, i32 0, i32 29
  %84 = ptrtoint ptr %vs_ext_stop_x__vs_ext_start_y to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %vs_ext_stop_x__vs_ext_start_y, align 4
  %86 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %base.i, align 4
  %add.ptr.i124 = getelementptr i8, ptr %87, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i124, i32 %85) #8, !srcloc !184
  %vs_ext_stop_y = getelementptr inbounds %struct.venc_config, ptr %config, i32 0, i32 30
  %88 = ptrtoint ptr %vs_ext_stop_y to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %vs_ext_stop_y, align 4
  %90 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %base.i, align 4
  %add.ptr.i126 = getelementptr i8, ptr %91, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i126, i32 %89) #8, !srcloc !184
  %avid_start_stop_x = getelementptr inbounds %struct.venc_config, ptr %config, i32 0, i32 31
  %92 = ptrtoint ptr %avid_start_stop_x to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %avid_start_stop_x, align 4
  %94 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %base.i, align 4
  %add.ptr.i128 = getelementptr i8, ptr %95, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i128, i32 %93) #8, !srcloc !184
  %avid_start_stop_y = getelementptr inbounds %struct.venc_config, ptr %config, i32 0, i32 32
  %96 = ptrtoint ptr %avid_start_stop_y to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %avid_start_stop_y, align 4
  %98 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %base.i, align 4
  %add.ptr.i130 = getelementptr i8, ptr %99, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i130, i32 %97) #8, !srcloc !184
  %fid_int_start_x__fid_int_start_y = getelementptr inbounds %struct.venc_config, ptr %config, i32 0, i32 33
  %100 = ptrtoint ptr %fid_int_start_x__fid_int_start_y to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %fid_int_start_x__fid_int_start_y, align 4
  %102 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %base.i, align 4
  %add.ptr.i132 = getelementptr i8, ptr %103, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i132, i32 %101) #8, !srcloc !184
  %fid_int_offset_y__fid_ext_start_x = getelementptr inbounds %struct.venc_config, ptr %config, i32 0, i32 34
  %104 = ptrtoint ptr %fid_int_offset_y__fid_ext_start_x to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %fid_int_offset_y__fid_ext_start_x, align 4
  %106 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %base.i, align 4
  %add.ptr.i134 = getelementptr i8, ptr %107, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i134, i32 %105) #8, !srcloc !184
  %fid_ext_start_y__fid_ext_offset_y = getelementptr inbounds %struct.venc_config, ptr %config, i32 0, i32 35
  %108 = ptrtoint ptr %fid_ext_start_y__fid_ext_offset_y to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %fid_ext_start_y__fid_ext_offset_y, align 4
  %110 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %base.i, align 4
  %add.ptr.i136 = getelementptr i8, ptr %111, i32 168
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i136, i32 %109) #8, !srcloc !184
  %112 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %base.i, align 4
  %add.ptr.i138 = getelementptr i8, ptr %113, i32 200
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i138) #8, !srcloc !187
  %115 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %base.i, align 4
  %add.ptr.i140 = getelementptr i8, ptr %116, i32 200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i140, i32 %114) #8, !srcloc !184
  %vidout_ctrl = getelementptr inbounds %struct.venc_config, ptr %config, i32 0, i32 1
  %117 = ptrtoint ptr %vidout_ctrl to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %vidout_ctrl, align 4
  %119 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %base.i, align 4
  %add.ptr.i142 = getelementptr i8, ptr %120, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i142, i32 %118) #8, !srcloc !184
  %hfltr_ctrl = getelementptr inbounds %struct.venc_config, ptr %config, i32 0, i32 5
  %121 = ptrtoint ptr %hfltr_ctrl to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %hfltr_ctrl, align 4
  %123 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %base.i, align 4
  %add.ptr.i144 = getelementptr i8, ptr %124, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i144, i32 %122) #8, !srcloc !184
  %x_color = getelementptr inbounds %struct.venc_config, ptr %config, i32 0, i32 13
  %125 = ptrtoint ptr %x_color to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %x_color, align 4
  %127 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %base.i, align 4
  %add.ptr.i146 = getelementptr i8, ptr %128, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i146, i32 %126) #8, !srcloc !184
  %line21 = getelementptr inbounds %struct.venc_config, ptr %config, i32 0, i32 17
  %129 = ptrtoint ptr %line21 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %line21, align 4
  %131 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %base.i, align 4
  %add.ptr.i148 = getelementptr i8, ptr %132, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i148, i32 %130) #8, !srcloc !184
  %ln_sel = getelementptr inbounds %struct.venc_config, ptr %config, i32 0, i32 18
  %133 = ptrtoint ptr %ln_sel to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %ln_sel, align 4
  %135 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %base.i, align 4
  %add.ptr.i150 = getelementptr i8, ptr %136, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i150, i32 %134) #8, !srcloc !184
  %htrigger_vtrigger = getelementptr inbounds %struct.venc_config, ptr %config, i32 0, i32 20
  %137 = ptrtoint ptr %htrigger_vtrigger to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %htrigger_vtrigger, align 4
  %139 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %base.i, align 4
  %add.ptr.i152 = getelementptr i8, ptr %140, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i152, i32 %138) #8, !srcloc !184
  %tvdetgp_int_start_stop_x = getelementptr inbounds %struct.venc_config, ptr %config, i32 0, i32 36
  %141 = ptrtoint ptr %tvdetgp_int_start_stop_x to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %tvdetgp_int_start_stop_x, align 4
  %143 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %base.i, align 4
  %add.ptr.i154 = getelementptr i8, ptr %144, i32 176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i154, i32 %142) #8, !srcloc !184
  %tvdetgp_int_start_stop_y = getelementptr inbounds %struct.venc_config, ptr %config, i32 0, i32 37
  %145 = ptrtoint ptr %tvdetgp_int_start_stop_y to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %tvdetgp_int_start_stop_y, align 4
  %147 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %base.i, align 4
  %add.ptr.i156 = getelementptr i8, ptr %148, i32 180
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i156, i32 %146) #8, !srcloc !184
  %gen_ctrl = getelementptr inbounds %struct.venc_config, ptr %config, i32 0, i32 38
  %149 = ptrtoint ptr %gen_ctrl to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %gen_ctrl, align 4
  %151 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %base.i, align 4
  %add.ptr.i158 = getelementptr i8, ptr %152, i32 184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i158, i32 %150) #8, !srcloc !184
  %153 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %config, align 4
  %155 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %base.i, align 4
  %add.ptr.i160 = getelementptr i8, ptr %156, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i160, i32 %154) #8, !srcloc !184
  %sync_ctrl = getelementptr inbounds %struct.venc_config, ptr %config, i32 0, i32 2
  %157 = ptrtoint ptr %sync_ctrl to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %sync_ctrl, align 4
  %159 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %base.i, align 4
  %add.ptr.i162 = getelementptr i8, ptr %160, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i162, i32 %158) #8, !srcloc !184
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dss_set_venc_output(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dss_mgr_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pm_runtime_put_noidle(ptr noundef %dev) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %usage_count = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !188
  tail call void @llvm.prefetch.p0(ptr %usage_count, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count, ptr %usage_count, i32 0, i32 -1, ptr elementtype(i32) %usage_count) #8, !srcloc !189
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %entry.atomic_add_unless.exit_crit_edge, label %do.end11.i.i.i

entry.atomic_add_unless.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %atomic_add_unless.exit

do.end11.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !190
  br label %atomic_add_unless.exit

atomic_add_unless.exit:                           ; preds = %do.end11.i.i.i, %entry.atomic_add_unless.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_duplicate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_probed_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @venc_bind(ptr noundef %dev, ptr noundef %master, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @dss_get_device(ptr noundef %master) #8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %dss2 = getelementptr inbounds %struct.venc_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dss2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %dss2, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @venc_runtime_get.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@venc_bind, %do.end.i)) #8
          to label %if.then.i [label %do.end.i], !srcloc !185

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @venc_runtime_get.__UNIQUE_ID_ddebug309, ptr noundef nonnull @.str.26) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %entry
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev.i, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end20.i, label %if.end, !prof !186

do.end20.i:                                       ; preds = %do.end.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 364, i32 noundef 9, ptr noundef null) #8
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !188
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #8
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #8, !srcloc !189
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %do.end20.i.cleanup_crit_edge, label %do.end11.i.i.i.i

do.end20.i.cleanup_crit_edge:                     ; preds = %do.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %do.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !190
  br label %cleanup

if.end:                                           ; preds = %do.end.i
  %base.i = getelementptr inbounds %struct.venc_device, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #8, !srcloc !187
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @venc_bind.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@venc_bind, %do.end)) #8
          to label %if.then10 [label %do.end], !srcloc !185

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv11 = and i32 %10, 255
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @venc_bind.__UNIQUE_ID_ddebug311, ptr noundef %dev, ptr noundef nonnull @.str.33, i32 noundef %conv11) #8
  br label %do.end

do.end:                                           ; preds = %if.then10, %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @venc_runtime_put.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@venc_bind, %do.end.i30)) #8
          to label %if.then.i26 [label %do.end.i30], !srcloc !185

if.then.i26:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @venc_runtime_put.__UNIQUE_ID_ddebug310, ptr noundef nonnull @.str.23) #8
  br label %do.end.i30

do.end.i30:                                       ; preds = %if.then.i26, %do.end
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %dev.i27 = getelementptr inbounds %struct.platform_device, ptr %12, i32 0, i32 3
  %call.i.i28 = tail call i32 @__pm_runtime_idle(ptr noundef %dev.i27, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i28)
  %cmp.i29 = icmp slt i32 %call.i.i28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -38, i32 %call.i.i28)
  %cmp5.i = icmp ne i32 %call.i.i28, -38
  %spec.select.i = and i1 %cmp.i29, %cmp5.i
  br i1 %spec.select.i, label %do.end21.i, label %do.end.i30.venc_runtime_put.exit_crit_edge, !prof !186

do.end.i30.venc_runtime_put.exit_crit_edge:       ; preds = %do.end.i30
  call void @__sanitizer_cov_trace_pc() #10
  br label %venc_runtime_put.exit

do.end21.i:                                       ; preds = %do.end.i30
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 378, i32 noundef 9, ptr noundef null) #8
  br label %venc_runtime_put.exit

venc_runtime_put.exit:                            ; preds = %do.end21.i, %do.end.i30.venc_runtime_put.exit_crit_edge
  %call13 = tail call ptr @dss_debugfs_create_file(ptr noundef %call, ptr noundef nonnull @.str.34, ptr noundef nonnull @venc_dump_regs, ptr noundef %1) #8
  %debugfs = getelementptr inbounds %struct.venc_device, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %debugfs to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call13, ptr %debugfs, align 4
  br label %cleanup

cleanup:                                          ; preds = %venc_runtime_put.exit, %do.end11.i.i.i.i, %do.end20.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %venc_runtime_put.exit ], [ %call.i.i, %do.end20.i.cleanup_crit_edge ], [ %call.i.i, %do.end11.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @venc_unbind(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %master, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %debugfs = getelementptr inbounds %struct.venc_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %debugfs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %debugfs, align 4
  tail call void @dss_debugfs_remove_file(ptr noundef %3) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dss_get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dss_debugfs_create_file(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @venc_dump_regs(ptr noundef %s, ptr nocapture noundef readnone %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @venc_runtime_get.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@venc_dump_regs, %do.end.i)) #8
          to label %if.then.i [label %do.end.i], !srcloc !185

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @venc_runtime_get.__UNIQUE_ID_ddebug309, ptr noundef nonnull @.str.26) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev.i, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %do.end20.i, label %if.end, !prof !186

do.end20.i:                                       ; preds = %do.end.i
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 364, i32 noundef 9, ptr noundef null) #8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !188
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #8
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #8, !srcloc !189
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %do.end20.i.cleanup_crit_edge, label %do.end11.i.i.i.i

do.end20.i.cleanup_crit_edge:                     ; preds = %do.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %do.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !190
  br label %cleanup

if.end:                                           ; preds = %do.end.i
  %base.i = getelementptr inbounds %struct.venc_device, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !187
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.36, i32 noundef %9) #8
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %add.ptr.i126 = getelementptr i8, ptr %11, i32 16
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i126) #8, !srcloc !187
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.37, i32 noundef %12) #8
  %13 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i, align 4
  %add.ptr.i128 = getelementptr i8, ptr %14, i32 20
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i128) #8, !srcloc !187
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.38, i32 noundef %15) #8
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 4
  %add.ptr.i130 = getelementptr i8, ptr %17, i32 28
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i130) #8, !srcloc !187
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.39, i32 noundef %18) #8
  %19 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i, align 4
  %add.ptr.i132 = getelementptr i8, ptr %20, i32 32
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i132) #8, !srcloc !187
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.40, i32 noundef %21) #8
  %22 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i, align 4
  %add.ptr.i134 = getelementptr i8, ptr %23, i32 36
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i134) #8, !srcloc !187
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.41, i32 noundef %24) #8
  %25 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i, align 4
  %add.ptr.i136 = getelementptr i8, ptr %26, i32 40
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i136) #8, !srcloc !187
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.42, i32 noundef %27) #8
  %28 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i, align 4
  %add.ptr.i138 = getelementptr i8, ptr %29, i32 44
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i138) #8, !srcloc !187
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.43, i32 noundef %30) #8
  %31 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base.i, align 4
  %add.ptr.i140 = getelementptr i8, ptr %32, i32 48
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i140) #8, !srcloc !187
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.44, i32 noundef %33) #8
  %34 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i, align 4
  %add.ptr.i142 = getelementptr i8, ptr %35, i32 52
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i142) #8, !srcloc !187
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.45, i32 noundef %36) #8
  %37 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base.i, align 4
  %add.ptr.i144 = getelementptr i8, ptr %38, i32 56
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i144) #8, !srcloc !187
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.46, i32 noundef %39) #8
  %40 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i, align 4
  %add.ptr.i146 = getelementptr i8, ptr %41, i32 60
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i146) #8, !srcloc !187
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.47, i32 noundef %42) #8
  %43 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base.i, align 4
  %add.ptr.i148 = getelementptr i8, ptr %44, i32 64
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i148) #8, !srcloc !187
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.48, i32 noundef %45) #8
  %46 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base.i, align 4
  %add.ptr.i150 = getelementptr i8, ptr %47, i32 68
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i150) #8, !srcloc !187
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.49, i32 noundef %48) #8
  %49 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base.i, align 4
  %add.ptr.i152 = getelementptr i8, ptr %50, i32 72
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i152) #8, !srcloc !187
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.50, i32 noundef %51) #8
  %52 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base.i, align 4
  %add.ptr.i154 = getelementptr i8, ptr %53, i32 76
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i154) #8, !srcloc !187
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.51, i32 noundef %54) #8
  %55 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base.i, align 4
  %add.ptr.i156 = getelementptr i8, ptr %56, i32 80
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i156) #8, !srcloc !187
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.52, i32 noundef %57) #8
  %58 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base.i, align 4
  %add.ptr.i158 = getelementptr i8, ptr %59, i32 84
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i158) #8, !srcloc !187
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.53, i32 noundef %60) #8
  %61 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %base.i, align 4
  %add.ptr.i160 = getelementptr i8, ptr %62, i32 88
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i160) #8, !srcloc !187
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.54, i32 noundef %63) #8
  %64 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %base.i, align 4
  %add.ptr.i162 = getelementptr i8, ptr %65, i32 92
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i162) #8, !srcloc !187
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.55, i32 noundef %66) #8
  %67 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %base.i, align 4
  %add.ptr.i164 = getelementptr i8, ptr %68, i32 96
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i164) #8, !srcloc !187
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.56, i32 noundef %69) #8
  %70 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %base.i, align 4
  %add.ptr.i166 = getelementptr i8, ptr %71, i32 100
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i166) #8, !srcloc !187
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.57, i32 noundef %72) #8
  %73 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %base.i, align 4
  %add.ptr.i168 = getelementptr i8, ptr %74, i32 104
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i168) #8, !srcloc !187
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.58, i32 noundef %75) #8
  %76 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %base.i, align 4
  %add.ptr.i170 = getelementptr i8, ptr %77, i32 108
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i170) #8, !srcloc !187
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.59, i32 noundef %78) #8
  %79 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %base.i, align 4
  %add.ptr.i172 = getelementptr i8, ptr %80, i32 112
  %81 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i172) #8, !srcloc !187
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.60, i32 noundef %81) #8
  %82 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %base.i, align 4
  %add.ptr.i174 = getelementptr i8, ptr %83, i32 116
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i174) #8, !srcloc !187
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.61, i32 noundef %84) #8
  %85 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %base.i, align 4
  %add.ptr.i176 = getelementptr i8, ptr %86, i32 120
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i176) #8, !srcloc !187
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.62, i32 noundef %87) #8
  %88 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %base.i, align 4
  %add.ptr.i178 = getelementptr i8, ptr %89, i32 124
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i178) #8, !srcloc !187
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.63, i32 noundef %90) #8
  %91 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %base.i, align 4
  %add.ptr.i180 = getelementptr i8, ptr %92, i32 128
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i180) #8, !srcloc !187
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.64, i32 noundef %93) #8
  %94 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %base.i, align 4
  %add.ptr.i182 = getelementptr i8, ptr %95, i32 132
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i182) #8, !srcloc !187
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.65, i32 noundef %96) #8
  %97 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %base.i, align 4
  %add.ptr.i184 = getelementptr i8, ptr %98, i32 136
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i184) #8, !srcloc !187
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.66, i32 noundef %99) #8
  %100 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %base.i, align 4
  %add.ptr.i186 = getelementptr i8, ptr %101, i32 144
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i186) #8, !srcloc !187
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.67, i32 noundef %102) #8
  %103 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %base.i, align 4
  %add.ptr.i188 = getelementptr i8, ptr %104, i32 148
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i188) #8, !srcloc !187
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.68, i32 noundef %105) #8
  %106 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %base.i, align 4
  %add.ptr.i190 = getelementptr i8, ptr %107, i32 160
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i190) #8, !srcloc !187
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.69, i32 noundef %108) #8
  %109 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %base.i, align 4
  %add.ptr.i192 = getelementptr i8, ptr %110, i32 164
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i192) #8, !srcloc !187
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.70, i32 noundef %111) #8
  %112 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %base.i, align 4
  %add.ptr.i194 = getelementptr i8, ptr %113, i32 168
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i194) #8, !srcloc !187
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.71, i32 noundef %114) #8
  %115 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %base.i, align 4
  %add.ptr.i196 = getelementptr i8, ptr %116, i32 176
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i196) #8, !srcloc !187
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.72, i32 noundef %117) #8
  %118 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %base.i, align 4
  %add.ptr.i198 = getelementptr i8, ptr %119, i32 180
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i198) #8, !srcloc !187
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.73, i32 noundef %120) #8
  %121 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %base.i, align 4
  %add.ptr.i200 = getelementptr i8, ptr %122, i32 184
  %123 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i200) #8, !srcloc !187
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.74, i32 noundef %123) #8
  %124 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %base.i, align 4
  %add.ptr.i202 = getelementptr i8, ptr %125, i32 196
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i202) #8, !srcloc !187
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.75, i32 noundef %126) #8
  %127 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %base.i, align 4
  %add.ptr.i204 = getelementptr i8, ptr %128, i32 200
  %129 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i204) #8, !srcloc !187
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.76, i32 noundef %129) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @venc_runtime_put.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@venc_dump_regs, %do.end.i209)) #8
          to label %if.then.i205 [label %do.end.i209], !srcloc !185

if.then.i205:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @venc_runtime_put.__UNIQUE_ID_ddebug310, ptr noundef nonnull @.str.23) #8
  br label %do.end.i209

do.end.i209:                                      ; preds = %if.then.i205, %if.end
  %130 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %1, align 4
  %dev.i206 = getelementptr inbounds %struct.platform_device, ptr %131, i32 0, i32 3
  %call.i.i207 = tail call i32 @__pm_runtime_idle(ptr noundef %dev.i206, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i207)
  %cmp.i208 = icmp slt i32 %call.i.i207, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -38, i32 %call.i.i207)
  %cmp5.i = icmp ne i32 %call.i.i207, -38
  %spec.select.i = and i1 %cmp.i208, %cmp5.i
  br i1 %spec.select.i, label %do.end21.i, label %do.end.i209.cleanup_crit_edge, !prof !186

do.end.i209.cleanup_crit_edge:                    ; preds = %do.end.i209
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end21.i:                                       ; preds = %do.end.i209
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 378, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end21.i, %do.end.i209.cleanup_crit_edge, %do.end11.i.i.i.i, %do.end20.i.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dss_debugfs_remove_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omapdss_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omapdss_device_cleanup_output(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @venc_runtime_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tv_dac_clk = getelementptr inbounds %struct.venc_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %tv_dac_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tv_dac_clk, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_disable(ptr noundef nonnull %3) #8
  tail call void @clk_unprepare(ptr noundef nonnull %3) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @venc_runtime_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %tv_dac_clk = getelementptr inbounds %struct.venc_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %tv_dac_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tv_dac_clk, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @clk_prepare(ptr noundef nonnull %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @clk_enable(ptr noundef nonnull %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end_crit_edge, label %if.then3.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef nonnull %3) #8
  br label %if.end

if.end:                                           ; preds = %if.then3.i, %if.end.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 90)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 90)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !29, !31, !33, !34, !35, !36, !37, !38, !40, !41, !42, !44, !46, !48, !50, !52, !53, !54, !55, !56, !58, !60, !62, !63, !64, !65, !67, !68, !69, !70, !72, !73, !74, !75, !77, !79, !81, !82, !83, !85, !87, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170}
!llvm.module.flags = !{!172, !173, !174, !175, !176, !177, !178, !179}
!llvm.ident = !{!180}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/omapdrm/dss/venc.c", i32 918, i32 13}
!2 = !{ptr @omap_venchw_driver, !3, !"omap_venchw_driver", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/omapdrm/dss/venc.c", i32 914, i32 24}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/omapdrm/dss/venc.c", i32 831, i32 54}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/omapdrm/dss/venc.c", i32 835, i32 4}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @venc_probe._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @venc_probe._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/omapdrm/dss/venc.c", i32 801, i32 15}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/omapdrm/dss/venc.c", i32 802, i32 15}
!16 = !{ptr @venc_soc_devices, !17, !"venc_soc_devices", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/omapdrm/dss/venc.c", i32 800, i32 42}
!18 = !{ptr @venc_config_pal_trm, !19, !"venc_config_pal_trm", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/omapdrm/dss/venc.c", i32 122, i32 33}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/omapdrm/dss/venc.c", i32 522, i32 40}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/omapdrm/dss/venc.c", i32 524, i32 4}
!24 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @venc_get_clocks._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @venc_get_clocks._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/omapdrm/dss/venc.c", i32 768, i32 52}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/omapdrm/dss/venc.c", i32 770, i32 31}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/omapdrm/dss/venc.c", i32 772, i32 3}
!33 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @venc_probe_of._entry, !32, !"_entry", i1 false, i1 false}
!37 = !{ptr @venc_probe_of._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/omapdrm/dss/venc.c", i32 785, i32 3}
!40 = !{ptr @venc_probe_of._entry.16, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @venc_probe_of._entry_ptr.18, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/omapdrm/dss/venc.c", i32 734, i32 14}
!44 = !{ptr @venc_bridge_funcs, !45, !"venc_bridge_funcs", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/omapdrm/dss/venc.c", i32 654, i32 38}
!46 = !{ptr @omap_dss_pal_mode, !47, !"omap_dss_pal_mode", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/omapdrm/dss/venc.c", i32 217, i32 38}
!48 = !{ptr @omap_dss_ntsc_mode, !49, !"omap_dss_ntsc_mode", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/omapdrm/dss/venc.c", i32 232, i32 38}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/omapdrm/dss/venc.c", i32 375, i32 2}
!52 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @venc_runtime_put.__UNIQUE_ID_ddebug310, !51, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!55 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!56 = distinct !{null, !57, !"__already_done", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/omapdrm/dss/venc.c", i32 602, i32 3}
!58 = !{ptr @venc_config_ntsc_trm, !59, !"venc_config_ntsc_trm", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/omapdrm/dss/venc.c", i32 167, i32 33}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/omapdrm/dss/venc.c", i32 361, i32 2}
!62 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @venc_runtime_get.__UNIQUE_ID_ddebug309, !61, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!64 = !{ptr @.str.26, !61, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/omapdrm/dss/venc.c", i32 345, i32 4}
!67 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @venc_reset._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @venc_reset._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/omapdrm/dss/venc.c", i32 282, i32 2}
!72 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @venc_write_config.__UNIQUE_ID_ddebug308, !71, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!74 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!75 = distinct !{null, !76, !"modes", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/omapdrm/dss/venc.c", i32 633, i32 40}
!77 = !{ptr @venc_component_ops, !78, !"venc_component_ops", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/omapdrm/dss/venc.c", i32 715, i32 35}
!79 = !{ptr @.str.32, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/omapdrm/dss/venc.c", i32 698, i32 2}
!81 = !{ptr @.str.33, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @venc_bind.__UNIQUE_ID_ddebug311, !80, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!83 = !{ptr @.str.34, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/omapdrm/dss/venc.c", i32 702, i32 47}
!85 = !{ptr @.str.35, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/omapdrm/dss/venc.c", i32 469, i32 2}
!87 = !{ptr @.str.36, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.37, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/omapdrm/dss/venc.c", i32 470, i32 2}
!90 = !{ptr @.str.38, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/omapdrm/dss/venc.c", i32 471, i32 2}
!92 = !{ptr @.str.39, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/omapdrm/dss/venc.c", i32 472, i32 2}
!94 = !{ptr @.str.40, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/omapdrm/dss/venc.c", i32 473, i32 2}
!96 = !{ptr @.str.41, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/omapdrm/dss/venc.c", i32 474, i32 2}
!98 = !{ptr @.str.42, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/omapdrm/dss/venc.c", i32 475, i32 2}
!100 = !{ptr @.str.43, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/omapdrm/dss/venc.c", i32 476, i32 2}
!102 = !{ptr @.str.44, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/omapdrm/dss/venc.c", i32 477, i32 2}
!104 = !{ptr @.str.45, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/omapdrm/dss/venc.c", i32 478, i32 2}
!106 = !{ptr @.str.46, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/omapdrm/dss/venc.c", i32 479, i32 2}
!108 = !{ptr @.str.47, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/omapdrm/dss/venc.c", i32 480, i32 2}
!110 = !{ptr @.str.48, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/omapdrm/dss/venc.c", i32 481, i32 2}
!112 = !{ptr @.str.49, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/omapdrm/dss/venc.c", i32 482, i32 2}
!114 = !{ptr @.str.50, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/omapdrm/dss/venc.c", i32 483, i32 2}
!116 = !{ptr @.str.51, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/gpu/drm/omapdrm/dss/venc.c", i32 484, i32 2}
!118 = !{ptr @.str.52, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/omapdrm/dss/venc.c", i32 485, i32 2}
!120 = !{ptr @.str.53, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/gpu/drm/omapdrm/dss/venc.c", i32 486, i32 2}
!122 = !{ptr @.str.54, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/omapdrm/dss/venc.c", i32 487, i32 2}
!124 = !{ptr @.str.55, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/gpu/drm/omapdrm/dss/venc.c", i32 488, i32 2}
!126 = !{ptr @.str.56, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/omapdrm/dss/venc.c", i32 489, i32 2}
!128 = !{ptr @.str.57, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/gpu/drm/omapdrm/dss/venc.c", i32 490, i32 2}
!130 = !{ptr @.str.58, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/gpu/drm/omapdrm/dss/venc.c", i32 491, i32 2}
!132 = !{ptr @.str.59, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/gpu/drm/omapdrm/dss/venc.c", i32 492, i32 2}
!134 = !{ptr @.str.60, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/gpu/drm/omapdrm/dss/venc.c", i32 493, i32 2}
!136 = !{ptr @.str.61, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/gpu/drm/omapdrm/dss/venc.c", i32 494, i32 2}
!138 = !{ptr @.str.62, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/gpu/drm/omapdrm/dss/venc.c", i32 495, i32 2}
!140 = !{ptr @.str.63, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/gpu/drm/omapdrm/dss/venc.c", i32 496, i32 2}
!142 = !{ptr @.str.64, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/gpu/drm/omapdrm/dss/venc.c", i32 497, i32 2}
!144 = !{ptr @.str.65, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/gpu/drm/omapdrm/dss/venc.c", i32 498, i32 2}
!146 = !{ptr @.str.66, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/gpu/drm/omapdrm/dss/venc.c", i32 499, i32 2}
!148 = !{ptr @.str.67, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/gpu/drm/omapdrm/dss/venc.c", i32 500, i32 2}
!150 = !{ptr @.str.68, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/gpu/drm/omapdrm/dss/venc.c", i32 501, i32 2}
!152 = !{ptr @.str.69, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/gpu/drm/omapdrm/dss/venc.c", i32 502, i32 2}
!154 = !{ptr @.str.70, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/gpu/drm/omapdrm/dss/venc.c", i32 503, i32 2}
!156 = !{ptr @.str.71, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/gpu/drm/omapdrm/dss/venc.c", i32 504, i32 2}
!158 = !{ptr @.str.72, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/gpu/drm/omapdrm/dss/venc.c", i32 505, i32 2}
!160 = !{ptr @.str.73, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/gpu/drm/omapdrm/dss/venc.c", i32 506, i32 2}
!162 = !{ptr @.str.74, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/gpu/drm/omapdrm/dss/venc.c", i32 507, i32 2}
!164 = !{ptr @.str.75, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/gpu/drm/omapdrm/dss/venc.c", i32 508, i32 2}
!166 = !{ptr @.str.76, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/gpu/drm/omapdrm/dss/venc.c", i32 509, i32 2}
!168 = !{ptr @venc_of_match, !169, !"venc_of_match", i1 false, i1 false}
!169 = !{!"../drivers/gpu/drm/omapdrm/dss/venc.c", i32 907, i32 34}
!170 = !{ptr @venc_pm_ops, !171, !"venc_pm_ops", i1 false, i1 false}
!171 = !{!"../drivers/gpu/drm/omapdrm/dss/venc.c", i32 902, i32 32}
!172 = !{i32 1, !"wchar_size", i32 2}
!173 = !{i32 1, !"min_enum_size", i32 4}
!174 = !{i32 8, !"branch-target-enforcement", i32 0}
!175 = !{i32 8, !"sign-return-address", i32 0}
!176 = !{i32 8, !"sign-return-address-all", i32 0}
!177 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!178 = !{i32 7, !"uwtable", i32 1}
!179 = !{i32 7, !"frame-pointer", i32 2}
!180 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!181 = !{i8 0, i8 2}
!182 = !{!"auto-init"}
!183 = !{!"branch_weights", i32 2000, i32 1}
!184 = !{i64 4088404}
!185 = !{i64 2148712782, i64 2148712787, i64 2148712800, i64 2148712844, i64 2148712878, i64 2148712899}
!186 = !{!"branch_weights", i32 1, i32 2000}
!187 = !{i64 4088822}
!188 = !{i64 2148230386}
!189 = !{i64 715209, i64 715234, i64 715256, i64 715272, i64 715284, i64 715304, i64 715328, i64 715344, i64 715356}
!190 = !{i64 2148230574}
