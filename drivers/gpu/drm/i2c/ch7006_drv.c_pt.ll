; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/i2c/ch7006_drv.c_pt.bc'
source_filename = "../drivers/gpu/drm/i2c/ch7006_drv.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_i2c_encoder_driver = type { %struct.i2c_driver, ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_encoder_slave_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ch7006_tv_norm_info = type { i64, i32, i32, i32, i64, i64, i32, i32 }
%struct.ch7006_mode = type { %struct.drm_display_mode, i32, i32, i64, i32, i32, i32 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
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
%struct.drm_encoder_slave = type { %struct.drm_encoder, ptr, ptr, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.ch7006_priv = type { %struct.ch7006_encoder_params, ptr, %struct.ch7006_state, %struct.ch7006_state, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ch7006_encoder_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ch7006_state = type { [38 x i8] }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.87 }
%union.anon.87 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.80, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.86, ptr, i32, ptr, i8, i32 }
%struct.anon.80 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.86 = type { i32, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@ch7006_driver = internal global { %struct.drm_i2c_encoder_driver, [60 x i8] } { %struct.drm_i2c_encoder_driver { %struct.i2c_driver { i32 0, ptr @ch7006_probe, ptr @ch7006_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ch7006_pm_ops, ptr null, ptr null }, ptr @ch7006_ids, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, ptr @ch7006_encoder_init }, [60 x i8] zeroinitializer }, align 32
@__param_str_debug = internal constant [13 x i8] c"ch7006.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@ch7006_debug = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 384, i8 -1, i8 0, %union.anon.76 { ptr @ch7006_debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype306 = internal constant [26 x i8] c"ch7006.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug307 = internal constant [39 x i8] c"ch7006.parm=debug:Enable debug output.\00", section ".modinfo", align 1
@__param_str_tv_norm = internal constant [15 x i8] c"ch7006.tv_norm\00", align 1
@param_ops_charp = external dso_local constant %struct.kernel_param_ops, align 4
@ch7006_tv_norm = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@__param_tv_norm = internal constant %struct.kernel_param { ptr @__param_str_tv_norm, ptr null, ptr @param_ops_charp, i16 384, i8 -1, i8 0, %union.anon.76 { ptr @ch7006_tv_norm } }, section "__param", align 4
@__UNIQUE_ID_tv_normtype308 = internal constant [30 x i8] c"ch7006.parmtype=tv_norm:charp\00", section ".modinfo", align 1
@__UNIQUE_ID_tv_norm309 = internal constant [116 x i8] c"ch7006.parm=tv_norm:Default TV norm.\0A\09\09Supported: PAL, PAL-M, PAL-N, PAL-Nc, PAL-60, NTSC-M, NTSC-J.\0A\09\09Default: PAL\00", section ".modinfo", align 1
@ch7006_scale = dso_local global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@__param_str_scale = internal constant [13 x i8] c"ch7006.scale\00", align 1
@__param_scale = internal constant %struct.kernel_param { ptr @__param_str_scale, ptr null, ptr @param_ops_int, i16 384, i8 -1, i8 0, %union.anon.76 { ptr @ch7006_scale } }, section "__param", align 4
@__UNIQUE_ID_scaletype310 = internal constant [26 x i8] c"ch7006.parmtype=scale:int\00", section ".modinfo", align 1
@__UNIQUE_ID_scale311 = internal constant [192 x i8] c"ch7006.parm=scale:Default scale.\0A\09\09Supported: 0 -> Select video modes with a higher blanking ratio.\0A\09\09\091 -> Select default video modes.\0A\09\09\092 -> Select video modes with a lower blanking ratio.\00", section ".modinfo", align 1
@__UNIQUE_ID_author312 = internal constant [54 x i8] c"ch7006.author=Francisco Jerez <currojerez@riseup.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description313 = internal constant [53 x i8] c"ch7006.description=Chrontel ch7006 TV encoder driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file314 = internal constant [39 x i8] c"ch7006.file=drivers/gpu/drm/i2c/ch7006\00", section ".modinfo", align 1
@__UNIQUE_ID_license315 = internal constant [41 x i8] c"ch7006.license=GPL and additional rights\00", section ".modinfo", align 1
@__initcall__kmod_ch7006__316_548_ch7006_init6 = internal global ptr @ch7006_init, section ".initcall6.init", align 4
@__exitcall_ch7006_exit = internal global ptr @ch7006_exit, section ".exitcall.exit", align 4
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ch7006\00", [25 x i8] zeroinitializer }, align 32
@ch7006_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr @ch7006_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@ch7006_ids = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ch7006\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@ch7006_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 395, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s: \0A\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ch7006_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/gpu/drm/i2c/ch7006_drv.c\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ch7006_probe._entry_ptr = internal global ptr @ch7006_probe._entry, section ".printk_index", align 4
@ch7006_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 405, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Detected version ID: %x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ch7006_probe._entry_ptr.9 = internal global ptr @ch7006_probe._entry.6, section ".printk_index", align 4
@ch7006_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 415, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Error %d reading version ID\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@ch7006_probe._entry_ptr.13 = internal global ptr @ch7006_probe._entry.10, section ".printk_index", align 4
@ch7006_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.14, ptr @.str.3, i32 422, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ch7006_remove\00", [18 x i8] zeroinitializer }, align 32
@ch7006_remove._entry_ptr = internal global ptr @ch7006_remove._entry, section ".printk_index", align 4
@ch7006_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.15, ptr @.str.3, i32 431, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ch7006_resume\00", [18 x i8] zeroinitializer }, align 32
@ch7006_resume._entry_ptr = internal global ptr @ch7006_resume._entry, section ".printk_index", align 4
@ch7006_encoder_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.16, ptr @.str.3, i32 445, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ch7006_encoder_init\00", [44 x i8] zeroinitializer }, align 32
@ch7006_encoder_init._entry_ptr = internal global ptr @ch7006_encoder_init._entry, section ".printk_index", align 4
@ch7006_encoder_funcs = internal constant { %struct.drm_encoder_slave_funcs, [48 x i8] } { %struct.drm_encoder_slave_funcs { ptr @ch7006_encoder_set_config, ptr @ch7006_encoder_destroy, ptr @ch7006_encoder_dpms, ptr @ch7006_encoder_save, ptr @ch7006_encoder_restore, ptr @ch7006_encoder_mode_fixup, ptr @ch7006_encoder_mode_valid, ptr @ch7006_encoder_mode_set, ptr @ch7006_encoder_detect, ptr @ch7006_encoder_get_modes, ptr @ch7006_encoder_create_resources, ptr @ch7006_encoder_set_property }, [48 x i8] zeroinitializer }, align 32
@ch7006_tv_norm_names = external dso_local constant [0 x ptr], align 4
@ch7006_encoder_init._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.3, i32 476, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Invalid TV norm setting \22%s\22.\0A\00", [33 x i8] zeroinitializer }, align 32
@ch7006_encoder_init._entry_ptr.19 = internal global ptr @ch7006_encoder_init._entry.17, section ".printk_index", align 4
@ch7006_encoder_init._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.16, ptr @.str.3, i32 483, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Invalid scale setting \22%d\22.\0A\00", [35 x i8] zeroinitializer }, align 32
@ch7006_encoder_init._entry_ptr.22 = internal global ptr @ch7006_encoder_init._entry.20, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ch7006_encoder_dpms._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.23, ptr @.str.3, i32 59, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ch7006_encoder_dpms\00", [44 x i8] zeroinitializer }, align 32
@ch7006_encoder_dpms._entry_ptr = internal global ptr @ch7006_encoder_dpms._entry, section ".printk_index", align 4
@ch7006_encoder_save._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.24, ptr @.str.3, i32 75, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ch7006_encoder_save\00", [44 x i8] zeroinitializer }, align 32
@ch7006_encoder_save._entry_ptr = internal global ptr @ch7006_encoder_save._entry, section ".printk_index", align 4
@ch7006_encoder_restore._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.25, ptr @.str.3, i32 85, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ch7006_encoder_restore\00", [41 x i8] zeroinitializer }, align 32
@ch7006_encoder_restore._entry_ptr = internal global ptr @ch7006_encoder_restore._entry, section ".printk_index", align 4
@ch7006_tv_norms = external dso_local local_unnamed_addr constant [0 x %struct.ch7006_tv_norm_info], align 8
@ch7006_encoder_mode_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.26, ptr @.str.3, i32 126, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ch7006_encoder_mode_set\00", [40 x i8] zeroinitializer }, align 32
@ch7006_encoder_mode_set._entry_ptr = internal global ptr @ch7006_encoder_mode_set._entry, section ".printk_index", align 4
@ch7006_encoder_detect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.27, ptr @.str.3, i32 185, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ch7006_encoder_detect\00", [42 x i8] zeroinitializer }, align 32
@ch7006_encoder_detect._entry_ptr = internal global ptr @ch7006_encoder_detect._entry, section ".printk_index", align 4
@ch7006_modes = external dso_local constant [0 x %struct.ch7006_mode], align 8
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"scale\00", [26 x i8] zeroinitializer }, align 32
@ch7006_encoder_set_property._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.29, ptr @.str.3, i32 293, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ch7006_encoder_set_property\00", [36 x i8] zeroinitializer }, align 32
@ch7006_encoder_set_property._entry_ptr = internal global ptr @ch7006_encoder_set_property._entry, section ".printk_index", align 4
@___asan_gen_.30 = private unnamed_addr constant [14 x i8] c"ch7006_driver\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 498, i32 38 }
@___asan_gen_.33 = private unnamed_addr constant [13 x i8] c"ch7006_debug\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 527, i32 5 }
@___asan_gen_.36 = private unnamed_addr constant [15 x i8] c"ch7006_tv_norm\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 531, i32 7 }
@___asan_gen_.39 = private unnamed_addr constant [13 x i8] c"ch7006_scale\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 537, i32 5 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 504, i32 12 }
@___asan_gen_.45 = private unnamed_addr constant [14 x i8] c"ch7006_pm_ops\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 494, i32 32 }
@___asan_gen_.48 = private unnamed_addr constant [11 x i8] c"ch7006_ids\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 488, i32 35 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 395, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 405, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 415, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 422, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 431, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 445, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant [21 x i8] c"ch7006_encoder_funcs\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 371, i32 45 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 475, i32 4 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 482, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 59, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 75, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 85, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 126, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 185, i32 2 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 255, i32 59 }
@___asan_gen_.153 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.156 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.157 = private constant [36 x i8] c"../drivers/gpu/drm/i2c/ch7006_drv.c\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.157, i32 293, i32 2 }
@llvm.compiler.used = appending global [73 x ptr] [ptr @__UNIQUE_ID_author312, ptr @__UNIQUE_ID_debug307, ptr @__UNIQUE_ID_debugtype306, ptr @__UNIQUE_ID_description313, ptr @__UNIQUE_ID_file314, ptr @__UNIQUE_ID_license315, ptr @__UNIQUE_ID_scale311, ptr @__UNIQUE_ID_scaletype310, ptr @__UNIQUE_ID_tv_norm309, ptr @__UNIQUE_ID_tv_normtype308, ptr @__exitcall_ch7006_exit, ptr @__initcall__kmod_ch7006__316_548_ch7006_init6, ptr @__param_debug, ptr @__param_scale, ptr @__param_tv_norm, ptr @ch7006_encoder_detect._entry, ptr @ch7006_encoder_detect._entry_ptr, ptr @ch7006_encoder_dpms._entry, ptr @ch7006_encoder_dpms._entry_ptr, ptr @ch7006_encoder_init._entry, ptr @ch7006_encoder_init._entry.17, ptr @ch7006_encoder_init._entry.20, ptr @ch7006_encoder_init._entry_ptr, ptr @ch7006_encoder_init._entry_ptr.19, ptr @ch7006_encoder_init._entry_ptr.22, ptr @ch7006_encoder_mode_set._entry, ptr @ch7006_encoder_mode_set._entry_ptr, ptr @ch7006_encoder_restore._entry, ptr @ch7006_encoder_restore._entry_ptr, ptr @ch7006_encoder_save._entry, ptr @ch7006_encoder_save._entry_ptr, ptr @ch7006_encoder_set_property._entry, ptr @ch7006_encoder_set_property._entry_ptr, ptr @ch7006_exit, ptr @ch7006_probe._entry, ptr @ch7006_probe._entry.10, ptr @ch7006_probe._entry.6, ptr @ch7006_probe._entry_ptr, ptr @ch7006_probe._entry_ptr.13, ptr @ch7006_probe._entry_ptr.9, ptr @ch7006_remove._entry, ptr @ch7006_remove._entry_ptr, ptr @ch7006_resume._entry, ptr @ch7006_resume._entry_ptr, ptr @ch7006_driver, ptr @ch7006_debug, ptr @ch7006_tv_norm, ptr @ch7006_scale, ptr @.str, ptr @ch7006_pm_ops, ptr @ch7006_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @ch7006_encoder_funcs, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch7006_driver to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch7006_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch7006_tv_norm to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch7006_scale to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch7006_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch7006_ids to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch7006_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch7006_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch7006_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch7006_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch7006_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch7006_encoder_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch7006_encoder_funcs to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch7006_encoder_init._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch7006_encoder_init._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch7006_encoder_dpms._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch7006_encoder_save._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch7006_encoder_restore._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch7006_encoder_mode_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch7006_encoder_detect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ch7006_encoder_set_property._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ch7006_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @i2c_del_driver(ptr noundef nonnull @ch7006_driver) #8
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ch7006_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ch7006_driver) #8
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ch7006_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %addr = alloca i8, align 1
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr) #8
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 37, ptr %addr, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #8
  %1 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %val, align 1, !annotation !118
  %2 = load i32, ptr @ch7006_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %addr, i32 noundef 1, i16 noundef zeroext 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end3.do.end16_crit_edge, label %if.end5

