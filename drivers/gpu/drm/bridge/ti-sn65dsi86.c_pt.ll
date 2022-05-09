; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/bridge/ti-sn65dsi86.c_pt.bc'
source_filename = "../drivers/gpu/drm/bridge/ti-sn65dsi86.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.auxiliary_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.list_head = type { ptr, ptr }
%struct.auxiliary_device_id = type { [32 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pwm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_bridge_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mipi_dsi_device_info = type { [20 x i8], i32, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.regmap_access_table = type { ptr, i32, ptr, i32 }
%struct.regmap_range = type { i32, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.ti_sn65dsi86 = type { %struct.auxiliary_device, %struct.auxiliary_device, %struct.auxiliary_device, %struct.auxiliary_device, ptr, ptr, %struct.drm_dp_aux, %struct.drm_bridge, %struct.drm_connector, ptr, ptr, ptr, ptr, ptr, [4 x %struct.regulator_bulk_data], i32, i8, i8, i8, %struct.mutex, %struct.gpio_chip, [1 x i32], %struct.pwm_chip, i8, %struct.atomic_t, i32 }
%struct.auxiliary_device = type { %struct.device, ptr, i32 }
%struct.drm_dp_aux = type { ptr, %struct.i2c_adapter, ptr, ptr, ptr, %struct.mutex, %struct.work_struct, i8, ptr, i32, i32, %struct.drm_dp_aux_cec, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.drm_dp_aux_cec = type { %struct.mutex, ptr, ptr, %struct.delayed_work }
%struct.drm_bridge = type { %struct.drm_private_obj, ptr, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.88 }
%union.anon.88 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.95, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.95 = type { ptr }
%struct.pwm_chip = type { ptr, ptr, i32, i32, ptr, i32, %struct.list_head, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.pwm_state = type { i64, i64, i32, i8, i8 }
%struct.mipi_dsi_device = type { ptr, %struct.device, [20 x i8], i32, i32, i32, i32, i32, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.86, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.89, ptr, i32, ptr, i8, i32 }
%struct.anon.86 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.89 = type { i32, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_dp_aux_msg = type { i32, i8, i8, ptr, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.78, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.79, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.80, ptr, %struct.address_space, %struct.list_head, %union.anon.81, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.78 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.79 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.80 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%union.anon.81 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@__initcall__kmod_ti_sn65dsi86__335_1964_ti_sn65dsi86_init6 = internal global ptr @ti_sn65dsi86_init, section ".initcall6.init", align 4
@ti_sn_bridge_driver = internal global { %struct.auxiliary_driver, [56 x i8] } { %struct.auxiliary_driver { ptr @ti_sn_bridge_probe, ptr @ti_sn_bridge_remove, ptr null, ptr null, ptr null, ptr @.str.27, %struct.device_driver zeroinitializer, ptr @ti_sn_bridge_id_table }, [56 x i8] zeroinitializer }, align 32
@ti_sn_aux_driver = internal global { %struct.auxiliary_driver, [56 x i8] } { %struct.auxiliary_driver { ptr @ti_sn_aux_probe, ptr null, ptr null, ptr null, ptr null, ptr @.str.51, %struct.device_driver zeroinitializer, ptr @ti_sn_aux_id_table }, [56 x i8] zeroinitializer }, align 32
@ti_sn65dsi86_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @ti_sn65dsi86_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ti_sn65dsi86_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ti_sn65dsi86_pm_ops, ptr null, ptr null }, ptr @ti_sn65dsi86_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ti_sn65dsi86_exit = internal global ptr @ti_sn65dsi86_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author336 = internal constant [58 x i8] c"ti_sn65dsi86.author=Sandeep Panda <spanda@codeaurora.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description337 = internal constant [60 x i8] c"ti_sn65dsi86.description=sn65dsi86 DSI to eDP bridge driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file338 = internal constant [54 x i8] c"ti_sn65dsi86.file=drivers/gpu/drm/bridge/ti-sn65dsi86\00", section ".modinfo", align 1
@__UNIQUE_ID_license339 = internal constant [28 x i8] c"ti_sn65dsi86.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ti_sn65dsi86\00", [19 x i8] zeroinitializer }, align 32
@ti_sn_gpio_driver = internal global { %struct.auxiliary_driver, [56 x i8] } { %struct.auxiliary_driver { ptr @ti_sn_gpio_probe, ptr null, ptr null, ptr null, ptr null, ptr @.str.1, %struct.device_driver zeroinitializer, ptr @ti_sn_gpio_id_table }, [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpio\00", [27 x i8] zeroinitializer }, align 32
@ti_sn_gpio_id_table = internal constant { [2 x %struct.auxiliary_device_id], [56 x i8] } { [2 x %struct.auxiliary_device_id] [%struct.auxiliary_device_id { [32 x i8] c"ti_sn65dsi86.gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.auxiliary_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gpio-controller\00", [16 x i8] zeroinitializer }, align 32
@ti_sn_bridge_gpio_names = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], [16 x i8] zeroinitializer }, align 32
@ti_sn_gpio_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ti_sn_gpio_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ti_sn_gpio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 1764, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"can't add gpio chip\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ti_sn_gpio_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/gpu/drm/bridge/ti-sn65dsi86.c\00", [58 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ti_sn_gpio_probe._entry_ptr = internal global ptr @ti_sn_gpio_probe._entry, section ".printk_index", align 4
@ti_sn_bridge_gpio_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.5, i32 1643, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Ignoring GPIO set while input\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ti_sn_bridge_gpio_set\00", [42 x i8] zeroinitializer }, align 32
@ti_sn_bridge_gpio_set._entry_ptr = internal global ptr @ti_sn_bridge_gpio_set._entry, section ".printk_index", align 4
@ti_sn_bridge_gpio_set._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.5, i32 1653, ptr @.str.12, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to set bridge GPIO %u: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ti_sn_bridge_gpio_set._entry_ptr.13 = internal global ptr @ti_sn_bridge_gpio_set._entry.10, section ".printk_index", align 4
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"GPIO1\00", [26 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"GPIO2\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"GPIO3\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"GPIO4\00", [26 x i8] zeroinitializer }, align 32
@ti_sn_pwm_driver = internal global { %struct.auxiliary_driver, [56 x i8] } { %struct.auxiliary_driver { ptr @ti_sn_pwm_probe, ptr @ti_sn_pwm_remove, ptr null, ptr null, ptr null, ptr @.str.18, %struct.device_driver zeroinitializer, ptr @ti_sn_pwm_id_table }, [56 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pwm\00", [28 x i8] zeroinitializer }, align 32
@ti_sn_pwm_id_table = internal constant { [2 x %struct.auxiliary_device_id], [56 x i8] } { [2 x %struct.auxiliary_device_id] [%struct.auxiliary_device_id { [32 x i8] c"ti_sn65dsi86.pwm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.auxiliary_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@ti_sn_pwm_ops = internal constant { %struct.pwm_ops, [56 x i8] } { %struct.pwm_ops { ptr @ti_sn_pwm_request, ptr @ti_sn_pwm_free, ptr null, ptr @ti_sn_pwm_apply, ptr @ti_sn_pwm_get_state, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@ti_sn_pwm_apply._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.5, i32 1372, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to mux in PWM function\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ti_sn_pwm_apply\00", [16 x i8] zeroinitializer }, align 32
@ti_sn_pwm_apply._entry_ptr = internal global ptr @ti_sn_pwm_apply._entry, section ".printk_index", align 4
@ti_sn_pwm_apply._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.5, i32 1448, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to update PWM_PRE_DIV\0A\00", [34 x i8] zeroinitializer }, align 32
@ti_sn_pwm_apply._entry_ptr.23 = internal global ptr @ti_sn_pwm_apply._entry.21, section ".printk_index", align 4
@ti_sn_pwm_apply._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.20, ptr @.str.5, i32 1460, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to update PWM_EN/PWM_INV\0A\00", [63 x i8] zeroinitializer }, align 32
@ti_sn_pwm_apply._entry_ptr.26 = internal global ptr @ti_sn_pwm_apply._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"bridge\00", [25 x i8] zeroinitializer }, align 32
@ti_sn_bridge_id_table = internal constant { [2 x %struct.auxiliary_device_id], [56 x i8] } { [2 x %struct.auxiliary_device_id] [%struct.auxiliary_device_id { [32 x i8] c"ti_sn65dsi86.bridge\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.auxiliary_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"could not find any panel node\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to create panel bridge\0A\00", [33 x i8] zeroinitializer }, align 32
@ti_sn_bridge_funcs = internal constant { %struct.drm_bridge_funcs, [60 x i8] } { %struct.drm_bridge_funcs { ptr @ti_sn_bridge_attach, ptr @ti_sn_bridge_detach, ptr @ti_sn_bridge_mode_valid, ptr null, ptr @ti_sn_bridge_disable, ptr @ti_sn_bridge_post_disable, ptr null, ptr @ti_sn_bridge_pre_enable, ptr @ti_sn_bridge_enable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to attach dsi host\0A\00", [37 x i8] zeroinitializer }, align 32
@__const.ti_sn_bridge_parse_lanes.lane_assignments = private unnamed_addr constant [4 x i32] [i32 0, i32 1, i32 2, i32 3], align 4
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"data-lanes\00", [21 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lane-polarities\00", [16 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"remote dsi host node not found\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Fix bridge driver to make connector optional!\00", [50 x i8] zeroinitializer }, align 32
@ti_sn_bridge_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.5, i32 756, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"[drm] *ERROR* Failed to register DP AUX channel: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ti_sn_bridge_attach\00", [44 x i8] zeroinitializer }, align 32
@ti_sn_bridge_attach._entry_ptr = internal global ptr @ti_sn_bridge_attach._entry, section ".printk_index", align 4
@ti_sn_bridge_connector_funcs = internal constant { %struct.drm_connector_funcs, [36 x i8] } { %struct.drm_connector_funcs { ptr null, ptr @drm_atomic_helper_connector_reset, ptr null, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr null, ptr null, ptr @drm_connector_cleanup, ptr @drm_atomic_helper_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to initialize connector with drm\0A\00", [55 x i8] zeroinitializer }, align 32
@ti_sn_bridge_connector_helper_funcs = internal global { %struct.drm_connector_helper_funcs, [56 x i8] } { %struct.drm_connector_helper_funcs { ptr @ti_sn_bridge_connector_get_modes, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@ti_sn_bridge_refclk_lut = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 12000000, i32 19200000, i32 26000000, i32 27000000, i32 38400000], [44 x i8] zeroinitializer }, align 32
@ti_sn_bridge_dsiclk_lut = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 468000000, i32 384000000, i32 416000000, i32 486000000, i32 460800000], [44 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"No supported DP rate\00", [43 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"*ERROR* %s (%d)\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"*ERROR* Can't read lane count (%d); assuming 4\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"*ERROR* Can't read eDP rev (%d), assuming 1.1\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"*ERROR* Can't read supported rate table (%d)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"*ERROR* No matching eDP rates in table; falling back\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"*ERROR* Can't read max rate (%d); assuming 5.4 GHz\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"*ERROR* Unexpected max rate (%#x); assuming 5.4 GHz\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DP_PLL_LOCK polling failed\00", [37 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Training complete polling failed\00", [63 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Link training failed, link is off\00", [62 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Link training needed %d retries\0A\00", [63 x i8] zeroinitializer }, align 32
@__const.ti_sn_attach_host.info = private unnamed_addr constant %struct.mipi_dsi_device_info { [20 x i8] c"ti_sn_bridge\00\00\00\00\00\00\00\00", i32 0, ptr null }, align 4
@.str.51 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"aux\00", [28 x i8] zeroinitializer }, align 32
@ti_sn_aux_id_table = internal constant { [2 x %struct.auxiliary_device_id], [56 x i8] } { [2 x %struct.auxiliary_device_id] [%struct.auxiliary_device_id { [32 x i8] c"ti_sn65dsi86.aux\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.auxiliary_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ti-sn65dsi86-aux\00", [47 x i8] zeroinitializer }, align 32
@ti_sn65dsi86_match_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,sn65dsi86\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ti_sn65dsi86_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ti_sn65dsi86_suspend, ptr @ti_sn65dsi86_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@ti_sn65dsi86_id = internal global { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ti,sn65dsi86\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"device doesn't support I2C\0A\00", [36 x i8] zeroinitializer }, align 32
@ti_sn65dsi86_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.54 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&pdata->comms_mutex\00", [44 x i8] zeroinitializer }, align 32
@ti_sn65dsi86_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ti_sn65dsi86_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 255, ptr null, ptr null, ptr @ti_sn_bridge_volatile_table, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"ti_sn65dsi86:1844:(&ti_sn65dsi86_regmap_config)->lock\00", [42 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"regmap i2c init failed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to get enable gpio from DT\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to parse regulators\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"refclk\00", [25 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to get reference clock\0A\00", [33 x i8] zeroinitializer }, align 32
@ti_sn_bridge_volatile_table = internal constant { %struct.regmap_access_table, [16 x i8] } { %struct.regmap_access_table { ptr @ti_sn65dsi86_volatile_ranges, i32 1, ptr null, i32 0 }, [16 x i8] zeroinitializer }, align 32
@ti_sn65dsi86_volatile_ranges = internal constant { [1 x %struct.regmap_range], [24 x i8] } { [1 x %struct.regmap_range] [%struct.regmap_range { i32 0, i32 255 }], [24 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vcca\00", [27 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"vcc\00", [28 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vccio\00", [26 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vpll\00", [27 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"status\00", [25 x i8] zeroinitializer }, align 32
@status_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @status_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"STATUS REGISTERS:\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"[0x%02x] = 0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to disable supplies %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to enable supplies %d\0A\00", [34 x i8] zeroinitializer }, align 32
@switch.table.ti_sn_bridge_enable = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 24, i32 24, i32 18, i32 16], [16 x i8] zeroinitializer }, align 32
@switch.table.ti_sn65dsi86_enable_comms = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 24, i32 24, i32 18, i32 16], [16 x i8] zeroinitializer }, align 32
@switch.table.ti_sn_aux_transfer = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\04\04\04\04\04\04\04\04\01\01", [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 6, i64 10, i64 20]
@__sancov_gen_cov_switch_values.71 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 8, i64 9]
@__sancov_gen_cov_switch_values.72 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 8]
@__sancov_gen_cov_switch_values.73 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 8]
@___asan_gen_.74 = private unnamed_addr constant [20 x i8] c"ti_sn_bridge_driver\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 1290, i32 32 }
@___asan_gen_.77 = private unnamed_addr constant [17 x i8] c"ti_sn_aux_driver\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 643, i32 32 }
@___asan_gen_.80 = private unnamed_addr constant [20 x i8] c"ti_sn65dsi86_driver\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 1917, i32 26 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 1943, i32 8 }
@___asan_gen_.86 = private unnamed_addr constant [18 x i8] c"ti_sn_gpio_driver\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 1776, i32 32 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 1777, i32 10 }
@___asan_gen_.92 = private unnamed_addr constant [20 x i8] c"ti_sn_gpio_id_table\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 1769, i32 41 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 1743, i32 50 }
@___asan_gen_.98 = private unnamed_addr constant [24 x i8] c"ti_sn_bridge_gpio_names\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 1732, i32 27 }
@___asan_gen_.101 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.104 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 1762, i32 8 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 1764, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 1643, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 1652, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 1733, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 1733, i32 11 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 1733, i32 20 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 1733, i32 29 }
@___asan_gen_.155 = private unnamed_addr constant [17 x i8] c"ti_sn_pwm_driver\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 1551, i32 32 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 1552, i32 10 }
@___asan_gen_.161 = private unnamed_addr constant [19 x i8] c"ti_sn_pwm_id_table\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 1546, i32 41 }
@___asan_gen_.164 = private unnamed_addr constant [14 x i8] c"ti_sn_pwm_ops\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 1514, i32 29 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 1372, i32 5 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 1448, i32 4 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 1460, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 1291, i32 10 }
@___asan_gen_.191 = private unnamed_addr constant [22 x i8] c"ti_sn_bridge_id_table\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 1285, i32 41 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 1241, i32 10 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 1245, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant [19 x i8] c"ti_sn_bridge_funcs\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 1157, i32 38 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 1262, i32 34 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 1189, i32 51 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 1193, i32 40 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 1223, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 749, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 756, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant [29 x i8] c"ti_sn_bridge_connector_funcs\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 670, i32 41 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 686, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant [36 x i8] c"ti_sn_bridge_connector_helper_funcs\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 666, i32 42 }
@___asan_gen_.236 = private unnamed_addr constant [24 x i8] c"ti_sn_bridge_refclk_lut\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 256, i32 18 }
@___asan_gen_.239 = private unnamed_addr constant [24 x i8] c"ti_sn_bridge_dsiclk_lut\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 265, i32 18 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 1061, i32 29 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 1115, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 992, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 874, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 887, i32 4 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 913, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 920, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 928, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 1018, i32 19 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 1036, i32 20 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 1038, i32 20 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 1048, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 644, i32 10 }
@___asan_gen_.284 = private unnamed_addr constant [19 x i8] c"ti_sn_aux_id_table\00", align 1
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 638, i32 41 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 622, i32 20 }
@___asan_gen_.290 = private unnamed_addr constant [25 x i8] c"ti_sn65dsi86_match_table\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 1911, i32 34 }
@___asan_gen_.293 = private unnamed_addr constant [20 x i8] c"ti_sn65dsi86_pm_ops\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 393, i32 32 }
@___asan_gen_.296 = private unnamed_addr constant [16 x i8] c"ti_sn65dsi86_id\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 1905, i32 29 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 1831, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 1841, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.311 = private unnamed_addr constant [27 x i8] c"ti_sn65dsi86_regmap_config\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 211, i32 35 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 1843, i32 18 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 1847, i32 10 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 1849, i32 52 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 1853, i32 10 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 1857, i32 34 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 1859, i32 45 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 1862, i32 10 }
@___asan_gen_.335 = private unnamed_addr constant [28 x i8] c"ti_sn_bridge_volatile_table\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 206, i32 41 }
@___asan_gen_.338 = private unnamed_addr constant [29 x i8] c"ti_sn65dsi86_volatile_ranges\00", align 1
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 202, i32 34 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 1813, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 1813, i32 11 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 1813, i32 18 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 1813, i32 27 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 445, i32 22 }
@___asan_gen_.356 = private unnamed_addr constant [12 x i8] c"status_fops\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 419, i32 1 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 404, i32 14 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 411, i32 17 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 388, i32 3 }
@___asan_gen_.368 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.369 = private constant [41 x i8] c"../drivers/gpu/drm/bridge/ti-sn65dsi86.c\00", align 1
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.369, i32 354, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant [33 x i8] c"switch.table.ti_sn_bridge_enable\00", align 1
@___asan_gen_.372 = private unnamed_addr constant [39 x i8] c"switch.table.ti_sn65dsi86_enable_comms\00", align 1
@___asan_gen_.373 = private unnamed_addr constant [32 x i8] c"switch.table.ti_sn_aux_transfer\00", align 1
@llvm.compiler.used = appending global [116 x ptr] [ptr @__UNIQUE_ID_author336, ptr @__UNIQUE_ID_description337, ptr @__UNIQUE_ID_file338, ptr @__UNIQUE_ID_license339, ptr @__exitcall_ti_sn65dsi86_exit, ptr @__initcall__kmod_ti_sn65dsi86__335_1964_ti_sn65dsi86_init6, ptr @ti_sn65dsi86_exit, ptr @ti_sn_bridge_attach._entry, ptr @ti_sn_bridge_attach._entry_ptr, ptr @ti_sn_bridge_gpio_set._entry, ptr @ti_sn_bridge_gpio_set._entry.10, ptr @ti_sn_bridge_gpio_set._entry_ptr, ptr @ti_sn_bridge_gpio_set._entry_ptr.13, ptr @ti_sn_gpio_probe._entry, ptr @ti_sn_gpio_probe._entry_ptr, ptr @ti_sn_pwm_apply._entry, ptr @ti_sn_pwm_apply._entry.21, ptr @ti_sn_pwm_apply._entry.24, ptr @ti_sn_pwm_apply._entry_ptr, ptr @ti_sn_pwm_apply._entry_ptr.23, ptr @ti_sn_pwm_apply._entry_ptr.26, ptr @ti_sn_bridge_driver, ptr @ti_sn_aux_driver, ptr @ti_sn65dsi86_driver, ptr @.str, ptr @ti_sn_gpio_driver, ptr @.str.1, ptr @ti_sn_gpio_id_table, ptr @.str.2, ptr @ti_sn_bridge_gpio_names, ptr @ti_sn_gpio_probe.lock_key, ptr @ti_sn_gpio_probe.request_key, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @ti_sn_pwm_driver, ptr @.str.18, ptr @ti_sn_pwm_id_table, ptr @ti_sn_pwm_ops, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @ti_sn_bridge_id_table, ptr @.str.28, ptr @.str.29, ptr @ti_sn_bridge_funcs, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @ti_sn_bridge_connector_funcs, ptr @.str.37, ptr @ti_sn_bridge_connector_helper_funcs, ptr @ti_sn_bridge_refclk_lut, ptr @ti_sn_bridge_dsiclk_lut, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @ti_sn_aux_id_table, ptr @.str.52, ptr @ti_sn65dsi86_match_table, ptr @ti_sn65dsi86_pm_ops, ptr @ti_sn65dsi86_id, ptr @.str.53, ptr @ti_sn65dsi86_probe.__key, ptr @.str.54, ptr @ti_sn65dsi86_probe._key, ptr @ti_sn65dsi86_regmap_config, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @ti_sn_bridge_volatile_table, ptr @ti_sn65dsi86_volatile_ranges, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @status_fops, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @switch.table.ti_sn_bridge_enable, ptr @switch.table.ti_sn65dsi86_enable_comms, ptr @switch.table.ti_sn_aux_transfer], section "llvm.metadata"
@0 = internal global [102 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_sn_bridge_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_sn_aux_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_sn65dsi86_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_sn_gpio_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_sn_gpio_id_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_sn_bridge_gpio_names to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_sn_gpio_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_sn_gpio_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_sn_gpio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_sn_bridge_gpio_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_sn_bridge_gpio_set._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_sn_pwm_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_sn_pwm_id_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_sn_pwm_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_sn_pwm_apply._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_sn_pwm_apply._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_sn_pwm_apply._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_sn_bridge_id_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_sn_bridge_funcs to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_sn_bridge_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_sn_bridge_connector_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_sn_bridge_connector_helper_funcs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_sn_bridge_refclk_lut to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_sn_bridge_dsiclk_lut to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_sn_aux_id_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_sn65dsi86_match_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_sn65dsi86_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_sn65dsi86_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_sn65dsi86_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_sn65dsi86_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_sn65dsi86_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_sn_bridge_volatile_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_sn65dsi86_volatile_ranges to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @status_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ti_sn_bridge_enable to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ti_sn65dsi86_enable_comms to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ti_sn_aux_transfer to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_sn65dsi86_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ti_sn65dsi86_driver) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @__auxiliary_driver_register(ptr noundef nonnull @ti_sn_gpio_driver, ptr noundef null, ptr noundef nonnull @.str) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.err_main_was_registered_crit_edge

if.end.err_main_was_registered_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_main_was_registered

if.end4:                                          ; preds = %if.end
  %call.i23 = tail call i32 @__auxiliary_driver_register(ptr noundef nonnull @ti_sn_pwm_driver, ptr noundef null, ptr noundef nonnull @.str) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i23)
  %tobool6.not = icmp eq i32 %call.i23, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.err_gpio_was_registered_crit_edge

if.end4.err_gpio_was_registered_crit_edge:        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_gpio_was_registered

if.end8:                                          ; preds = %if.end4
  %call9 = tail call i32 @__auxiliary_driver_register(ptr noundef nonnull @ti_sn_aux_driver, ptr noundef null, ptr noundef nonnull @.str) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.err_pwm_was_registered_crit_edge

if.end8.err_pwm_was_registered_crit_edge:         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_pwm_was_registered

if.end12:                                         ; preds = %if.end8
  %call13 = tail call i32 @__auxiliary_driver_register(ptr noundef nonnull @ti_sn_bridge_driver, ptr noundef null, ptr noundef nonnull @.str) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end12.cleanup_crit_edge, label %err_aux_was_registered

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

err_aux_was_registered:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @auxiliary_driver_unregister(ptr noundef nonnull @ti_sn_aux_driver) #9
  br label %err_pwm_was_registered

err_pwm_was_registered:                           ; preds = %err_aux_was_registered, %if.end8.err_pwm_was_registered_crit_edge
  %ret.0 = phi i32 [ %call9, %if.end8.err_pwm_was_registered_crit_edge ], [ %call13, %err_aux_was_registered ]
  tail call void @auxiliary_driver_unregister(ptr noundef nonnull @ti_sn_pwm_driver) #9
  br label %err_gpio_was_registered

err_gpio_was_registered:                          ; preds = %err_pwm_was_registered, %if.end4.err_gpio_was_registered_crit_edge
  %ret.1 = phi i32 [ %call.i23, %if.end4.err_gpio_was_registered_crit_edge ], [ %ret.0, %err_pwm_was_registered ]
  tail call void @auxiliary_driver_unregister(ptr noundef nonnull @ti_sn_gpio_driver) #9
  br label %err_main_was_registered

err_main_was_registered:                          ; preds = %err_gpio_was_registered, %if.end.err_main_was_registered_crit_edge
  %ret.2 = phi i32 [ %call.i, %if.end.err_main_was_registered_crit_edge ], [ %ret.1, %err_gpio_was_registered ]
  tail call void @i2c_del_driver(ptr noundef nonnull @ti_sn65dsi86_driver) #9
  br label %cleanup

cleanup:                                          ; preds = %err_main_was_registered, %if.end12.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %err_main_was_registered ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ti_sn65dsi86_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @auxiliary_driver_unregister(ptr noundef nonnull @ti_sn_bridge_driver) #9
  tail call void @auxiliary_driver_unregister(ptr noundef nonnull @ti_sn_aux_driver) #9
  tail call void @auxiliary_driver_unregister(ptr noundef nonnull @ti_sn_pwm_driver) #9
  tail call void @auxiliary_driver_unregister(ptr noundef nonnull @ti_sn_gpio_driver) #9
  tail call void @i2c_del_driver(ptr noundef nonnull @ti_sn65dsi86_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @auxiliary_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__auxiliary_driver_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_sn_gpio_probe(ptr noundef %adev, ptr nocapture noundef readnone %id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %adev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %dev1 = getelementptr inbounds %struct.ti_sn65dsi86, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %call.i = tail call ptr @of_find_property(ptr noundef %7, ptr noundef nonnull @.str.2, ptr noundef null) #9
  %tobool.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev1, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.dev_name.exit_crit_edge

if.end.dev_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %13, %if.end.i ], [ %11, %if.end.dev_name.exit_crit_edge ]
  %gchip = getelementptr inbounds %struct.ti_sn65dsi86, ptr %3, i32 0, i32 20
  %14 = ptrtoint ptr %gchip to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %retval.0.i, ptr %gchip, align 8
  %parent7 = getelementptr inbounds %struct.ti_sn65dsi86, ptr %3, i32 0, i32 20, i32 2
  %15 = ptrtoint ptr %parent7 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %9, ptr %parent7, align 8
  %owner = getelementptr inbounds %struct.ti_sn65dsi86, ptr %3, i32 0, i32 20, i32 4
  %16 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %owner, align 8
  %of_xlate = getelementptr inbounds %struct.ti_sn65dsi86, ptr %3, i32 0, i32 20, i32 41
  %17 = ptrtoint ptr %of_xlate to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @tn_sn_bridge_of_xlate, ptr %of_xlate, align 8
  %of_gpio_n_cells = getelementptr inbounds %struct.ti_sn65dsi86, ptr %3, i32 0, i32 20, i32 40
  %18 = ptrtoint ptr %of_gpio_n_cells to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %of_gpio_n_cells, align 4
  %request = getelementptr inbounds %struct.ti_sn65dsi86, ptr %3, i32 0, i32 20, i32 5
  %19 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @ti_sn_bridge_gpio_request, ptr %request, align 4
  %free = getelementptr inbounds %struct.ti_sn65dsi86, ptr %3, i32 0, i32 20, i32 6
  %20 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @ti_sn_bridge_gpio_free, ptr %free, align 8
  %get_direction = getelementptr inbounds %struct.ti_sn65dsi86, ptr %3, i32 0, i32 20, i32 7
  %21 = ptrtoint ptr %get_direction to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @ti_sn_bridge_gpio_get_direction, ptr %get_direction, align 4
  %direction_input = getelementptr inbounds %struct.ti_sn65dsi86, ptr %3, i32 0, i32 20, i32 8
  %22 = ptrtoint ptr %direction_input to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @ti_sn_bridge_gpio_direction_input, ptr %direction_input, align 8
  %direction_output = getelementptr inbounds %struct.ti_sn65dsi86, ptr %3, i32 0, i32 20, i32 9
  %23 = ptrtoint ptr %direction_output to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @ti_sn_bridge_gpio_direction_output, ptr %direction_output, align 4
  %get = getelementptr inbounds %struct.ti_sn65dsi86, ptr %3, i32 0, i32 20, i32 10
  %24 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @ti_sn_bridge_gpio_get, ptr %get, align 8
  %set = getelementptr inbounds %struct.ti_sn65dsi86, ptr %3, i32 0, i32 20, i32 12
  %25 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @ti_sn_bridge_gpio_set, ptr %set, align 8
  %can_sleep = getelementptr inbounds %struct.ti_sn65dsi86, ptr %3, i32 0, i32 20, i32 23
  %26 = ptrtoint ptr %can_sleep to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %can_sleep, align 8
  %names = getelementptr inbounds %struct.ti_sn65dsi86, ptr %3, i32 0, i32 20, i32 22
  %27 = ptrtoint ptr %names to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @ti_sn_bridge_gpio_names, ptr %names, align 4
  %ngpio = getelementptr inbounds %struct.ti_sn65dsi86, ptr %3, i32 0, i32 20, i32 20
  %28 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 4, ptr %ngpio, align 8
  %base = getelementptr inbounds %struct.ti_sn65dsi86, ptr %3, i32 0, i32 20, i32 19
  %29 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %base, align 4
  %call24 = tail call i32 @devm_gpiochip_add_data_with_key(ptr noundef %adev, ptr noundef %gchip, ptr noundef %3, ptr noundef nonnull @ti_sn_gpio_probe.lock_key, ptr noundef nonnull @ti_sn_gpio_probe.request_key) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool.not = icmp eq i32 %call24, 0
  br i1 %tobool.not, label %dev_name.exit.cleanup_crit_edge, label %do.end

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.3) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end, %dev_name.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call24, %do.end ], [ 0, %dev_name.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tn_sn_bridge_of_xlate(ptr nocapture noundef readonly %chip, ptr nocapture noundef readonly %gpiospec, ptr noundef writeonly %flags) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %args_count = getelementptr inbounds %struct.of_phandle_args, ptr %gpiospec, i32 0, i32 1
  %0 = ptrtoint ptr %args_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %args_count, align 4
  %of_gpio_n_cells = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 40
  %2 = ptrtoint ptr %of_gpio_n_cells to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %of_gpio_n_cells, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp ult i32 %1, %3
  br i1 %cmp, label %do.end, label %if.end21, !prof !208

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1585, i32 noundef 9, ptr noundef null) #9
  br label %return

if.end21:                                         ; preds = %entry
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %gpiospec, i32 0, i32 2
  %4 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %args, align 4
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 20
  %6 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %ngpio, align 4
  %conv = zext i16 %7 to i32
  %8 = add i32 %5, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %conv)
  %.not = icmp ult i32 %8, %conv
  br i1 %.not, label %if.end29, label %if.end21.return_crit_edge

if.end21.return_crit_edge:                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end29:                                         ; preds = %if.end21
  %tobool30.not = icmp eq ptr %flags, null
  br i1 %tobool30.not, label %if.end29.if.end34_crit_edge, label %if.then31

if.end29.if.end34_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then31:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx33 = getelementptr %struct.of_phandle_args, ptr %gpiospec, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx33, align 4
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %flags, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %if.end29.if.end34_crit_edge
  %12 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %args, align 4
  %sub = add i32 %13, -1
  br label %return

return:                                           ; preds = %if.end34, %if.end21.return_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %sub, %if.end34 ], [ -22, %if.end21.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_sn_bridge_gpio_request(ptr noundef %chip, i32 noundef %offset) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %offset)
  %cmp = icmp eq i32 %offset, 3
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %pwm_pin_busy.i = getelementptr inbounds %struct.ti_sn65dsi86, ptr %call, i32 0, i32 24
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pwm_pin_busy.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !209
  tail call void @llvm.prefetch.p0(ptr %pwm_pin_busy.i, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 1, ptr %pwm_pin_busy.i) #9, !srcloc !210
  %asmresult.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !211
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %tobool.not.i = icmp eq i32 %asmresult.i.i.i, 0
  %cond.i = select i1 %tobool.not.i, i32 0, i32 -16
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond.i, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ti_sn_bridge_gpio_free(ptr noundef %chip, i32 noundef %offset) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #9
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %chip) #9
  %gchip_output.i = getelementptr inbounds %struct.ti_sn65dsi86, ptr %call.i, i32 0, i32 21
  %call1.i = tail call i32 @_test_and_clear_bit(i32 noundef %offset, ptr noundef %gchip_output.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %entry.ti_sn_bridge_gpio_direction_input.exit_crit_edge, label %if.end.i

entry.ti_sn_bridge_gpio_direction_input.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %ti_sn_bridge_gpio_direction_input.exit

if.end.i:                                         ; preds = %entry
  %mul.i = shl i32 %offset, 1
  %regmap.i = getelementptr inbounds %struct.ti_sn65dsi86, ptr %call.i, i32 0, i32 5
  %0 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap.i, align 4
  %shl.i = shl i32 3, %mul.i
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 95, i32 noundef %shl.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool4.not.i, label %if.end8.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef %offset, ptr noundef %gchip_output.i) #9
  br label %ti_sn_bridge_gpio_direction_input.exit

if.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.ti_sn65dsi86, ptr %call.i, i32 0, i32 4
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 8
  %call.i19.i = tail call i32 @__pm_runtime_suspend(ptr noundef %3, i32 noundef 13) #9
  br label %ti_sn_bridge_gpio_direction_input.exit

ti_sn_bridge_gpio_direction_input.exit:           ; preds = %if.end8.i, %if.then5.i, %entry.ti_sn_bridge_gpio_direction_input.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %offset)
  %cmp = icmp eq i32 %offset, 3
  br i1 %cmp, label %if.then, label %ti_sn_bridge_gpio_direction_input.exit.if.end_crit_edge

ti_sn_bridge_gpio_direction_input.exit.if.end_crit_edge: ; preds = %ti_sn_bridge_gpio_direction_input.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %ti_sn_bridge_gpio_direction_input.exit
  call void @__sanitizer_cov_trace_pc() #11
  %pwm_pin_busy.i = getelementptr inbounds %struct.ti_sn65dsi86, ptr %call, i32 0, i32 24
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pwm_pin_busy.i, i32 noundef 4) #9
  %4 = ptrtoint ptr %pwm_pin_busy.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 0, ptr %pwm_pin_busy.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %ti_sn_bridge_gpio_direction_input.exit.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_sn_bridge_gpio_get_direction(ptr noundef %chip, i32 noundef %offset) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #9
  %gchip_output = getelementptr inbounds %struct.ti_sn65dsi86, ptr %call, i32 0, i32 21
  %div3.i = lshr i32 %offset, 5
  %arrayidx.i = getelementptr i32, ptr %gchip_output, i32 %div3.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %offset, 31
  %2 = xor i32 %1, -1
  %3 = lshr i32 %2, %and.i
  %4 = and i32 %3, 1
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_sn_bridge_gpio_direction_input(ptr noundef %chip, i32 noundef %offset) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #9
  %gchip_output = getelementptr inbounds %struct.ti_sn65dsi86, ptr %call, i32 0, i32 21
  %call1 = tail call i32 @_test_and_clear_bit(i32 noundef %offset, ptr noundef %gchip_output) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %mul = shl i32 %offset, 1
  %regmap = getelementptr inbounds %struct.ti_sn65dsi86, ptr %call, i32 0, i32 5
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %shl = shl i32 3, %mul
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 95, i32 noundef %shl, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not = icmp eq i32 %call.i, 0
  br i1 %tobool4.not, label %if.end8, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_set_bit(i32 noundef %offset, ptr noundef %gchip_output) #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.ti_sn65dsi86, ptr %call, i32 0, i32 4
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %call.i19 = tail call i32 @__pm_runtime_suspend(ptr noundef %3, i32 noundef 13) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then5 ], [ 0, %if.end8 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_sn_bridge_gpio_direction_output(ptr noundef %chip, i32 noundef %offset, i32 noundef %val) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #9
  %gchip_output = getelementptr inbounds %struct.ti_sn65dsi86, ptr %call, i32 0, i32 21
  %call1 = tail call i32 @_test_and_set_bit(i32 noundef %offset, ptr noundef %gchip_output) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %mul = shl i32 %offset, 1
  %dev = getelementptr inbounds %struct.ti_sn65dsi86, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #9
  %call.i24 = tail call ptr @gpiochip_get_data(ptr noundef %chip) #9
  %gchip_output.i = getelementptr inbounds %struct.ti_sn65dsi86, ptr %call.i24, i32 0, i32 21
  %div3.i.i = lshr i32 %offset, 5
  %arrayidx.i.i = getelementptr i32, ptr %gchip_output.i, i32 %div3.i.i
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %offset, 31
  %4 = shl nuw i32 1, %and.i.i
  %5 = and i32 %3, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.ti_sn65dsi86, ptr %call.i24, i32 0, i32 4
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.8) #12
  br label %ti_sn_bridge_gpio_set.exit

if.end.i:                                         ; preds = %if.end
  %and.i = and i32 %val, 1
  %regmap.i = getelementptr inbounds %struct.ti_sn65dsi86, ptr %call.i24, i32 0, i32 5
  %8 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i, align 4
  %shl.i = shl nuw i32 1, %offset
  %shl3.i = shl nuw i32 %and.i, %offset
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 94, i32 noundef %shl.i, i32 noundef %shl3.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool5.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool5.not.i, label %if.end.i.ti_sn_bridge_gpio_set.exit_crit_edge, label %do.end9.i

if.end.i.ti_sn_bridge_gpio_set.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ti_sn_bridge_gpio_set.exit

do.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev10.i = getelementptr inbounds %struct.ti_sn65dsi86, ptr %call.i24, i32 0, i32 4
  %10 = ptrtoint ptr %dev10.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev10.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.11, i32 noundef %offset, i32 noundef %call.i.i) #12
  br label %ti_sn_bridge_gpio_set.exit

ti_sn_bridge_gpio_set.exit:                       ; preds = %do.end9.i, %if.end.i.ti_sn_bridge_gpio_set.exit_crit_edge, %do.end.i
  %regmap = getelementptr inbounds %struct.ti_sn65dsi86, ptr %call, i32 0, i32 5
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %shl = shl i32 3, %mul
  %shl3 = shl nuw i32 1, %mul
  %call.i25 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 95, i32 noundef %shl, i32 noundef %shl3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25)
  %tobool5.not = icmp eq i32 %call.i25, 0
  br i1 %tobool5.not, label %ti_sn_bridge_gpio_set.exit.cleanup_crit_edge, label %if.then6

ti_sn_bridge_gpio_set.exit.cleanup_crit_edge:     ; preds = %ti_sn_bridge_gpio_set.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then6:                                         ; preds = %ti_sn_bridge_gpio_set.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_clear_bit(i32 noundef %offset, ptr noundef %gchip_output) #9
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 8
  %call.i26 = tail call i32 @__pm_runtime_suspend(ptr noundef %15, i32 noundef 13) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %ti_sn_bridge_gpio_set.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call.i25, %if.then6 ], [ 0, %ti_sn_bridge_gpio_set.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_sn_bridge_gpio_get(ptr noundef %chip, i32 noundef %offset) #3 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !212
  %dev = getelementptr inbounds %struct.ti_sn65dsi86, ptr %call, i32 0, i32 4
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %2, i32 noundef 4) #9
  %regmap = getelementptr inbounds %struct.ti_sn65dsi86, ptr %call, i32 0, i32 5
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call2 = call i32 @regmap_read(ptr noundef %4, i32 noundef 94, ptr noundef nonnull %val) #9
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 8
  %call.i12 = call i32 @__pm_runtime_suspend(ptr noundef %6, i32 noundef 13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %add = add i32 %offset, 4
  %9 = lshr i32 %8, %add
  %10 = and i32 %9, 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %10, %if.end ], [ %call2, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ti_sn_bridge_gpio_set(ptr noundef %chip, i32 noundef %offset, i32 noundef %val) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #9
  %gchip_output = getelementptr inbounds %struct.ti_sn65dsi86, ptr %call, i32 0, i32 21
  %div3.i = lshr i32 %offset, 5
  %arrayidx.i = getelementptr i32, ptr %gchip_output, i32 %div3.i
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %offset, 31
  %2 = shl nuw i32 1, %and.i
  %3 = and i32 %1, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.ti_sn65dsi86, ptr %call, i32 0, i32 4
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.8) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %val, 1
  %regmap = getelementptr inbounds %struct.ti_sn65dsi86, ptr %call, i32 0, i32 5
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %shl = shl nuw i32 1, %offset
  %shl3 = shl nuw i32 %and, %offset
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 94, i32 noundef %shl, i32 noundef %shl3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not = icmp eq i32 %call.i, 0
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %do.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev10 = getelementptr inbounds %struct.ti_sn65dsi86, ptr %call, i32 0, i32 4
  %8 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev10, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.11, i32 noundef %offset, i32 noundef %call.i) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end9, %if.end.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_sn_pwm_probe(ptr nocapture noundef readonly %adev, ptr nocapture noundef readnone %id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %adev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %dev1 = getelementptr inbounds %struct.ti_sn65dsi86, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 8
  %pchip = getelementptr inbounds %struct.ti_sn65dsi86, ptr %3, i32 0, i32 22
  %6 = ptrtoint ptr %pchip to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %pchip, align 8
  %ops = getelementptr inbounds %struct.ti_sn65dsi86, ptr %3, i32 0, i32 22, i32 1
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @ti_sn_pwm_ops, ptr %ops, align 4
  %npwm = getelementptr inbounds %struct.ti_sn65dsi86, ptr %3, i32 0, i32 22, i32 3
  %8 = ptrtoint ptr %npwm to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %npwm, align 4
  %of_xlate = getelementptr inbounds %struct.ti_sn65dsi86, ptr %3, i32 0, i32 22, i32 4
  %9 = ptrtoint ptr %of_xlate to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @of_pwm_single_xlate, ptr %of_xlate, align 8
  %of_pwm_n_cells = getelementptr inbounds %struct.ti_sn65dsi86, ptr %3, i32 0, i32 22, i32 5
  %10 = ptrtoint ptr %of_pwm_n_cells to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %of_pwm_n_cells, align 4
  %call8 = tail call i32 @pwmchip_add(ptr noundef %pchip) #9
  ret i32 %call8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ti_sn_pwm_remove(ptr nocapture noundef readonly %adev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %adev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %pchip = getelementptr inbounds %struct.ti_sn65dsi86, ptr %3, i32 0, i32 22
  tail call void @pwmchip_remove(ptr noundef %pchip) #9
  %pwm_enabled = getelementptr inbounds %struct.ti_sn65dsi86, ptr %3, i32 0, i32 23
  %4 = ptrtoint ptr %pwm_enabled to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pwm_enabled, align 4, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev1 = getelementptr inbounds %struct.ti_sn65dsi86, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1, align 8
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %7, i32 noundef 4) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_pwm_single_xlate(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwmchip_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_sn_pwm_request(ptr noundef %chip, ptr nocapture noundef readnone %pwm) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pwm_pin_busy.i = getelementptr i8, ptr %chip, i32 40
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pwm_pin_busy.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !209
  tail call void @llvm.prefetch.p0(ptr %pwm_pin_busy.i, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 1, ptr %pwm_pin_busy.i) #9, !srcloc !210
  %asmresult.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !211
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %tobool.not.i = icmp eq i32 %asmresult.i.i.i, 0
  %cond.i = select i1 %tobool.not.i, i32 0, i32 -16
  ret i32 %cond.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ti_sn_pwm_free(ptr noundef %chip, ptr nocapture noundef readnone %pwm) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pwm_pin_busy.i = getelementptr i8, ptr %chip, i32 40
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pwm_pin_busy.i, i32 noundef 4) #9
  %0 = ptrtoint ptr %pwm_pin_busy.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 0, ptr %pwm_pin_busy.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_sn_pwm_apply(ptr nocapture noundef %chip, ptr nocapture noundef readnone %pwm, ptr nocapture noundef readonly %state) #3 align 64 {
entry:
  %buf.i196 = alloca [2 x i8], align 1
  %buf.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pwm_enabled = getelementptr i8, ptr %chip, i32 36
  %0 = ptrtoint ptr %pwm_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pwm_enabled, align 4, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then:                                          ; preds = %entry
  %dev = getelementptr i8, ptr %chip, i32 -3584
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then2, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %call.i193 = tail call i32 @__pm_runtime_idle(ptr noundef %5, i32 noundef 4) #9
  br label %cleanup

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %enabled = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 3
  %6 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %enabled, align 4, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool6.not = icmp eq i8 %7, 0
  br i1 %tobool6.not, label %if.end5.do.body69_crit_edge, label %if.then7

if.end5.do.body69_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body69

if.then7:                                         ; preds = %if.end5
  %8 = ptrtoint ptr %pwm_enabled to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %pwm_enabled, align 4, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool9.not = icmp eq i8 %9, 0
  br i1 %tobool9.not, label %if.then10, label %if.then7.if.end16_crit_edge

if.then7.if.end16_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then10:                                        ; preds = %if.then7
  %regmap = getelementptr i8, ptr %chip, i32 -3580
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call.i194 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 95, i32 noundef 192, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i194)
  %tobool12.not = icmp eq i32 %call.i194, 0
  br i1 %tobool12.not, label %if.then10.if.end16_crit_edge, label %do.end

if.then10.if.end16_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

do.end:                                           ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  %dev14 = getelementptr i8, ptr %chip, i32 -3584
  %12 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev14, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.19) #12
  br label %outthread-pre-split

