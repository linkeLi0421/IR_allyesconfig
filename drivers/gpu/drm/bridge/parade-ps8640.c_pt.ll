; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/bridge/parade-ps8640.c_pt.bc'
source_filename = "../drivers/gpu/drm/bridge/parade-ps8640.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_bridge_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mipi_dsi_device_info = type { [20 x i8], i32, ptr }
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
%struct.ps8640 = type { %struct.drm_bridge, ptr, %struct.drm_dp_aux, ptr, [8 x ptr], [8 x ptr], [2 x %struct.regulator_bulk_data], ptr, ptr, i8 }
%struct.drm_bridge = type { %struct.drm_private_obj, ptr, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.drm_dp_aux = type { ptr, %struct.i2c_adapter, ptr, ptr, ptr, %struct.mutex, %struct.work_struct, i8, ptr, i32, i32, %struct.drm_dp_aux_cec, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.drm_dp_aux_cec = type { %struct.mutex, ptr, ptr, %struct.delayed_work }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.drm_dp_aux_msg = type { i32, i8, i8, ptr, i32 }
%struct.mipi_dsi_device = type { ptr, %struct.device, [20 x i8], i32, i32, i32, i32, i32, i32 }

@__initcall__kmod_parade_ps8640__308_701_ps8640_driver_init6 = internal global ptr @ps8640_driver_init, section ".initcall6.init", align 4
@ps8640_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr null, ptr @ps8640_remove, ptr @ps8640_probe, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ps8640_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ps8640_pm_ops, ptr null, ptr null }, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ps8640_driver_exit = internal global ptr @ps8640_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author309 = internal constant [56 x i8] c"parade_ps8640.author=Jitao Shi <jitao.shi@mediatek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author310 = internal constant [48 x i8] c"parade_ps8640.author=CK Hu <ck.hu@mediatek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author311 = internal constant [75 x i8] c"parade_ps8640.author=Enric Balletbo i Serra <enric.balletbo@collabora.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description312 = internal constant [65 x i8] c"parade_ps8640.description=PARADE ps8640 DSI-eDP converter driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file313 = internal constant [56 x i8] c"parade_ps8640.file=drivers/gpu/drm/bridge/parade-ps8640\00", section ".modinfo", align 1
@__UNIQUE_ID_license314 = internal constant [29 x i8] c"parade_ps8640.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ps8640\00", [25 x i8] zeroinitializer }, align 32
@ps8640_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"parade,ps8640\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ps8640_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ps8640_suspend, ptr @ps8640_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vdd33\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vdd12\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"powerdown\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@ps8640_bridge_funcs = internal constant { %struct.drm_bridge_funcs, [60 x i8] } { %struct.drm_bridge_funcs { ptr @ps8640_bridge_attach, ptr @ps8640_bridge_detach, ptr null, ptr null, ptr null, ptr @ps8640_post_disable, ptr null, ptr @ps8640_pre_enable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ps8640_bridge_get_edid, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@ps8640_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ps8640_regmap_config = internal constant { [8 x %struct.regmap_config], [320 x i8] } { [8 x %struct.regmap_config] [%struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 191, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 255, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 255, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 255, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 255, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 127, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 255, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 255, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }], [320 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"parade_ps8640:611:(ps8640_regmap_config)->lock\00", [49 x i8] zeroinitializer }, align 32
@ps8640_probe._key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"parade_ps8640:623:(ps8640_regmap_config + i)->lock\00", [45 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"parade-ps8640-aux\00", [46 x i8] zeroinitializer }, align 32
@ps8640_bridge_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.11, i32 455, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to register DP AUX channel: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ps8640_bridge_attach\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/gpu/drm/bridge/parade-ps8640.c\00", [57 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ps8640_bridge_attach._entry_ptr = internal global ptr @ps8640_bridge_attach._entry, section ".printk_index", align 4
@ps8640_bridge_vdo_control._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.11, i32 347, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to %sable VDO: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ps8640_bridge_vdo_control\00", [38 x i8] zeroinitializer }, align 32
@ps8640_bridge_vdo_control._entry_ptr = internal global ptr @ps8640_bridge_vdo_control._entry, section ".printk_index", align 4
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"en\00", [29 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dis\00", [28 x i8] zeroinitializer }, align 32
@ps8640_pre_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.11, i32 420, ptr @.str.20, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed write PAGE2_MCS_EN: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ps8640_pre_enable\00", [46 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ps8640_pre_enable._entry_ptr = internal global ptr @ps8640_pre_enable._entry, section ".printk_index", align 4
@ps8640_pre_enable._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.11, i32 425, ptr @.str.20, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@ps8640_pre_enable._entry_ptr.22 = internal global ptr @ps8640_pre_enable._entry.21, section ".printk_index", align 4
@ps8640_ensure_hpd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.11, i32 186, ptr @.str.20, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"HPD didn't go high: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ps8640_ensure_hpd\00", [46 x i8] zeroinitializer }, align 32
@ps8640_ensure_hpd._entry_ptr = internal global ptr @ps8640_ensure_hpd._entry, section ".printk_index", align 4
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"aux-bus\00", [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"panel\00", [26 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"*ERROR* failed to write PAGE0_AUXCH_CFG3: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"*ERROR* failed to write WDATA: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"*ERROR* failed to read RDATA: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@__const.ps8640_bridge_host_attach.info = private unnamed_addr constant %struct.mipi_dsi_device_info { [20 x i8] c"ps8640\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, ptr null }, align 4
@ps8640_bridge_host_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.11, i32 545, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to create dsi device\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ps8640_bridge_host_attach\00", [38 x i8] zeroinitializer }, align 32
@ps8640_bridge_host_attach._entry_ptr = internal global ptr @ps8640_bridge_host_attach._entry, section ".printk_index", align 4
@ps8640_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.11, i32 389, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cannot disable regulators %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ps8640_suspend\00", [17 x i8] zeroinitializer }, align 32
@ps8640_suspend._entry_ptr = internal global ptr @ps8640_suspend._entry, section ".printk_index", align 4
@ps8640_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.11, i32 358, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cannot enable regulators %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ps8640_resume\00", [18 x i8] zeroinitializer }, align 32
@ps8640_resume._entry_ptr = internal global ptr @ps8640_resume._entry, section ".printk_index", align 4
@switch.table.ps8640_aux_transfer = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\04\04\01\01\01\01\01\01\01\01", [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 8]
@__sancov_gen_cov_switch_values.37 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 2, i64 3, i64 4, i64 6]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 9]
@___asan_gen_.39 = private unnamed_addr constant [14 x i8] c"ps8640_driver\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 692, i32 26 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 696, i32 11 }
@___asan_gen_.45 = private unnamed_addr constant [13 x i8] c"ps8640_match\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 686, i32 34 }
@___asan_gen_.48 = private unnamed_addr constant [14 x i8] c"ps8640_pm_ops\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 394, i32 32 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 577, i32 34 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 578, i32 34 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 584, i32 59 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 592, i32 55 }
@___asan_gen_.63 = private unnamed_addr constant [20 x i8] c"ps8640_bridge_funcs\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 509, i32 38 }
@___asan_gen_.69 = private unnamed_addr constant [21 x i8] c"ps8640_regmap_config\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 108, i32 35 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 611, i32 37 }
@___asan_gen_.75 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 622, i32 26 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 630, i32 24 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 455, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 346, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 420, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 425, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 186, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 157, i32 43 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 161, i32 36 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 228, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 253, i32 5 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 304, i32 5 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 545, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 389, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.180 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.181 = private constant [42 x i8] c"../drivers/gpu/drm/bridge/parade-ps8640.c\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 358, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant [33 x i8] c"switch.table.ps8640_aux_transfer\00", align 1
@llvm.compiler.used = appending global [66 x ptr] [ptr @__UNIQUE_ID_author309, ptr @__UNIQUE_ID_author310, ptr @__UNIQUE_ID_author311, ptr @__UNIQUE_ID_description312, ptr @__UNIQUE_ID_file313, ptr @__UNIQUE_ID_license314, ptr @__exitcall_ps8640_driver_exit, ptr @__initcall__kmod_parade_ps8640__308_701_ps8640_driver_init6, ptr @ps8640_bridge_attach._entry, ptr @ps8640_bridge_attach._entry_ptr, ptr @ps8640_bridge_host_attach._entry, ptr @ps8640_bridge_host_attach._entry_ptr, ptr @ps8640_bridge_vdo_control._entry, ptr @ps8640_bridge_vdo_control._entry_ptr, ptr @ps8640_driver_exit, ptr @ps8640_ensure_hpd._entry, ptr @ps8640_ensure_hpd._entry_ptr, ptr @ps8640_pre_enable._entry, ptr @ps8640_pre_enable._entry.21, ptr @ps8640_pre_enable._entry_ptr, ptr @ps8640_pre_enable._entry_ptr.22, ptr @ps8640_resume._entry, ptr @ps8640_resume._entry_ptr, ptr @ps8640_suspend._entry, ptr @ps8640_suspend._entry_ptr, ptr @ps8640_driver, ptr @.str, ptr @ps8640_match, ptr @ps8640_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @ps8640_bridge_funcs, ptr @ps8640_probe._key, ptr @ps8640_regmap_config, ptr @.str.5, ptr @ps8640_probe._key.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @switch.table.ps8640_aux_transfer], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps8640_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps8640_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps8640_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps8640_bridge_funcs to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps8640_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps8640_regmap_config to i32), i32 1376, i32 1696, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps8640_probe._key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps8640_bridge_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps8640_bridge_vdo_control._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps8640_pre_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps8640_pre_enable._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps8640_ensure_hpd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps8640_bridge_host_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps8640_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps8640_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ps8640_aux_transfer to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ps8640_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ps8640_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ps8640_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @ps8640_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ps8640_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @drm_bridge_remove(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ps8640_probe(ptr noundef %client) #2 align 64 {
entry:
  %panel = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %panel) #6
  %2 = ptrtoint ptr %panel to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %panel, align 4, !annotation !107
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 2128, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %supplies = getelementptr inbounds %struct.ps8640, ptr %call.i, i32 0, i32 6
  %3 = ptrtoint ptr %supplies to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.1, ptr %supplies, align 4
  %arrayidx3 = getelementptr %struct.ps8640, ptr %call.i, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.2, ptr %arrayidx3, align 4
  %call6 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev1, i32 noundef 2, ptr noundef %supplies) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call11 = tail call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.3, i32 noundef 7) #6
  %gpio_powerdown = getelementptr inbounds %struct.ps8640, ptr %call.i, i32 0, i32 8
  %5 = ptrtoint ptr %gpio_powerdown to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call11, ptr %gpio_powerdown, align 8
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then14, label %if.end17

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %call11 to i32
  br label %cleanup