do.end3.do.end16_crit_edge:                       ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end16

if.end5:                                          ; preds = %do.end3
  %call.i27 = call i32 @i2c_transfer_buffer_flags(ptr noundef %client, ptr noundef nonnull %val, i32 noundef 1, i16 noundef zeroext 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27)
  %cmp7 = icmp slt i32 %call.i27, 0
  br i1 %cmp7, label %if.end5.do.end16_crit_edge, label %do.end12

if.end5.do.end16_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end16

do.end12:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %dev13 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %val, align 1
  %conv = zext i8 %4 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev13, ptr noundef nonnull @.str.7, i32 noundef %conv) #11
  call void @ch7006_write(ptr noundef %client, i8 noundef zeroext 61, i8 noundef zeroext 0) #8
  br label %cleanup

do.end16:                                         ; preds = %if.end5.do.end16_crit_edge, %do.end3.do.end16_crit_edge
  %ret.0 = phi i32 [ %call.i, %do.end3.do.end16_crit_edge ], [ %call.i27, %if.end5.do.end16_crit_edge ]
  %dev17 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17, ptr noundef nonnull @.str.11, i32 noundef %ret.0) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end16, %do.end12
  %retval.0 = phi i32 [ -19, %do.end16 ], [ 0, %do.end12 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ch7006_remove(ptr noundef %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @ch7006_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.14) #11
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ch7006_encoder_init(ptr noundef %client, ptr nocapture noundef readnone %dev, ptr nocapture noundef writeonly %encoder) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @ch7006_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev2 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %dev2, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.16) #11
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 164) #12
  %tobool5.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool5.not, label %do.end4.cleanup_crit_edge, label %if.end7

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %do.end4
  %slave_priv = getelementptr inbounds %struct.drm_encoder_slave, ptr %encoder, i32 0, i32 2
  %2 = ptrtoint ptr %slave_priv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %slave_priv, align 4
  %slave_funcs = getelementptr inbounds %struct.drm_encoder_slave, ptr %encoder, i32 0, i32 1
  %3 = ptrtoint ptr %slave_funcs to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @ch7006_encoder_funcs, ptr %slave_funcs, align 4
  %norm = getelementptr inbounds %struct.ch7006_priv, ptr %call7.i.i, i32 0, i32 9
  %4 = ptrtoint ptr %norm to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %norm, align 8
  %select_subconnector = getelementptr inbounds %struct.ch7006_priv, ptr %call7.i.i, i32 0, i32 5
  %5 = ptrtoint ptr %select_subconnector to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %select_subconnector, align 8
  %subconnector = getelementptr inbounds %struct.ch7006_priv, ptr %call7.i.i, i32 0, i32 6
  %6 = ptrtoint ptr %subconnector to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %subconnector, align 4
  %scale = getelementptr inbounds %struct.ch7006_priv, ptr %call7.i.i, i32 0, i32 13
  %7 = ptrtoint ptr %scale to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %scale, align 8
  %contrast = getelementptr inbounds %struct.ch7006_priv, ptr %call7.i.i, i32 0, i32 11
  %8 = ptrtoint ptr %contrast to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 50, ptr %contrast, align 8
  %brightness = getelementptr inbounds %struct.ch7006_priv, ptr %call7.i.i, i32 0, i32 10
  %9 = ptrtoint ptr %brightness to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 50, ptr %brightness, align 4
  %flicker = getelementptr inbounds %struct.ch7006_priv, ptr %call7.i.i, i32 0, i32 12
  %10 = ptrtoint ptr %flicker to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 50, ptr %flicker, align 4
  %hmargin = getelementptr inbounds %struct.ch7006_priv, ptr %call7.i.i, i32 0, i32 7
  %11 = ptrtoint ptr %hmargin to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 50, ptr %hmargin, align 8
  %vmargin = getelementptr inbounds %struct.ch7006_priv, ptr %call7.i.i, i32 0, i32 8
  %12 = ptrtoint ptr %vmargin to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 50, ptr %vmargin, align 4
  %last_dpms = getelementptr inbounds %struct.ch7006_priv, ptr %call7.i.i, i32 0, i32 15
  %13 = ptrtoint ptr %last_dpms to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %last_dpms, align 8
  %call8 = tail call zeroext i8 @ch7006_read(ptr noundef %client, i8 noundef zeroext 37) #8
  %conv = zext i8 %call8 to i32
  %chip_version = getelementptr inbounds %struct.ch7006_priv, ptr %call7.i.i, i32 0, i32 14
  %14 = ptrtoint ptr %chip_version to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv, ptr %chip_version, align 4
  %15 = load ptr, ptr @ch7006_tv_norm, align 4
  %tobool9.not = icmp eq ptr %15, null
  br i1 %tobool9.not, label %if.end7.if.end25_crit_edge, label %for.body.preheader