if.end16:                                         ; preds = %if.then10.if.end16_crit_edge, %if.then7.if.end16_crit_edge
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %state, align 8
  %pwm_refclk_freq = getelementptr i8, ptr %chip, i32 44
  %16 = ptrtoint ptr %pwm_refclk_freq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pwm_refclk_freq, align 4
  %div = udiv i32 1000000000, %17
  %conv = zext i32 %div to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %15, i64 %conv)
  %cmp18.not = icmp ugt i64 %15, %conv
  br i1 %cmp18.not, label %if.else174.i.i, label %if.end16.outthread-pre-split_crit_edge

if.end16.outthread-pre-split_crit_edge:           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %outthread-pre-split

if.else174.i.i:                                   ; preds = %if.end16
  %18 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %17, i64 16711680000000000) #13, !srcloc !214
  %asmresult1.i.i.i = extractvalue { i64, i64 } %18, 1
  %19 = tail call i64 @llvm.umin.i64(i64 %15, i64 %asmresult1.i.i.i)
  %conv29 = zext i32 %17 to i64
  %mul = mul i64 %19, %conv29
  %sub = add i64 %mul, 65535999999999
  %call30 = tail call i64 @div64_u64(i64 noundef %sub, i64 noundef 65536000000000) #9
  %conv31 = trunc i64 %call30 to i32
  %20 = ptrtoint ptr %pwm_refclk_freq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pwm_refclk_freq, align 4
  %conv33 = zext i32 %21 to i64
  %mul34 = mul i64 %19, %conv33
  %conv35 = and i64 %call30, 4294967295
  %mul36 = mul nuw nsw i64 %conv35, 1000000000
  %call37 = tail call i64 @div64_u64(i64 noundef %mul34, i64 noundef %mul36) #9
  %duty_cycle = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 1
  %22 = ptrtoint ptr %duty_cycle to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %duty_cycle, align 8
  %24 = ptrtoint ptr %pwm_refclk_freq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pwm_refclk_freq, align 4
  %conv41 = zext i32 %25 to i64
  %mul42 = mul i64 %23, %conv41
  %call45 = tail call i64 @div64_u64(i64 noundef %mul42, i64 noundef %mul36) #9
  %regmap51 = getelementptr i8, ptr %chip, i32 -3580
  %26 = ptrtoint ptr %regmap51 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap51, align 4
  %call52 = tail call i32 @regmap_write(ptr noundef %27, i32 noundef 160, i32 noundef %conv31) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end59, label %do.end57