if.end17:                                         ; preds = %if.end9
  %call19 = tail call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.4, i32 noundef 7) #6
  %gpio_reset = getelementptr inbounds %struct.ps8640, ptr %call.i, i32 0, i32 7
  %7 = ptrtoint ptr %gpio_reset to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call19, ptr %gpio_reset, align 4
  %cmp.i183 = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i183, label %if.then22, label %if.end25

if.then22:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %call19 to i32
  br label %cleanup

if.end25:                                         ; preds = %if.end17
  %funcs = getelementptr inbounds %struct.drm_bridge, ptr %call.i, i32 0, i32 7
  %9 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @ps8640_bridge_funcs, ptr %funcs, align 4
  %10 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %of_node, align 8
  %of_node28 = getelementptr inbounds %struct.drm_bridge, ptr %call.i, i32 0, i32 4
  %12 = ptrtoint ptr %of_node28 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %of_node28, align 4
  %type = getelementptr inbounds %struct.drm_bridge, ptr %call.i, i32 0, i32 10
  %13 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 14, ptr %type, align 8
  %call.i184 = tail call ptr @of_get_child_by_name(ptr noundef %11, ptr noundef nonnull @.str.25) #6
  %tobool.not.i = icmp eq ptr %call.i184, null
  br i1 %tobool.not.i, label %if.end25.if.then32_crit_edge, label %if.end.i

if.end25.if.then32_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then32

if.end.i:                                         ; preds = %if.end25
  %call1.i = tail call ptr @of_get_child_by_name(ptr noundef nonnull %call.i184, ptr noundef nonnull @.str.26) #6
  tail call void @of_node_put(ptr noundef nonnull %call.i184) #6
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %if.end.i.if.then32_crit_edge, label %ps8640_of_panel_on_aux_bus.exit

if.end.i.if.then32_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then32

ps8640_of_panel_on_aux_bus.exit:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @of_node_put(ptr noundef nonnull %call1.i) #6
  br label %if.end34

if.then32:                                        ; preds = %if.end.i.if.then32_crit_edge, %if.end25.if.then32_crit_edge
  %ops = getelementptr inbounds %struct.drm_bridge, ptr %call.i, i32 0, i32 9
  %14 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 2, ptr %ops, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %ps8640_of_panel_on_aux_bus.exit
  %page = getelementptr inbounds %struct.ps8640, ptr %call.i, i32 0, i32 4
  %15 = ptrtoint ptr %page to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %client, ptr %page, align 4
  %call36 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @ps8640_regmap_config, ptr noundef nonnull @ps8640_probe._key, ptr noundef nonnull @.str.5) #6
  %regmap = getelementptr inbounds %struct.ps8640, ptr %call.i, i32 0, i32 5
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call36, ptr %regmap, align 4
  %cmp.i185 = icmp ugt ptr %call36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i185, label %if.then41, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end34
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 3
  %addr = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 1
  br label %for.body

if.then41:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %call36 to i32
  br label %cleanup