if.end7.if.end25_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

for.body.preheader:                               ; preds = %if.end7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ch7006_tv_norm_names to i32))
  %16 = load ptr, ptr @ch7006_tv_norm_names, align 4
  %call12 = tail call i32 @strcmp(ptr noundef %16, ptr noundef nonnull %15) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %for.body.preheader.for.end.thread_crit_edge, label %for.inc

for.body.preheader.for.end.thread_crit_edge:      ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.inc.5.for.end.thread_crit_edge, %for.inc.4.for.end.thread_crit_edge, %for.inc.3.for.end.thread_crit_edge, %for.inc.2.for.end.thread_crit_edge, %for.inc.1.for.end.thread_crit_edge, %for.inc.for.end.thread_crit_edge, %for.body.preheader.for.end.thread_crit_edge
  %i.062.lcssa = phi i32 [ 0, %for.body.preheader.for.end.thread_crit_edge ], [ 1, %for.inc.for.end.thread_crit_edge ], [ 2, %for.inc.1.for.end.thread_crit_edge ], [ 3, %for.inc.2.for.end.thread_crit_edge ], [ 4, %for.inc.3.for.end.thread_crit_edge ], [ 5, %for.inc.4.for.end.thread_crit_edge ], [ 6, %for.inc.5.for.end.thread_crit_edge ]
  %17 = ptrtoint ptr %norm to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %i.062.lcssa, ptr %norm, align 8
  br label %if.end25

for.inc:                                          ; preds = %for.body.preheader
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x ptr], ptr @ch7006_tv_norm_names, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @ch7006_tv_norm_names, i32 0, i32 1), align 4
  %call12.1 = tail call i32 @strcmp(ptr noundef %18, ptr noundef nonnull %15) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.1)
  %tobool13.not.1 = icmp eq i32 %call12.1, 0
  br i1 %tobool13.not.1, label %for.inc.for.end.thread_crit_edge, label %for.inc.1

for.inc.for.end.thread_crit_edge:                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread

for.inc.1:                                        ; preds = %for.inc
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x ptr], ptr @ch7006_tv_norm_names, i32 0, i32 2) to i32))
  %19 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @ch7006_tv_norm_names, i32 0, i32 2), align 4
  %call12.2 = tail call i32 @strcmp(ptr noundef %19, ptr noundef nonnull %15) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.2)
  %tobool13.not.2 = icmp eq i32 %call12.2, 0
  br i1 %tobool13.not.2, label %for.inc.1.for.end.thread_crit_edge, label %for.inc.2

for.inc.1.for.end.thread_crit_edge:               ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread

for.inc.2:                                        ; preds = %for.inc.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x ptr], ptr @ch7006_tv_norm_names, i32 0, i32 3) to i32))
  %20 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @ch7006_tv_norm_names, i32 0, i32 3), align 4
  %call12.3 = tail call i32 @strcmp(ptr noundef %20, ptr noundef nonnull %15) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.3)
  %tobool13.not.3 = icmp eq i32 %call12.3, 0
  br i1 %tobool13.not.3, label %for.inc.2.for.end.thread_crit_edge, label %for.inc.3

for.inc.2.for.end.thread_crit_edge:               ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread

for.inc.3:                                        ; preds = %for.inc.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x ptr], ptr @ch7006_tv_norm_names, i32 0, i32 4) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @ch7006_tv_norm_names, i32 0, i32 4), align 4
  %call12.4 = tail call i32 @strcmp(ptr noundef %21, ptr noundef nonnull %15) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.4)
  %tobool13.not.4 = icmp eq i32 %call12.4, 0
  br i1 %tobool13.not.4, label %for.inc.3.for.end.thread_crit_edge, label %for.inc.4

for.inc.3.for.end.thread_crit_edge:               ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread

for.inc.4:                                        ; preds = %for.inc.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x ptr], ptr @ch7006_tv_norm_names, i32 0, i32 5) to i32))
  %22 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @ch7006_tv_norm_names, i32 0, i32 5), align 4
  %call12.5 = tail call i32 @strcmp(ptr noundef %22, ptr noundef nonnull %15) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.5)
  %tobool13.not.5 = icmp eq i32 %call12.5, 0
  br i1 %tobool13.not.5, label %for.inc.4.for.end.thread_crit_edge, label %for.inc.5

for.inc.4.for.end.thread_crit_edge:               ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread

for.inc.5:                                        ; preds = %for.inc.4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x ptr], ptr @ch7006_tv_norm_names, i32 0, i32 6) to i32))
  %23 = load ptr, ptr getelementptr inbounds ([0 x ptr], ptr @ch7006_tv_norm_names, i32 0, i32 6), align 4
  %call12.6 = tail call i32 @strcmp(ptr noundef %23, ptr noundef nonnull %15) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.6)
  %tobool13.not.6 = icmp eq i32 %call12.6, 0
  br i1 %tobool13.not.6, label %for.inc.5.for.end.thread_crit_edge, label %do.end22

for.inc.5.for.end.thread_crit_edge:               ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread

do.end22:                                         ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #10
  %dev23 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev23, ptr noundef nonnull @.str.18, ptr noundef nonnull %15) #11
  br label %if.end25

if.end25:                                         ; preds = %do.end22, %for.end.thread, %if.end7.if.end25_crit_edge
  %24 = load i32, ptr @ch7006_scale, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %24)
  %25 = icmp ult i32 %24, 3
  br i1 %25, label %if.then30, label %do.end34

if.then30:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %scale to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %24, ptr %scale, align 8
  br label %cleanup

