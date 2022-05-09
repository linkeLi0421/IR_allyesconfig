; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/bridge/analogix/anx7625.c_pt.bc'
source_filename = "../drivers/gpu/drm/bridge/analogix/anx7625.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.drm_bridge_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mipi_dsi_device_info = type { [20 x i8], i32, ptr }
%struct.hdmi_codec_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anx7625_platform_data = type { ptr, ptr, [3 x %struct.regulator_bulk_data], ptr, i32, i32, i32, i32, i32, [20 x i32], i32, [20 x i32], i32, ptr }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.anx7625_data = type { %struct.anx7625_platform_data, ptr, i32, i32, %struct.mutex, ptr, %struct.anx7625_i2c_client, ptr, %struct.s_edid_data, ptr, ptr, %struct.work_struct, ptr, i8, %struct.display_timing, i8, %struct.drm_bridge, i8, ptr }
%struct.anx7625_i2c_client = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.s_edid_data = type { i32, [512 x i8] }
%struct.display_timing = type { %struct.timing_entry, %struct.timing_entry, %struct.timing_entry, %struct.timing_entry, %struct.timing_entry, %struct.timing_entry, %struct.timing_entry, %struct.timing_entry, %struct.timing_entry, i32 }
%struct.timing_entry = type { i32, i32, i32 }
%struct.drm_bridge = type { %struct.drm_private_obj, ptr, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.mipi_dsi_device = type { ptr, %struct.device, [20 x i8], i32, i32, i32, i32, i32, i32 }
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i32, i64, ptr }
%struct.hdmi_codec_pdata = type { ptr, i8, i32, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.hdmi_codec_params = type { %struct.hdmi_audio_infoframe, %struct.snd_aes_iec958, i32, i32, i32 }
%struct.hdmi_audio_infoframe = type { i32, i8, i8, i8, i32, i32, i32, i32, i8, i8, i8 }
%struct.snd_aes_iec958 = type { [24 x i8], [147 x i8], i8, [4 x i8] }
%struct.of_endpoint = type { i32, i32, ptr }

@__initcall__kmod_anx7625__314_2268_anx7625_driver_init6 = internal global ptr @anx7625_driver_init, section ".initcall6.init", align 4
@anx7625_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @anx7625_i2c_probe, ptr @anx7625_i2c_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @anx_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @anx7625_pm_ops, ptr null, ptr null }, ptr @anx7625_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_anx7625_driver_exit = internal global ptr @anx7625_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description315 = internal constant [43 x i8] c"anx7625.description=MIPI2DP anx7625 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author316 = internal constant [45 x i8] c"anx7625.author=Xin Ji <xji@analogixsemi.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file317 = internal constant [53 x i8] c"anx7625.file=drivers/gpu/drm/bridge/analogix/anx7625\00", section ".modinfo", align 1
@__UNIQUE_ID_license318 = internal constant [23 x i8] c"anx7625.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_version319 = internal constant [23 x i8] c"anx7625.version=0.1.04\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"anx7625\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0.1.04\00", [25 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@anx_match_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"analogix,anx7625\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@anx7625_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @anx7625_suspend, ptr @anx7625_resume, ptr @anx7625_suspend, ptr @anx7625_resume, ptr @anx7625_suspend, ptr @anx7625_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @anx7625_runtime_pm_suspend, ptr @anx7625_runtime_pm_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@anx7625_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"anx7625\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"*ERROR* anx7625's i2c bus doesn't support\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"*ERROR* fail to allocate driver data\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"*ERROR* fail to parse DT : %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vdd10\00", [26 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vdd18\00", [26 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vdd33\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"*ERROR* fail to get power supplies: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@anx7625_i2c_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&platform->lock\00", [16 x i8] zeroinitializer }, align 32
@anx7625_i2c_probe.__key.12 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&platform->work)\00", [61 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"anx7625_work\00", [19 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"*ERROR* fail to create work queue\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"anx7625-intp\00", [19 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"*ERROR* fail to request irq\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"*ERROR* fail to reserve I2C bus.\0A\00", [62 x i8] zeroinitializer }, align 32
@anx7625_bridge_funcs = internal constant { %struct.drm_bridge_funcs, [60 x i8] } { %struct.drm_bridge_funcs { ptr @anx7625_bridge_attach, ptr null, ptr @anx7625_bridge_mode_valid, ptr @anx7625_bridge_mode_fixup, ptr @anx7625_bridge_disable, ptr null, ptr @anx7625_bridge_mode_set, ptr null, ptr @anx7625_bridge_enable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @anx7625_bridge_detect, ptr null, ptr @anx7625_bridge_get_edid, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"*ERROR* Fail to attach to dsi : %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"probe done\0A\00", [20 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.21 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"*ERROR* fail to get internal panel.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bus-type\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"data-lanes\00", [21 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"found MIPI DPI host node.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"found MIPI DSI host node.\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"analogix,audio-enable\00", [42 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"get panel node.\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"analogix,lane0-swing\00", [43 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"analogix,lane1-swing\00", [43 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"init gpio\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"low power mode, pon %d, reset %d.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"not low power mode.\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"*ERROR* cannot clear alert reg.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"*ERROR* cannot access interrupt change reg.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"0x7e:0x44=%x\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"*ERROR* cannot clear interrupt change reg.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"*ERROR* cannot clear interrupt status.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"0x7e:0x45=%x\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"*ERROR* fail to write i2c id=%x\0A:%x\00", [60 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"*ERROR* fail to access i2c id=%x\0A:%x\00", [59 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"*ERROR* read i2c fail id=%x:%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"dp_hpd_change_default_func: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" HPD low\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c" HPD high\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"filter useless HPD\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"*ERROR* fail to setting HDCP/auth\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Secure OCM version=%02x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"disable PD feature fail.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"disable PD feature succeeded.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"drm attach\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"*ERROR* Parent encoder object not found\00", [56 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"drm mode checking\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drm mode invalid, pixelclock too high.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"drm mode valid.\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"drm mode fixup set\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"before mode fixup\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"hsync(%d), hfp(%d), hbp(%d), clock(%d)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"hsync_start(%d), hsync_end(%d), htot(%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@anx7625_bridge_mode_fixup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.63, i32 1860, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014[drm] illegal hblanking timing, use default.\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"anx7625_bridge_mode_fixup\00", [38 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/gpu/drm/bridge/analogix/anx7625.c\00", [54 x i8] zeroinitializer }, align 32
@anx7625_bridge_mode_fixup._entry_ptr = internal global ptr @anx7625_bridge_mode_fixup._entry, section ".printk_index", align 4
@anx7625_bridge_mode_fixup._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.62, ptr @.str.63, i32 1861, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\014[drm] hfp(%d), hbp(%d), hsync(%d).\0A\00", [58 x i8] zeroinitializer }, align 32
@anx7625_bridge_mode_fixup._entry_ptr.66 = internal global ptr @anx7625_bridge_mode_fixup._entry.64, section ".printk_index", align 4
@.str.67 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"after mode fixup\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"drm disable\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"stop dp output\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"*ERROR* IO error : mute video fail\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"drm mode set\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pixelclock(%d).\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"hactive(%d), hsync(%d), hfp(%d), hbp(%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"vactive(%d), vsync(%d), vfp(%d), vbp(%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"hdisplay(%d),hsync_start(%d).\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"hsync_end(%d),htotal(%d).\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"vdisplay(%d),vsync_start(%d).\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"vsync_end(%d),vtotal(%d).\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"drm enable\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"*ERROR* mipi not set display timing yet.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"*ERROR* MIPI phy setup error.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"config dpi\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"*ERROR* IO error : disable dsc failed.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"*ERROR* config bit matrix failed.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"*ERROR* mipi phy(dpi) setup failed.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"*ERROR* IO error : enable mipi rx failed.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"*ERROR* IO error : dpi phy set failed.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"config dsi.\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"*ERROR* IO error : api dsi config error.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"*ERROR* IO error : enable mipi rx fail.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"success to config DSI\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"*ERROR* IO error : swap dsi lane 3 fail.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"*ERROR* dsi video timing config fail\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"*ERROR* IO error : mipi dsi enable init fail.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"*ERROR* IO error : access MIPI_SWAP.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"*ERROR* cannot get property m n value.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"compute M(%lu), N(%lu), divider(%d).\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"*ERROR* mipi dsi setup IO error.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"pixelclock too high, act(%d), maximum(%lu)\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"pixelclock too low, act(%d), maximum(%lu)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"cannot find property post_divider(%d)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"act clock(%u) large than maximum(%lu)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"*ERROR* IO error.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"drm bridge detect\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sink detect\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"drm bridge get edid\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"*ERROR* Fail to allocate buffer\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"*ERROR* Fail to read EDID: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"*ERROR* access aux channel IO error.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"*ERROR* WARNING! edid check fail!\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"*ERROR* Failed to reset aux channel!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"*ERROR* IO error : access AUX BUFF.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c" EDID Block = %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"*ERROR* aux operation fail!\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"*ERROR* aux status %02x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"edid read fail, reset!\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"*ERROR* read i2c block fail id=%x:%x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"*ERROR* IO error : aux initial fail.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"*ERROR* segment read fail, reset!\0A\00", [61 x i8] zeroinitializer }, align 32
@__const.anx7625_attach_dsi.info = private unnamed_addr constant %struct.mipi_dsi_device_info { [20 x i8] c"anx7625\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, ptr null }, align 4
@.str.120 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"attach dsi\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"*ERROR* fail to find dsi host.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"*ERROR* fail to create dsi device.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"*ERROR* fail to attach dsi to host.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"attach dsi succeeded.\0A\00", [41 x i8] zeroinitializer }, align 32
@anx7625_codec_ops = internal constant { %struct.hdmi_codec_ops, [60 x i8] } { %struct.hdmi_codec_ops { ptr null, ptr @anx7625_audio_hw_params, ptr null, ptr @anx7625_audio_shutdown, ptr null, ptr null, ptr @anx7625_hdmi_i2s_get_dai_id, ptr @anx7625_audio_hook_plugged_cb, i8 0 }, [60 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hdmi-audio-codec\00", [47 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bound to %s\00", [20 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"*ERROR* only supports DSP_A\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"setting %d Hz, %d bit, %d channels\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"wordlength: %d bit not support\00", [33 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"channel number: %d not support\00", [33 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sample rate: %d not support\00", [36 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"*ERROR* IO error : config audio.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"stop audio\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"unbound to %s\00", [18 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"not low power mode!\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cannot disable supplies %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"power down\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cannot enable supply %d: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"power on !\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"*ERROR* IO error : access flash load.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Firmware ver %02x%02x,\00", [41 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Driver version %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"*ERROR* no hpd.\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"system status: 0x%x. HPD raise up.\0A\00", [60 x i8] zeroinitializer }, align 32
@switch.table.anx7625_bridge_enable = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\08\08\08\08\0C\08\0F\0F", [24 x i8] zeroinitializer }, align 32
@switch.table.anx7625_audio_hw_params = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\02\02\04\02\0A\02\02\02\0B", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@__sancov_gen_cov_switch_values.145 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.146 = internal global [6 x i64] [i64 4, i64 8, i64 2, i64 4, i64 6, i64 8]
@__sancov_gen_cov_switch_values.147 = internal global [9 x i64] [i64 7, i64 32, i64 32000, i64 44100, i64 48000, i64 88200, i64 96000, i64 176400, i64 192000]
@___asan_gen_.148 = private unnamed_addr constant [15 x i8] c"anx7625_driver\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2256, i32 26 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2273, i32 1 }
@___asan_gen_.160 = private unnamed_addr constant [16 x i8] c"anx_match_table\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2250, i32 34 }
@___asan_gen_.163 = private unnamed_addr constant [15 x i8] c"anx7625_pm_ops\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2087, i32 32 }
@___asan_gen_.166 = private unnamed_addr constant [11 x i8] c"anx7625_id\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2243, i32 35 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2103, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2109, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2118, i32 4 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2125, i32 30 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2126, i32 30 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2127, i32 30 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2131, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2136, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2140, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2141, i32 41 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2144, i32 4 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2153, i32 7 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2155, i32 4 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2162, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant [21 x i8] c"anx7625_bridge_funcs\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1951, i32 38 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2192, i32 4 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 2200, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1345, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1353, i32 33 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1356, i32 49 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1367, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1369, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1371, i32 32 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1386, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1310, i32 8 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1320, i32 8 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1096, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1100, i32 32 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1103, i32 32 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1107, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1112, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1238, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1245, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1248, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1253, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1263, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1267, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 125, i32 3 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 73, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 90, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1216, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1220, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1224, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1129, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1144, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1152, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1040, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1042, i32 3 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1698, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1703, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1728, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1732, i32 3 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1737, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1798, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1809, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1810, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1812, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1860, i32 3 }
@___asan_gen_.361 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1861, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1891, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1922, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 696, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 707, i32 3 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1749, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1763, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1764, i32 2 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1769, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1774, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1777, i32 2 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1780, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1783, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1910, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 678, i32 3 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 688, i32 3 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 638, i32 2 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 644, i32 3 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 650, i32 3 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 656, i32 3 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 667, i32 3 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 628, i32 3 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 575, i32 2 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 584, i32 3 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 595, i32 3 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 597, i32 3 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 512, i32 3 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 544, i32 3 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 565, i32 3 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 495, i32 3 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 402, i32 3 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 406, i32 2 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 482, i32 3 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 280, i32 3 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 288, i32 3 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 305, i32 4 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 324, i32 3 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 366, i32 3 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1935, i32 2 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1435, i32 2 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1946, i32 2 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1405, i32 3 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1420, i32 3 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 865, i32 3 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 946, i32 3 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 953, i32 3 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 754, i32 3 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 758, i32 2 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 202, i32 3 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 209, i32 3 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 779, i32 4 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 107, i32 3 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 819, i32 3 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 830, i32 4 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1658, i32 2 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1662, i32 3 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1668, i32 3 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1680, i32 3 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1686, i32 2 }
@___asan_gen_.541 = private unnamed_addr constant [18 x i8] c"anx7625_codec_ops\00", align 1
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1604, i32 36 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1633, i32 8 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1641, i32 2 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1453, i32 3 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1457, i32 2 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1481, i32 3 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1504, i32 3 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1541, i32 3 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1551, i32 3 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1560, i32 2 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1620, i32 2 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1002, i32 3 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1014, i32 3 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1016, i32 2 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 973, i32 4 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 989, i32 2 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1054, i32 3 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1062, i32 2 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1069, i32 2 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1175, i32 3 }
@___asan_gen_.601 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.602 = private constant [45 x i8] c"../drivers/gpu/drm/bridge/analogix/anx7625.c\00", align 1
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.602, i32 1179, i32 2 }
@___asan_gen_.604 = private unnamed_addr constant [35 x i8] c"switch.table.anx7625_bridge_enable\00", align 1
@___asan_gen_.605 = private unnamed_addr constant [37 x i8] c"switch.table.anx7625_audio_hw_params\00", align 1
@llvm.compiler.used = appending global [165 x ptr] [ptr @__UNIQUE_ID_author316, ptr @__UNIQUE_ID_description315, ptr @__UNIQUE_ID_file317, ptr @__UNIQUE_ID_license318, ptr @__UNIQUE_ID_version319, ptr @__exitcall_anx7625_driver_exit, ptr @__initcall__kmod_anx7625__314_2268_anx7625_driver_init6, ptr @__modver_attr, ptr @anx7625_bridge_mode_fixup._entry, ptr @anx7625_bridge_mode_fixup._entry.64, ptr @anx7625_bridge_mode_fixup._entry_ptr, ptr @anx7625_bridge_mode_fixup._entry_ptr.66, ptr @anx7625_driver_exit, ptr @anx7625_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @anx_match_table, ptr @anx7625_pm_ops, ptr @anx7625_id, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @anx7625_i2c_probe.__key, ptr @.str.11, ptr @anx7625_i2c_probe.__key.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @anx7625_bridge_funcs, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @anx7625_codec_ops, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @switch.table.anx7625_bridge_enable, ptr @switch.table.anx7625_audio_hw_params], section "llvm.metadata"
@0 = internal global [154 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anx7625_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anx_match_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anx7625_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anx7625_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anx7625_i2c_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anx7625_i2c_probe.__key.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anx7625_bridge_funcs to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anx7625_bridge_mode_fixup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anx7625_bridge_mode_fixup._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anx7625_codec_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.anx7625_bridge_enable to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.anx7625_audio_hw_params to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @anx7625_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @anx7625_driver) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @anx7625_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @anx7625_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @anx7625_i2c_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %num_regs.i.i = alloca i32, align 4
  %panel.i = alloca ptr, align 4
  %bus_type.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter, align 8
  %algo.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %5(ptr noundef %1) #8
  %and.i = and i32 %call.i.i, 201326592
  call void @__sanitizer_cov_trace_const_cmp4(i32 201326592, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 201326592
  br i1 %cmp.i.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 1360) #11
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.5) #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %of_node.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %7 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %panel.i) #8
  %9 = ptrtoint ptr %panel.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 -1 to ptr), ptr %panel.i, align 4, !annotation !318
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bus_type.i) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_regs.i.i) #8
  %10 = ptrtoint ptr %num_regs.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %num_regs.i.i, align 4, !annotation !318
  %call.i.i185 = call ptr @of_get_property(ptr noundef %8, ptr noundef nonnull @.str.28, ptr noundef nonnull %num_regs.i.i) #8
  %tobool.not.i.i = icmp eq ptr %call.i.i185, null
  br i1 %tobool.not.i.i, label %if.end5.if.end4.i.i_crit_edge, label %if.then.i.i

if.end5.if.end4.i.i_crit_edge:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i.i

if.then.i.i:                                      ; preds = %if.end5
  %11 = ptrtoint ptr %num_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_regs.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %12)
  %cmp.i.i = icmp sgt i32 %12, 20
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.then.i.i.if.end.i.i_crit_edge

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then1.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %num_regs.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 20, ptr %num_regs.i.i, align 4
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then1.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %14 = ptrtoint ptr %num_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_regs.i.i, align 4
  %dp_lane0_swing_reg_cnt.i.i = getelementptr inbounds %struct.anx7625_platform_data, ptr %call7.i.i, i32 0, i32 8
  %16 = ptrtoint ptr %dp_lane0_swing_reg_cnt.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %dp_lane0_swing_reg_cnt.i.i, align 8
  %17 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %of_node.i, align 8
  %lane0_reg_data.i.i = getelementptr inbounds %struct.anx7625_platform_data, ptr %call7.i.i, i32 0, i32 9
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %18, ptr noundef nonnull @.str.28, ptr noundef %lane0_reg_data.i.i, i32 noundef %15, i32 noundef 0) #8
  br label %if.end4.i.i

if.end4.i.i:                                      ; preds = %if.end.i.i, %if.end5.if.end4.i.i_crit_edge
  %19 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %of_node.i, align 8
  %call6.i.i = call ptr @of_get_property(ptr noundef %20, ptr noundef nonnull @.str.29, ptr noundef nonnull %num_regs.i.i) #8
  %tobool7.not.i.i = icmp eq ptr %call6.i.i, null
  br i1 %tobool7.not.i.i, label %if.end4.i.i.anx7625_get_swing_setting.exit.i_crit_edge, label %if.then8.i.i

if.end4.i.i.anx7625_get_swing_setting.exit.i_crit_edge: ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %anx7625_get_swing_setting.exit.i

if.then8.i.i:                                     ; preds = %if.end4.i.i
  %21 = ptrtoint ptr %num_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_regs.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %22)
  %cmp9.i.i = icmp sgt i32 %22, 20
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.then8.i.i.if.end11.i.i_crit_edge

if.then8.i.i.if.end11.i.i_crit_edge:              ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i.i

if.then10.i.i:                                    ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %num_regs.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 20, ptr %num_regs.i.i, align 4
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %if.then10.i.i, %if.then8.i.i.if.end11.i.i_crit_edge
  %24 = ptrtoint ptr %num_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_regs.i.i, align 4
  %dp_lane1_swing_reg_cnt.i.i = getelementptr inbounds %struct.anx7625_platform_data, ptr %call7.i.i, i32 0, i32 10
  %26 = ptrtoint ptr %dp_lane1_swing_reg_cnt.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %dp_lane1_swing_reg_cnt.i.i, align 4
  %27 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %of_node.i, align 8
  %lane1_reg_data.i.i = getelementptr inbounds %struct.anx7625_platform_data, ptr %call7.i.i, i32 0, i32 11
  %call.i1.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %28, ptr noundef nonnull @.str.29, ptr noundef %lane1_reg_data.i.i, i32 noundef %25, i32 noundef 0) #8
  br label %anx7625_get_swing_setting.exit.i

anx7625_get_swing_setting.exit.i:                 ; preds = %if.end11.i.i, %if.end4.i.i.anx7625_get_swing_setting.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_regs.i.i) #8
  %is_dpi.i = getelementptr inbounds %struct.anx7625_platform_data, ptr %call7.i.i, i32 0, i32 5
  %29 = ptrtoint ptr %is_dpi.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %is_dpi.i, align 4
  %call1.i = call ptr @of_graph_get_remote_node(ptr noundef %8, i32 noundef 0, i32 noundef 0) #8
  %mipi_host_node.i = getelementptr inbounds %struct.anx7625_platform_data, ptr %call7.i.i, i32 0, i32 13
  %30 = ptrtoint ptr %mipi_host_node.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call1.i, ptr %mipi_host_node.i, align 4
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %anx7625_get_swing_setting.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.21) #8
  br label %anx7625_parse_dt.exit.thread

if.end.i:                                         ; preds = %anx7625_get_swing_setting.exit.i
  %31 = ptrtoint ptr %bus_type.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 5, ptr %bus_type.i, align 4
  %call3.i = call ptr @of_graph_get_endpoint_by_regs(ptr noundef %8, i32 noundef 0, i32 noundef 0) #8
  %tobool4.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool4.not.i, label %if.end.i.if.end11.i_crit_edge, label %if.then5.i

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i

if.then5.i:                                       ; preds = %if.end.i
  %call.i.i78.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call3.i, ptr noundef nonnull @.str.22, ptr noundef nonnull %bus_type.i, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i78.i)
  %tobool7.not.i = icmp sgt i32 %call.i.i78.i, -1
  br i1 %tobool7.not.i, label %if.then5.i.if.end9.i_crit_edge, label %if.then8.i

if.then5.i.if.end9.i_crit_edge:                   ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

if.then8.i:                                       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %bus_type.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %bus_type.i, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then8.i, %if.then5.i.if.end9.i_crit_edge
  %call.i79.i = call i32 @of_property_count_elems_of_size(ptr noundef nonnull %call3.i, ptr noundef nonnull @.str.23, i32 noundef 4) #8
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.end9.i, %if.end.i.if.end11.i_crit_edge
  %mipi_lanes.0.i = phi i32 [ %call.i79.i, %if.end9.i ], [ 4, %if.end.i.if.end11.i_crit_edge ]
  %33 = ptrtoint ptr %bus_type.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bus_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %34)
  %cmp.i186 = icmp eq i32 %34, 5
  br i1 %cmp.i186, label %if.end14.thread.i, label %if.end14.i

if.end14.thread.i:                                ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %is_dpi.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %is_dpi.i, align 4
  %mipi_lanes1582.i = getelementptr inbounds %struct.anx7625_platform_data, ptr %call7.i.i, i32 0, i32 6
  %36 = add i32 %mipi_lanes.0.i, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %36)
  %37 = icmp ult i32 %36, -4
  %spec.store.select86.i = select i1 %37, i32 4, i32 %mipi_lanes.0.i
  %38 = ptrtoint ptr %mipi_lanes1582.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %spec.store.select86.i, ptr %mipi_lanes1582.i, align 8
  br label %if.else.i

if.end14.i:                                       ; preds = %if.end11.i
  %39 = ptrtoint ptr %is_dpi.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %.pr.i = load i32, ptr %is_dpi.i, align 4
  %mipi_lanes15.i = getelementptr inbounds %struct.anx7625_platform_data, ptr %call7.i.i, i32 0, i32 6
  %40 = add i32 %mipi_lanes.0.i, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %40)
  %41 = icmp ult i32 %40, -4
  %spec.store.select.i = select i1 %41, i32 4, i32 %mipi_lanes.0.i
  %42 = ptrtoint ptr %mipi_lanes15.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %spec.store.select.i, ptr %mipi_lanes15.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %tobool24.not.i = icmp eq i32 %.pr.i, 0
  br i1 %tobool24.not.i, label %if.end14.i.if.else.i_crit_edge, label %if.end14.i.if.end26.i_crit_edge

if.end14.i.if.end26.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.i

if.end14.i.if.else.i_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.else.i:                                        ; preds = %if.end14.i.if.else.i_crit_edge, %if.end14.thread.i
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.else.i, %if.end14.i.if.end26.i_crit_edge
  %.str.25.sink.i = phi ptr [ @.str.25, %if.else.i ], [ @.str.24, %if.end14.i.if.end26.i_crit_edge ]
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %dev1, i32 noundef 2, ptr noundef nonnull %.str.25.sink.i) #8
  %call.i80.i = call ptr @of_find_property(ptr noundef %8, ptr noundef nonnull @.str.26, ptr noundef null) #8
  %tobool.i.not.i = icmp eq ptr %call.i80.i, null
  br i1 %tobool.i.not.i, label %if.end26.i.if.end29.i_crit_edge, label %if.then28.i

if.end26.i.if.end29.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29.i

if.then28.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  %audio_en.i = getelementptr inbounds %struct.anx7625_platform_data, ptr %call7.i.i, i32 0, i32 7
  %43 = ptrtoint ptr %audio_en.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %audio_en.i, align 4
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then28.i, %if.end26.i.if.end29.i_crit_edge
  %call30.i = call i32 @drm_of_find_panel_or_bridge(ptr noundef %8, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %panel.i, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %cmp31.i = icmp slt i32 %call30.i, 0
  br i1 %cmp31.i, label %if.then32.i, label %if.end36.i

if.then32.i:                                      ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %call30.i)
  %cmp33.i = icmp eq i32 %call30.i, -19
  br i1 %cmp33.i, label %if.then32.i.anx7625_parse_dt.exit.thread205_crit_edge, label %if.then32.i.anx7625_parse_dt.exit_crit_edge

if.then32.i.anx7625_parse_dt.exit_crit_edge:      ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %anx7625_parse_dt.exit

if.then32.i.anx7625_parse_dt.exit.thread205_crit_edge: ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %anx7625_parse_dt.exit.thread205

if.end36.i:                                       ; preds = %if.end29.i
  %44 = ptrtoint ptr %panel.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %panel.i, align 4
  %tobool37.not.i = icmp eq ptr %45, null
  br i1 %tobool37.not.i, label %if.end36.i.anx7625_parse_dt.exit.thread_crit_edge, label %if.end39.i

if.end36.i.anx7625_parse_dt.exit.thread_crit_edge: ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %anx7625_parse_dt.exit.thread

if.end39.i:                                       ; preds = %if.end36.i
  %call40.i = call ptr @devm_drm_panel_bridge_add(ptr noundef %dev1, ptr noundef nonnull %45) #8
  %panel_bridge.i = getelementptr inbounds %struct.anx7625_platform_data, ptr %call7.i.i, i32 0, i32 3
  %46 = ptrtoint ptr %panel_bridge.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call40.i, ptr %panel_bridge.i, align 4
  %cmp.i81.i = icmp ugt ptr %call40.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i81.i, label %if.then43.i, label %if.end46.i

if.then43.i:                                      ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %call40.i to i32
  br label %anx7625_parse_dt.exit

if.end46.i:                                       ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %dev1, i32 noundef 2, ptr noundef nonnull @.str.27) #8
  br label %anx7625_parse_dt.exit.thread205

anx7625_parse_dt.exit.thread:                     ; preds = %if.end36.i.anx7625_parse_dt.exit.thread_crit_edge, %if.then.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bus_type.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %panel.i) #8
  br label %if.then10

anx7625_parse_dt.exit.thread205:                  ; preds = %if.end46.i, %if.then32.i.anx7625_parse_dt.exit.thread205_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bus_type.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %panel.i) #8
  br label %if.end12

anx7625_parse_dt.exit:                            ; preds = %if.then43.i, %if.then32.i.anx7625_parse_dt.exit_crit_edge
  %retval.0.i = phi i32 [ %47, %if.then43.i ], [ %call30.i, %if.then32.i.anx7625_parse_dt.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bus_type.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %panel.i) #8
  %48 = zext i32 %retval.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values)
  switch i32 %retval.0.i, label %anx7625_parse_dt.exit.if.then10_crit_edge [
    i32 0, label %anx7625_parse_dt.exit.if.end12_crit_edge
    i32 -517, label %anx7625_parse_dt.exit.free_platform_crit_edge
  ]

anx7625_parse_dt.exit.free_platform_crit_edge:    ; preds = %anx7625_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_platform

anx7625_parse_dt.exit.if.end12_crit_edge:         ; preds = %anx7625_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

anx7625_parse_dt.exit.if.then10_crit_edge:        ; preds = %anx7625_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then10

if.then10:                                        ; preds = %anx7625_parse_dt.exit.if.then10_crit_edge, %anx7625_parse_dt.exit.thread
  %retval.0.i203 = phi i32 [ -19, %anx7625_parse_dt.exit.thread ], [ %retval.0.i, %anx7625_parse_dt.exit.if.then10_crit_edge ]
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.6, i32 noundef %retval.0.i203) #8
  br label %free_platform

if.end12:                                         ; preds = %anx7625_parse_dt.exit.if.end12_crit_edge, %anx7625_parse_dt.exit.thread205
  %client13 = getelementptr inbounds %struct.anx7625_data, ptr %call7.i.i, i32 0, i32 5
  %49 = ptrtoint ptr %client13 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %client, ptr %client13, align 8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %50 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %supplies = getelementptr inbounds %struct.anx7625_platform_data, ptr %call7.i.i, i32 0, i32 2
  %51 = ptrtoint ptr %supplies to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @.str.7, ptr %supplies, align 8
  %arrayidx15 = getelementptr %struct.anx7625_platform_data, ptr %call7.i.i, i32 0, i32 2, i32 1
  %52 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @.str.8, ptr %arrayidx15, align 4
  %arrayidx18 = getelementptr %struct.anx7625_platform_data, ptr %call7.i.i, i32 0, i32 2, i32 2
  %53 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @.str.9, ptr %arrayidx18, align 8
  %call21 = call i32 @devm_regulator_bulk_get(ptr noundef %dev1, i32 noundef 3, ptr noundef %supplies) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.then23

if.then23:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.10, i32 noundef %call21) #8
  br label %cleanup

if.end24:                                         ; preds = %if.end12
  %54 = ptrtoint ptr %client13 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %client13, align 8
  %dev1.i = getelementptr inbounds %struct.i2c_client, ptr %55, i32 0, i32 4
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %dev1.i, i32 noundef 2, ptr noundef nonnull @.str.30) #8
  %call.i = call ptr @devm_gpiod_get_optional(ptr noundef %dev1.i, ptr noundef nonnull @.str.31, i32 noundef 3) #8
  %56 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call.i, ptr %call7.i.i, align 8
  %call2.i = call ptr @devm_gpiod_get_optional(ptr noundef %dev1.i, ptr noundef nonnull @.str.32, i32 noundef 3) #8
  %gpio_reset.i = getelementptr inbounds %struct.anx7625_platform_data, ptr %call7.i.i, i32 0, i32 1
  %57 = ptrtoint ptr %gpio_reset.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call2.i, ptr %gpio_reset.i, align 4
  %58 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %call7.i.i, align 8
  %tobool.not.i187 = icmp eq ptr %59, null
  %tobool8.not.i = icmp eq ptr %call2.i, null
  %or.cond.i = select i1 %tobool.not.i187, i1 true, i1 %tobool8.not.i
  %low_power_mode17.i = getelementptr inbounds %struct.anx7625_platform_data, ptr %call7.i.i, i32 0, i32 12
  br i1 %or.cond.i, label %if.else.i189, label %if.then.i188

if.then.i188:                                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %60 = ptrtoint ptr %low_power_mode17.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 1, ptr %low_power_mode17.i, align 8
  %call12.i = call i32 @desc_to_gpio(ptr noundef nonnull %59) #8
  %61 = ptrtoint ptr %gpio_reset.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %gpio_reset.i, align 4
  %call15.i = call i32 @desc_to_gpio(ptr noundef %62) #8
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %dev1.i, i32 noundef 2, ptr noundef nonnull @.str.33, i32 noundef %call12.i, i32 noundef %call15.i) #8
  br label %anx7625_init_gpio.exit

if.else.i189:                                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %63 = ptrtoint ptr %low_power_mode17.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %low_power_mode17.i, align 8
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %dev1.i, i32 noundef 2, ptr noundef nonnull @.str.34) #8
  br label %anx7625_init_gpio.exit

anx7625_init_gpio.exit:                           ; preds = %if.else.i189, %if.then.i188
  %lock = getelementptr inbounds %struct.anx7625_data, ptr %call7.i.i, i32 0, i32 4
  call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.11, ptr noundef nonnull @anx7625_i2c_probe.__key) #8
  %irq = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 6
  %64 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %irq, align 4
  %intp_irq = getelementptr inbounds %struct.anx7625_platform_data, ptr %call7.i.i, i32 0, i32 4
  %66 = ptrtoint ptr %intp_irq to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %intp_irq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool28.not = icmp eq i32 %65, 0
  br i1 %tobool28.not, label %anx7625_init_gpio.exit.if.end49_crit_edge, label %do.body30

anx7625_init_gpio.exit.if.end49_crit_edge:        ; preds = %anx7625_init_gpio.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

do.body30:                                        ; preds = %anx7625_init_gpio.exit
  %work = getelementptr inbounds %struct.anx7625_data, ptr %call7.i.i, i32 0, i32 11
  call void @__init_work(ptr noundef %work, i32 noundef 0) #8
  %67 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 -64, ptr %work, align 8
  %lockdep_map = getelementptr inbounds %struct.anx7625_data, ptr %call7.i.i, i32 0, i32 11, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.13, ptr noundef nonnull @anx7625_i2c_probe.__key.12, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry34 = getelementptr inbounds %struct.anx7625_data, ptr %call7.i.i, i32 0, i32 11, i32 1
  %68 = ptrtoint ptr %entry34 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %entry34, ptr %entry34, align 4
  %prev.i = getelementptr inbounds %struct.anx7625_data, ptr %call7.i.i, i32 0, i32 11, i32 1, i32 1
  %69 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %entry34, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.anx7625_data, ptr %call7.i.i, i32 0, i32 11, i32 2
  %70 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @anx7625_work_func, ptr %func, align 4
  %call38 = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.14, i32 noundef 12, i32 noundef 1) #8
  %workqueue = getelementptr inbounds %struct.anx7625_data, ptr %call7.i.i, i32 0, i32 12
  %71 = ptrtoint ptr %workqueue to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call38, ptr %workqueue, align 4
  %tobool40.not = icmp eq ptr %call38, null
  br i1 %tobool40.not, label %if.then41, label %if.end42

if.then41:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.15) #8
  br label %free_platform

if.end42:                                         ; preds = %do.body30
  %72 = ptrtoint ptr %intp_irq to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %intp_irq, align 8
  %call45 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %73, ptr noundef null, ptr noundef nonnull @anx7625_intr_hpd_isr, i32 noundef 8194, ptr noundef nonnull @.str.16, ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end42.if.end49_crit_edge, label %if.then47

if.end42.if.end49_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

if.then47:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.17) #8
  br label %free_wq

if.end49:                                         ; preds = %if.end42.if.end49_crit_edge, %anx7625_init_gpio.exit.if.end49_crit_edge
  %74 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %adapter, align 8
  %call.i191 = call ptr @i2c_new_dummy_device(ptr noundef %75, i16 noundef zeroext 56) #8
  %i2c.i = getelementptr inbounds %struct.anx7625_data, ptr %call7.i.i, i32 0, i32 6
  %76 = ptrtoint ptr %i2c.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call.i191, ptr %i2c.i, align 4
  %tobool.not.i192 = icmp eq ptr %call.i191, null
  br i1 %tobool.not.i192, label %if.end49.if.then52_crit_edge, label %if.end.i194

if.end49.if.then52_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then52

if.end.i194:                                      ; preds = %if.end49
  %77 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %adapter, align 8
  %call4.i = call ptr @i2c_new_dummy_device(ptr noundef %78, i16 noundef zeroext 61) #8
  %tx_p1_client.i = getelementptr inbounds %struct.anx7625_data, ptr %call7.i.i, i32 0, i32 6, i32 1
  %79 = ptrtoint ptr %tx_p1_client.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call4.i, ptr %tx_p1_client.i, align 8
  %tobool8.not.i193 = icmp eq ptr %call4.i, null
  br i1 %tobool8.not.i193, label %if.end.i194.free_tx_p0.i_crit_edge, label %if.end10.i

if.end.i194.free_tx_p0.i_crit_edge:               ; preds = %if.end.i194
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_tx_p0.i

if.end10.i:                                       ; preds = %if.end.i194
  %80 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %adapter, align 8
  %call12.i195 = call ptr @i2c_new_dummy_device(ptr noundef %81, i16 noundef zeroext 57) #8
  %tx_p2_client.i = getelementptr inbounds %struct.anx7625_data, ptr %call7.i.i, i32 0, i32 6, i32 2
  %82 = ptrtoint ptr %tx_p2_client.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call12.i195, ptr %tx_p2_client.i, align 4
  %tobool16.not.i = icmp eq ptr %call12.i195, null
  br i1 %tobool16.not.i, label %if.end10.i.free_tx_p1.i_crit_edge, label %if.end18.i

if.end10.i.free_tx_p1.i_crit_edge:                ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_tx_p1.i

if.end18.i:                                       ; preds = %if.end10.i
  %83 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %adapter, align 8
  %call20.i = call ptr @i2c_new_dummy_device(ptr noundef %84, i16 noundef zeroext 63) #8
  %rx_p0_client.i = getelementptr inbounds %struct.anx7625_data, ptr %call7.i.i, i32 0, i32 6, i32 3
  %85 = ptrtoint ptr %rx_p0_client.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call20.i, ptr %rx_p0_client.i, align 8
  %tobool24.not.i196 = icmp eq ptr %call20.i, null
  br i1 %tobool24.not.i196, label %if.end18.i.free_tx_p2.i_crit_edge, label %if.end26.i197

if.end18.i.free_tx_p2.i_crit_edge:                ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_tx_p2.i

if.end26.i197:                                    ; preds = %if.end18.i
  %86 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %adapter, align 8
  %call28.i = call ptr @i2c_new_dummy_device(ptr noundef %87, i16 noundef zeroext 66) #8
  %rx_p1_client.i = getelementptr inbounds %struct.anx7625_data, ptr %call7.i.i, i32 0, i32 6, i32 4
  %88 = ptrtoint ptr %rx_p1_client.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %call28.i, ptr %rx_p1_client.i, align 4
  %tobool32.not.i = icmp eq ptr %call28.i, null
  br i1 %tobool32.not.i, label %if.end26.i197.free_rx_p0.i_crit_edge, label %if.end34.i

if.end26.i197.free_rx_p0.i_crit_edge:             ; preds = %if.end26.i197
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_rx_p0.i

if.end34.i:                                       ; preds = %if.end26.i197
  %89 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %adapter, align 8
  %call36.i = call ptr @i2c_new_dummy_device(ptr noundef %90, i16 noundef zeroext 42) #8
  %rx_p2_client.i = getelementptr inbounds %struct.anx7625_data, ptr %call7.i.i, i32 0, i32 6, i32 5
  %91 = ptrtoint ptr %rx_p2_client.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %call36.i, ptr %rx_p2_client.i, align 8
  %tobool40.not.i = icmp eq ptr %call36.i, null
  br i1 %tobool40.not.i, label %if.end34.i.free_rx_p1.i_crit_edge, label %if.end42.i