for.cond:                                         ; preds = %if.end58
  %inc = add nuw nsw i32 %i.0191, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader
  %i.0191 = phi i32 [ 1, %for.cond.preheader ], [ %inc, %for.cond.for.body_crit_edge ]
  %18 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adapter, align 8
  %20 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %addr, align 2
  %22 = trunc i32 %i.0191 to i16
  %conv47 = add i16 %21, %22
  %call48 = tail call ptr @devm_i2c_new_dummy_device(ptr noundef %dev1, ptr noundef %19, i16 noundef zeroext %conv47) #6
  %arrayidx50 = getelementptr %struct.ps8640, ptr %call.i, i32 0, i32 4, i32 %i.0191
  %23 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call48, ptr %arrayidx50, align 4
  %cmp.i186 = icmp ugt ptr %call48, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i186, label %if.then54, label %if.end58

if.then54:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %call48 to i32
  br label %cleanup

if.end58:                                         ; preds = %for.body
  %add.ptr = getelementptr %struct.regmap_config, ptr @ps8640_regmap_config, i32 %i.0191
  %call62 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %call48, ptr noundef %add.ptr, ptr noundef nonnull @ps8640_probe._key.6, ptr noundef nonnull @.str.7) #6
  %arrayidx64 = getelementptr %struct.ps8640, ptr %call.i, i32 0, i32 5, i32 %i.0191
  %25 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call62, ptr %arrayidx64, align 4
  %cmp.i187 = icmp ugt ptr %call62, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i187, label %if.then68, label %for.cond

if.then68:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %call62 to i32
  br label %cleanup

for.end:                                          ; preds = %for.cond
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %27 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %aux = getelementptr inbounds %struct.ps8640, ptr %call.i, i32 0, i32 2
  %28 = ptrtoint ptr %aux to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @.str.8, ptr %aux, align 8
  %dev74 = getelementptr inbounds %struct.ps8640, ptr %call.i, i32 0, i32 2, i32 2
  %29 = ptrtoint ptr %dev74 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %dev1, ptr %dev74, align 8
  %transfer = getelementptr inbounds %struct.ps8640, ptr %call.i, i32 0, i32 2, i32 8
  %30 = ptrtoint ptr %transfer to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @ps8640_aux_transfer, ptr %transfer, align 8
  tail call void @drm_dp_aux_init(ptr noundef %aux) #6
  tail call void @pm_runtime_enable(ptr noundef %dev1) #6
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev1, i32 noundef 1000) #6
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev1, i1 noundef zeroext true) #6
  %ignore_children.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 12, i32 15
  %31 = ptrtoint ptr %ignore_children.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %bf.load.i = load i16, ptr %ignore_children.i, align 4
  %bf.set.i = or i16 %bf.load.i, 128
  store i16 %bf.set.i, ptr %ignore_children.i, align 4
  %call77 = tail call fastcc i32 @devm_add_action_or_reset(ptr noundef %dev1, ptr noundef %dev1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %tobool78.not = icmp eq i32 %call77, 0
  br i1 %tobool78.not, label %if.end80, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end80:                                         ; preds = %for.end
  %call82 = tail call i32 @devm_of_dp_aux_populate_ep_devices(ptr noundef %aux) #6
  %call83 = call i32 @drm_of_find_panel_or_bridge(ptr noundef %1, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %panel, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %cmp84 = icmp slt i32 %call83, 0
  br i1 %cmp84, label %if.end80.cleanup_crit_edge, label %if.end87

if.end80.cleanup_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end87:                                         ; preds = %if.end80
  %32 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %panel, align 4
  %tobool88.not = icmp eq ptr %33, null
  br i1 %tobool88.not, label %if.end87.cleanup_crit_edge, label %if.end90

if.end87.cleanup_crit_edge:                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end90:                                         ; preds = %if.end87
  %call91 = call ptr @devm_drm_panel_bridge_add(ptr noundef %dev1, ptr noundef nonnull %33) #6
  %panel_bridge = getelementptr inbounds %struct.ps8640, ptr %call.i, i32 0, i32 1
  %34 = ptrtoint ptr %panel_bridge to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call91, ptr %panel_bridge, align 8
  %cmp.i188 = icmp ugt ptr %call91, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i188, label %if.then94, label %if.end97

if.then94:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %call91 to i32
  br label %cleanup

if.end97:                                         ; preds = %if.end90
  call void @drm_bridge_add(ptr noundef nonnull %call.i) #6
  %call99 = call fastcc i32 @ps8640_bridge_host_attach(ptr noundef %dev1, ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %if.end97.cleanup_crit_edge, label %err_bridge_remove

if.end97.cleanup_crit_edge:                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

err_bridge_remove:                                ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  call void @drm_bridge_remove(ptr noundef nonnull %call.i) #6
  br label %cleanup

cleanup:                                          ; preds = %err_bridge_remove, %if.end97.cleanup_crit_edge, %if.then94, %if.end87.cleanup_crit_edge, %if.end80.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.then68, %if.then54, %if.then41, %if.then22, %if.then14, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.then14 ], [ %8, %if.then22 ], [ %17, %if.then41 ], [ %24, %if.then54 ], [ %26, %if.then68 ], [ %35, %if.then94 ], [ %call99, %err_bridge_remove ], [ -12, %entry.cleanup_crit_edge ], [ %call6, %if.end.cleanup_crit_edge ], [ %call77, %for.end.cleanup_crit_edge ], [ %call83, %if.end80.cleanup_crit_edge ], [ -19, %if.end87.cleanup_crit_edge ], [ 0, %if.end97.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %panel) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_i2c_new_dummy_device(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ps8640_aux_transfer(ptr nocapture noundef readonly %aux, ptr nocapture noundef %msg) #2 align 64 {
entry:
  %data.i = alloca i32, align 4
  %addr_len.i = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %aux, i32 -288
  %page = getelementptr i8, ptr %aux, i32 1740
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %page, align 4
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #6
  %call3 = tail call fastcc i32 @ps8640_ensure_hpd(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %regmap.i = getelementptr i8, ptr %aux, i32 1772
  %2 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap.i, align 4
  %4 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %page, align 4
  %dev2.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  %size.i = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %msg, i32 0, i32 4
  %6 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i) #6
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %data.i, align 4, !annotation !107
  %request3.i = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %msg, i32 0, i32 1
  %9 = ptrtoint ptr %request3.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %request3.i, align 4
  %11 = and i8 %10, -7
  %buffer.i = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %msg, i32 0, i32 3
  %12 = ptrtoint ptr %buffer.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %buffer.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr_len.i) #6
  %14 = getelementptr inbounds [4 x i8], ptr %addr_len.i, i32 0, i32 1
  %15 = getelementptr inbounds [4 x i8], ptr %addr_len.i, i32 0, i32 2
  %16 = getelementptr inbounds [4 x i8], ptr %addr_len.i, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %7)
  %cmp.i = icmp ugt i32 %7, 16
  br i1 %cmp.i, label %if.then.ps8640_aux_transfer_msg.exit_crit_edge, label %if.end.i

if.then.ps8640_aux_transfer_msg.exit_crit_edge:   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %ps8640_aux_transfer_msg.exit

if.end.i:                                         ; preds = %if.then
  %17 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %msg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %18)
  %tobool.not.i = icmp ult i32 %18, 1048576
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %11)
  %19 = icmp ult i8 %11, 10
  %or.cond = select i1 %tobool.not.i, i1 %19, i1 false
  br i1 %or.cond, label %switch.hole_check, label %if.end.i.ps8640_aux_transfer_msg.exit_crit_edge