do.end57:                                         ; preds = %if.else174.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev58 = getelementptr i8, ptr %chip, i32 -3584
  %28 = ptrtoint ptr %dev58 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev58, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.22) #12
  br label %outthread-pre-split

if.end59:                                         ; preds = %if.else174.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %30 = trunc i64 %call37 to i32
  %conv39 = add i32 %30, -1
  %conv46 = trunc i64 %call45 to i32
  %31 = tail call i32 @llvm.umin.i32(i32 %conv39, i32 %conv46)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #9
  %32 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %conv1.i = trunc i32 %conv39 to i8
  %33 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv1.i, ptr %buf.i, align 1
  %34 = lshr i32 %conv39, 8
  %conv3.i = trunc i32 %34 to i8
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv3.i, ptr %32, align 1
  %36 = ptrtoint ptr %regmap51 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap51, align 4
  %call.i195 = call i32 @regmap_bulk_write(ptr noundef %37, i32 noundef 161, ptr noundef nonnull %buf.i, i32 noundef 2) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i196) #9
  %38 = getelementptr inbounds [2 x i8], ptr %buf.i196, i32 0, i32 1
  %conv1.i197 = trunc i32 %31 to i8
  %39 = ptrtoint ptr %buf.i196 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv1.i197, ptr %buf.i196, align 1
  %40 = lshr i32 %31, 8
  %conv3.i198 = trunc i32 %40 to i8
  %41 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv3.i198, ptr %38, align 1
  %42 = ptrtoint ptr %regmap51 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regmap51, align 4
  %call.i200 = call i32 @regmap_bulk_write(ptr noundef %43, i32 noundef 163, ptr noundef nonnull %buf.i196, i32 noundef 2) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i196) #9
  br label %do.body69

do.body69:                                        ; preds = %if.end59, %if.end5.do.body69_crit_edge
  %44 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %enabled, align 4, !range !213
  %46 = shl nuw nsw i8 %45, 1
  %shl = zext i8 %46 to i32
  %polarity = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 2
  %47 = ptrtoint ptr %polarity to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %polarity, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %48)
  %cmp100 = icmp eq i32 %48, 1
  %conv101 = zext i1 %cmp100 to i32
  %or = or i32 %conv101, %shl
  %regmap125 = getelementptr i8, ptr %chip, i32 -3580
  %49 = ptrtoint ptr %regmap125 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regmap125, align 4
  %call126 = call i32 @regmap_write(ptr noundef %50, i32 noundef 165, i32 noundef %or) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %tobool127.not = icmp eq i32 %call126, 0
  br i1 %tobool127.not, label %if.end133, label %do.end131

do.end131:                                        ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #11
  %dev132 = getelementptr i8, ptr %chip, i32 -3584
  %51 = ptrtoint ptr %dev132 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev132, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.25) #12
  br label %outthread-pre-split

if.end133:                                        ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #11
  %53 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %enabled, align 4, !range !213
  %55 = ptrtoint ptr %pwm_enabled to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %pwm_enabled, align 4
  br label %out

outthread-pre-split:                              ; preds = %do.end131, %do.end57, %if.end16.outthread-pre-split_crit_edge, %do.end
  %ret.0.ph = phi i32 [ -22, %if.end16.outthread-pre-split_crit_edge ], [ %call.i194, %do.end ], [ %call126, %do.end131 ], [ %call52, %do.end57 ]
  %56 = ptrtoint ptr %pwm_enabled to i32
  call void @__asan_load1_noabort(i32 %56)
  %.pr = load i8, ptr %pwm_enabled, align 4
  br label %out

out:                                              ; preds = %outthread-pre-split, %if.end133
  %57 = phi i8 [ %.pr, %outthread-pre-split ], [ %54, %if.end133 ]
  %ret.0 = phi i32 [ %ret.0.ph, %outthread-pre-split ], [ 0, %if.end133 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool138.not = icmp eq i8 %57, 0
  br i1 %tobool138.not, label %if.then139, label %out.cleanup_crit_edge

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then139:                                       ; preds = %out
  call void @__sanitizer_cov_trace_pc() #11
  %dev140 = getelementptr i8, ptr %chip, i32 -3584
  %58 = ptrtoint ptr %dev140 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev140, align 8
  %call.i201 = call i32 @__pm_runtime_idle(ptr noundef %59, i32 noundef 4) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then139, %out.cleanup_crit_edge, %if.then2
  %retval.0 = phi i32 [ %call.i, %if.then2 ], [ %ret.0, %if.then139 ], [ %ret.0, %out.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ti_sn_pwm_get_state(ptr nocapture noundef readonly %chip, ptr nocapture noundef readnone %pwm, ptr nocapture noundef %state) #3 align 64 {
entry:
  %buf.i675 = alloca [2 x i8], align 1
  %buf.i = alloca [2 x i8], align 1
  %pwm_en_inv = alloca i32, align 4
  %pre_div = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pwm_en_inv) #9
  %0 = ptrtoint ptr %pwm_en_inv to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %pwm_en_inv, align 4, !annotation !212
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pre_div) #9
  %1 = ptrtoint ptr %pre_div to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %pre_div, align 4, !annotation !212
  %regmap = getelementptr i8, ptr %chip, i32 -3580
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %3, i32 noundef 165, ptr noundef nonnull %pwm_en_inv) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #9
  %4 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %buf.i, align 1, !annotation !212
  %5 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1, !annotation !212
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call.i = call i32 @regmap_bulk_read(ptr noundef %8, i32 noundef 161, ptr noundef nonnull %buf.i, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end5, label %ti_sn65dsi86_read_u16.exit

ti_sn65dsi86_read_u16.exit:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %9 = ptrtoint ptr %buf.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %buf.i, align 1
  %conv.i = zext i8 %10 to i32
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %5, align 1
  %conv2.i = zext i8 %12 to i32
  %shl.i = shl nuw nsw i32 %conv2.i, 8
  %or.i = or i32 %shl.i, %conv.i
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i675) #9
  %13 = ptrtoint ptr %buf.i675 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -1, ptr %buf.i675, align 1, !annotation !212
  %14 = getelementptr inbounds [2 x i8], ptr %buf.i675, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -1, ptr %14, align 1, !annotation !212
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %call.i677 = call i32 @regmap_bulk_read(ptr noundef %17, i32 noundef 163, ptr noundef nonnull %buf.i675, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i677)
  %tobool.not.i678 = icmp eq i32 %call.i677, 0
  br i1 %tobool.not.i678, label %if.end9, label %ti_sn65dsi86_read_u16.exit684

ti_sn65dsi86_read_u16.exit684:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i675) #9
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %18 = ptrtoint ptr %buf.i675 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %buf.i675, align 1
  %conv.i679 = zext i8 %19 to i16
  %20 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %14, align 1
  %conv2.i680 = zext i8 %21 to i16
  %shl.i681 = shl nuw i16 %conv2.i680, 8
  %or.i682 = or i16 %shl.i681, %conv.i679
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i675) #9
  %22 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap, align 4
  %call11 = call i32 @regmap_read(ptr noundef %23, i32 noundef 160, ptr noundef nonnull %pre_div) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %do.end26, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end26:                                         ; preds = %if.end9
  %24 = ptrtoint ptr %pwm_en_inv to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pwm_en_inv, align 4
  %enabled = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 3
  %26 = trunc i32 %25 to i8
  %27 = lshr i8 %26, 1
  %28 = and i8 %27, 1
  %29 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %enabled, align 4
  %and44 = and i32 %25, 1
  %30 = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 2
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %and44, ptr %30, align 8
  %32 = ptrtoint ptr %pre_div to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pre_div, align 4
  %conv = zext i32 %33 to i64
  %mul = mul nuw nsw i64 %conv, 1000000000
  %add = add nuw nsw i32 %or.i, 1
  %34 = zext i32 %add to i64
  %mul52 = mul i64 %mul, %34
  %pwm_refclk_freq = getelementptr i8, ptr %chip, i32 44
  %35 = ptrtoint ptr %pwm_refclk_freq to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pwm_refclk_freq, align 4
  %conv53 = zext i32 %36 to i64
  %add54 = add nsw i64 %conv53, -1
  %sub = add i64 %add54, %mul52
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub)
  %cmp232 = icmp ult i64 %sub, 4294967296
  br i1 %cmp232, label %if.then236, label %if.else242, !prof !215

if.then236:                                       ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #11
  %conv237 = trunc i64 %sub to i32
  %div240 = udiv i32 %conv237, %36
  %conv241 = zext i32 %div240 to i64
  br label %if.end246

if.else242:                                       ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #11
  %37 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %36, i64 %sub) #13, !srcloc !214
  %asmresult1.i = extractvalue { i64, i64 } %37, 1
  br label %if.end246

if.end246:                                        ; preds = %if.else242, %if.then236
  %_tmp.0 = phi i64 [ %conv241, %if.then236 ], [ %asmresult1.i, %if.else242 ]
  %38 = ptrtoint ptr %state to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %_tmp.0, ptr %state, align 8
  %conv252 = zext i16 %or.i682 to i64
  %mul253 = mul i64 %mul, %conv252
  %39 = ptrtoint ptr %pwm_refclk_freq to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pwm_refclk_freq, align 4
  %conv255 = zext i32 %40 to i64
  %add256 = add nsw i64 %conv255, -1
  %sub257 = add i64 %add256, %mul253
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub257)
  %cmp460 = icmp ult i64 %sub257, 4294967296
  br i1 %cmp460, label %if.then468, label %if.else474, !prof !215

if.then468:                                       ; preds = %if.end246
  call void @__sanitizer_cov_trace_pc() #11
  %conv469 = trunc i64 %sub257 to i32
  %div472 = udiv i32 %conv469, %40
  %conv473 = zext i32 %div472 to i64
  br label %if.end478

if.else474:                                       ; preds = %if.end246
  call void @__sanitizer_cov_trace_pc() #11
  %41 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %40, i64 %sub257) #13, !srcloc !214
  %asmresult1.i694 = extractvalue { i64, i64 } %41, 1
  br label %if.end478

if.end478:                                        ; preds = %if.else474, %if.then468
  %_tmp249.0 = phi i64 [ %conv473, %if.then468 ], [ %asmresult1.i694, %if.else474 ]
  %duty_cycle = getelementptr inbounds %struct.pwm_state, ptr %state, i32 0, i32 1
  %42 = call i64 @llvm.umin.i64(i64 %_tmp249.0, i64 %_tmp.0)
  %43 = ptrtoint ptr %duty_cycle to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %42, ptr %duty_cycle, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end478, %if.end9.cleanup_crit_edge, %ti_sn65dsi86_read_u16.exit684, %ti_sn65dsi86_read_u16.exit, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pre_div) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pwm_en_inv) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pwmchip_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_sn_bridge_probe(ptr noundef %adev, ptr nocapture noundef readnone %id) #3 align 64 {
entry:
  %val.i = alloca i32, align 4
  %info.i = alloca %struct.mipi_dsi_device_info, align 4
  %lane_assignments.i = alloca [4 x i32], align 4
  %lane_polarities.i = alloca [4 x i32], align 4
  %panel = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %adev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %dev1 = getelementptr inbounds %struct.ti_sn65dsi86, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 27
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %panel) #9
  %8 = ptrtoint ptr %panel to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %panel, align 4, !annotation !212
  %call2 = call i32 @drm_of_find_panel_or_bridge(ptr noundef %7, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %panel, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call4 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %adev, i32 noundef %call2, ptr noundef nonnull @.str.28) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev1, align 8
  %11 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %panel, align 4
  %call6 = call ptr @devm_drm_panel_bridge_add(ptr noundef %10, ptr noundef %12) #9
  %next_bridge = getelementptr inbounds %struct.ti_sn65dsi86, ptr %3, i32 0, i32 12
  %13 = ptrtoint ptr %next_bridge to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call6, ptr %next_bridge, align 4
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.29) #9
  %14 = ptrtoint ptr %next_bridge to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %next_bridge, align 4
  %16 = ptrtoint ptr %15 to i32
  br label %cleanup

if.end12:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %lane_assignments.i) #9
  %17 = call ptr @memcpy(ptr %lane_assignments.i, ptr @__const.ti_sn_bridge_parse_lanes.lane_assignments, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %lane_polarities.i) #9
  %18 = call ptr @memset(ptr %lane_polarities.i, i32 0, i32 16)
  %call.i = call ptr @of_graph_get_endpoint_by_regs(ptr noundef %7, i32 noundef 1, i32 noundef -1) #9
  %call.i.i = call i32 @of_property_count_elems_of_size(ptr noundef %call.i, ptr noundef nonnull @.str.31, i32 noundef 4) #9
  %19 = add i32 %call.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %19)
  %20 = icmp ult i32 %19, 4
  br i1 %20, label %if.then.i, label %if.end12.ti_sn_bridge_parse_lanes.exit_crit_edge

if.end12.ti_sn_bridge_parse_lanes.exit_crit_edge: ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %ti_sn_bridge_parse_lanes.exit

if.then.i:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %call.i30.i = call i32 @of_property_read_variable_u32_array(ptr noundef %call.i, ptr noundef nonnull @.str.31, ptr noundef nonnull %lane_assignments.i, i32 noundef %call.i.i, i32 noundef 0) #9
  %call.i31.i = call i32 @of_property_read_variable_u32_array(ptr noundef %call.i, ptr noundef nonnull @.str.32, ptr noundef nonnull %lane_polarities.i, i32 noundef %call.i.i, i32 noundef 0) #9
  br label %ti_sn_bridge_parse_lanes.exit