do.end34:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %dev35 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev35, ptr noundef nonnull @.str.21, i32 noundef %24) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end34, %if.then30, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %do.end4.cleanup_crit_edge ], [ 0, %do.end34 ], [ 0, %if.then30 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ch7006_write(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ch7006_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @ch7006_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.15) #11
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %add.ptr = getelementptr i8, ptr %dev, i32 -32
  tail call void @ch7006_write(ptr noundef %add.ptr, i8 noundef zeroext 61, i8 noundef zeroext 0) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @ch7006_read(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ch7006_encoder_set_config(ptr nocapture noundef readonly %encoder, ptr nocapture noundef readonly %params) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %slave_priv = getelementptr inbounds %struct.drm_encoder_slave, ptr %encoder, i32 0, i32 2
  %0 = ptrtoint ptr %slave_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %slave_priv, align 4
  %2 = call ptr @memcpy(ptr %1, ptr %params, i32 36)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ch7006_encoder_destroy(ptr noundef %encoder) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %slave_priv = getelementptr inbounds %struct.drm_encoder_slave, ptr %encoder, i32 0, i32 2
  %0 = ptrtoint ptr %slave_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %slave_priv, align 4
  %2 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %encoder, align 4
  %scale_property = getelementptr inbounds %struct.ch7006_priv, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %scale_property to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %scale_property, align 4
  tail call void @drm_property_destroy(ptr noundef %3, ptr noundef %5) #8
  tail call void @kfree(ptr noundef %1) #8
  %6 = ptrtoint ptr %slave_priv to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %slave_priv, align 4
  tail call void @drm_i2c_encoder_destroy(ptr noundef %encoder) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ch7006_encoder_dpms(ptr noundef %encoder, i32 noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bus_priv.i = getelementptr inbounds %struct.drm_encoder_slave, ptr %encoder, i32 0, i32 3
  %0 = ptrtoint ptr %bus_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus_priv.i, align 4
  %slave_priv = getelementptr inbounds %struct.drm_encoder_slave, ptr %encoder, i32 0, i32 2
  %2 = ptrtoint ptr %slave_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %slave_priv, align 4
  %4 = load i32, ptr @ch7006_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.23) #11
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %last_dpms = getelementptr inbounds %struct.ch7006_priv, ptr %3, i32 0, i32 15
  %5 = ptrtoint ptr %last_dpms to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %last_dpms, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %mode)
  %cmp = icmp eq i32 %6, %mode
  br i1 %cmp, label %do.end4.cleanup_crit_edge, label %if.end6

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %last_dpms to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %mode, ptr %last_dpms, align 4
  tail call void @ch7006_setup_power_state(ptr noundef %encoder) #8
  %arrayidx = getelementptr %struct.ch7006_priv, ptr %3, i32 0, i32 2, i32 0, i32 14
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  tail call void @ch7006_write(ptr noundef %1, i8 noundef zeroext 14, i8 noundef zeroext %9) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %do.end4.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ch7006_encoder_save(ptr nocapture noundef readonly %encoder) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bus_priv.i = getelementptr inbounds %struct.drm_encoder_slave, ptr %encoder, i32 0, i32 3
  %0 = ptrtoint ptr %bus_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus_priv.i, align 4
  %slave_priv = getelementptr inbounds %struct.drm_encoder_slave, ptr %encoder, i32 0, i32 2
  %2 = ptrtoint ptr %slave_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %slave_priv, align 4
  %4 = load i32, ptr @ch7006_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.24) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %saved_state = getelementptr inbounds %struct.ch7006_priv, ptr %3, i32 0, i32 3
  tail call void @ch7006_state_save(ptr noundef %1, ptr noundef %saved_state) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ch7006_encoder_restore(ptr nocapture noundef readonly %encoder) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bus_priv.i = getelementptr inbounds %struct.drm_encoder_slave, ptr %encoder, i32 0, i32 3
  %0 = ptrtoint ptr %bus_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus_priv.i, align 4
  %slave_priv = getelementptr inbounds %struct.drm_encoder_slave, ptr %encoder, i32 0, i32 2
  %2 = ptrtoint ptr %slave_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %slave_priv, align 4
  %4 = load i32, ptr @ch7006_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.25) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %saved_state = getelementptr inbounds %struct.ch7006_priv, ptr %3, i32 0, i32 3
  tail call void @ch7006_state_load(ptr noundef %1, ptr noundef %saved_state) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @ch7006_encoder_mode_fixup(ptr noundef %encoder, ptr noundef %mode, ptr nocapture noundef readnone %adjusted_mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %slave_priv = getelementptr inbounds %struct.drm_encoder_slave, ptr %encoder, i32 0, i32 2
  %0 = ptrtoint ptr %slave_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %slave_priv, align 4
  %call = tail call ptr @ch7006_lookup_mode(ptr noundef %encoder, ptr noundef %mode) #8
  %mode1 = getelementptr inbounds %struct.ch7006_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %mode1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %mode1, align 4
  %tobool = icmp ne ptr %call, null
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ch7006_encoder_mode_valid(ptr noundef %encoder, ptr noundef %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ch7006_lookup_mode(ptr noundef %encoder, ptr noundef %mode) #8
  %tobool.not = icmp eq ptr %call, null
  %. = select i1 %tobool.not, i32 -2, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ch7006_encoder_mode_set(ptr noundef %encoder, ptr nocapture noundef readonly %drm_mode, ptr nocapture noundef readnone %adjusted_mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bus_priv.i = getelementptr inbounds %struct.drm_encoder_slave, ptr %encoder, i32 0, i32 3
  %0 = ptrtoint ptr %bus_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus_priv.i, align 4
  %slave_priv = getelementptr inbounds %struct.drm_encoder_slave, ptr %encoder, i32 0, i32 2
  %2 = ptrtoint ptr %slave_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %slave_priv, align 4
  %state2 = getelementptr inbounds %struct.ch7006_priv, ptr %3, i32 0, i32 2
  %mode4 = getelementptr inbounds %struct.ch7006_priv, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %mode4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mode4, align 4
  %norm5 = getelementptr inbounds %struct.ch7006_priv, ptr %3, i32 0, i32 9
  %6 = ptrtoint ptr %norm5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %norm5, align 4
  %8 = load i32, ptr @ch7006_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %do.end

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.26) #11
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  %dispmode = getelementptr [0 x %struct.ch7006_tv_norm_info], ptr @ch7006_tv_norms, i32 0, i32 %7, i32 6
  %9 = ptrtoint ptr %dispmode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dispmode, align 8
  %dispmode9 = getelementptr inbounds %struct.ch7006_mode, ptr %5, i32 0, i32 4
  %11 = ptrtoint ptr %dispmode9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dispmode9, align 8
  %or = or i32 %12, %10
  %conv = trunc i32 %or to i8
  %13 = ptrtoint ptr %state2 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv, ptr %state2, align 1
  %arrayidx11 = getelementptr %struct.ch7006_priv, ptr %3, i32 0, i32 2, i32 0, i32 3
  %14 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %arrayidx11, align 1
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %3, align 4
  %17 = trunc i32 %16 to i8
  %conv12 = and i8 %17, 15
  %arrayidx13 = getelementptr %struct.ch7006_priv, ptr %3, i32 0, i32 2, i32 0, i32 4
  %18 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv12, ptr %arrayidx13, align 1
  %xcm = getelementptr inbounds %struct.ch7006_encoder_params, ptr %3, i32 0, i32 3
  %19 = ptrtoint ptr %xcm to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %xcm, align 4
  %shl15 = shl i32 %20, 2
  %and16 = and i32 %shl15, 12
  %pcm = getelementptr inbounds %struct.ch7006_encoder_params, ptr %3, i32 0, i32 4
  %21 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pcm, align 4
  %and20 = and i32 %22, 3
  %or17 = or i32 %and16, %and20
  %23 = trunc i32 %or17 to i8
  %conv22 = or i8 %23, -128
  %arrayidx23 = getelementptr %struct.ch7006_priv, ptr %3, i32 0, i32 2, i32 0, i32 6
  %24 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv22, ptr %arrayidx23, align 1
  %clock_mode = getelementptr inbounds %struct.ch7006_encoder_params, ptr %3, i32 0, i32 1
  %25 = ptrtoint ptr %clock_mode to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %clock_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool24.not = icmp eq i32 %26, 0
  br i1 %tobool24.not, label %do.end8.if.end30_crit_edge, label %if.then25

do.end8.if.end30_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then25:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #10
  %27 = or i8 %23, -64
  %28 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %arrayidx23, align 1
  br label %if.end30

if.end30:                                         ; preds = %if.then25, %do.end8.if.end30_crit_edge
  %clock_edge = getelementptr inbounds %struct.ch7006_encoder_params, ptr %3, i32 0, i32 2
  %29 = ptrtoint ptr %clock_edge to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %clock_edge, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool31.not = icmp eq i32 %30, 0
  br i1 %tobool31.not, label %if.end30.if.end37_crit_edge, label %if.then32

if.end30.if.end37_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then32:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx23, align 1
  %33 = or i8 %32, 16
  store i8 %33, ptr %arrayidx23, align 1
  br label %if.end37

if.end37:                                         ; preds = %if.then32, %if.end30.if.end37_crit_edge
  %htotal = getelementptr inbounds %struct.drm_display_mode, ptr %drm_mode, i32 0, i32 4
  %34 = ptrtoint ptr %htotal to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %htotal, align 2
  %36 = and i16 %35, -8
  %and39 = zext i16 %36 to i32
  %hsync_start = getelementptr inbounds %struct.drm_display_mode, ptr %drm_mode, i32 0, i32 2
  %37 = ptrtoint ptr %hsync_start to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %hsync_start, align 2
  %39 = and i16 %38, -8
  %and41 = zext i16 %39 to i32
  %sub = sub nsw i32 %and39, %and41
  %40 = lshr i32 %sub, 6
  %41 = trunc i32 %40 to i8
  %conv45 = and i8 %41, 4
  %arrayidx46 = getelementptr %struct.ch7006_priv, ptr %3, i32 0, i32 2, i32 0, i32 8
  %42 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv45, ptr %arrayidx46, align 1
  %conv50 = trunc i32 %sub to i8
  %arrayidx51 = getelementptr %struct.ch7006_priv, ptr %3, i32 0, i32 2, i32 0, i32 7
  %43 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv50, ptr %arrayidx51, align 1
  %arrayidx52 = getelementptr %struct.ch7006_priv, ptr %3, i32 0, i32 2, i32 0, i32 13
  %sync_direction = getelementptr inbounds %struct.ch7006_encoder_params, ptr %3, i32 0, i32 5
  %44 = ptrtoint ptr %sync_direction to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %sync_direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool53.not = icmp eq i32 %45, 0
  %spec.store.select = select i1 %tobool53.not, i8 0, i8 4
  %46 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %spec.store.select, ptr %arrayidx52, align 1
  %sync_encoding = getelementptr inbounds %struct.ch7006_encoder_params, ptr %3, i32 0, i32 6
  %47 = ptrtoint ptr %sync_encoding to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %sync_encoding, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool60.not = icmp eq i32 %48, 0
  br i1 %tobool60.not, label %if.end37.if.end66_crit_edge, label %if.then61

if.end37.if.end66_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

if.then61:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  %49 = or i8 %spec.store.select, 8
  %50 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %arrayidx52, align 1
  br label %if.end66

if.end66:                                         ; preds = %if.then61, %if.end37.if.end66_crit_edge
  %flags = getelementptr inbounds %struct.drm_display_mode, ptr %drm_mode, i32 0, i32 11
  %51 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags, align 4
  %and67 = and i32 %52, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool68.not, label %if.end66.if.end74_crit_edge, label %if.then69

if.end66.if.end74_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

if.then69:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx52, align 1
  %55 = or i8 %54, 2
  store i8 %55, ptr %arrayidx52, align 1
  br label %if.end74

if.end74:                                         ; preds = %if.then69, %if.end66.if.end74_crit_edge
  %56 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %flags, align 4
  %and76 = and i32 %57, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %if.end74.if.end83_crit_edge, label %if.then78

if.end74.if.end83_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end83

if.then78:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  %58 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx52, align 1
  %60 = or i8 %59, 1
  store i8 %60, ptr %arrayidx52, align 1
  br label %if.end83

if.end83:                                         ; preds = %if.then78, %if.end74.if.end83_crit_edge
  %arrayidx84 = getelementptr %struct.ch7006_priv, ptr %3, i32 0, i32 2, i32 0, i32 16
  %61 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %arrayidx84, align 1
  %arrayidx85 = getelementptr %struct.ch7006_priv, ptr %3, i32 0, i32 2, i32 0, i32 23
  %62 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %arrayidx85, align 1
  %arrayidx86 = getelementptr %struct.ch7006_priv, ptr %3, i32 0, i32 2, i32 0, i32 27
  %pout_level = getelementptr inbounds %struct.ch7006_encoder_params, ptr %3, i32 0, i32 7
  %63 = ptrtoint ptr %pout_level to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %pout_level, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool87.not = icmp eq i32 %64, 0
  %spec.store.select148 = select i1 %tobool87.not, i8 0, i8 32
  %65 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 %spec.store.select148, ptr %arrayidx86, align 1
  %arrayidx94 = getelementptr %struct.ch7006_priv, ptr %3, i32 0, i32 2, i32 0, i32 28
  %active_detect = getelementptr inbounds %struct.ch7006_encoder_params, ptr %3, i32 0, i32 8
  %66 = ptrtoint ptr %active_detect to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %active_detect, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool95.not = icmp eq i32 %67, 0
  %spec.store.select149 = select i1 %tobool95.not, i8 0, i8 16
  %68 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %spec.store.select149, ptr %arrayidx94, align 1
  %arrayidx103 = getelementptr %struct.ch7006_priv, ptr %3, i32 0, i32 3, i32 0, i32 32
  %69 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx103, align 2
  %arrayidx104 = getelementptr %struct.ch7006_priv, ptr %3, i32 0, i32 2, i32 0, i32 32
  %71 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %70, ptr %arrayidx104, align 1
  tail call void @ch7006_setup_levels(ptr noundef %encoder) #8
  tail call void @ch7006_setup_subcarrier(ptr noundef %encoder) #8
  tail call void @ch7006_setup_pll(ptr noundef %encoder) #8
  tail call void @ch7006_setup_power_state(ptr noundef %encoder) #8
  tail call void @ch7006_setup_properties(ptr noundef %encoder) #8
  tail call void @ch7006_state_load(ptr noundef %1, ptr noundef %state2) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ch7006_encoder_detect(ptr nocapture noundef readonly %encoder, ptr noundef %connector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bus_priv.i = getelementptr inbounds %struct.drm_encoder_slave, ptr %encoder, i32 0, i32 3
  %0 = ptrtoint ptr %bus_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus_priv.i, align 4
  %slave_priv = getelementptr inbounds %struct.drm_encoder_slave, ptr %encoder, i32 0, i32 2
  %2 = ptrtoint ptr %slave_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %slave_priv, align 4
  %4 = load i32, ptr @ch7006_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.27) #11
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %call5 = tail call zeroext i8 @ch7006_read(ptr noundef %1, i8 noundef zeroext 16) #8
  %arrayidx = getelementptr %struct.ch7006_priv, ptr %3, i32 0, i32 2, i32 0, i32 16
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %call5, ptr %arrayidx, align 1
  %call6 = tail call zeroext i8 @ch7006_read(ptr noundef %1, i8 noundef zeroext 14) #8
  %arrayidx8 = getelementptr %struct.ch7006_priv, ptr %3, i32 0, i32 2, i32 0, i32 14
  %6 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %call6, ptr %arrayidx8, align 1
  %call9 = tail call zeroext i8 @ch7006_read(ptr noundef %1, i8 noundef zeroext 6) #8
  %arrayidx11 = getelementptr %struct.ch7006_priv, ptr %3, i32 0, i32 2, i32 0, i32 6
  %7 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %call9, ptr %arrayidx11, align 1
  tail call void @ch7006_write(ptr noundef %1, i8 noundef zeroext 14, i8 noundef zeroext 11) #8
  tail call void @ch7006_write(ptr noundef %1, i8 noundef zeroext 6, i8 noundef zeroext 64) #8
  tail call void @ch7006_write(ptr noundef %1, i8 noundef zeroext 16, i8 noundef zeroext 1) #8
  tail call void @ch7006_write(ptr noundef %1, i8 noundef zeroext 16, i8 noundef zeroext 0) #8
  %call12 = tail call zeroext i8 @ch7006_read(ptr noundef %1, i8 noundef zeroext 16) #8
  %conv = zext i8 %call12 to i32
  %8 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx11, align 1
  tail call void @ch7006_write(ptr noundef %1, i8 noundef zeroext 6, i8 noundef zeroext %9) #8
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx8, align 1
  tail call void @ch7006_write(ptr noundef %1, i8 noundef zeroext 14, i8 noundef zeroext %11) #8
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx, align 1
  tail call void @ch7006_write(ptr noundef %1, i8 noundef zeroext 16, i8 noundef zeroext %13) #8
  %and = and i32 %conv, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %if.then20, label %if.else

if.then20:                                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #10
  %subconnector = getelementptr inbounds %struct.ch7006_priv, ptr %3, i32 0, i32 6
  %14 = ptrtoint ptr %subconnector to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 9, ptr %subconnector, align 4
  br label %if.end36

if.else:                                          ; preds = %do.end4
  %and21 = and i32 %conv, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %cmp22 = icmp eq i32 %and21, 0
  br i1 %cmp22, label %if.then24, label %if.else26

if.then24:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %subconnector25 = getelementptr inbounds %struct.ch7006_priv, ptr %3, i32 0, i32 6
  %15 = ptrtoint ptr %subconnector25 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 6, ptr %subconnector25, align 4
  br label %if.end36

if.else26:                                        ; preds = %if.else
  %and27 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %cmp28 = icmp eq i32 %and27, 0
  %subconnector31 = getelementptr inbounds %struct.ch7006_priv, ptr %3, i32 0, i32 6
  br i1 %cmp28, label %if.then30, label %if.else32

if.then30:                                        ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %subconnector31 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 5, ptr %subconnector31, align 4
  br label %if.end36

if.else32:                                        ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %subconnector31 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %subconnector31, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.else32, %if.then30, %if.then24, %if.then20
  %base = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 6
  %18 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %encoder, align 4
  %tv_subconnector_property = getelementptr inbounds %struct.drm_device, ptr %19, i32 0, i32 30, i32 60
  %20 = ptrtoint ptr %tv_subconnector_property to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tv_subconnector_property, align 4
  %subconnector38 = getelementptr inbounds %struct.ch7006_priv, ptr %3, i32 0, i32 6
  %22 = ptrtoint ptr %subconnector38 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %subconnector38, align 4
  %conv39 = sext i32 %23 to i64
  %call40 = tail call i32 @drm_object_property_set_value(ptr noundef %base, ptr noundef %21, i64 noundef %conv39) #8
  %24 = ptrtoint ptr %subconnector38 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %subconnector38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool42.not = icmp eq i32 %25, 0
  %cond = select i1 %tobool42.not, i32 2, i32 1
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ch7006_encoder_get_modes(ptr nocapture noundef readonly %encoder, ptr noundef %connector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ch7006_modes to i32))
  %0 = load i32, ptr @ch7006_modes, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not15 = icmp eq i32 %0, 0
  br i1 %tobool.not15, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %slave_priv = getelementptr inbounds %struct.drm_encoder_slave, ptr %encoder, i32 0, i32 2
  %1 = ptrtoint ptr %slave_priv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %slave_priv, align 4
  %scale = getelementptr inbounds %struct.ch7006_priv, ptr %2, i32 0, i32 13
  %norm = getelementptr inbounds %struct.ch7006_priv, ptr %2, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %n.018 = phi i32 [ 0, %for.body.lr.ph ], [ %n.1, %for.inc.for.body_crit_edge ]
  %mode.016 = phi ptr [ @ch7006_modes, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %valid_scales = getelementptr inbounds %struct.ch7006_mode, ptr %mode.016, i32 0, i32 5
  %3 = ptrtoint ptr %valid_scales to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %valid_scales, align 4
  %5 = ptrtoint ptr %scale to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %scale, align 4
  %shl = shl nuw i32 1, %6
  %7 = and i32 %shl, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not.not = icmp eq i32 %7, 0
  br i1 %tobool2.not.not, label %for.body.for.inc_crit_edge, label %lor.lhs.false

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %valid_norms = getelementptr inbounds %struct.ch7006_mode, ptr %mode.016, i32 0, i32 6
  %8 = ptrtoint ptr %valid_norms to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %valid_norms, align 8
  %10 = ptrtoint ptr %norm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %norm, align 4
  %shl4 = shl nuw i32 1, %11
  %12 = and i32 %shl4, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool6.not.not = icmp eq i32 %12, 0
  br i1 %tobool6.not.not, label %lor.lhs.false.for.inc_crit_edge, label %if.end

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %encoder, align 4
  %call = tail call ptr @drm_mode_duplicate(ptr noundef %14, ptr noundef %mode.016) #8
  tail call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef %call) #8
  %inc = add i32 %n.018, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %n.1 = phi i32 [ %n.018, %for.body.for.inc_crit_edge ], [ %n.018, %lor.lhs.false.for.inc_crit_edge ], [ %inc, %if.end ]
  %incdec.ptr = getelementptr %struct.ch7006_mode, ptr %mode.016, i32 1
  %15 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %incdec.ptr, align 8
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %n.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %n.1, %for.inc.for.end_crit_edge ]
  ret i32 %n.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ch7006_encoder_create_resources(ptr nocapture noundef readonly %encoder, ptr noundef %connector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %slave_priv = getelementptr inbounds %struct.drm_encoder_slave, ptr %encoder, i32 0, i32 2
  %0 = ptrtoint ptr %slave_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %slave_priv, align 4
  %2 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %encoder, align 4
  %call = tail call i32 @drm_mode_create_tv_properties(ptr noundef %3, i32 noundef 7, ptr noundef nonnull @ch7006_tv_norm_names) #8
  %call2 = tail call ptr @drm_property_create_range(ptr noundef %3, i32 noundef 0, ptr noundef nonnull @.str.28, i64 noundef 0, i64 noundef 2) #8
  %scale_property = getelementptr inbounds %struct.ch7006_priv, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %scale_property to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call2, ptr %scale_property, align 4
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %base = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 6
  %tv_select_subconnector_property = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 61
  %5 = ptrtoint ptr %tv_select_subconnector_property to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tv_select_subconnector_property, align 4
  %select_subconnector = getelementptr inbounds %struct.ch7006_priv, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %select_subconnector to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %select_subconnector, align 4
  %conv = sext i32 %8 to i64
  tail call void @drm_object_attach_property(ptr noundef %base, ptr noundef %6, i64 noundef %conv) #8
  %tv_subconnector_property = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 60
  %9 = ptrtoint ptr %tv_subconnector_property to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tv_subconnector_property, align 4
  %subconnector = getelementptr inbounds %struct.ch7006_priv, ptr %1, i32 0, i32 6
  %11 = ptrtoint ptr %subconnector to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %subconnector, align 4
  %conv5 = sext i32 %12 to i64
  tail call void @drm_object_attach_property(ptr noundef %base, ptr noundef %10, i64 noundef %conv5) #8
  %tv_left_margin_property = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 63
  %13 = ptrtoint ptr %tv_left_margin_property to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tv_left_margin_property, align 4
  %hmargin = getelementptr inbounds %struct.ch7006_priv, ptr %1, i32 0, i32 7
  %15 = ptrtoint ptr %hmargin to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %hmargin, align 4
  %conv7 = sext i32 %16 to i64
  tail call void @drm_object_attach_property(ptr noundef %base, ptr noundef %14, i64 noundef %conv7) #8
  %tv_bottom_margin_property = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 66
  %17 = ptrtoint ptr %tv_bottom_margin_property to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tv_bottom_margin_property, align 4
  %vmargin = getelementptr inbounds %struct.ch7006_priv, ptr %1, i32 0, i32 8
  %19 = ptrtoint ptr %vmargin to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %vmargin, align 4
  %conv9 = sext i32 %20 to i64
  tail call void @drm_object_attach_property(ptr noundef %base, ptr noundef %18, i64 noundef %conv9) #8
  %tv_mode_property = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 62
  %21 = ptrtoint ptr %tv_mode_property to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tv_mode_property, align 4
  %norm = getelementptr inbounds %struct.ch7006_priv, ptr %1, i32 0, i32 9
  %23 = ptrtoint ptr %norm to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %norm, align 4
  %conv11 = zext i32 %24 to i64
  tail call void @drm_object_attach_property(ptr noundef %base, ptr noundef %22, i64 noundef %conv11) #8
  %tv_brightness_property = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 67
  %25 = ptrtoint ptr %tv_brightness_property to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tv_brightness_property, align 4
  %brightness = getelementptr inbounds %struct.ch7006_priv, ptr %1, i32 0, i32 10
  %27 = ptrtoint ptr %brightness to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %brightness, align 4
  %conv13 = sext i32 %28 to i64
  tail call void @drm_object_attach_property(ptr noundef %base, ptr noundef %26, i64 noundef %conv13) #8
  %tv_contrast_property = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 68
  %29 = ptrtoint ptr %tv_contrast_property to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tv_contrast_property, align 4
  %contrast = getelementptr inbounds %struct.ch7006_priv, ptr %1, i32 0, i32 11
  %31 = ptrtoint ptr %contrast to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %contrast, align 4
  %conv15 = sext i32 %32 to i64
  tail call void @drm_object_attach_property(ptr noundef %base, ptr noundef %30, i64 noundef %conv15) #8
  %tv_flicker_reduction_property = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 69
  %33 = ptrtoint ptr %tv_flicker_reduction_property to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tv_flicker_reduction_property, align 4
  %flicker = getelementptr inbounds %struct.ch7006_priv, ptr %1, i32 0, i32 12
  %35 = ptrtoint ptr %flicker to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flicker, align 4
  %conv17 = sext i32 %36 to i64
  tail call void @drm_object_attach_property(ptr noundef %base, ptr noundef %34, i64 noundef %conv17) #8
  %37 = ptrtoint ptr %scale_property to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %scale_property, align 4
  %scale = getelementptr inbounds %struct.ch7006_priv, ptr %1, i32 0, i32 13
  %39 = ptrtoint ptr %scale to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %scale, align 4
  %conv20 = sext i32 %40 to i64
  tail call void @drm_object_attach_property(ptr noundef %base, ptr noundef %38, i64 noundef %conv20) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ch7006_encoder_set_property(ptr noundef %encoder, ptr noundef %connector, ptr noundef readnone %property, i64 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bus_priv.i = getelementptr inbounds %struct.drm_encoder_slave, ptr %encoder, i32 0, i32 3
  %0 = ptrtoint ptr %bus_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bus_priv.i, align 4
  %slave_priv = getelementptr inbounds %struct.drm_encoder_slave, ptr %encoder, i32 0, i32 2
  %2 = ptrtoint ptr %slave_priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %slave_priv, align 4
  %4 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %encoder, align 4
  %crtc2 = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 8
  %6 = ptrtoint ptr %crtc2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %crtc2, align 4
  %8 = load i32, ptr @ch7006_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %do.end

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end6

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev4 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  tail call void (ptr, ptr, ptr, ...) @_dev_printk(ptr noundef nonnull @.str.4, ptr noundef %dev4, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.29) #11
  br label %do.end6

do.end6:                                          ; preds = %do.end, %entry.do.end6_crit_edge
  %tv_select_subconnector_property = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 30, i32 61
  %9 = ptrtoint ptr %tv_select_subconnector_property to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tv_select_subconnector_property, align 4
  %cmp = icmp eq ptr %10, %property
  br i1 %cmp, label %if.then7, label %if.else

if.then7:                                         ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #10
  %conv = trunc i64 %val to i32
  %select_subconnector = getelementptr inbounds %struct.ch7006_priv, ptr %3, i32 0, i32 5
  %11 = ptrtoint ptr %select_subconnector to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv, ptr %select_subconnector, align 4
  tail call void @ch7006_setup_power_state(ptr noundef %encoder) #8
  %arrayidx = getelementptr %struct.ch7006_priv, ptr %3, i32 0, i32 2, i32 0, i32 14
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx, align 1
  tail call void @ch7006_write(ptr noundef %1, i8 noundef zeroext 14, i8 noundef zeroext %13) #8
  br label %cleanup

if.else:                                          ; preds = %do.end6
  %tv_left_margin_property = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 30, i32 63
  %14 = ptrtoint ptr %tv_left_margin_property to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tv_left_margin_property, align 4
  %cmp8 = icmp eq ptr %15, %property
  br i1 %cmp8, label %if.then10, label %if.else16

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %conv11 = trunc i64 %val to i32
  %hmargin = getelementptr inbounds %struct.ch7006_priv, ptr %3, i32 0, i32 7
  %16 = ptrtoint ptr %hmargin to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv11, ptr %hmargin, align 4
  tail call void @ch7006_setup_properties(ptr noundef %encoder) #8
  %arrayidx13 = getelementptr %struct.ch7006_priv, ptr %3, i32 0, i32 2, i32 0, i32 8
  %17 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx13, align 1
  tail call void @ch7006_write(ptr noundef %1, i8 noundef zeroext 8, i8 noundef zeroext %18) #8
  %arrayidx15 = getelementptr %struct.ch7006_priv, ptr %3, i32 0, i32 2, i32 0, i32 10
  %19 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx15, align 1
  tail call void @ch7006_write(ptr noundef %1, i8 noundef zeroext 10, i8 noundef zeroext %20) #8
  br label %cleanup

if.else16:                                        ; preds = %if.else
  %tv_bottom_margin_property = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 30, i32 66
  %21 = ptrtoint ptr %tv_bottom_margin_property to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tv_bottom_margin_property, align 4
  %cmp17 = icmp eq ptr %22, %property
  br i1 %cmp17, label %if.then19, label %if.else25

if.then19:                                        ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #10
  %conv20 = trunc i64 %val to i32
  %vmargin = getelementptr inbounds %struct.ch7006_priv, ptr %3, i32 0, i32 8
  %23 = ptrtoint ptr %vmargin to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv20, ptr %vmargin, align 4
  tail call void @ch7006_setup_properties(ptr noundef %encoder) #8
  %arrayidx22 = getelementptr %struct.ch7006_priv, ptr %3, i32 0, i32 2, i32 0, i32 8
  %24 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx22, align 1
  tail call void @ch7006_write(ptr noundef %1, i8 noundef zeroext 8, i8 noundef zeroext %25) #8
  %arrayidx24 = getelementptr %struct.ch7006_priv, ptr %3, i32 0, i32 2, i32 0, i32 11
  %26 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx24, align 1
  tail call void @ch7006_write(ptr noundef %1, i8 noundef zeroext 11, i8 noundef zeroext %27) #8
  br label %cleanup

if.else25:                                        ; preds = %if.else16
  %tv_mode_property = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 30, i32 62
  %28 = ptrtoint ptr %tv_mode_property to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tv_mode_property, align 4
  %cmp26 = icmp eq ptr %29, %property
  br i1 %cmp26, label %if.then28, label %if.else34

if.then28:                                        ; preds = %if.else25
  %dpms = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 34
  %30 = ptrtoint ptr %dpms to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dpms, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %31)
  %cmp29.not = icmp eq i32 %31, 3
  br i1 %cmp29.not, label %if.end32, label %if.then28.cleanup_crit_edge

if.then28.cleanup_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end32:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  %conv33 = trunc i64 %val to i32
  %norm = getelementptr inbounds %struct.ch7006_priv, ptr %3, i32 0, i32 9
  %32 = ptrtoint ptr %norm to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %conv33, ptr %norm, align 4
  br label %if.then75

if.else34:                                        ; preds = %if.else25
  %tv_brightness_property = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 30, i32 67
  %33 = ptrtoint ptr %tv_brightness_property to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tv_brightness_property, align 4
  %cmp35 = icmp eq ptr %34, %property
  br i1 %cmp35, label %if.then37, label %if.else41

if.then37:                                        ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #10
  %conv38 = trunc i64 %val to i32
  %brightness = getelementptr inbounds %struct.ch7006_priv, ptr %3, i32 0, i32 10
  %35 = ptrtoint ptr %brightness to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv38, ptr %brightness, align 4
  tail call void @ch7006_setup_levels(ptr noundef %encoder) #8
  %arrayidx40 = getelementptr %struct.ch7006_priv, ptr %3, i32 0, i32 2, i32 0, i32 9
  %36 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx40, align 1
  tail call void @ch7006_write(ptr noundef %1, i8 noundef zeroext 9, i8 noundef zeroext %37) #8
  br label %cleanup

if.else41:                                        ; preds = %if.else34
  %tv_contrast_property = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 30, i32 68
  %38 = ptrtoint ptr %tv_contrast_property to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tv_contrast_property, align 4
  %cmp42 = icmp eq ptr %39, %property
  br i1 %cmp42, label %if.then44, label %if.else48

if.then44:                                        ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #10
  %conv45 = trunc i64 %val to i32
  %contrast = getelementptr inbounds %struct.ch7006_priv, ptr %3, i32 0, i32 11
  %40 = ptrtoint ptr %contrast to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %conv45, ptr %contrast, align 4
  tail call void @ch7006_setup_properties(ptr noundef %encoder) #8
  %arrayidx47 = getelementptr %struct.ch7006_priv, ptr %3, i32 0, i32 2, i32 0, i32 17
  %41 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx47, align 1
  tail call void @ch7006_write(ptr noundef %1, i8 noundef zeroext 17, i8 noundef zeroext %42) #8
  br label %cleanup

if.else48:                                        ; preds = %if.else41
  %tv_flicker_reduction_property = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 30, i32 69
  %43 = ptrtoint ptr %tv_flicker_reduction_property to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tv_flicker_reduction_property, align 4
  %cmp49 = icmp eq ptr %44, %property
  br i1 %cmp49, label %if.then51, label %if.else55

if.then51:                                        ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #10
  %conv52 = trunc i64 %val to i32
  %flicker = getelementptr inbounds %struct.ch7006_priv, ptr %3, i32 0, i32 12
  %45 = ptrtoint ptr %flicker to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %conv52, ptr %flicker, align 4
  tail call void @ch7006_setup_properties(ptr noundef %encoder) #8
  %arrayidx54 = getelementptr %struct.ch7006_priv, ptr %3, i32 0, i32 2, i32 0, i32 1
  %46 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx54, align 1
  tail call void @ch7006_write(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext %47) #8
  br label %cleanup

if.else55:                                        ; preds = %if.else48
  %scale_property = getelementptr inbounds %struct.ch7006_priv, ptr %3, i32 0, i32 4
  %48 = ptrtoint ptr %scale_property to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %scale_property, align 4
  %cmp56 = icmp eq ptr %49, %property
  br i1 %cmp56, label %if.then58, label %if.else55.cleanup_crit_edge

if.else55.cleanup_crit_edge:                      ; preds = %if.else55
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then58:                                        ; preds = %if.else55
  %dpms59 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 34
  %50 = ptrtoint ptr %dpms59 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %dpms59, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %51)
  %cmp60.not = icmp eq i32 %51, 3
  br i1 %cmp60.not, label %if.end63, label %if.then58.cleanup_crit_edge