if.end.i.ps8640_aux_transfer_msg.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ps8640_aux_transfer_msg.exit

switch.hole_check:                                ; preds = %if.end.i
  %switch.maskindex = zext i8 %11 to i16
  %switch.shifted = lshr i16 771, %switch.maskindex
  %20 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %switch.lobit.not = icmp eq i16 %20, 0
  br i1 %switch.lobit.not, label %switch.hole_check.ps8640_aux_transfer_msg.exit_crit_edge, label %switch.lookup

switch.hole_check.ps8640_aux_transfer_msg.exit_crit_edge: ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %ps8640_aux_transfer_msg.exit

switch.lookup:                                    ; preds = %switch.hole_check
  %21 = sext i8 %11 to i32
  %switch.gep = getelementptr inbounds [10 x i8], ptr @switch.table.ps8640_aux_transfer, i32 0, i32 %21
  %22 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %22)
  %switch.load = load i8, ptr %switch.gep, align 1
  %call11.i = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 118, i32 noundef 255) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %if.then13.i

if.then13.i:                                      ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev2.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.27, i32 noundef %call11.i) #6
  br label %ps8640_aux_transfer_msg.exit

if.end14.i:                                       ; preds = %switch.lookup
  %reply.i = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %msg, i32 0, i32 2
  %23 = ptrtoint ptr %reply.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %reply.i, align 1
  %24 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %msg, align 4
  %conv16.i = trunc i32 %25 to i8
  %26 = ptrtoint ptr %addr_len.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv16.i, ptr %addr_len.i, align 1
  %shr.i = lshr i32 %25, 8
  %conv19.i = trunc i32 %shr.i to i8
  %27 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv19.i, ptr %14, align 1
  %shr23.i = lshr i32 %25, 16
  %28 = ptrtoint ptr %request3.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %request3.i, align 4
  %conv25.i = zext i8 %29 to i32
  %shl.i = shl nuw nsw i32 %conv25.i, 4
  %or.i = or i32 %shl.i, %shr23.i
  %conv26.i = trunc i32 %or.i to i8
  %30 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv26.i, ptr %15, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp29.i = icmp eq i32 %7, 0
  %31 = trunc i32 %7 to i8
  %32 = add nuw nsw i8 %31, 15
  %33 = and i8 %32, 15
  %conv33.i = select i1 %cmp29.i, i8 -128, i8 %33
  %34 = ptrtoint ptr %16 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv33.i, ptr %16, align 1
  %call36.i = call i32 @regmap_bulk_write(ptr noundef %3, i32 noundef 125, ptr noundef nonnull %addr_len.i, i32 noundef 4) #6
  br i1 %cmp29.i, label %if.end14.i.if.end54.i_crit_edge, label %land.lhs.true.i

if.end14.i.if.end54.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54.i

land.lhs.true.i:                                  ; preds = %if.end14.i
  %35 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values)
  switch i8 %11, label %land.lhs.true.i.if.end54.i_crit_edge [
    i8 8, label %land.lhs.true.i.for.body.i.preheader_crit_edge
    i8 0, label %land.lhs.true.i.for.body.i.preheader_crit_edge25
  ]

land.lhs.true.i.for.body.i.preheader_crit_edge25: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.preheader

land.lhs.true.i.for.body.i.preheader_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.preheader

land.lhs.true.i.if.end54.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54.i

for.body.i.preheader:                             ; preds = %land.lhs.true.i.for.body.i.preheader_crit_edge, %land.lhs.true.i.for.body.i.preheader_crit_edge25
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add i8 %i.0218.i, 1
  %conv45.i = zext i8 %inc.i to i32
  %cmp46.i = icmp ugt i32 %7, %conv45.i
  br i1 %cmp46.i, label %for.cond.i.for.body.i_crit_edge, label %for.cond.i.if.end54.i_crit_edge

for.cond.i.if.end54.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54.i

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.i.preheader
  %conv45219.i = phi i32 [ %conv45.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %i.0218.i = phi i8 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %arrayidx48.i = getelementptr i8, ptr %13, i32 %conv45219.i
  %36 = ptrtoint ptr %arrayidx48.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx48.i, align 1
  %conv49.i = zext i8 %37 to i32
  %call50.i = call i32 @regmap_write(ptr noundef %3, i32 noundef 129, i32 noundef %conv49.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i)
  %tobool51.not.i = icmp eq i32 %call50.i, 0
  br i1 %tobool51.not.i, label %for.cond.i, label %if.then52.i

if.then52.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev2.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.28, i32 noundef %call50.i) #6
  br label %ps8640_aux_transfer_msg.exit

if.end54.i:                                       ; preds = %for.cond.i.if.end54.i_crit_edge, %land.lhs.true.i.if.end54.i_crit_edge, %if.end14.i.if.end54.i_crit_edge
  %call55.i = call i32 @regmap_write(ptr noundef %3, i32 noundef 131, i32 noundef 1) #6
  %call56.i = call i64 @ktime_get() #6
  %add.i.i = add i64 %call56.i, 50000000
  br label %for.cond68.i

for.cond68.i:                                     ; preds = %land.lhs.true77.i.for.cond68.i_crit_edge, %if.end54.i
  %call69.i = call i32 @regmap_read(ptr noundef %3, i32 noundef 131, ptr noundef nonnull %data.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69.i)
  %tobool70.not.i = icmp eq i32 %call69.i, 0
  br i1 %tobool70.not.i, label %lor.lhs.false71.i, label %for.cond68.i.for.end89.i_crit_edge

for.cond68.i.for.end89.i_crit_edge:               ; preds = %for.cond68.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end89.i

lor.lhs.false71.i:                                ; preds = %for.cond68.i
  %38 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %data.i, align 4
  %and72.i = and i32 %39, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and72.i)
  %tobool73.not.i = icmp eq i32 %and72.i, 0
  br i1 %tobool73.not.i, label %lor.lhs.false71.i.for.end89.i_crit_edge, label %land.lhs.true77.i

lor.lhs.false71.i.for.end89.i_crit_edge:          ; preds = %lor.lhs.false71.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end89.i

land.lhs.true77.i:                                ; preds = %lor.lhs.false71.i
  %call78.i = call i64 @ktime_get() #6
  %cmp3.i.i = icmp sgt i64 %call78.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then82.i, label %land.lhs.true77.i.for.cond68.i_crit_edge

land.lhs.true77.i.for.cond68.i_crit_edge:         ; preds = %land.lhs.true77.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond68.i

if.then82.i:                                      ; preds = %land.lhs.true77.i
  call void @__sanitizer_cov_trace_pc() #8
  %call83.i = call i32 @regmap_read(ptr noundef %3, i32 noundef 131, ptr noundef nonnull %data.i) #6
  br label %for.end89.i