ti_sn_bridge_parse_lanes.exit:                    ; preds = %if.then.i, %if.end12.ti_sn_bridge_parse_lanes.exit_crit_edge
  %dp_lanes.0.i = phi i32 [ %call.i.i, %if.then.i ], [ 4, %if.end12.ti_sn_bridge_parse_lanes.exit_crit_edge ]
  call void @of_node_put(ptr noundef %call.i) #9
  %arrayidx.i = getelementptr inbounds [4 x i32], ptr %lane_assignments.i, i32 0, i32 3
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i, align 4
  %arrayidx10.i = getelementptr inbounds [4 x i32], ptr %lane_polarities.i, i32 0, i32 3
  %23 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx10.i, align 4
  %arrayidx.1.i = getelementptr inbounds [4 x i32], ptr %lane_assignments.i, i32 0, i32 2
  %25 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.1.i, align 4
  %arrayidx10.1.i = getelementptr inbounds [4 x i32], ptr %lane_polarities.i, i32 0, i32 2
  %27 = ptrtoint ptr %arrayidx10.1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx10.1.i, align 4
  %29 = shl i32 %22, 4
  %30 = shl i32 %26, 2
  %conv.2.i = or i32 %30, %29
  %arrayidx.2.i = getelementptr inbounds [4 x i32], ptr %lane_assignments.i, i32 0, i32 1
  %31 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.2.i, align 4
  %or.2.i = or i32 %conv.2.i, %32
  %33 = shl i32 %24, 2
  %34 = shl i32 %28, 1
  %conv8.2.i = or i32 %34, %33
  %arrayidx10.2.i = getelementptr inbounds [4 x i32], ptr %lane_polarities.i, i32 0, i32 1
  %35 = ptrtoint ptr %arrayidx10.2.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx10.2.i, align 4
  %or11.2.i = or i32 %conv8.2.i, %36
  %conv.3.i = shl i32 %or.2.i, 2
  %37 = ptrtoint ptr %lane_assignments.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %lane_assignments.i, align 4
  %or.3.i = or i32 %38, %conv.3.i
  %conv8.3.i = shl i32 %or11.2.i, 1
  %39 = ptrtoint ptr %lane_polarities.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %lane_polarities.i, align 4
  %or11.3.i = or i32 %40, %conv8.3.i
  %conv7.le.i = trunc i32 %or.3.i to i8
  %conv12.le.i = trunc i32 %or11.3.i to i8
  %dp_lanes13.i = getelementptr inbounds %struct.ti_sn65dsi86, ptr %3, i32 0, i32 15
  %41 = ptrtoint ptr %dp_lanes13.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %dp_lanes.0.i, ptr %dp_lanes13.i, align 4
  %ln_assign14.i = getelementptr inbounds %struct.ti_sn65dsi86, ptr %3, i32 0, i32 16
  %42 = ptrtoint ptr %ln_assign14.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv7.le.i, ptr %ln_assign14.i, align 8
  %ln_polrs15.i = getelementptr inbounds %struct.ti_sn65dsi86, ptr %3, i32 0, i32 17
  %43 = ptrtoint ptr %ln_polrs15.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv12.le.i, ptr %ln_polrs15.i, align 1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %lane_polarities.i) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %lane_assignments.i) #9
  %44 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev1, align 8
  %of_node.i = getelementptr inbounds %struct.device, ptr %45, i32 0, i32 27
  %46 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %of_node.i, align 8
  %call.i51 = call ptr @of_graph_get_remote_node(ptr noundef %47, i32 noundef 0, i32 noundef 0) #9
  %host_node.i = getelementptr inbounds %struct.ti_sn65dsi86, ptr %3, i32 0, i32 9
  %48 = ptrtoint ptr %host_node.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call.i51, ptr %host_node.i, align 8
  %tobool.not.i = icmp eq ptr %call.i51, null
  br i1 %tobool.not.i, label %ti_sn_bridge_parse_dsi_host.exit, label %if.end16

ti_sn_bridge_parse_dsi_host.exit:                 ; preds = %ti_sn_bridge_parse_lanes.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.33) #9
  br label %cleanup

if.end16:                                         ; preds = %ti_sn_bridge_parse_lanes.exit
  %bridge = getelementptr inbounds %struct.ti_sn65dsi86, ptr %3, i32 0, i32 7
  %funcs = getelementptr inbounds %struct.ti_sn65dsi86, ptr %3, i32 0, i32 7, i32 7
  %49 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @ti_sn_bridge_funcs, ptr %funcs, align 4
  %of_node18 = getelementptr inbounds %struct.ti_sn65dsi86, ptr %3, i32 0, i32 7, i32 4
  %50 = ptrtoint ptr %of_node18 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %7, ptr %of_node18, align 4
  call void @drm_bridge_add(ptr noundef %bridge) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #9
  %51 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -1, ptr %val.i, align 4, !annotation !212
  %52 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev1, align 8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %info.i) #9
  %54 = call ptr @memcpy(ptr %info.i, ptr @__const.ti_sn_attach_host.info, i32 28)
  %55 = ptrtoint ptr %host_node.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %host_node.i, align 8
  %call.i54 = call ptr @of_find_mipi_dsi_host_by_node(ptr noundef %56) #9
  %tobool.not.i55 = icmp eq ptr %call.i54, null
  br i1 %tobool.not.i55, label %ti_sn_attach_host.exit.thread, label %if.end.i

ti_sn_attach_host.exit.thread:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %info.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  br label %if.then22

if.end.i:                                         ; preds = %if.end16
  %call2.i = call ptr @devm_mipi_dsi_device_register_full(ptr noundef %53, ptr noundef nonnull %call.i54, ptr noundef nonnull %info.i) #9
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then4.i, label %if.end6.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %call2.i to i32
  br label %ti_sn_attach_host.exit

if.end6.i:                                        ; preds = %if.end.i
  %lanes.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %call2.i, i32 0, i32 4
  %58 = ptrtoint ptr %lanes.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 4, ptr %lanes.i, align 8
  %format.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %call2.i, i32 0, i32 5
  %59 = ptrtoint ptr %format.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %format.i, align 4
  %mode_flags.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %call2.i, i32 0, i32 6
  %60 = ptrtoint ptr %mode_flags.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 1, ptr %mode_flags.i, align 8
  %call.i.i56 = call i32 @__pm_runtime_resume(ptr noundef %53, i32 noundef 4) #9
  %regmap.i = getelementptr inbounds %struct.ti_sn65dsi86, ptr %3, i32 0, i32 5
  %61 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regmap.i, align 4
  %call8.i = call i32 @regmap_read(ptr noundef %62, i32 noundef 10, ptr noundef nonnull %val.i) #9
  %call.i34.i = call i32 @__pm_runtime_suspend(ptr noundef %53, i32 noundef 13) #9
  %63 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %val.i, align 4
  %and.i = and i32 %64, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool10.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool10.not.i, label %if.then11.i, label %if.end6.i.if.end13.i_crit_edge

if.end6.i.if.end13.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13.i

if.then11.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  %65 = ptrtoint ptr %mode_flags.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %mode_flags.i, align 8
  %or.i = or i32 %66, 1024
  store i32 %or.i, ptr %mode_flags.i, align 8
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then11.i, %if.end6.i.if.end13.i_crit_edge
  %dsi14.i = getelementptr inbounds %struct.ti_sn65dsi86, ptr %3, i32 0, i32 10
  %67 = ptrtoint ptr %dsi14.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call2.i, ptr %dsi14.i, align 4
  %call15.i = call i32 @devm_mipi_dsi_attach(ptr noundef %53, ptr noundef %call2.i) #9
  br label %ti_sn_attach_host.exit

ti_sn_attach_host.exit:                           ; preds = %if.end13.i, %if.then4.i
  %retval.0.i57 = phi i32 [ %57, %if.then4.i ], [ %call15.i, %if.end13.i ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %info.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i57)
  %tobool21.not = icmp eq i32 %retval.0.i57, 0
  br i1 %tobool21.not, label %ti_sn_attach_host.exit.cleanup_crit_edge, label %ti_sn_attach_host.exit.if.then22_crit_edge

ti_sn_attach_host.exit.if.then22_crit_edge:       ; preds = %ti_sn_attach_host.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then22

ti_sn_attach_host.exit.cleanup_crit_edge:         ; preds = %ti_sn_attach_host.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then22:                                        ; preds = %ti_sn_attach_host.exit.if.then22_crit_edge, %ti_sn_attach_host.exit.thread
  %retval.0.i5762 = phi i32 [ -517, %ti_sn_attach_host.exit.thread ], [ %retval.0.i57, %ti_sn_attach_host.exit.if.then22_crit_edge ]
  %68 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev1, align 8
  %call24 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %69, i32 noundef %retval.0.i5762, ptr noundef nonnull @.str.30) #9
  call void @drm_bridge_remove(ptr noundef %bridge) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %ti_sn_attach_host.exit.cleanup_crit_edge, %ti_sn_bridge_parse_dsi_host.exit, %if.then9, %if.then
  %retval.0 = phi i32 [ %call4, %if.then ], [ %16, %if.then9 ], [ %retval.0.i5762, %if.then22 ], [ -19, %ti_sn_bridge_parse_dsi_host.exit ], [ 0, %ti_sn_attach_host.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %panel) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ti_sn_bridge_remove(ptr nocapture noundef readonly %adev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %adev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %bridge = getelementptr inbounds %struct.ti_sn65dsi86, ptr %3, i32 0, i32 7
  tail call void @drm_bridge_remove(ptr noundef %bridge) #9
  %host_node = getelementptr inbounds %struct.ti_sn65dsi86, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %host_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host_node, align 8
  tail call void @of_node_put(ptr noundef %5) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_find_panel_or_bridge(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_drm_panel_bridge_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_endpoint_by_regs(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_node(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_sn_bridge_attach(ptr noundef %bridge, i32 noundef %flags) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.34) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr %struct.drm_bridge, ptr %bridge, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %aux = getelementptr i8, ptr %bridge, i32 -1736
  %drm_dev = getelementptr i8, ptr %bridge, i32 -364
  %2 = ptrtoint ptr %drm_dev to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %drm_dev, align 4
  %call2 = tail call i32 @drm_dp_aux_register(ptr noundef %aux) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  br i1 %cmp, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev5 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.35, i32 noundef %call2) #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %connector.i = getelementptr i8, ptr %bridge, i32 280
  %call.i = tail call i32 @drm_connector_init(ptr noundef %4, ptr noundef %connector.i, ptr noundef nonnull @ti_sn_bridge_connector_funcs, i32 noundef 14) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %ti_sn_bridge_connector_init.exit.thread, label %ti_sn_bridge_connector_init.exit

ti_sn_bridge_connector_init.exit.thread:          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %helper_private.i.i = getelementptr i8, ptr %bridge, i32 988
  %7 = ptrtoint ptr %helper_private.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @ti_sn_bridge_connector_helper_funcs, ptr %helper_private.i.i, align 4
  %encoder.i = getelementptr i8, ptr %bridge, i32 128
  %8 = ptrtoint ptr %encoder.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %encoder.i, align 8
  %call4.i = tail call i32 @drm_connector_attach_encoder(ptr noundef %connector.i, ptr noundef %9) #9
  br label %if.end10

ti_sn_bridge_connector_init.exit:                 ; preds = %if.end6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.37) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp8 = icmp slt i32 %call.i, 0
  br i1 %cmp8, label %ti_sn_bridge_connector_init.exit.err_conn_init_crit_edge, label %ti_sn_bridge_connector_init.exit.if.end10_crit_edge

ti_sn_bridge_connector_init.exit.if.end10_crit_edge: ; preds = %ti_sn_bridge_connector_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

ti_sn_bridge_connector_init.exit.err_conn_init_crit_edge: ; preds = %ti_sn_bridge_connector_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_conn_init

if.end10:                                         ; preds = %ti_sn_bridge_connector_init.exit.if.end10_crit_edge, %ti_sn_bridge_connector_init.exit.thread
  %or = or i32 %flags, 1
  %encoder = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 2
  %10 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %encoder, align 4
  %next_bridge = getelementptr i8, ptr %bridge, i32 1332
  %12 = ptrtoint ptr %next_bridge to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %next_bridge, align 4
  %call12 = tail call i32 @drm_bridge_attach(ptr noundef %11, ptr noundef %13, ptr noundef %bridge, i32 noundef %or) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %err_dsi_host, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

err_dsi_host:                                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @drm_connector_cleanup(ptr noundef %connector.i) #9
  br label %err_conn_init

err_conn_init:                                    ; preds = %err_dsi_host, %ti_sn_bridge_connector_init.exit.err_conn_init_crit_edge
  %ret.0 = phi i32 [ %call.i, %ti_sn_bridge_connector_init.exit.err_conn_init_crit_edge ], [ %call12, %err_dsi_host ]
  tail call void @drm_dp_aux_unregister(ptr noundef %aux) #9
  br label %cleanup

cleanup:                                          ; preds = %err_conn_init, %if.end10.cleanup_crit_edge, %do.end, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ %call2, %do.end ], [ %ret.0, %err_conn_init ], [ 0, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ti_sn_bridge_detach(ptr noundef %bridge) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %aux = getelementptr i8, ptr %bridge, i32 -1736
  tail call void @drm_dp_aux_unregister(ptr noundef %aux) #9
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ti_sn_bridge_mode_valid(ptr nocapture noundef readnone %bridge, ptr nocapture noundef readnone %info, ptr nocapture noundef readonly %mode) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 594000, i32 %1)
  %cmp = icmp sgt i32 %1, 594000
  %. = select i1 %cmp, i32 15, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ti_sn_bridge_disable(ptr nocapture noundef readonly %bridge) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr i8, ptr %bridge, i32 -1740
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 90, i32 noundef 8, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ti_sn_bridge_post_disable(ptr noundef %bridge) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr i8, ptr %bridge, i32 -1740
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %call1 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 150, i32 noundef 0) #9
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 147, i32 noundef 48, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call5 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 13, i32 noundef 0) #9
  %refclk = getelementptr i8, ptr %bridge, i32 1328
  %6 = ptrtoint ptr %refclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %refclk, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %comms_mutex.i = getelementptr i8, ptr %bridge, i32 1396
  tail call void @mutex_lock_nested(ptr noundef %comms_mutex.i, i32 noundef 0) #9
  %comms_enabled.i = getelementptr i8, ptr %bridge, i32 1394
  %8 = ptrtoint ptr %comms_enabled.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %comms_enabled.i, align 2
  %9 = ptrtoint ptr %refclk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %refclk, align 8
  tail call void @clk_disable(ptr noundef %10) #9
  tail call void @clk_unprepare(ptr noundef %10) #9
  tail call void @mutex_unlock(ptr noundef %comms_mutex.i) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dev = getelementptr i8, ptr %bridge, i32 -1744
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 8
  %call.i12 = tail call i32 @__pm_runtime_idle(ptr noundef %12, i32 noundef 4) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ti_sn_bridge_pre_enable(ptr noundef %bridge) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr i8, ptr %bridge, i32 -1744
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #9
  %refclk = getelementptr i8, ptr %bridge, i32 1328
  %2 = ptrtoint ptr %refclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %refclk, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %bridge, i32 -5488
  tail call fastcc void @ti_sn65dsi86_enable_comms(ptr noundef %add.ptr.i)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 110, i32 noundef 2) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ti_sn_bridge_enable(ptr noundef %bridge) #3 align 64 {
entry:
  %buf.i93.i = alloca [2 x i8], align 1
  %buf.i.i = alloca [2 x i8], align 1
  %val.i = alloca i32, align 4
  %dpcd_val.i = alloca i8, align 1
  %sink_rates.i = alloca [8 x i16], align 2
  %value.addr.i = alloca i8, align 1
  %data.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i) #9
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %data.i, align 1, !annotation !212
  %aux.i = getelementptr i8, ptr %bridge, i32 -1736
  %call.i.i = call i32 @drm_dp_dpcd_read(ptr noundef %aux.i, i32 noundef 2, ptr noundef nonnull %data.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr i8, ptr %bridge, i32 -1744
  %1 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev.i, align 8
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %2, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.40, i32 noundef %call.i.i) #9
  br label %ti_sn_get_max_lanes.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %data.i, align 1
  %5 = and i8 %4, 15
  %and.i = zext i8 %5 to i32
  br label %ti_sn_get_max_lanes.exit

ti_sn_get_max_lanes.exit:                         ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ 4, %if.then.i ], [ %and.i, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i) #9
  %dp_lanes = getelementptr i8, ptr %bridge, i32 1388
  %6 = ptrtoint ptr %dp_lanes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dp_lanes, align 4
  %8 = call i32 @llvm.smin.i32(i32 %7, i32 %retval.0.i)
  %9 = ptrtoint ptr %dp_lanes to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %dp_lanes, align 4
  %dsi = getelementptr i8, ptr %bridge, i32 1324
  %10 = ptrtoint ptr %dsi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dsi, align 4
  %lanes = getelementptr inbounds %struct.mipi_dsi_device, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %lanes to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %lanes, align 8
  %.neg = mul i32 %13, -8
  %shl = add i32 %.neg, 32
  %regmap = getelementptr i8, ptr %bridge, i32 -1740
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 16, i32 noundef 24, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %ln_assign = getelementptr i8, ptr %bridge, i32 1392
  %18 = ptrtoint ptr %ln_assign to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ln_assign, align 8
  %conv = zext i8 %19 to i32
  %call5 = call i32 @regmap_write(ptr noundef %17, i32 noundef 89, i32 noundef %conv) #9
  %20 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap, align 4
  %ln_polrs = getelementptr i8, ptr %bridge, i32 1393
  %22 = ptrtoint ptr %ln_polrs to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ln_polrs, align 1
  %conv7 = zext i8 %23 to i32
  %shl8 = shl nuw nsw i32 %conv7, 4
  %call.i80 = call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 90, i32 noundef 240, i32 noundef %shl8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %encoder.i = getelementptr i8, ptr %bridge, i32 128
  %24 = ptrtoint ptr %encoder.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %encoder.i, align 8
  %crtc.i = getelementptr inbounds %struct.drm_encoder, ptr %25, i32 0, i32 8
  %26 = ptrtoint ptr %crtc.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %crtc.i, align 4
  %state.i = getelementptr inbounds %struct.drm_crtc, ptr %27, i32 0, i32 22
  %28 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %state.i, align 4
  %adjusted_mode.i = getelementptr inbounds %struct.drm_crtc_state, ptr %29, i32 0, i32 7
  %30 = ptrtoint ptr %adjusted_mode.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %adjusted_mode.i, align 4
  %32 = ptrtoint ptr %dsi to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dsi, align 4
  %format.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %33, i32 0, i32 5
  %34 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %format.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %35)
  %36 = icmp ult i32 %35, 4
  br i1 %36, label %switch.lookup, label %ti_sn_get_max_lanes.exit.ti_sn_bridge_set_dsi_rate.exit_crit_edge

ti_sn_get_max_lanes.exit.ti_sn_bridge_set_dsi_rate.exit_crit_edge: ; preds = %ti_sn_get_max_lanes.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %ti_sn_bridge_set_dsi_rate.exit

switch.lookup:                                    ; preds = %ti_sn_get_max_lanes.exit
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.ti_sn_bridge_enable, i32 0, i32 %35
  %37 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %37)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %ti_sn_bridge_set_dsi_rate.exit

ti_sn_bridge_set_dsi_rate.exit:                   ; preds = %switch.lookup, %ti_sn_get_max_lanes.exit.ti_sn_bridge_set_dsi_rate.exit_crit_edge
  %retval.0.i.i = phi i32 [ %switch.load, %switch.lookup ], [ -22, %ti_sn_get_max_lanes.exit.ti_sn_bridge_set_dsi_rate.exit_crit_edge ]
  %div.i = sdiv i32 %31, 1000
  %mul.i = mul nsw i32 %retval.0.i.i, %div.i
  %lanes.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %33, i32 0, i32 4
  %38 = ptrtoint ptr %lanes.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %lanes.i, align 8
  %mul2.i = shl i32 %39, 1
  %div3.i = udiv i32 %mul.i, %mul2.i
  %sub.i = add i32 %div3.i, -40
  %div4.i = udiv i32 %sub.i, 5
  %and.i81 = and i32 %div4.i, 255
  %add.i = add nuw nsw i32 %and.i81, 8
  %40 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap, align 4
  %call5.i = call i32 @regmap_write(ptr noundef %41, i32 noundef 18, i32 noundef %add.i) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value.addr.i)
  %42 = ptrtoint ptr %value.addr.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %value.addr.i, align 1
  %call.i82 = call i32 @drm_dp_dpcd_write(ptr noundef %aux.i, i32 noundef 266, ptr noundef nonnull %value.addr.i, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value.addr.i)
  %bpc.i = getelementptr i8, ptr %bridge, i32 480
  %43 = ptrtoint ptr %bpc.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %bpc.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %44)
  %cmp.i = icmp ult i32 %44, 7
  %cond14 = zext i1 %cmp.i to i32
  %45 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regmap, align 4
  %call.i83 = call i32 @regmap_update_bits_base(ptr noundef %46, i32 noundef 91, i32 noundef 1, i32 noundef %cond14, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %47 = ptrtoint ptr %dp_lanes to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %dp_lanes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %48)
  %cmp19 = icmp slt i32 %48, 3
  %phi.bo = shl i32 %48, 4
  %cond24 = select i1 %cmp19, i32 %phi.bo, i32 48
  %49 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regmap, align 4
  %call.i84 = call i32 @regmap_update_bits_base(ptr noundef %50, i32 noundef 147, i32 noundef 48, i32 noundef %cond24, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %dpcd_val.i) #9
  %51 = ptrtoint ptr %dpcd_val.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 -1, ptr %dpcd_val.i, align 1, !annotation !212
  %call.i.i86 = call i32 @drm_dp_dpcd_read(ptr noundef %aux.i, i32 noundef 1792, ptr noundef nonnull %dpcd_val.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i86)
  %cmp.not.i87 = icmp eq i32 %call.i.i86, 1
  br i1 %cmp.not.i87, label %if.end.i89, label %if.end.thread.i