if.then58.cleanup_crit_edge:                      ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end63:                                         ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #10
  %conv64 = trunc i64 %val to i32
  %scale = getelementptr inbounds %struct.ch7006_priv, ptr %3, i32 0, i32 13
  %52 = ptrtoint ptr %scale to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %conv64, ptr %scale, align 4
  br label %if.then75

if.then75:                                        ; preds = %if.end63, %if.end32
  %call76 = tail call i32 @drm_helper_probe_single_connector_modes(ptr noundef %connector, i32 noundef 0, i32 noundef 0) #8
  %tobool77.not = icmp eq ptr %7, null
  br i1 %tobool77.not, label %if.then75.cleanup_crit_edge, label %if.then78

if.then75.cleanup_crit_edge:                      ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then78:                                        ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #10
  %mode = getelementptr inbounds %struct.drm_crtc, ptr %7, i32 0, i32 12
  %x = getelementptr inbounds %struct.drm_crtc, ptr %7, i32 0, i32 14
  %53 = ptrtoint ptr %x to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %x, align 4
  %y = getelementptr inbounds %struct.drm_crtc, ptr %7, i32 0, i32 15
  %55 = ptrtoint ptr %y to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %y, align 8
  %primary = getelementptr inbounds %struct.drm_crtc, ptr %7, i32 0, i32 6
  %57 = ptrtoint ptr %primary to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %primary, align 4
  %fb = getelementptr inbounds %struct.drm_plane, ptr %58, i32 0, i32 12
  %59 = ptrtoint ptr %fb to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %fb, align 4
  %call79 = tail call zeroext i1 @drm_crtc_helper_set_mode(ptr noundef nonnull %7, ptr noundef %mode, i32 noundef %54, i32 noundef %56, ptr noundef %60) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then78, %if.then75.cleanup_crit_edge, %if.then58.cleanup_crit_edge, %if.else55.cleanup_crit_edge, %if.then51, %if.then44, %if.then37, %if.then28.cleanup_crit_edge, %if.then19, %if.then10, %if.then7
  %retval.0 = phi i32 [ -22, %if.then28.cleanup_crit_edge ], [ -22, %if.then58.cleanup_crit_edge ], [ -22, %if.else55.cleanup_crit_edge ], [ 0, %if.then51 ], [ 0, %if.then44 ], [ 0, %if.then37 ], [ 0, %if.then19 ], [ 0, %if.then10 ], [ 0, %if.then7 ], [ 0, %if.then75.cleanup_crit_edge ], [ 0, %if.then78 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_property_destroy(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_i2c_encoder_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ch7006_setup_power_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ch7006_state_save(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ch7006_state_load(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ch7006_lookup_mode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ch7006_setup_levels(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ch7006_setup_subcarrier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ch7006_setup_pll(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ch7006_setup_properties(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_object_property_set_value(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_probed_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_duplicate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_create_tv_properties(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_property_create_range(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_object_attach_property(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_crtc_helper_set_mode(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !17, !19, !21, !23, !24, !26, !28, !30, !32, !34, !36, !38, !39, !40, !41, !42, !43, !44, !46, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !60, !62, !63, !64, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !104, !105, !106, !107, !108}
!llvm.module.flags = !{!109, !110, !111, !112, !113, !114, !115, !116}
!llvm.ident = !{!117}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/i2c/ch7006_drv.c", i32 528, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype306, !1, !"__UNIQUE_ID_debugtype306", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug307, !4, !"__UNIQUE_ID_debug307", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/i2c/ch7006_drv.c", i32 529, i32 1}
!5 = !{ptr @__param_tv_norm, !6, !"__param_tv_norm", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/i2c/ch7006_drv.c", i32 532, i32 1}
!7 = !{ptr @__UNIQUE_ID_tv_normtype308, !6, !"__UNIQUE_ID_tv_normtype308", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_tv_norm309, !9, !"__UNIQUE_ID_tv_norm309", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/i2c/ch7006_drv.c", i32 533, i32 1}
!10 = !{ptr @ch7006_scale, !11, !"ch7006_scale", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/i2c/ch7006_drv.c", i32 537, i32 5}
!12 = !{ptr @__param_scale, !13, !"__param_scale", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/i2c/ch7006_drv.c", i32 538, i32 1}
!14 = !{ptr @__UNIQUE_ID_scaletype310, !13, !"__UNIQUE_ID_scaletype310", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_scale311, !16, !"__UNIQUE_ID_scale311", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/i2c/ch7006_drv.c", i32 539, i32 1}
!17 = !{ptr @__UNIQUE_ID_author312, !18, !"__UNIQUE_ID_author312", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/i2c/ch7006_drv.c", i32 544, i32 1}
!19 = !{ptr @__UNIQUE_ID_description313, !20, !"__UNIQUE_ID_description313", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/i2c/ch7006_drv.c", i32 545, i32 1}
!21 = !{ptr @__UNIQUE_ID_file314, !22, !"__UNIQUE_ID_file314", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/i2c/ch7006_drv.c", i32 546, i32 1}
!23 = !{ptr @__UNIQUE_ID_license315, !22, !"__UNIQUE_ID_license315", i1 false, i1 false}
!24 = !{ptr @__initcall__kmod_ch7006__316_548_ch7006_init6, !25, !"__initcall__kmod_ch7006__316_548_ch7006_init6", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/i2c/ch7006_drv.c", i32 548, i32 1}
!26 = !{ptr @__exitcall_ch7006_exit, !27, !"__exitcall_ch7006_exit", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/i2c/ch7006_drv.c", i32 549, i32 1}
!28 = !{ptr @ch7006_debug, !29, !"ch7006_debug", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/i2c/ch7006_drv.c", i32 527, i32 5}
!30 = !{ptr @ch7006_tv_norm, !31, !"ch7006_tv_norm", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/i2c/ch7006_drv.c", i32 531, i32 7}
!32 = !{ptr @.str, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/i2c/ch7006_drv.c", i32 504, i32 12}
!34 = !{ptr @ch7006_driver, !35, !"ch7006_driver", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/i2c/ch7006_drv.c", i32 498, i32 38}
!36 = !{ptr @.str.1, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/i2c/ch7006_drv.c", i32 395, i32 2}
!38 = !{ptr @.str.2, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.3, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.4, !37, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.5, !37, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @ch7006_probe._entry, !37, !"_entry", i1 false, i1 false}
!43 = !{ptr @ch7006_probe._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.7, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/i2c/ch7006_drv.c", i32 405, i32 2}
!46 = !{ptr @.str.8, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @ch7006_probe._entry.6, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @ch7006_probe._entry_ptr.9, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.11, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/i2c/ch7006_drv.c", i32 415, i32 2}
!51 = !{ptr @.str.12, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @ch7006_probe._entry.10, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @ch7006_probe._entry_ptr.13, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.14, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/i2c/ch7006_drv.c", i32 422, i32 2}
!56 = !{ptr @ch7006_remove._entry, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @ch7006_remove._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @ch7006_pm_ops, !59, !"ch7006_pm_ops", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/i2c/ch7006_drv.c", i32 494, i32 32}
!60 = !{ptr @.str.15, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/i2c/ch7006_drv.c", i32 431, i32 2}
!62 = !{ptr @ch7006_resume._entry, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @ch7006_resume._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @ch7006_ids, !65, !"ch7006_ids", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/i2c/ch7006_drv.c", i32 488, i32 35}
!66 = !{ptr @.str.16, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/i2c/ch7006_drv.c", i32 445, i32 2}
!68 = !{ptr @ch7006_encoder_init._entry, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @ch7006_encoder_init._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.18, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/i2c/ch7006_drv.c", i32 475, i32 4}
!72 = !{ptr @ch7006_encoder_init._entry.17, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @ch7006_encoder_init._entry_ptr.19, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.21, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/i2c/ch7006_drv.c", i32 482, i32 3}
!76 = !{ptr @ch7006_encoder_init._entry.20, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @ch7006_encoder_init._entry_ptr.22, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @ch7006_encoder_funcs, !79, !"ch7006_encoder_funcs", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/i2c/ch7006_drv.c", i32 371, i32 45}
!80 = !{ptr @.str.23, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/i2c/ch7006_drv.c", i32 59, i32 2}
!82 = !{ptr @ch7006_encoder_dpms._entry, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @ch7006_encoder_dpms._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.24, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/i2c/ch7006_drv.c", i32 75, i32 2}
!86 = !{ptr @ch7006_encoder_save._entry, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @ch7006_encoder_save._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.25, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/i2c/ch7006_drv.c", i32 85, i32 2}
!90 = !{ptr @ch7006_encoder_restore._entry, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @ch7006_encoder_restore._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.26, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/i2c/ch7006_drv.c", i32 126, i32 2}
!94 = !{ptr @ch7006_encoder_mode_set._entry, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @ch7006_encoder_mode_set._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.27, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/i2c/ch7006_drv.c", i32 185, i32 2}
!98 = !{ptr @ch7006_encoder_detect._entry, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @ch7006_encoder_detect._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.28, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/i2c/ch7006_drv.c", i32 255, i32 59}
!102 = !{ptr @.str.29, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/i2c/ch7006_drv.c", i32 293, i32 2}
!104 = !{ptr @ch7006_encoder_set_property._entry, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @ch7006_encoder_set_property._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!107 = !{ptr @__param_str_tv_norm, !6, !"__param_str_tv_norm", i1 false, i1 false}
!108 = !{ptr @__param_str_scale, !13, !"__param_str_scale", i1 false, i1 false}
!109 = !{i32 1, !"wchar_size", i32 2}
!110 = !{i32 1, !"min_enum_size", i32 4}
!111 = !{i32 8, !"branch-target-enforcement", i32 0}
!112 = !{i32 8, !"sign-return-address", i32 0}
!113 = !{i32 8, !"sign-return-address-all", i32 0}
!114 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!115 = !{i32 7, !"uwtable", i32 1}
!116 = !{i32 7, !"frame-pointer", i32 2}
!117 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!118 = !{!"auto-init"}