for.end89.i:                                      ; preds = %if.then82.i, %lor.lhs.false71.i.for.end89.i_crit_edge, %for.cond68.i.for.end89.i_crit_edge
  %call100.i = call i32 @regmap_read(ptr noundef %3, i32 noundef 132, ptr noundef nonnull %data.i) #6
  %40 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %data.i, align 4
  %and104.i = and i32 %41, 224
  %42 = add nsw i32 %and104.i, -32
  %43 = lshr exact i32 %42, 5
  %44 = zext i32 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %43, label %for.end89.i.sw.epilog121.i_crit_edge [
    i32 0, label %for.end89.i.sw.bb105.i_crit_edge
    i32 4, label %for.end89.i.sw.bb105.i_crit_edge26
    i32 2, label %for.end89.i.sw.bb117.i_crit_edge
    i32 3, label %for.end89.i.ps8640_aux_transfer_msg.exit_crit_edge
    i32 6, label %sw.bb120.i
  ]

for.end89.i.ps8640_aux_transfer_msg.exit_crit_edge: ; preds = %for.end89.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ps8640_aux_transfer_msg.exit

for.end89.i.sw.bb117.i_crit_edge:                 ; preds = %for.end89.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb117.i

for.end89.i.sw.bb105.i_crit_edge26:               ; preds = %for.end89.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb105.i

for.end89.i.sw.bb105.i_crit_edge:                 ; preds = %for.end89.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb105.i

for.end89.i.sw.epilog121.i_crit_edge:             ; preds = %for.end89.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog121.i

sw.bb105.i:                                       ; preds = %for.end89.i.sw.bb105.i_crit_edge, %for.end89.i.sw.bb105.i_crit_edge26
  %45 = ptrtoint ptr %reply.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %reply.i, align 1
  %47 = or i8 %46, %switch.load
  store i8 %47, ptr %reply.i, align 1
  br label %sw.bb117.i

sw.bb117.i:                                       ; preds = %sw.bb105.i, %for.end89.i.sw.bb117.i_crit_edge
  %and118.i = and i32 %41, 31
  br label %sw.epilog121.i

sw.bb120.i:                                       ; preds = %for.end89.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ps8640_aux_transfer_msg.exit

sw.epilog121.i:                                   ; preds = %sw.bb117.i, %for.end89.i.sw.epilog121.i_crit_edge
  %len.0.i = phi i32 [ %7, %for.end89.i.sw.epilog121.i_crit_edge ], [ %and118.i, %sw.bb117.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.0.i)
  %tobool122.not.i = icmp eq i32 %len.0.i, 0
  br i1 %tobool122.not.i, label %sw.epilog121.i.ps8640_aux_transfer_msg.exit_crit_edge, label %land.lhs.true123.i

sw.epilog121.i.ps8640_aux_transfer_msg.exit_crit_edge: ; preds = %sw.epilog121.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ps8640_aux_transfer_msg.exit

land.lhs.true123.i:                               ; preds = %sw.epilog121.i
  %48 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.38)
  switch i8 %11, label %land.lhs.true123.i.ps8640_aux_transfer_msg.exit_crit_edge [
    i8 9, label %land.lhs.true123.i.for.body136.i.preheader_crit_edge
    i8 1, label %land.lhs.true123.i.for.body136.i.preheader_crit_edge27
  ]

land.lhs.true123.i.for.body136.i.preheader_crit_edge27: ; preds = %land.lhs.true123.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body136.i.preheader

land.lhs.true123.i.for.body136.i.preheader_crit_edge: ; preds = %land.lhs.true123.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body136.i.preheader

land.lhs.true123.i.ps8640_aux_transfer_msg.exit_crit_edge: ; preds = %land.lhs.true123.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ps8640_aux_transfer_msg.exit

for.body136.i.preheader:                          ; preds = %land.lhs.true123.i.for.body136.i.preheader_crit_edge, %land.lhs.true123.i.for.body136.i.preheader_crit_edge27
  br label %for.body136.i

for.body136.i:                                    ; preds = %if.end140.i.for.body136.i_crit_edge, %for.body136.i.preheader
  %conv133222.i = phi i32 [ %conv133.i, %if.end140.i.for.body136.i_crit_edge ], [ 0, %for.body136.i.preheader ]
  %i.1221.i = phi i8 [ %inc145.i, %if.end140.i.for.body136.i_crit_edge ], [ 0, %for.body136.i.preheader ]
  %call137.i = call i32 @regmap_read(ptr noundef %3, i32 noundef 130, ptr noundef nonnull %data.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137.i)
  %tobool138.not.i = icmp eq i32 %call137.i, 0
  br i1 %tobool138.not.i, label %if.end140.i, label %if.then139.i

if.then139.i:                                     ; preds = %for.body136.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev2.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.30, i32 noundef %call137.i) #6
  br label %ps8640_aux_transfer_msg.exit

if.end140.i:                                      ; preds = %for.body136.i
  %49 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %data.i, align 4
  %conv141.i = trunc i32 %50 to i8
  %arrayidx143.i = getelementptr i8, ptr %13, i32 %conv133222.i
  %51 = ptrtoint ptr %arrayidx143.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 %conv141.i, ptr %arrayidx143.i, align 1
  %inc145.i = add i8 %i.1221.i, 1
  %conv133.i = zext i8 %inc145.i to i32
  %cmp134.i = icmp ugt i32 %len.0.i, %conv133.i
  br i1 %cmp134.i, label %if.end140.i.for.body136.i_crit_edge, label %if.end140.i.ps8640_aux_transfer_msg.exit_crit_edge

if.end140.i.ps8640_aux_transfer_msg.exit_crit_edge: ; preds = %if.end140.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ps8640_aux_transfer_msg.exit

if.end140.i.for.body136.i_crit_edge:              ; preds = %if.end140.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body136.i