if.end.thread.i:                                  ; preds = %ti_sn_bridge_set_dsi_rate.exit
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i88 = getelementptr i8, ptr %bridge, i32 -1744
  %52 = ptrtoint ptr %dev.i88 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev.i88, align 8
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %53, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.41, i32 noundef %call.i.i86) #9
  %54 = ptrtoint ptr %dpcd_val.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %dpcd_val.i, align 1
  br label %if.end41.i

if.end.i89:                                       ; preds = %ti_sn_bridge_set_dsi_rate.exit
  %55 = ptrtoint ptr %dpcd_val.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %.pr.i = load i8, ptr %dpcd_val.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.pr.i)
  %cmp1.i = icmp ugt i8 %.pr.i, 2
  br i1 %cmp1.i, label %if.then3.i, label %if.end.i89.if.end41.i_crit_edge

if.end.i89.if.end41.i_crit_edge:                  ; preds = %if.end.i89
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41.i

if.then3.i:                                       ; preds = %if.end.i89
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sink_rates.i) #9
  %56 = call ptr @memset(ptr %sink_rates.i, i32 255, i32 16)
  %call5.i90 = call i32 @drm_dp_dpcd_read(ptr noundef %aux.i, i32 noundef 16, ptr noundef nonnull %sink_rates.i, i32 noundef 16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call5.i90)
  %cmp6.not.i = icmp eq i32 %call5.i90, 16
  br i1 %cmp6.not.i, label %if.then3.i.for.body.i.preheader_crit_edge, label %if.then8.i

if.then3.i.for.body.i.preheader_crit_edge:        ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.preheader

if.then8.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev9.i = getelementptr i8, ptr %bridge, i32 -1744
  %57 = ptrtoint ptr %dev9.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev9.i, align 8
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %58, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.42, i32 noundef %call5.i90) #9
  %59 = call ptr @memset(ptr %sink_rates.i, i32 0, i32 16)
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %if.then8.i, %if.then3.i.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %if.end16.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.097.i = phi i32 [ %inc27.i, %if.end16.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %valid_rates.096.i = phi i32 [ %valid_rates.2.7.i, %if.end16.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %arrayidx.i = getelementptr [8 x i16], ptr %sink_rates.i, i32 0, i32 %i.097.i
  %60 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %arrayidx.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %61)
  %tobool.not.i = icmp eq i16 %61, 0
  br i1 %tobool.not.i, label %for.body.i.for.end28.i_crit_edge, label %if.end16.i

for.body.i.for.end28.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end28.i

if.end16.i:                                       ; preds = %for.body.i
  %62 = call i16 @llvm.bswap.i16(i16 %61) #9
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %62)
  %63 = icmp ult i16 %62, 5
  %or.i = zext i1 %63 to i32
  %valid_rates.2.i = or i32 %valid_rates.096.i, %or.i
  %.off.i = add i16 %62, -8100
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %.off.i)
  %64 = icmp ult i16 %.off.i, 5
  %or.1.i = select i1 %64, i32 2, i32 0
  %valid_rates.2.1.i = or i32 %valid_rates.2.i, %or.1.i
  %.off100.i = add i16 %62, -10800
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %.off100.i)
  %65 = icmp ult i16 %.off100.i, 5
  %or.2.i = select i1 %65, i32 4, i32 0
  %valid_rates.2.2.i = or i32 %valid_rates.2.1.i, %or.2.i
  %.off101.i = add i16 %62, -12150
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %.off101.i)
  %66 = icmp ult i16 %.off101.i, 5
  %or.3.i = select i1 %66, i32 8, i32 0
  %valid_rates.2.3.i = or i32 %valid_rates.2.2.i, %or.3.i
  %.off102.i = add i16 %62, -13500
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %.off102.i)
  %67 = icmp ult i16 %.off102.i, 5
  %or.4.i = select i1 %67, i32 16, i32 0
  %valid_rates.2.4.i = or i32 %valid_rates.2.3.i, %or.4.i
  %.off103.i = add i16 %62, -16200
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %.off103.i)
  %68 = icmp ult i16 %.off103.i, 5
  %or.5.i = select i1 %68, i32 32, i32 0
  %valid_rates.2.5.i = or i32 %valid_rates.2.4.i, %or.5.i
  %.off104.i = add i16 %62, -21600
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %.off104.i)
  %69 = icmp ult i16 %.off104.i, 5
  %or.6.i = select i1 %69, i32 64, i32 0
  %valid_rates.2.6.i = or i32 %valid_rates.2.5.i, %or.6.i
  %.off105.i = add i16 %62, -27000
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %.off105.i)
  %70 = icmp ult i16 %.off105.i, 5
  %or.7.i = select i1 %70, i32 128, i32 0
  %valid_rates.2.7.i = or i32 %valid_rates.2.6.i, %or.7.i
  %inc27.i = add nuw nsw i32 %i.097.i, 1
  %exitcond.not.i = icmp eq i32 %inc27.i, 8
  br i1 %exitcond.not.i, label %if.end16.i.for.end28.i_crit_edge, label %if.end16.i.for.body.i_crit_edge

if.end16.i.for.body.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

if.end16.i.for.end28.i_crit_edge:                 ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end28.i

for.end28.i:                                      ; preds = %if.end16.i.for.end28.i_crit_edge, %for.body.i.for.end28.i_crit_edge
  %valid_rates.0.lcssa.i = phi i32 [ %valid_rates.096.i, %for.body.i.for.end28.i_crit_edge ], [ %valid_rates.2.7.i, %if.end16.i.for.end28.i_crit_edge ]
  %71 = and i32 %valid_rates.0.lcssa.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %for.cond29.7.i, label %cleanup57.critedge.i

for.cond29.7.i:                                   ; preds = %for.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev40.i = getelementptr i8, ptr %bridge, i32 -1744
  %73 = ptrtoint ptr %dev40.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev40.i, align 8
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %74, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.43) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sink_rates.i) #9
  br label %if.end41.i

if.end41.i:                                       ; preds = %for.cond29.7.i, %if.end.i89.if.end41.i_crit_edge, %if.end.thread.i
  %valid_rates.3.i = phi i32 [ 0, %if.end.i89.if.end41.i_crit_edge ], [ %valid_rates.0.lcssa.i, %for.cond29.7.i ], [ 0, %if.end.thread.i ]
  %call.i91.i = call i32 @drm_dp_dpcd_read(ptr noundef %aux.i, i32 noundef 1, ptr noundef nonnull %dpcd_val.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i91.i)
  %cmp44.not.i = icmp eq i32 %call.i91.i, 1
  br i1 %cmp44.not.i, label %if.end48.i, label %if.end48.thread.i

if.end48.thread.i:                                ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev47.i = getelementptr i8, ptr %bridge, i32 -1744
  %75 = ptrtoint ptr %dev47.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev47.i, align 8
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %76, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.44, i32 noundef %call.i91.i) #9
  br label %sw.bb.i

if.end48.i:                                       ; preds = %if.end41.i
  %77 = ptrtoint ptr %dpcd_val.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %.pr93.i = load i8, ptr %dpcd_val.i, align 1
  %78 = zext i8 %.pr93.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %78, ptr @__sancov_gen_cov_switch_values)
  switch i8 %.pr93.i, label %sw.default.i [
    i8 20, label %if.end48.i.sw.bb.i_crit_edge
    i8 10, label %if.end48.i.sw.bb53.i_crit_edge
    i8 6, label %if.end48.i.sw.bb55.i_crit_edge
  ]

if.end48.i.sw.bb55.i_crit_edge:                   ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb55.i

if.end48.i.sw.bb53.i_crit_edge:                   ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb53.i

if.end48.i.sw.bb.i_crit_edge:                     ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb.i

sw.default.i:                                     ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv49.i = zext i8 %.pr93.i to i32
  %dev50.i = getelementptr i8, ptr %bridge, i32 -1744
  %79 = ptrtoint ptr %dev50.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev50.i, align 8
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %80, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.45, i32 noundef %conv49.i) #9
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %sw.default.i, %if.end48.i.sw.bb.i_crit_edge, %if.end48.thread.i
  %or52.i = or i32 %valid_rates.3.i, 128
  br label %sw.bb53.i

sw.bb53.i:                                        ; preds = %sw.bb.i, %if.end48.i.sw.bb53.i_crit_edge
  %valid_rates.4.i = phi i32 [ %or52.i, %sw.bb.i ], [ %valid_rates.3.i, %if.end48.i.sw.bb53.i_crit_edge ]
  %or54.i = or i32 %valid_rates.4.i, 16
  br label %sw.bb55.i

sw.bb55.i:                                        ; preds = %sw.bb53.i, %if.end48.i.sw.bb55.i_crit_edge
  %valid_rates.5.i = phi i32 [ %or54.i, %sw.bb53.i ], [ %valid_rates.3.i, %if.end48.i.sw.bb55.i_crit_edge ]
  %or56.i = or i32 %valid_rates.5.i, 2
  br label %ti_sn_bridge_read_valid_rates.exit

cleanup57.critedge.i:                             ; preds = %for.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sink_rates.i) #9
  br label %ti_sn_bridge_read_valid_rates.exit

ti_sn_bridge_read_valid_rates.exit:               ; preds = %cleanup57.critedge.i, %sw.bb55.i
  %retval.1.i = phi i32 [ %or56.i, %sw.bb55.i ], [ %valid_rates.0.lcssa.i, %cleanup57.critedge.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %dpcd_val.i) #9
  %81 = ptrtoint ptr %encoder.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %encoder.i, align 8
  %crtc.i92 = getelementptr inbounds %struct.drm_encoder, ptr %82, i32 0, i32 8
  %83 = ptrtoint ptr %crtc.i92 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %crtc.i92, align 4
  %state.i93 = getelementptr inbounds %struct.drm_crtc, ptr %84, i32 0, i32 22
  %85 = ptrtoint ptr %state.i93 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %state.i93, align 4
  %adjusted_mode.i94 = getelementptr inbounds %struct.drm_crtc_state, ptr %86, i32 0, i32 7
  %87 = ptrtoint ptr %adjusted_mode.i94 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %adjusted_mode.i94, align 4
  %89 = ptrtoint ptr %bpc.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %bpc.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %90)
  %cmp.i.i = icmp ult i32 %90, 7
  %..i.i = select i1 %cmp.i.i, i32 18, i32 24
  %mul.i95 = mul i32 %88, 10
  %mul1.i = mul i32 %mul.i95, %..i.i
  %91 = ptrtoint ptr %dp_lanes to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %dp_lanes, align 4
  %mul3.i = mul i32 %92, 8000
  %add.i96 = add i32 %mul3.i, -1
  %sub.i97 = add i32 %add.i96, %mul1.i
  %div.i98 = udiv i32 %sub.i97, %mul3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1620, i32 %div.i98)
  %cmp7.not.i = icmp ugt i32 %div.i98, 1620
  br i1 %cmp7.not.i, label %for.inc.i, label %ti_sn_bridge_read_valid_rates.exit.for.body.preheader_crit_edge

ti_sn_bridge_read_valid_rates.exit.for.body.preheader_crit_edge: ; preds = %ti_sn_bridge_read_valid_rates.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.preheader

for.inc.i:                                        ; preds = %ti_sn_bridge_read_valid_rates.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 2160, i32 %div.i98)
  %cmp7.not.1.i = icmp ugt i32 %div.i98, 2160
  br i1 %cmp7.not.1.i, label %for.inc.1.i, label %for.inc.i.for.body.preheader_crit_edge

for.inc.i.for.body.preheader_crit_edge:           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.preheader

for.inc.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2430, i32 %div.i98)
  %cmp7.not.2.i = icmp ugt i32 %div.i98, 2430
  br i1 %cmp7.not.2.i, label %for.inc.2.i, label %for.inc.1.i.for.body.preheader_crit_edge

for.inc.1.i.for.body.preheader_crit_edge:         ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.preheader

for.inc.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2700, i32 %div.i98)
  %cmp7.not.3.i = icmp ugt i32 %div.i98, 2700
  br i1 %cmp7.not.3.i, label %for.inc.3.i, label %for.inc.2.i.for.body.preheader_crit_edge

for.inc.2.i.for.body.preheader_crit_edge:         ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.preheader

for.inc.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3240, i32 %div.i98)
  %cmp7.not.4.i = icmp ugt i32 %div.i98, 3240
  br i1 %cmp7.not.4.i, label %for.inc.4.i, label %for.inc.3.i.for.body.preheader_crit_edge

for.inc.3.i.for.body.preheader_crit_edge:         ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.preheader

for.inc.4.i:                                      ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 4320, i32 %div.i98)
  %cmp7.not.5.i = icmp ugt i32 %div.i98, 4320
  %spec.select.i = select i1 %cmp7.not.5.i, i32 7, i32 6
  br label %for.body.preheader

for.body.preheader:                               ; preds = %for.inc.4.i, %for.inc.3.i.for.body.preheader_crit_edge, %for.inc.2.i.for.body.preheader_crit_edge, %for.inc.1.i.for.body.preheader_crit_edge, %for.inc.i.for.body.preheader_crit_edge, %ti_sn_bridge_read_valid_rates.exit.for.body.preheader_crit_edge
  %dp_rate_idx.0133.ph = phi i32 [ %spec.select.i, %for.inc.4.i ], [ 5, %for.inc.3.i.for.body.preheader_crit_edge ], [ 4, %for.inc.2.i.for.body.preheader_crit_edge ], [ 3, %for.inc.1.i.for.body.preheader_crit_edge ], [ 2, %for.inc.i.for.body.preheader_crit_edge ], [ 1, %ti_sn_bridge_read_valid_rates.exit.for.body.preheader_crit_edge ]
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %dp_rate_idx.0133 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ %dp_rate_idx.0133.ph, %for.body.preheader ]
  %ret.0132 = phi i32 [ %ret.1, %for.inc.for.body_crit_edge ], [ -22, %for.body.preheader ]
  %last_err_str.0131 = phi ptr [ %last_err_str.4, %for.inc.for.body_crit_edge ], [ @.str.38, %for.body.preheader ]
  %shl32 = shl nuw nsw i32 1, %dp_rate_idx.0133
  %and = and i32 %shl32, %retval.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #9
  %93 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 -1, ptr %val.i, align 4, !annotation !212
  %94 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %regmap, align 4
  %shl.i = shl nuw nsw i32 %dp_rate_idx.0133, 5
  %call.i.i100 = call i32 @regmap_update_bits_base(ptr noundef %95, i32 noundef 148, i32 noundef 224, i32 noundef %shl.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %96 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %regmap, align 4
  %call2.i = call i32 @regmap_write(ptr noundef %97, i32 noundef 13, i32 noundef 1) #9
  %call3.i = call i64 @ktime_get() #9
  %add.i.i = add i64 %call3.i, 50000000
  call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 1016) #9
  %98 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %regmap, align 4
  %call12204.i = call i32 @regmap_read(ptr noundef %99, i32 noundef 10, ptr noundef nonnull %val.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12204.i)
  %tobool.not205.i = icmp eq i32 %call12204.i, 0
  br i1 %tobool.not205.i, label %if.end.lor.lhs.false.i_crit_edge, label %if.end.ti_sn_link_training.exit_crit_edge

if.end.ti_sn_link_training.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %ti_sn_link_training.exit

if.end.lor.lhs.false.i_crit_edge:                 ; preds = %if.end
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.then25.i.lor.lhs.false.i_crit_edge, %if.end.lor.lhs.false.i_crit_edge
  %100 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %val.i, align 4
  %and.i101 = and i32 %101, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i101)
  %tobool13.not.i = icmp eq i32 %and.i101, 0
  br i1 %tobool13.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.lor.end.i_crit_edge

lor.lhs.false.i.lor.end.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call17.i = call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call17.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call17.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %if.then25.i

if.then25.i:                                      ; preds = %land.lhs.true.i
  call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #9
  %102 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %regmap, align 4
  %call12.i = call i32 @regmap_read(ptr noundef %103, i32 noundef 10, ptr noundef nonnull %val.i) #9
  %tobool.not.i102 = icmp eq i32 %call12.i, 0
  br i1 %tobool.not.i102, label %if.then25.i.lor.lhs.false.i_crit_edge, label %if.then25.i.ti_sn_link_training.exit_crit_edge

if.then25.i.ti_sn_link_training.exit_crit_edge:   ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ti_sn_link_training.exit

if.then25.i.lor.lhs.false.i_crit_edge:            ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false.i

for.end.i:                                        ; preds = %land.lhs.true.i
  %104 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %regmap, align 4
  %call22.i = call i32 @regmap_read(ptr noundef %105, i32 noundef 10, ptr noundef nonnull %val.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool27.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool27.not.i, label %for.end.i.lor.end.i_crit_edge, label %for.end.i.ti_sn_link_training.exit_crit_edge

for.end.i.ti_sn_link_training.exit_crit_edge:     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ti_sn_link_training.exit

for.end.i.lor.end.i_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.end.i

lor.end.i:                                        ; preds = %for.end.i.lor.end.i_crit_edge, %lor.lhs.false.i.lor.end.i_crit_edge
  %106 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %val.i, align 4
  %and28.i = and i32 %107, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.i)
  %tobool29.not.i = icmp eq i32 %and28.i, 0
  br i1 %tobool29.not.i, label %lor.end.i.ti_sn_link_training.exit_crit_edge, label %lor.end.i.for.body.i103_crit_edge

lor.end.i.for.body.i103_crit_edge:                ; preds = %lor.end.i
  br label %for.body.i103

lor.end.i.ti_sn_link_training.exit_crit_edge:     ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ti_sn_link_training.exit

for.body.i103:                                    ; preds = %if.then102.i.for.body.i103_crit_edge, %lor.end.i.for.body.i103_crit_edge
  %i.0209.i = phi i32 [ %inc.i, %if.then102.i.for.body.i103_crit_edge ], [ 0, %lor.end.i.for.body.i103_crit_edge ]
  %108 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %regmap, align 4
  %call39.i = call i32 @regmap_write(ptr noundef %109, i32 noundef 150, i32 noundef 10) #9
  %call45.i = call i64 @ktime_get() #9
  %add.i146.i = add i64 %call45.i, 500000000
  call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 1034) #9
  %110 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %regmap, align 4
  %call61206.i = call i32 @regmap_read(ptr noundef %111, i32 noundef 150, ptr noundef nonnull %val.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61206.i)
  %tobool62.not207.i = icmp eq i32 %call61206.i, 0
  br i1 %tobool62.not207.i, label %for.body.i103.lor.lhs.false63.i_crit_edge, label %for.body.i103.ti_sn_link_training.exit_crit_edge

for.body.i103.ti_sn_link_training.exit_crit_edge: ; preds = %for.body.i103
  call void @__sanitizer_cov_trace_pc() #11
  br label %ti_sn_link_training.exit

for.body.i103.lor.lhs.false63.i_crit_edge:        ; preds = %for.body.i103
  br label %lor.lhs.false63.i

lor.lhs.false63.i:                                ; preds = %if.then79.i.lor.lhs.false63.i_crit_edge, %for.body.i103.lor.lhs.false63.i_crit_edge
  %112 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %113)
  %switch.i = icmp ult i32 %113, 2
  br i1 %switch.i, label %lor.lhs.false63.i.if.else.i_crit_edge, label %land.lhs.true70.i

lor.lhs.false63.i.if.else.i_crit_edge:            ; preds = %lor.lhs.false63.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true70.i:                                ; preds = %lor.lhs.false63.i
  %call71.i = call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call71.i, i64 %add.i146.i)
  %cmp3.i148.i = icmp sgt i64 %call71.i, %add.i146.i
  br i1 %cmp3.i148.i, label %for.end83.i, label %if.then79.i

if.then79.i:                                      ; preds = %land.lhs.true70.i
  call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #9
  %114 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %regmap, align 4
  %call61.i = call i32 @regmap_read(ptr noundef %115, i32 noundef 150, ptr noundef nonnull %val.i) #9
  %tobool62.not.i = icmp eq i32 %call61.i, 0
  br i1 %tobool62.not.i, label %if.then79.i.lor.lhs.false63.i_crit_edge, label %if.then79.i.ti_sn_link_training.exit_crit_edge