if.end34.i.free_rx_p1.i_crit_edge:                ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_rx_p1.i

if.end42.i:                                       ; preds = %if.end34.i
  %92 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %adapter, align 8
  %call44.i = call ptr @i2c_new_dummy_device(ptr noundef %93, i16 noundef zeroext 44) #8
  %tcpc_client.i = getelementptr inbounds %struct.anx7625_data, ptr %call7.i.i, i32 0, i32 6, i32 6
  %94 = ptrtoint ptr %tcpc_client.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %call44.i, ptr %tcpc_client.i, align 4
  %tobool48.not.i = icmp eq ptr %call44.i, null
  br i1 %tobool48.not.i, label %free_rx_p2.i, label %if.end53

free_rx_p2.i:                                     ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #10
  %95 = ptrtoint ptr %rx_p2_client.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %rx_p2_client.i, align 8
  call void @i2c_unregister_device(ptr noundef %96) #8
  br label %free_rx_p1.i

free_rx_p1.i:                                     ; preds = %free_rx_p2.i, %if.end34.i.free_rx_p1.i_crit_edge
  %97 = ptrtoint ptr %rx_p1_client.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %rx_p1_client.i, align 4
  call void @i2c_unregister_device(ptr noundef %98) #8
  br label %free_rx_p0.i

free_rx_p0.i:                                     ; preds = %free_rx_p1.i, %if.end26.i197.free_rx_p0.i_crit_edge
  %99 = ptrtoint ptr %rx_p0_client.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %rx_p0_client.i, align 8
  call void @i2c_unregister_device(ptr noundef %100) #8
  br label %free_tx_p2.i

free_tx_p2.i:                                     ; preds = %free_rx_p0.i, %if.end18.i.free_tx_p2.i_crit_edge
  %101 = ptrtoint ptr %tx_p2_client.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %tx_p2_client.i, align 4
  call void @i2c_unregister_device(ptr noundef %102) #8
  br label %free_tx_p1.i

free_tx_p1.i:                                     ; preds = %free_tx_p2.i, %if.end10.i.free_tx_p1.i_crit_edge
  %103 = ptrtoint ptr %tx_p1_client.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %tx_p1_client.i, align 8
  call void @i2c_unregister_device(ptr noundef %104) #8
  br label %free_tx_p0.i

free_tx_p0.i:                                     ; preds = %free_tx_p1.i, %if.end.i194.free_tx_p0.i_crit_edge
  %105 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %i2c.i, align 4
  call void @i2c_unregister_device(ptr noundef %106) #8
  br label %if.then52

if.then52:                                        ; preds = %free_tx_p0.i, %if.end49.if.then52_crit_edge
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.18) #8
  br label %free_wq

if.end53:                                         ; preds = %if.end42.i
  call void @pm_runtime_enable(ptr noundef %dev1) #8
  %107 = ptrtoint ptr %low_power_mode17.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %low_power_mode17.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool55.not = icmp eq i32 %108, 0
  br i1 %tobool55.not, label %if.then56, label %if.end53.if.end58_crit_edge

if.end53.if.end58_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end58

if.then56:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @anx7625_disable_pd_protocol(ptr noundef nonnull %call7.i.i)
  %call.i199 = call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #8
  br label %if.end58

if.end58:                                         ; preds = %if.then56, %if.end53.if.end58_crit_edge
  %109 = ptrtoint ptr %intp_irq to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %intp_irq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool61.not = icmp eq i32 %110, 0
  br i1 %tobool61.not, label %if.end58.if.end66_crit_edge, label %if.then62

if.end58.if.end66_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

if.then62:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  %workqueue63 = getelementptr inbounds %struct.anx7625_data, ptr %call7.i.i, i32 0, i32 12
  %111 = ptrtoint ptr %workqueue63 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %workqueue63, align 4
  %work64 = getelementptr inbounds %struct.anx7625_data, ptr %call7.i.i, i32 0, i32 11
  %call.i200 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %112, ptr noundef %work64) #8
  br label %if.end66

if.end66:                                         ; preds = %if.then62, %if.end58.if.end66_crit_edge
  %bridge = getelementptr inbounds %struct.anx7625_data, ptr %call7.i.i, i32 0, i32 16
  %funcs = getelementptr inbounds %struct.anx7625_data, ptr %call7.i.i, i32 0, i32 16, i32 7
  %113 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr @anx7625_bridge_funcs, ptr %funcs, align 4
  %114 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %of_node.i, align 8
  %of_node69 = getelementptr inbounds %struct.anx7625_data, ptr %call7.i.i, i32 0, i32 16, i32 4
  %116 = ptrtoint ptr %of_node69 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %115, ptr %of_node69, align 4
  %ops = getelementptr inbounds %struct.anx7625_data, ptr %call7.i.i, i32 0, i32 16, i32 9
  %panel_bridge = getelementptr inbounds %struct.anx7625_platform_data, ptr %call7.i.i, i32 0, i32 3
  %117 = ptrtoint ptr %panel_bridge to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %panel_bridge, align 4
  %tobool72.not = icmp eq ptr %118, null
  %spec.store.select = select i1 %tobool72.not, i32 7, i32 2
  %119 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %spec.store.select, ptr %ops, align 4
  %cond = select i1 %tobool72.not, i32 10, i32 14
  %type = getelementptr inbounds %struct.anx7625_data, ptr %call7.i.i, i32 0, i32 16, i32 10
  %120 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %cond, ptr %type, align 8
  call void @drm_bridge_add(ptr noundef %bridge) #8
  %121 = ptrtoint ptr %is_dpi.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %is_dpi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %tobool83.not = icmp eq i32 %122, 0
  br i1 %tobool83.not, label %if.then84, label %if.end66.if.end89_crit_edge

if.end66.if.end89_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89

if.then84:                                        ; preds = %if.end66
  %call85 = call fastcc i32 @anx7625_attach_dsi(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.then84.if.end89_crit_edge, label %if.then87

if.then84.if.end89_crit_edge:                     ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end89

if.then87:                                        ; preds = %if.then84
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.19, i32 noundef %call85) #8
  call void @drm_bridge_remove(ptr noundef %bridge) #8
  %123 = ptrtoint ptr %low_power_mode17.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %low_power_mode17.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool98.not = icmp eq i32 %124, 0
  br i1 %tobool98.not, label %if.then99, label %if.then87.if.end102_crit_edge

if.then87.if.end102_crit_edge:                    ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end102

if.end89:                                         ; preds = %if.then84.if.end89_crit_edge, %if.end66.if.end89_crit_edge
  %audio_en = getelementptr inbounds %struct.anx7625_platform_data, ptr %call7.i.i, i32 0, i32 7
  %125 = ptrtoint ptr %audio_en to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %audio_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %tobool91.not = icmp eq i32 %126, 0
  br i1 %tobool91.not, label %if.end89.if.end94_crit_edge, label %if.then92

if.end89.if.end94_crit_edge:                      ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end94

if.then92:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @anx7625_register_audio(ptr noundef %dev1, ptr noundef nonnull %call7.i.i)
  br label %if.end94

if.end94:                                         ; preds = %if.then92, %if.end89.if.end94_crit_edge
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %dev1, i32 noundef 2, ptr noundef nonnull @.str.20) #8
  br label %cleanup

if.then99:                                        ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #10
  %call.i201 = call i32 @__pm_runtime_suspend(ptr noundef %dev1, i32 noundef 4) #8
  br label %if.end102

if.end102:                                        ; preds = %if.then99, %if.then87.if.end102_crit_edge
  call fastcc void @anx7625_unregister_i2c_dummy_clients(ptr noundef nonnull %call7.i.i)
  br label %free_wq

free_wq:                                          ; preds = %if.end102, %if.then52, %if.then47
  %ret.0 = phi i32 [ %call45, %if.then47 ], [ -12, %if.then52 ], [ %call85, %if.end102 ]
  %workqueue103 = getelementptr inbounds %struct.anx7625_data, ptr %call7.i.i, i32 0, i32 12
  %127 = ptrtoint ptr %workqueue103 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %workqueue103, align 4
  %tobool104.not = icmp eq ptr %128, null
  br i1 %tobool104.not, label %free_wq.free_platform_crit_edge, label %if.then105

free_wq.free_platform_crit_edge:                  ; preds = %free_wq
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_platform

if.then105:                                       ; preds = %free_wq
  call void @__sanitizer_cov_trace_pc() #10
  call void @destroy_workqueue(ptr noundef nonnull %128) #8
  br label %free_platform

free_platform:                                    ; preds = %if.then105, %free_wq.free_platform_crit_edge, %if.then41, %if.then10, %anx7625_parse_dt.exit.free_platform_crit_edge
  %ret.1 = phi i32 [ %retval.0.i203, %if.then10 ], [ %ret.0, %if.then105 ], [ %ret.0, %free_wq.free_platform_crit_edge ], [ -12, %if.then41 ], [ %retval.0.i, %anx7625_parse_dt.exit.free_platform_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %free_platform, %if.end94, %if.then23, %if.then4, %if.then
  %retval.0 = phi i32 [ %ret.1, %free_platform ], [ %call21, %if.then23 ], [ 0, %if.end94 ], [ -12, %if.then4 ], [ -19, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @anx7625_i2c_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %bridge = getelementptr inbounds %struct.anx7625_data, ptr %1, i32 0, i32 16
  tail call void @drm_bridge_remove(ptr noundef %bridge) #8
  %intp_irq = getelementptr inbounds %struct.anx7625_platform_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %intp_irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %intp_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %workqueue = getelementptr inbounds %struct.anx7625_data, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %workqueue, align 4
  tail call void @destroy_workqueue(ptr noundef %5) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %low_power_mode = getelementptr inbounds %struct.anx7625_platform_data, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %low_power_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %low_power_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not = icmp eq i32 %7, 0
  br i1 %tobool2.not, label %if.then3, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %call.i = tail call i32 @__pm_runtime_suspend(ptr noundef %dev, i32 noundef 4) #8
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %i2c.i = getelementptr inbounds %struct.anx7625_data, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i2c.i, align 4
  tail call void @i2c_unregister_device(ptr noundef %9) #8
  %tx_p1_client.i = getelementptr inbounds %struct.anx7625_data, ptr %1, i32 0, i32 6, i32 1
  %10 = ptrtoint ptr %tx_p1_client.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tx_p1_client.i, align 4
  tail call void @i2c_unregister_device(ptr noundef %11) #8
  %tx_p2_client.i = getelementptr inbounds %struct.anx7625_data, ptr %1, i32 0, i32 6, i32 2
  %12 = ptrtoint ptr %tx_p2_client.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tx_p2_client.i, align 4
  tail call void @i2c_unregister_device(ptr noundef %13) #8
  %rx_p0_client.i = getelementptr inbounds %struct.anx7625_data, ptr %1, i32 0, i32 6, i32 3
  %14 = ptrtoint ptr %rx_p0_client.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rx_p0_client.i, align 4
  tail call void @i2c_unregister_device(ptr noundef %15) #8
  %rx_p1_client.i = getelementptr inbounds %struct.anx7625_data, ptr %1, i32 0, i32 6, i32 4
  %16 = ptrtoint ptr %rx_p1_client.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rx_p1_client.i, align 4
  tail call void @i2c_unregister_device(ptr noundef %17) #8
  %rx_p2_client.i = getelementptr inbounds %struct.anx7625_data, ptr %1, i32 0, i32 6, i32 5
  %18 = ptrtoint ptr %rx_p2_client.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rx_p2_client.i, align 4
  tail call void @i2c_unregister_device(ptr noundef %19) #8
  %tcpc_client.i = getelementptr inbounds %struct.anx7625_data, ptr %1, i32 0, i32 6, i32 6
  %20 = ptrtoint ptr %tcpc_client.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tcpc_client.i, align 4
  tail call void @i2c_unregister_device(ptr noundef %21) #8
  %audio_en = getelementptr inbounds %struct.anx7625_platform_data, ptr %1, i32 0, i32 7
  %22 = ptrtoint ptr %audio_en to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %audio_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool7.not = icmp eq i32 %23, 0
  br i1 %tobool7.not, label %if.end5.if.end9_crit_edge, label %if.then8

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then8:                                         ; preds = %if.end5
  %client.i = getelementptr inbounds %struct.anx7625_data, ptr %1, i32 0, i32 5
  %24 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %client.i, align 4
  %audio_pdev.i = getelementptr inbounds %struct.anx7625_data, ptr %1, i32 0, i32 1
  %26 = ptrtoint ptr %audio_pdev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %audio_pdev.i, align 4
  %tobool.not.i = icmp eq ptr %27, null
  br i1 %tobool.not.i, label %if.then8.anx7625_unregister_audio.exit_crit_edge, label %if.then.i

if.then8.anx7625_unregister_audio.exit_crit_edge: ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %anx7625_unregister_audio.exit

if.then.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_device_unregister(ptr noundef nonnull %27) #8
  %28 = ptrtoint ptr %audio_pdev.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %audio_pdev.i, align 4
  br label %anx7625_unregister_audio.exit

anx7625_unregister_audio.exit:                    ; preds = %if.then.i, %if.then8.anx7625_unregister_audio.exit_crit_edge
  %dev1.i = getelementptr inbounds %struct.i2c_client, ptr %25, i32 0, i32 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %dev1.i, i32 noundef 2, ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.125) #8
  br label %if.end9

if.end9:                                          ; preds = %anx7625_unregister_audio.exit, %if.end5.if.end9_crit_edge
  tail call void @kfree(ptr noundef %1) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @anx7625_work_func(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %work, i32 -652
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %client = getelementptr i8, ptr %work, i32 -560
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %runtime_status.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 12, i32 18
  %2 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.i = icmp eq i32 %3, 2
  br i1 %cmp.i, label %pm_runtime_suspended.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

pm_runtime_suspended.exit:                        ; preds = %entry
  %disable_depth.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 12, i32 15
  %4 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %pm_runtime_suspended.exit.unlock_crit_edge, label %pm_runtime_suspended.exit.if.end_crit_edge

pm_runtime_suspended.exit.if.end_crit_edge:       ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

pm_runtime_suspended.exit.unlock_crit_edge:       ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

if.end:                                           ; preds = %pm_runtime_suspended.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %add.ptr = getelementptr i8, ptr %work, i32 -904
  %5 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %client, align 4
  %dev1.i = getelementptr inbounds %struct.i2c_client, ptr %6, i32 0, i32 4
  %tcpc_client.i = getelementptr i8, ptr %work, i32 -532
  %7 = ptrtoint ptr %tcpc_client.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tcpc_client.i, align 4
  %call.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %add.ptr, ptr noundef %8, i8 noundef zeroext -52, i8 noundef zeroext -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i14 = icmp slt i32 %call.i, 0
  br i1 %cmp.i14, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.35) #8
  br label %unlock

if.end.i:                                         ; preds = %if.end
  %rx_p0_client.i = getelementptr i8, ptr %work, i32 -544
  %9 = ptrtoint ptr %rx_p0_client.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rx_p0_client.i, align 4
  %call3.i = tail call fastcc i32 @anx7625_reg_read(ptr noundef %add.ptr, ptr noundef %10, i8 noundef zeroext 68) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %if.then5.i, label %if.end6.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.36) #8
  br label %unlock

if.end6.i:                                        ; preds = %if.end.i
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %dev1.i, i32 noundef 2, ptr noundef nonnull @.str.37, i32 noundef %call3.i) #8
  %11 = ptrtoint ptr %rx_p0_client.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rx_p0_client.i, align 4
  %call9.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %add.ptr, ptr noundef %12, i8 noundef zeroext 68, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp10.i = icmp slt i32 %call9.i, 0
  br i1 %cmp10.i, label %if.then12.i, label %if.end13.i

if.then12.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.38) #8
  br label %unlock

if.end13.i:                                       ; preds = %if.end6.i
  %and14.i = and i32 %call3.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool.not.i15 = icmp eq i32 %and14.i, 0
  br i1 %tobool.not.i15, label %if.end13.i.unlock_crit_edge, label %if.end16.i

if.end13.i.unlock_crit_edge:                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

if.end16.i:                                       ; preds = %if.end13.i
  %13 = ptrtoint ptr %rx_p0_client.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rx_p0_client.i, align 4
  %call19.i = tail call fastcc i32 @anx7625_reg_read(ptr noundef %add.ptr, ptr noundef %14, i8 noundef zeroext 69) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %cmp20.i = icmp slt i32 %call19.i, 0
  br i1 %cmp20.i, label %if.then22.i, label %if.end23.i

if.then22.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.39) #8
  br label %unlock

if.end23.i:                                       ; preds = %if.end16.i
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %dev1.i, i32 noundef 2, ptr noundef nonnull @.str.40, i32 noundef %call19.i) #8
  %and24.i = and i32 %call19.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  %15 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %client, align 4
  %dev1.i.i = getelementptr inbounds %struct.i2c_client, ptr %16, i32 0, i32 4
  %and24.lobit.i = lshr exact i32 %and24.i, 7
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %dev1.i.i, i32 noundef 2, ptr noundef nonnull @.str.44, i32 noundef %and24.lobit.i) #8
  br i1 %tobool25.not.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %dev1.i.i, i32 noundef 2, ptr noundef nonnull @.str.45) #8
  %slimport_edid_p.i.i.i = getelementptr i8, ptr %work, i32 -524
  %17 = ptrtoint ptr %slimport_edid_p.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %slimport_edid_p.i.i.i, align 4
  %hpd_status.i.i.i = getelementptr i8, ptr %work, i32 -660
  %18 = ptrtoint ptr %hpd_status.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %hpd_status.i.i.i, align 4
  %hpd_high_cnt.i.i.i = getelementptr i8, ptr %work, i32 -656
  %19 = ptrtoint ptr %hpd_high_cnt.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %hpd_high_cnt.i.i.i, align 4
  %display_timing_valid.i.i.i = getelementptr i8, ptr %work, i32 164
  %20 = ptrtoint ptr %display_timing_valid.i.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %display_timing_valid.i.i.i, align 4
  br label %if.end3

if.else.i.i:                                      ; preds = %if.end23.i
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %dev1.i.i, i32 noundef 2, ptr noundef nonnull @.str.46) #8
  tail call fastcc void @anx7625_start_dp_work(ptr noundef %add.ptr) #8
  %dp_lane0_swing_reg_cnt.i.i.i = getelementptr i8, ptr %work, i32 -840
  %21 = ptrtoint ptr %dp_lane0_swing_reg_cnt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dp_lane0_swing_reg_cnt.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp34.i.i.i = icmp sgt i32 %22, 0
  br i1 %cmp34.i.i.i, label %for.body.lr.ph.i.i.i, label %if.else.i.i.for.cond3.preheader.i.i.i_crit_edge

if.else.i.i.for.cond3.preheader.i.i.i_crit_edge:  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond3.preheader.i.i.i

for.body.lr.ph.i.i.i:                             ; preds = %if.else.i.i
  %tx_p1_client.i.i.i = getelementptr i8, ptr %work, i32 -552
  br label %for.body.i.i.i

for.cond3.preheader.i.i.i:                        ; preds = %for.body.i.i.i.for.cond3.preheader.i.i.i_crit_edge, %if.else.i.i.for.cond3.preheader.i.i.i_crit_edge
  %dp_lane1_swing_reg_cnt.i.i.i = getelementptr i8, ptr %work, i32 -756
  %23 = ptrtoint ptr %dp_lane1_swing_reg_cnt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dp_lane1_swing_reg_cnt.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp536.i.i.i = icmp sgt i32 %24, 0
  br i1 %cmp536.i.i.i, label %for.body7.lr.ph.i.i.i, label %for.cond3.preheader.i.i.i.if.end3_crit_edge

for.cond3.preheader.i.i.i.if.end3_crit_edge:      ; preds = %for.cond3.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

for.body7.lr.ph.i.i.i:                            ; preds = %for.cond3.preheader.i.i.i
  %tx_p1_client9.i.i.i = getelementptr i8, ptr %work, i32 -552
  br label %for.body7.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %for.body.lr.ph.i.i.i
  %i.035.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ]
  %25 = ptrtoint ptr %tx_p1_client.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tx_p1_client.i.i.i, align 4
  %conv.i.i.i = trunc i32 %i.035.i.i.i to i8
  %arrayidx.i.i.i = getelementptr %struct.anx7625_platform_data, ptr %add.ptr, i32 0, i32 9, i32 %i.035.i.i.i
  %27 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i.i.i, align 4
  %conv2.i.i.i = trunc i32 %28 to i8
  %call.i.i.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %add.ptr, ptr noundef %26, i8 noundef zeroext %conv.i.i.i, i8 noundef zeroext %conv2.i.i.i) #8
  %inc.i.i.i = add nuw nsw i32 %i.035.i.i.i, 1
  %29 = ptrtoint ptr %dp_lane0_swing_reg_cnt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dp_lane0_swing_reg_cnt.i.i.i, align 4
  %cmp.i.i.i = icmp slt i32 %inc.i.i.i, %30
  br i1 %cmp.i.i.i, label %for.body.i.i.i.for.body.i.i.i_crit_edge, label %for.body.i.i.i.for.cond3.preheader.i.i.i_crit_edge

for.body.i.i.i.for.cond3.preheader.i.i.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond3.preheader.i.i.i

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i

for.body7.i.i.i:                                  ; preds = %for.body7.i.i.i.for.body7.i.i.i_crit_edge, %for.body7.lr.ph.i.i.i
  %i.137.i.i.i = phi i32 [ 0, %for.body7.lr.ph.i.i.i ], [ %inc18.i.i.i, %for.body7.i.i.i.for.body7.i.i.i_crit_edge ]
  %31 = ptrtoint ptr %tx_p1_client9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tx_p1_client9.i.i.i, align 4
  %33 = trunc i32 %i.137.i.i.i to i8
  %conv11.i.i.i = add i8 %33, 20
  %arrayidx13.i.i.i = getelementptr %struct.anx7625_platform_data, ptr %add.ptr, i32 0, i32 11, i32 %i.137.i.i.i
  %34 = ptrtoint ptr %arrayidx13.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx13.i.i.i, align 4
  %conv15.i.i.i = trunc i32 %35 to i8
  %call16.i.i.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %add.ptr, ptr noundef %32, i8 noundef zeroext %conv11.i.i.i, i8 noundef zeroext %conv15.i.i.i) #8
  %inc18.i.i.i = add nuw nsw i32 %i.137.i.i.i, 1
  %36 = ptrtoint ptr %dp_lane1_swing_reg_cnt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dp_lane1_swing_reg_cnt.i.i.i, align 4
  %cmp5.i.i.i = icmp slt i32 %inc18.i.i.i, %37
  br i1 %cmp5.i.i.i, label %for.body7.i.i.i.for.body7.i.i.i_crit_edge, label %for.body7.i.i.i.if.end3_crit_edge

for.body7.i.i.i.if.end3_crit_edge:                ; preds = %for.body7.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

for.body7.i.i.i.for.body7.i.i.i_crit_edge:        ; preds = %for.body7.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body7.i.i.i

if.end3:                                          ; preds = %for.body7.i.i.i.if.end3_crit_edge, %for.cond3.preheader.i.i.i.if.end3_crit_edge, %if.then.i.i
  %bridge_attached = getelementptr i8, ptr %work, i32 448
  %38 = ptrtoint ptr %bridge_attached to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %bridge_attached, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not = icmp eq i8 %39, 0
  br i1 %tobool.not, label %if.end3.unlock_crit_edge, label %if.then4

if.end3.unlock_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

if.then4:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %dev5 = getelementptr i8, ptr %work, i32 292
  %40 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev5, align 4
  %call6 = tail call zeroext i1 @drm_helper_hpd_irq_event(ptr noundef %41) #8
  br label %unlock

unlock:                                           ; preds = %if.then4, %if.end3.unlock_crit_edge, %if.then22.i, %if.end13.i.unlock_crit_edge, %if.then12.i, %if.then5.i, %if.then.i, %pm_runtime_suspended.exit.unlock_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @anx7625_intr_hpd_isr(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %workqueue = getelementptr inbounds %struct.anx7625_data, ptr %data, i32 0, i32 12
  %0 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %workqueue, align 4
  %work = getelementptr inbounds %struct.anx7625_data, ptr %data, i32 0, i32 11
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %1, ptr noundef %work) #8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @anx7625_disable_pd_protocol(ptr nocapture noundef %ctx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %client = getelementptr inbounds %struct.anx7625_data, ptr %ctx, i32 0, i32 5
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %rx_p0_client = getelementptr inbounds %struct.anx7625_data, ptr %ctx, i32 0, i32 6, i32 3
  %2 = ptrtoint ptr %rx_p0_client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_p0_client, align 4
  %call = tail call fastcc i32 @anx7625_reg_write(ptr noundef %ctx, ptr noundef %3, i8 noundef zeroext -120, i8 noundef zeroext 64)
  %4 = ptrtoint ptr %rx_p0_client to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_p0_client, align 4
  %call4 = tail call fastcc i32 @anx7625_reg_write(ptr noundef %ctx, ptr noundef %5, i8 noundef zeroext 40, i8 noundef zeroext 64)
  %or = or i32 %call4, %call
  %6 = ptrtoint ptr %rx_p0_client to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx_p0_client, align 4
  %call7 = tail call fastcc i32 @anx7625_reg_write(ptr noundef %ctx, ptr noundef %7, i8 noundef zeroext -120, i8 noundef zeroext 0)
  %or8 = or i32 %or, %call7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8)
  %cmp = icmp slt i32 %or8, 0
  %.str.50..str.51 = select i1 %cmp, ptr @.str.50, ptr @.str.51
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %dev1, i32 noundef 2, ptr noundef nonnull %.str.50..str.51) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @anx7625_attach_dsi(ptr nocapture noundef %ctx) unnamed_addr #2 align 64 {
entry:
  %info = alloca %struct.mipi_dsi_device_info, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %client = getelementptr inbounds %struct.anx7625_data, ptr %ctx, i32 0, i32 5
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %info) #8
  %2 = call ptr @memcpy(ptr %info, ptr @__const.anx7625_attach_dsi.info, i32 28)
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %dev1, i32 noundef 2, ptr noundef nonnull @.str.120) #8
  %mipi_host_node = getelementptr inbounds %struct.anx7625_platform_data, ptr %ctx, i32 0, i32 13
  %3 = ptrtoint ptr %mipi_host_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mipi_host_node, align 4
  %call = tail call ptr @of_find_mipi_dsi_host_by_node(ptr noundef %4) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.121) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call ptr @devm_mipi_dsi_device_register_full(ptr noundef %dev1, ptr noundef nonnull %call, ptr noundef nonnull %info) #8
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.122) #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %mipi_lanes = getelementptr inbounds %struct.anx7625_platform_data, ptr %ctx, i32 0, i32 6
  %5 = ptrtoint ptr %mipi_lanes to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mipi_lanes, align 4
  %lanes = getelementptr inbounds %struct.mipi_dsi_device, ptr %call2, i32 0, i32 4
  %7 = ptrtoint ptr %lanes to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %lanes, align 8
  %format = getelementptr inbounds %struct.mipi_dsi_device, ptr %call2, i32 0, i32 5
  %8 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %format, align 4
  %mode_flags = getelementptr inbounds %struct.mipi_dsi_device, ptr %call2, i32 0, i32 6
  %9 = ptrtoint ptr %mode_flags to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 21, ptr %mode_flags, align 8
  %call7 = call i32 @devm_mipi_dsi_attach(ptr noundef %dev1, ptr noundef %call2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.123) #8
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %dsi11 = getelementptr inbounds %struct.anx7625_data, ptr %ctx, i32 0, i32 18
  %10 = ptrtoint ptr %dsi11 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call2, ptr %dsi11, align 4
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %dev1, i32 noundef 2, ptr noundef nonnull @.str.124) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then9, %if.then4, %if.then
  %retval.0 = phi i32 [ -22, %if.then4 ], [ %call7, %if.then9 ], [ 0, %if.end10 ], [ -22, %if.then ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %info) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @anx7625_register_audio(ptr noundef %dev, ptr noundef %ctx) unnamed_addr #2 align 64 {
entry:
  %pdevinfo.i.i = alloca %struct.platform_device_info, align 8
  %codec_data = alloca %struct.hdmi_codec_pdata, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %codec_data) #8
  %0 = getelementptr inbounds i8, ptr %codec_data, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  %2 = ptrtoint ptr %codec_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @anx7625_codec_ops, ptr %codec_data, align 4
  %i2s = getelementptr inbounds %struct.hdmi_codec_pdata, ptr %codec_data, i32 0, i32 1
  %3 = ptrtoint ptr %i2s to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -65, ptr %i2s, align 4
  %max_i2s_channels = getelementptr inbounds %struct.hdmi_codec_pdata, ptr %codec_data, i32 0, i32 2
  %4 = ptrtoint ptr %max_i2s_channels to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 8, ptr %max_i2s_channels, align 4
  %data = getelementptr inbounds %struct.hdmi_codec_pdata, ptr %codec_data, i32 0, i32 3
  %5 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %ctx, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %pdevinfo.i.i) #8
  %6 = getelementptr inbounds i8, ptr %pdevinfo.i.i, i32 8
  %7 = call ptr @memset(ptr %6, i32 255, i32 48)
  %8 = ptrtoint ptr %pdevinfo.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev, ptr %pdevinfo.i.i, align 8
  %fwnode.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %fwnode.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %fwnode.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %6, align 8
  %name2.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %name2.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.125, ptr %name2.i.i, align 4
  %id3.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 4
  %12 = ptrtoint ptr %id3.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -2, ptr %id3.i.i, align 8
  %res4.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 5
  %13 = ptrtoint ptr %res4.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %res4.i.i, align 4
  %num_res.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 6
  %14 = ptrtoint ptr %num_res.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %num_res.i.i, align 8
  %data5.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 7
  %15 = ptrtoint ptr %data5.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %codec_data, ptr %data5.i.i, align 4
  %size_data.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 8
  %16 = ptrtoint ptr %size_data.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 16, ptr %size_data.i.i, align 8
  %dma_mask.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 9
  %17 = ptrtoint ptr %dma_mask.i.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 0, ptr %dma_mask.i.i, align 8
  %properties.i.i = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo.i.i, i32 0, i32 10
  %18 = ptrtoint ptr %properties.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %properties.i.i, align 8
  %call.i.i = call ptr @platform_device_register_full(ptr noundef nonnull %pdevinfo.i.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %pdevinfo.i.i) #8
  %audio_pdev = getelementptr inbounds %struct.anx7625_data, ptr %ctx, i32 0, i32 1
  %19 = ptrtoint ptr %audio_pdev to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i.i, ptr %audio_pdev, align 4
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %dev, i32 noundef 2, ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.125) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %codec_data) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @anx7625_unregister_i2c_dummy_clients(ptr nocapture noundef readonly %ctx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %i2c = getelementptr inbounds %struct.anx7625_data, ptr %ctx, i32 0, i32 6
  %0 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i2c, align 4
  tail call void @i2c_unregister_device(ptr noundef %1) #8
  %tx_p1_client = getelementptr inbounds %struct.anx7625_data, ptr %ctx, i32 0, i32 6, i32 1
  %2 = ptrtoint ptr %tx_p1_client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tx_p1_client, align 4
  tail call void @i2c_unregister_device(ptr noundef %3) #8
  %tx_p2_client = getelementptr inbounds %struct.anx7625_data, ptr %ctx, i32 0, i32 6, i32 2
  %4 = ptrtoint ptr %tx_p2_client to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tx_p2_client, align 4
  tail call void @i2c_unregister_device(ptr noundef %5) #8
  %rx_p0_client = getelementptr inbounds %struct.anx7625_data, ptr %ctx, i32 0, i32 6, i32 3
  %6 = ptrtoint ptr %rx_p0_client to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx_p0_client, align 4
  tail call void @i2c_unregister_device(ptr noundef %7) #8
  %rx_p1_client = getelementptr inbounds %struct.anx7625_data, ptr %ctx, i32 0, i32 6, i32 4
  %8 = ptrtoint ptr %rx_p1_client to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rx_p1_client, align 4
  tail call void @i2c_unregister_device(ptr noundef %9) #8
  %rx_p2_client = getelementptr inbounds %struct.anx7625_data, ptr %ctx, i32 0, i32 6, i32 5
  %10 = ptrtoint ptr %rx_p2_client to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx_p2_client, align 4
  tail call void @i2c_unregister_device(ptr noundef %11) #8
  %tcpc_client = getelementptr inbounds %struct.anx7625_data, ptr %ctx, i32 0, i32 6, i32 6
  %12 = ptrtoint ptr %tcpc_client to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tcpc_client, align 4
  tail call void @i2c_unregister_device(ptr noundef %13) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_node(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_endpoint_by_regs(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_find_panel_or_bridge(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_drm_panel_bridge_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @desc_to_gpio(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_helper_hpd_irq_event(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @anx7625_reg_write(ptr nocapture noundef %ctx, ptr noundef %client, i8 noundef zeroext %reg_addr, i8 noundef zeroext %reg_val) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %last_client.i = getelementptr inbounds %struct.anx7625_data, ptr %ctx, i32 0, i32 7
  %0 = ptrtoint ptr %last_client.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %last_client.i, align 4
  %cmp.i = icmp eq ptr %1, %client
  br i1 %cmp.i, label %entry.i2c_access_workaround.exit_crit_edge, label %if.end.i

entry.i2c_access_workaround.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %i2c_access_workaround.exit

if.end.i:                                         ; preds = %entry
  %2 = ptrtoint ptr %last_client.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %client, ptr %last_client.i, align 4
  %tcpc_client.i = getelementptr inbounds %struct.anx7625_data, ptr %ctx, i32 0, i32 6, i32 6
  %3 = ptrtoint ptr %tcpc_client.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tcpc_client.i, align 4
  %cmp3.i = icmp eq ptr %4, %client
  br i1 %cmp3.i, label %if.end.i.if.end25.i_crit_edge, label %if.else.i

if.end.i.if.end25.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25.i

if.else.i:                                        ; preds = %if.end.i
  %i2c.i = getelementptr inbounds %struct.anx7625_data, ptr %ctx, i32 0, i32 6
  %5 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i2c.i, align 4
  %cmp6.i = icmp eq ptr %6, %client
  br i1 %cmp6.i, label %if.else.i.if.end25.i_crit_edge, label %if.else8.i

if.else.i.if.end25.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25.i

if.else8.i:                                       ; preds = %if.else.i
  %tx_p1_client.i = getelementptr inbounds %struct.anx7625_data, ptr %ctx, i32 0, i32 6, i32 1
  %7 = ptrtoint ptr %tx_p1_client.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tx_p1_client.i, align 4
  %cmp10.i = icmp eq ptr %8, %client
  br i1 %cmp10.i, label %if.else8.i.if.end25.i_crit_edge, label %if.else12.i

if.else8.i.if.end25.i_crit_edge:                  ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25.i

if.else12.i:                                      ; preds = %if.else8.i
  %rx_p0_client.i = getelementptr inbounds %struct.anx7625_data, ptr %ctx, i32 0, i32 6, i32 3
  %9 = ptrtoint ptr %rx_p0_client.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rx_p0_client.i, align 4
  %cmp14.i = icmp eq ptr %10, %client
  br i1 %cmp14.i, label %if.else12.i.if.end25.i_crit_edge, label %if.else16.i

if.else12.i.if.end25.i_crit_edge:                 ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25.i

if.else16.i:                                      ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #10
  %rx_p1_client.i = getelementptr inbounds %struct.anx7625_data, ptr %ctx, i32 0, i32 6, i32 4
  %11 = ptrtoint ptr %rx_p1_client.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rx_p1_client.i, align 4
  %cmp18.i = icmp eq ptr %12, %client
  %..i = select i1 %cmp18.i, i8 127, i8 0
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.else16.i, %if.else12.i.if.end25.i_crit_edge, %if.else8.i.if.end25.i_crit_edge, %if.else.i.if.end25.i_crit_edge, %if.end.i.if.end25.i_crit_edge
  %offset.0.i = phi i8 [ 0, %if.end.i.if.end25.i_crit_edge ], [ -47, %if.else.i.if.end25.i_crit_edge ], [ 96, %if.else8.i.if.end25.i_crit_edge ], [ 57, %if.else12.i.if.end25.i_crit_edge ], [ %..i, %if.else16.i ]
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext %offset.0.i, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp26.i = icmp slt i32 %call.i, 0
  br i1 %cmp26.i, label %if.then27.i, label %if.end25.i.i2c_access_workaround.exit_crit_edge

if.end25.i.i2c_access_workaround.exit_crit_edge:  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i2c_access_workaround.exit

if.then27.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %13 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %addr.i, align 2
  %conv.i = zext i16 %14 to i32
  %conv28.i = zext i8 %offset.0.i to i32
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.42, i32 noundef %conv.i, i32 noundef %conv28.i) #8
  br label %i2c_access_workaround.exit

i2c_access_workaround.exit:                       ; preds = %if.then27.i, %if.end25.i.i2c_access_workaround.exit_crit_edge, %entry.i2c_access_workaround.exit_crit_edge
  %call2 = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext %reg_addr, i8 noundef zeroext %reg_val) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.then, label %i2c_access_workaround.exit.if.end_crit_edge

i2c_access_workaround.exit.if.end_crit_edge:      ; preds = %i2c_access_workaround.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %i2c_access_workaround.exit
  call void @__sanitizer_cov_trace_pc() #10
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %15 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %addr, align 2
  %conv = zext i16 %16 to i32
  %conv3 = zext i8 %reg_addr to i32
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.41, i32 noundef %conv, i32 noundef %conv3) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %i2c_access_workaround.exit.if.end_crit_edge
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @anx7625_reg_read(ptr nocapture noundef %ctx, ptr noundef %client, i8 noundef zeroext %reg_addr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %last_client.i = getelementptr inbounds %struct.anx7625_data, ptr %ctx, i32 0, i32 7
  %0 = ptrtoint ptr %last_client.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %last_client.i, align 4
  %cmp.i = icmp eq ptr %1, %client
  br i1 %cmp.i, label %entry.i2c_access_workaround.exit_crit_edge, label %if.end.i

entry.i2c_access_workaround.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %i2c_access_workaround.exit

if.end.i:                                         ; preds = %entry
  %2 = ptrtoint ptr %last_client.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %client, ptr %last_client.i, align 4
  %tcpc_client.i = getelementptr inbounds %struct.anx7625_data, ptr %ctx, i32 0, i32 6, i32 6
  %3 = ptrtoint ptr %tcpc_client.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tcpc_client.i, align 4
  %cmp3.i = icmp eq ptr %4, %client
  br i1 %cmp3.i, label %if.end.i.if.end25.i_crit_edge, label %if.else.i

if.end.i.if.end25.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25.i

if.else.i:                                        ; preds = %if.end.i
  %i2c.i = getelementptr inbounds %struct.anx7625_data, ptr %ctx, i32 0, i32 6
  %5 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i2c.i, align 4
  %cmp6.i = icmp eq ptr %6, %client
  br i1 %cmp6.i, label %if.else.i.if.end25.i_crit_edge, label %if.else8.i

if.else.i.if.end25.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25.i

if.else8.i:                                       ; preds = %if.else.i
  %tx_p1_client.i = getelementptr inbounds %struct.anx7625_data, ptr %ctx, i32 0, i32 6, i32 1
  %7 = ptrtoint ptr %tx_p1_client.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tx_p1_client.i, align 4
  %cmp10.i = icmp eq ptr %8, %client
  br i1 %cmp10.i, label %if.else8.i.if.end25.i_crit_edge, label %if.else12.i

if.else8.i.if.end25.i_crit_edge:                  ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25.i

if.else12.i:                                      ; preds = %if.else8.i
  %rx_p0_client.i = getelementptr inbounds %struct.anx7625_data, ptr %ctx, i32 0, i32 6, i32 3
  %9 = ptrtoint ptr %rx_p0_client.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rx_p0_client.i, align 4
  %cmp14.i = icmp eq ptr %10, %client
  br i1 %cmp14.i, label %if.else12.i.if.end25.i_crit_edge, label %if.else16.i

if.else12.i.if.end25.i_crit_edge:                 ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25.i

if.else16.i:                                      ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #10
  %rx_p1_client.i = getelementptr inbounds %struct.anx7625_data, ptr %ctx, i32 0, i32 6, i32 4
  %11 = ptrtoint ptr %rx_p1_client.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rx_p1_client.i, align 4
  %cmp18.i = icmp eq ptr %12, %client
  %..i = select i1 %cmp18.i, i8 127, i8 0
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.else16.i, %if.else12.i.if.end25.i_crit_edge, %if.else8.i.if.end25.i_crit_edge, %if.else.i.if.end25.i_crit_edge, %if.end.i.if.end25.i_crit_edge
  %offset.0.i = phi i8 [ 0, %if.end.i.if.end25.i_crit_edge ], [ -47, %if.else.i.if.end25.i_crit_edge ], [ 96, %if.else8.i.if.end25.i_crit_edge ], [ 57, %if.else12.i.if.end25.i_crit_edge ], [ %..i, %if.else16.i ]
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext %offset.0.i, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp26.i = icmp slt i32 %call.i, 0
  br i1 %cmp26.i, label %if.then27.i, label %if.end25.i.i2c_access_workaround.exit_crit_edge

if.end25.i.i2c_access_workaround.exit_crit_edge:  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i2c_access_workaround.exit

if.then27.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %13 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %addr.i, align 2
  %conv.i = zext i16 %14 to i32
  %conv28.i = zext i8 %offset.0.i to i32
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.42, i32 noundef %conv.i, i32 noundef %conv28.i) #8
  br label %i2c_access_workaround.exit

i2c_access_workaround.exit:                       ; preds = %if.then27.i, %if.end25.i.i2c_access_workaround.exit_crit_edge, %entry.i2c_access_workaround.exit_crit_edge
  %call2 = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %client, i8 noundef zeroext %reg_addr) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.then, label %i2c_access_workaround.exit.if.end_crit_edge

i2c_access_workaround.exit.if.end_crit_edge:      ; preds = %i2c_access_workaround.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %i2c_access_workaround.exit
  call void @__sanitizer_cov_trace_pc() #10
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %15 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %addr, align 2
  %conv = zext i16 %16 to i32
  %conv3 = zext i8 %reg_addr to i32
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.43, i32 noundef %conv, i32 noundef %conv3) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %i2c_access_workaround.exit.if.end_crit_edge
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_byte_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @anx7625_start_dp_work(ptr nocapture noundef %ctx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %client = getelementptr inbounds %struct.anx7625_data, ptr %ctx, i32 0, i32 5
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %hpd_high_cnt = getelementptr inbounds %struct.anx7625_data, ptr %ctx, i32 0, i32 3
  %2 = ptrtoint ptr %hpd_high_cnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hpd_high_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp sgt i32 %3, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %dev1, i32 noundef 2, ptr noundef nonnull @.str.47) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %hpd_status = getelementptr inbounds %struct.anx7625_data, ptr %ctx, i32 0, i32 2
  %4 = ptrtoint ptr %hpd_status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %hpd_status, align 4
  %inc = add nsw i32 %3, 1
  %5 = ptrtoint ptr %hpd_high_cnt to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %inc, ptr %hpd_high_cnt, align 4
  %rx_p1_client = getelementptr inbounds %struct.anx7625_data, ptr %ctx, i32 0, i32 6, i32 4
  %6 = ptrtoint ptr %rx_p1_client to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx_p1_client, align 4
  %call.i = tail call fastcc i32 @anx7625_reg_read(ptr noundef %ctx, ptr noundef %7, i8 noundef zeroext -18) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.anx7625_write_and.exit_crit_edge, label %if.end.i

if.end.anx7625_write_and.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %anx7625_write_and.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %8 = trunc i32 %call.i to i8
  %conv1.i = and i8 %8, -97
  %call2.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %ctx, ptr noundef %7, i8 noundef zeroext -18, i8 noundef zeroext %conv1.i) #8
  br label %anx7625_write_and.exit