ps8640_aux_transfer_msg.exit:                     ; preds = %if.end140.i.ps8640_aux_transfer_msg.exit_crit_edge, %if.then139.i, %land.lhs.true123.i.ps8640_aux_transfer_msg.exit_crit_edge, %sw.epilog121.i.ps8640_aux_transfer_msg.exit_crit_edge, %sw.bb120.i, %for.end89.i.ps8640_aux_transfer_msg.exit_crit_edge, %if.then52.i, %if.then13.i, %switch.hole_check.ps8640_aux_transfer_msg.exit_crit_edge, %if.end.i.ps8640_aux_transfer_msg.exit_crit_edge, %if.then.ps8640_aux_transfer_msg.exit_crit_edge
  %retval.0.i = phi i32 [ %call11.i, %if.then13.i ], [ %call50.i, %if.then52.i ], [ %call137.i, %if.then139.i ], [ -110, %sw.bb120.i ], [ -22, %if.then.ps8640_aux_transfer_msg.exit_crit_edge ], [ -22, %if.end.i.ps8640_aux_transfer_msg.exit_crit_edge ], [ -95, %for.end89.i.ps8640_aux_transfer_msg.exit_crit_edge ], [ %len.0.i, %land.lhs.true123.i.ps8640_aux_transfer_msg.exit_crit_edge ], [ 0, %sw.epilog121.i.ps8640_aux_transfer_msg.exit_crit_edge ], [ -22, %switch.hole_check.ps8640_aux_transfer_msg.exit_crit_edge ], [ %len.0.i, %if.end140.i.ps8640_aux_transfer_msg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr_len.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #6
  br label %if.end

if.end:                                           ; preds = %ps8640_aux_transfer_msg.exit, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call3, %entry.if.end_crit_edge ], [ %retval.0.i, %ps8640_aux_transfer_msg.exit ]
  %call.i11 = call i64 @ktime_get_mono_fast_ns() #6
  %last_busy.i = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4, i32 12, i32 22
  %52 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %52)
  store volatile i64 %call.i11, ptr %last_busy.i, align 8
  %call.i12 = call i32 @__pm_runtime_suspend(ptr noundef %dev1, i32 noundef 13) #6
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dp_aux_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @devm_add_action_or_reset(ptr noundef %dev, ptr noundef %data) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @ps8640_runtime_disable, ptr noundef %data) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %data, i1 noundef zeroext false) #6
  tail call void @__pm_runtime_disable(ptr noundef %data, i1 noundef zeroext true) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ps8640_runtime_disable(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %data, i1 noundef zeroext false) #6
  tail call void @__pm_runtime_disable(ptr noundef %data, i1 noundef zeroext true) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_of_dp_aux_populate_ep_devices(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_find_panel_or_bridge(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_drm_panel_bridge_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ps8640_bridge_host_attach(ptr noundef %dev, ptr nocapture noundef writeonly %ps_bridge) unnamed_addr #2 align 64 {
entry:
  %info = alloca %struct.mipi_dsi_device_info, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %info) #6
  %0 = call ptr @memcpy(ptr %info, ptr @__const.ps8640_bridge_host_attach.info, i32 28)
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_graph_get_endpoint_by_regs(ptr noundef %2, i32 noundef 0, i32 noundef -1) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @of_graph_get_remote_port_parent(ptr noundef nonnull %call) #6
  tail call void @of_node_put(ptr noundef nonnull %call) #6
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @of_find_mipi_dsi_host_by_node(ptr noundef nonnull %call1) #6
  tail call void @of_node_put(ptr noundef nonnull %call1) #6
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %call9 = call ptr @devm_mipi_dsi_device_register_full(ptr noundef %dev, ptr noundef nonnull %call5, ptr noundef nonnull %info) #6
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end13

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.31) #9
  %3 = ptrtoint ptr %call9 to i32
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %dsi14 = getelementptr inbounds %struct.ps8640, ptr %ps_bridge, i32 0, i32 3
  %4 = ptrtoint ptr %dsi14 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call9, ptr %dsi14, align 8
  %5 = ptrtoint ptr %call9 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call5, ptr %call9, align 8
  %mode_flags = getelementptr inbounds %struct.mipi_dsi_device, ptr %call9, i32 0, i32 6
  %6 = ptrtoint ptr %mode_flags to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 5, ptr %mode_flags, align 8
  %format = getelementptr inbounds %struct.mipi_dsi_device, ptr %call9, i32 0, i32 5
  %7 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %format, align 4
  %lanes = getelementptr inbounds %struct.mipi_dsi_device, ptr %call9, i32 0, i32 4
  %8 = ptrtoint ptr %lanes to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %lanes, align 8
  %call16 = call i32 @devm_mipi_dsi_attach(ptr noundef %dev, ptr noundef %call9) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %do.end, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %do.end ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -517, %if.end4.cleanup_crit_edge ], [ %call16, %if.end13 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %info) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ps8640_bridge_attach(ptr noundef %bridge, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %page = getelementptr inbounds %struct.ps8640, ptr %bridge, i32 0, i32 4
  %0 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %page, align 4
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %1, i32 0, i32 4
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 1
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 4
  %aux = getelementptr inbounds %struct.ps8640, ptr %bridge, i32 0, i32 2
  %drm_dev = getelementptr inbounds %struct.ps8640, ptr %bridge, i32 0, i32 2, i32 3
  %4 = ptrtoint ptr %drm_dev to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %drm_dev, align 4
  %call4 = tail call i32 @drm_dp_aux_register(ptr noundef %aux) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9, i32 noundef %call4) #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %encoder = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 2
  %5 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %encoder, align 4
  %panel_bridge = getelementptr inbounds %struct.ps8640, ptr %bridge, i32 0, i32 1
  %7 = ptrtoint ptr %panel_bridge to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %panel_bridge, align 8
  %call9 = tail call i32 @drm_bridge_attach(ptr noundef %6, ptr noundef %8, ptr noundef %bridge, i32 noundef %flags) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %do.end ], [ %call9, %if.end7 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ps8640_bridge_detach(ptr noundef %bridge) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %aux = getelementptr inbounds %struct.ps8640, ptr %bridge, i32 0, i32 2
  tail call void @drm_dp_aux_unregister(ptr noundef %aux) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ps8640_post_disable(ptr nocapture noundef %bridge) #2 align 64 {
entry:
  %vdo_ctrl_buf.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pre_enabled = getelementptr inbounds %struct.ps8640, ptr %bridge, i32 0, i32 9
  %0 = ptrtoint ptr %pre_enabled to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %pre_enabled, align 4
  %arrayidx.i = getelementptr %struct.ps8640, ptr %bridge, i32 0, i32 5, i32 3
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx1.i = getelementptr %struct.ps8640, ptr %bridge, i32 0, i32 4, i32 3
  %3 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx1.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %vdo_ctrl_buf.i) #6
  %5 = getelementptr inbounds [2 x i8], ptr %vdo_ctrl_buf.i, i32 0, i32 1
  %6 = ptrtoint ptr %vdo_ctrl_buf.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 19, ptr %vdo_ctrl_buf.i, align 1
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 24, ptr %5, align 1
  %call.i = call i32 @regmap_bulk_write(ptr noundef %2, i32 noundef 254, ptr noundef nonnull %vdo_ctrl_buf.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %entry.ps8640_bridge_vdo_control.exit_crit_edge

entry.ps8640_bridge_vdo_control.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %ps8640_bridge_vdo_control.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev2.i = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.17, i32 noundef %call.i) #9
  br label %ps8640_bridge_vdo_control.exit

ps8640_bridge_vdo_control.exit:                   ; preds = %do.end.i, %entry.ps8640_bridge_vdo_control.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vdo_ctrl_buf.i) #6
  %page = getelementptr inbounds %struct.ps8640, ptr %bridge, i32 0, i32 4
  %8 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %page, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %9, i32 0, i32 4
  %call.i4 = call i32 @__pm_runtime_suspend(ptr noundef %dev, i32 noundef 4) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ps8640_pre_enable(ptr nocapture noundef %bridge) #2 align 64 {