if.then79.i.ti_sn_link_training.exit_crit_edge:   ; preds = %if.then79.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ti_sn_link_training.exit

if.then79.i.lor.lhs.false63.i_crit_edge:          ; preds = %if.then79.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false63.i

for.end83.i:                                      ; preds = %land.lhs.true70.i
  %116 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %regmap, align 4
  %call76.i = call i32 @regmap_read(ptr noundef %117, i32 noundef 150, ptr noundef nonnull %val.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76.i)
  %tobool85.not.i = icmp eq i32 %call76.i, 0
  br i1 %tobool85.not.i, label %lor.end91.i, label %for.end83.i.ti_sn_link_training.exit_crit_edge

for.end83.i.ti_sn_link_training.exit_crit_edge:   ; preds = %for.end83.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ti_sn_link_training.exit

lor.end91.i:                                      ; preds = %for.end83.i
  %118 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %.pr.i104 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr.i104)
  %switch191.i = icmp ult i32 %.pr.i104, 2
  br i1 %switch191.i, label %lor.end91.i.if.else.i_crit_edge, label %lor.end91.i.ti_sn_link_training.exit_crit_edge

lor.end91.i.ti_sn_link_training.exit_crit_edge:   ; preds = %lor.end91.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ti_sn_link_training.exit

lor.end91.i.if.else.i_crit_edge:                  ; preds = %lor.end91.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.else.i:                                        ; preds = %lor.end91.i.if.else.i_crit_edge, %lor.lhs.false63.i.if.else.i_crit_edge
  %119 = phi i32 [ %.pr.i104, %lor.end91.i.if.else.i_crit_edge ], [ %113, %lor.lhs.false63.i.if.else.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %cmp101.i = icmp eq i32 %119, 0
  br i1 %cmp101.i, label %if.then102.i, label %land.lhs.true107.i

if.then102.i:                                     ; preds = %if.else.i
  %inc.i = add nuw nsw i32 %i.0209.i, 1
  %exitcond.not.i105 = icmp eq i32 %inc.i, 10
  br i1 %exitcond.not.i105, label %if.then102.i.ti_sn_link_training.exit_crit_edge, label %if.then102.i.for.body.i103_crit_edge

if.then102.i.for.body.i103_crit_edge:             ; preds = %if.then102.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i103

if.then102.i.ti_sn_link_training.exit_crit_edge:  ; preds = %if.then102.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ti_sn_link_training.exit

land.lhs.true107.i:                               ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %i.0209.i)
  %cmp108.i = icmp ugt i32 %i.0209.i, 5
  br i1 %cmp108.i, label %if.then109.i, label %land.lhs.true107.i.for.end.thread_crit_edge

land.lhs.true107.i.for.end.thread_crit_edge:      ; preds = %land.lhs.true107.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.thread

if.then109.i:                                     ; preds = %land.lhs.true107.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i106 = getelementptr i8, ptr %bridge, i32 -1744
  %120 = ptrtoint ptr %dev.i106 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %dev.i106, align 8
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %121, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.50, i32 noundef %i.0209.i) #9
  br label %for.end.thread

for.end.thread:                                   ; preds = %if.then109.i, %land.lhs.true107.i.for.end.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  br label %if.end39

ti_sn_link_training.exit:                         ; preds = %if.then102.i.ti_sn_link_training.exit_crit_edge, %lor.end91.i.ti_sn_link_training.exit_crit_edge, %for.end83.i.ti_sn_link_training.exit_crit_edge, %if.then79.i.ti_sn_link_training.exit_crit_edge, %for.body.i103.ti_sn_link_training.exit_crit_edge, %lor.end.i.ti_sn_link_training.exit_crit_edge, %for.end.i.ti_sn_link_training.exit_crit_edge, %if.then25.i.ti_sn_link_training.exit_crit_edge, %if.end.ti_sn_link_training.exit_crit_edge
  %last_err_str.2 = phi ptr [ @.str.46, %if.end.ti_sn_link_training.exit_crit_edge ], [ @.str.46, %for.end.i.ti_sn_link_training.exit_crit_edge ], [ @.str.46, %lor.end.i.ti_sn_link_training.exit_crit_edge ], [ @.str.47, %if.then79.i.ti_sn_link_training.exit_crit_edge ], [ @.str.47, %lor.end91.i.ti_sn_link_training.exit_crit_edge ], [ @.str.47, %for.end83.i.ti_sn_link_training.exit_crit_edge ], [ @.str.47, %for.body.i103.ti_sn_link_training.exit_crit_edge ], [ @.str.48, %if.then102.i.ti_sn_link_training.exit_crit_edge ], [ @.str.46, %if.then25.i.ti_sn_link_training.exit_crit_edge ]
  %ret.2.ph.i = phi i32 [ %call12204.i, %if.end.ti_sn_link_training.exit_crit_edge ], [ %call22.i, %for.end.i.ti_sn_link_training.exit_crit_edge ], [ -110, %lor.end.i.ti_sn_link_training.exit_crit_edge ], [ %call61.i, %if.then79.i.ti_sn_link_training.exit_crit_edge ], [ -110, %lor.end91.i.ti_sn_link_training.exit_crit_edge ], [ %call76.i, %for.end83.i.ti_sn_link_training.exit_crit_edge ], [ %call61206.i, %for.body.i103.ti_sn_link_training.exit_crit_edge ], [ -5, %if.then102.i.ti_sn_link_training.exit_crit_edge ], [ %call12.i, %if.then25.i.ti_sn_link_training.exit_crit_edge ]
  %122 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %regmap, align 4
  %call114.i = call i32 @regmap_write(ptr noundef %123, i32 noundef 13, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #9
  br label %for.inc

for.inc:                                          ; preds = %ti_sn_link_training.exit, %for.body.for.inc_crit_edge
  %last_err_str.4 = phi ptr [ %last_err_str.0131, %for.body.for.inc_crit_edge ], [ %last_err_str.2, %ti_sn_link_training.exit ]
  %ret.1 = phi i32 [ %ret.0132, %for.body.for.inc_crit_edge ], [ %ret.2.ph.i, %ti_sn_link_training.exit ]
  %inc = add nuw nsw i32 %dp_rate_idx.0133, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool37.not = icmp eq i32 %ret.1, 0
  br i1 %tobool37.not, label %for.end.if.end39_crit_edge, label %if.then38

for.end.if.end39_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.then38:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr i8, ptr %bridge, i32 -1744
  %124 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %dev, align 8
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %125, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.39, ptr noundef %last_err_str.4, i32 noundef %ret.1) #9
  br label %cleanup

if.end39:                                         ; preds = %for.end.if.end39_crit_edge, %for.end.thread
  %126 = ptrtoint ptr %encoder.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %encoder.i, align 8
  %crtc.i108 = getelementptr inbounds %struct.drm_encoder, ptr %127, i32 0, i32 8
  %128 = ptrtoint ptr %crtc.i108 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %crtc.i108, align 4
  %state.i109 = getelementptr inbounds %struct.drm_crtc, ptr %129, i32 0, i32 22
  %130 = ptrtoint ptr %state.i109 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %state.i109, align 4
  %flags.i = getelementptr inbounds %struct.drm_crtc_state, ptr %131, i32 0, i32 7, i32 11
  %132 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %flags.i, align 4
  %and.i110 = shl i32 %133, 7
  %134 = and i32 %and.i110, 128
  %and2.i = shl i32 %133, 5
  %135 = and i32 %and2.i, 128
  %hdisplay.i = getelementptr inbounds %struct.drm_crtc_state, ptr %131, i32 0, i32 7, i32 1
  %136 = ptrtoint ptr %hdisplay.i to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %hdisplay.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #9
  %138 = getelementptr inbounds [2 x i8], ptr %buf.i.i, i32 0, i32 1
  %conv1.i.i = trunc i16 %137 to i8
  %139 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %conv1.i.i, ptr %buf.i.i, align 1
  %140 = lshr i16 %137, 8
  %conv3.i.i = trunc i16 %140 to i8
  %141 = ptrtoint ptr %138 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %conv3.i.i, ptr %138, align 1
  %142 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %regmap, align 4
  %call.i.i111 = call i32 @regmap_bulk_write(ptr noundef %143, i32 noundef 32, ptr noundef nonnull %buf.i.i, i32 noundef 2) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #9
  %vdisplay.i = getelementptr inbounds %struct.drm_crtc_state, ptr %131, i32 0, i32 7, i32 6
  %144 = ptrtoint ptr %vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %vdisplay.i, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i93.i) #9
  %146 = getelementptr inbounds [2 x i8], ptr %buf.i93.i, i32 0, i32 1
  %conv1.i94.i = trunc i16 %145 to i8
  %147 = ptrtoint ptr %buf.i93.i to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %conv1.i94.i, ptr %buf.i93.i, align 1
  %148 = lshr i16 %145, 8
  %conv3.i95.i = trunc i16 %148 to i8
  %149 = ptrtoint ptr %146 to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 %conv3.i95.i, ptr %146, align 1
  %150 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %regmap, align 4
  %call.i97.i = call i32 @regmap_bulk_write(ptr noundef %151, i32 noundef 36, ptr noundef nonnull %buf.i93.i, i32 noundef 2) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i93.i) #9
  %152 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %regmap, align 4
  %hsync_end.i = getelementptr inbounds %struct.drm_crtc_state, ptr %131, i32 0, i32 7, i32 3
  %154 = ptrtoint ptr %hsync_end.i to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %hsync_end.i, align 4
  %conv.i = zext i16 %155 to i32
  %hsync_start.i = getelementptr inbounds %struct.drm_crtc_state, ptr %131, i32 0, i32 7, i32 2
  %156 = ptrtoint ptr %hsync_start.i to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %hsync_start.i, align 2
  %conv6.i = zext i16 %157 to i32
  %sub.i112 = sub nsw i32 %conv.i, %conv6.i
  %and7.i = and i32 %sub.i112, 255
  %call.i113 = call i32 @regmap_write(ptr noundef %153, i32 noundef 44, i32 noundef %and7.i) #9
  %158 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %regmap, align 4
  %160 = ptrtoint ptr %hsync_end.i to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %hsync_end.i, align 4
  %conv10.i = zext i16 %161 to i32
  %162 = ptrtoint ptr %hsync_start.i to i32
  call void @__asan_load2_noabort(i32 %162)
  %163 = load i16, ptr %hsync_start.i, align 2
  %conv12.i = zext i16 %163 to i32
  %sub13.i = sub nsw i32 %conv10.i, %conv12.i
  %164 = lshr i32 %sub13.i, 8
  %and14.i = and i32 %164, 127
  %or.i114 = or i32 %and14.i, %134
  %call16.i = call i32 @regmap_write(ptr noundef %159, i32 noundef 45, i32 noundef %or.i114) #9
  %165 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %regmap, align 4
  %vsync_end.i = getelementptr inbounds %struct.drm_crtc_state, ptr %131, i32 0, i32 7, i32 8
  %167 = ptrtoint ptr %vsync_end.i to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %vsync_end.i, align 2
  %conv18.i = zext i16 %168 to i32
  %vsync_start.i = getelementptr inbounds %struct.drm_crtc_state, ptr %131, i32 0, i32 7, i32 7
  %169 = ptrtoint ptr %vsync_start.i to i32
  call void @__asan_load2_noabort(i32 %169)
  %170 = load i16, ptr %vsync_start.i, align 4
  %conv19.i = zext i16 %170 to i32
  %sub20.i = sub nsw i32 %conv18.i, %conv19.i
  %and21.i = and i32 %sub20.i, 255
  %call22.i115 = call i32 @regmap_write(ptr noundef %166, i32 noundef 48, i32 noundef %and21.i) #9
  %171 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %regmap, align 4
  %173 = ptrtoint ptr %vsync_end.i to i32
  call void @__asan_load2_noabort(i32 %173)
  %174 = load i16, ptr %vsync_end.i, align 2
  %conv25.i = zext i16 %174 to i32
  %175 = ptrtoint ptr %vsync_start.i to i32
  call void @__asan_load2_noabort(i32 %175)
  %176 = load i16, ptr %vsync_start.i, align 4
  %conv27.i = zext i16 %176 to i32
  %sub28.i = sub nsw i32 %conv25.i, %conv27.i
  %177 = lshr i32 %sub28.i, 8
  %and30.i = and i32 %177, 127
  %or32.i = or i32 %and30.i, %135
  %call33.i = call i32 @regmap_write(ptr noundef %172, i32 noundef 49, i32 noundef %or32.i) #9
  %178 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %regmap, align 4
  %htotal.i = getelementptr inbounds %struct.drm_crtc_state, ptr %131, i32 0, i32 7, i32 4
  %180 = ptrtoint ptr %htotal.i to i32
  call void @__asan_load2_noabort(i32 %180)
  %181 = load i16, ptr %htotal.i, align 2
  %conv35.i = zext i16 %181 to i32
  %182 = ptrtoint ptr %hsync_end.i to i32
  call void @__asan_load2_noabort(i32 %182)
  %183 = load i16, ptr %hsync_end.i, align 4
  %conv37.i = zext i16 %183 to i32
  %sub38.i = sub nsw i32 %conv35.i, %conv37.i
  %and39.i = and i32 %sub38.i, 255
  %call40.i = call i32 @regmap_write(ptr noundef %179, i32 noundef 52, i32 noundef %and39.i) #9
  %184 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %regmap, align 4
  %vtotal.i = getelementptr inbounds %struct.drm_crtc_state, ptr %131, i32 0, i32 7, i32 9
  %186 = ptrtoint ptr %vtotal.i to i32
  call void @__asan_load2_noabort(i32 %186)
  %187 = load i16, ptr %vtotal.i, align 4
  %conv42.i = zext i16 %187 to i32
  %188 = ptrtoint ptr %vsync_end.i to i32
  call void @__asan_load2_noabort(i32 %188)
  %189 = load i16, ptr %vsync_end.i, align 2
  %conv44.i = zext i16 %189 to i32
  %sub45.i = sub nsw i32 %conv42.i, %conv44.i
  %and46.i = and i32 %sub45.i, 255
  %call47.i = call i32 @regmap_write(ptr noundef %185, i32 noundef 54, i32 noundef %and46.i) #9
  %190 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %regmap, align 4
  %192 = ptrtoint ptr %hsync_start.i to i32
  call void @__asan_load2_noabort(i32 %192)
  %193 = load i16, ptr %hsync_start.i, align 2
  %conv50.i = zext i16 %193 to i32
  %194 = ptrtoint ptr %hdisplay.i to i32
  call void @__asan_load2_noabort(i32 %194)
  %195 = load i16, ptr %hdisplay.i, align 4
  %conv52.i = zext i16 %195 to i32
  %sub53.i = sub nsw i32 %conv50.i, %conv52.i
  %and54.i = and i32 %sub53.i, 255
  %call55.i = call i32 @regmap_write(ptr noundef %191, i32 noundef 56, i32 noundef %and54.i) #9
  %196 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %regmap, align 4
  %198 = ptrtoint ptr %vsync_start.i to i32
  call void @__asan_load2_noabort(i32 %198)
  %199 = load i16, ptr %vsync_start.i, align 4
  %conv58.i = zext i16 %199 to i32
  %200 = ptrtoint ptr %vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %200)
  %201 = load i16, ptr %vdisplay.i, align 2
  %conv60.i = zext i16 %201 to i32
  %sub61.i = sub nsw i32 %conv58.i, %conv60.i
  %and62.i = and i32 %sub61.i, 255
  %call63.i = call i32 @regmap_write(ptr noundef %197, i32 noundef 58, i32 noundef %and62.i) #9
  call void @usleep_range_state(i32 noundef 10000, i32 noundef 10500, i32 noundef 2) #9
  %202 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %regmap, align 4
  %call.i116 = call i32 @regmap_update_bits_base(ptr noundef %203, i32 noundef 90, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %if.then38
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_aux_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_cleanup(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dp_aux_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_connector_duplicate_state(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_destroy_state(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_sn_bridge_connector_get_modes(ptr noundef %connector) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %next_bridge = getelementptr i8, ptr %connector, i32 1052
  %0 = ptrtoint ptr %next_bridge to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %next_bridge, align 4
  %call1 = tail call i32 @drm_bridge_get_modes(ptr noundef %1, ptr noundef %connector) #9
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_get_modes(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ti_sn65dsi86_enable_comms(ptr noundef %pdata) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %comms_mutex = getelementptr inbounds %struct.ti_sn65dsi86, ptr %pdata, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %comms_mutex, i32 noundef 0) #9
  %refclk.i = getelementptr inbounds %struct.ti_sn65dsi86, ptr %pdata, i32 0, i32 11
  %0 = ptrtoint ptr %refclk.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %refclk.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %call.i = tail call i32 @clk_get_rate(ptr noundef nonnull %1) #9
  %2 = ptrtoint ptr %refclk.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %refclk.i, align 8
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i.i:                                       ; preds = %if.then.i
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.end.i_crit_edge, label %if.then3.i.i

if.end.i.i.if.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @clk_unprepare(ptr noundef %3) #9
  br label %if.end.i

if.else.i:                                        ; preds = %entry
  %encoder.i.i = getelementptr inbounds %struct.ti_sn65dsi86, ptr %pdata, i32 0, i32 7, i32 2
  %4 = ptrtoint ptr %encoder.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %encoder.i.i, align 8
  %crtc.i.i = getelementptr inbounds %struct.drm_encoder, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %crtc.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %crtc.i.i, align 4
  %state.i.i = getelementptr inbounds %struct.drm_crtc, ptr %7, i32 0, i32 22
  %8 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %state.i.i, align 4
  %adjusted_mode.i.i = getelementptr inbounds %struct.drm_crtc_state, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %adjusted_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %adjusted_mode.i.i, align 4
  %dsi.i.i = getelementptr inbounds %struct.ti_sn65dsi86, ptr %pdata, i32 0, i32 10
  %12 = ptrtoint ptr %dsi.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dsi.i.i, align 4
  %format.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %format.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %format.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %15)
  %16 = icmp ult i32 %15, 4
  br i1 %16, label %switch.lookup, label %if.else.i.ti_sn_bridge_get_dsi_freq.exit.i_crit_edge

if.else.i.ti_sn_bridge_get_dsi_freq.exit.i_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ti_sn_bridge_get_dsi_freq.exit.i

switch.lookup:                                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.ti_sn65dsi86_enable_comms, i32 0, i32 %15
  %17 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %17)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %ti_sn_bridge_get_dsi_freq.exit.i

ti_sn_bridge_get_dsi_freq.exit.i:                 ; preds = %switch.lookup, %if.else.i.ti_sn_bridge_get_dsi_freq.exit.i_crit_edge
  %retval.0.i.i.i = phi i32 [ %switch.load, %switch.lookup ], [ -22, %if.else.i.ti_sn_bridge_get_dsi_freq.exit.i_crit_edge ]
  %mul.i.i = mul i32 %retval.0.i.i.i, %11
  %lanes.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %13, i32 0, i32 4
  %18 = ptrtoint ptr %lanes.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %lanes.i.i, align 8
  %mul2.i.i = shl i32 %19, 1
  %div.i.i = udiv i32 %mul.i.i, %mul2.i.i
  %mul.i = mul i32 %div.i.i, 1000
  br label %if.end.i

if.end.i:                                         ; preds = %ti_sn_bridge_get_dsi_freq.exit.i, %if.then3.i.i, %if.end.i.i.if.end.i_crit_edge, %if.then.i.if.end.i_crit_edge
  %refclk_rate.0.i = phi i32 [ %mul.i, %ti_sn_bridge_get_dsi_freq.exit.i ], [ %call.i, %if.then.i.if.end.i_crit_edge ], [ %call.i, %if.end.i.i.if.end.i_crit_edge ], [ %call.i, %if.then3.i.i ]
  %refclk_lut.0.i = phi ptr [ @ti_sn_bridge_dsiclk_lut, %ti_sn_bridge_get_dsi_freq.exit.i ], [ @ti_sn_bridge_refclk_lut, %if.then.i.if.end.i_crit_edge ], [ @ti_sn_bridge_refclk_lut, %if.end.i.i.if.end.i_crit_edge ], [ @ti_sn_bridge_refclk_lut, %if.then3.i.i ]
  %20 = ptrtoint ptr %refclk_lut.0.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %refclk_lut.0.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %refclk_rate.0.i)
  %cmp5.i = icmp eq i32 %21, %refclk_rate.0.i
  br i1 %cmp5.i, label %if.end.i.ti_sn_bridge_set_refclk_freq.exit_crit_edge, label %for.inc.i

if.end.i.ti_sn_bridge_set_refclk_freq.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ti_sn_bridge_set_refclk_freq.exit

for.inc.i:                                        ; preds = %if.end.i
  %arrayidx.1.i = getelementptr i32, ptr %refclk_lut.0.i, i32 1
  %22 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %refclk_rate.0.i)
  %cmp5.1.i = icmp eq i32 %23, %refclk_rate.0.i
  br i1 %cmp5.1.i, label %for.inc.i.ti_sn_bridge_set_refclk_freq.exit_crit_edge, label %for.inc.1.i