anx7625_write_and.exit:                           ; preds = %if.end.i, %if.end.anx7625_write_and.exit_crit_edge
  %retval.0.i = phi i32 [ %call2.i, %if.end.i ], [ %call.i, %if.end.anx7625_write_and.exit_crit_edge ]
  %9 = ptrtoint ptr %rx_p1_client to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rx_p1_client, align 4
  %call.i37 = tail call fastcc i32 @anx7625_reg_read(ptr noundef %ctx, ptr noundef %10, i8 noundef zeroext -20) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i37)
  %cmp.i38 = icmp slt i32 %call.i37, 0
  br i1 %cmp.i38, label %anx7625_write_and.exit.anx7625_write_or.exit_crit_edge, label %if.end.i41

anx7625_write_and.exit.anx7625_write_or.exit_crit_edge: ; preds = %anx7625_write_and.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %anx7625_write_or.exit

if.end.i41:                                       ; preds = %anx7625_write_and.exit
  call void @__sanitizer_cov_trace_pc() #10
  %11 = trunc i32 %call.i37 to i8
  %conv1.i39 = or i8 %11, 16
  %call2.i40 = tail call fastcc i32 @anx7625_reg_write(ptr noundef %ctx, ptr noundef %10, i8 noundef zeroext -20, i8 noundef zeroext %conv1.i39) #8
  br label %anx7625_write_or.exit

anx7625_write_or.exit:                            ; preds = %if.end.i41, %anx7625_write_and.exit.anx7625_write_or.exit_crit_edge
  %retval.0.i42 = phi i32 [ %call2.i40, %if.end.i41 ], [ %call.i37, %anx7625_write_and.exit.anx7625_write_or.exit_crit_edge ]
  %or = or i32 %retval.0.i42, %retval.0.i
  %12 = ptrtoint ptr %rx_p1_client to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rx_p1_client, align 4
  %call.i43 = tail call fastcc i32 @anx7625_reg_read(ptr noundef %ctx, ptr noundef %13, i8 noundef zeroext -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43)
  %cmp.i44 = icmp slt i32 %call.i43, 0
  br i1 %cmp.i44, label %anx7625_write_or.exit.anx7625_write_or.exit49_crit_edge, label %if.end.i47

anx7625_write_or.exit.anx7625_write_or.exit49_crit_edge: ; preds = %anx7625_write_or.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %anx7625_write_or.exit49

if.end.i47:                                       ; preds = %anx7625_write_or.exit
  call void @__sanitizer_cov_trace_pc() #10
  %14 = trunc i32 %call.i43 to i8
  %conv1.i45 = or i8 %14, 1
  %call2.i46 = tail call fastcc i32 @anx7625_reg_write(ptr noundef %ctx, ptr noundef %13, i8 noundef zeroext -1, i8 noundef zeroext %conv1.i45) #8
  br label %anx7625_write_or.exit49

anx7625_write_or.exit49:                          ; preds = %if.end.i47, %anx7625_write_or.exit.anx7625_write_or.exit49_crit_edge
  %retval.0.i48 = phi i32 [ %call2.i46, %if.end.i47 ], [ %call.i43, %anx7625_write_or.exit.anx7625_write_or.exit49_crit_edge ]
  %or9 = or i32 %or, %retval.0.i48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or9)
  %cmp10 = icmp slt i32 %or9, 0
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %anx7625_write_or.exit49
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.48) #8
  br label %cleanup

if.end12:                                         ; preds = %anx7625_write_or.exit49
  %15 = ptrtoint ptr %rx_p1_client to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rx_p1_client, align 4
  %call15 = tail call fastcc i32 @anx7625_reg_read(ptr noundef %ctx, ptr noundef %16, i8 noundef zeroext -122)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.end12.cleanup_crit_edge, label %if.end18

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end18:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %dev1, i32 noundef 2, ptr noundef nonnull @.str.49, i32 noundef %call15) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.end12.cleanup_crit_edge, %if.then11, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_new_dummy_device(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @anx7625_bridge_attach(ptr noundef %bridge, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %client = getelementptr i8, ptr %bridge, i32 -728
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %dev1, i32 noundef 2, ptr noundef nonnull @.str.52) #8
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %encoder = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 2
  %2 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %encoder, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.53) #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %panel_bridge = getelementptr i8, ptr %bridge, i32 -1028
  %4 = ptrtoint ptr %panel_bridge to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %panel_bridge, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %if.end4.if.end15_crit_edge, label %if.then6

if.end4.if.end15_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then6:                                         ; preds = %if.end4
  %call11 = tail call i32 @drm_bridge_attach(ptr noundef nonnull %3, ptr noundef nonnull %5, ptr noundef %bridge, i32 noundef %flags) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then6.if.end15_crit_edge, label %if.then6.cleanup_crit_edge

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then6.if.end15_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.end15:                                         ; preds = %if.then6.if.end15_crit_edge, %if.end4.if.end15_crit_edge
  %bridge_attached = getelementptr i8, ptr %bridge, i32 280
  %6 = ptrtoint ptr %bridge_attached to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %bridge_attached, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then6.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end15 ], [ -19, %if.then3 ], [ -22, %entry.cleanup_crit_edge ], [ %call11, %if.then6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @anx7625_bridge_mode_valid(ptr nocapture noundef readonly %bridge, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %client = getelementptr i8, ptr %bridge, i32 -728
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %dev1, i32 noundef 2, ptr noundef nonnull @.str.54) #8
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 300000, i32 %3)
  %cmp = icmp sgt i32 %3, 300000
  %.str.55..str.56 = select i1 %cmp, ptr @.str.55, ptr @.str.56
  %. = select i1 %cmp, i32 15, i32 0
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %dev1, i32 noundef 2, ptr noundef nonnull %.str.55..str.56) #8
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @anx7625_bridge_mode_fixup(ptr nocapture noundef readonly %bridge, ptr nocapture noundef readonly %mode, ptr nocapture noundef %adj) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %client = getelementptr i8, ptr %bridge, i32 -728
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %dev1, i32 noundef 2, ptr noundef nonnull @.str.57) #8
  %panel_bridge = getelementptr i8, ptr %bridge, i32 -1028
  %2 = ptrtoint ptr %panel_bridge to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %panel_bridge, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %hsync_end = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 3
  %4 = ptrtoint ptr %hsync_end to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %hsync_end, align 4
  %conv = zext i16 %5 to i32
  %hsync_start = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 2
  %6 = ptrtoint ptr %hsync_start to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %hsync_start, align 2
  %conv2 = zext i16 %7 to i32
  %sub = sub nsw i32 %conv, %conv2
  %hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 1
  %8 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %hdisplay, align 4
  %conv5 = zext i16 %9 to i32
  %sub6 = sub nsw i32 %conv2, %conv5
  %htotal = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 4
  %10 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %htotal, align 2
  %conv7 = zext i16 %11 to i32
  %sub10 = sub nsw i32 %conv7, %conv
  %sub15 = sub nsw i32 %conv7, %conv5
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %dev1, i32 noundef 2, ptr noundef nonnull @.str.58) #8
  %12 = ptrtoint ptr %adj to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %adj, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %dev1, i32 noundef 2, ptr noundef nonnull @.str.59, i32 noundef %sub, i32 noundef %sub6, i32 noundef %sub10, i32 noundef %13) #8
  %hsync_start16 = getelementptr inbounds %struct.drm_display_mode, ptr %adj, i32 0, i32 2
  %14 = ptrtoint ptr %hsync_start16 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %hsync_start16, align 2
  %conv17 = zext i16 %15 to i32
  %hsync_end18 = getelementptr inbounds %struct.drm_display_mode, ptr %adj, i32 0, i32 3
  %16 = ptrtoint ptr %hsync_end18 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %hsync_end18, align 4
  %conv19 = zext i16 %17 to i32
  %htotal20 = getelementptr inbounds %struct.drm_display_mode, ptr %adj, i32 0, i32 4
  %18 = ptrtoint ptr %htotal20 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %htotal20, align 2
  %conv21 = zext i16 %19 to i32
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %dev1, i32 noundef 2, ptr noundef nonnull @.str.60, i32 noundef %conv17, i32 noundef %conv19, i32 noundef %conv21) #8
  %and = and i32 %sub6, 1
  %adj_hfp.0 = add nsw i32 %sub6, %and
  %adj_hbp.0 = and i32 %sub10, -2
  %and32 = and i32 %sub, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end.if.end40_crit_edge, label %if.then34

if.end.if.end40_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40

if.then34:                                        ; preds = %if.end
  %20 = and i32 %sub10, 1
  %adj_hblanking.0 = add nsw i32 %sub15, %and
  %adj_hblanking.1 = sub nsw i32 %adj_hblanking.0, %20
  call void @__sanitizer_cov_trace_cmp4(i32 %adj_hblanking.1, i32 %sub15)
  %cmp = icmp ult i32 %adj_hblanking.1, %sub15
  br i1 %cmp, label %if.then36, label %if.else

if.then36:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  %add37 = add nsw i32 %sub, 1
  br label %if.end40

if.else:                                          ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  %sub38 = add nsw i32 %sub, -1
  br label %if.end40

if.end40:                                         ; preds = %if.else, %if.then36, %if.end.if.end40_crit_edge
  %adj_hsync.0 = phi i32 [ %add37, %if.then36 ], [ %sub38, %if.else ], [ %sub, %if.end.if.end40_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %sub15)
  %cmp41 = icmp ult i32 %sub15, 80
  br i1 %cmp41, label %if.then55, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub6)
  %cmp43 = icmp ult i32 %sub6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub10)
  %cmp45 = icmp ult i32 %sub10, 8
  %or.cond = select i1 %cmp43, i1 %cmp45, i1 false
  br i1 %or.cond, label %if.else66, label %if.else84

if.then55:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %adj to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %adj, align 4
  %mul228 = mul i32 %22, 1000
  %23 = ptrtoint ptr %htotal20 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %htotal20, align 2
  %conv50229 = zext i16 %24 to i32
  %vtotal230 = getelementptr inbounds %struct.drm_display_mode, ptr %adj, i32 0, i32 9
  %25 = ptrtoint ptr %vtotal230 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %vtotal230, align 4
  %conv51231 = zext i16 %26 to i32
  %mul52232 = mul nuw i32 %conv51231, %conv50229
  %div233 = sdiv i32 %mul228, %mul52232
  %sub56 = sub nuw nsw i32 80, %sub15
  %mul57 = mul i32 %div233, %sub56
  %mul60 = mul i32 %mul57, %conv51231
  %sub62 = add i32 %mul60, 999
  %div63 = udiv i32 %sub62, 1000
  %add65 = add i32 %div63, %22
  br label %do.end

if.else66:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %adj to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %adj, align 4
  %mul = mul i32 %28, 1000
  %29 = ptrtoint ptr %htotal20 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %htotal20, align 2
  %conv50 = zext i16 %30 to i32
  %vtotal = getelementptr inbounds %struct.drm_display_mode, ptr %adj, i32 0, i32 9
  %31 = ptrtoint ptr %vtotal to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %vtotal, align 4
  %conv51 = zext i16 %32 to i32
  %mul52 = mul nuw i32 %conv51, %conv50
  %div = sdiv i32 %mul, %mul52
  %sub67 = add nsw i32 %sub15, -80
  %mul68 = mul i32 %div, %sub67
  %mul71 = mul i32 %mul68, %conv51
  %sub73 = add i32 %mul71, 999
  %div74 = udiv i32 %sub73, 1000
  %sub76 = sub i32 %28, %div74
  br label %do.end

do.end:                                           ; preds = %if.else66, %if.then55
  %storemerge = phi i32 [ %sub76, %if.else66 ], [ %add65, %if.then55 ]
  %33 = ptrtoint ptr %adj to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %storemerge, ptr %adj, align 4
  %call78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61) #12
  %call83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, i32 noundef %sub6, i32 noundef %sub10, i32 noundef %sub) #12
  br label %if.end112

if.else84:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %adj_hfp.0)
  %cmp85 = icmp ult i32 %adj_hfp.0, 8
  br i1 %cmp85, label %if.then87, label %if.else97

if.then87:                                        ; preds = %if.else84
  call void @__sanitizer_cov_trace_pc() #10
  %sub88 = sub nuw nsw i32 8, %adj_hfp.0
  %sub89 = sub nsw i32 %adj_hbp.0, %sub88
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub89)
  %cmp90 = icmp ult i32 %sub89, 8
  %sub93 = select i1 %cmp90, i32 %sub88, i32 0
  %spec.select = sub nsw i32 %adj_hsync.0, %sub93
  %spec.select225 = select i1 %cmp90, i32 %adj_hbp.0, i32 %sub89
  br label %if.end112

if.else97:                                        ; preds = %if.else84
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %adj_hbp.0)
  %cmp98 = icmp ult i32 %adj_hbp.0, 8
  br i1 %cmp98, label %if.then100, label %if.else97.if.end112_crit_edge

if.else97.if.end112_crit_edge:                    ; preds = %if.else97
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end112

if.then100:                                       ; preds = %if.else97
  call void @__sanitizer_cov_trace_pc() #10
  %sub101 = sub nuw nsw i32 8, %adj_hbp.0
  %sub102 = sub nsw i32 %adj_hfp.0, %sub101
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub102)
  %cmp103 = icmp ult i32 %sub102, 8
  %sub106 = select i1 %cmp103, i32 %sub101, i32 0
  %spec.select226 = sub nsw i32 %adj_hsync.0, %sub106
  %spec.select227 = select i1 %cmp103, i32 %adj_hfp.0, i32 %sub102
  br label %if.end112

if.end112:                                        ; preds = %if.then100, %if.else97.if.end112_crit_edge, %if.then87, %do.end
  %adj_hsync.1 = phi i32 [ 32, %do.end ], [ %adj_hsync.0, %if.else97.if.end112_crit_edge ], [ %spec.select, %if.then87 ], [ %spec.select226, %if.then100 ]
  %adj_hfp.1 = phi i32 [ 24, %do.end ], [ %adj_hfp.0, %if.else97.if.end112_crit_edge ], [ 8, %if.then87 ], [ %spec.select227, %if.then100 ]
  %adj_hbp.1 = phi i32 [ 24, %do.end ], [ %adj_hbp.0, %if.else97.if.end112_crit_edge ], [ %spec.select225, %if.then87 ], [ 8, %if.then100 ]
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %dev1, i32 noundef 2, ptr noundef nonnull @.str.67) #8
  %34 = ptrtoint ptr %adj to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %adj, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %dev1, i32 noundef 2, ptr noundef nonnull @.str.59, i32 noundef %adj_hsync.1, i32 noundef %adj_hfp.1, i32 noundef %adj_hbp.1, i32 noundef %35) #8
  %hdisplay114 = getelementptr inbounds %struct.drm_display_mode, ptr %adj, i32 0, i32 1
  %36 = ptrtoint ptr %hdisplay114 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %hdisplay114, align 4
  %38 = trunc i32 %adj_hfp.1 to i16
  %conv117 = add i16 %37, %38
  %39 = ptrtoint ptr %hsync_start16 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv117, ptr %hsync_start16, align 2
  %40 = trunc i32 %adj_hsync.1 to i16
  %conv122 = add i16 %conv117, %40
  %41 = ptrtoint ptr %hsync_end18 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv122, ptr %hsync_end18, align 4
  %42 = trunc i32 %adj_hbp.1 to i16
  %conv127 = add i16 %conv122, %42
  %43 = ptrtoint ptr %htotal20 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv127, ptr %htotal20, align 2
  %conv130 = zext i16 %conv117 to i32
  %conv132 = zext i16 %conv122 to i32
  %conv134 = zext i16 %conv127 to i32
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %dev1, i32 noundef 2, ptr noundef nonnull @.str.60, i32 noundef %conv130, i32 noundef %conv132, i32 noundef %conv134) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end112, %entry.cleanup_crit_edge
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @anx7625_bridge_disable(ptr nocapture noundef %bridge) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %bridge, i32 -1072
  %client = getelementptr i8, ptr %bridge, i32 -728
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %dev1, i32 noundef 2, ptr noundef nonnull @.str.68) #8
  %2 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client, align 4
  %dev1.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %dev1.i, i32 noundef 2, ptr noundef nonnull @.str.69) #8
  %i2c.i = getelementptr i8, ptr %bridge, i32 -724
  %4 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %i2c.i, align 4
  %call.i.i = tail call fastcc i32 @anx7625_reg_read(ptr noundef %add.ptr.i, ptr noundef %5, i8 noundef zeroext -121) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %entry.anx7625_write_and.exit.i_crit_edge, label %if.end.i.i

entry.anx7625_write_and.exit.i_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %anx7625_write_and.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = trunc i32 %call.i.i to i8
  %conv1.i.i = and i8 %6, -2
  %call2.i.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %add.ptr.i, ptr noundef %5, i8 noundef zeroext -121, i8 noundef zeroext %conv1.i.i) #8
  br label %anx7625_write_and.exit.i

anx7625_write_and.exit.i:                         ; preds = %if.end.i.i, %entry.anx7625_write_and.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call2.i.i, %if.end.i.i ], [ %call.i.i, %entry.anx7625_write_and.exit.i_crit_edge ]
  %tx_p2_client.i = getelementptr i8, ptr %bridge, i32 -716
  %7 = ptrtoint ptr %tx_p2_client.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tx_p2_client.i, align 4
  %call.i14.i = tail call fastcc i32 @anx7625_reg_read(ptr noundef %add.ptr.i, ptr noundef %8, i8 noundef zeroext 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14.i)
  %cmp.i15.i = icmp slt i32 %call.i14.i, 0
  br i1 %cmp.i15.i, label %anx7625_write_and.exit.i.anx7625_write_and.exit20.i_crit_edge, label %if.end.i18.i

anx7625_write_and.exit.i.anx7625_write_and.exit20.i_crit_edge: ; preds = %anx7625_write_and.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %anx7625_write_and.exit20.i

if.end.i18.i:                                     ; preds = %anx7625_write_and.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %9 = trunc i32 %call.i14.i to i8
  %conv1.i16.i = and i8 %9, 127
  %call2.i17.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %add.ptr.i, ptr noundef %8, i8 noundef zeroext 8, i8 noundef zeroext %conv1.i16.i) #8
  br label %anx7625_write_and.exit20.i

anx7625_write_and.exit20.i:                       ; preds = %if.end.i18.i, %anx7625_write_and.exit.i.anx7625_write_and.exit20.i_crit_edge
  %retval.0.i19.i = phi i32 [ %call2.i17.i, %if.end.i18.i ], [ %call.i14.i, %anx7625_write_and.exit.i.anx7625_write_and.exit20.i_crit_edge ]
  %rx_p0_client.i.i = getelementptr i8, ptr %bridge, i32 -712
  %10 = ptrtoint ptr %rx_p0_client.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx_p0_client.i.i, align 4
  %call.i.i.i = tail call fastcc i32 @anx7625_reg_read(ptr noundef %add.ptr.i, ptr noundef %11, i8 noundef zeroext 40) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %anx7625_write_and.exit20.i.anx7625_write_or.exit.i.i_crit_edge, label %if.end.i.i.i

anx7625_write_and.exit20.i.anx7625_write_or.exit.i.i_crit_edge: ; preds = %anx7625_write_and.exit20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %anx7625_write_or.exit.i.i

if.end.i.i.i:                                     ; preds = %anx7625_write_and.exit20.i
  call void @__sanitizer_cov_trace_pc() #10
  %12 = trunc i32 %call.i.i.i to i8
  %conv1.i.i.i = or i8 %12, 16
  %call2.i.i.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %add.ptr.i, ptr noundef %11, i8 noundef zeroext 40, i8 noundef zeroext %conv1.i.i.i) #8
  br label %anx7625_write_or.exit.i.i

anx7625_write_or.exit.i.i:                        ; preds = %if.end.i.i.i, %anx7625_write_and.exit20.i.anx7625_write_or.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %call2.i.i.i, %if.end.i.i.i ], [ %call.i.i.i, %anx7625_write_and.exit20.i.anx7625_write_or.exit.i.i_crit_edge ]
  %13 = ptrtoint ptr %rx_p0_client.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rx_p0_client.i.i, align 4
  %call.i1.i.i = tail call fastcc i32 @anx7625_reg_read(ptr noundef %add.ptr.i, ptr noundef %14, i8 noundef zeroext 40) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %cmp.i2.i.i = icmp slt i32 %call.i1.i.i, 0
  br i1 %cmp.i2.i.i, label %anx7625_write_or.exit.i.i.anx7625_video_mute_control.exit.i_crit_edge, label %if.end.i5.i.i

anx7625_write_or.exit.i.i.anx7625_video_mute_control.exit.i_crit_edge: ; preds = %anx7625_write_or.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %anx7625_video_mute_control.exit.i

if.end.i5.i.i:                                    ; preds = %anx7625_write_or.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %15 = trunc i32 %call.i1.i.i to i8
  %conv1.i3.i.i = and i8 %15, -33
  %call2.i4.i.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %add.ptr.i, ptr noundef %14, i8 noundef zeroext 40, i8 noundef zeroext %conv1.i3.i.i) #8
  br label %anx7625_video_mute_control.exit.i

anx7625_video_mute_control.exit.i:                ; preds = %if.end.i5.i.i, %anx7625_write_or.exit.i.i.anx7625_video_mute_control.exit.i_crit_edge
  %retval.0.i6.i.i = phi i32 [ %call2.i4.i.i, %if.end.i5.i.i ], [ %call.i1.i.i, %anx7625_write_or.exit.i.i.anx7625_video_mute_control.exit.i_crit_edge ]
  %or.i.i = or i32 %retval.0.i19.i, %retval.0.i.i
  %or.i = or i32 %or.i.i, %retval.0.i.i.i
  %or5.i = or i32 %or.i, %retval.0.i6.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i)
  %cmp.i = icmp slt i32 %or5.i, 0
  br i1 %cmp.i, label %if.then.i, label %anx7625_video_mute_control.exit.i.anx7625_dp_stop.exit_crit_edge

anx7625_video_mute_control.exit.i.anx7625_dp_stop.exit_crit_edge: ; preds = %anx7625_video_mute_control.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %anx7625_dp_stop.exit

if.then.i:                                        ; preds = %anx7625_video_mute_control.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.70) #8
  br label %anx7625_dp_stop.exit

anx7625_dp_stop.exit:                             ; preds = %if.then.i, %anx7625_video_mute_control.exit.i.anx7625_dp_stop.exit_crit_edge
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 4) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @anx7625_bridge_mode_set(ptr nocapture noundef %bridge, ptr nocapture noundef readnone %old_mode, ptr nocapture noundef readonly %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %client = getelementptr i8, ptr %bridge, i32 -728
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %dev1, i32 noundef 2, ptr noundef nonnull @.str.71) #8
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  %dt = getelementptr i8, ptr %bridge, i32 -116
  %4 = ptrtoint ptr %dt to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %dt, align 4
  %hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 1
  %5 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %hdisplay, align 4
  %conv = zext i16 %6 to i32
  %hactive = getelementptr i8, ptr %bridge, i32 -104
  %7 = ptrtoint ptr %hactive to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv, ptr %hactive, align 4
  %hsync_end = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 3
  %8 = ptrtoint ptr %hsync_end to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %hsync_end, align 4
  %conv4 = zext i16 %9 to i32
  %hsync_start = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 2
  %10 = ptrtoint ptr %hsync_start to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %hsync_start, align 2
  %conv5 = zext i16 %11 to i32
  %sub = sub nsw i32 %conv4, %conv5
  %hsync_len = getelementptr i8, ptr %bridge, i32 -68
  %12 = ptrtoint ptr %hsync_len to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %sub, ptr %hsync_len, align 4
  %13 = load i16, ptr %hsync_start, align 2
  %conv9 = zext i16 %13 to i32
  %14 = load i16, ptr %hdisplay, align 4
  %conv11 = zext i16 %14 to i32
  %sub12 = sub nsw i32 %conv9, %conv11
  %hfront_porch = getelementptr i8, ptr %bridge, i32 -92
  %15 = ptrtoint ptr %hfront_porch to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sub12, ptr %hfront_porch, align 4
  %htotal = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 4
  %16 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %htotal, align 2
  %conv15 = zext i16 %17 to i32
  %18 = load i16, ptr %hsync_end, align 4
  %conv17 = zext i16 %18 to i32
  %sub18 = sub nsw i32 %conv15, %conv17
  %hback_porch = getelementptr i8, ptr %bridge, i32 -80
  %19 = ptrtoint ptr %hback_porch to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %sub18, ptr %hback_porch, align 4
  %vdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 6
  %20 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %vdisplay, align 2
  %conv21 = zext i16 %21 to i32
  %vactive = getelementptr i8, ptr %bridge, i32 -56
  %22 = ptrtoint ptr %vactive to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv21, ptr %vactive, align 4
  %vsync_end = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 8
  %23 = ptrtoint ptr %vsync_end to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %vsync_end, align 2
  %conv24 = zext i16 %24 to i32
  %vsync_start = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 7
  %25 = ptrtoint ptr %vsync_start to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %vsync_start, align 4
  %conv25 = zext i16 %26 to i32
  %sub26 = sub nsw i32 %conv24, %conv25
  %vsync_len = getelementptr i8, ptr %bridge, i32 -20
  %27 = ptrtoint ptr %vsync_len to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %sub26, ptr %vsync_len, align 4
  %28 = load i16, ptr %vsync_start, align 4
  %conv30 = zext i16 %28 to i32
  %29 = load i16, ptr %vdisplay, align 2
  %conv32 = zext i16 %29 to i32
  %sub33 = sub nsw i32 %conv30, %conv32
  %vfront_porch = getelementptr i8, ptr %bridge, i32 -44
  %30 = ptrtoint ptr %vfront_porch to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %sub33, ptr %vfront_porch, align 4
  %vtotal = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 9
  %31 = ptrtoint ptr %vtotal to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %vtotal, align 4
  %conv36 = zext i16 %32 to i32
  %33 = load i16, ptr %vsync_end, align 2
  %conv38 = zext i16 %33 to i32
  %sub39 = sub nsw i32 %conv36, %conv38
  %vback_porch = getelementptr i8, ptr %bridge, i32 -32
  %34 = ptrtoint ptr %vback_porch to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %sub39, ptr %vback_porch, align 4
  %display_timing_valid = getelementptr i8, ptr %bridge, i32 -4
  %35 = ptrtoint ptr %display_timing_valid to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %display_timing_valid, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %dev1, i32 noundef 2, ptr noundef nonnull @.str.72, i32 noundef %3) #8
  %36 = ptrtoint ptr %hactive to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %hactive, align 4
  %38 = ptrtoint ptr %hsync_len to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %hsync_len, align 4
  %40 = ptrtoint ptr %hfront_porch to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %hfront_porch, align 4
  %42 = ptrtoint ptr %hback_porch to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %hback_porch, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %dev1, i32 noundef 2, ptr noundef nonnull @.str.73, i32 noundef %37, i32 noundef %39, i32 noundef %41, i32 noundef %43) #8
  %44 = ptrtoint ptr %vactive to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %vactive, align 4
  %46 = ptrtoint ptr %vsync_len to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %vsync_len, align 4
  %48 = ptrtoint ptr %vfront_porch to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %vfront_porch, align 4
  %50 = ptrtoint ptr %vback_porch to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %vback_porch, align 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %dev1, i32 noundef 2, ptr noundef nonnull @.str.74, i32 noundef %45, i32 noundef %47, i32 noundef %49, i32 noundef %51) #8
  %52 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %hdisplay, align 4
  %conv70 = zext i16 %53 to i32
  %54 = ptrtoint ptr %hsync_start to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %hsync_start, align 2
  %conv72 = zext i16 %55 to i32
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %dev1, i32 noundef 2, ptr noundef nonnull @.str.75, i32 noundef %conv70, i32 noundef %conv72) #8
  %56 = ptrtoint ptr %hsync_end to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %hsync_end, align 4
  %conv74 = zext i16 %57 to i32
  %58 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %htotal, align 2
  %conv76 = zext i16 %59 to i32
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %dev1, i32 noundef 2, ptr noundef nonnull @.str.76, i32 noundef %conv74, i32 noundef %conv76) #8
  %60 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %vdisplay, align 2
  %conv78 = zext i16 %61 to i32
  %62 = ptrtoint ptr %vsync_start to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %vsync_start, align 4
  %conv80 = zext i16 %63 to i32
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %dev1, i32 noundef 2, ptr noundef nonnull @.str.77, i32 noundef %conv78, i32 noundef %conv80) #8
  %64 = ptrtoint ptr %vsync_end to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %vsync_end, align 2
  %conv82 = zext i16 %65 to i32
  %66 = ptrtoint ptr %vtotal to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %vtotal, align 4
  %conv84 = zext i16 %67 to i32
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %dev1, i32 noundef 2, ptr noundef nonnull @.str.78, i32 noundef %conv82, i32 noundef %conv84) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @anx7625_bridge_enable(ptr noundef %bridge) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %bridge, i32 -1072
  %client = getelementptr i8, ptr %bridge, i32 -728
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %dev1, i32 noundef 2, ptr noundef nonnull @.str.79) #8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #8
  %2 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client, align 4
  %dev1.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %display_timing_valid.i = getelementptr i8, ptr %bridge, i32 -4
  %4 = ptrtoint ptr %display_timing_valid.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %display_timing_valid.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.80) #8
  br label %anx7625_dp_start.exit

if.end.i:                                         ; preds = %entry
  %is_dpi.i = getelementptr i8, ptr %bridge, i32 -1020
  %6 = ptrtoint ptr %is_dpi.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %is_dpi.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not.i = icmp eq i32 %7, 0
  br i1 %tobool2.not.i, label %if.else.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %dev1.i, i32 noundef 2, ptr noundef nonnull @.str.82) #8
  %rx_p0_client.i.i = getelementptr i8, ptr %bridge, i32 -712
  %8 = ptrtoint ptr %rx_p0_client.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rx_p0_client.i.i, align 4
  %call.i.i.i = tail call fastcc i32 @anx7625_reg_read(ptr noundef %add.ptr.i, ptr noundef %9, i8 noundef zeroext 64) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then3.i.if.then6.i_crit_edge, label %anx7625_write_and.exit.i.i

if.then3.i.if.then6.i_crit_edge:                  ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then6.i

anx7625_write_and.exit.i.i:                       ; preds = %if.then3.i
  %10 = trunc i32 %call.i.i.i to i8
  %conv1.i.i.i = and i8 %10, -2
  %call2.i.i.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %add.ptr.i, ptr noundef %9, i8 noundef zeroext 64, i8 noundef zeroext %conv1.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %cmp.i.i = icmp slt i32 %call2.i.i.i, 0
  br i1 %cmp.i.i, label %anx7625_write_and.exit.i.i.if.then6.i_crit_edge, label %if.end.i.i

anx7625_write_and.exit.i.i.if.then6.i_crit_edge:  ; preds = %anx7625_write_and.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then6.i

if.end.i.i:                                       ; preds = %anx7625_write_and.exit.i.i
  %tx_p2_client.i.i.i = getelementptr i8, ptr %bridge, i32 -716
  %11 = ptrtoint ptr %tx_p2_client.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tx_p2_client.i.i.i, align 4
  %call.i.i.i.i = tail call fastcc i32 @anx7625_reg_read(ptr noundef %add.ptr.i, ptr noundef %12, i8 noundef zeroext -26) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.end.i.i.anx7625_config_bit_matrix.exit.i.i_crit_edge, label %if.end.i.i.i.i

if.end.i.i.anx7625_config_bit_matrix.exit.i.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %anx7625_config_bit_matrix.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %13 = trunc i32 %call.i.i.i.i to i8
  %conv1.i.i.i.i = or i8 %13, -128
  %call2.i.i.i.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %add.ptr.i, ptr noundef %12, i8 noundef zeroext -26, i8 noundef zeroext %conv1.i.i.i.i) #8
  br label %anx7625_config_bit_matrix.exit.i.i

anx7625_config_bit_matrix.exit.i.i:               ; preds = %if.end.i.i.i.i, %if.end.i.i.anx7625_config_bit_matrix.exit.i.i_crit_edge
  %retval.0.i.i.i.i = phi i32 [ %call2.i.i.i.i, %if.end.i.i.i.i ], [ %call.i.i.i.i, %if.end.i.i.anx7625_config_bit_matrix.exit.i.i_crit_edge ]
  %14 = ptrtoint ptr %tx_p2_client.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tx_p2_client.i.i.i, align 4
  %call5.i.i.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %add.ptr.i, ptr noundef %15, i8 noundef zeroext 76, i8 noundef zeroext 24) #8
  %or.i.i.i = or i32 %call5.i.i.i, %retval.0.i.i.i.i
  %16 = ptrtoint ptr %tx_p2_client.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tx_p2_client.i.i.i, align 4
  %call5.1.i.i.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %add.ptr.i, ptr noundef %17, i8 noundef zeroext 77, i8 noundef zeroext 25) #8
  %or.1.i.i.i = or i32 %or.i.i.i, %call5.1.i.i.i
  %18 = ptrtoint ptr %tx_p2_client.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tx_p2_client.i.i.i, align 4
  %call5.2.i.i.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %add.ptr.i, ptr noundef %19, i8 noundef zeroext 78, i8 noundef zeroext 26) #8
  %or.2.i.i.i = or i32 %or.1.i.i.i, %call5.2.i.i.i
  %20 = ptrtoint ptr %tx_p2_client.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tx_p2_client.i.i.i, align 4
  %call5.3.i.i.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %add.ptr.i, ptr noundef %21, i8 noundef zeroext 79, i8 noundef zeroext 27) #8
  %or.3.i.i.i = or i32 %or.2.i.i.i, %call5.3.i.i.i
  %22 = ptrtoint ptr %tx_p2_client.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tx_p2_client.i.i.i, align 4
  %call5.4.i.i.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %add.ptr.i, ptr noundef %23, i8 noundef zeroext 80, i8 noundef zeroext 28) #8
  %or.4.i.i.i = or i32 %or.3.i.i.i, %call5.4.i.i.i
  %24 = ptrtoint ptr %tx_p2_client.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tx_p2_client.i.i.i, align 4
  %call5.5.i.i.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %add.ptr.i, ptr noundef %25, i8 noundef zeroext 81, i8 noundef zeroext 29) #8
  %or.5.i.i.i = or i32 %or.4.i.i.i, %call5.5.i.i.i
  %26 = ptrtoint ptr %tx_p2_client.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tx_p2_client.i.i.i, align 4
  %call5.6.i.i.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %add.ptr.i, ptr noundef %27, i8 noundef zeroext 82, i8 noundef zeroext 30) #8
  %or.6.i.i.i = or i32 %or.5.i.i.i, %call5.6.i.i.i
  %28 = ptrtoint ptr %tx_p2_client.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tx_p2_client.i.i.i, align 4
  %call5.7.i.i.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %add.ptr.i, ptr noundef %29, i8 noundef zeroext 83, i8 noundef zeroext 31) #8
  %or.7.i.i.i = or i32 %or.6.i.i.i, %call5.7.i.i.i
  %30 = ptrtoint ptr %tx_p2_client.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tx_p2_client.i.i.i, align 4
  %call5.8.i.i.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %add.ptr.i, ptr noundef %31, i8 noundef zeroext 84, i8 noundef zeroext 32) #8
  %or.8.i.i.i = or i32 %or.7.i.i.i, %call5.8.i.i.i
  %32 = ptrtoint ptr %tx_p2_client.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tx_p2_client.i.i.i, align 4
  %call5.9.i.i.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %add.ptr.i, ptr noundef %33, i8 noundef zeroext 85, i8 noundef zeroext 33) #8
  %or.9.i.i.i = or i32 %or.8.i.i.i, %call5.9.i.i.i
  %34 = ptrtoint ptr %tx_p2_client.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tx_p2_client.i.i.i, align 4
  %call5.10.i.i.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %add.ptr.i, ptr noundef %35, i8 noundef zeroext 86, i8 noundef zeroext 34) #8
  %or.10.i.i.i = or i32 %or.9.i.i.i, %call5.10.i.i.i
  %36 = ptrtoint ptr %tx_p2_client.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tx_p2_client.i.i.i, align 4
  %call5.11.i.i.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %add.ptr.i, ptr noundef %37, i8 noundef zeroext 87, i8 noundef zeroext 35) #8
  %or.11.i.i.i = or i32 %or.10.i.i.i, %call5.11.i.i.i
  %38 = ptrtoint ptr %tx_p2_client.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tx_p2_client.i.i.i, align 4
  %call5.12.i.i.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %add.ptr.i, ptr noundef %39, i8 noundef zeroext 88, i8 noundef zeroext 36) #8
  %or.12.i.i.i = or i32 %or.11.i.i.i, %call5.12.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.12.i.i.i)
  %cmp3.i.i = icmp slt i32 %or.12.i.i.i, 0
  br i1 %cmp3.i.i, label %anx7625_config_bit_matrix.exit.i.i.if.then6.i_crit_edge, label %if.end5.i.i