entry:
  %vdo_ctrl_buf.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.ps8640, ptr %bridge, i32 0, i32 5, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %page = getelementptr inbounds %struct.ps8640, ptr %bridge, i32 0, i32 4
  %2 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %page, align 4
  %dev2 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev2, i32 noundef 4) #6
  %call4 = tail call fastcc i32 @ps8640_ensure_hpd(ptr noundef %bridge)
  %call.i23 = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 243, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23)
  %cmp = icmp slt i32 %call.i23, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev2, ptr noundef nonnull @.str.18, i32 noundef %call.i23) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call6 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 234, i32 noundef 208) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %do.end11, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

do.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev2, ptr noundef nonnull @.str.18, i32 noundef %call6) #9
  br label %if.end12

if.end12:                                         ; preds = %do.end11, %if.end.if.end12_crit_edge
  %arrayidx.i = getelementptr %struct.ps8640, ptr %bridge, i32 0, i32 5, i32 3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx1.i = getelementptr %struct.ps8640, ptr %bridge, i32 0, i32 4, i32 3
  %6 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx1.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %vdo_ctrl_buf.i) #6
  %8 = getelementptr inbounds [2 x i8], ptr %vdo_ctrl_buf.i, i32 0, i32 1
  %9 = ptrtoint ptr %vdo_ctrl_buf.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 19, ptr %vdo_ctrl_buf.i, align 1
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 28, ptr %8, align 1
  %call.i24 = call i32 @regmap_bulk_write(ptr noundef %5, i32 noundef 254, ptr noundef nonnull %vdo_ctrl_buf.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24)
  %cmp.i = icmp slt i32 %call.i24, 0
  br i1 %cmp.i, label %do.end.i, label %if.end12.ps8640_bridge_vdo_control.exit_crit_edge

if.end12.ps8640_bridge_vdo_control.exit_crit_edge: ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %ps8640_bridge_vdo_control.exit

do.end.i:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %dev2.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.16, i32 noundef %call.i24) #9
  br label %ps8640_bridge_vdo_control.exit

ps8640_bridge_vdo_control.exit:                   ; preds = %do.end.i, %if.end12.ps8640_bridge_vdo_control.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vdo_ctrl_buf.i) #6
  %pre_enabled = getelementptr inbounds %struct.ps8640, ptr %bridge, i32 0, i32 9
  %11 = ptrtoint ptr %pre_enabled to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %pre_enabled, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ps8640_bridge_get_edid(ptr noundef %bridge, ptr noundef %connector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pre_enabled = getelementptr inbounds %struct.ps8640, ptr %bridge, i32 0, i32 9
  %0 = ptrtoint ptr %pre_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pre_enabled, align 4, !range !108
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  tail call void @drm_bridge_chain_pre_enable(ptr noundef %bridge) #6
  %page = getelementptr inbounds %struct.ps8640, ptr %bridge, i32 0, i32 4
  %2 = ptrtoint ptr %page to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %page, align 4
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %adapter, align 8
  %call1 = tail call ptr @drm_get_edid(ptr noundef %connector, ptr noundef %5) #6
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @drm_bridge_chain_post_disable(ptr noundef %bridge) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret ptr %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_aux_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dp_aux_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ps8640_ensure_hpd(ptr nocapture noundef readonly %ps_bridge) unnamed_addr #2 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.ps8640, ptr %ps_bridge, i32 0, i32 5, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %arrayidx1 = getelementptr %struct.ps8640, ptr %ps_bridge, i32 0, i32 4, i32 2
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx1, align 4
  %dev2 = getelementptr inbounds %struct.i2c_client, ptr %3, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #6
  %4 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %status, align 4, !annotation !107
  %call = tail call i64 @ktime_get() #6
  %add.i = add i64 %call, 200000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.11, i32 noundef 183) #6
  %call1057 = call i32 @regmap_read(ptr noundef %1, i32 noundef 167, ptr noundef nonnull %status) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1057)
  %tobool.not58 = icmp eq i32 %call1057, 0
  br i1 %tobool.not58, label %entry.lor.lhs.false_crit_edge, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then22.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %status, align 4
  %and = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %land.lhs.true, label %lor.lhs.false.lor.rhs_crit_edge

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call15 = call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call15, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call15, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then22

if.then22:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 5001, i32 noundef 20000, i32 noundef 2) #6
  %call10 = call i32 @regmap_read(ptr noundef %1, i32 noundef 167, ptr noundef nonnull %status) #6
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %if.then22.lor.lhs.false_crit_edge, label %if.then22.lor.end_crit_edge

if.then22.lor.end_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end

if.then22.lor.lhs.false_crit_edge:                ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false

for.end:                                          ; preds = %land.lhs.true
  %call19 = call i32 @regmap_read(ptr noundef %1, i32 noundef 167, ptr noundef nonnull %status) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool24.not = icmp eq i32 %call19, 0
  br i1 %tobool24.not, label %for.end.lor.rhs_crit_edge, label %for.end.lor.end_crit_edge

for.end.lor.end_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end

for.end.lor.rhs_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.rhs

lor.rhs:                                          ; preds = %for.end.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge
  %7 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %status, align 4
  %and25 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %lor.rhs.do.end34_crit_edge, label %lor.rhs.if.end35_crit_edge

lor.rhs.if.end35_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

lor.rhs.do.end34_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end34

lor.end:                                          ; preds = %for.end.lor.end_crit_edge, %if.then22.lor.end_crit_edge, %entry.lor.end_crit_edge
  %tobool24.not50 = phi i32 [ %call19, %for.end.lor.end_crit_edge ], [ %call1057, %entry.lor.end_crit_edge ], [ %call10, %if.then22.lor.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tobool24.not50)
  %cmp30 = icmp slt i32 %tobool24.not50, 0
  br i1 %cmp30, label %lor.end.do.end34_crit_edge, label %lor.end.if.end35_crit_edge

lor.end.if.end35_crit_edge:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

lor.end.do.end34_crit_edge:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end34

do.end34:                                         ; preds = %lor.end.do.end34_crit_edge, %lor.rhs.do.end34_crit_edge
  %tobool24.not5062 = phi i32 [ %tobool24.not50, %lor.end.do.end34_crit_edge ], [ -110, %lor.rhs.do.end34_crit_edge ]
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev2, ptr noundef nonnull @.str.23, i32 noundef %tobool24.not5062) #9
  br label %if.end35