for.inc.i.ti_sn_bridge_set_refclk_freq.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ti_sn_bridge_set_refclk_freq.exit

for.inc.1.i:                                      ; preds = %for.inc.i
  %arrayidx.2.i = getelementptr i32, ptr %refclk_lut.0.i, i32 2
  %24 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %refclk_rate.0.i)
  %cmp5.2.i = icmp eq i32 %25, %refclk_rate.0.i
  br i1 %cmp5.2.i, label %for.inc.1.i.ti_sn_bridge_set_refclk_freq.exit_crit_edge, label %for.inc.2.i

for.inc.1.i.ti_sn_bridge_set_refclk_freq.exit_crit_edge: ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ti_sn_bridge_set_refclk_freq.exit

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %arrayidx.3.i = getelementptr i32, ptr %refclk_lut.0.i, i32 3
  %26 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %refclk_rate.0.i)
  %cmp5.3.i = icmp eq i32 %27, %refclk_rate.0.i
  br i1 %cmp5.3.i, label %for.inc.2.i.ti_sn_bridge_set_refclk_freq.exit_crit_edge, label %for.inc.3.i

for.inc.2.i.ti_sn_bridge_set_refclk_freq.exit_crit_edge: ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ti_sn_bridge_set_refclk_freq.exit

for.inc.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.4.i = getelementptr i32, ptr %refclk_lut.0.i, i32 4
  %28 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %refclk_rate.0.i)
  %cmp5.4.i = icmp eq i32 %29, %refclk_rate.0.i
  %spec.select.i = select i1 %cmp5.4.i, i32 4, i32 5
  br label %ti_sn_bridge_set_refclk_freq.exit

ti_sn_bridge_set_refclk_freq.exit:                ; preds = %for.inc.3.i, %for.inc.2.i.ti_sn_bridge_set_refclk_freq.exit_crit_edge, %for.inc.1.i.ti_sn_bridge_set_refclk_freq.exit_crit_edge, %for.inc.i.ti_sn_bridge_set_refclk_freq.exit_crit_edge, %if.end.i.ti_sn_bridge_set_refclk_freq.exit_crit_edge
  %i.0.lcssa.i = phi i32 [ 0, %if.end.i.ti_sn_bridge_set_refclk_freq.exit_crit_edge ], [ 1, %for.inc.i.ti_sn_bridge_set_refclk_freq.exit_crit_edge ], [ 2, %for.inc.1.i.ti_sn_bridge_set_refclk_freq.exit_crit_edge ], [ 3, %for.inc.2.i.ti_sn_bridge_set_refclk_freq.exit_crit_edge ], [ %spec.select.i, %for.inc.3.i ]
  %regmap.i = getelementptr inbounds %struct.ti_sn65dsi86, ptr %pdata, i32 0, i32 5
  %30 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap.i, align 4
  %shl.i = shl nuw nsw i32 %i.0.lcssa.i, 1
  %call.i19.i = tail call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef 10, i32 noundef 14, i32 noundef %shl.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %arrayidx9.i = getelementptr [5 x i32], ptr @ti_sn_bridge_refclk_lut, i32 0, i32 %i.0.lcssa.i
  %32 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx9.i, align 4
  %pwm_refclk_freq.i = getelementptr inbounds %struct.ti_sn65dsi86, ptr %pdata, i32 0, i32 25
  %34 = ptrtoint ptr %pwm_refclk_freq.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %pwm_refclk_freq.i, align 4
  %35 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap.i, align 4
  %call.i6 = tail call i32 @regmap_update_bits_base(ptr noundef %36, i32 noundef 92, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %comms_enabled = getelementptr inbounds %struct.ti_sn65dsi86, ptr %pdata, i32 0, i32 18
  %37 = ptrtoint ptr %comms_enabled to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %comms_enabled, align 2
  tail call void @mutex_unlock(ptr noundef %comms_mutex) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_dpcd_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_dpcd_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_mipi_dsi_host_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_mipi_dsi_device_register_full(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_mipi_dsi_attach(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_sn_aux_probe(ptr noundef %adev, ptr nocapture noundef readnone %id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.device, ptr %adev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %aux = getelementptr inbounds %struct.ti_sn65dsi86, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %aux to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @.str.52, ptr %aux, align 8
  %dev3 = getelementptr inbounds %struct.ti_sn65dsi86, ptr %3, i32 0, i32 6, i32 2
  %5 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %adev, ptr %dev3, align 8
  %transfer = getelementptr inbounds %struct.ti_sn65dsi86, ptr %3, i32 0, i32 6, i32 8
  %6 = ptrtoint ptr %transfer to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @ti_sn_aux_transfer, ptr %transfer, align 8
  tail call void @drm_dp_aux_init(ptr noundef %aux) #9
  %call7 = tail call i32 @devm_of_dp_aux_populate_ep_devices(ptr noundef %aux) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call8 = tail call fastcc i32 @ti_sn65dsi86_add_aux_device(ptr noundef %3, ptr noundef %3, ptr noundef nonnull @.str.27)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.end ], [ %call7, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_sn_aux_transfer(ptr noundef %aux, ptr nocapture noundef %msg) #3 align 64 {
entry:
  %len = alloca i32, align 4
  %val = alloca i32, align 4
  %addr_len = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %request1 = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %msg, i32 0, i32 1
  %0 = ptrtoint ptr %request1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %request1, align 4
  %conv = zext i8 %1 to i32
  %and = and i8 %1, -7
  %shl = shl nuw nsw i32 %conv, 4
  %buffer = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %msg, i32 0, i32 3
  %2 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #9
  %size = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %msg, i32 0, i32 4
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size, align 4
  %6 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %len, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %val, align 4, !annotation !212
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %addr_len) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %5)
  %cmp = icmp ugt i32 %5, 16
  %8 = ptrtoint ptr %addr_len to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %addr_len, align 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr i8, ptr %aux, i32 -8
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %10, i32 noundef 4) #9
  %comms_mutex = getelementptr i8, ptr %aux, i32 3132
  tail call void @mutex_lock_nested(ptr noundef %comms_mutex, i32 noundef 0) #9
  %comms_enabled = getelementptr i8, ptr %aux, i32 3130
  %11 = ptrtoint ptr %comms_enabled to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %comms_enabled, align 2, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %if.end.exit_crit_edge, label %if.end7

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.end7:                                          ; preds = %if.end
  %13 = zext i8 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.71)
  switch i8 %and, label %if.end7.exit_crit_edge [
    i8 8, label %if.end7.sw.bb_crit_edge
    i8 0, label %if.end7.sw.bb_crit_edge199
    i8 9, label %if.end7.sw.bb_crit_edge200
    i8 1, label %if.end7.sw.bb_crit_edge201
  ]

if.end7.sw.bb_crit_edge201:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end7.sw.bb_crit_edge200:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end7.sw.bb_crit_edge199:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end7.sw.bb_crit_edge:                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb

if.end7.exit_crit_edge:                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

sw.bb:                                            ; preds = %if.end7.sw.bb_crit_edge, %if.end7.sw.bb_crit_edge199, %if.end7.sw.bb_crit_edge200, %if.end7.sw.bb_crit_edge201
  %regmap = getelementptr i8, ptr %aux, i32 -4
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %call8 = tail call i32 @regmap_write(ptr noundef %15, i32 noundef 120, i32 noundef %shl) #9
  %reply = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %msg, i32 0, i32 2
  %16 = ptrtoint ptr %reply to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %reply, align 1
  %17 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %msg, align 4
  %and9 = shl i32 %18, 8
  %shl10 = and i32 %and9, 268435200
  %19 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len, align 4
  %or = or i32 %shl10, %20
  %21 = ptrtoint ptr %addr_len to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or, ptr %addr_len, align 4
  %22 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap, align 4
  %call13 = call i32 @regmap_bulk_write(ptr noundef %23, i32 noundef 116, ptr noundef nonnull %addr_len, i32 noundef 4) #9
  %24 = zext i8 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.72)
  switch i8 %and, label %sw.bb.if.end21_crit_edge [
    i8 8, label %sw.bb.if.then18_crit_edge
    i8 0, label %sw.bb.if.then18_crit_edge202
  ]

sw.bb.if.then18_crit_edge202:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then18

sw.bb.if.then18_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then18

sw.bb.if.end21_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then18:                                        ; preds = %sw.bb.if.then18_crit_edge, %sw.bb.if.then18_crit_edge202
  %25 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap, align 4
  %27 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len, align 4
  %call20 = call i32 @regmap_bulk_write(ptr noundef %26, i32 noundef 100, ptr noundef %3, i32 noundef %28) #9
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %sw.bb.if.end21_crit_edge
  %29 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap, align 4
  %call23 = call i32 @regmap_write(ptr noundef %30, i32 noundef 244, i32 noundef 104) #9
  %31 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap, align 4
  %or25 = or i32 %shl, 1
  %call26 = call i32 @regmap_write(ptr noundef %32, i32 noundef 120, i32 noundef %or25) #9
  %call27 = call i64 @ktime_get() #9
  %add.i = add i64 %call27, 50000000
  br label %for.cond

for.cond:                                         ; preds = %land.lhs.true.for.cond_crit_edge, %if.end21
  %33 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap, align 4
  %call43 = call i32 @regmap_read(ptr noundef %34, i32 noundef 120, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %lor.lhs.false45, label %for.cond.exit_crit_edge

for.cond.exit_crit_edge:                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

lor.lhs.false45:                                  ; preds = %for.cond
  %35 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %val, align 4
  %and46 = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %lor.lhs.false45.lor.rhs_crit_edge, label %land.lhs.true

lor.lhs.false45.lor.rhs_crit_edge:                ; preds = %lor.lhs.false45
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false45
  %call51 = call i64 @ktime_get() #9
  %cmp3.i = icmp sgt i64 %call51, %add.i
  br i1 %cmp3.i, label %for.end, label %land.lhs.true.for.cond_crit_edge

land.lhs.true.for.cond_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

for.end:                                          ; preds = %land.lhs.true
  %37 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap, align 4
  %call57 = call i32 @regmap_read(ptr noundef %38, i32 noundef 120, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool62.not = icmp eq i32 %call57, 0
  br i1 %tobool62.not, label %for.end.lor.rhs_crit_edge, label %for.end.exit_crit_edge

for.end.exit_crit_edge:                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

for.end.lor.rhs_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.rhs

lor.rhs:                                          ; preds = %for.end.lor.rhs_crit_edge, %lor.lhs.false45.lor.rhs_crit_edge
  %39 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %val, align 4
  %and63 = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %if.end70, label %lor.rhs.exit_crit_edge

lor.rhs.exit_crit_edge:                           ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.end70:                                         ; preds = %lor.rhs
  %41 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regmap, align 4
  %call72 = call i32 @regmap_read(ptr noundef %42, i32 noundef 244, ptr noundef nonnull %val) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end75, label %if.end70.exit_crit_edge

if.end70.exit_crit_edge:                          ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.end75:                                         ; preds = %if.end70
  %43 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %val, align 4
  %and76 = and i32 %44, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %if.end79, label %if.end75.exit_crit_edge

if.end75.exit_crit_edge:                          ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.end79:                                         ; preds = %if.end75
  %and80 = and i32 %44, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and80)
  %tobool81.not = icmp eq i32 %and80, 0
  br i1 %tobool81.not, label %if.else, label %if.then82

if.then82:                                        ; preds = %if.end79
  %45 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regmap, align 4
  %call84 = call i32 @regmap_read(ptr noundef %46, i32 noundef 119, ptr noundef nonnull %len) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.then82.if.end103_crit_edge, label %if.then82.exit_crit_edge

if.then82.exit_crit_edge:                         ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.then82.if.end103_crit_edge:                    ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end103

if.else:                                          ; preds = %if.end79
  %and88 = and i32 %44, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %tobool89.not = icmp eq i32 %and88, 0
  br i1 %tobool89.not, label %if.else.if.end103_crit_edge, label %if.then90

if.else.if.end103_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end103

if.then90:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %and)
  %47 = icmp ult i8 %and, 10
  br i1 %47, label %switch.hole_check, label %if.then90.sw.epilog101_crit_edge

if.then90.sw.epilog101_crit_edge:                 ; preds = %if.then90
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog101

switch.hole_check:                                ; preds = %if.then90
  %switch.maskindex = zext i8 %and to i16
  %switch.shifted = lshr i16 771, %switch.maskindex
  %48 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %48)
  %switch.lobit.not = icmp eq i16 %48, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.epilog101_crit_edge, label %switch.lookup

switch.hole_check.sw.epilog101_crit_edge:         ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog101

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  %49 = sext i8 %and to i32
  %switch.gep = getelementptr inbounds [10 x i8], ptr @switch.table.ti_sn_aux_transfer, i32 0, i32 %49
  %50 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %50)
  %switch.load = load i8, ptr %switch.gep, align 1
  %51 = ptrtoint ptr %reply to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %reply, align 1
  %53 = or i8 %52, %switch.load
  store i8 %53, ptr %reply, align 1
  br label %sw.epilog101

sw.epilog101:                                     ; preds = %switch.lookup, %switch.hole_check.sw.epilog101_crit_edge, %if.then90.sw.epilog101_crit_edge
  %54 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %len, align 4
  br label %exit

if.end103:                                        ; preds = %if.else.if.end103_crit_edge, %if.then82.if.end103_crit_edge
  %55 = zext i8 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.73)
  switch i8 %and, label %land.lhs.true109 [
    i8 8, label %if.end103.exit_crit_edge
    i8 0, label %if.end103.exit_crit_edge203
  ]

if.end103.exit_crit_edge203:                      ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.end103.exit_crit_edge:                         ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

land.lhs.true109:                                 ; preds = %if.end103
  %56 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp110.not = icmp eq i32 %57, 0
  br i1 %cmp110.not, label %land.lhs.true109.exit_crit_edge, label %if.then112

land.lhs.true109.exit_crit_edge:                  ; preds = %land.lhs.true109
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.then112:                                       ; preds = %land.lhs.true109
  call void @__sanitizer_cov_trace_pc() #11
  %58 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regmap, align 4
  %call114 = call i32 @regmap_bulk_read(ptr noundef %59, i32 noundef 121, ptr noundef %3, i32 noundef %57) #9
  br label %exit

exit:                                             ; preds = %if.then112, %land.lhs.true109.exit_crit_edge, %if.end103.exit_crit_edge, %if.end103.exit_crit_edge203, %sw.epilog101, %if.then82.exit_crit_edge, %if.end75.exit_crit_edge, %if.end70.exit_crit_edge, %lor.rhs.exit_crit_edge, %for.end.exit_crit_edge, %for.cond.exit_crit_edge, %if.end7.exit_crit_edge, %if.end.exit_crit_edge
  %ret.1 = phi i32 [ %call72, %if.end70.exit_crit_edge ], [ %call84, %if.then82.exit_crit_edge ], [ %call114, %if.then112 ], [ 0, %land.lhs.true109.exit_crit_edge ], [ 0, %if.end103.exit_crit_edge ], [ 0, %sw.epilog101 ], [ -5, %if.end.exit_crit_edge ], [ -22, %if.end7.exit_crit_edge ], [ -110, %if.end75.exit_crit_edge ], [ 0, %if.end103.exit_crit_edge203 ], [ -110, %lor.rhs.exit_crit_edge ], [ %call57, %for.end.exit_crit_edge ], [ %call43, %for.cond.exit_crit_edge ]
  call void @mutex_unlock(ptr noundef %comms_mutex) #9
  %60 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev, align 8
  %call.i170 = call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.device, ptr %61, i32 0, i32 12, i32 22
  %62 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %62)
  store volatile i64 %call.i170, ptr %last_busy.i, align 8
  %63 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev, align 8
  %call.i171 = call i32 @__pm_runtime_suspend(ptr noundef %64, i32 noundef 13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool120.not = icmp eq i32 %ret.1, 0
  br i1 %tobool120.not, label %if.end122, label %exit.cleanup_crit_edge

exit.cleanup_crit_edge:                           ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end122:                                        ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #11
  %65 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %len, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end122, %exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %66, %if.end122 ], [ -22, %entry.cleanup_crit_edge ], [ %ret.1, %exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %addr_len) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dp_aux_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_of_dp_aux_populate_ep_devices(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ti_sn65dsi86_add_aux_device(ptr nocapture noundef readonly %pdata, ptr noundef %aux, ptr noundef %name) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.ti_sn65dsi86, ptr %pdata, i32 0, i32 4
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %name2 = getelementptr inbounds %struct.auxiliary_device, ptr %aux, i32 0, i32 1
  %2 = ptrtoint ptr %name2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %name, ptr %name2, align 8
  %parent = getelementptr inbounds %struct.device, ptr %aux, i32 0, i32 1
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %1, ptr %parent, align 8
  %release = getelementptr inbounds %struct.device, ptr %aux, i32 0, i32 35
  %4 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @ti_sn65dsi86_noop, ptr %release, align 4
  tail call void @device_set_of_node_from_dev(ptr noundef %aux, ptr noundef %1) #9
  %call = tail call i32 @auxiliary_device_init(ptr noundef %aux) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @devm_add_action(ptr noundef %1, ptr noundef nonnull @ti_sn65dsi86_uninit_aux, ptr noundef %aux) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end9, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @put_device(ptr noundef %aux) #9
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call i32 @__auxiliary_device_add(ptr noundef %aux, ptr noundef nonnull @.str) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %call.i32 = tail call i32 @devm_add_action(ptr noundef %1, ptr noundef nonnull @ti_sn65dsi86_delete_aux, ptr noundef %aux) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32)
  %tobool.not.i33 = icmp eq i32 %call.i32, 0
  br i1 %tobool.not.i33, label %if.end13.cleanup_crit_edge, label %if.then.i34

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i34:                                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @device_del(ptr noundef %aux) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i34, %if.end13.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %devm_add_action_or_reset.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call.i, %devm_add_action_or_reset.exit ], [ %call10, %if.end9.cleanup_crit_edge ], [ 0, %if.end13.cleanup_crit_edge ], [ %call.i32, %if.then.i34 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ti_sn65dsi86_noop(ptr nocapture noundef %dev) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_of_node_from_dev(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @auxiliary_device_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ti_sn65dsi86_uninit_aux(ptr noundef %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @put_device(ptr noundef %data) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__auxiliary_device_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ti_sn65dsi86_delete_aux(ptr noundef %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @device_del(ptr noundef %data) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_sn65dsi86_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %call.i.i = tail call i32 %5(ptr noundef %1) #9
  %and.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.53) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 7376, i32 noundef 3520) #9
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %driver_data.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %6 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %driver_data.i, align 4
  %dev6 = getelementptr inbounds %struct.ti_sn65dsi86, ptr %call.i, i32 0, i32 4
  %7 = ptrtoint ptr %dev6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev1, ptr %dev6, align 8
  %comms_mutex = getelementptr inbounds %struct.ti_sn65dsi86, ptr %call.i, i32 0, i32 19
  tail call void @__mutex_init(ptr noundef %comms_mutex, ptr noundef nonnull @.str.54, ptr noundef nonnull @ti_sn65dsi86_probe.__key) #9
  %call7 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @ti_sn65dsi86_regmap_config, ptr noundef nonnull @ti_sn65dsi86_probe._key, ptr noundef nonnull @.str.55) #9
  %regmap = getelementptr inbounds %struct.ti_sn65dsi86, ptr %call.i, i32 0, i32 5
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %if.end14

if.then10:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %call7 to i32
  %call13 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %9, ptr noundef nonnull @.str.56) #9
  br label %cleanup

if.end14:                                         ; preds = %if.end5
  %call15 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.57, i32 noundef 3) #9
  %enable_gpio = getelementptr inbounds %struct.ti_sn65dsi86, ptr %call.i, i32 0, i32 13
  %10 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call15, ptr %enable_gpio, align 8
  %cmp.i95 = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i95, label %if.then18, label %if.end22

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %call15 to i32
  %call21 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %11, ptr noundef nonnull @.str.58) #9
  br label %cleanup

if.end22:                                         ; preds = %if.end14
  %arrayidx1.i = getelementptr %struct.ti_sn65dsi86, ptr %call.i, i32 0, i32 14, i32 0
  %12 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.62, ptr %arrayidx1.i, align 4
  %arrayidx1.1.i = getelementptr %struct.ti_sn65dsi86, ptr %call.i, i32 0, i32 14, i32 1
  %13 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @.str.63, ptr %arrayidx1.1.i, align 4
  %arrayidx1.2.i = getelementptr %struct.ti_sn65dsi86, ptr %call.i, i32 0, i32 14, i32 2
  %14 = ptrtoint ptr %arrayidx1.2.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.64, ptr %arrayidx1.2.i, align 4
  %arrayidx1.3.i = getelementptr %struct.ti_sn65dsi86, ptr %call.i, i32 0, i32 14, i32 3
  %15 = ptrtoint ptr %arrayidx1.3.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.65, ptr %arrayidx1.3.i, align 4
  %16 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev6, align 8
  %call.i96 = tail call i32 @devm_regulator_bulk_get(ptr noundef %17, i32 noundef 4, ptr noundef %arrayidx1.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i96)
  %tobool24.not = icmp eq i32 %call.i96, 0
  br i1 %tobool24.not, label %if.end27, label %if.then25

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %call26 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %call.i96, ptr noundef nonnull @.str.59) #9
  br label %cleanup