anx7625_config_bit_matrix.exit.i.i.if.then6.i_crit_edge: ; preds = %anx7625_config_bit_matrix.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then6.i

if.end5.i.i:                                      ; preds = %anx7625_config_bit_matrix.exit.i.i
  %40 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %client, align 4
  %dt.i.i.i = getelementptr i8, ptr %bridge, i32 -116
  %42 = ptrtoint ptr %dt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dt.i.i.i, align 4
  %div.i.i.i = udiv i32 %43, 1000
  %44 = ptrtoint ptr %rx_p0_client.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %rx_p0_client.i.i, align 4
  %conv3.i.i.i = trunc i32 %div.i.i.i to i8
  %call.i40.i.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %add.ptr.i, ptr noundef %45, i8 noundef zeroext 37, i8 noundef zeroext %conv3.i.i.i) #8
  %46 = ptrtoint ptr %rx_p0_client.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %rx_p0_client.i.i, align 4
  %conv2.i.i.i = lshr i32 %div.i.i.i, 8
  %conv7.i.i.i = trunc i32 %conv2.i.i.i to i8
  %call8.i.i.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %add.ptr.i, ptr noundef %47, i8 noundef zeroext 38, i8 noundef zeroext %conv7.i.i.i) #8
  %or.i41.i.i = or i32 %call8.i.i.i, %call.i40.i.i
  %rx_p1_client.i.i.i = getelementptr i8, ptr %bridge, i32 -708
  %48 = ptrtoint ptr %rx_p1_client.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rx_p1_client.i.i.i, align 4
  %call10.i.i.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %add.ptr.i, ptr noundef %49, i8 noundef zeroext 52, i8 noundef zeroext 32) #8
  %or11.i.i.i = or i32 %or.i41.i.i, %call10.i.i.i
  %50 = ptrtoint ptr %rx_p1_client.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rx_p1_client.i.i.i, align 4
  %call14.i.i.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %add.ptr.i, ptr noundef %51, i8 noundef zeroext 15, i8 noundef zeroext 8) #8
  %or15.i.i.i = or i32 %or11.i.i.i, %call14.i.i.i
  %52 = ptrtoint ptr %rx_p1_client.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %rx_p1_client.i.i.i, align 4
  %call18.i.i.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %add.ptr.i, ptr noundef %53, i8 noundef zeroext 61, i8 noundef zeroext 28) #8
  %or19.i.i.i = or i32 %or15.i.i.i, %call18.i.i.i
  %54 = ptrtoint ptr %tx_p2_client.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %tx_p2_client.i.i.i, align 4
  %call21.i.i.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %add.ptr.i, ptr noundef %55, i8 noundef zeroext 8, i8 noundef zeroext 6) #8
  %or22.i.i.i = or i32 %or19.i.i.i, %call21.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or22.i.i.i)
  %cmp.i43.i.i = icmp slt i32 %or22.i.i.i, 0
  br i1 %cmp.i43.i.i, label %if.then8.i.i, label %if.end9.i.i

if.then8.i.i:                                     ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev1.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %41, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1.i.i.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.87) #8
  br label %if.then6.i

if.end9.i.i:                                      ; preds = %if.end5.i.i
  %56 = ptrtoint ptr %rx_p0_client.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %rx_p0_client.i.i, align 4
  %call.i45.i.i = tail call fastcc i32 @anx7625_reg_read(ptr noundef %add.ptr.i, ptr noundef %57, i8 noundef zeroext 40) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i45.i.i)
  %cmp.i46.i.i = icmp slt i32 %call.i45.i.i, 0
  br i1 %cmp.i46.i.i, label %if.end9.i.i.anx7625_write_or.exit.i.i_crit_edge, label %if.end.i49.i.i

if.end9.i.i.anx7625_write_or.exit.i.i_crit_edge:  ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %anx7625_write_or.exit.i.i

if.end.i49.i.i:                                   ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %58 = trunc i32 %call.i45.i.i to i8
  %conv1.i47.i.i = or i8 %58, 32
  %call2.i48.i.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %add.ptr.i, ptr noundef %57, i8 noundef zeroext 40, i8 noundef zeroext %conv1.i47.i.i) #8
  br label %anx7625_write_or.exit.i.i

anx7625_write_or.exit.i.i:                        ; preds = %if.end.i49.i.i, %if.end9.i.i.anx7625_write_or.exit.i.i_crit_edge
  %retval.0.i50.i.i = phi i32 [ %call2.i48.i.i, %if.end.i49.i.i ], [ %call.i45.i.i, %if.end9.i.i.anx7625_write_or.exit.i.i_crit_edge ]
  %59 = ptrtoint ptr %rx_p0_client.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %rx_p0_client.i.i, align 4
  %call.i51.i.i = tail call fastcc i32 @anx7625_reg_read(ptr noundef %add.ptr.i, ptr noundef %60, i8 noundef zeroext 40) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51.i.i)
  %cmp.i52.i.i = icmp slt i32 %call.i51.i.i, 0
  br i1 %cmp.i52.i.i, label %anx7625_write_or.exit.i.i.anx7625_write_and.exit57.i.i_crit_edge, label %if.end.i55.i.i

anx7625_write_or.exit.i.i.anx7625_write_and.exit57.i.i_crit_edge: ; preds = %anx7625_write_or.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %anx7625_write_and.exit57.i.i

if.end.i55.i.i:                                   ; preds = %anx7625_write_or.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %61 = trunc i32 %call.i51.i.i to i8
  %conv1.i53.i.i = and i8 %61, -17
  %call2.i54.i.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %add.ptr.i, ptr noundef %60, i8 noundef zeroext 40, i8 noundef zeroext %conv1.i53.i.i) #8
  br label %anx7625_write_and.exit57.i.i

anx7625_write_and.exit57.i.i:                     ; preds = %if.end.i55.i.i, %anx7625_write_or.exit.i.i.anx7625_write_and.exit57.i.i_crit_edge
  %retval.0.i56.i.i = phi i32 [ %call2.i54.i.i, %if.end.i55.i.i ], [ %call.i51.i.i, %anx7625_write_or.exit.i.i.anx7625_write_and.exit57.i.i_crit_edge ]
  %or.i.i = or i32 %retval.0.i56.i.i, %retval.0.i50.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp16.i.i = icmp slt i32 %or.i.i, 0
  br i1 %cmp16.i.i, label %anx7625_write_and.exit57.i.i.if.then6.i_crit_edge, label %anx7625_write_and.exit57.i.i.anx7625_dp_start.exit_crit_edge

anx7625_write_and.exit57.i.i.anx7625_dp_start.exit_crit_edge: ; preds = %anx7625_write_and.exit57.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %anx7625_dp_start.exit

anx7625_write_and.exit57.i.i.if.then6.i_crit_edge: ; preds = %anx7625_write_and.exit57.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then6.i

if.else.i:                                        ; preds = %if.end.i
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %dev1.i, i32 noundef 2, ptr noundef nonnull @.str.88) #8
  %rx_p0_client.i16.i = getelementptr i8, ptr %bridge, i32 -712
  %62 = ptrtoint ptr %rx_p0_client.i16.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %rx_p0_client.i16.i, align 4
  %call.i.i17.i = tail call fastcc i32 @anx7625_reg_read(ptr noundef %add.ptr.i, ptr noundef %63, i8 noundef zeroext 64) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i17.i)
  %cmp.i.i18.i = icmp slt i32 %call.i.i17.i, 0
  br i1 %cmp.i.i18.i, label %if.else.i.anx7625_write_and.exit.i24.i_crit_edge, label %if.end.i.i.i

if.else.i.anx7625_write_and.exit.i24.i_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %anx7625_write_and.exit.i24.i

if.end.i.i.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %64 = trunc i32 %call.i.i17.i to i8
  %conv1.i.i19.i = and i8 %64, -2
  %call2.i.i20.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %add.ptr.i, ptr noundef %63, i8 noundef zeroext 64, i8 noundef zeroext %conv1.i.i19.i) #8
  br label %anx7625_write_and.exit.i24.i

anx7625_write_and.exit.i24.i:                     ; preds = %if.end.i.i.i, %if.else.i.anx7625_write_and.exit.i24.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %call2.i.i20.i, %if.end.i.i.i ], [ %call.i.i17.i, %if.else.i.anx7625_write_and.exit.i24.i_crit_edge ]
  %65 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %client, align 4
  %dev1.i.i21.i = getelementptr inbounds %struct.i2c_client, ptr %66, i32 0, i32 4
  %rx_p1_client.i.i.i.i = getelementptr i8, ptr %bridge, i32 -708
  %67 = ptrtoint ptr %rx_p1_client.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %rx_p1_client.i.i.i.i, align 4
  %call.i.i.i22.i = tail call fastcc i32 @anx7625_reg_read(ptr noundef %add.ptr.i, ptr noundef %68, i8 noundef zeroext 74) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i22.i)
  %cmp.i.i.i23.i = icmp slt i32 %call.i.i.i22.i, 0
  br i1 %cmp.i.i.i23.i, label %anx7625_swap_dsi_lane3.exit.thread.i.i.i, label %anx7625_swap_dsi_lane3.exit.i.i.i

anx7625_swap_dsi_lane3.exit.thread.i.i.i:         ; preds = %anx7625_write_and.exit.i24.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1.i.i21.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.95) #8
  br label %cleanup.sink.split.i.i.i

anx7625_swap_dsi_lane3.exit.i.i.i:                ; preds = %anx7625_write_and.exit.i24.i
  %69 = ptrtoint ptr %rx_p1_client.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %rx_p1_client.i.i.i.i, align 4
  %71 = trunc i32 %call.i.i.i22.i to i8
  %conv.i.i.i.i = or i8 %71, 16
  %call4.i.i.i.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %add.ptr.i, ptr noundef %70, i8 noundef zeroext 74, i8 noundef zeroext %conv.i.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i.i)
  %cmp.i29.i.i = icmp slt i32 %call4.i.i.i.i, 0
  br i1 %cmp.i29.i.i, label %anx7625_swap_dsi_lane3.exit.i.i.i.cleanup.sink.split.i.i.i_crit_edge, label %if.end.i31.i.i

anx7625_swap_dsi_lane3.exit.i.i.i.cleanup.sink.split.i.i.i_crit_edge: ; preds = %anx7625_swap_dsi_lane3.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i.i.i

if.end.i31.i.i:                                   ; preds = %anx7625_swap_dsi_lane3.exit.i.i.i
  %72 = ptrtoint ptr %rx_p1_client.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %rx_p1_client.i.i.i.i, align 4
  %call2.i30.i.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %add.ptr.i, ptr noundef %73, i8 noundef zeroext 3, i8 noundef zeroext 24) #8
  %74 = ptrtoint ptr %rx_p1_client.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %rx_p1_client.i.i.i.i, align 4
  %call5.i.i25.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %add.ptr.i, ptr noundef %75, i8 noundef zeroext 8, i8 noundef zeroext 16) #8
  %or.i.i26.i = or i32 %call5.i.i25.i, %call2.i30.i.i
  %76 = ptrtoint ptr %rx_p1_client.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %rx_p1_client.i.i.i.i, align 4
  %call.i73.i.i.i = tail call fastcc i32 @anx7625_reg_read(ptr noundef %add.ptr.i, ptr noundef %77, i8 noundef zeroext 61) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i73.i.i.i)
  %cmp.i74.i.i.i = icmp slt i32 %call.i73.i.i.i, 0
  br i1 %cmp.i74.i.i.i, label %if.end.i31.i.i.anx7625_write_or.exit.i.i.i_crit_edge, label %if.end.i75.i.i.i

if.end.i31.i.i.anx7625_write_or.exit.i.i.i_crit_edge: ; preds = %if.end.i31.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %anx7625_write_or.exit.i.i.i

if.end.i75.i.i.i:                                 ; preds = %if.end.i31.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %78 = trunc i32 %call.i73.i.i.i to i8
  %conv1.i.i.i27.i = or i8 %78, 32
  %call2.i.i.i28.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %add.ptr.i, ptr noundef %77, i8 noundef zeroext 61, i8 noundef zeroext %conv1.i.i.i27.i) #8
  br label %anx7625_write_or.exit.i.i.i

anx7625_write_or.exit.i.i.i:                      ; preds = %if.end.i75.i.i.i, %if.end.i31.i.i.anx7625_write_or.exit.i.i.i_crit_edge
  %retval.0.i76.i.i.i = phi i32 [ %call2.i.i.i28.i, %if.end.i75.i.i.i ], [ %call.i73.i.i.i, %if.end.i31.i.i.anx7625_write_or.exit.i.i.i_crit_edge ]
  %or9.i.i.i = or i32 %or.i.i26.i, %retval.0.i76.i.i.i
  %79 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %client, align 4
  %dev1.i78.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %80, i32 0, i32 4
  %dt.i.i.i.i = getelementptr i8, ptr %bridge, i32 -116
  %81 = ptrtoint ptr %dt.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %dt.i.i.i.i, align 4
  %mul.i.i.i.i = mul i32 %82, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 800000000, i32 %mul.i.i.i.i)
  %cmp.i.i.i.i.i = icmp ugt i32 %mul.i.i.i.i, 800000000
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %if.end.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %anx7625_write_or.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.99, i32 noundef %mul.i.i.i.i, i32 noundef 800000000) #8
  br label %cleanup.sink.split.i.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %anx7625_write_or.exit.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 18750000, i32 %mul.i.i.i.i)
  %cmp1.i.i.i.i.i = icmp ult i32 %mul.i.i.i.i, 18750000
  br i1 %cmp1.i.i.i.i.i, label %if.then2.i.i.i.i.i, label %if.end.i.i.i.i.i.for.cond.i.i.i.i.i_crit_edge

if.end.i.i.i.i.i.for.cond.i.i.i.i.i_crit_edge:    ; preds = %if.end.i.i.i.i.i
  br label %for.cond.i.i.i.i.i

if.then2.i.i.i.i.i:                               ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.100, i32 noundef %mul.i.i.i.i, i32 noundef 18750000) #8
  br label %cleanup.sink.split.i.i.i.i

for.cond.i.i.i.i.i:                               ; preds = %for.cond.i.i.i.i.i.for.cond.i.i.i.i.i_crit_edge, %if.end.i.i.i.i.i.for.cond.i.i.i.i.i_crit_edge
  %storemerge.i.i.i.i.i = phi i8 [ %add.i.i.i.i.i, %for.cond.i.i.i.i.i.for.cond.i.i.i.i.i_crit_edge ], [ 1, %if.end.i.i.i.i.i.for.cond.i.i.i.i.i_crit_edge ]
  %conv.i.i.i.i.i = zext i8 %storemerge.i.i.i.i.i to i32
  %div.i.i.i.i.i = udiv i32 520000000, %conv.i.i.i.i.i
  %cmp4.i.i.i.i.i = icmp ugt i32 %div.i.i.i.i.i, %mul.i.i.i.i
  %add.i.i.i.i.i = add i8 %storemerge.i.i.i.i.i, 1
  br i1 %cmp4.i.i.i.i.i, label %for.cond.i.i.i.i.i.for.cond.i.i.i.i.i_crit_edge, label %for.end.i.i.i.i.i

for.cond.i.i.i.i.i.for.cond.i.i.i.i.i_crit_edge:  ; preds = %for.cond.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i.i.i.i.i

for.end.i.i.i.i.i:                                ; preds = %for.cond.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %storemerge.i.i.i.i.i)
  %cmp9.i.i.i.i.i = icmp ugt i8 %storemerge.i.i.i.i.i, 16
  br i1 %cmp9.i.i.i.i.i, label %for.end.i.i.i.i.i.for.cond12.i.i.i.i.i_crit_edge, label %for.end.i.i.i.i.i.if.end28.i.i.i.i.i_crit_edge

for.end.i.i.i.i.i.if.end28.i.i.i.i.i_crit_edge:   ; preds = %for.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28.i.i.i.i.i

for.end.i.i.i.i.i.for.cond12.i.i.i.i.i_crit_edge: ; preds = %for.end.i.i.i.i.i
  br label %for.cond12.i.i.i.i.i

for.cond12.i.i.i.i.i:                             ; preds = %for.cond12.i.i.i.i.i.for.cond12.i.i.i.i.i_crit_edge, %for.end.i.i.i.i.i.for.cond12.i.i.i.i.i_crit_edge
  %storemerge85.i.i.i.i.i = phi i8 [ %add19.i.i.i.i.i, %for.cond12.i.i.i.i.i.for.cond12.i.i.i.i.i_crit_edge ], [ 1, %for.end.i.i.i.i.i.for.cond12.i.i.i.i.i_crit_edge ]
  %conv13.i.i.i.i.i = zext i8 %storemerge85.i.i.i.i.i to i32
  %div14.i.i.i.i.i = udiv i32 300000000, %conv13.i.i.i.i.i
  %cmp15.i.i.i.i.i = icmp ugt i32 %div14.i.i.i.i.i, %mul.i.i.i.i
  %add19.i.i.i.i.i = add i8 %storemerge85.i.i.i.i.i, 1
  br i1 %cmp15.i.i.i.i.i, label %for.cond12.i.i.i.i.i.for.cond12.i.i.i.i.i_crit_edge, label %for.end21.i.i.i.i.i

for.cond12.i.i.i.i.i.for.cond12.i.i.i.i.i_crit_edge: ; preds = %for.cond12.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond12.i.i.i.i.i

for.end21.i.i.i.i.i:                              ; preds = %for.cond12.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %storemerge85.i.i.i.i.i)
  %cmp23.i.i.i.i.i = icmp ugt i8 %storemerge85.i.i.i.i.i, 16
  br i1 %cmp23.i.i.i.i.i, label %if.then25.i.i.i.i.i, label %for.end21.i.i.i.i.i.if.end28.i.i.i.i.i_crit_edge

for.end21.i.i.i.i.i.if.end28.i.i.i.i.i_crit_edge: ; preds = %for.end21.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28.i.i.i.i.i

if.then25.i.i.i.i.i:                              ; preds = %for.end21.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.101, i32 noundef %conv13.i.i.i.i.i) #8
  br label %cleanup.sink.split.i.i.i.i

if.end28.i.i.i.i.i:                               ; preds = %for.end21.i.i.i.i.i.if.end28.i.i.i.i.i_crit_edge, %for.end.i.i.i.i.i.if.end28.i.i.i.i.i_crit_edge
  %post_divider.0.i.i.i.i = phi i8 [ %storemerge85.i.i.i.i.i, %for.end21.i.i.i.i.i.if.end28.i.i.i.i.i_crit_edge ], [ %storemerge.i.i.i.i.i, %for.end.i.i.i.i.i.if.end28.i.i.i.i.i_crit_edge ]
  %switch.tableidx = add i8 %post_divider.0.i.i.i.i, -7
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %switch.tableidx)
  %83 = icmp ult i8 %switch.tableidx, 8
  br i1 %83, label %switch.hole_check, label %if.end28.i.i.i.i.i.if.end47.i.i.i.i.i_crit_edge

if.end28.i.i.i.i.i.if.end47.i.i.i.i.i_crit_edge:  ; preds = %if.end28.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47.i.i.i.i.i

switch.hole_check:                                ; preds = %if.end28.i.i.i.i.i
  %switch.shifted = lshr i8 -47, %switch.tableidx
  %84 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %switch.lobit.not = icmp eq i8 %84, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.end47.i.i.i.i.i_crit_edge, label %switch.lookup

switch.hole_check.if.end47.i.i.i.i.i_crit_edge:   ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47.i.i.i.i.i

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  %85 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [8 x i8], ptr @switch.table.anx7625_bridge_enable, i32 0, i32 %85
  %86 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %86)
  %switch.load = load i8, ptr %switch.gep, align 1
  br label %if.end47.i.i.i.i.i

if.end47.i.i.i.i.i:                               ; preds = %switch.lookup, %switch.hole_check.if.end47.i.i.i.i.i_crit_edge, %if.end28.i.i.i.i.i.if.end47.i.i.i.i.i_crit_edge
  %post_divider.1.i.i.i.i = phi i8 [ %post_divider.0.i.i.i.i, %if.end28.i.i.i.i.i.if.end47.i.i.i.i.i_crit_edge ], [ %switch.load, %switch.lookup ], [ %post_divider.0.i.i.i.i, %switch.hole_check.if.end47.i.i.i.i.i_crit_edge ]
  %conv48.i.i.i.i.i = zext i8 %post_divider.1.i.i.i.i to i32
  %mul.i.i.i.i.i = mul i32 %mul.i.i.i.i, %conv48.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 800000000, i32 %mul.i.i.i.i.i)
  %cmp49.i.i.i.i.i = icmp ugt i32 %mul.i.i.i.i.i, 800000000
  br i1 %cmp49.i.i.i.i.i, label %if.then51.i.i.i.i.i, label %if.end54.i.i.i.i.i

if.then51.i.i.i.i.i:                              ; preds = %if.end47.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.102, i32 noundef %mul.i.i.i.i.i, i32 noundef 800000000) #8
  br label %cleanup.sink.split.i.i.i.i

if.end54.i.i.i.i.i:                               ; preds = %if.end47.i.i.i.i.i
  %div56.i.i.i.i.i = udiv i32 27000000, %conv48.i.i.i.i.i
  %call.i.i.i.i.i.i = tail call i32 @gcd(i32 noundef %mul.i.i.i.i, i32 noundef %div56.i.i.i.i.i) #13
  %div.i.i.i.i.i.i = udiv i32 %mul.i.i.i.i, %call.i.i.i.i.i.i
  %div1.i.i.i.i.i.i = udiv i32 %div56.i.i.i.i.i, %call.i.i.i.i.i.i
  %87 = or i32 %div1.i.i.i.i.i.i, %div.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %87)
  %.not.i.i.i.i = icmp ult i32 %87, 16777216
  br i1 %.not.i.i.i.i, label %if.end54.i.i.i.i.i.while.cond5.preheader.i.i.i.i.i.i_crit_edge, label %if.end54.i.i.i.i.i.while.body.i.i.i.i.i.i_crit_edge

if.end54.i.i.i.i.i.while.body.i.i.i.i.i.i_crit_edge: ; preds = %if.end54.i.i.i.i.i
  br label %while.body.i.i.i.i.i.i

if.end54.i.i.i.i.i.while.cond5.preheader.i.i.i.i.i.i_crit_edge: ; preds = %if.end54.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond5.preheader.i.i.i.i.i.i

while.cond5.preheader.i.i.i.i.i.i:                ; preds = %while.body.i.i.i.i.i.i.while.cond5.preheader.i.i.i.i.i.i_crit_edge, %if.end54.i.i.i.i.i.while.cond5.preheader.i.i.i.i.i.i_crit_edge
  %m.0.lcssa.i.i.i.i = phi i32 [ %div.i.i.i.i.i.i, %if.end54.i.i.i.i.i.while.cond5.preheader.i.i.i.i.i.i_crit_edge ], [ %div3.i.i.i.i.i.i, %while.body.i.i.i.i.i.i.while.cond5.preheader.i.i.i.i.i.i_crit_edge ]
  %n.0.lcssa.i.i.i.i = phi i32 [ %div1.i.i.i.i.i.i, %if.end54.i.i.i.i.i.while.cond5.preheader.i.i.i.i.i.i_crit_edge ], [ %div4.i.i.i.i.i.i, %while.body.i.i.i.i.i.i.while.cond5.preheader.i.i.i.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %m.0.lcssa.i.i.i.i)
  %cmp629.i.i.i.i.i.i = icmp ult i32 %m.0.lcssa.i.i.i.i, 16777215
  br i1 %cmp629.i.i.i.i.i.i, label %while.cond5.preheader.i.i.i.i.i.i.land.rhs.i.i.i.i.i.i_crit_edge, label %while.cond5.preheader.i.i.i.i.i.i.if.end.i80.i.i.i_crit_edge

while.cond5.preheader.i.i.i.i.i.i.if.end.i80.i.i.i_crit_edge: ; preds = %while.cond5.preheader.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i80.i.i.i

while.cond5.preheader.i.i.i.i.i.i.land.rhs.i.i.i.i.i.i_crit_edge: ; preds = %while.cond5.preheader.i.i.i.i.i.i
  br label %land.rhs.i.i.i.i.i.i

while.body.i.i.i.i.i.i:                           ; preds = %while.body.i.i.i.i.i.i.while.body.i.i.i.i.i.i_crit_edge, %if.end54.i.i.i.i.i.while.body.i.i.i.i.i.i_crit_edge
  %i.0.i.i354.i.i.i.i = phi i32 [ %inc.i.i.i.i.i.i, %while.body.i.i.i.i.i.i.while.body.i.i.i.i.i.i_crit_edge ], [ 1, %if.end54.i.i.i.i.i.while.body.i.i.i.i.i.i_crit_edge ]
  %inc.i.i.i.i.i.i = add i32 %i.0.i.i354.i.i.i.i, 1
  %div3.i.i.i.i.i.i = udiv i32 %div.i.i.i.i.i.i, %inc.i.i.i.i.i.i
  %div4.i.i.i.i.i.i = udiv i32 %div1.i.i.i.i.i.i, %inc.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %div3.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp ugt i32 %div3.i.i.i.i.i.i, 16777215
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %div4.i.i.i.i.i.i)
  %cmp2.i.i.i.i.i.i = icmp ugt i32 %div4.i.i.i.i.i.i, 16777215
  %or.cond.i.i.i.i = select i1 %cmp.i.i.i.i.i.i, i1 true, i1 %cmp2.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i, label %while.body.i.i.i.i.i.i.while.body.i.i.i.i.i.i_crit_edge, label %while.body.i.i.i.i.i.i.while.cond5.preheader.i.i.i.i.i.i_crit_edge

while.body.i.i.i.i.i.i.while.cond5.preheader.i.i.i.i.i.i_crit_edge: ; preds = %while.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond5.preheader.i.i.i.i.i.i

while.body.i.i.i.i.i.i.while.body.i.i.i.i.i.i_crit_edge: ; preds = %while.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i.i.i.i.i

land.rhs.i.i.i.i.i.i:                             ; preds = %while.body8.i.i.i.i.i.i.land.rhs.i.i.i.i.i.i_crit_edge, %while.cond5.preheader.i.i.i.i.i.i.land.rhs.i.i.i.i.i.i_crit_edge
  %n.1.i.i.i.i = phi i32 [ %shl9.i.i.i.i.i.i, %while.body8.i.i.i.i.i.i.land.rhs.i.i.i.i.i.i_crit_edge ], [ %n.0.lcssa.i.i.i.i, %while.cond5.preheader.i.i.i.i.i.i.land.rhs.i.i.i.i.i.i_crit_edge ]
  %88 = phi i32 [ %shl.i.i.i.i.i.i, %while.body8.i.i.i.i.i.i.land.rhs.i.i.i.i.i.i_crit_edge ], [ %m.0.lcssa.i.i.i.i, %while.cond5.preheader.i.i.i.i.i.i.land.rhs.i.i.i.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %n.1.i.i.i.i)
  %cmp7.i.i.i.i.i.i = icmp ult i32 %n.1.i.i.i.i, 16777215
  br i1 %cmp7.i.i.i.i.i.i, label %while.body8.i.i.i.i.i.i, label %land.rhs.i.i.i.i.i.i.if.end.i80.i.i.i_crit_edge

land.rhs.i.i.i.i.i.i.if.end.i80.i.i.i_crit_edge:  ; preds = %land.rhs.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i80.i.i.i

while.body8.i.i.i.i.i.i:                          ; preds = %land.rhs.i.i.i.i.i.i
  %shl.i.i.i.i.i.i = shl nuw nsw i32 %88, 1
  %shl9.i.i.i.i.i.i = shl nuw nsw i32 %n.1.i.i.i.i, 1
  %cmp6.i.i.i.i.i.i = icmp ult i32 %88, 8388608
  br i1 %cmp6.i.i.i.i.i.i, label %while.body8.i.i.i.i.i.i.land.rhs.i.i.i.i.i.i_crit_edge, label %while.body8.i.i.i.i.i.i.if.end.i80.i.i.i_crit_edge

while.body8.i.i.i.i.i.i.if.end.i80.i.i.i_crit_edge: ; preds = %while.body8.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i80.i.i.i

while.body8.i.i.i.i.i.i.land.rhs.i.i.i.i.i.i_crit_edge: ; preds = %while.body8.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs.i.i.i.i.i.i

if.end.i80.i.i.i:                                 ; preds = %while.body8.i.i.i.i.i.i.if.end.i80.i.i.i_crit_edge, %land.rhs.i.i.i.i.i.i.if.end.i80.i.i.i_crit_edge, %while.cond5.preheader.i.i.i.i.i.i.if.end.i80.i.i.i_crit_edge
  %n.2.i.i.i.i = phi i32 [ %n.0.lcssa.i.i.i.i, %while.cond5.preheader.i.i.i.i.i.i.if.end.i80.i.i.i_crit_edge ], [ %n.1.i.i.i.i, %land.rhs.i.i.i.i.i.i.if.end.i80.i.i.i_crit_edge ], [ %shl9.i.i.i.i.i.i, %while.body8.i.i.i.i.i.i.if.end.i80.i.i.i_crit_edge ]
  %.lcssa.i.i.i.i.i.i = phi i32 [ 16777215, %while.cond5.preheader.i.i.i.i.i.i.if.end.i80.i.i.i_crit_edge ], [ %88, %land.rhs.i.i.i.i.i.i.if.end.i80.i.i.i_crit_edge ], [ %shl.i.i.i.i.i.i, %while.body8.i.i.i.i.i.i.if.end.i80.i.i.i_crit_edge ]
  %shr.i.i.i.i.i.i = lshr i32 %.lcssa.i.i.i.i.i.i, 1
  %shr11.i.i.i.i.i.i = lshr i32 %n.2.i.i.i.i, 1
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %dev1.i78.i.i.i, i32 noundef 2, ptr noundef nonnull @.str.97, i32 noundef %shr.i.i.i.i.i.i, i32 noundef %shr11.i.i.i.i.i.i, i32 noundef %conv48.i.i.i.i.i) #8
  %89 = ptrtoint ptr %rx_p0_client.i16.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %rx_p0_client.i16.i, align 4
  %91 = ptrtoint ptr %dt.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %dt.i.i.i.i, align 4
  %div.i.i.i.i = udiv i32 %92, 1000
  %conv5.i.i.i.i = trunc i32 %div.i.i.i.i to i8
  %call6.i.i.i.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %add.ptr.i, ptr noundef %90, i8 noundef zeroext 37, i8 noundef zeroext %conv5.i.i.i.i) #8
  %93 = ptrtoint ptr %rx_p0_client.i16.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %rx_p0_client.i16.i, align 4
  %95 = ptrtoint ptr %dt.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %dt.i.i.i.i, align 4
  %div12.i.i.i.i = udiv i32 %96, 1000
  %shr.i.i.i.i = lshr i32 %div12.i.i.i.i, 8
  %conv13.i.i.i.i = trunc i32 %shr.i.i.i.i to i8
  %call14.i.i.i.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %add.ptr.i, ptr noundef %94, i8 noundef zeroext 38, i8 noundef zeroext %conv13.i.i.i.i) #8
  %or.i.i.i.i = or i32 %call14.i.i.i.i, %call6.i.i.i.i
  %97 = ptrtoint ptr %rx_p1_client.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %rx_p1_client.i.i.i.i, align 4
  %call.i.i.i.i.i = tail call fastcc i32 @anx7625_reg_read(ptr noundef %add.ptr.i, ptr noundef %98, i8 noundef zeroext 5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %cmp.i311.i.i.i.i = icmp slt i32 %call.i.i.i.i.i, 0
  br i1 %cmp.i311.i.i.i.i, label %if.end.i80.i.i.i.anx7625_write_and.exit.i.i.i.i_crit_edge, label %if.end.i312.i.i.i.i

if.end.i80.i.i.i.anx7625_write_and.exit.i.i.i.i_crit_edge: ; preds = %if.end.i80.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %anx7625_write_and.exit.i.i.i.i

if.end.i312.i.i.i.i:                              ; preds = %if.end.i80.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %99 = trunc i32 %call.i.i.i.i.i to i8
  %conv1.i.i.i.i.i = and i8 %99, -4
  %call2.i.i.i.i.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %add.ptr.i, ptr noundef %98, i8 noundef zeroext 5, i8 noundef zeroext %conv1.i.i.i.i.i) #8
  br label %anx7625_write_and.exit.i.i.i.i

anx7625_write_and.exit.i.i.i.i:                   ; preds = %if.end.i312.i.i.i.i, %if.end.i80.i.i.i.anx7625_write_and.exit.i.i.i.i_crit_edge
  %retval.0.i313.i.i.i.i = phi i32 [ %call2.i.i.i.i.i, %if.end.i312.i.i.i.i ], [ %call.i.i.i.i.i, %if.end.i80.i.i.i.anx7625_write_and.exit.i.i.i.i_crit_edge ]
  %or17.i.i.i.i = or i32 %or.i.i.i.i, %retval.0.i313.i.i.i.i
  %100 = ptrtoint ptr %rx_p1_client.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %rx_p1_client.i.i.i.i, align 4
  %mipi_lanes.i.i.i.i = getelementptr i8, ptr %bridge, i32 -1016
  %102 = ptrtoint ptr %mipi_lanes.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %mipi_lanes.i.i.i.i, align 4
  %call.i314.i.i.i.i = tail call fastcc i32 @anx7625_reg_read(ptr noundef %add.ptr.i, ptr noundef %101, i8 noundef zeroext 5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i314.i.i.i.i)
  %cmp.i315.i.i.i.i = icmp slt i32 %call.i314.i.i.i.i, 0
  br i1 %cmp.i315.i.i.i.i, label %anx7625_write_and.exit.i.i.i.i.anx7625_write_or.exit.i.i.i.i_crit_edge, label %if.end.i318.i.i.i.i

anx7625_write_and.exit.i.i.i.i.anx7625_write_or.exit.i.i.i.i_crit_edge: ; preds = %anx7625_write_and.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %anx7625_write_or.exit.i.i.i.i

if.end.i318.i.i.i.i:                              ; preds = %anx7625_write_and.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %104 = trunc i32 %103 to i8
  %conv20.i.i.i.i = add i8 %104, -1
  %105 = trunc i32 %call.i314.i.i.i.i to i8
  %conv1.i316.i.i.i.i = or i8 %conv20.i.i.i.i, %105
  %call2.i317.i.i.i.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %add.ptr.i, ptr noundef %101, i8 noundef zeroext 5, i8 noundef zeroext %conv1.i316.i.i.i.i) #8
  br label %anx7625_write_or.exit.i.i.i.i