if.end35:                                         ; preds = %do.end34, %lor.end.if.end35_crit_edge, %lor.rhs.if.end35_crit_edge
  %tobool24.not5061 = phi i32 [ %tobool24.not5062, %do.end34 ], [ %tobool24.not50, %lor.end.if.end35_crit_edge ], [ 0, %lor.rhs.if.end35_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #6
  ret i32 %tobool24.not5061
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_chain_pre_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_get_edid(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_chain_post_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_endpoint_by_regs(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_port_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_mipi_dsi_host_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_mipi_dsi_device_register_full(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_mipi_dsi_attach(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ps8640_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %gpio_reset = getelementptr inbounds %struct.ps8640, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %gpio_reset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpio_reset, align 4
  tail call void @gpiod_set_value(ptr noundef %3, i32 noundef 1) #6
  %gpio_powerdown = getelementptr inbounds %struct.ps8640, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %gpio_powerdown to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gpio_powerdown, align 8
  tail call void @gpiod_set_value(ptr noundef %5, i32 noundef 1) #6
  %supplies = getelementptr inbounds %struct.ps8640, ptr %1, i32 0, i32 6
  %call1 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.33, i32 noundef %call1) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ps8640_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %supplies = getelementptr inbounds %struct.ps8640, ptr %1, i32 0, i32 6
  %call1 = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %supplies) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.35, i32 noundef %call1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %gpio_powerdown = getelementptr inbounds %struct.ps8640, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %gpio_powerdown to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpio_powerdown, align 8
  tail call void @gpiod_set_value(ptr noundef %3, i32 noundef 0) #6
  %gpio_reset = getelementptr inbounds %struct.ps8640, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %gpio_reset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gpio_reset, align 4
  tail call void @gpiod_set_value(ptr noundef %5, i32 noundef 1) #6
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 2500, i32 noundef 2) #6
  %6 = ptrtoint ptr %gpio_reset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gpio_reset, align 4
  tail call void @gpiod_set_value(ptr noundef %7, i32 noundef 0) #6
  tail call void @msleep(i32 noundef 200) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call1, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

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

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !16, !18, !20, !22, !24, !26, !28, !29, !31, !32, !34, !36, !38, !39, !40, !41, !42, !43, !44, !46, !47, !48, !49, !50, !51, !53, !54, !55, !56, !57, !59, !60, !62, !63, !64, !65, !67, !69, !71, !73, !75, !77, !79, !81, !82, !83, !84, !86, !88, !90, !91, !92, !93, !95, !96, !97}
!llvm.module.flags = !{!98, !99, !100, !101, !102, !103, !104, !105}
!llvm.ident = !{!106}

!0 = !{ptr @__initcall__kmod_parade_ps8640__308_701_ps8640_driver_init6, !1, !"__initcall__kmod_parade_ps8640__308_701_ps8640_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/bridge/parade-ps8640.c", i32 701, i32 1}
!2 = !{ptr @__exitcall_ps8640_driver_exit, !1, !"__exitcall_ps8640_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author309, !4, !"__UNIQUE_ID_author309", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/bridge/parade-ps8640.c", i32 703, i32 1}
!5 = !{ptr @__UNIQUE_ID_author310, !6, !"__UNIQUE_ID_author310", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/bridge/parade-ps8640.c", i32 704, i32 1}
!7 = !{ptr @__UNIQUE_ID_author311, !8, !"__UNIQUE_ID_author311", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/bridge/parade-ps8640.c", i32 705, i32 1}
!9 = !{ptr @__UNIQUE_ID_description312, !10, !"__UNIQUE_ID_description312", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/bridge/parade-ps8640.c", i32 706, i32 1}
!11 = !{ptr @__UNIQUE_ID_file313, !12, !"__UNIQUE_ID_file313", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/bridge/parade-ps8640.c", i32 707, i32 1}
!13 = !{ptr @__UNIQUE_ID_license314, !12, !"__UNIQUE_ID_license314", i1 false, i1 false}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/bridge/parade-ps8640.c", i32 696, i32 11}
!16 = !{ptr @ps8640_driver, !17, !"ps8640_driver", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/bridge/parade-ps8640.c", i32 692, i32 26}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/bridge/parade-ps8640.c", i32 577, i32 34}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/bridge/parade-ps8640.c", i32 578, i32 34}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/bridge/parade-ps8640.c", i32 584, i32 59}
!24 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/bridge/parade-ps8640.c", i32 592, i32 55}
!26 = !{ptr @ps8640_probe._key, !27, !"_key", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/bridge/parade-ps8640.c", i32 611, i32 37}
!28 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @ps8640_probe._key.6, !30, !"_key", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/bridge/parade-ps8640.c", i32 622, i32 26}
!31 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/bridge/parade-ps8640.c", i32 630, i32 24}
!34 = !{ptr @ps8640_bridge_funcs, !35, !"ps8640_bridge_funcs", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/bridge/parade-ps8640.c", i32 509, i32 38}
!36 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/bridge/parade-ps8640.c", i32 455, i32 3}
!38 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @ps8640_bridge_attach._entry, !37, !"_entry", i1 false, i1 false}
!43 = !{ptr @ps8640_bridge_attach._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/bridge/parade-ps8640.c", i32 346, i32 3}
!46 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @ps8640_bridge_vdo_control._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @ps8640_bridge_vdo_control._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/bridge/parade-ps8640.c", i32 420, i32 3}
!53 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @ps8640_pre_enable._entry, !52, !"_entry", i1 false, i1 false}
!56 = !{ptr @ps8640_pre_enable._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @ps8640_pre_enable._entry.21, !58, !"_entry", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/bridge/parade-ps8640.c", i32 425, i32 3}
!59 = !{ptr @ps8640_pre_enable._entry_ptr.22, !58, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/bridge/parade-ps8640.c", i32 186, i32 3}
!62 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @ps8640_ensure_hpd._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @ps8640_ensure_hpd._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/bridge/parade-ps8640.c", i32 157, i32 43}
!67 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/bridge/parade-ps8640.c", i32 161, i32 36}
!69 = !{ptr @ps8640_regmap_config, !70, !"ps8640_regmap_config", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/bridge/parade-ps8640.c", i32 108, i32 35}
!71 = !{ptr @.str.27, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/bridge/parade-ps8640.c", i32 228, i32 3}
!73 = !{ptr @.str.28, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/bridge/parade-ps8640.c", i32 253, i32 5}
!75 = distinct !{null, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/bridge/parade-ps8640.c", i32 269, i32 3}
!77 = !{ptr @.str.30, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/bridge/parade-ps8640.c", i32 304, i32 5}
!79 = !{ptr @.str.31, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/bridge/parade-ps8640.c", i32 545, i32 3}
!81 = !{ptr @.str.32, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @ps8640_bridge_host_attach._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @ps8640_bridge_host_attach._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @ps8640_match, !85, !"ps8640_match", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/bridge/parade-ps8640.c", i32 686, i32 34}
!86 = !{ptr @ps8640_pm_ops, !87, !"ps8640_pm_ops", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/bridge/parade-ps8640.c", i32 394, i32 32}
!88 = !{ptr @.str.33, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/bridge/parade-ps8640.c", i32 389, i32 3}
!90 = !{ptr @.str.34, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @ps8640_suspend._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @ps8640_suspend._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.35, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/bridge/parade-ps8640.c", i32 358, i32 3}
!95 = !{ptr @.str.36, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @ps8640_resume._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @ps8640_resume._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{i32 1, !"wchar_size", i32 2}
!99 = !{i32 1, !"min_enum_size", i32 4}
!100 = !{i32 8, !"branch-target-enforcement", i32 0}
!101 = !{i32 8, !"sign-return-address", i32 0}
!102 = !{i32 8, !"sign-return-address-all", i32 0}
!103 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!104 = !{i32 7, !"uwtable", i32 1}
!105 = !{i32 7, !"frame-pointer", i32 2}
!106 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!107 = !{!"auto-init"}
!108 = !{i8 0, i8 2}