if.end27:                                         ; preds = %if.end22
  %call28 = tail call ptr @devm_clk_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.60) #9
  %refclk = getelementptr inbounds %struct.ti_sn65dsi86, ptr %call.i, i32 0, i32 11
  %18 = ptrtoint ptr %refclk to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call28, ptr %refclk, align 8
  %cmp.i97 = icmp ugt ptr %call28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i97, label %if.then31, label %if.end35

if.then31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %call28 to i32
  %call34 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %19, ptr noundef nonnull @.str.61) #9
  br label %cleanup

if.end35:                                         ; preds = %if.end27
  tail call void @pm_runtime_enable(ptr noundef %dev1) #9
  %20 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev6, align 8
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %21, i32 noundef 500) #9
  %22 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev6, align 8
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %23, i1 noundef zeroext true) #9
  %call.i98 = tail call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @ti_sn65dsi86_runtime_disable, ptr noundef %dev1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i98)
  %tobool.not.i = icmp eq i32 %call.i98, 0
  br i1 %tobool.not.i, label %if.end41, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @ti_sn65dsi86_runtime_disable(ptr noundef %dev1) #9, !callees !216
  br label %cleanup

if.end41:                                         ; preds = %if.end35
  tail call fastcc void @ti_sn65dsi86_debugfs_init(ptr noundef nonnull %call.i)
  %gpio_aux = getelementptr inbounds %struct.ti_sn65dsi86, ptr %call.i, i32 0, i32 1
  %call42 = tail call fastcc i32 @ti_sn65dsi86_add_aux_device(ptr noundef nonnull %call.i, ptr noundef %gpio_aux, ptr noundef nonnull @.str.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.end45, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end45:                                         ; preds = %if.end41
  %pwm_aux = getelementptr inbounds %struct.ti_sn65dsi86, ptr %call.i, i32 0, i32 3
  %call46 = tail call fastcc i32 @ti_sn65dsi86_add_aux_device(ptr noundef nonnull %call.i, ptr noundef %pwm_aux, ptr noundef nonnull @.str.18)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end49, label %if.end45.cleanup_crit_edge

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end49:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  %aux_aux = getelementptr inbounds %struct.ti_sn65dsi86, ptr %call.i, i32 0, i32 2
  %call50 = tail call fastcc i32 @ti_sn65dsi86_add_aux_device(ptr noundef nonnull %call.i, ptr noundef %aux_aux, ptr noundef nonnull @.str.51)
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %if.end45.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %devm_add_action_or_reset.exit, %if.then31, %if.then25, %if.then18, %if.then10, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call13, %if.then10 ], [ %call21, %if.then18 ], [ %call26, %if.then25 ], [ %call34, %if.then31 ], [ %call50, %if.end49 ], [ -19, %if.then ], [ -12, %if.end.cleanup_crit_edge ], [ %call.i98, %devm_add_action_or_reset.exit ], [ %call42, %if.end41.cleanup_crit_edge ], [ %call46, %if.end45.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ti_sn65dsi86_runtime_disable(ptr noundef %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %data, i1 noundef zeroext false) #9
  tail call void @__pm_runtime_disable(ptr noundef %data, i1 noundef zeroext true) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ti_sn65dsi86_debugfs_init(ptr noundef %pdata) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.ti_sn65dsi86, ptr %pdata, i32 0, i32 4
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %5, %if.end.i ], [ %3, %entry.dev_name.exit_crit_edge ]
  %call2 = tail call ptr @debugfs_create_dir(ptr noundef %retval.0.i, ptr noundef null) #9
  %tobool.not.i14 = icmp eq ptr %call2, null
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i14, %cmp.i
  br i1 %spec.select.i, label %dev_name.exit.cleanup_crit_edge, label %if.end

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %dev_name.exit
  %call.i = tail call i32 @devm_add_action(ptr noundef %1, ptr noundef nonnull @ti_sn65dsi86_debugfs_remove, ptr noundef nonnull %call2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i15 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i15, label %if.end6, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @debugfs_remove(ptr noundef nonnull %call2) #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call7 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.66, i16 noundef zeroext 384, ptr noundef nonnull %call2, ptr noundef %pdata, ptr noundef nonnull @status_fops) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %devm_add_action_or_reset.exit, %dev_name.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ti_sn65dsi86_debugfs_remove(ptr noundef %data) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @debugfs_remove(ptr noundef %data) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @status_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @status_show, ptr noundef %1) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @status_show(ptr noundef %s, ptr nocapture noundef readnone %data) #3 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !212
  tail call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.67) #9
  %dev = getelementptr inbounds %struct.ti_sn65dsi86, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %4, i32 noundef 4) #9
  %regmap = getelementptr inbounds %struct.ti_sn65dsi86, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call1 = call i32 @regmap_read(ptr noundef %6, i32 noundef 240, ptr noundef nonnull %val) #9
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.68, i32 noundef 240, i32 noundef %8) #9
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call1.1 = call i32 @regmap_read(ptr noundef %10, i32 noundef 241, ptr noundef nonnull %val) #9
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.68, i32 noundef 241, i32 noundef %12) #9
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call1.2 = call i32 @regmap_read(ptr noundef %14, i32 noundef 242, ptr noundef nonnull %val) #9
  %15 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.68, i32 noundef 242, i32 noundef %16) #9
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  %call1.3 = call i32 @regmap_read(ptr noundef %18, i32 noundef 243, ptr noundef nonnull %val) #9
  %19 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.68, i32 noundef 243, i32 noundef %20) #9
  %21 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap, align 4
  %call1.4 = call i32 @regmap_read(ptr noundef %22, i32 noundef 244, ptr noundef nonnull %val) #9
  %23 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %val, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.68, i32 noundef 244, i32 noundef %24) #9
  %25 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap, align 4
  %call1.5 = call i32 @regmap_read(ptr noundef %26, i32 noundef 245, ptr noundef nonnull %val) #9
  %27 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %val, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.68, i32 noundef 245, i32 noundef %28) #9
  %29 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap, align 4
  %call1.6 = call i32 @regmap_read(ptr noundef %30, i32 noundef 246, ptr noundef nonnull %val) #9
  %31 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %val, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.68, i32 noundef 246, i32 noundef %32) #9
  %33 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap, align 4
  %call1.7 = call i32 @regmap_read(ptr noundef %34, i32 noundef 247, ptr noundef nonnull %val) #9
  %35 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %val, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.68, i32 noundef 247, i32 noundef %36) #9
  %37 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap, align 4
  %call1.8 = call i32 @regmap_read(ptr noundef %38, i32 noundef 248, ptr noundef nonnull %val) #9
  %39 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %val, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.68, i32 noundef 248, i32 noundef %40) #9
  %41 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev, align 8
  %call.i11 = call i32 @__pm_runtime_suspend(ptr noundef %42, i32 noundef 13) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_sn65dsi86_suspend(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %refclk = getelementptr inbounds %struct.ti_sn65dsi86, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %refclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %refclk, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %comms_mutex.i = getelementptr inbounds %struct.ti_sn65dsi86, ptr %1, i32 0, i32 19
  tail call void @mutex_lock_nested(ptr noundef %comms_mutex.i, i32 noundef 0) #9
  %comms_enabled.i = getelementptr inbounds %struct.ti_sn65dsi86, ptr %1, i32 0, i32 18
  %4 = ptrtoint ptr %comms_enabled.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %comms_enabled.i, align 2
  %5 = ptrtoint ptr %refclk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %refclk, align 8
  tail call void @clk_disable(ptr noundef %6) #9
  tail call void @clk_unprepare(ptr noundef %6) #9
  tail call void @mutex_unlock(ptr noundef %comms_mutex.i) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %enable_gpio = getelementptr inbounds %struct.ti_sn65dsi86, ptr %1, i32 0, i32 13
  %7 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %enable_gpio, align 8
  tail call void @gpiod_set_value(ptr noundef %8, i32 noundef 0) #9
  %supplies = getelementptr inbounds %struct.ti_sn65dsi86, ptr %1, i32 0, i32 14
  %call1 = tail call i32 @regulator_bulk_disable(i32 noundef 4, ptr noundef %supplies) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.69, i32 noundef %call1) #9
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_sn65dsi86_resume(ptr nocapture noundef readonly %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %supplies = getelementptr inbounds %struct.ti_sn65dsi86, ptr %1, i32 0, i32 14
  %call1 = tail call i32 @regulator_bulk_enable(i32 noundef 4, ptr noundef %supplies) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.70, i32 noundef %call1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 110, i32 noundef 2) #9
  %enable_gpio = getelementptr inbounds %struct.ti_sn65dsi86, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %enable_gpio, align 8
  tail call void @gpiod_set_value(ptr noundef %3, i32 noundef 1) #9
  %refclk = getelementptr inbounds %struct.ti_sn65dsi86, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %refclk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %refclk, align 8
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @ti_sn65dsi86_enable_comms(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %if.then
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 102)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 102)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !35, !37, !38, !39, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !96, !97, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !135, !137, !139, !141, !143, !145, !147, !149, !151, !152, !154, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197}
!llvm.module.flags = !{!199, !200, !201, !202, !203, !204, !205, !206}
!llvm.ident = !{!207}

!0 = !{ptr @__initcall__kmod_ti_sn65dsi86__335_1964_ti_sn65dsi86_init6, !1, !"__initcall__kmod_ti_sn65dsi86__335_1964_ti_sn65dsi86_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi86.c", i32 1964, i32 1}
!2 = !{ptr @__exitcall_ti_sn65dsi86_exit, !3, !"__exitcall_ti_sn65dsi86_exit", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi86.c", i32 1974, i32 1}
!4 = !{ptr @__UNIQUE_ID_author336, !5, !"__UNIQUE_ID_author336", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi86.c", i32 1976, i32 1}
!6 = !{ptr @__UNIQUE_ID_description337, !7, !"__UNIQUE_ID_description337", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi86.c", i32 1977, i32 1}
!8 = !{ptr @__UNIQUE_ID_file338, !9, !"__UNIQUE_ID_file338", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi86.c", i32 1978, i32 1}
!10 = !{ptr @__UNIQUE_ID_license339, !9, !"__UNIQUE_ID_license339", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi86.c", i32 1943, i32 8}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi86.c", i32 1777, i32 10}
!15 = !{ptr @ti_sn_gpio_driver, !16, !"ti_sn_gpio_driver", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi86.c", i32 1776, i32 32}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi86.c", i32 1743, i32 50}
!19 = !{ptr @ti_sn_gpio_probe.lock_key, !20, !"lock_key", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi86.c", i32 1762, i32 8}
!21 = !{ptr @ti_sn_gpio_probe.request_key, !20, !"request_key", i1 false, i1 false}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi86.c", i32 1764, i32 3}
!24 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @ti_sn_gpio_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @ti_sn_gpio_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi86.c", i32 1643, i32 3}
!32 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @ti_sn_bridge_gpio_set._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @ti_sn_bridge_gpio_set._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi86.c", i32 1652, i32 3}
!37 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @ti_sn_bridge_gpio_set._entry.10, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @ti_sn_bridge_gpio_set._entry_ptr.13, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi86.c", i32 1733, i32 2}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi86.c", i32 1733, i32 11}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi86.c", i32 1733, i32 20}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi86.c", i32 1733, i32 29}
!48 = !{ptr @ti_sn_bridge_gpio_names, !49, !"ti_sn_bridge_gpio_names", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi86.c", i32 1732, i32 27}
!50 = !{ptr @ti_sn_gpio_id_table, !51, !"ti_sn_gpio_id_table", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi86.c", i32 1769, i32 41}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi86.c", i32 1552, i32 10}
!54 = !{ptr @ti_sn_pwm_driver, !55, !"ti_sn_pwm_driver", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi86.c", i32 1551, i32 32}
!56 = !{ptr @ti_sn_pwm_ops, !57, !"ti_sn_pwm_ops", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi86.c", i32 1514, i32 29}
!58 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi86.c", i32 1372, i32 5}
!60 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @ti_sn_pwm_apply._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @ti_sn_pwm_apply._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.22, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi86.c", i32 1448, i32 4}
!65 = !{ptr @ti_sn_pwm_apply._entry.21, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @ti_sn_pwm_apply._entry_ptr.23, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.25, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi86.c", i32 1460, i32 3}
!69 = !{ptr @ti_sn_pwm_apply._entry.24, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @ti_sn_pwm_apply._entry_ptr.26, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @ti_sn_pwm_id_table, !72, !"ti_sn_pwm_id_table", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi86.c", i32 1546, i32 41}
!73 = !{ptr @.str.27, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi86.c", i32 1291, i32 10}
!75 = !{ptr @ti_sn_bridge_driver, !76, !"ti_sn_bridge_driver", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi86.c", i32 1290, i32 32}
!77 = !{ptr @.str.28, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi86.c", i32 1241, i32 10}
!79 = !{ptr @.str.29, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi86.c", i32 1245, i32 3}
!81 = !{ptr @.str.30, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi86.c", i32 1262, i32 34}
!83 = !{ptr @.str.31, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi86.c", i32 1189, i32 51}
!85 = !{ptr @.str.32, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi86.c", i32 1193, i32 40}
!87 = !{ptr @.str.33, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi86.c", i32 1223, i32 3}
!89 = !{ptr @ti_sn_bridge_funcs, !90, !"ti_sn_bridge_funcs", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi86.c", i32 1157, i32 38}
!91 = !{ptr @.str.34, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi86.c", i32 749, i32 3}
!93 = !{ptr @.str.35, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi86.c", i32 756, i32 3}
!95 = !{ptr @.str.36, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @ti_sn_bridge_attach._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @ti_sn_bridge_attach._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.37, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi86.c", i32 686, i32 3}
!100 = !{ptr @ti_sn_bridge_connector_funcs, !101, !"ti_sn_bridge_connector_funcs", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi86.c", i32 670, i32 41}
!102 = !{ptr @ti_sn_bridge_connector_helper_funcs, !103, !"ti_sn_bridge_connector_helper_funcs", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi86.c", i32 666, i32 42}
!104 = !{ptr @ti_sn_bridge_refclk_lut, !105, !"ti_sn_bridge_refclk_lut", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi86.c", i32 256, i32 18}
!106 = !{ptr @ti_sn_bridge_dsiclk_lut, !107, !"ti_sn_bridge_dsiclk_lut", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi86.c", i32 265, i32 18}
!108 = !{ptr @.str.38, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi86.c", i32 1061, i32 29}
!110 = !{ptr @.str.39, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi86.c", i32 1115, i32 3}
!112 = !{ptr @.str.40, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi86.c", i32 992, i32 3}
!114 = !{ptr @.str.41, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi86.c", i32 874, i32 3}
!116 = !{ptr @.str.42, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi86.c", i32 887, i32 4}
!118 = !{ptr @.str.43, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi86.c", i32 913, i32 3}
!120 = !{ptr @.str.44, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi86.c", i32 920, i32 3}
!122 = !{ptr @.str.45, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi86.c", i32 928, i32 3}
!124 = distinct !{null, !125, !"ti_sn_bridge_dp_rate_lut", i1 false, i1 false}
!125 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi86.c", i32 838, i32 27}
!126 = !{ptr @.str.46, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi86.c", i32 1018, i32 19}
!128 = !{ptr @.str.47, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi86.c", i32 1036, i32 20}
!130 = !{ptr @.str.48, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi86.c", i32 1038, i32 20}
!132 = !{ptr @.str.49, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi86.c", i32 1048, i32 3}
!134 = !{ptr @.str.50, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @ti_sn_bridge_id_table, !136, !"ti_sn_bridge_id_table", i1 false, i1 false}
!136 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi86.c", i32 1285, i32 41}
!137 = !{ptr @.str.51, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi86.c", i32 644, i32 10}
!139 = !{ptr @ti_sn_aux_driver, !140, !"ti_sn_aux_driver", i1 false, i1 false}
!140 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi86.c", i32 643, i32 32}
!141 = !{ptr @.str.52, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi86.c", i32 622, i32 20}
!143 = !{ptr @ti_sn_aux_id_table, !144, !"ti_sn_aux_id_table", i1 false, i1 false}
!144 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi86.c", i32 638, i32 41}
!145 = !{ptr @ti_sn65dsi86_driver, !146, !"ti_sn65dsi86_driver", i1 false, i1 false}
!146 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi86.c", i32 1917, i32 26}
!147 = !{ptr @.str.53, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi86.c", i32 1831, i32 3}
!149 = !{ptr @ti_sn65dsi86_probe.__key, !150, !"__key", i1 false, i1 false}
!150 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi86.c", i32 1841, i32 2}
!151 = !{ptr @.str.54, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @ti_sn65dsi86_probe._key, !153, !"_key", i1 false, i1 false}
!153 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi86.c", i32 1843, i32 18}
!154 = !{ptr @.str.55, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @.str.56, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi86.c", i32 1847, i32 10}
!157 = !{ptr @.str.57, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi86.c", i32 1849, i32 52}
!159 = !{ptr @.str.58, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi86.c", i32 1853, i32 10}
!161 = !{ptr @.str.59, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi86.c", i32 1857, i32 34}
!163 = !{ptr @.str.60, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi86.c", i32 1859, i32 45}
!165 = !{ptr @.str.61, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi86.c", i32 1862, i32 10}
!167 = !{ptr @ti_sn65dsi86_regmap_config, !168, !"ti_sn65dsi86_regmap_config", i1 false, i1 false}
!168 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi86.c", i32 211, i32 35}
!169 = !{ptr @ti_sn_bridge_volatile_table, !170, !"ti_sn_bridge_volatile_table", i1 false, i1 false}
!170 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi86.c", i32 206, i32 41}
!171 = !{ptr @ti_sn65dsi86_volatile_ranges, !172, !"ti_sn65dsi86_volatile_ranges", i1 false, i1 false}
!172 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi86.c", i32 202, i32 34}
!173 = !{ptr @.str.62, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi86.c", i32 1813, i32 3}
!175 = !{ptr @.str.63, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi86.c", i32 1813, i32 11}
!177 = !{ptr @.str.64, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi86.c", i32 1813, i32 18}
!179 = !{ptr @.str.65, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi86.c", i32 1813, i32 27}
!181 = !{ptr @.str.66, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi86.c", i32 445, i32 22}
!183 = !{ptr @status_fops, !184, !"status_fops", i1 false, i1 false}
!184 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi86.c", i32 419, i32 1}
!185 = !{ptr @.str.67, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi86.c", i32 404, i32 14}
!187 = !{ptr @.str.68, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi86.c", i32 411, i32 17}
!189 = !{ptr @ti_sn65dsi86_match_table, !190, !"ti_sn65dsi86_match_table", i1 false, i1 false}
!190 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi86.c", i32 1911, i32 34}
!191 = !{ptr @ti_sn65dsi86_pm_ops, !192, !"ti_sn65dsi86_pm_ops", i1 false, i1 false}
!192 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi86.c", i32 393, i32 32}
!193 = !{ptr @.str.69, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi86.c", i32 388, i32 3}
!195 = !{ptr @.str.70, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi86.c", i32 354, i32 3}
!197 = !{ptr @ti_sn65dsi86_id, !198, !"ti_sn65dsi86_id", i1 false, i1 false}
!198 = !{!"../drivers/gpu/drm/bridge/ti-sn65dsi86.c", i32 1905, i32 29}
!199 = !{i32 1, !"wchar_size", i32 2}
!200 = !{i32 1, !"min_enum_size", i32 4}
!201 = !{i32 8, !"branch-target-enforcement", i32 0}
!202 = !{i32 8, !"sign-return-address", i32 0}
!203 = !{i32 8, !"sign-return-address-all", i32 0}
!204 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!205 = !{i32 7, !"uwtable", i32 1}
!206 = !{i32 7, !"frame-pointer", i32 2}
!207 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!208 = !{!"branch_weights", i32 1, i32 2000}
!209 = !{i64 2148435451}
!210 = !{i64 679555, i64 679572, i64 679596, i64 679622, i64 679640}
!211 = !{i64 2148435821}
!212 = !{!"auto-init"}
!213 = !{i8 0, i8 2}
!214 = !{i64 2148784127, i64 2148784407, i64 2148784741, i64 2148785075}
!215 = !{!"branch_weights", i32 2000, i32 1}
!216 = !{ptr @ti_sn65dsi86_debugfs_remove, ptr @ti_sn65dsi86_delete_aux, ptr @ti_sn65dsi86_runtime_disable, ptr @ti_sn65dsi86_uninit_aux}