anx7625_write_or.exit.i.i.i.i:                    ; preds = %if.end.i318.i.i.i.i, %anx7625_write_and.exit.i.i.i.i.anx7625_write_or.exit.i.i.i.i_crit_edge
  %retval.0.i319.i.i.i.i = phi i32 [ %call2.i317.i.i.i.i, %if.end.i318.i.i.i.i ], [ %call.i314.i.i.i.i, %anx7625_write_and.exit.i.i.i.i.anx7625_write_or.exit.i.i.i.i_crit_edge ]
  %or22.i.i.i.i = or i32 %or17.i.i.i.i, %retval.0.i319.i.i.i.i
  %hactive.i.i.i.i = getelementptr i8, ptr %bridge, i32 -104
  %106 = ptrtoint ptr %hactive.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %hactive.i.i.i.i, align 4
  %hfront_porch.i.i.i.i = getelementptr i8, ptr %bridge, i32 -92
  %108 = ptrtoint ptr %hfront_porch.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %hfront_porch.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %109, %107
  %hback_porch.i.i.i.i = getelementptr i8, ptr %bridge, i32 -80
  %110 = ptrtoint ptr %hback_porch.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %hback_porch.i.i.i.i, align 4
  %add29.i.i.i.i = add i32 %add.i.i.i.i, %111
  %hsync_len.i.i.i.i = getelementptr i8, ptr %bridge, i32 -68
  %112 = ptrtoint ptr %hsync_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %hsync_len.i.i.i.i, align 4
  %add32.i.i.i.i = add i32 %add29.i.i.i.i, %113
  %rx_p2_client.i.i.i.i = getelementptr i8, ptr %bridge, i32 -704
  %114 = ptrtoint ptr %rx_p2_client.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %rx_p2_client.i.i.i.i, align 4
  %conv37.i.i.i.i = trunc i32 %add32.i.i.i.i to i8
  %call38.i.i.i.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %add.ptr.i, ptr noundef %115, i8 noundef zeroext 25, i8 noundef zeroext %conv37.i.i.i.i) #8
  %or39.i.i.i.i = or i32 %or22.i.i.i.i, %call38.i.i.i.i
  %116 = ptrtoint ptr %rx_p2_client.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %rx_p2_client.i.i.i.i, align 4
  %conv35.i.i.i.i = lshr i32 %add32.i.i.i.i, 8
  %conv44.i.i.i.i = trunc i32 %conv35.i.i.i.i to i8
  %call45.i.i.i.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %add.ptr.i, ptr noundef %117, i8 noundef zeroext 26, i8 noundef zeroext %conv44.i.i.i.i) #8
  %or46.i.i.i.i = or i32 %or39.i.i.i.i, %call45.i.i.i.i
  %118 = ptrtoint ptr %rx_p2_client.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %rx_p2_client.i.i.i.i, align 4
  %120 = ptrtoint ptr %hactive.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %hactive.i.i.i.i, align 4
  %conv53.i.i.i.i = trunc i32 %121 to i8
  %call54.i.i.i.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %add.ptr.i, ptr noundef %119, i8 noundef zeroext 27, i8 noundef zeroext %conv53.i.i.i.i) #8
  %or55.i.i.i.i = or i32 %or46.i.i.i.i, %call54.i.i.i.i
  %122 = ptrtoint ptr %rx_p2_client.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %rx_p2_client.i.i.i.i, align 4
  %124 = ptrtoint ptr %hactive.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %hactive.i.i.i.i, align 4
  %shr61.i.i.i.i = lshr i32 %125, 8
  %conv62.i.i.i.i = trunc i32 %shr61.i.i.i.i to i8
  %call63.i.i.i.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %add.ptr.i, ptr noundef %123, i8 noundef zeroext 28, i8 noundef zeroext %conv62.i.i.i.i) #8
  %or64.i.i.i.i = or i32 %or55.i.i.i.i, %call63.i.i.i.i
  %126 = ptrtoint ptr %rx_p2_client.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %rx_p2_client.i.i.i.i, align 4
  %128 = ptrtoint ptr %hfront_porch.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %hfront_porch.i.i.i.i, align 4
  %conv70.i.i.i.i = trunc i32 %129 to i8
  %call71.i.i.i.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %add.ptr.i, ptr noundef %127, i8 noundef zeroext 29, i8 noundef zeroext %conv70.i.i.i.i) #8
  %or72.i.i.i.i = or i32 %or64.i.i.i.i, %call71.i.i.i.i
  %130 = ptrtoint ptr %rx_p2_client.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %rx_p2_client.i.i.i.i, align 4
  %132 = ptrtoint ptr %hfront_porch.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %hfront_porch.i.i.i.i, align 4
  %shr78.i.i.i.i = lshr i32 %133, 8
  %conv79.i.i.i.i = trunc i32 %shr78.i.i.i.i to i8
  %call80.i.i.i.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %add.ptr.i, ptr noundef %131, i8 noundef zeroext 30, i8 noundef zeroext %conv79.i.i.i.i) #8
  %or81.i.i.i.i = or i32 %or72.i.i.i.i, %call80.i.i.i.i
  %134 = ptrtoint ptr %rx_p2_client.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %rx_p2_client.i.i.i.i, align 4
  %136 = ptrtoint ptr %hsync_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %hsync_len.i.i.i.i, align 4
  %conv87.i.i.i.i = trunc i32 %137 to i8
  %call88.i.i.i.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %add.ptr.i, ptr noundef %135, i8 noundef zeroext 31, i8 noundef zeroext %conv87.i.i.i.i) #8
  %or89.i.i.i.i = or i32 %or81.i.i.i.i, %call88.i.i.i.i
  %138 = ptrtoint ptr %rx_p2_client.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %rx_p2_client.i.i.i.i, align 4
  %140 = ptrtoint ptr %hsync_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %hsync_len.i.i.i.i, align 4
  %shr95.i.i.i.i = lshr i32 %141, 8
  %conv96.i.i.i.i = trunc i32 %shr95.i.i.i.i to i8
  %call97.i.i.i.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %add.ptr.i, ptr noundef %139, i8 noundef zeroext 32, i8 noundef zeroext %conv96.i.i.i.i) #8
  %or98.i.i.i.i = or i32 %or89.i.i.i.i, %call97.i.i.i.i
  %142 = ptrtoint ptr %rx_p2_client.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %rx_p2_client.i.i.i.i, align 4
  %144 = ptrtoint ptr %hback_porch.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %hback_porch.i.i.i.i, align 4
  %conv104.i.i.i.i = trunc i32 %145 to i8
  %call105.i.i.i.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %add.ptr.i, ptr noundef %143, i8 noundef zeroext 33, i8 noundef zeroext %conv104.i.i.i.i) #8
  %or106.i.i.i.i = or i32 %or98.i.i.i.i, %call105.i.i.i.i
  %146 = ptrtoint ptr %rx_p2_client.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %rx_p2_client.i.i.i.i, align 4
  %148 = ptrtoint ptr %hback_porch.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %hback_porch.i.i.i.i, align 4
  %shr112.i.i.i.i = lshr i32 %149, 8
  %conv113.i.i.i.i = trunc i32 %shr112.i.i.i.i to i8
  %call114.i.i.i.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %add.ptr.i, ptr noundef %147, i8 noundef zeroext 34, i8 noundef zeroext %conv113.i.i.i.i) #8
  %or115.i.i.i.i = or i32 %or106.i.i.i.i, %call114.i.i.i.i
  %150 = ptrtoint ptr %rx_p2_client.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %rx_p2_client.i.i.i.i, align 4
  %vactive.i.i.i.i = getelementptr i8, ptr %bridge, i32 -56
  %152 = ptrtoint ptr %vactive.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %vactive.i.i.i.i, align 4
  %conv120.i.i.i.i = trunc i32 %153 to i8
  %call121.i.i.i.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %add.ptr.i, ptr noundef %151, i8 noundef zeroext 20, i8 noundef zeroext %conv120.i.i.i.i) #8
  %or122.i.i.i.i = or i32 %or115.i.i.i.i, %call121.i.i.i.i
  %154 = ptrtoint ptr %rx_p2_client.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %rx_p2_client.i.i.i.i, align 4
  %156 = ptrtoint ptr %vactive.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %vactive.i.i.i.i, align 4
  %shr128.i.i.i.i = lshr i32 %157, 8
  %conv129.i.i.i.i = trunc i32 %shr128.i.i.i.i to i8
  %call130.i.i.i.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %add.ptr.i, ptr noundef %155, i8 noundef zeroext 21, i8 noundef zeroext %conv129.i.i.i.i) #8
  %or131.i.i.i.i = or i32 %or122.i.i.i.i, %call130.i.i.i.i
  %158 = ptrtoint ptr %rx_p2_client.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %rx_p2_client.i.i.i.i, align 4
  %vfront_porch.i.i.i.i = getelementptr i8, ptr %bridge, i32 -44
  %160 = ptrtoint ptr %vfront_porch.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %vfront_porch.i.i.i.i, align 4
  %conv136.i.i.i.i = trunc i32 %161 to i8
  %call137.i.i.i.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %add.ptr.i, ptr noundef %159, i8 noundef zeroext 22, i8 noundef zeroext %conv136.i.i.i.i) #8
  %or138.i.i.i.i = or i32 %or131.i.i.i.i, %call137.i.i.i.i
  %162 = ptrtoint ptr %rx_p2_client.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %rx_p2_client.i.i.i.i, align 4
  %vsync_len.i.i.i.i = getelementptr i8, ptr %bridge, i32 -20
  %164 = ptrtoint ptr %vsync_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %vsync_len.i.i.i.i, align 4
  %conv143.i.i.i.i = trunc i32 %165 to i8
  %call144.i.i.i.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %add.ptr.i, ptr noundef %163, i8 noundef zeroext 23, i8 noundef zeroext %conv143.i.i.i.i) #8
  %or145.i.i.i.i = or i32 %or138.i.i.i.i, %call144.i.i.i.i
  %166 = ptrtoint ptr %rx_p2_client.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %rx_p2_client.i.i.i.i, align 4
  %vback_porch.i.i.i.i = getelementptr i8, ptr %bridge, i32 -32
  %168 = ptrtoint ptr %vback_porch.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %vback_porch.i.i.i.i, align 4
  %conv150.i.i.i.i = trunc i32 %169 to i8
  %call151.i.i.i.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %add.ptr.i, ptr noundef %167, i8 noundef zeroext 24, i8 noundef zeroext %conv150.i.i.i.i) #8
  %or152.i.i.i.i = or i32 %or145.i.i.i.i, %call151.i.i.i.i
  %170 = ptrtoint ptr %rx_p1_client.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %rx_p1_client.i.i.i.i, align 4
  %shr155.i.i.i.i = lshr i32 %.lcssa.i.i.i.i.i.i, 17
  %conv157.i.i.i.i = trunc i32 %shr155.i.i.i.i to i8
  %call158.i.i.i.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %add.ptr.i, ptr noundef %171, i8 noundef zeroext 30, i8 noundef zeroext %conv157.i.i.i.i) #8
  %or159.i.i.i.i = or i32 %or152.i.i.i.i, %call158.i.i.i.i
  %172 = ptrtoint ptr %rx_p1_client.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %rx_p1_client.i.i.i.i, align 4
  %shr162.i.i.i.i = lshr i32 %.lcssa.i.i.i.i.i.i, 9
  %conv164.i.i.i.i = trunc i32 %shr162.i.i.i.i to i8
  %call165.i.i.i.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %add.ptr.i, ptr noundef %173, i8 noundef zeroext 31, i8 noundef zeroext %conv164.i.i.i.i) #8
  %or166.i.i.i.i = or i32 %or159.i.i.i.i, %call165.i.i.i.i
  %174 = ptrtoint ptr %rx_p1_client.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %rx_p1_client.i.i.i.i, align 4
  %conv170.i.i.i.i = trunc i32 %shr.i.i.i.i.i.i to i8
  %call171.i.i.i.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %add.ptr.i, ptr noundef %175, i8 noundef zeroext 32, i8 noundef zeroext %conv170.i.i.i.i) #8
  %or172.i.i.i.i = or i32 %or166.i.i.i.i, %call171.i.i.i.i
  %176 = ptrtoint ptr %rx_p1_client.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %rx_p1_client.i.i.i.i, align 4
  %shr175.i.i.i.i = lshr i32 %n.2.i.i.i.i, 17
  %conv177.i.i.i.i = trunc i32 %shr175.i.i.i.i to i8
  %call178.i.i.i.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %add.ptr.i, ptr noundef %177, i8 noundef zeroext 33, i8 noundef zeroext %conv177.i.i.i.i) #8
  %or179.i.i.i.i = or i32 %or172.i.i.i.i, %call178.i.i.i.i
  %178 = ptrtoint ptr %rx_p1_client.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %rx_p1_client.i.i.i.i, align 4
  %shr182.i.i.i.i = lshr i32 %n.2.i.i.i.i, 9
  %conv184.i.i.i.i = trunc i32 %shr182.i.i.i.i to i8
  %call185.i.i.i.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %add.ptr.i, ptr noundef %179, i8 noundef zeroext 34, i8 noundef zeroext %conv184.i.i.i.i) #8
  %or186.i.i.i.i = or i32 %or179.i.i.i.i, %call185.i.i.i.i
  %180 = ptrtoint ptr %rx_p1_client.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %rx_p1_client.i.i.i.i, align 4
  %conv190.i.i.i.i = trunc i32 %shr11.i.i.i.i.i.i to i8
  %call191.i.i.i.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %add.ptr.i, ptr noundef %181, i8 noundef zeroext 35, i8 noundef zeroext %conv190.i.i.i.i) #8
  %or192.i.i.i.i = or i32 %or186.i.i.i.i, %call191.i.i.i.i
  %mfg_id.i.i.i.i.i = getelementptr i8, ptr %bridge, i32 -680
  %182 = ptrtoint ptr %mfg_id.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %mfg_id.i.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 38, i8 %183)
  %cmp.i320.i.i.i.i = icmp eq i8 %183, 38
  br i1 %cmp.i320.i.i.i.i, label %land.lhs.true.i.i.i.i.i, label %anx7625_write_or.exit.i.i.i.i.if.end.i321.i.i.i.i_crit_edge

anx7625_write_or.exit.i.i.i.i.if.end.i321.i.i.i.i_crit_edge: ; preds = %anx7625_write_or.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i321.i.i.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %anx7625_write_or.exit.i.i.i.i
  %arrayidx3.i.i.i.i.i = getelementptr i8, ptr %bridge, i32 -679
  %184 = ptrtoint ptr %arrayidx3.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %arrayidx3.i.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -49, i8 %185)
  %cmp5.i.i.i.i.i = icmp eq i8 %185, -49
  br i1 %cmp5.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.anx7625_set_k_value.exit.i.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i.i.if.end.i321.i.i.i.i_crit_edge

land.lhs.true.i.i.i.i.i.if.end.i321.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i321.i.i.i.i

land.lhs.true.i.i.i.i.i.anx7625_set_k_value.exit.i.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %anx7625_set_k_value.exit.i.i.i.i

if.end.i321.i.i.i.i:                              ; preds = %land.lhs.true.i.i.i.i.i.if.end.i321.i.i.i.i_crit_edge, %anx7625_write_or.exit.i.i.i.i.if.end.i321.i.i.i.i_crit_edge
  br label %anx7625_set_k_value.exit.i.i.i.i

anx7625_set_k_value.exit.i.i.i.i:                 ; preds = %if.end.i321.i.i.i.i, %land.lhs.true.i.i.i.i.i.anx7625_set_k_value.exit.i.i.i.i_crit_edge
  %.sink1.i.i.i.i.i = phi i8 [ 61, %if.end.i321.i.i.i.i ], [ 59, %land.lhs.true.i.i.i.i.i.anx7625_set_k_value.exit.i.i.i.i_crit_edge ]
  %186 = ptrtoint ptr %rx_p1_client.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %rx_p1_client.i.i.i.i, align 4
  %call9.i.i.i.i.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %add.ptr.i, ptr noundef %187, i8 noundef zeroext 27, i8 noundef zeroext %.sink1.i.i.i.i.i) #8
  %188 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %client, align 4
  %190 = ptrtoint ptr %rx_p1_client.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %rx_p1_client.i.i.i.i, align 4
  %call.i.i322.i.i.i.i = tail call fastcc i32 @anx7625_reg_read(ptr noundef %add.ptr.i, ptr noundef %191, i8 noundef zeroext 59) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i322.i.i.i.i)
  %cmp.i.i323.i.i.i.i = icmp slt i32 %call.i.i322.i.i.i.i, 0
  br i1 %cmp.i.i323.i.i.i.i, label %anx7625_set_k_value.exit.i.i.i.i.anx7625_write_and.exit.i.i.i.i.i_crit_edge, label %if.end.i.i.i.i.i.i

anx7625_set_k_value.exit.i.i.i.i.anx7625_write_and.exit.i.i.i.i.i_crit_edge: ; preds = %anx7625_set_k_value.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %anx7625_write_and.exit.i.i.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %anx7625_set_k_value.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %192 = trunc i32 %call.i.i322.i.i.i.i to i8
  %conv1.i.i.i.i.i.i = and i8 %192, -3
  %call2.i.i.i.i.i.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %add.ptr.i, ptr noundef %191, i8 noundef zeroext 59, i8 noundef zeroext %conv1.i.i.i.i.i.i) #8
  br label %anx7625_write_and.exit.i.i.i.i.i

anx7625_write_and.exit.i.i.i.i.i:                 ; preds = %if.end.i.i.i.i.i.i, %anx7625_set_k_value.exit.i.i.i.i.anx7625_write_and.exit.i.i.i.i.i_crit_edge
  %retval.0.i.i.i.i.i.i = phi i32 [ %call2.i.i.i.i.i.i, %if.end.i.i.i.i.i.i ], [ %call.i.i322.i.i.i.i, %anx7625_set_k_value.exit.i.i.i.i.anx7625_write_and.exit.i.i.i.i.i_crit_edge ]
  %193 = ptrtoint ptr %rx_p1_client.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %rx_p1_client.i.i.i.i, align 4
  %call.i48.i.i.i.i.i = tail call fastcc i32 @anx7625_reg_read(ptr noundef %add.ptr.i, ptr noundef %194, i8 noundef zeroext 59) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48.i.i.i.i.i)
  %cmp.i49.i.i.i.i.i = icmp slt i32 %call.i48.i.i.i.i.i, 0
  br i1 %cmp.i49.i.i.i.i.i, label %anx7625_write_and.exit.i.i.i.i.i.anx7625_write_or.exit.i.i.i.i.i_crit_edge, label %if.end.i52.i.i.i.i.i

anx7625_write_and.exit.i.i.i.i.i.anx7625_write_or.exit.i.i.i.i.i_crit_edge: ; preds = %anx7625_write_and.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %anx7625_write_or.exit.i.i.i.i.i

if.end.i52.i.i.i.i.i:                             ; preds = %anx7625_write_and.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %195 = trunc i32 %call.i48.i.i.i.i.i to i8
  %conv1.i50.i.i.i.i.i = or i8 %195, 2
  %call2.i51.i.i.i.i.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %add.ptr.i, ptr noundef %194, i8 noundef zeroext 59, i8 noundef zeroext %conv1.i50.i.i.i.i.i) #8
  br label %anx7625_write_or.exit.i.i.i.i.i

anx7625_write_or.exit.i.i.i.i.i:                  ; preds = %if.end.i52.i.i.i.i.i, %anx7625_write_and.exit.i.i.i.i.i.anx7625_write_or.exit.i.i.i.i.i_crit_edge
  %retval.0.i53.i.i.i.i.i = phi i32 [ %call2.i51.i.i.i.i.i, %if.end.i52.i.i.i.i.i ], [ %call.i48.i.i.i.i.i, %anx7625_write_and.exit.i.i.i.i.i.anx7625_write_or.exit.i.i.i.i.i_crit_edge ]
  %or.i.i.i.i.i = or i32 %retval.0.i53.i.i.i.i.i, %retval.0.i.i.i.i.i.i
  %196 = ptrtoint ptr %rx_p1_client.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %rx_p1_client.i.i.i.i, align 4
  %call.i54.i.i.i.i.i = tail call fastcc i32 @anx7625_reg_read(ptr noundef %add.ptr.i, ptr noundef %197, i8 noundef zeroext 51) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i54.i.i.i.i.i)
  %cmp.i55.i.i.i.i.i = icmp slt i32 %call.i54.i.i.i.i.i, 0
  br i1 %cmp.i55.i.i.i.i.i, label %anx7625_write_or.exit.i.i.i.i.i.anx7625_write_and.exit60.i.i.i.i.i_crit_edge, label %if.end.i58.i.i.i.i.i

anx7625_write_or.exit.i.i.i.i.i.anx7625_write_and.exit60.i.i.i.i.i_crit_edge: ; preds = %anx7625_write_or.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %anx7625_write_and.exit60.i.i.i.i.i

if.end.i58.i.i.i.i.i:                             ; preds = %anx7625_write_or.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %198 = trunc i32 %call.i54.i.i.i.i.i to i8
  %conv1.i56.i.i.i.i.i = and i8 %198, 15
  %call2.i57.i.i.i.i.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %add.ptr.i, ptr noundef %197, i8 noundef zeroext 51, i8 noundef zeroext %conv1.i56.i.i.i.i.i) #8
  br label %anx7625_write_and.exit60.i.i.i.i.i

anx7625_write_and.exit60.i.i.i.i.i:               ; preds = %if.end.i58.i.i.i.i.i, %anx7625_write_or.exit.i.i.i.i.i.anx7625_write_and.exit60.i.i.i.i.i_crit_edge
  %retval.0.i59.i.i.i.i.i = phi i32 [ %call2.i57.i.i.i.i.i, %if.end.i58.i.i.i.i.i ], [ %call.i54.i.i.i.i.i, %anx7625_write_or.exit.i.i.i.i.i.anx7625_write_and.exit60.i.i.i.i.i_crit_edge ]
  %or8.i.i.i.i.i = or i32 %or.i.i.i.i.i, %retval.0.i59.i.i.i.i.i
  %199 = ptrtoint ptr %rx_p1_client.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %rx_p1_client.i.i.i.i, align 4
  %call.i61.i.i.i.i.i = tail call fastcc i32 @anx7625_reg_read(ptr noundef %add.ptr.i, ptr noundef %200, i8 noundef zeroext 51) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61.i.i.i.i.i)
  %cmp.i62.i.i.i.i.i = icmp slt i32 %call.i61.i.i.i.i.i, 0
  br i1 %cmp.i62.i.i.i.i.i, label %anx7625_write_and.exit60.i.i.i.i.i.anx7625_write_or.exit67.i.i.i.i.i_crit_edge, label %if.end.i65.i.i.i.i.i

anx7625_write_and.exit60.i.i.i.i.i.anx7625_write_or.exit67.i.i.i.i.i_crit_edge: ; preds = %anx7625_write_and.exit60.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %anx7625_write_or.exit67.i.i.i.i.i

if.end.i65.i.i.i.i.i:                             ; preds = %anx7625_write_and.exit60.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub195.i.i.i.i = shl i8 %post_divider.1.i.i.i.i, 4
  %shl.i.i.i.i.i = add i8 %sub195.i.i.i.i, -16
  %201 = trunc i32 %call.i61.i.i.i.i.i to i8
  %conv1.i63.i.i.i.i.i = or i8 %shl.i.i.i.i.i, %201
  %call2.i64.i.i.i.i.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %add.ptr.i, ptr noundef %200, i8 noundef zeroext 51, i8 noundef zeroext %conv1.i63.i.i.i.i.i) #8
  br label %anx7625_write_or.exit67.i.i.i.i.i

anx7625_write_or.exit67.i.i.i.i.i:                ; preds = %if.end.i65.i.i.i.i.i, %anx7625_write_and.exit60.i.i.i.i.i.anx7625_write_or.exit67.i.i.i.i.i_crit_edge
  %retval.0.i66.i.i.i.i.i = phi i32 [ %call2.i64.i.i.i.i.i, %if.end.i65.i.i.i.i.i ], [ %call.i61.i.i.i.i.i, %anx7625_write_and.exit60.i.i.i.i.i.anx7625_write_or.exit67.i.i.i.i.i_crit_edge ]
  %or13.i.i.i.i.i = or i32 %or8.i.i.i.i.i, %retval.0.i66.i.i.i.i.i
  %202 = ptrtoint ptr %rx_p1_client.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %rx_p1_client.i.i.i.i, align 4
  %call.i68.i.i.i.i.i = tail call fastcc i32 @anx7625_reg_read(ptr noundef %add.ptr.i, ptr noundef %203, i8 noundef zeroext 43) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i68.i.i.i.i.i)
  %cmp.i69.i.i.i.i.i = icmp slt i32 %call.i68.i.i.i.i.i, 0
  br i1 %cmp.i69.i.i.i.i.i, label %anx7625_write_or.exit67.i.i.i.i.i.anx7625_write_and.exit74.i.i.i.i.i_crit_edge, label %if.end.i72.i.i.i.i.i

anx7625_write_or.exit67.i.i.i.i.i.anx7625_write_and.exit74.i.i.i.i.i_crit_edge: ; preds = %anx7625_write_or.exit67.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %anx7625_write_and.exit74.i.i.i.i.i

if.end.i72.i.i.i.i.i:                             ; preds = %anx7625_write_or.exit67.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %204 = trunc i32 %call.i68.i.i.i.i.i to i8
  %conv1.i70.i.i.i.i.i = and i8 %204, -49
  %call2.i71.i.i.i.i.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %add.ptr.i, ptr noundef %203, i8 noundef zeroext 43, i8 noundef zeroext %conv1.i70.i.i.i.i.i) #8
  br label %anx7625_write_and.exit74.i.i.i.i.i

anx7625_write_and.exit74.i.i.i.i.i:               ; preds = %if.end.i72.i.i.i.i.i, %anx7625_write_or.exit67.i.i.i.i.i.anx7625_write_and.exit74.i.i.i.i.i_crit_edge
  %retval.0.i73.i.i.i.i.i = phi i32 [ %call2.i71.i.i.i.i.i, %if.end.i72.i.i.i.i.i ], [ %call.i68.i.i.i.i.i, %anx7625_write_or.exit67.i.i.i.i.i.anx7625_write_and.exit74.i.i.i.i.i_crit_edge ]
  %or17.i.i.i.i.i = or i32 %or13.i.i.i.i.i, %retval.0.i73.i.i.i.i.i
  %205 = ptrtoint ptr %rx_p1_client.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %rx_p1_client.i.i.i.i, align 4
  %call.i75.i.i.i.i.i = tail call fastcc i32 @anx7625_reg_read(ptr noundef %add.ptr.i, ptr noundef %206, i8 noundef zeroext 43) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75.i.i.i.i.i)
  %cmp.i76.i.i.i.i.i = icmp slt i32 %call.i75.i.i.i.i.i, 0
  br i1 %cmp.i76.i.i.i.i.i, label %anx7625_write_and.exit74.i.i.i.i.i.anx7625_write_and.exit81.i.i.i.i.i_crit_edge, label %if.end.i79.i.i.i.i.i

anx7625_write_and.exit74.i.i.i.i.i.anx7625_write_and.exit81.i.i.i.i.i_crit_edge: ; preds = %anx7625_write_and.exit74.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %anx7625_write_and.exit81.i.i.i.i.i

if.end.i79.i.i.i.i.i:                             ; preds = %anx7625_write_and.exit74.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %207 = trunc i32 %call.i75.i.i.i.i.i to i8
  %conv1.i77.i.i.i.i.i = and i8 %207, -3
  %call2.i78.i.i.i.i.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %add.ptr.i, ptr noundef %206, i8 noundef zeroext 43, i8 noundef zeroext %conv1.i77.i.i.i.i.i) #8
  br label %anx7625_write_and.exit81.i.i.i.i.i

anx7625_write_and.exit81.i.i.i.i.i:               ; preds = %if.end.i79.i.i.i.i.i, %anx7625_write_and.exit74.i.i.i.i.i.anx7625_write_and.exit81.i.i.i.i.i_crit_edge
  %retval.0.i80.i.i.i.i.i = phi i32 [ %call2.i78.i.i.i.i.i, %if.end.i79.i.i.i.i.i ], [ %call.i75.i.i.i.i.i, %anx7625_write_and.exit74.i.i.i.i.i.anx7625_write_and.exit81.i.i.i.i.i_crit_edge ]
  %or21.i.i.i.i.i = or i32 %or17.i.i.i.i.i, %retval.0.i80.i.i.i.i.i
  %208 = ptrtoint ptr %rx_p1_client.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %rx_p1_client.i.i.i.i, align 4
  %call.i82.i.i.i.i.i = tail call fastcc i32 @anx7625_reg_read(ptr noundef %add.ptr.i, ptr noundef %209, i8 noundef zeroext 43) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i82.i.i.i.i.i)
  %cmp.i83.i.i.i.i.i = icmp slt i32 %call.i82.i.i.i.i.i, 0
  br i1 %cmp.i83.i.i.i.i.i, label %anx7625_write_and.exit81.i.i.i.i.i.anx7625_write_or.exit88.i.i.i.i.i_crit_edge, label %if.end.i86.i.i.i.i.i

anx7625_write_and.exit81.i.i.i.i.i.anx7625_write_or.exit88.i.i.i.i.i_crit_edge: ; preds = %anx7625_write_and.exit81.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %anx7625_write_or.exit88.i.i.i.i.i

if.end.i86.i.i.i.i.i:                             ; preds = %anx7625_write_and.exit81.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %210 = trunc i32 %call.i82.i.i.i.i.i to i8
  %conv1.i84.i.i.i.i.i = or i8 %210, 2
  %call2.i85.i.i.i.i.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %add.ptr.i, ptr noundef %209, i8 noundef zeroext 43, i8 noundef zeroext %conv1.i84.i.i.i.i.i) #8
  br label %anx7625_write_or.exit88.i.i.i.i.i

anx7625_write_or.exit88.i.i.i.i.i:                ; preds = %if.end.i86.i.i.i.i.i, %anx7625_write_and.exit81.i.i.i.i.i.anx7625_write_or.exit88.i.i.i.i.i_crit_edge
  %retval.0.i87.i.i.i.i.i = phi i32 [ %call2.i85.i.i.i.i.i, %if.end.i86.i.i.i.i.i ], [ %call.i82.i.i.i.i.i, %anx7625_write_and.exit81.i.i.i.i.i.anx7625_write_or.exit88.i.i.i.i.i_crit_edge ]
  %or25.i.i.i.i.i = or i32 %or21.i.i.i.i.i, %retval.0.i87.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or25.i.i.i.i.i)
  %cmp.i324.i.i.i.i = icmp slt i32 %or25.i.i.i.i.i, 0
  br i1 %cmp.i324.i.i.i.i, label %if.then.i325.i.i.i.i, label %anx7625_write_or.exit88.i.i.i.i.i.anx7625_odfc_config.exit.i.i.i.i_crit_edge

anx7625_write_or.exit88.i.i.i.i.i.anx7625_odfc_config.exit.i.i.i.i_crit_edge: ; preds = %anx7625_write_or.exit88.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %anx7625_odfc_config.exit.i.i.i.i

if.then.i325.i.i.i.i:                             ; preds = %anx7625_write_or.exit88.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev1.i.i.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %189, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1.i.i.i.i.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.103) #8
  br label %anx7625_odfc_config.exit.i.i.i.i

anx7625_odfc_config.exit.i.i.i.i:                 ; preds = %if.then.i325.i.i.i.i, %anx7625_write_or.exit88.i.i.i.i.i.anx7625_odfc_config.exit.i.i.i.i_crit_edge
  %or198.i.i.i.i = or i32 %or192.i.i.i.i, %or25.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or198.i.i.i.i)
  %cmp.i81.i.i.i = icmp slt i32 %or198.i.i.i.i, 0
  br i1 %cmp.i81.i.i.i, label %anx7625_odfc_config.exit.i.i.i.i.cleanup.sink.split.i.i.i.i_crit_edge, label %anx7625_odfc_config.exit.i.i.i.i.anx7625_dsi_video_timing_config.exit.i.i.i_crit_edge

anx7625_odfc_config.exit.i.i.i.i.anx7625_dsi_video_timing_config.exit.i.i.i_crit_edge: ; preds = %anx7625_odfc_config.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %anx7625_dsi_video_timing_config.exit.i.i.i

anx7625_odfc_config.exit.i.i.i.i.cleanup.sink.split.i.i.i.i_crit_edge: ; preds = %anx7625_odfc_config.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i.i.i.i

cleanup.sink.split.i.i.i.i:                       ; preds = %anx7625_odfc_config.exit.i.i.i.i.cleanup.sink.split.i.i.i.i_crit_edge, %if.then51.i.i.i.i.i, %if.then25.i.i.i.i.i, %if.then2.i.i.i.i.i, %if.then.i.i.i.i.i
  %.str.98.sink.i.i.i.i = phi ptr [ @.str.96, %if.then.i.i.i.i.i ], [ @.str.96, %if.then2.i.i.i.i.i ], [ @.str.96, %if.then25.i.i.i.i.i ], [ @.str.96, %if.then51.i.i.i.i.i ], [ @.str.98, %anx7625_odfc_config.exit.i.i.i.i.cleanup.sink.split.i.i.i.i_crit_edge ]
  %retval.0.ph.i.i.i.i = phi i32 [ -22, %if.then.i.i.i.i.i ], [ -22, %if.then2.i.i.i.i.i ], [ -33, %if.then25.i.i.i.i.i ], [ -33, %if.then51.i.i.i.i.i ], [ %or198.i.i.i.i, %anx7625_odfc_config.exit.i.i.i.i.cleanup.sink.split.i.i.i.i_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1.i78.i.i.i, ptr noundef nonnull @.str.3, ptr noundef nonnull %.str.98.sink.i.i.i.i) #8
  br label %anx7625_dsi_video_timing_config.exit.i.i.i

anx7625_dsi_video_timing_config.exit.i.i.i:       ; preds = %cleanup.sink.split.i.i.i.i, %anx7625_odfc_config.exit.i.i.i.i.anx7625_dsi_video_timing_config.exit.i.i.i_crit_edge
  %retval.0.i82.i.i.i = phi i32 [ %or198.i.i.i.i, %anx7625_odfc_config.exit.i.i.i.i.anx7625_dsi_video_timing_config.exit.i.i.i_crit_edge ], [ %retval.0.ph.i.i.i.i, %cleanup.sink.split.i.i.i.i ]
  %or11.i.i29.i = or i32 %or9.i.i.i, %retval.0.i82.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or11.i.i29.i)
  %cmp12.i.i.i = icmp slt i32 %or11.i.i29.i, 0
  br i1 %cmp12.i.i.i, label %anx7625_dsi_video_timing_config.exit.i.i.i.cleanup.sink.split.i.i.i_crit_edge, label %if.end15.i.i.i

anx7625_dsi_video_timing_config.exit.i.i.i.cleanup.sink.split.i.i.i_crit_edge: ; preds = %anx7625_dsi_video_timing_config.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i.i.i

if.end15.i.i.i:                                   ; preds = %anx7625_dsi_video_timing_config.exit.i.i.i
  %211 = ptrtoint ptr %rx_p1_client.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %rx_p1_client.i.i.i.i, align 4
  %call.i83.i.i.i = tail call fastcc i32 @anx7625_reg_read(ptr noundef %add.ptr.i, ptr noundef %212, i8 noundef zeroext 42) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i83.i.i.i)
  %cmp.i84.i.i.i = icmp slt i32 %call.i83.i.i.i, 0
  br i1 %cmp.i84.i.i.i, label %if.end15.i.i.i.anx7625_write_and.exit.i.i.i_crit_edge, label %if.end.i87.i.i.i

if.end15.i.i.i.anx7625_write_and.exit.i.i.i_crit_edge: ; preds = %if.end15.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %anx7625_write_and.exit.i.i.i

if.end.i87.i.i.i:                                 ; preds = %if.end15.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %213 = trunc i32 %call.i83.i.i.i to i8
  %conv1.i85.i.i.i = and i8 %213, -25
  %call2.i86.i.i.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %add.ptr.i, ptr noundef %212, i8 noundef zeroext 42, i8 noundef zeroext %conv1.i85.i.i.i) #8
  br label %anx7625_write_and.exit.i.i.i

anx7625_write_and.exit.i.i.i:                     ; preds = %if.end.i87.i.i.i, %if.end15.i.i.i.anx7625_write_and.exit.i.i.i_crit_edge
  %retval.0.i88.i.i.i = phi i32 [ %call2.i86.i.i.i, %if.end.i87.i.i.i ], [ %call.i83.i.i.i, %if.end15.i.i.i.anx7625_write_and.exit.i.i.i_crit_edge ]
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1100, i32 noundef 2) #8
  %214 = ptrtoint ptr %rx_p1_client.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %rx_p1_client.i.i.i.i, align 4
  %call.i89.i.i.i = tail call fastcc i32 @anx7625_reg_read(ptr noundef %add.ptr.i, ptr noundef %215, i8 noundef zeroext 42) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i89.i.i.i)
  %cmp.i90.i.i.i = icmp slt i32 %call.i89.i.i.i, 0
  br i1 %cmp.i90.i.i.i, label %anx7625_write_and.exit.i.i.i.anx7625_write_or.exit95.i.i.i_crit_edge, label %if.end.i93.i.i.i

anx7625_write_and.exit.i.i.i.anx7625_write_or.exit95.i.i.i_crit_edge: ; preds = %anx7625_write_and.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %anx7625_write_or.exit95.i.i.i

if.end.i93.i.i.i:                                 ; preds = %anx7625_write_and.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %216 = trunc i32 %call.i89.i.i.i to i8
  %conv1.i91.i.i.i = or i8 %216, 24
  %call2.i92.i.i.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %add.ptr.i, ptr noundef %215, i8 noundef zeroext 42, i8 noundef zeroext %conv1.i91.i.i.i) #8
  br label %anx7625_write_or.exit95.i.i.i

anx7625_write_or.exit95.i.i.i:                    ; preds = %if.end.i93.i.i.i, %anx7625_write_and.exit.i.i.i.anx7625_write_or.exit95.i.i.i_crit_edge
  %retval.0.i94.i.i.i = phi i32 [ %call2.i92.i.i.i, %if.end.i93.i.i.i ], [ %call.i89.i.i.i, %anx7625_write_and.exit.i.i.i.anx7625_write_or.exit95.i.i.i_crit_edge ]
  %or22.i.i30.i = or i32 %retval.0.i94.i.i.i, %retval.0.i88.i.i.i
  %217 = ptrtoint ptr %rx_p1_client.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %rx_p1_client.i.i.i.i, align 4
  %call25.i.i.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %add.ptr.i, ptr noundef %218, i8 noundef zeroext 10, i8 noundef zeroext 2) #8
  %or26.i.i.i = or i32 %or22.i.i30.i, %call25.i.i.i
  %219 = ptrtoint ptr %rx_p1_client.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %rx_p1_client.i.i.i.i, align 4
  %call29.i.i.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %add.ptr.i, ptr noundef %220, i8 noundef zeroext 15, i8 noundef zeroext 0) #8
  %or30.i.i.i = or i32 %or26.i.i.i, %call29.i.i.i
  %221 = ptrtoint ptr %rx_p1_client.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %rx_p1_client.i.i.i.i, align 4
  %call33.i.i.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %add.ptr.i, ptr noundef %222, i8 noundef zeroext 15, i8 noundef zeroext -128) #8
  %or34.i.i.i = or i32 %or30.i.i.i, %call33.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or34.i.i.i)
  %cmp35.i.i.i = icmp slt i32 %or34.i.i.i, 0
  br i1 %cmp35.i.i.i, label %anx7625_write_or.exit95.i.i.i.cleanup.sink.split.i.i.i_crit_edge, label %anx7625_write_or.exit95.i.i.i.anx7625_api_dsi_config.exit.i.i_crit_edge

anx7625_write_or.exit95.i.i.i.anx7625_api_dsi_config.exit.i.i_crit_edge: ; preds = %anx7625_write_or.exit95.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %anx7625_api_dsi_config.exit.i.i

anx7625_write_or.exit95.i.i.i.cleanup.sink.split.i.i.i_crit_edge: ; preds = %anx7625_write_or.exit95.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i.i.i

cleanup.sink.split.i.i.i:                         ; preds = %anx7625_write_or.exit95.i.i.i.cleanup.sink.split.i.i.i_crit_edge, %anx7625_dsi_video_timing_config.exit.i.i.i.cleanup.sink.split.i.i.i_crit_edge, %anx7625_swap_dsi_lane3.exit.i.i.i.cleanup.sink.split.i.i.i_crit_edge, %anx7625_swap_dsi_lane3.exit.thread.i.i.i
  %.str.94.sink.i.i.i = phi ptr [ @.str.92, %anx7625_swap_dsi_lane3.exit.thread.i.i.i ], [ @.str.92, %anx7625_swap_dsi_lane3.exit.i.i.i.cleanup.sink.split.i.i.i_crit_edge ], [ @.str.93, %anx7625_dsi_video_timing_config.exit.i.i.i.cleanup.sink.split.i.i.i_crit_edge ], [ @.str.94, %anx7625_write_or.exit95.i.i.i.cleanup.sink.split.i.i.i_crit_edge ]
  %retval.0.ph.i.i.i = phi i32 [ -5, %anx7625_swap_dsi_lane3.exit.thread.i.i.i ], [ %call4.i.i.i.i, %anx7625_swap_dsi_lane3.exit.i.i.i.cleanup.sink.split.i.i.i_crit_edge ], [ %or11.i.i29.i, %anx7625_dsi_video_timing_config.exit.i.i.i.cleanup.sink.split.i.i.i_crit_edge ], [ %or34.i.i.i, %anx7625_write_or.exit95.i.i.i.cleanup.sink.split.i.i.i_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1.i.i21.i, ptr noundef nonnull @.str.3, ptr noundef nonnull %.str.94.sink.i.i.i) #8
  br label %anx7625_api_dsi_config.exit.i.i

anx7625_api_dsi_config.exit.i.i:                  ; preds = %cleanup.sink.split.i.i.i, %anx7625_write_or.exit95.i.i.i.anx7625_api_dsi_config.exit.i.i_crit_edge
  %retval.0.i32.i.i = phi i32 [ %or34.i.i.i, %anx7625_write_or.exit95.i.i.i.anx7625_api_dsi_config.exit.i.i_crit_edge ], [ %retval.0.ph.i.i.i, %cleanup.sink.split.i.i.i ]
  %or.i31.i = or i32 %retval.0.i32.i.i, %retval.0.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i31.i)
  %cmp.i32.i = icmp slt i32 %or.i31.i, 0
  br i1 %cmp.i32.i, label %anx7625_api_dsi_config.exit.i.i.if.then6.i_crit_edge, label %if.end.i33.i

anx7625_api_dsi_config.exit.i.i.if.then6.i_crit_edge: ; preds = %anx7625_api_dsi_config.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then6.i

if.end.i33.i:                                     ; preds = %anx7625_api_dsi_config.exit.i.i
  %223 = ptrtoint ptr %rx_p0_client.i16.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %rx_p0_client.i16.i, align 4
  %call.i33.i.i = tail call fastcc i32 @anx7625_reg_read(ptr noundef %add.ptr.i, ptr noundef %224, i8 noundef zeroext 40) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33.i.i)
  %cmp.i34.i.i = icmp slt i32 %call.i33.i.i, 0
  br i1 %cmp.i34.i.i, label %if.end.i33.i.anx7625_write_or.exit.i34.i_crit_edge, label %if.end.i37.i.i

if.end.i33.i.anx7625_write_or.exit.i34.i_crit_edge: ; preds = %if.end.i33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %anx7625_write_or.exit.i34.i

if.end.i37.i.i:                                   ; preds = %if.end.i33.i
  call void @__sanitizer_cov_trace_pc() #10
  %225 = trunc i32 %call.i33.i.i to i8
  %conv1.i35.i.i = or i8 %225, 32
  %call2.i36.i.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %add.ptr.i, ptr noundef %224, i8 noundef zeroext 40, i8 noundef zeroext %conv1.i35.i.i) #8
  br label %anx7625_write_or.exit.i34.i

anx7625_write_or.exit.i34.i:                      ; preds = %if.end.i37.i.i, %if.end.i33.i.anx7625_write_or.exit.i34.i_crit_edge
  %retval.0.i38.i.i = phi i32 [ %call2.i36.i.i, %if.end.i37.i.i ], [ %call.i33.i.i, %if.end.i33.i.anx7625_write_or.exit.i34.i_crit_edge ]
  %226 = ptrtoint ptr %rx_p0_client.i16.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %rx_p0_client.i16.i, align 4
  %call.i39.i.i = tail call fastcc i32 @anx7625_reg_read(ptr noundef %add.ptr.i, ptr noundef %227, i8 noundef zeroext 40) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i39.i.i)
  %cmp.i40.i.i = icmp slt i32 %call.i39.i.i, 0
  br i1 %cmp.i40.i.i, label %anx7625_write_or.exit.i34.i.anx7625_write_and.exit45.i.i_crit_edge, label %if.end.i43.i.i

anx7625_write_or.exit.i34.i.anx7625_write_and.exit45.i.i_crit_edge: ; preds = %anx7625_write_or.exit.i34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %anx7625_write_and.exit45.i.i

if.end.i43.i.i:                                   ; preds = %anx7625_write_or.exit.i34.i
  call void @__sanitizer_cov_trace_pc() #10
  %228 = trunc i32 %call.i39.i.i to i8
  %conv1.i41.i.i = and i8 %228, -17
  %call2.i42.i.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %add.ptr.i, ptr noundef %227, i8 noundef zeroext 40, i8 noundef zeroext %conv1.i41.i.i) #8
  br label %anx7625_write_and.exit45.i.i

anx7625_write_and.exit45.i.i:                     ; preds = %if.end.i43.i.i, %anx7625_write_or.exit.i34.i.anx7625_write_and.exit45.i.i_crit_edge
  %retval.0.i44.i.i = phi i32 [ %call2.i42.i.i, %if.end.i43.i.i ], [ %call.i39.i.i, %anx7625_write_or.exit.i34.i.anx7625_write_and.exit45.i.i_crit_edge ]
  %or9.i.i = or i32 %retval.0.i44.i.i, %retval.0.i38.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or9.i.i)
  %cmp10.i.i = icmp slt i32 %or9.i.i, 0
  br i1 %cmp10.i.i, label %anx7625_write_and.exit45.i.i.if.then6.i_crit_edge, label %if.else.i.i

anx7625_write_and.exit45.i.i.if.then6.i_crit_edge: ; preds = %anx7625_write_and.exit45.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then6.i

if.else.i.i:                                      ; preds = %anx7625_write_and.exit45.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %dev1.i, i32 noundef 2, ptr noundef nonnull @.str.91) #8
  br label %anx7625_dp_start.exit

if.then6.i:                                       ; preds = %anx7625_write_and.exit45.i.i.if.then6.i_crit_edge, %anx7625_api_dsi_config.exit.i.i.if.then6.i_crit_edge, %anx7625_write_and.exit57.i.i.if.then6.i_crit_edge, %if.then8.i.i, %anx7625_config_bit_matrix.exit.i.i.if.then6.i_crit_edge, %anx7625_write_and.exit.i.i.if.then6.i_crit_edge, %if.then3.i.if.then6.i_crit_edge
  %.str.86.sink.i.sink.i = phi ptr [ @.str.85, %if.then8.i.i ], [ @.str.83, %if.then3.i.if.then6.i_crit_edge ], [ @.str.83, %anx7625_write_and.exit.i.i.if.then6.i_crit_edge ], [ @.str.84, %anx7625_config_bit_matrix.exit.i.i.if.then6.i_crit_edge ], [ @.str.86, %anx7625_write_and.exit57.i.i.if.then6.i_crit_edge ], [ @.str.89, %anx7625_api_dsi_config.exit.i.i.if.then6.i_crit_edge ], [ @.str.90, %anx7625_write_and.exit45.i.i.if.then6.i_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1.i, ptr noundef nonnull @.str.3, ptr noundef nonnull %.str.86.sink.i.sink.i) #8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.81) #8
  br label %anx7625_dp_start.exit

anx7625_dp_start.exit:                            ; preds = %if.then6.i, %if.else.i.i, %anx7625_write_and.exit57.i.i.anx7625_dp_start.exit_crit_edge, %if.then.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @anx7625_bridge_detect(ptr nocapture noundef readonly %bridge) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %client = getelementptr i8, ptr %bridge, i32 -728
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %dev1, i32 noundef 2, ptr noundef nonnull @.str.104) #8
  %2 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client, align 4
  %dev1.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %dev1.i, i32 noundef 2, ptr noundef nonnull @.str.105) #8
  %panel_bridge.i = getelementptr i8, ptr %bridge, i32 -1028
  %4 = ptrtoint ptr %panel_bridge.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %panel_bridge.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.anx7625_sink_detect.exit_crit_edge

entry.anx7625_sink_detect.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %anx7625_sink_detect.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %hpd_status.i = getelementptr i8, ptr %bridge, i32 -828
  %6 = ptrtoint ptr %hpd_status.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hpd_status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not.i = icmp eq i32 %7, 0
  %cond.i = select i1 %tobool2.not.i, i32 2, i32 1
  br label %anx7625_sink_detect.exit

anx7625_sink_detect.exit:                         ; preds = %if.end.i, %entry.anx7625_sink_detect.exit_crit_edge
  %retval.0.i = phi i32 [ %cond.i, %if.end.i ], [ 1, %entry.anx7625_sink_detect.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @anx7625_bridge_get_edid(ptr noundef %bridge, ptr nocapture noundef readnone %connector) #2 align 64 {
entry:
  %pblock_buf.i.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %bridge, i32 -1072
  %client = getelementptr i8, ptr %bridge, i32 -728
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %dev1, i32 noundef 2, ptr noundef nonnull @.str.106) #8
  %2 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client, align 4
  %dev1.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %slimport_edid_p.i = getelementptr i8, ptr %bridge, i32 -692
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 512) #11
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.107) #8
  br label %anx7625_get_edid.exit

if.end.i:                                         ; preds = %entry
  %5 = ptrtoint ptr %slimport_edid_p.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %slimport_edid_p.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i = icmp sgt i32 %6, 0
  br i1 %cmp.i, label %if.then3.i, label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %edid_raw_data.i = getelementptr i8, ptr %bridge, i32 -688
  %7 = call ptr @memcpy(ptr %call7.i.i, ptr %edid_raw_data.i, i32 512)
  br label %anx7625_get_edid.exit

if.end5.i:                                        ; preds = %if.end.i
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev1.i, i32 noundef 4) #8
  %edid_raw_data7.i = getelementptr i8, ptr %bridge, i32 -688
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pblock_buf.i.i) #8
  %8 = call ptr @memset(ptr %pblock_buf.i.i, i32 255, i32 16)
  %9 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %client, align 4
  %dev1.i.i = getelementptr inbounds %struct.i2c_client, ptr %10, i32 0, i32 4
  %rx_p0_client.i.i = getelementptr i8, ptr %bridge, i32 -712
  %11 = ptrtoint ptr %rx_p0_client.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rx_p0_client.i.i, align 4
  %call.i37.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %add.ptr.i, ptr noundef %12, i8 noundef zeroext 17, i8 noundef zeroext 80) #8
  %13 = ptrtoint ptr %rx_p0_client.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rx_p0_client.i.i, align 4
  %call4.i.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %add.ptr.i, ptr noundef %14, i8 noundef zeroext 18, i8 noundef zeroext 0) #8
  %or.i.i = or i32 %call4.i.i, %call.i37.i
  %15 = ptrtoint ptr %rx_p0_client.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rx_p0_client.i.i, align 4
  %call.i.i.i = tail call fastcc i32 @anx7625_reg_read(ptr noundef %add.ptr.i, ptr noundef %16, i8 noundef zeroext 19) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end5.i.anx7625_write_and.exit.i.i_crit_edge, label %if.end.i.i.i

if.end5.i.anx7625_write_and.exit.i.i_crit_edge:   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %anx7625_write_and.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  %17 = trunc i32 %call.i.i.i to i8
  %conv1.i.i.i = and i8 %17, -16
  %call2.i.i.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %add.ptr.i, ptr noundef %16, i8 noundef zeroext 19, i8 noundef zeroext %conv1.i.i.i) #8
  br label %anx7625_write_and.exit.i.i

anx7625_write_and.exit.i.i:                       ; preds = %if.end.i.i.i, %if.end5.i.anx7625_write_and.exit.i.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %call2.i.i.i, %if.end.i.i.i ], [ %call.i.i.i, %if.end5.i.anx7625_write_and.exit.i.i_crit_edge ]
  %or8.i.i = or i32 %or.i.i, %retval.0.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i.i)
  %cmp.i.i = icmp slt i32 %or8.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %anx7625_write_and.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1.i.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.109) #8
  br label %sp_tx_edid_read.exit.thread.i

if.end.i.i:                                       ; preds = %anx7625_write_and.exit.i.i
  %18 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %client, align 4
  %dev1.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %19, i32 0, i32 4
  %call.i157.i.i = tail call fastcc i32 @sp_tx_aux_wr(ptr noundef %add.ptr.i, i8 noundef zeroext 126) #8
  %20 = ptrtoint ptr %rx_p0_client.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rx_p0_client.i.i, align 4
  %call.i.i.i.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %add.ptr.i, ptr noundef %21, i8 noundef zeroext 39, i8 noundef zeroext 1) #8
  %22 = ptrtoint ptr %rx_p0_client.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rx_p0_client.i.i, align 4
  %call.i.i.i.i.i = tail call fastcc i32 @anx7625_reg_read(ptr noundef %add.ptr.i, ptr noundef %23, i8 noundef zeroext 20) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp slt i32 %call.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i.i, label %if.end.i.i.sp_tx_aux_rd.exit.i.i.i_crit_edge, label %if.end.i.i.i.i.i

if.end.i.i.sp_tx_aux_rd.exit.i.i.i_crit_edge:     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sp_tx_aux_rd.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %24 = trunc i32 %call.i.i.i.i.i to i8
  %conv1.i.i.i.i.i = or i8 %24, 16
  %call2.i.i.i.i.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %add.ptr.i, ptr noundef %23, i8 noundef zeroext 20, i8 noundef zeroext %conv1.i.i.i.i.i) #8
  br label %sp_tx_aux_rd.exit.i.i.i

sp_tx_aux_rd.exit.i.i.i:                          ; preds = %if.end.i.i.i.i.i, %if.end.i.i.sp_tx_aux_rd.exit.i.i.i_crit_edge
  %call4.i.i.i.i = tail call fastcc i32 @wait_aux_op_finish(ptr noundef %add.ptr.i) #8
  %25 = ptrtoint ptr %rx_p0_client.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rx_p0_client.i.i, align 4
  %call3.i.i.i = tail call fastcc i32 @anx7625_reg_read(ptr noundef %add.ptr.i, ptr noundef %26, i8 noundef zeroext 21) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i.i)
  %cmp.i158.i.i = icmp slt i32 %call3.i.i.i, 0
  br i1 %cmp.i158.i.i, label %sp_tx_get_edid_block.exit.thread.i.i, label %sp_tx_get_edid_block.exit.i.i

sp_tx_get_edid_block.exit.thread.i.i:             ; preds = %sp_tx_aux_rd.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1.i.i.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.112) #8
  br label %sp_tx_edid_read.exit.thread.i

sp_tx_get_edid_block.exit.i.i:                    ; preds = %sp_tx_aux_rd.exit.i.i.i
  %add.i.i.i = add nuw i32 %call3.i.i.i, 1
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %dev1.i.i.i, i32 noundef 2, ptr noundef nonnull @.str.113, i32 noundef %add.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call3.i.i.i)
  %cmp4.i.i.i = icmp ugt i32 %call3.i.i.i, 3
  %spec.store.select.i.i.i = select i1 %cmp4.i.i.i, i32 1, i32 %call3.i.i.i
  %tx_p2_client.i.i.i.i = getelementptr i8, ptr %bridge, i32 -716
  %arrayidx79.i.i = getelementptr i8, ptr %bridge, i32 -560
  %arrayidx79.1.i.i = getelementptr i8, ptr %bridge, i32 -544
  %arrayidx79.2.i.i = getelementptr i8, ptr %bridge, i32 -528
  %arrayidx79.3.i.i = getelementptr i8, ptr %bridge, i32 -512
  %arrayidx79.4.i.i = getelementptr i8, ptr %bridge, i32 -496
  %arrayidx79.5.i.i = getelementptr i8, ptr %bridge, i32 -480
  %arrayidx79.6.i.i = getelementptr i8, ptr %bridge, i32 -464
  %arrayidx79.7.i.i = getelementptr i8, ptr %bridge, i32 -448
  %arrayidx47.1.i.i = getelementptr i8, ptr %bridge, i32 -672
  %arrayidx47.2.i.i = getelementptr i8, ptr %bridge, i32 -656
  %arrayidx47.3.i.i = getelementptr i8, ptr %bridge, i32 -640
  %arrayidx47.4.i.i = getelementptr i8, ptr %bridge, i32 -624
  %arrayidx47.5.i.i = getelementptr i8, ptr %bridge, i32 -608
  %arrayidx47.6.i.i = getelementptr i8, ptr %bridge, i32 -592
  %arrayidx47.7.i.i = getelementptr i8, ptr %bridge, i32 -576
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %sw.epilog.i.i.do.body.i.i_crit_edge, %sp_tx_get_edid_block.exit.i.i
  %count.0.i.i = phi i32 [ %inc87.i.i, %sw.epilog.i.i.do.body.i.i_crit_edge ], [ 0, %sp_tx_get_edid_block.exit.i.i ]
  %g_edid_break.0.i.i = phi i32 [ %g_edid_break.2.i.i, %sw.epilog.i.i.do.body.i.i_crit_edge ], [ 0, %sp_tx_get_edid_block.exit.i.i ]
  %27 = zext i32 %count.0.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.145)
  switch i32 %count.0.i.i, label %do.body.i.i.sw.epilog.i.i_crit_edge [
    i32 0, label %do.body.i.i.sw.bb.i.i_crit_edge
    i32 1, label %do.body.i.i.sw.bb.i.i_crit_edge11
    i32 2, label %for.cond25.preheader.i.i
    i32 3, label %for.cond56.preheader.i.i
  ]

do.body.i.i.sw.bb.i.i_crit_edge11:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i.i

do.body.i.i.sw.bb.i.i_crit_edge:                  ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb.i.i

do.body.i.i.sw.epilog.i.i_crit_edge:              ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i.i

for.cond56.preheader.i.i:                         ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %g_edid_break.0.i.i)
  %cmp66.i.i = icmp eq i32 %g_edid_break.0.i.i, 1
  br i1 %cmp66.i.i, label %for.cond56.preheader.i.i.sw.epilog.i.i_crit_edge, label %for.body60.preheader.i.i

for.cond56.preheader.i.i.sw.epilog.i.i_crit_edge: ; preds = %for.cond56.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i.i

for.body60.preheader.i.i:                         ; preds = %for.cond56.preheader.i.i
  %call73.i.i = call fastcc i32 @segments_edid_read(ptr noundef %add.ptr.i, ptr noundef nonnull %pblock_buf.i.i, i8 noundef zeroext -128) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73.i.i)
  %cmp74.i.i = icmp slt i32 %call73.i.i, 0
  br i1 %cmp74.i.i, label %for.body60.preheader.i.i.sp_tx_edid_read.exit.thread.i_crit_edge, label %if.end77.i.i

for.body60.preheader.i.i.sp_tx_edid_read.exit.thread.i_crit_edge: ; preds = %for.body60.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sp_tx_edid_read.exit.thread.i

for.cond25.preheader.i.i:                         ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %g_edid_break.0.i.i)
  %cmp35.i.i = icmp eq i32 %g_edid_break.0.i.i, 1
  br i1 %cmp35.i.i, label %for.cond25.preheader.i.i.sw.epilog.i.i_crit_edge, label %for.body29.preheader.i.i

for.cond25.preheader.i.i.sw.epilog.i.i_crit_edge: ; preds = %for.cond25.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i.i

for.body29.preheader.i.i:                         ; preds = %for.cond25.preheader.i.i
  %call41.i.i = call fastcc i32 @segments_edid_read(ptr noundef %add.ptr.i, ptr noundef nonnull %pblock_buf.i.i, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i.i)
  %cmp42.i.i = icmp slt i32 %call41.i.i, 0
  br i1 %cmp42.i.i, label %for.body29.preheader.i.i.sp_tx_edid_read.exit.thread.i_crit_edge, label %if.end45.i.i

for.body29.preheader.i.i.sp_tx_edid_read.exit.thread.i_crit_edge: ; preds = %for.body29.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sp_tx_edid_read.exit.thread.i

sw.bb.i.i:                                        ; preds = %do.body.i.i.sw.bb.i.i_crit_edge, %do.body.i.i.sw.bb.i.i_crit_edge11
  %count.0.tr.i.i = trunc i32 %count.0.i.i to i8
  %28 = shl nuw nsw i8 %count.0.tr.i.i, 3
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end22.i.i.for.body.i.i_crit_edge, %sw.bb.i.i
  %indvars.iv.i.i = phi i32 [ 0, %sw.bb.i.i ], [ %indvars.iv.next.i.i, %if.end22.i.i.for.body.i.i_crit_edge ]
  %i.0190.i.i = phi i8 [ 0, %sw.bb.i.i ], [ %inc.i.i, %if.end22.i.i.for.body.i.i_crit_edge ]
  %add.tr.i.i = add nuw nsw i8 %i.0190.i.i, %28
  %conv17.i.i = shl i8 %add.tr.i.i, 4
  %29 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %client, align 4
  %dev1.i162.i.i = getelementptr inbounds %struct.i2c_client, ptr %30, i32 0, i32 4
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %for.body.i.i
  %cnt.029.i.i.i = phi i32 [ 0, %for.body.i.i ], [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ]
  %call.i164.i.i = call fastcc i32 @sp_tx_aux_wr(ptr noundef %add.ptr.i, i8 noundef zeroext %conv17.i.i) #8
  %31 = ptrtoint ptr %rx_p0_client.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rx_p0_client.i.i, align 4
  %call.i.i165.i.i = call fastcc i32 @anx7625_reg_write(ptr noundef %add.ptr.i, ptr noundef %32, i8 noundef zeroext 39, i8 noundef zeroext -15) #8
  %33 = ptrtoint ptr %rx_p0_client.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rx_p0_client.i.i, align 4
  %call.i.i.i166.i.i = call fastcc i32 @anx7625_reg_read(ptr noundef %add.ptr.i, ptr noundef %34, i8 noundef zeroext 20) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i166.i.i)
  %cmp.i.i.i167.i.i = icmp slt i32 %call.i.i.i166.i.i, 0
  br i1 %cmp.i.i.i167.i.i, label %for.body.i.i.i.sp_tx_aux_rd.exit.i172.i.i_crit_edge, label %if.end.i.i.i170.i.i

for.body.i.i.i.sp_tx_aux_rd.exit.i172.i.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sp_tx_aux_rd.exit.i172.i.i

if.end.i.i.i170.i.i:                              ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %35 = trunc i32 %call.i.i.i166.i.i to i8
  %conv1.i.i.i168.i.i = or i8 %35, 16
  %call2.i.i.i169.i.i = call fastcc i32 @anx7625_reg_write(ptr noundef %add.ptr.i, ptr noundef %34, i8 noundef zeroext 20, i8 noundef zeroext %conv1.i.i.i168.i.i) #8
  br label %sp_tx_aux_rd.exit.i172.i.i

sp_tx_aux_rd.exit.i172.i.i:                       ; preds = %if.end.i.i.i170.i.i, %for.body.i.i.i.sp_tx_aux_rd.exit.i172.i.i_crit_edge
  %retval.0.i.i.i.i.i = phi i32 [ %call2.i.i.i169.i.i, %if.end.i.i.i170.i.i ], [ %call.i.i.i166.i.i, %for.body.i.i.i.sp_tx_aux_rd.exit.i172.i.i_crit_edge ]
  %or.i.i.i.i = or i32 %retval.0.i.i.i.i.i, %call.i.i165.i.i
  %call4.i.i171.i.i = call fastcc i32 @wait_aux_op_finish(ptr noundef %add.ptr.i) #8
  %or5.i.i.i.i = or i32 %or.i.i.i.i, %call4.i.i171.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %or5.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i173.i.i

if.then.i173.i.i:                                 ; preds = %sp_tx_aux_rd.exit.i172.i.i
  %36 = ptrtoint ptr %tx_p2_client.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tx_p2_client.i.i.i.i, align 4
  %call.i.i22.i.i.i = call fastcc i32 @anx7625_reg_read(ptr noundef %add.ptr.i, ptr noundef %37, i8 noundef zeroext 7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i22.i.i.i)
  %cmp.i.i23.i.i.i = icmp slt i32 %call.i.i22.i.i.i, 0
  br i1 %cmp.i.i23.i.i.i, label %if.then.i173.i.i.anx7625_write_or.exit.i.i.i.i_crit_edge, label %if.end.i.i26.i.i.i

if.then.i173.i.i.anx7625_write_or.exit.i.i.i.i_crit_edge: ; preds = %if.then.i173.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %anx7625_write_or.exit.i.i.i.i

if.end.i.i26.i.i.i:                               ; preds = %if.then.i173.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %38 = trunc i32 %call.i.i22.i.i.i to i8
  %conv1.i.i24.i.i.i = or i8 %38, 4
  %call2.i.i25.i.i.i = call fastcc i32 @anx7625_reg_write(ptr noundef %add.ptr.i, ptr noundef %37, i8 noundef zeroext 7, i8 noundef zeroext %conv1.i.i24.i.i.i) #8
  br label %anx7625_write_or.exit.i.i.i.i

anx7625_write_or.exit.i.i.i.i:                    ; preds = %if.end.i.i26.i.i.i, %if.then.i173.i.i.anx7625_write_or.exit.i.i.i.i_crit_edge
  %39 = ptrtoint ptr %tx_p2_client.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tx_p2_client.i.i.i.i, align 4
  %call.i8.i.i.i.i = call fastcc i32 @anx7625_reg_read(ptr noundef %add.ptr.i, ptr noundef %40, i8 noundef zeroext 7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8.i.i.i.i)
  %cmp.i9.i.i.i.i = icmp slt i32 %call.i8.i.i.i.i, 0
  br i1 %cmp.i9.i.i.i.i, label %anx7625_write_or.exit.i.i.i.i.sp_tx_rst_aux.exit.i.i.i_crit_edge, label %if.end.i12.i.i.i.i

anx7625_write_or.exit.i.i.i.i.sp_tx_rst_aux.exit.i.i.i_crit_edge: ; preds = %anx7625_write_or.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sp_tx_rst_aux.exit.i.i.i

if.end.i12.i.i.i.i:                               ; preds = %anx7625_write_or.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %41 = trunc i32 %call.i8.i.i.i.i to i8
  %conv1.i10.i.i.i.i = and i8 %41, -5
  %call2.i11.i.i.i.i = call fastcc i32 @anx7625_reg_write(ptr noundef %add.ptr.i, ptr noundef %40, i8 noundef zeroext 7, i8 noundef zeroext %conv1.i10.i.i.i.i) #8
  br label %sp_tx_rst_aux.exit.i.i.i

sp_tx_rst_aux.exit.i.i.i:                         ; preds = %if.end.i12.i.i.i.i, %anx7625_write_or.exit.i.i.i.i.sp_tx_rst_aux.exit.i.i.i_crit_edge
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %dev1.i162.i.i, i32 noundef 2, ptr noundef nonnull @.str.116) #8
  br label %for.inc.i.i.i

if.else.i.i.i:                                    ; preds = %sp_tx_aux_rd.exit.i172.i.i
  %42 = ptrtoint ptr %rx_p0_client.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rx_p0_client.i.i, align 4
  %call4.i.i.i = call fastcc i32 @anx7625_reg_block_read(ptr noundef %add.ptr.i, ptr noundef %43, ptr noundef nonnull %pblock_buf.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i)
  %cmp5.i.i.i = icmp sgt i32 %call4.i.i.i, 0
  br i1 %cmp5.i.i.i, label %if.end22.i.i, label %if.else.i.i.i.for.inc.i.i.i_crit_edge

if.else.i.i.i.for.inc.i.i.i_crit_edge:            ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %if.else.i.i.i.for.inc.i.i.i_crit_edge, %sp_tx_rst_aux.exit.i.i.i
  %inc.i.i.i = add nuw nsw i32 %cnt.029.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 4
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.sw.epilog.i.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i

for.inc.i.i.i.sw.epilog.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i.i

if.end22.i.i:                                     ; preds = %if.else.i.i.i
  %idxprom.i.i = zext i8 %conv17.i.i to i32
  %arrayidx.i.i = getelementptr i8, ptr %edid_raw_data7.i, i32 %idxprom.i.i
  %44 = call ptr @memcpy(ptr %arrayidx.i.i, ptr %pblock_buf.i.i, i32 16)
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %inc.i.i = add nuw nsw i8 %i.0190.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %indvars.iv.next.i.i, 8
  br i1 %exitcond.not.i.i, label %if.end22.i.i.sw.epilog.i.i_crit_edge, label %if.end22.i.i.for.body.i.i_crit_edge

if.end22.i.i.for.body.i.i_crit_edge:              ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

if.end22.i.i.sw.epilog.i.i_crit_edge:             ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.i.i

if.end45.i.i:                                     ; preds = %for.body29.preheader.i.i
  %45 = call ptr @memcpy(ptr %edid_raw_data7.i, ptr %pblock_buf.i.i, i32 16)
  %call41.1.i.i = call fastcc i32 @segments_edid_read(ptr noundef %add.ptr.i, ptr noundef nonnull %pblock_buf.i.i, i8 noundef zeroext 16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.1.i.i)
  %cmp42.1.i.i = icmp slt i32 %call41.1.i.i, 0
  br i1 %cmp42.1.i.i, label %if.end45.i.i.sp_tx_edid_read.exit.thread.i_crit_edge, label %if.end45.1.i.i

if.end45.i.i.sp_tx_edid_read.exit.thread.i_crit_edge: ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sp_tx_edid_read.exit.thread.i

if.end45.1.i.i:                                   ; preds = %if.end45.i.i
  %46 = call ptr @memcpy(ptr %arrayidx47.1.i.i, ptr %pblock_buf.i.i, i32 16)
  %call41.2.i.i = call fastcc i32 @segments_edid_read(ptr noundef %add.ptr.i, ptr noundef nonnull %pblock_buf.i.i, i8 noundef zeroext 32) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.2.i.i)
  %cmp42.2.i.i = icmp slt i32 %call41.2.i.i, 0
  br i1 %cmp42.2.i.i, label %if.end45.1.i.i.sp_tx_edid_read.exit.thread.i_crit_edge, label %if.end45.2.i.i

if.end45.1.i.i.sp_tx_edid_read.exit.thread.i_crit_edge: ; preds = %if.end45.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sp_tx_edid_read.exit.thread.i

if.end45.2.i.i:                                   ; preds = %if.end45.1.i.i
  %47 = call ptr @memcpy(ptr %arrayidx47.2.i.i, ptr %pblock_buf.i.i, i32 16)
  %call41.3.i.i = call fastcc i32 @segments_edid_read(ptr noundef %add.ptr.i, ptr noundef nonnull %pblock_buf.i.i, i8 noundef zeroext 48) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.3.i.i)
  %cmp42.3.i.i = icmp slt i32 %call41.3.i.i, 0
  br i1 %cmp42.3.i.i, label %if.end45.2.i.i.sp_tx_edid_read.exit.thread.i_crit_edge, label %if.end45.3.i.i

if.end45.2.i.i.sp_tx_edid_read.exit.thread.i_crit_edge: ; preds = %if.end45.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sp_tx_edid_read.exit.thread.i

if.end45.3.i.i:                                   ; preds = %if.end45.2.i.i
  %48 = call ptr @memcpy(ptr %arrayidx47.3.i.i, ptr %pblock_buf.i.i, i32 16)
  %call41.4.i.i = call fastcc i32 @segments_edid_read(ptr noundef %add.ptr.i, ptr noundef nonnull %pblock_buf.i.i, i8 noundef zeroext 64) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.4.i.i)
  %cmp42.4.i.i = icmp slt i32 %call41.4.i.i, 0
  br i1 %cmp42.4.i.i, label %if.end45.3.i.i.sp_tx_edid_read.exit.thread.i_crit_edge, label %if.end45.4.i.i

if.end45.3.i.i.sp_tx_edid_read.exit.thread.i_crit_edge: ; preds = %if.end45.3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sp_tx_edid_read.exit.thread.i

if.end45.4.i.i:                                   ; preds = %if.end45.3.i.i
  %49 = call ptr @memcpy(ptr %arrayidx47.4.i.i, ptr %pblock_buf.i.i, i32 16)
  %call41.5.i.i = call fastcc i32 @segments_edid_read(ptr noundef %add.ptr.i, ptr noundef nonnull %pblock_buf.i.i, i8 noundef zeroext 80) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.5.i.i)
  %cmp42.5.i.i = icmp slt i32 %call41.5.i.i, 0
  br i1 %cmp42.5.i.i, label %if.end45.4.i.i.sp_tx_edid_read.exit.thread.i_crit_edge, label %if.end45.5.i.i

if.end45.4.i.i.sp_tx_edid_read.exit.thread.i_crit_edge: ; preds = %if.end45.4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sp_tx_edid_read.exit.thread.i

if.end45.5.i.i:                                   ; preds = %if.end45.4.i.i
  %50 = call ptr @memcpy(ptr %arrayidx47.5.i.i, ptr %pblock_buf.i.i, i32 16)
  %call41.6.i.i = call fastcc i32 @segments_edid_read(ptr noundef %add.ptr.i, ptr noundef nonnull %pblock_buf.i.i, i8 noundef zeroext 96) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.6.i.i)
  %cmp42.6.i.i = icmp slt i32 %call41.6.i.i, 0
  br i1 %cmp42.6.i.i, label %if.end45.5.i.i.sp_tx_edid_read.exit.thread.i_crit_edge, label %if.end45.6.i.i

if.end45.5.i.i.sp_tx_edid_read.exit.thread.i_crit_edge: ; preds = %if.end45.5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sp_tx_edid_read.exit.thread.i

if.end45.6.i.i:                                   ; preds = %if.end45.5.i.i
  %51 = call ptr @memcpy(ptr %arrayidx47.6.i.i, ptr %pblock_buf.i.i, i32 16)
  %call41.7.i.i = call fastcc i32 @segments_edid_read(ptr noundef %add.ptr.i, ptr noundef nonnull %pblock_buf.i.i, i8 noundef zeroext 112) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.7.i.i)
  %cmp42.7.i.i = icmp slt i32 %call41.7.i.i, 0
  br i1 %cmp42.7.i.i, label %if.end45.6.i.i.sp_tx_edid_read.exit.thread.i_crit_edge, label %if.end45.6.i.i.sw.epilog.sink.split.i.i_crit_edge

if.end45.6.i.i.sw.epilog.sink.split.i.i_crit_edge: ; preds = %if.end45.6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split.i.i

if.end45.6.i.i.sp_tx_edid_read.exit.thread.i_crit_edge: ; preds = %if.end45.6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sp_tx_edid_read.exit.thread.i

if.end77.i.i:                                     ; preds = %for.body60.preheader.i.i
  %52 = call ptr @memcpy(ptr %arrayidx79.i.i, ptr %pblock_buf.i.i, i32 16)
  %call73.1.i.i = call fastcc i32 @segments_edid_read(ptr noundef %add.ptr.i, ptr noundef nonnull %pblock_buf.i.i, i8 noundef zeroext -112) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73.1.i.i)
  %cmp74.1.i.i = icmp slt i32 %call73.1.i.i, 0
  br i1 %cmp74.1.i.i, label %if.end77.i.i.sp_tx_edid_read.exit.thread.i_crit_edge, label %if.end77.1.i.i

if.end77.i.i.sp_tx_edid_read.exit.thread.i_crit_edge: ; preds = %if.end77.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sp_tx_edid_read.exit.thread.i

if.end77.1.i.i:                                   ; preds = %if.end77.i.i
  %53 = call ptr @memcpy(ptr %arrayidx79.1.i.i, ptr %pblock_buf.i.i, i32 16)
  %call73.2.i.i = call fastcc i32 @segments_edid_read(ptr noundef %add.ptr.i, ptr noundef nonnull %pblock_buf.i.i, i8 noundef zeroext -96) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73.2.i.i)
  %cmp74.2.i.i = icmp slt i32 %call73.2.i.i, 0
  br i1 %cmp74.2.i.i, label %if.end77.1.i.i.sp_tx_edid_read.exit.thread.i_crit_edge, label %if.end77.2.i.i

if.end77.1.i.i.sp_tx_edid_read.exit.thread.i_crit_edge: ; preds = %if.end77.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sp_tx_edid_read.exit.thread.i

if.end77.2.i.i:                                   ; preds = %if.end77.1.i.i
  %54 = call ptr @memcpy(ptr %arrayidx79.2.i.i, ptr %pblock_buf.i.i, i32 16)
  %call73.3.i.i = call fastcc i32 @segments_edid_read(ptr noundef %add.ptr.i, ptr noundef nonnull %pblock_buf.i.i, i8 noundef zeroext -80) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73.3.i.i)
  %cmp74.3.i.i = icmp slt i32 %call73.3.i.i, 0
  br i1 %cmp74.3.i.i, label %if.end77.2.i.i.sp_tx_edid_read.exit.thread.i_crit_edge, label %if.end77.3.i.i

if.end77.2.i.i.sp_tx_edid_read.exit.thread.i_crit_edge: ; preds = %if.end77.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sp_tx_edid_read.exit.thread.i

if.end77.3.i.i:                                   ; preds = %if.end77.2.i.i
  %55 = call ptr @memcpy(ptr %arrayidx79.3.i.i, ptr %pblock_buf.i.i, i32 16)
  %call73.4.i.i = call fastcc i32 @segments_edid_read(ptr noundef %add.ptr.i, ptr noundef nonnull %pblock_buf.i.i, i8 noundef zeroext -64) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73.4.i.i)
  %cmp74.4.i.i = icmp slt i32 %call73.4.i.i, 0
  br i1 %cmp74.4.i.i, label %if.end77.3.i.i.sp_tx_edid_read.exit.thread.i_crit_edge, label %if.end77.4.i.i

if.end77.3.i.i.sp_tx_edid_read.exit.thread.i_crit_edge: ; preds = %if.end77.3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sp_tx_edid_read.exit.thread.i

if.end77.4.i.i:                                   ; preds = %if.end77.3.i.i
  %56 = call ptr @memcpy(ptr %arrayidx79.4.i.i, ptr %pblock_buf.i.i, i32 16)
  %call73.5.i.i = call fastcc i32 @segments_edid_read(ptr noundef %add.ptr.i, ptr noundef nonnull %pblock_buf.i.i, i8 noundef zeroext -48) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73.5.i.i)
  %cmp74.5.i.i = icmp slt i32 %call73.5.i.i, 0
  br i1 %cmp74.5.i.i, label %if.end77.4.i.i.sp_tx_edid_read.exit.thread.i_crit_edge, label %if.end77.5.i.i

if.end77.4.i.i.sp_tx_edid_read.exit.thread.i_crit_edge: ; preds = %if.end77.4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sp_tx_edid_read.exit.thread.i

if.end77.5.i.i:                                   ; preds = %if.end77.4.i.i
  %57 = call ptr @memcpy(ptr %arrayidx79.5.i.i, ptr %pblock_buf.i.i, i32 16)
  %call73.6.i.i = call fastcc i32 @segments_edid_read(ptr noundef %add.ptr.i, ptr noundef nonnull %pblock_buf.i.i, i8 noundef zeroext -32) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73.6.i.i)
  %cmp74.6.i.i = icmp slt i32 %call73.6.i.i, 0
  br i1 %cmp74.6.i.i, label %if.end77.5.i.i.sp_tx_edid_read.exit.thread.i_crit_edge, label %if.end77.6.i.i

if.end77.5.i.i.sp_tx_edid_read.exit.thread.i_crit_edge: ; preds = %if.end77.5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sp_tx_edid_read.exit.thread.i

if.end77.6.i.i:                                   ; preds = %if.end77.5.i.i
  %58 = call ptr @memcpy(ptr %arrayidx79.6.i.i, ptr %pblock_buf.i.i, i32 16)
  %call73.7.i.i = call fastcc i32 @segments_edid_read(ptr noundef %add.ptr.i, ptr noundef nonnull %pblock_buf.i.i, i8 noundef zeroext -16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73.7.i.i)
  %cmp74.7.i.i = icmp slt i32 %call73.7.i.i, 0
  br i1 %cmp74.7.i.i, label %if.end77.6.i.i.sp_tx_edid_read.exit.thread.i_crit_edge, label %if.end77.6.i.i.sw.epilog.sink.split.i.i_crit_edge

if.end77.6.i.i.sw.epilog.sink.split.i.i_crit_edge: ; preds = %if.end77.6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog.sink.split.i.i

if.end77.6.i.i.sp_tx_edid_read.exit.thread.i_crit_edge: ; preds = %if.end77.6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sp_tx_edid_read.exit.thread.i

sw.epilog.sink.split.i.i:                         ; preds = %if.end77.6.i.i.sw.epilog.sink.split.i.i_crit_edge, %if.end45.6.i.i.sw.epilog.sink.split.i.i_crit_edge
  %arrayidx79.7.sink.i.i = phi ptr [ %arrayidx47.7.i.i, %if.end45.6.i.i.sw.epilog.sink.split.i.i_crit_edge ], [ %arrayidx79.7.i.i, %if.end77.6.i.i.sw.epilog.sink.split.i.i_crit_edge ]
  %59 = call ptr @memcpy(ptr %arrayidx79.7.sink.i.i, ptr %pblock_buf.i.i, i32 16)
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.epilog.sink.split.i.i, %if.end22.i.i.sw.epilog.i.i_crit_edge, %for.inc.i.i.i.sw.epilog.i.i_crit_edge, %for.cond25.preheader.i.i.sw.epilog.i.i_crit_edge, %for.cond56.preheader.i.i.sw.epilog.i.i_crit_edge, %do.body.i.i.sw.epilog.i.i_crit_edge
  %g_edid_break.2.i.i = phi i32 [ %g_edid_break.0.i.i, %do.body.i.i.sw.epilog.i.i_crit_edge ], [ 1, %for.cond25.preheader.i.i.sw.epilog.i.i_crit_edge ], [ 1, %for.cond56.preheader.i.i.sw.epilog.i.i_crit_edge ], [ %g_edid_break.0.i.i, %sw.epilog.sink.split.i.i ], [ -5, %for.inc.i.i.i.sw.epilog.i.i_crit_edge ], [ %call4.i.i.i, %if.end22.i.i.sw.epilog.i.i_crit_edge ]
  %inc87.i.i = add i32 %count.0.i.i, 1
  %cmp88.not.i.i = icmp slt i32 %spec.store.select.i.i.i, %inc87.i.i
  br i1 %cmp88.not.i.i, label %do.end.i.i, label %sw.epilog.i.i.do.body.i.i_crit_edge

sw.epilog.i.i.do.body.i.i_crit_edge:              ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i

do.end.i.i:                                       ; preds = %sw.epilog.i.i
  %call90.i.i = call zeroext i1 @drm_edid_is_valid(ptr noundef %edid_raw_data7.i) #8
  br i1 %call90.i.i, label %if.end92.i.i, label %if.then91.i.i

if.then91.i.i:                                    ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1.i.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.110) #8
  br label %sp_tx_edid_read.exit.thread.i

if.end92.i.i:                                     ; preds = %do.end.i.i
  %60 = ptrtoint ptr %tx_p2_client.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %tx_p2_client.i.i.i.i, align 4
  %call.i.i174.i.i = call fastcc i32 @anx7625_reg_read(ptr noundef %add.ptr.i, ptr noundef %61, i8 noundef zeroext 7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i174.i.i)
  %cmp.i.i.i.i = icmp slt i32 %call.i.i174.i.i, 0
  br i1 %cmp.i.i.i.i, label %if.end92.i.i.anx7625_write_or.exit.i.i.i_crit_edge, label %if.end.i.i.i.i

if.end92.i.i.anx7625_write_or.exit.i.i.i_crit_edge: ; preds = %if.end92.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %anx7625_write_or.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.end92.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %62 = trunc i32 %call.i.i174.i.i to i8
  %conv1.i.i.i.i = or i8 %62, 4
  %call2.i.i.i.i = call fastcc i32 @anx7625_reg_write(ptr noundef %add.ptr.i, ptr noundef %61, i8 noundef zeroext 7, i8 noundef zeroext %conv1.i.i.i.i) #8
  br label %anx7625_write_or.exit.i.i.i

anx7625_write_or.exit.i.i.i:                      ; preds = %if.end.i.i.i.i, %if.end92.i.i.anx7625_write_or.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi i32 [ %call2.i.i.i.i, %if.end.i.i.i.i ], [ %call.i.i174.i.i, %if.end92.i.i.anx7625_write_or.exit.i.i.i_crit_edge ]
  %63 = ptrtoint ptr %tx_p2_client.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %tx_p2_client.i.i.i.i, align 4
  %call.i8.i.i.i = call fastcc i32 @anx7625_reg_read(ptr noundef %add.ptr.i, ptr noundef %64, i8 noundef zeroext 7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8.i.i.i)
  %cmp.i9.i.i.i = icmp slt i32 %call.i8.i.i.i, 0
  br i1 %cmp.i9.i.i.i, label %anx7625_write_or.exit.i.i.i.sp_tx_rst_aux.exit.i.i_crit_edge, label %if.end.i12.i.i.i

anx7625_write_or.exit.i.i.i.sp_tx_rst_aux.exit.i.i_crit_edge: ; preds = %anx7625_write_or.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sp_tx_rst_aux.exit.i.i

if.end.i12.i.i.i:                                 ; preds = %anx7625_write_or.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %65 = trunc i32 %call.i8.i.i.i to i8
  %conv1.i10.i.i.i = and i8 %65, -5
  %call2.i11.i.i.i = call fastcc i32 @anx7625_reg_write(ptr noundef %add.ptr.i, ptr noundef %64, i8 noundef zeroext 7, i8 noundef zeroext %conv1.i10.i.i.i) #8
  br label %sp_tx_rst_aux.exit.i.i

sp_tx_rst_aux.exit.i.i:                           ; preds = %if.end.i12.i.i.i, %anx7625_write_or.exit.i.i.i.sp_tx_rst_aux.exit.i.i_crit_edge
  %retval.0.i13.i.i.i = phi i32 [ %call2.i11.i.i.i, %if.end.i12.i.i.i ], [ %call.i8.i.i.i, %anx7625_write_or.exit.i.i.i.sp_tx_rst_aux.exit.i.i_crit_edge ]
  %or.i.i.i = or i32 %retval.0.i13.i.i.i, %retval.0.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp94.i.i = icmp slt i32 %or.i.i.i, 0
  br i1 %cmp94.i.i, label %if.then96.i.i, label %sp_tx_edid_read.exit.i

if.then96.i.i:                                    ; preds = %sp_tx_rst_aux.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1.i.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.111) #8
  br label %sp_tx_edid_read.exit.thread.i

sp_tx_edid_read.exit.thread.i:                    ; preds = %if.then96.i.i, %if.then91.i.i, %if.end77.6.i.i.sp_tx_edid_read.exit.thread.i_crit_edge, %if.end77.5.i.i.sp_tx_edid_read.exit.thread.i_crit_edge, %if.end77.4.i.i.sp_tx_edid_read.exit.thread.i_crit_edge, %if.end77.3.i.i.sp_tx_edid_read.exit.thread.i_crit_edge, %if.end77.2.i.i.sp_tx_edid_read.exit.thread.i_crit_edge, %if.end77.1.i.i.sp_tx_edid_read.exit.thread.i_crit_edge, %if.end77.i.i.sp_tx_edid_read.exit.thread.i_crit_edge, %if.end45.6.i.i.sp_tx_edid_read.exit.thread.i_crit_edge, %if.end45.5.i.i.sp_tx_edid_read.exit.thread.i_crit_edge, %if.end45.4.i.i.sp_tx_edid_read.exit.thread.i_crit_edge, %if.end45.3.i.i.sp_tx_edid_read.exit.thread.i_crit_edge, %if.end45.2.i.i.sp_tx_edid_read.exit.thread.i_crit_edge, %if.end45.1.i.i.sp_tx_edid_read.exit.thread.i_crit_edge, %if.end45.i.i.sp_tx_edid_read.exit.thread.i_crit_edge, %for.body29.preheader.i.i.sp_tx_edid_read.exit.thread.i_crit_edge, %for.body60.preheader.i.i.sp_tx_edid_read.exit.thread.i_crit_edge, %sp_tx_get_edid_block.exit.thread.i.i, %if.then.i.i
  %retval.0.i.ph.i = phi i32 [ -5, %sp_tx_get_edid_block.exit.thread.i.i ], [ -22, %if.then91.i.i ], [ %or.i.i.i, %if.then96.i.i ], [ -5, %if.then.i.i ], [ %call41.i.i, %for.body29.preheader.i.i.sp_tx_edid_read.exit.thread.i_crit_edge ], [ %call41.1.i.i, %if.end45.i.i.sp_tx_edid_read.exit.thread.i_crit_edge ], [ %call41.2.i.i, %if.end45.1.i.i.sp_tx_edid_read.exit.thread.i_crit_edge ], [ %call41.3.i.i, %if.end45.2.i.i.sp_tx_edid_read.exit.thread.i_crit_edge ], [ %call41.4.i.i, %if.end45.3.i.i.sp_tx_edid_read.exit.thread.i_crit_edge ], [ %call41.5.i.i, %if.end45.4.i.i.sp_tx_edid_read.exit.thread.i_crit_edge ], [ %call41.6.i.i, %if.end45.5.i.i.sp_tx_edid_read.exit.thread.i_crit_edge ], [ %call41.7.i.i, %if.end45.6.i.i.sp_tx_edid_read.exit.thread.i_crit_edge ], [ %call73.i.i, %for.body60.preheader.i.i.sp_tx_edid_read.exit.thread.i_crit_edge ], [ %call73.1.i.i, %if.end77.i.i.sp_tx_edid_read.exit.thread.i_crit_edge ], [ %call73.2.i.i, %if.end77.1.i.i.sp_tx_edid_read.exit.thread.i_crit_edge ], [ %call73.3.i.i, %if.end77.2.i.i.sp_tx_edid_read.exit.thread.i_crit_edge ], [ %call73.4.i.i, %if.end77.3.i.i.sp_tx_edid_read.exit.thread.i_crit_edge ], [ %call73.5.i.i, %if.end77.4.i.i.sp_tx_edid_read.exit.thread.i_crit_edge ], [ %call73.6.i.i, %if.end77.5.i.i.sp_tx_edid_read.exit.thread.i_crit_edge ], [ %call73.7.i.i, %if.end77.6.i.i.sp_tx_edid_read.exit.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pblock_buf.i.i) #8
  %call.i3840.i = call i32 @__pm_runtime_idle(ptr noundef %dev1.i, i32 noundef 4) #8
  br label %if.then12.i

sp_tx_edid_read.exit.i:                           ; preds = %sp_tx_rst_aux.exit.i.i
  %add98.i.i = add nsw i32 %spec.store.select.i.i.i, 1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pblock_buf.i.i) #8
  %call.i38.i = call i32 @__pm_runtime_idle(ptr noundef %dev1.i, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select.i.i.i)
  %cmp11.i = icmp slt i32 %spec.store.select.i.i.i, 0
  br i1 %cmp11.i, label %sp_tx_edid_read.exit.i.if.then12.i_crit_edge, label %if.end13.i

sp_tx_edid_read.exit.i.if.then12.i_crit_edge:     ; preds = %sp_tx_edid_read.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then12.i

if.then12.i:                                      ; preds = %sp_tx_edid_read.exit.i.if.then12.i_crit_edge, %sp_tx_edid_read.exit.thread.i
  %retval.0.i42.i = phi i32 [ %retval.0.i.ph.i, %sp_tx_edid_read.exit.thread.i ], [ %add98.i.i, %sp_tx_edid_read.exit.i.if.then12.i_crit_edge ]
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.108, i32 noundef %retval.0.i42.i) #8
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %anx7625_get_edid.exit

if.end13.i:                                       ; preds = %sp_tx_edid_read.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %66 = ptrtoint ptr %slimport_edid_p.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %add98.i.i, ptr %slimport_edid_p.i, align 4
  %67 = call ptr @memcpy(ptr %call7.i.i, ptr %edid_raw_data7.i, i32 512)
  br label %anx7625_get_edid.exit

anx7625_get_edid.exit:                            ; preds = %if.end13.i, %if.then12.i, %if.then3.i, %if.then.i
  %retval.0.i = phi ptr [ %call7.i.i, %if.then3.i ], [ null, %if.then12.i ], [ %call7.i.i, %if.end13.i ], [ null, %if.then.i ]
  ret ptr %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @gcd(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @segments_edid_read(ptr nocapture noundef %ctx, ptr noundef %buf, i8 noundef zeroext %offset) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %client = getelementptr inbounds %struct.anx7625_data, ptr %ctx, i32 0, i32 5
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %rx_p0_client = getelementptr inbounds %struct.anx7625_data, ptr %ctx, i32 0, i32 6, i32 3
  %2 = ptrtoint ptr %rx_p0_client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_p0_client, align 4
  %call = tail call fastcc i32 @anx7625_reg_write(ptr noundef %ctx, ptr noundef %3, i8 noundef zeroext 17, i8 noundef zeroext 48)
  %4 = ptrtoint ptr %rx_p0_client to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_p0_client, align 4
  %call4 = tail call fastcc i32 @anx7625_reg_write(ptr noundef %ctx, ptr noundef %5, i8 noundef zeroext 39, i8 noundef zeroext 4)
  %or = or i32 %call4, %call
  %6 = ptrtoint ptr %rx_p0_client to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx_p0_client, align 4
  %call7 = tail call fastcc i32 @anx7625_reg_write(ptr noundef %ctx, ptr noundef %7, i8 noundef zeroext 20, i8 noundef zeroext 48)
  %or8 = or i32 %or, %call7
  %call9 = tail call fastcc i32 @wait_aux_op_finish(ptr noundef %ctx)
  %or10 = or i32 %or8, %call9
  %call11 = tail call fastcc i32 @sp_tx_aux_wr(ptr noundef %ctx, i8 noundef zeroext 1)
  %or12 = or i32 %or10, %call11
  %8 = ptrtoint ptr %rx_p0_client to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rx_p0_client, align 4
  %call15 = tail call fastcc i32 @anx7625_reg_write(ptr noundef %ctx, ptr noundef %9, i8 noundef zeroext 17, i8 noundef zeroext 80)
  %or16 = or i32 %or12, %call15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or16)
  %tobool.not = icmp eq i32 %or16, 0
  br i1 %tobool.not, label %for.cond.preheader, label %if.then

for.cond.preheader:                               ; preds = %entry
  %tx_p2_client.i = getelementptr inbounds %struct.anx7625_data, ptr %ctx, i32 0, i32 6, i32 2
  br label %for.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.118) #8
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %cnt.08 = phi i8 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %call18 = tail call fastcc i32 @sp_tx_aux_wr(ptr noundef %ctx, i8 noundef zeroext %offset)
  %10 = ptrtoint ptr %rx_p0_client to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rx_p0_client, align 4
  %call.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %ctx, ptr noundef %11, i8 noundef zeroext 39, i8 noundef zeroext -15) #8
  %12 = ptrtoint ptr %rx_p0_client to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rx_p0_client, align 4
  %call.i.i = tail call fastcc i32 @anx7625_reg_read(ptr noundef %ctx, ptr noundef %13, i8 noundef zeroext 20) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i.i, label %for.body.sp_tx_aux_rd.exit_crit_edge, label %if.end.i.i

for.body.sp_tx_aux_rd.exit_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %sp_tx_aux_rd.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %14 = trunc i32 %call.i.i to i8
  %conv1.i.i = or i8 %14, 16
  %call2.i.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %ctx, ptr noundef %13, i8 noundef zeroext 20, i8 noundef zeroext %conv1.i.i) #8
  br label %sp_tx_aux_rd.exit

sp_tx_aux_rd.exit:                                ; preds = %if.end.i.i, %for.body.sp_tx_aux_rd.exit_crit_edge
  %retval.0.i.i = phi i32 [ %call2.i.i, %if.end.i.i ], [ %call.i.i, %for.body.sp_tx_aux_rd.exit_crit_edge ]
  %or.i = or i32 %retval.0.i.i, %call.i
  %call4.i = tail call fastcc i32 @wait_aux_op_finish(ptr noundef %ctx) #8
  %or5.i = or i32 %or.i, %call4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i)
  %tobool20.not = icmp eq i32 %or5.i, 0
  br i1 %tobool20.not, label %if.else, label %if.then21

if.then21:                                        ; preds = %sp_tx_aux_rd.exit
  %15 = ptrtoint ptr %tx_p2_client.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tx_p2_client.i, align 4
  %call.i.i1 = tail call fastcc i32 @anx7625_reg_read(ptr noundef %ctx, ptr noundef %16, i8 noundef zeroext 7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i1)
  %cmp.i.i2 = icmp slt i32 %call.i.i1, 0
  br i1 %cmp.i.i2, label %if.then21.anx7625_write_or.exit.i_crit_edge, label %if.end.i.i5

if.then21.anx7625_write_or.exit.i_crit_edge:      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  br label %anx7625_write_or.exit.i

if.end.i.i5:                                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  %17 = trunc i32 %call.i.i1 to i8
  %conv1.i.i3 = or i8 %17, 4
  %call2.i.i4 = tail call fastcc i32 @anx7625_reg_write(ptr noundef %ctx, ptr noundef %16, i8 noundef zeroext 7, i8 noundef zeroext %conv1.i.i3) #8
  br label %anx7625_write_or.exit.i

anx7625_write_or.exit.i:                          ; preds = %if.end.i.i5, %if.then21.anx7625_write_or.exit.i_crit_edge
  %18 = ptrtoint ptr %tx_p2_client.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tx_p2_client.i, align 4
  %call.i8.i = tail call fastcc i32 @anx7625_reg_read(ptr noundef %ctx, ptr noundef %19, i8 noundef zeroext 7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8.i)
  %cmp.i9.i = icmp slt i32 %call.i8.i, 0
  br i1 %cmp.i9.i, label %anx7625_write_or.exit.i.sp_tx_rst_aux.exit_crit_edge, label %if.end.i12.i

anx7625_write_or.exit.i.sp_tx_rst_aux.exit_crit_edge: ; preds = %anx7625_write_or.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sp_tx_rst_aux.exit

if.end.i12.i:                                     ; preds = %anx7625_write_or.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %20 = trunc i32 %call.i8.i to i8
  %conv1.i10.i = and i8 %20, -5
  %call2.i11.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %ctx, ptr noundef %19, i8 noundef zeroext 7, i8 noundef zeroext %conv1.i10.i) #8
  br label %sp_tx_rst_aux.exit

sp_tx_rst_aux.exit:                               ; preds = %if.end.i12.i, %anx7625_write_or.exit.i.sp_tx_rst_aux.exit_crit_edge
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.119) #8
  br label %for.inc

if.else:                                          ; preds = %sp_tx_aux_rd.exit
  %21 = ptrtoint ptr %rx_p0_client to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rx_p0_client, align 4
  %call25 = tail call fastcc i32 @anx7625_reg_block_read(ptr noundef %ctx, ptr noundef %22, ptr noundef %buf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp sgt i32 %call25, 0
  br i1 %cmp26, label %if.else.cleanup_crit_edge, label %if.else.for.inc_crit_edge

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc:                                          ; preds = %if.else.for.inc_crit_edge, %sp_tx_rst_aux.exit
  %inc = add nuw nsw i8 %cnt.08, 1
  %cmp = icmp ult i8 %cnt.08, 3
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %or16, %if.then ], [ -5, %for.inc.cleanup_crit_edge ], [ %call25, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_edid_is_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sp_tx_aux_wr(ptr nocapture noundef %ctx, i8 noundef zeroext %offset) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_p0_client = getelementptr inbounds %struct.anx7625_data, ptr %ctx, i32 0, i32 6, i32 3
  %0 = ptrtoint ptr %rx_p0_client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rx_p0_client, align 4
  %call = tail call fastcc i32 @anx7625_reg_write(ptr noundef %ctx, ptr noundef %1, i8 noundef zeroext 21, i8 noundef zeroext %offset)
  %2 = ptrtoint ptr %rx_p0_client to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_p0_client, align 4
  %call3 = tail call fastcc i32 @anx7625_reg_write(ptr noundef %ctx, ptr noundef %3, i8 noundef zeroext 39, i8 noundef zeroext 4)
  %4 = ptrtoint ptr %rx_p0_client to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rx_p0_client, align 4
  %call.i = tail call fastcc i32 @anx7625_reg_read(ptr noundef %ctx, ptr noundef %5, i8 noundef zeroext 20) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.anx7625_write_or.exit_crit_edge, label %if.end.i

entry.anx7625_write_or.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %anx7625_write_or.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %6 = trunc i32 %call.i to i8
  %conv1.i = or i8 %6, 16
  %call2.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %ctx, ptr noundef %5, i8 noundef zeroext 20, i8 noundef zeroext %conv1.i) #8
  br label %anx7625_write_or.exit

anx7625_write_or.exit:                            ; preds = %if.end.i, %entry.anx7625_write_or.exit_crit_edge
  %retval.0.i = phi i32 [ %call2.i, %if.end.i ], [ %call.i, %entry.anx7625_write_or.exit_crit_edge ]
  %or = or i32 %call3, %call
  %or7 = or i32 %or, %retval.0.i
  %call8 = tail call fastcc i32 @wait_aux_op_finish(ptr noundef %ctx)
  %or9 = or i32 %or7, %call8
  ret i32 %or9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wait_aux_op_finish(ptr nocapture noundef %ctx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %client = getelementptr inbounds %struct.anx7625_data, ptr %ctx, i32 0, i32 5
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call = tail call i64 @ktime_get() #8
  %add.i = add i64 %call, 300000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.63, i32 noundef 200) #8
  %rx_p0_client.i = getelementptr inbounds %struct.anx7625_data, ptr %ctx, i32 0, i32 6, i32 3
  %2 = ptrtoint ptr %rx_p0_client.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_p0_client.i, align 4
  %call.i61 = tail call fastcc i32 @anx7625_reg_read(ptr noundef %ctx, ptr noundef %3, i8 noundef zeroext 20) #8
  %4 = and i32 %call.i61, -2147483632
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %4)
  %.not62 = icmp eq i32 %4, 16
  br i1 %.not62, label %entry.land.lhs.true_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then21.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call14 = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call14, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call14, %add.i
  br i1 %cmp3.i, label %if.then17, label %if.then21

if.then17:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %rx_p0_client.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rx_p0_client.i, align 4
  %call.i55 = tail call fastcc i32 @anx7625_reg_read(ptr noundef %ctx, ptr noundef %6, i8 noundef zeroext 20) #8
  br label %for.end

if.then21:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 501, i32 noundef 2000, i32 noundef 2) #8
  %7 = ptrtoint ptr %rx_p0_client.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rx_p0_client.i, align 4
  %call.i = tail call fastcc i32 @anx7625_reg_read(ptr noundef %ctx, ptr noundef %8, i8 noundef zeroext 20) #8
  %9 = and i32 %call.i, -2147483632
  %.not = icmp eq i32 %9, 16
  br i1 %.not, label %if.then21.land.lhs.true_crit_edge, label %if.then21.for.end_crit_edge

if.then21.for.end_crit_edge:                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.then21.land.lhs.true_crit_edge:                ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

for.end:                                          ; preds = %if.then21.for.end_crit_edge, %if.then17, %entry.for.end_crit_edge
  %val.0 = phi i32 [ %call.i55, %if.then17 ], [ %call.i61, %entry.for.end_crit_edge ], [ %call.i, %if.then21.for.end_crit_edge ]
  %10 = and i32 %val.0, -2147483632
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %10)
  %.not56 = icmp eq i32 %10, 16
  br i1 %.not56, label %if.then27, label %if.end28

if.then27:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.114) #8
  br label %cleanup

if.end28:                                         ; preds = %for.end
  %11 = ptrtoint ptr %rx_p0_client.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rx_p0_client.i, align 4
  %call29 = tail call fastcc i32 @anx7625_reg_read(ptr noundef %ctx, ptr noundef %12, i8 noundef zeroext 20)
  %13 = and i32 %call29, -2147483633
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %if.end28.cleanup_crit_edge, label %if.then34

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then34:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.115, i32 noundef %call29) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %if.end28.cleanup_crit_edge, %if.then27
  %retval.0 = phi i32 [ -5, %if.then27 ], [ -5, %if.then34 ], [ 0, %if.end28.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @anx7625_reg_block_read(ptr nocapture noundef %ctx, ptr noundef %client, ptr noundef %buf) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %last_client.i = getelementptr inbounds %struct.anx7625_data, ptr %ctx, i32 0, i32 7
  %0 = ptrtoint ptr %last_client.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %last_client.i, align 4
  %cmp.i = icmp eq ptr %1, %client
  br i1 %cmp.i, label %entry.i2c_access_workaround.exit_crit_edge, label %if.end.i

entry.i2c_access_workaround.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %i2c_access_workaround.exit

if.end.i:                                         ; preds = %entry
  %2 = ptrtoint ptr %last_client.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %client, ptr %last_client.i, align 4
  %tcpc_client.i = getelementptr inbounds %struct.anx7625_data, ptr %ctx, i32 0, i32 6, i32 6
  %3 = ptrtoint ptr %tcpc_client.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tcpc_client.i, align 4
  %cmp3.i = icmp eq ptr %4, %client
  br i1 %cmp3.i, label %if.end.i.if.end25.i_crit_edge, label %if.else.i

if.end.i.if.end25.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25.i

if.else.i:                                        ; preds = %if.end.i
  %i2c.i = getelementptr inbounds %struct.anx7625_data, ptr %ctx, i32 0, i32 6
  %5 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i2c.i, align 4
  %cmp6.i = icmp eq ptr %6, %client
  br i1 %cmp6.i, label %if.else.i.if.end25.i_crit_edge, label %if.else8.i

if.else.i.if.end25.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25.i

if.else8.i:                                       ; preds = %if.else.i
  %tx_p1_client.i = getelementptr inbounds %struct.anx7625_data, ptr %ctx, i32 0, i32 6, i32 1
  %7 = ptrtoint ptr %tx_p1_client.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tx_p1_client.i, align 4
  %cmp10.i = icmp eq ptr %8, %client
  br i1 %cmp10.i, label %if.else8.i.if.end25.i_crit_edge, label %if.else12.i

if.else8.i.if.end25.i_crit_edge:                  ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25.i

if.else12.i:                                      ; preds = %if.else8.i
  %rx_p0_client.i = getelementptr inbounds %struct.anx7625_data, ptr %ctx, i32 0, i32 6, i32 3
  %9 = ptrtoint ptr %rx_p0_client.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rx_p0_client.i, align 4
  %cmp14.i = icmp eq ptr %10, %client
  br i1 %cmp14.i, label %if.else12.i.if.end25.i_crit_edge, label %if.else16.i

if.else12.i.if.end25.i_crit_edge:                 ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25.i

if.else16.i:                                      ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #10
  %rx_p1_client.i = getelementptr inbounds %struct.anx7625_data, ptr %ctx, i32 0, i32 6, i32 4
  %11 = ptrtoint ptr %rx_p1_client.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rx_p1_client.i, align 4
  %cmp18.i = icmp eq ptr %12, %client
  %..i = select i1 %cmp18.i, i8 127, i8 0
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.else16.i, %if.else12.i.if.end25.i_crit_edge, %if.else8.i.if.end25.i_crit_edge, %if.else.i.if.end25.i_crit_edge, %if.end.i.if.end25.i_crit_edge
  %offset.0.i = phi i8 [ 0, %if.end.i.if.end25.i_crit_edge ], [ -47, %if.else.i.if.end25.i_crit_edge ], [ 96, %if.else8.i.if.end25.i_crit_edge ], [ 57, %if.else12.i.if.end25.i_crit_edge ], [ %..i, %if.else16.i ]
  %call.i = tail call i32 @i2c_smbus_write_byte_data(ptr noundef %client, i8 noundef zeroext %offset.0.i, i8 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp26.i = icmp slt i32 %call.i, 0
  br i1 %cmp26.i, label %if.then27.i, label %if.end25.i.i2c_access_workaround.exit_crit_edge

if.end25.i.i2c_access_workaround.exit_crit_edge:  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %i2c_access_workaround.exit

if.then27.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #10
  %addr.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %13 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %addr.i, align 2
  %conv.i = zext i16 %14 to i32
  %conv28.i = zext i8 %offset.0.i to i32
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.42, i32 noundef %conv.i, i32 noundef %conv28.i) #8
  br label %i2c_access_workaround.exit

i2c_access_workaround.exit:                       ; preds = %if.then27.i, %if.end25.i.i2c_access_workaround.exit_crit_edge, %entry.i2c_access_workaround.exit_crit_edge
  %call2 = tail call i32 @i2c_smbus_read_i2c_block_data(ptr noundef %client, i8 noundef zeroext 21, i8 noundef zeroext 16, ptr noundef %buf) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.then, label %i2c_access_workaround.exit.if.end_crit_edge

i2c_access_workaround.exit.if.end_crit_edge:      ; preds = %i2c_access_workaround.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %i2c_access_workaround.exit
  call void @__sanitizer_cov_trace_pc() #10
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  %15 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %addr, align 2
  %conv = zext i16 %16 to i32
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.117, i32 noundef %conv, i32 noundef 21) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %i2c_access_workaround.exit.if.end_crit_edge
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_i2c_block_data(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_mipi_dsi_host_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_mipi_dsi_device_register_full(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_mipi_dsi_attach(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @anx7625_audio_hw_params(ptr noundef %dev, ptr nocapture noundef readnone %data, ptr nocapture noundef readonly %fmt, ptr nocapture noundef readonly %params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp.not = icmp eq i32 %3, 3
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.127) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %sample_rate = getelementptr inbounds %struct.hdmi_codec_params, ptr %params, i32 0, i32 2
  %4 = ptrtoint ptr %sample_rate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sample_rate, align 4
  %sample_width = getelementptr inbounds %struct.hdmi_codec_params, ptr %params, i32 0, i32 3
  %6 = ptrtoint ptr %sample_width to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sample_width, align 4
  %channels = getelementptr inbounds %struct.hdmi_audio_infoframe, ptr %params, i32 0, i32 3
  %8 = ptrtoint ptr %channels to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %channels, align 2
  %conv = zext i8 %9 to i32
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %dev, i32 noundef 2, ptr noundef nonnull @.str.128, i32 noundef %5, i32 noundef %7, i32 noundef %conv) #8
  %tx_p2_client = getelementptr inbounds %struct.anx7625_data, ptr %1, i32 0, i32 6, i32 2
  %10 = ptrtoint ptr %tx_p2_client to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tx_p2_client, align 4
  %call.i = tail call fastcc i32 @anx7625_reg_read(ptr noundef %1, ptr noundef %11, i8 noundef zeroext -43) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.anx7625_write_and_or.exit_crit_edge, label %if.end.i

if.end.anx7625_write_and_or.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %anx7625_write_and_or.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %12 = trunc i32 %call.i to i8
  %13 = and i8 %12, -25
  %conv2.i = or i8 %13, 16
  %call3.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %1, ptr noundef %11, i8 noundef zeroext -43, i8 noundef zeroext %conv2.i) #8
  br label %anx7625_write_and_or.exit

anx7625_write_and_or.exit:                        ; preds = %if.end.i, %if.end.anx7625_write_and_or.exit_crit_edge
  %retval.0.i = phi i32 [ %call3.i, %if.end.i ], [ %call.i, %if.end.anx7625_write_and_or.exit_crit_edge ]
  %14 = ptrtoint ptr %sample_width to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sample_width, align 4
  %switch.tableidx = add i32 %15, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %switch.tableidx)
  %16 = icmp ult i32 %switch.tableidx, 9
  br i1 %16, label %switch.hole_check, label %anx7625_write_and_or.exit.sw.default_crit_edge

anx7625_write_and_or.exit.sw.default_crit_edge:   ; preds = %anx7625_write_and_or.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.default

sw.default:                                       ; preds = %switch.hole_check.sw.default_crit_edge, %anx7625_write_and_or.exit.sw.default_crit_edge
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %dev, i32 noundef 2, ptr noundef nonnull @.str.129, i32 noundef %15) #8
  br label %cleanup

switch.hole_check:                                ; preds = %anx7625_write_and_or.exit
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 277, %switch.maskindex
  %17 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %switch.lobit.not = icmp eq i16 %17, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.default_crit_edge, label %switch.lookup

switch.hole_check.sw.default_crit_edge:           ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.default

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [9 x i8], ptr @switch.table.anx7625_audio_hw_params, i32 0, i32 %switch.tableidx
  %18 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %18)
  %switch.load = load i8, ptr %switch.gep, align 1
  %19 = ptrtoint ptr %tx_p2_client to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tx_p2_client, align 4
  %call.i104 = tail call fastcc i32 @anx7625_reg_read(ptr noundef %1, ptr noundef %20, i8 noundef zeroext -44) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i104)
  %cmp.i105 = icmp slt i32 %call.i104, 0
  br i1 %cmp.i105, label %switch.lookup.anx7625_write_and_or.exit110_crit_edge, label %if.end.i108

switch.lookup.anx7625_write_and_or.exit110_crit_edge: ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  br label %anx7625_write_and_or.exit110

if.end.i108:                                      ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #10
  %21 = trunc i32 %call.i104 to i8
  %22 = and i8 %21, -16
  %conv2.i106 = or i8 %22, %switch.load
  %call3.i107 = tail call fastcc i32 @anx7625_reg_write(ptr noundef %1, ptr noundef %20, i8 noundef zeroext -44, i8 noundef zeroext %conv2.i106) #8
  br label %anx7625_write_and_or.exit110

anx7625_write_and_or.exit110:                     ; preds = %if.end.i108, %switch.lookup.anx7625_write_and_or.exit110_crit_edge
  %retval.0.i109 = phi i32 [ %call3.i107, %if.end.i108 ], [ %call.i104, %switch.lookup.anx7625_write_and_or.exit110_crit_edge ]
  %or12 = or i32 %retval.0.i109, %retval.0.i
  %23 = ptrtoint ptr %channels to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %channels, align 2
  %25 = zext i8 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.146)
  switch i8 %24, label %sw.default20 [
    i8 2, label %anx7625_write_and_or.exit110.sw.epilog24_crit_edge
    i8 4, label %sw.bb17
    i8 6, label %sw.bb18
    i8 8, label %sw.bb19
  ]

anx7625_write_and_or.exit110.sw.epilog24_crit_edge: ; preds = %anx7625_write_and_or.exit110
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog24

sw.bb17:                                          ; preds = %anx7625_write_and_or.exit110
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog24

sw.bb18:                                          ; preds = %anx7625_write_and_or.exit110
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog24

sw.bb19:                                          ; preds = %anx7625_write_and_or.exit110
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog24

sw.default20:                                     ; preds = %anx7625_write_and_or.exit110
  call void @__sanitizer_cov_trace_pc() #10
  %conv15 = zext i8 %24 to i32
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %dev, i32 noundef 2, ptr noundef nonnull @.str.130, i32 noundef %conv15) #8
  br label %cleanup

sw.epilog24:                                      ; preds = %sw.bb19, %sw.bb18, %sw.bb17, %anx7625_write_and_or.exit110.sw.epilog24_crit_edge
  %cmp30 = phi i1 [ true, %sw.bb19 ], [ true, %sw.bb18 ], [ true, %sw.bb17 ], [ false, %anx7625_write_and_or.exit110.sw.epilog24_crit_edge ]
  %ch.0 = phi i8 [ -32, %sw.bb19 ], [ -96, %sw.bb18 ], [ 96, %sw.bb17 ], [ 32, %anx7625_write_and_or.exit110.sw.epilog24_crit_edge ]
  %26 = ptrtoint ptr %tx_p2_client to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tx_p2_client, align 4
  %call.i111 = tail call fastcc i32 @anx7625_reg_read(ptr noundef %1, ptr noundef %27, i8 noundef zeroext -43) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i111)
  %cmp.i112 = icmp slt i32 %call.i111, 0
  br i1 %cmp.i112, label %sw.epilog24.anx7625_write_and_or.exit117_crit_edge, label %if.end.i115

sw.epilog24.anx7625_write_and_or.exit117_crit_edge: ; preds = %sw.epilog24
  call void @__sanitizer_cov_trace_pc() #10
  br label %anx7625_write_and_or.exit117

if.end.i115:                                      ; preds = %sw.epilog24
  call void @__sanitizer_cov_trace_pc() #10
  %28 = trunc i32 %call.i111 to i8
  %29 = and i8 %28, 31
  %conv2.i113 = or i8 %29, %ch.0
  %call3.i114 = tail call fastcc i32 @anx7625_reg_write(ptr noundef %1, ptr noundef %27, i8 noundef zeroext -43, i8 noundef zeroext %conv2.i113) #8
  br label %anx7625_write_and_or.exit117

anx7625_write_and_or.exit117:                     ; preds = %if.end.i115, %sw.epilog24.anx7625_write_and_or.exit117_crit_edge
  %retval.0.i116 = phi i32 [ %call3.i114, %if.end.i115 ], [ %call.i111, %sw.epilog24.anx7625_write_and_or.exit117_crit_edge ]
  %or29 = or i32 %or12, %retval.0.i116
  %30 = ptrtoint ptr %tx_p2_client to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tx_p2_client, align 4
  %call.i118 = tail call fastcc i32 @anx7625_reg_read(ptr noundef %1, ptr noundef %31, i8 noundef zeroext -43) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i118)
  %cmp.i119 = icmp slt i32 %call.i118, 0
  br i1 %cmp30, label %if.then32, label %if.else

if.then32:                                        ; preds = %anx7625_write_and_or.exit117
  br i1 %cmp.i119, label %if.then32.if.end41_crit_edge, label %if.end.i120

if.then32.if.end41_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.end.i120:                                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  %32 = trunc i32 %call.i118 to i8
  %conv1.i = or i8 %32, 1
  br label %if.end41.sink.split

if.else:                                          ; preds = %anx7625_write_and_or.exit117
  br i1 %cmp.i119, label %if.else.if.end41_crit_edge, label %if.end.i126

if.else.if.end41_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.end.i126:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %33 = trunc i32 %call.i118 to i8
  %conv1.i124 = and i8 %33, -2
  br label %if.end41.sink.split

if.end41.sink.split:                              ; preds = %if.end.i126, %if.end.i120
  %conv1.i124.sink = phi i8 [ %conv1.i124, %if.end.i126 ], [ %conv1.i, %if.end.i120 ]
  %call2.i125 = tail call fastcc i32 @anx7625_reg_write(ptr noundef %1, ptr noundef %31, i8 noundef zeroext -43, i8 noundef zeroext %conv1.i124.sink) #8
  br label %if.end41

if.end41:                                         ; preds = %if.end41.sink.split, %if.else.if.end41_crit_edge, %if.then32.if.end41_crit_edge
  %call35.pn = phi i32 [ %call.i118, %if.then32.if.end41_crit_edge ], [ %call.i118, %if.else.if.end41_crit_edge ], [ %call2.i125, %if.end41.sink.split ]
  %ret.0 = or i32 %or29, %call35.pn
  %34 = ptrtoint ptr %sample_rate to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sample_rate, align 4
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.147)
  switch i32 %35, label %sw.default50 [
    i32 32000, label %if.end41.sw.epilog52_crit_edge
    i32 44100, label %sw.bb44
    i32 48000, label %sw.bb45
    i32 88200, label %sw.bb46
    i32 96000, label %sw.bb47
    i32 176400, label %sw.bb48
    i32 192000, label %sw.bb49
  ]

if.end41.sw.epilog52_crit_edge:                   ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog52

sw.bb44:                                          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog52

sw.bb45:                                          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog52

sw.bb46:                                          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog52

sw.bb47:                                          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog52

sw.bb48:                                          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog52

sw.bb49:                                          ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog52

sw.default50:                                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %dev, i32 noundef 2, ptr noundef nonnull @.str.131, i32 noundef %35) #8
  br label %cleanup

sw.epilog52:                                      ; preds = %sw.bb49, %sw.bb48, %sw.bb47, %sw.bb46, %sw.bb45, %sw.bb44, %if.end41.sw.epilog52_crit_edge
  %rate.0 = phi i8 [ 14, %sw.bb49 ], [ 12, %sw.bb48 ], [ 10, %sw.bb47 ], [ 8, %sw.bb46 ], [ 2, %sw.bb45 ], [ 0, %sw.bb44 ], [ 3, %if.end41.sw.epilog52_crit_edge ]
  %37 = ptrtoint ptr %tx_p2_client to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tx_p2_client, align 4
  %call.i128 = tail call fastcc i32 @anx7625_reg_read(ptr noundef %1, ptr noundef %38, i8 noundef zeroext -45) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i128)
  %cmp.i129 = icmp slt i32 %call.i128, 0
  br i1 %cmp.i129, label %sw.epilog52.anx7625_write_and_or.exit134_crit_edge, label %if.end.i132

sw.epilog52.anx7625_write_and_or.exit134_crit_edge: ; preds = %sw.epilog52
  call void @__sanitizer_cov_trace_pc() #10
  br label %anx7625_write_and_or.exit134

if.end.i132:                                      ; preds = %sw.epilog52
  call void @__sanitizer_cov_trace_pc() #10
  %39 = trunc i32 %call.i128 to i8
  %40 = and i8 %39, -16
  %conv2.i130 = or i8 %40, %rate.0
  %call3.i131 = tail call fastcc i32 @anx7625_reg_write(ptr noundef %1, ptr noundef %38, i8 noundef zeroext -45, i8 noundef zeroext %conv2.i130) #8
  br label %anx7625_write_and_or.exit134

anx7625_write_and_or.exit134:                     ; preds = %if.end.i132, %sw.epilog52.anx7625_write_and_or.exit134_crit_edge
  %retval.0.i133 = phi i32 [ %call3.i131, %if.end.i132 ], [ %call.i128, %sw.epilog52.anx7625_write_and_or.exit134_crit_edge ]
  %or57 = or i32 %ret.0, %retval.0.i133
  %rx_p0_client = getelementptr inbounds %struct.anx7625_data, ptr %1, i32 0, i32 6, i32 3
  %41 = ptrtoint ptr %rx_p0_client to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %rx_p0_client, align 4
  %call.i135 = tail call fastcc i32 @anx7625_reg_read(ptr noundef %1, ptr noundef %42, i8 noundef zeroext 40) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i135)
  %cmp.i136 = icmp slt i32 %call.i135, 0
  br i1 %cmp.i136, label %anx7625_write_and_or.exit134.anx7625_write_or.exit141_crit_edge, label %if.end.i139

anx7625_write_and_or.exit134.anx7625_write_or.exit141_crit_edge: ; preds = %anx7625_write_and_or.exit134
  call void @__sanitizer_cov_trace_pc() #10
  br label %anx7625_write_or.exit141

if.end.i139:                                      ; preds = %anx7625_write_and_or.exit134
  call void @__sanitizer_cov_trace_pc() #10
  %43 = trunc i32 %call.i135 to i8
  %conv1.i137 = or i8 %43, 8
  %call2.i138 = tail call fastcc i32 @anx7625_reg_write(ptr noundef %1, ptr noundef %42, i8 noundef zeroext 40, i8 noundef zeroext %conv1.i137) #8
  br label %anx7625_write_or.exit141

anx7625_write_or.exit141:                         ; preds = %if.end.i139, %anx7625_write_and_or.exit134.anx7625_write_or.exit141_crit_edge
  %retval.0.i140 = phi i32 [ %call2.i138, %if.end.i139 ], [ %call.i135, %anx7625_write_and_or.exit134.anx7625_write_or.exit141_crit_edge ]
  %or60 = or i32 %or57, %retval.0.i140
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or60)
  %cmp61 = icmp slt i32 %or60, 0
  br i1 %cmp61, label %if.then63, label %anx7625_write_or.exit141.cleanup_crit_edge

anx7625_write_or.exit141.cleanup_crit_edge:       ; preds = %anx7625_write_or.exit141
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then63:                                        ; preds = %anx7625_write_or.exit141
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.132) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then63, %anx7625_write_or.exit141.cleanup_crit_edge, %sw.default50, %sw.default20, %sw.default, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %sw.default ], [ -22, %sw.default20 ], [ -22, %sw.default50 ], [ -5, %if.then63 ], [ 0, %anx7625_write_or.exit141.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @anx7625_audio_shutdown(ptr noundef %dev, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %dev, i32 noundef 2, ptr noundef nonnull @.str.133) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @anx7625_hdmi_i2s_get_dai_id(ptr nocapture noundef readnone %component, ptr noundef %endpoint) #2 align 64 {
entry:
  %of_ep = alloca %struct.of_endpoint, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %of_ep) #8
  %0 = ptrtoint ptr %of_ep to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %of_ep, align 4, !annotation !318
  %1 = getelementptr inbounds %struct.of_endpoint, ptr %of_ep, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !318
  %3 = getelementptr inbounds %struct.of_endpoint, ptr %of_ep, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !318
  %call = call i32 @of_graph_parse_endpoint(ptr noundef %endpoint, ptr noundef nonnull %of_ep) #8
  %5 = call i32 @llvm.smin.i32(i32 %call, i32 0)
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %of_ep) #8
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @anx7625_audio_hook_plugged_cb(ptr nocapture noundef readnone %dev, ptr nocapture noundef %data, ptr noundef %fn, ptr noundef %codec_dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %plugged_cb = getelementptr inbounds %struct.anx7625_data, ptr %data, i32 0, i32 10
  %0 = ptrtoint ptr %plugged_cb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %fn, ptr %plugged_cb, align 4
  %codec_dev1 = getelementptr inbounds %struct.anx7625_data, ptr %data, i32 0, i32 9
  %1 = ptrtoint ptr %codec_dev1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %codec_dev, ptr %codec_dev1, align 4
  %client.i = getelementptr inbounds %struct.anx7625_data, ptr %data, i32 0, i32 5
  %2 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client.i, align 4
  %dev1.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %dev1.i, i32 noundef 2, ptr noundef nonnull @.str.105) #8
  %panel_bridge.i = getelementptr inbounds %struct.anx7625_platform_data, ptr %data, i32 0, i32 3
  %4 = ptrtoint ptr %panel_bridge.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %panel_bridge.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.anx7625_sink_detect.exit_crit_edge

entry.anx7625_sink_detect.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %anx7625_sink_detect.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %hpd_status.i = getelementptr inbounds %struct.anx7625_data, ptr %data, i32 0, i32 2
  %6 = ptrtoint ptr %hpd_status.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hpd_status.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not.i = icmp eq i32 %7, 0
  %cond.i = select i1 %tobool2.not.i, i32 2, i32 1
  br label %anx7625_sink_detect.exit

anx7625_sink_detect.exit:                         ; preds = %if.end.i, %entry.anx7625_sink_detect.exit_crit_edge
  %retval.0.i = phi i32 [ %cond.i, %if.end.i ], [ 1, %entry.anx7625_sink_detect.exit_crit_edge ]
  %8 = ptrtoint ptr %plugged_cb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %plugged_cb, align 4
  %tobool.not.i5 = icmp eq ptr %9, null
  br i1 %tobool.not.i5, label %anx7625_sink_detect.exit.anx7625_audio_update_connector_status.exit_crit_edge, label %land.lhs.true.i

anx7625_sink_detect.exit.anx7625_audio_update_connector_status.exit_crit_edge: ; preds = %anx7625_sink_detect.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %anx7625_audio_update_connector_status.exit

land.lhs.true.i:                                  ; preds = %anx7625_sink_detect.exit
  %10 = ptrtoint ptr %codec_dev1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %codec_dev1, align 4
  %tobool1.not.i = icmp eq ptr %11, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.anx7625_audio_update_connector_status.exit_crit_edge, label %if.then.i

land.lhs.true.i.anx7625_audio_update_connector_status.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %anx7625_audio_update_connector_status.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.0.i)
  %cmp.i = icmp eq i32 %retval.0.i, 1
  tail call void %9(ptr noundef nonnull %11, i1 noundef zeroext %cmp.i) #8
  br label %anx7625_audio_update_connector_status.exit

anx7625_audio_update_connector_status.exit:       ; preds = %if.then.i, %land.lhs.true.i.anx7625_audio_update_connector_status.exit_crit_edge, %anx7625_sink_detect.exit.anx7625_audio_update_connector_status.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_graph_parse_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_register_full(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @anx7625_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %intp_irq = getelementptr inbounds %struct.anx7625_platform_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %intp_irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %intp_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %4 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %lor.lhs.false, label %if.end.if.then3_crit_edge

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3

lor.lhs.false:                                    ; preds = %if.end
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %5 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp.i = icmp eq i32 %6, 2
  br i1 %cmp.i, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.then3_crit_edge

lor.lhs.false.if.then3_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %lor.lhs.false.if.then3_crit_edge, %if.end.if.then3_crit_edge
  %lock.i = getelementptr inbounds %struct.anx7625_data, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #8
  %hpd_status.i.i = getelementptr inbounds %struct.anx7625_data, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %hpd_status.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %hpd_status.i.i, align 4
  %hpd_high_cnt.i.i = getelementptr inbounds %struct.anx7625_data, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %hpd_high_cnt.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %hpd_high_cnt.i.i, align 4
  %display_timing_valid.i.i = getelementptr inbounds %struct.anx7625_data, ptr %1, i32 0, i32 15
  %9 = ptrtoint ptr %display_timing_valid.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %display_timing_valid.i.i, align 4
  tail call fastcc void @anx7625_power_standby(ptr noundef %1) #8
  tail call void @mutex_unlock(ptr noundef %lock.i) #8
  %10 = ptrtoint ptr %intp_irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %intp_irq, align 4
  tail call void @disable_irq(i32 noundef %11) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @anx7625_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %intp_irq = getelementptr inbounds %struct.anx7625_platform_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %intp_irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %intp_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %4 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %lor.lhs.false, label %if.end.if.then3_crit_edge

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3

lor.lhs.false:                                    ; preds = %if.end
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %5 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp.i = icmp eq i32 %6, 2
  br i1 %cmp.i, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.then3_crit_edge

lor.lhs.false.if.then3_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %lor.lhs.false.if.then3_crit_edge, %if.end.if.then3_crit_edge
  tail call void @enable_irq(i32 noundef %3) #8
  %call6 = tail call i32 @anx7625_runtime_pm_resume(ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @anx7625_runtime_pm_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.anx7625_data, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %hpd_status.i = getelementptr inbounds %struct.anx7625_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %hpd_status.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %hpd_status.i, align 4
  %hpd_high_cnt.i = getelementptr inbounds %struct.anx7625_data, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %hpd_high_cnt.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %hpd_high_cnt.i, align 4
  %display_timing_valid.i = getelementptr inbounds %struct.anx7625_data, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %display_timing_valid.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %display_timing_valid.i, align 4
  tail call fastcc void @anx7625_power_standby(ptr noundef %1)
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @anx7625_runtime_pm_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.anx7625_data, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %client.i.i = getelementptr inbounds %struct.anx7625_data, ptr %1, i32 0, i32 5
  %low_power_mode.i.i = getelementptr inbounds %struct.anx7625_platform_data, ptr %1, i32 0, i32 12
  %consumer.i.i = getelementptr %struct.anx7625_platform_data, ptr %1, i32 0, i32 2, i32 0, i32 1
  %consumer.1.i.i = getelementptr %struct.anx7625_platform_data, ptr %1, i32 0, i32 2, i32 1, i32 1
  %consumer.2.i.i = getelementptr %struct.anx7625_platform_data, ptr %1, i32 0, i32 2, i32 2, i32 1
  %gpio_reset.i.i = getelementptr inbounds %struct.anx7625_platform_data, ptr %1, i32 0, i32 1
  %rx_p0_client.i.i = getelementptr inbounds %struct.anx7625_data, ptr %1, i32 0, i32 6, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.end.i.for.body.i_crit_edge, %entry
  %retry_count.022.i = phi i32 [ 0, %entry ], [ %inc5.i, %for.end.i.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client.i.i, align 4
  %dev1.i.i = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %low_power_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %low_power_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %for.body.preheader.i.i

for.body.preheader.i.i:                           ; preds = %for.body.i
  %6 = ptrtoint ptr %consumer.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %consumer.i.i, align 4
  %call.i.i = tail call i32 @regulator_enable(ptr noundef %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %if.then4.i.i, label %if.end5.i.i

if.then.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %dev1.i.i, i32 noundef 2, ptr noundef nonnull @.str.135) #8
  br label %anx7625_power_on.exit.i

if.then4.i.i:                                     ; preds = %for.body.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %dev1.i.i, i32 noundef 2, ptr noundef nonnull @.str.138, i32 noundef 0, i32 noundef %call.i.i) #8
  br label %anx7625_power_on.exit.i

for.body10.preheader.i.i:                         ; preds = %if.end5.1.i.i.for.body10.preheader.i.i_crit_edge, %if.end5.i.i.for.body10.preheader.i.i_crit_edge
  %i.037.lcssa.ph.i.i = phi i32 [ 2, %if.end5.1.i.i.for.body10.preheader.i.i_crit_edge ], [ 1, %if.end5.i.i.for.body10.preheader.i.i_crit_edge ]
  %call.lcssa.ph.i.i = phi i32 [ %call.2.i.i, %if.end5.1.i.i.for.body10.preheader.i.i_crit_edge ], [ %call.1.i.i, %if.end5.i.i.for.body10.preheader.i.i_crit_edge ]
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %dev1.i.i, i32 noundef 2, ptr noundef nonnull @.str.138, i32 noundef %i.037.lcssa.ph.i.i, i32 noundef %call.lcssa.ph.i.i) #8
  %i.140.i.i = add nsw i32 %i.037.lcssa.ph.i.i, -1
  %consumer14.i.i = getelementptr %struct.anx7625_platform_data, ptr %1, i32 0, i32 2, i32 %i.140.i.i, i32 1
  %8 = ptrtoint ptr %consumer14.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %consumer14.i.i, align 4
  %call15.i.i = tail call i32 @regulator_disable(ptr noundef %9) #8
  br i1 %cmp3.1.i.i, label %for.body10.preheader.i.i.anx7625_power_on.exit.i_crit_edge, label %for.body10.i.i.1

for.body10.preheader.i.i.anx7625_power_on.exit.i_crit_edge: ; preds = %for.body10.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %anx7625_power_on.exit.i

if.end5.i.i:                                      ; preds = %for.body.preheader.i.i
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 2100, i32 noundef 2) #8
  %10 = ptrtoint ptr %consumer.1.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %consumer.1.i.i, align 4
  %call.1.i.i = tail call i32 @regulator_enable(ptr noundef %11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i.i)
  %cmp3.1.i.i = icmp slt i32 %call.1.i.i, 0
  br i1 %cmp3.1.i.i, label %if.end5.i.i.for.body10.preheader.i.i_crit_edge, label %if.end5.1.i.i

if.end5.i.i.for.body10.preheader.i.i_crit_edge:   ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body10.preheader.i.i

if.end5.1.i.i:                                    ; preds = %if.end5.i.i
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 2100, i32 noundef 2) #8
  %12 = ptrtoint ptr %consumer.2.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %consumer.2.i.i, align 4
  %call.2.i.i = tail call i32 @regulator_enable(ptr noundef %13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i.i)
  %cmp3.2.i.i = icmp slt i32 %call.2.i.i, 0
  br i1 %cmp3.2.i.i, label %if.end5.1.i.i.for.body10.preheader.i.i_crit_edge, label %if.end5.2.i.i

if.end5.1.i.i.for.body10.preheader.i.i_crit_edge: ; preds = %if.end5.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body10.preheader.i.i

if.end5.2.i.i:                                    ; preds = %if.end5.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 2100, i32 noundef 2) #8
  tail call void @usleep_range_state(i32 noundef 11000, i32 noundef 12000, i32 noundef 2) #8
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  tail call void @gpiod_set_value(ptr noundef %15, i32 noundef 1) #8
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #8
  %16 = ptrtoint ptr %gpio_reset.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %gpio_reset.i.i, align 4
  tail call void @gpiod_set_value(ptr noundef %17, i32 noundef 1) #8
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 11000, i32 noundef 2) #8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %dev1.i.i, i32 noundef 2, ptr noundef nonnull @.str.139) #8
  br label %anx7625_power_on.exit.i

for.body10.i.i.1:                                 ; preds = %for.body10.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %i.140.i.i.1 = add nsw i32 %i.037.lcssa.ph.i.i, -2
  %consumer14.i.i.1 = getelementptr %struct.anx7625_platform_data, ptr %1, i32 0, i32 2, i32 %i.140.i.i.1, i32 1
  %18 = ptrtoint ptr %consumer14.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %consumer14.i.i.1, align 4
  %call15.i.i.1 = tail call i32 @regulator_disable(ptr noundef %19) #8
  br label %anx7625_power_on.exit.i

anx7625_power_on.exit.i:                          ; preds = %for.body10.i.i.1, %if.end5.2.i.i, %for.body10.preheader.i.i.anx7625_power_on.exit.i_crit_edge, %if.then4.i.i, %if.then.i.i
  %20 = ptrtoint ptr %rx_p0_client.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %rx_p0_client.i.i, align 4
  %call.i13.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %1, ptr noundef %21, i8 noundef zeroext 63, i8 noundef zeroext -128) #8
  br label %for.body3.i

for.body3.i:                                      ; preds = %if.end.i.for.body3.i_crit_edge, %anx7625_power_on.exit.i
  %i.021.i = phi i32 [ 0, %anx7625_power_on.exit.i ], [ %inc.i, %if.end.i.for.body3.i_crit_edge ]
  %22 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %client.i.i, align 4
  %dev1.i15.i = getelementptr inbounds %struct.i2c_client, ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %rx_p0_client.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rx_p0_client.i.i, align 4
  %call.i17.i = tail call fastcc i32 @anx7625_reg_read(ptr noundef %1, ptr noundef %25, i8 noundef zeroext 5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17.i)
  %cmp.i.i = icmp slt i32 %call.i17.i, 0
  br i1 %cmp.i.i, label %if.then.i18.i, label %if.end.i.i

if.then.i18.i:                                    ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1.i15.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.140) #8
  br label %if.end.i

if.end.i.i:                                       ; preds = %for.body3.i
  %and.i.i = and i32 %call.i17.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %cmp2.not.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp2.not.not.i.i, label %if.end.i.i.if.end.i_crit_edge, label %anx7625_ocm_loading_check.exit.i

if.end.i.i.if.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

anx7625_ocm_loading_check.exit.i:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %client.i.i, align 4
  %dev1.i.i.i = getelementptr inbounds %struct.i2c_client, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %rx_p0_client.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %rx_p0_client.i.i, align 4
  %call.i.i.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %1, ptr noundef %29, i8 noundef zeroext -120, i8 noundef zeroext 64) #8
  %30 = ptrtoint ptr %rx_p0_client.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %rx_p0_client.i.i, align 4
  %call4.i.i.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %1, ptr noundef %31, i8 noundef zeroext 40, i8 noundef zeroext 64) #8
  %or.i.i.i = or i32 %call4.i.i.i, %call.i.i.i
  %32 = ptrtoint ptr %rx_p0_client.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rx_p0_client.i.i, align 4
  %call7.i.i.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %1, ptr noundef %33, i8 noundef zeroext -120, i8 noundef zeroext 0) #8
  %or8.i.i.i = or i32 %or.i.i.i, %call7.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i.i.i)
  %cmp.i.i.i = icmp slt i32 %or8.i.i.i, 0
  %.str.50..str.51.i.i.i = select i1 %cmp.i.i.i, ptr @.str.50, ptr @.str.51
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %dev1.i.i.i, i32 noundef 2, ptr noundef nonnull %.str.50..str.51.i.i.i) #8
  %34 = ptrtoint ptr %rx_p0_client.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rx_p0_client.i.i, align 4
  %call7.i.i = tail call fastcc i32 @anx7625_reg_read(ptr noundef %1, ptr noundef %35, i8 noundef zeroext 49) #8
  %36 = ptrtoint ptr %rx_p0_client.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rx_p0_client.i.i, align 4
  %call10.i.i = tail call fastcc i32 @anx7625_reg_read(ptr noundef %1, ptr noundef %37, i8 noundef zeroext 50) #8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %dev1.i15.i, i32 noundef 2, ptr noundef nonnull @.str.141, i32 noundef %call7.i.i, i32 noundef %call10.i.i) #8
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %dev1.i15.i, i32 noundef 2, ptr noundef nonnull @.str.142, ptr noundef nonnull @.str.2) #8
  br label %anx7625_power_on_init.exit

if.end.i:                                         ; preds = %if.end.i.i.if.end.i_crit_edge, %if.then.i18.i
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1100, i32 noundef 2) #8
  %inc.i = add nuw nsw i32 %i.021.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 10
  br i1 %exitcond.not.i, label %for.end.i, label %if.end.i.for.body3.i_crit_edge

if.end.i.for.body3.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body3.i

for.end.i:                                        ; preds = %if.end.i
  tail call fastcc void @anx7625_power_standby(ptr noundef %1) #8
  %inc5.i = add nuw nsw i32 %retry_count.022.i, 1
  %exitcond24.not.i = icmp eq i32 %inc5.i, 3
  br i1 %exitcond24.not.i, label %for.end.i.anx7625_power_on_init.exit_crit_edge, label %for.end.i.for.body.i_crit_edge

for.end.i.for.body.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i.anx7625_power_on_init.exit_crit_edge:   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %anx7625_power_on_init.exit

anx7625_power_on_init.exit:                       ; preds = %for.end.i.anx7625_power_on_init.exit_crit_edge, %anx7625_ocm_loading_check.exit.i
  %38 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %client.i.i, align 4
  %dev1.i = getelementptr inbounds %struct.i2c_client, ptr %39, i32 0, i32 4
  %intp_irq.i = getelementptr inbounds %struct.anx7625_platform_data, ptr %1, i32 0, i32 4
  %40 = ptrtoint ptr %intp_irq.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %intp_irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i = icmp eq i32 %41, 0
  br i1 %tobool.not.i, label %if.end.i6, label %anx7625_power_on_init.exit.anx7625_hpd_polling.exit_crit_edge

anx7625_power_on_init.exit.anx7625_hpd_polling.exit_crit_edge: ; preds = %anx7625_power_on_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %anx7625_hpd_polling.exit

if.end.i6:                                        ; preds = %anx7625_power_on_init.exit
  %call.i = tail call i64 @ktime_get() #8
  %add.i.i = add i64 %call.i, 500000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.63, i32 noundef 1173) #8
  %42 = ptrtoint ptr %rx_p0_client.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rx_p0_client.i.i, align 4
  %call.i72.i = tail call fastcc i32 @anx7625_reg_read(ptr noundef %1, ptr noundef %43, i8 noundef zeroext 69) #8
  %44 = and i32 %call.i72.i, -2147483520
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %.not73.i = icmp eq i32 %44, 0
  br i1 %.not73.i, label %if.end.i6.land.lhs.true.i_crit_edge, label %if.end.i6.for.end.i9_crit_edge

if.end.i6.for.end.i9_crit_edge:                   ; preds = %if.end.i6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i9

if.end.i6.land.lhs.true.i_crit_edge:              ; preds = %if.end.i6
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then24.i.land.lhs.true.i_crit_edge, %if.end.i6.land.lhs.true.i_crit_edge
  %call17.i = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call17.i, i64 %add.i.i)
  %cmp3.i.i7 = icmp sgt i64 %call17.i, %add.i.i
  br i1 %cmp3.i.i7, label %if.then20.i, label %if.then24.i

if.then20.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %rx_p0_client.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rx_p0_client.i.i, align 4
  %call.i66.i = tail call fastcc i32 @anx7625_reg_read(ptr noundef %1, ptr noundef %46, i8 noundef zeroext 69) #8
  br label %for.end.i9

if.then24.i:                                      ; preds = %land.lhs.true.i
  tail call void @usleep_range_state(i32 noundef 1251, i32 noundef 5000, i32 noundef 2) #8
  %47 = ptrtoint ptr %rx_p0_client.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %rx_p0_client.i.i, align 4
  %call.i.i8 = tail call fastcc i32 @anx7625_reg_read(ptr noundef %1, ptr noundef %48, i8 noundef zeroext 69) #8
  %49 = and i32 %call.i.i8, -2147483520
  %.not.i = icmp eq i32 %49, 0
  br i1 %.not.i, label %if.then24.i.land.lhs.true.i_crit_edge, label %if.then24.i.for.end.i9_crit_edge

if.then24.i.for.end.i9_crit_edge:                 ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i9

if.then24.i.land.lhs.true.i_crit_edge:            ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

for.end.i9:                                       ; preds = %if.then24.i.for.end.i9_crit_edge, %if.then20.i, %if.end.i6.for.end.i9_crit_edge
  %val.0.i = phi i32 [ %call.i66.i, %if.then20.i ], [ %call.i72.i, %if.end.i6.for.end.i9_crit_edge ], [ %call.i.i8, %if.then24.i.for.end.i9_crit_edge ]
  %50 = and i32 %val.0.i, -2147483520
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %.not67.i = icmp eq i32 %50, 0
  br i1 %.not67.i, label %if.then30.i, label %if.end31.i

if.then30.i:                                      ; preds = %for.end.i9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1.i, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.143) #8
  br label %anx7625_hpd_polling.exit

if.end31.i:                                       ; preds = %for.end.i9
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %dev1.i, i32 noundef 2, ptr noundef nonnull @.str.144, i32 noundef %val.0.i) #8
  %tcpc_client.i = getelementptr inbounds %struct.anx7625_data, ptr %1, i32 0, i32 6, i32 6
  %51 = ptrtoint ptr %tcpc_client.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %tcpc_client.i, align 4
  %call32.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %1, ptr noundef %52, i8 noundef zeroext -52, i8 noundef zeroext -1) #8
  %53 = ptrtoint ptr %rx_p0_client.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %rx_p0_client.i.i, align 4
  %call34.i = tail call fastcc i32 @anx7625_reg_write(ptr noundef %1, ptr noundef %54, i8 noundef zeroext 68, i8 noundef zeroext 0) #8
  tail call fastcc void @anx7625_start_dp_work(ptr noundef %1) #8
  %panel_bridge.i = getelementptr inbounds %struct.anx7625_platform_data, ptr %1, i32 0, i32 3
  %55 = ptrtoint ptr %panel_bridge.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %panel_bridge.i, align 4
  %tobool36.not.i = icmp eq ptr %56, null
  br i1 %tobool36.not.i, label %land.lhs.true37.i, label %if.end31.i.anx7625_hpd_polling.exit_crit_edge

if.end31.i.anx7625_hpd_polling.exit_crit_edge:    ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %anx7625_hpd_polling.exit

land.lhs.true37.i:                                ; preds = %if.end31.i
  %bridge_attached.i = getelementptr inbounds %struct.anx7625_data, ptr %1, i32 0, i32 17
  %57 = ptrtoint ptr %bridge_attached.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %bridge_attached.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool38.not.i = icmp eq i8 %58, 0
  br i1 %tobool38.not.i, label %land.lhs.true37.i.anx7625_hpd_polling.exit_crit_edge, label %if.then39.i

land.lhs.true37.i.anx7625_hpd_polling.exit_crit_edge: ; preds = %land.lhs.true37.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %anx7625_hpd_polling.exit

if.then39.i:                                      ; preds = %land.lhs.true37.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev40.i = getelementptr inbounds %struct.anx7625_data, ptr %1, i32 0, i32 16, i32 1
  %59 = ptrtoint ptr %dev40.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev40.i, align 4
  %call41.i = tail call zeroext i1 @drm_helper_hpd_irq_event(ptr noundef %60) #8
  br label %anx7625_hpd_polling.exit

anx7625_hpd_polling.exit:                         ; preds = %if.then39.i, %land.lhs.true37.i.anx7625_hpd_polling.exit_crit_edge, %if.end31.i.anx7625_hpd_polling.exit_crit_edge, %if.then30.i, %anx7625_power_on_init.exit.anx7625_hpd_polling.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @anx7625_power_standby(ptr noundef %ctx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %client = getelementptr inbounds %struct.anx7625_data, ptr %ctx, i32 0, i32 5
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 4
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %low_power_mode = getelementptr inbounds %struct.anx7625_platform_data, ptr %ctx, i32 0, i32 12
  %2 = ptrtoint ptr %low_power_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %low_power_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %gpio_reset = getelementptr inbounds %struct.anx7625_platform_data, ptr %ctx, i32 0, i32 1
  %4 = ptrtoint ptr %gpio_reset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gpio_reset, align 4
  tail call void @gpiod_set_value(ptr noundef %5, i32 noundef 0) #8
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1100, i32 noundef 2) #8
  %6 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctx, align 4
  tail call void @gpiod_set_value(ptr noundef %7, i32 noundef 0) #8
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1100, i32 noundef 2) #8
  %supplies = getelementptr inbounds %struct.anx7625_platform_data, ptr %ctx, i32 0, i32 2
  %call = tail call i32 @regulator_bulk_disable(i32 noundef 3, ptr noundef %supplies) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %dev1, i32 noundef 2, ptr noundef nonnull @.str.136, i32 noundef %call) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %.str.137.sink = phi ptr [ @.str.135, %entry.cleanup_crit_edge ], [ @.str.137, %if.then5 ], [ @.str.137, %if.end.cleanup_crit_edge ]
  tail call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %dev1, i32 noundef 2, ptr noundef nonnull %.str.137.sink) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 154)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 154)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !13, !14, !15, !16, !18, !20, !21, !23, !25, !27, !29, !31, !33, !35, !36, !38, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !138, !139, !140, !141, !143, !144, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307}
!llvm.module.flags = !{!309, !310, !311, !312, !313, !314, !315, !316}
!llvm.ident = !{!317}

!0 = !{ptr @__initcall__kmod_anx7625__314_2268_anx7625_driver_init6, !1, !"__initcall__kmod_anx7625__314_2268_anx7625_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 2268, i32 1}
!2 = !{ptr @__exitcall_anx7625_driver_exit, !1, !"__exitcall_anx7625_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description315, !4, !"__UNIQUE_ID_description315", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 2270, i32 1}
!5 = !{ptr @__UNIQUE_ID_author316, !6, !"__UNIQUE_ID_author316", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 2271, i32 1}
!7 = !{ptr @__UNIQUE_ID_file317, !8, !"__UNIQUE_ID_file317", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 2272, i32 1}
!9 = !{ptr @__UNIQUE_ID_license318, !8, !"__UNIQUE_ID_license318", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_version319, !11, !"__UNIQUE_ID_version319", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 2273, i32 1}
!12 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @__modver_attr, !11, !"__modver_attr", i1 false, i1 false}
!16 = !{ptr @anx7625_driver, !17, !"anx7625_driver", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 2256, i32 26}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 2103, i32 3}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 2109, i32 3}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 2118, i32 4}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 2125, i32 30}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 2126, i32 30}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 2127, i32 30}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 2131, i32 3}
!33 = !{ptr @anx7625_i2c_probe.__key, !34, !"__key", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 2136, i32 2}
!35 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @anx7625_i2c_probe.__key.12, !37, !"__key", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 2140, i32 3}
!38 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 2141, i32 41}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 2144, i32 4}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 2153, i32 7}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 2155, i32 4}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 2162, i32 3}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 2192, i32 4}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 2200, i32 2}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 1345, i32 3}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 1353, i32 33}
!57 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 1356, i32 49}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 1367, i32 3}
!61 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 1369, i32 3}
!63 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 1371, i32 32}
!65 = !{ptr @.str.27, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 1386, i32 2}
!67 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 1310, i32 8}
!69 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 1320, i32 8}
!71 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 1096, i32 2}
!73 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 1100, i32 32}
!75 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 1103, i32 32}
!77 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 1107, i32 3}
!79 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 1112, i32 3}
!81 = !{ptr @.str.35, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 1238, i32 3}
!83 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 1245, i32 3}
!85 = !{ptr @.str.37, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 1248, i32 2}
!87 = !{ptr @.str.38, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 1253, i32 3}
!89 = !{ptr @.str.39, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 1263, i32 3}
!91 = !{ptr @.str.40, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 1267, i32 2}
!93 = !{ptr @.str.41, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 125, i32 3}
!95 = !{ptr @.str.42, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 73, i32 3}
!97 = !{ptr @.str.43, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 90, i32 3}
!99 = !{ptr @.str.44, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 1216, i32 2}
!101 = !{ptr @.str.45, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 1220, i32 3}
!103 = !{ptr @.str.46, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 1224, i32 3}
!105 = !{ptr @.str.47, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 1129, i32 3}
!107 = !{ptr @.str.48, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 1144, i32 3}
!109 = !{ptr @.str.49, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 1152, i32 2}
!111 = !{ptr @.str.50, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 1040, i32 3}
!113 = !{ptr @.str.51, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 1042, i32 3}
!115 = !{ptr @anx7625_bridge_funcs, !116, !"anx7625_bridge_funcs", i1 false, i1 false}
!116 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 1951, i32 38}
!117 = !{ptr @.str.52, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 1698, i32 2}
!119 = !{ptr @.str.53, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 1703, i32 3}
!121 = !{ptr @.str.54, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 1728, i32 2}
!123 = !{ptr @.str.55, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 1732, i32 3}
!125 = !{ptr @.str.56, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 1737, i32 2}
!127 = !{ptr @.str.57, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 1798, i32 2}
!129 = !{ptr @.str.58, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 1809, i32 2}
!131 = !{ptr @.str.59, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 1810, i32 2}
!133 = !{ptr @.str.60, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 1812, i32 2}
!135 = !{ptr @.str.61, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 1860, i32 3}
!137 = !{ptr @.str.62, !136, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @.str.63, !136, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @anx7625_bridge_mode_fixup._entry, !136, !"_entry", i1 false, i1 false}
!140 = !{ptr @anx7625_bridge_mode_fixup._entry_ptr, !136, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.65, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 1861, i32 3}
!143 = !{ptr @anx7625_bridge_mode_fixup._entry.64, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @anx7625_bridge_mode_fixup._entry_ptr.66, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.67, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 1891, i32 2}
!147 = !{ptr @.str.68, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 1922, i32 2}
!149 = !{ptr @.str.69, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 696, i32 2}
!151 = !{ptr @.str.70, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 707, i32 3}
!153 = !{ptr @.str.71, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 1749, i32 2}
!155 = !{ptr @.str.72, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 1763, i32 2}
!157 = !{ptr @.str.73, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 1764, i32 2}
!159 = !{ptr @.str.74, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 1769, i32 2}
!161 = !{ptr @.str.75, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 1774, i32 2}
!163 = !{ptr @.str.76, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 1777, i32 2}
!165 = !{ptr @.str.77, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 1780, i32 2}
!167 = !{ptr @.str.78, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 1783, i32 2}
!169 = !{ptr @.str.79, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 1910, i32 2}
!171 = !{ptr @.str.80, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 678, i32 3}
!173 = !{ptr @.str.81, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 688, i32 3}
!175 = !{ptr @.str.82, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 638, i32 2}
!177 = !{ptr @.str.83, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 644, i32 3}
!179 = !{ptr @.str.84, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 650, i32 3}
!181 = !{ptr @.str.85, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 656, i32 3}
!183 = !{ptr @.str.86, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 667, i32 3}
!185 = !{ptr @.str.87, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 628, i32 3}
!187 = !{ptr @.str.88, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 575, i32 2}
!189 = !{ptr @.str.89, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 584, i32 3}
!191 = !{ptr @.str.90, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 595, i32 3}
!193 = !{ptr @.str.91, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 597, i32 3}
!195 = !{ptr @.str.92, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 512, i32 3}
!197 = !{ptr @.str.93, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 544, i32 3}
!199 = !{ptr @.str.94, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 565, i32 3}
!201 = !{ptr @.str.95, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 495, i32 3}
!203 = !{ptr @.str.96, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 402, i32 3}
!205 = !{ptr @.str.97, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 406, i32 2}
!207 = !{ptr @.str.98, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 482, i32 3}
!209 = !{ptr @.str.99, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 280, i32 3}
!211 = !{ptr @.str.100, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 288, i32 3}
!213 = !{ptr @.str.101, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 305, i32 4}
!215 = !{ptr @.str.102, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 324, i32 3}
!217 = !{ptr @.str.103, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 366, i32 3}
!219 = !{ptr @.str.104, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 1935, i32 2}
!221 = !{ptr @.str.105, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 1435, i32 2}
!223 = !{ptr @.str.106, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 1946, i32 2}
!225 = !{ptr @.str.107, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 1405, i32 3}
!227 = !{ptr @.str.108, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 1420, i32 3}
!229 = !{ptr @.str.109, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 865, i32 3}
!231 = !{ptr @.str.110, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 946, i32 3}
!233 = !{ptr @.str.111, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 953, i32 3}
!235 = !{ptr @.str.112, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 754, i32 3}
!237 = !{ptr @.str.113, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 758, i32 2}
!239 = !{ptr @.str.114, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 202, i32 3}
!241 = !{ptr @.str.115, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 209, i32 3}
!243 = !{ptr @.str.116, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 779, i32 4}
!245 = !{ptr @.str.117, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 107, i32 3}
!247 = !{ptr @.str.118, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 819, i32 3}
!249 = !{ptr @.str.119, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 830, i32 4}
!251 = !{ptr @.str.120, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 1658, i32 2}
!253 = !{ptr @.str.121, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 1662, i32 3}
!255 = !{ptr @.str.122, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 1668, i32 3}
!257 = !{ptr @.str.123, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 1680, i32 3}
!259 = !{ptr @.str.124, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 1686, i32 2}
!261 = !{ptr @.str.125, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 1633, i32 8}
!263 = !{ptr @.str.126, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 1641, i32 2}
!265 = !{ptr @anx7625_codec_ops, !266, !"anx7625_codec_ops", i1 false, i1 false}
!266 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 1604, i32 36}
!267 = !{ptr @.str.127, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 1453, i32 3}
!269 = !{ptr @.str.128, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 1457, i32 2}
!271 = !{ptr @.str.129, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 1481, i32 3}
!273 = !{ptr @.str.130, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 1504, i32 3}
!275 = !{ptr @.str.131, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 1541, i32 3}
!277 = !{ptr @.str.132, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 1551, i32 3}
!279 = !{ptr @.str.133, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 1560, i32 2}
!281 = !{ptr @.str.134, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 1620, i32 2}
!283 = !{ptr @anx_match_table, !284, !"anx_match_table", i1 false, i1 false}
!284 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 2250, i32 34}
!285 = !{ptr @anx7625_pm_ops, !286, !"anx7625_pm_ops", i1 false, i1 false}
!286 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 2087, i32 32}
!287 = !{ptr @.str.135, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 1002, i32 3}
!289 = !{ptr @.str.136, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 1014, i32 3}
!291 = !{ptr @.str.137, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 1016, i32 2}
!293 = !{ptr @.str.138, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 973, i32 4}
!295 = !{ptr @.str.139, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 989, i32 2}
!297 = !{ptr @.str.140, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 1054, i32 3}
!299 = !{ptr @.str.141, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 1062, i32 2}
!301 = !{ptr @.str.142, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 1069, i32 2}
!303 = !{ptr @.str.143, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 1175, i32 3}
!305 = !{ptr @.str.144, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 1179, i32 2}
!307 = !{ptr @anx7625_id, !308, !"anx7625_id", i1 false, i1 false}
!308 = !{!"../drivers/gpu/drm/bridge/analogix/anx7625.c", i32 2243, i32 35}
!309 = !{i32 1, !"wchar_size", i32 2}
!310 = !{i32 1, !"min_enum_size", i32 4}
!311 = !{i32 8, !"branch-target-enforcement", i32 0}
!312 = !{i32 8, !"sign-return-address", i32 0}
!313 = !{i32 8, !"sign-return-address-all", i32 0}
!314 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!315 = !{i32 7, !"uwtable", i32 1}
!316 = !{i32 7, !"frame-pointer", i32 2}
!317 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!318 = !{!"auto-init"}
