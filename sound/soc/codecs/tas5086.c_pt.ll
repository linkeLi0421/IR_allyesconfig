; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/tas5086.c_pt.bc'
source_filename = "../sound/soc/codecs/tas5086.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.106, ptr }
%union.anon.106 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.reg_default = type { i32, i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.98, i32 }
%union.anon.98 = type { ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8, %struct.snd_soc_dobj }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.tas5086_private = type { ptr, i32, i32, i32, i8, i32, i32, i32, i32, [2 x %struct.regulator_bulk_data] }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.92, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.92 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.87, [128 x i8] }
%union.anon.87 = type { %union.anon.89 }
%union.anon.89 = type { [64 x i64] }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@__initcall__kmod_snd_soc_tas5086__296_1001_tas5086_i2c_driver_init6 = internal global ptr @tas5086_i2c_driver_init, section ".initcall6.init", align 4
@tas5086_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @tas5086_i2c_probe, ptr @tas5086_i2c_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tas5086_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @tas5086_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_tas5086_i2c_driver_exit = internal global ptr @tas5086_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author297 = internal constant [54 x i8] c"snd_soc_tas5086.author=Daniel Mack <zonque@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description298 = internal constant [76 x i8] c"snd_soc_tas5086.description=Texas Instruments TAS5086 ALSA SoC Codec Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file299 = internal constant [54 x i8] c"snd_soc_tas5086.file=sound/soc/codecs/snd-soc-tas5086\00", section ".modinfo", align 1
@__UNIQUE_ID_license300 = internal constant [28 x i8] c"snd_soc_tas5086.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tas5086\00", [24 x i8] zeroinitializer }, align 32
@tas5086_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,tas5086\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@tas5086_i2c_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"tas5086\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@tas5086_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 932, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to get regulators: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tas5086_i2c_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sound/soc/codecs/tas5086.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tas5086_i2c_probe._entry_ptr = internal global ptr @tas5086_i2c_probe._entry, section ".printk_index", align 4
@tas5086_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@tas5086_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 32, ptr @tas5086_writeable_reg, ptr @tas5086_accessible_reg, ptr @tas5086_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @tas5086_reg_read, ptr @tas5086_reg_write, ptr null, i8 0, i32 37, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tas5086_reg_defaults, i32 29, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"tas5086:936:(&tas5086_regmap)->lock\00", [60 x i8] zeroinitializer }, align 32
@tas5086_i2c_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 939, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to create regmap: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@tas5086_i2c_probe._entry_ptr.9 = internal global ptr @tas5086_i2c_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"reset-gpio\00", [21 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"TAS5086 Reset\00", [18 x i8] zeroinitializer }, align 32
@tas5086_i2c_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 958, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to enable regulators: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@tas5086_i2c_probe._entry_ptr.14 = internal global ptr @tas5086_i2c_probe._entry.12, section ".printk_index", align 4
@tas5086_i2c_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 968, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Failed to identify TAS5086 codec (got %02x)\0A\00", [51 x i8] zeroinitializer }, align 32
@tas5086_i2c_probe._entry_ptr.17 = internal global ptr @tas5086_i2c_probe._entry.15, section ".printk_index", align 4
@soc_component_dev_tas5086 = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @tas5086_controls, i32 5, ptr @tas5086_dapm_widgets, i32 26, ptr @tas5086_dapm_routes, i32 84, ptr @tas5086_probe, ptr @tas5086_remove, ptr @tas5086_soc_suspend, ptr @tas5086_soc_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 92, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@tas5086_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr @.str.77, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @tas5086_dai_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.78, i64 73014444036, i32 7904, i32 0, i32 0, i32 2, i32 6, i32 0 }, i8 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dvdd\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"avdd\00", [27 x i8] zeroinitializer }, align 32
@tas5086_reg_defaults = internal constant { [29 x %struct.reg_default], [56 x i8] } { [29 x %struct.reg_default] [%struct.reg_default { i32 0, i32 108 }, %struct.reg_default { i32 1, i32 3 }, %struct.reg_default { i32 2, i32 0 }, %struct.reg_default { i32 3, i32 160 }, %struct.reg_default { i32 4, i32 5 }, %struct.reg_default { i32 5, i32 96 }, %struct.reg_default { i32 6, i32 0 }, %struct.reg_default { i32 7, i32 255 }, %struct.reg_default { i32 8, i32 48 }, %struct.reg_default { i32 9, i32 48 }, %struct.reg_default { i32 10, i32 48 }, %struct.reg_default { i32 11, i32 48 }, %struct.reg_default { i32 12, i32 48 }, %struct.reg_default { i32 13, i32 48 }, %struct.reg_default { i32 14, i32 177 }, %struct.reg_default { i32 15, i32 0 }, %struct.reg_default { i32 16, i32 2 }, %struct.reg_default { i32 17, i32 0 }, %struct.reg_default { i32 18, i32 0 }, %struct.reg_default { i32 19, i32 0 }, %struct.reg_default { i32 20, i32 0 }, %struct.reg_default { i32 21, i32 0 }, %struct.reg_default { i32 22, i32 0 }, %struct.reg_default { i32 23, i32 0 }, %struct.reg_default { i32 24, i32 63 }, %struct.reg_default { i32 25, i32 0 }, %struct.reg_default { i32 26, i32 24 }, %struct.reg_default { i32 27, i32 130 }, %struct.reg_default { i32 28, i32 5 }], [56 x i8] zeroinitializer }, align 32
@tas5086_register_size._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 133, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unsupported register address: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tas5086_register_size\00", [42 x i8] zeroinitializer }, align 32
@tas5086_register_size._entry_ptr = internal global ptr @tas5086_register_size._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@tas5086_controls = internal constant { [5 x %struct.snd_kcontrol_new], [48 x i8] } { [5 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.22, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @tas5086_dac_tlv }, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.23, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @tas5086_dac_tlv }, i32 ptrtoint (ptr @.compoundliteral.24 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.25, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @tas5086_dac_tlv }, i32 ptrtoint (ptr @.compoundliteral.26 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.27, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @tas5086_dac_tlv }, i32 ptrtoint (ptr @.compoundliteral.28 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.29, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @tas5086_get_deemph, ptr @tas5086_put_deemph, %union.anon.98 zeroinitializer, i32 0 }], [48 x i8] zeroinitializer }, align 32
@tas5086_dapm_routes = internal constant { [84 x %struct.snd_soc_dapm_route], [1104 x i8] } { [84 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.44, ptr @.str.30, ptr @.str.30, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.44, ptr @.str.31, ptr @.str.31, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.44, ptr @.str.32, ptr @.str.32, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.44, ptr @.str.33, ptr @.str.33, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.44, ptr @.str.34, ptr @.str.34, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.44, ptr @.str.35, ptr @.str.35, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.45, ptr @.str.30, ptr @.str.30, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.45, ptr @.str.31, ptr @.str.31, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.45, ptr @.str.32, ptr @.str.32, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.45, ptr @.str.33, ptr @.str.33, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.45, ptr @.str.34, ptr @.str.34, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.45, ptr @.str.35, ptr @.str.35, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.45, ptr @.str.30, ptr @.str.30, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.45, ptr @.str.31, ptr @.str.31, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.45, ptr @.str.32, ptr @.str.32, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.45, ptr @.str.33, ptr @.str.33, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.45, ptr @.str.34, ptr @.str.34, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.45, ptr @.str.35, ptr @.str.35, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.46, ptr @.str.30, ptr @.str.30, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.46, ptr @.str.31, ptr @.str.31, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.46, ptr @.str.32, ptr @.str.32, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.46, ptr @.str.33, ptr @.str.33, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.46, ptr @.str.34, ptr @.str.34, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.46, ptr @.str.35, ptr @.str.35, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.47, ptr @.str.30, ptr @.str.30, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.47, ptr @.str.31, ptr @.str.31, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.47, ptr @.str.32, ptr @.str.32, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.47, ptr @.str.33, ptr @.str.33, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.47, ptr @.str.34, ptr @.str.34, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.47, ptr @.str.35, ptr @.str.35, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.48, ptr @.str.30, ptr @.str.30, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.48, ptr @.str.31, ptr @.str.31, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.48, ptr @.str.32, ptr @.str.32, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.48, ptr @.str.33, ptr @.str.33, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.48, ptr @.str.34, ptr @.str.34, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.48, ptr @.str.35, ptr @.str.35, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.49, ptr @.str.30, ptr @.str.30, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.49, ptr @.str.31, ptr @.str.31, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.49, ptr @.str.32, ptr @.str.32, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.49, ptr @.str.33, ptr @.str.33, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.49, ptr @.str.34, ptr @.str.34, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.49, ptr @.str.35, ptr @.str.35, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.50, ptr @.str.44, ptr @.str.44, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.51, ptr @.str.44, ptr @.str.44, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.52, ptr @.str.44, ptr @.str.44, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.53, ptr @.str.44, ptr @.str.44, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.54, ptr @.str.44, ptr @.str.44, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.55, ptr @.str.44, ptr @.str.44, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.50, ptr @.str.45, ptr @.str.45, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.51, ptr @.str.45, ptr @.str.45, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.52, ptr @.str.45, ptr @.str.45, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.53, ptr @.str.45, ptr @.str.45, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.54, ptr @.str.45, ptr @.str.45, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.55, ptr @.str.45, ptr @.str.45, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.50, ptr @.str.46, ptr @.str.46, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.51, ptr @.str.46, ptr @.str.46, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.52, ptr @.str.46, ptr @.str.46, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.53, ptr @.str.46, ptr @.str.46, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.54, ptr @.str.46, ptr @.str.46, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.55, ptr @.str.46, ptr @.str.46, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.50, ptr @.str.47, ptr @.str.47, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.51, ptr @.str.47, ptr @.str.47, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.52, ptr @.str.47, ptr @.str.47, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.53, ptr @.str.47, ptr @.str.47, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.54, ptr @.str.47, ptr @.str.47, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.55, ptr @.str.47, ptr @.str.47, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.50, ptr @.str.48, ptr @.str.48, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.51, ptr @.str.48, ptr @.str.48, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.52, ptr @.str.48, ptr @.str.48, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.53, ptr @.str.48, ptr @.str.48, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.54, ptr @.str.48, ptr @.str.48, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.55, ptr @.str.48, ptr @.str.48, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.50, ptr @.str.49, ptr @.str.49, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.51, ptr @.str.49, ptr @.str.49, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.52, ptr @.str.49, ptr @.str.49, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.53, ptr @.str.49, ptr @.str.49, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.54, ptr @.str.49, ptr @.str.49, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.55, ptr @.str.49, ptr @.str.49, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.38, ptr null, ptr @.str.50, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.39, ptr null, ptr @.str.51, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.40, ptr null, ptr @.str.52, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.41, ptr null, ptr @.str.53, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.42, ptr null, ptr @.str.54, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.43, ptr null, ptr @.str.55, ptr null, %struct.snd_soc_dobj zeroinitializer }], [1104 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Master Playback Volume\00", [41 x i8] zeroinitializer }, align 32
@tas5086_dac_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -10350, i32 65586], [16 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 7, i32 7, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Channel 1/2 Playback Volume\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.24 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 8, i32 9, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Channel 3/4 Playback Volume\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.26 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 10, i32 11, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Channel 5/6 Playback Volume\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.28 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 12, i32 13, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"De-emphasis Switch\00", [45 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SDIN1-L\00", [24 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SDIN1-R\00", [24 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SDIN2-L\00", [24 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SDIN2-R\00", [24 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SDIN3-L\00", [24 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SDIN3-R\00", [24 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SDIN4-L\00", [24 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SDIN4-R\00", [24 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PWM1\00", [27 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PWM2\00", [27 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PWM3\00", [27 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PWM4\00", [27 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PWM5\00", [27 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PWM6\00", [27 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Channel 1 Mux\00", [18 x i8] zeroinitializer }, align 32
@tas5086_dapm_input_mux_controls = internal constant { [6 x %struct.snd_kcontrol_new], [64 x i8] } { [6 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.57, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @tas5086_dapm_input_mux_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.58, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @tas5086_dapm_input_mux_enum, i64 64) to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.59, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @tas5086_dapm_input_mux_enum, i64 128) to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.60, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @tas5086_dapm_input_mux_enum, i64 192) to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.61, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @tas5086_dapm_input_mux_enum, i64 256) to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.62, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @tas5086_dapm_input_mux_enum, i64 320) to i32) }], [64 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Channel 2 Mux\00", [18 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Channel 3 Mux\00", [18 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Channel 4 Mux\00", [18 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Channel 5 Mux\00", [18 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Channel 6 Mux\00", [18 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PWM1 Mux\00", [23 x i8] zeroinitializer }, align 32
@tas5086_dapm_output_mux_controls = internal constant { [6 x %struct.snd_kcontrol_new], [64 x i8] } { [6 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.65, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @tas5086_dapm_output_mux_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.66, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @tas5086_dapm_output_mux_enum, i64 64) to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.67, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @tas5086_dapm_output_mux_enum, i64 128) to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.68, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @tas5086_dapm_output_mux_enum, i64 192) to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.69, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @tas5086_dapm_output_mux_enum, i64 256) to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.70, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @tas5086_dapm_output_mux_enum, i64 320) to i32) }], [64 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PWM2 Mux\00", [23 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PWM3 Mux\00", [23 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PWM4 Mux\00", [23 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PWM5 Mux\00", [23 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PWM6 Mux\00", [23 x i8] zeroinitializer }, align 32
@tas5086_dapm_widgets = internal constant { [26 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [1176 x i8] } { [26 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.30, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.31, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.32, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.33, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.34, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.35, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.36, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.37, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.38, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.39, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.40, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.41, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.42, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.43, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.44, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @tas5086_dapm_input_mux_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.45, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr getelementptr (i8, ptr @tas5086_dapm_input_mux_controls, i64 48), ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.46, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr getelementptr (i8, ptr @tas5086_dapm_input_mux_controls, i64 96), ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.47, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr getelementptr (i8, ptr @tas5086_dapm_input_mux_controls, i64 144), ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.48, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr getelementptr (i8, ptr @tas5086_dapm_input_mux_controls, i64 192), ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.49, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr getelementptr (i8, ptr @tas5086_dapm_input_mux_controls, i64 240), ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.50, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @tas5086_dapm_output_mux_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.51, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr getelementptr (i8, ptr @tas5086_dapm_output_mux_controls, i64 48), ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.52, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr getelementptr (i8, ptr @tas5086_dapm_output_mux_controls, i64 96), ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.53, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr getelementptr (i8, ptr @tas5086_dapm_output_mux_controls, i64 144), ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.54, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr getelementptr (i8, ptr @tas5086_dapm_output_mux_controls, i64 192), ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.55, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr getelementptr (i8, ptr @tas5086_dapm_output_mux_controls, i64 240), ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [1176 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Channel 1 input\00", [16 x i8] zeroinitializer }, align 32
@tas5086_dapm_input_mux_enum = internal constant { [6 x %struct.soc_enum], [96 x i8] } { [6 x %struct.soc_enum] [%struct.soc_enum { i32 32, i8 20, i8 20, i32 8, i32 7, ptr @tas5086_dapm_sdin_texts, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, %struct.soc_enum { i32 32, i8 16, i8 16, i32 8, i32 7, ptr @tas5086_dapm_sdin_texts, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, %struct.soc_enum { i32 32, i8 12, i8 12, i32 8, i32 7, ptr @tas5086_dapm_sdin_texts, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, %struct.soc_enum { i32 32, i8 8, i8 8, i32 8, i32 7, ptr @tas5086_dapm_sdin_texts, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, %struct.soc_enum { i32 32, i8 4, i8 4, i32 8, i32 7, ptr @tas5086_dapm_sdin_texts, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, %struct.soc_enum { i32 32, i8 0, i8 0, i32 8, i32 7, ptr @tas5086_dapm_sdin_texts, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }], [96 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Channel 2 input\00", [16 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Channel 3 input\00", [16 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Channel 4 input\00", [16 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Channel 5 input\00", [16 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Channel 6 input\00", [16 x i8] zeroinitializer }, align 32
@tas5086_dapm_sdin_texts = internal global { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.63, ptr @.str.64], [32 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Ground (0)\00", [21 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"nc\00", [29 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"PWM1 Output\00", [20 x i8] zeroinitializer }, align 32
@tas5086_dapm_output_mux_enum = internal constant { [6 x %struct.soc_enum], [96 x i8] } { [6 x %struct.soc_enum] [%struct.soc_enum { i32 37, i8 20, i8 20, i32 6, i32 7, ptr @tas5086_dapm_channel_texts, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, %struct.soc_enum { i32 37, i8 16, i8 16, i32 6, i32 7, ptr @tas5086_dapm_channel_texts, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, %struct.soc_enum { i32 37, i8 12, i8 12, i32 6, i32 7, ptr @tas5086_dapm_channel_texts, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, %struct.soc_enum { i32 37, i8 8, i8 8, i32 6, i32 7, ptr @tas5086_dapm_channel_texts, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, %struct.soc_enum { i32 37, i8 4, i8 4, i32 6, i32 7, ptr @tas5086_dapm_channel_texts, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, %struct.soc_enum { i32 37, i8 0, i8 0, i32 6, i32 7, ptr @tas5086_dapm_channel_texts, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }], [96 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"PWM2 Output\00", [20 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"PWM3 Output\00", [20 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"PWM4 Output\00", [20 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"PWM5 Output\00", [20 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"PWM6 Output\00", [20 x i8] zeroinitializer }, align 32
@tas5086_dapm_channel_texts = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49], [40 x i8] zeroinitializer }, align 32
@tas5086_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.71, ptr @.str.3, i32 824, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tas5086_probe\00", [18 x i8] zeroinitializer }, align 32
@tas5086_probe._entry_ptr = internal global ptr @tas5086_probe._entry, section ".printk_index", align 4
@.str.72 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ti,charge-period\00", [47 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ti,mid-z-channel-%d\00", [44 x i8] zeroinitializer }, align 32
@tas5086_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.3, i32 510, ptr @.str.76, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Invalid split-cap charge period of %d ns.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tas5086_init\00", [19 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@tas5086_init._entry_ptr = internal global ptr @tas5086_init._entry, section ".printk_index", align 4
@.str.77 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tas5086-hifi\00", [19 x i8] zeroinitializer }, align 32
@tas5086_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @tas5086_set_dai_sysclk, ptr null, ptr null, ptr null, ptr @tas5086_set_dai_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tas5086_mute_stream, ptr null, ptr null, ptr @tas5086_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Playback\00", [23 x i8] zeroinitializer }, align 32
@tas5086_set_dai_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.3, i32 322, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Invalid clocking mode\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tas5086_set_dai_fmt\00", [44 x i8] zeroinitializer }, align 32
@tas5086_set_dai_fmt._entry_ptr = internal global ptr @tas5086_set_dai_fmt._entry, section ".printk_index", align 4
@tas5086_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.3, i32 367, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Invalid sample rate\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tas5086_hw_params\00", [46 x i8] zeroinitializer }, align 32
@tas5086_hw_params._entry_ptr = internal global ptr @tas5086_hw_params._entry, section ".printk_index", align 4
@tas5086_hw_params._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.82, ptr @.str.3, i32 381, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Invalid MCLK / Fs ratio\0A\00", [39 x i8] zeroinitializer }, align 32
@tas5086_hw_params._entry_ptr.85 = internal global ptr @tas5086_hw_params._entry.83, section ".printk_index", align 4
@tas5086_hw_params._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.82, ptr @.str.3, i32 418, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Invalid DAI format\0A\00", [44 x i8] zeroinitializer }, align 32
@tas5086_hw_params._entry_ptr.88 = internal global ptr @tas5086_hw_params._entry.86, section ".printk_index", align 4
@tas5086_hw_params._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.82, ptr @.str.3, i32 434, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Invalid bit width\0A\00", [45 x i8] zeroinitializer }, align 32
@tas5086_hw_params._entry_ptr.91 = internal global ptr @tas5086_hw_params._entry.89, section ".printk_index", align 4
@switch.table.tas5086_hw_params = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 4, i32 8, i32 12, i32 0, i32 16, i32 0, i32 20], [32 x i8] zeroinitializer }, align 32
@switch.table.tas5086_hw_params.92 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 3, i32 0, i32 6], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [33 x i64] [i64 31, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 32, i64 37]
@__sancov_gen_cov_switch_values.93 = internal global [33 x i64] [i64 31, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 32, i64 37]
@__sancov_gen_cov_switch_values.94 = internal global [5 x i64] [i64 3, i64 32, i64 32000, i64 44100, i64 48000]
@__sancov_gen_cov_switch_values.95 = internal global [27 x i64] [i64 25, i64 32, i64 0, i64 13000, i64 16900, i64 23400, i64 31200, i64 41600, i64 54600, i64 72800, i64 96200, i64 130000, i64 156000, i64 169000, i64 234000, i64 312000, i64 416000, i64 546000, i64 728000, i64 962000, i64 1300000, i64 2340000, i64 3120000, i64 4160000, i64 5460000, i64 7280000, i64 9620000]
@__sancov_gen_cov_switch_values.96 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.97 = internal global [10 x i64] [i64 8, i64 32, i64 32000, i64 38000, i64 44100, i64 48000, i64 88200, i64 96000, i64 176400, i64 192000]
@__sancov_gen_cov_switch_values.98 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 20, i64 24]
@__sancov_gen_cov_switch_values.99 = internal global [5 x i64] [i64 3, i64 32, i64 32000, i64 44100, i64 48000]
@___asan_gen_.100 = private unnamed_addr constant [19 x i8] c"tas5086_i2c_driver\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 991, i32 26 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 993, i32 11 }
@___asan_gen_.106 = private unnamed_addr constant [15 x i8] c"tas5086_dt_ids\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 810, i32 34 }
@___asan_gen_.109 = private unnamed_addr constant [15 x i8] c"tas5086_i2c_id\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 894, i32 35 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 932, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.133 = private unnamed_addr constant [15 x i8] c"tas5086_regmap\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 900, i32 35 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 936, i32 17 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 939, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 947, i32 44 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 951, i32 43 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 958, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 967, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant [26 x i8] c"soc_component_dev_tas5086\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 877, i32 46 }
@___asan_gen_.166 = private unnamed_addr constant [12 x i8] c"tas5086_dai\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 754, i32 34 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 236, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 236, i32 10 }
@___asan_gen_.175 = private unnamed_addr constant [21 x i8] c"tas5086_reg_defaults\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 91, i32 33 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 133, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant [17 x i8] c"tas5086_controls\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 535, i32 38 }
@___asan_gen_.190 = private unnamed_addr constant [20 x i8] c"tas5086_dapm_routes\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 643, i32 40 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 536, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant [16 x i8] c"tas5086_dac_tlv\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 533, i32 14 }
@___asan_gen_.199 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 538, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant [20 x i8] c".compoundliteral.24\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 541, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant [20 x i8] c".compoundliteral.26\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 544, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant [20 x i8] c".compoundliteral.28\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 547, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 600, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 601, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 602, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 603, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 604, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 605, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 606, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 607, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 609, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 610, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 611, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 612, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 613, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 614, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 616, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant [32 x i8] c"tas5086_dapm_input_mux_controls\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 567, i32 38 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 618, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 620, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 622, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 624, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 626, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 629, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant [33 x i8] c"tas5086_dapm_output_mux_controls\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 590, i32 38 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 631, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 633, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 635, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 637, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 639, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant [21 x i8] c"tas5086_dapm_widgets\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 599, i32 41 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 568, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant [28 x i8] c"tas5086_dapm_input_mux_enum\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 558, i32 30 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 569, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 570, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 571, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 572, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 573, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant [24 x i8] c"tas5086_dapm_sdin_texts\00", align 1
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 552, i32 20 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 555, i32 24 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 555, i32 38 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 591, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant [29 x i8] c"tas5086_dapm_output_mux_enum\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 581, i32 30 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 592, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 593, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 594, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 595, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 596, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant [27 x i8] c"tas5086_dapm_channel_texts\00", align 1
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 577, i32 20 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 824, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 834, i32 33 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 841, i32 6 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 508, i32 4 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 755, i32 10 }
@___asan_gen_.383 = private unnamed_addr constant [16 x i8] c"tas5086_dai_ops\00", align 1
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 747, i32 37 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 757, i32 18 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 322, i32 3 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 367, i32 3 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 381, i32 3 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 418, i32 3 }
@___asan_gen_.419 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.422 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.423 = private constant [30 x i8] c"../sound/soc/codecs/tas5086.c\00", align 1
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.423, i32 434, i32 3 }
@___asan_gen_.425 = private unnamed_addr constant [31 x i8] c"switch.table.tas5086_hw_params\00", align 1
@___asan_gen_.426 = private unnamed_addr constant [34 x i8] c"switch.table.tas5086_hw_params.92\00", align 1
@llvm.compiler.used = appending global [132 x ptr] [ptr @__UNIQUE_ID_author297, ptr @__UNIQUE_ID_description298, ptr @__UNIQUE_ID_file299, ptr @__UNIQUE_ID_license300, ptr @__exitcall_tas5086_i2c_driver_exit, ptr @__initcall__kmod_snd_soc_tas5086__296_1001_tas5086_i2c_driver_init6, ptr @tas5086_hw_params._entry, ptr @tas5086_hw_params._entry.83, ptr @tas5086_hw_params._entry.86, ptr @tas5086_hw_params._entry.89, ptr @tas5086_hw_params._entry_ptr, ptr @tas5086_hw_params._entry_ptr.85, ptr @tas5086_hw_params._entry_ptr.88, ptr @tas5086_hw_params._entry_ptr.91, ptr @tas5086_i2c_driver_exit, ptr @tas5086_i2c_probe._entry, ptr @tas5086_i2c_probe._entry.12, ptr @tas5086_i2c_probe._entry.15, ptr @tas5086_i2c_probe._entry.7, ptr @tas5086_i2c_probe._entry_ptr, ptr @tas5086_i2c_probe._entry_ptr.14, ptr @tas5086_i2c_probe._entry_ptr.17, ptr @tas5086_i2c_probe._entry_ptr.9, ptr @tas5086_init._entry, ptr @tas5086_init._entry_ptr, ptr @tas5086_probe._entry, ptr @tas5086_probe._entry_ptr, ptr @tas5086_register_size._entry, ptr @tas5086_register_size._entry_ptr, ptr @tas5086_set_dai_fmt._entry, ptr @tas5086_set_dai_fmt._entry_ptr, ptr @tas5086_i2c_driver, ptr @.str, ptr @tas5086_dt_ids, ptr @tas5086_i2c_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @tas5086_i2c_probe._key, ptr @tas5086_regmap, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @soc_component_dev_tas5086, ptr @tas5086_dai, ptr @.str.18, ptr @.str.19, ptr @tas5086_reg_defaults, ptr @.str.20, ptr @.str.21, ptr @tas5086_controls, ptr @tas5086_dapm_routes, ptr @.str.22, ptr @tas5086_dac_tlv, ptr @.compoundliteral, ptr @.str.23, ptr @.compoundliteral.24, ptr @.str.25, ptr @.compoundliteral.26, ptr @.str.27, ptr @.compoundliteral.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @tas5086_dapm_input_mux_controls, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @tas5086_dapm_output_mux_controls, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @tas5086_dapm_widgets, ptr @.str.57, ptr @tas5086_dapm_input_mux_enum, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @tas5086_dapm_sdin_texts, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @tas5086_dapm_output_mux_enum, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @tas5086_dapm_channel_texts, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @tas5086_dai_ops, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.84, ptr @.str.87, ptr @.str.90, ptr @switch.table.tas5086_hw_params, ptr @switch.table.tas5086_hw_params.92], section "llvm.metadata"
@0 = internal global [113 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas5086_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas5086_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas5086_i2c_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas5086_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas5086_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas5086_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas5086_i2c_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas5086_i2c_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas5086_i2c_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_component_dev_tas5086 to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas5086_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas5086_reg_defaults to i32), i32 232, i32 288, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas5086_register_size._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas5086_controls to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas5086_dapm_routes to i32), i32 4368, i32 5472, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas5086_dac_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.24 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.26 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.28 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas5086_dapm_input_mux_controls to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas5086_dapm_output_mux_controls to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas5086_dapm_widgets to i32), i32 4680, i32 5856, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas5086_dapm_input_mux_enum to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas5086_dapm_sdin_texts to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas5086_dapm_output_mux_enum to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas5086_dapm_channel_texts to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas5086_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas5086_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas5086_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas5086_set_dai_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas5086_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas5086_hw_params._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas5086_hw_params._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tas5086_hw_params._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tas5086_hw_params to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tas5086_hw_params.92 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tas5086_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @tas5086_i2c_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tas5086_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @i2c_del_driver(ptr noundef nonnull @tas5086_i2c_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tas5086_i2c_probe(ptr noundef %i2c, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i) #9
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 60, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %arrayidx2 = getelementptr %struct.tas5086_private, ptr %call.i, i32 0, i32 9, i32 0
  %0 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @.str.18, ptr %arrayidx2, align 4
  %arrayidx2.1 = getelementptr %struct.tas5086_private, ptr %call.i, i32 0, i32 9, i32 1
  %1 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @.str.19, ptr %arrayidx2.1, align 4
  %2 = ptrtoint ptr %i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 2, ptr %i, align 4
  %call4 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev1, i32 noundef 2, ptr noundef %arrayidx2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %do.end, label %if.end7

do.end:                                           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef %call4) #12
  br label %cleanup

if.end7:                                          ; preds = %for.body.preheader
  %call8 = tail call ptr @__devm_regmap_init(ptr noundef %dev1, ptr noundef null, ptr noundef %i2c, ptr noundef nonnull @tas5086_regmap, ptr noundef nonnull @tas5086_i2c_probe._key, ptr noundef nonnull @.str.6) #9
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call8, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end18

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %call8 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef %4) #12
  br label %cleanup

if.end18:                                         ; preds = %if.end7
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call19 = tail call ptr @of_match_device(ptr noundef nonnull @tas5086_dt_ids, ptr noundef %dev1) #9
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %if.end18.if.end31_crit_edge, label %if.end24

if.end18.if.end31_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.end24:                                         ; preds = %if.end18
  %of_node22 = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 27
  %6 = ptrtoint ptr %of_node22 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node22, align 8
  %call.i99 = tail call i32 @of_get_named_gpio_flags(ptr noundef %7, ptr noundef nonnull @.str.10, i32 noundef 0, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %call.i99)
  %8 = icmp ult i32 %call.i99, 2048
  br i1 %8, label %if.then26, label %if.end24.if.end31_crit_edge

if.end24.if.end31_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #11
  %call27 = tail call i32 @devm_gpio_request(ptr noundef %dev1, i32 noundef %call.i99, ptr noundef nonnull @.str.11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  %spec.select = select i1 %tobool28.not, i32 %call.i99, i32 -22
  br label %if.end31

if.end31:                                         ; preds = %if.then26, %if.end24.if.end31_crit_edge, %if.end18.if.end31_crit_edge
  %gpio_nreset.1 = phi i32 [ %call.i99, %if.end24.if.end31_crit_edge ], [ %spec.select, %if.then26 ], [ -22, %if.end18.if.end31_crit_edge ]
  %gpio_nreset32 = getelementptr inbounds %struct.tas5086_private, ptr %call.i, i32 0, i32 8
  %9 = ptrtoint ptr %gpio_nreset32 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %gpio_nreset.1, ptr %gpio_nreset32, align 4
  %call35 = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %arrayidx2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %do.end40, label %if.end41

do.end40:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13, i32 noundef %call35) #12
  br label %cleanup

if.end41:                                         ; preds = %if.end31
  %10 = ptrtoint ptr %gpio_nreset32 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %gpio_nreset32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %11)
  %12 = icmp ult i32 %11, 2048
  br i1 %12, label %if.then.i, label %if.end41.tas5086_reset.exit_crit_edge

if.end41.tas5086_reset.exit_crit_edge:            ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %tas5086_reset.exit

if.then.i:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call ptr @gpio_to_desc(i32 noundef %11) #9
  %call1.i.i = tail call i32 @gpiod_direction_output_raw(ptr noundef %call.i.i, i32 noundef 0) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748) #9
  %14 = ptrtoint ptr %gpio_nreset32 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %gpio_nreset32, align 4
  %call.i6.i = tail call ptr @gpio_to_desc(i32 noundef %15) #9
  tail call void @gpiod_set_raw_value(ptr noundef %call.i6.i, i32 noundef 1) #9
  tail call void @msleep(i32 noundef 15) #9
  br label %tas5086_reset.exit

tas5086_reset.exit:                               ; preds = %if.then.i, %if.end41.tas5086_reset.exit_crit_edge
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call.i, align 4
  %call43 = call i32 @regmap_read(ptr noundef %17, i32 noundef 1, ptr noundef nonnull %i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp eq i32 %call43, 0
  br i1 %cmp44, label %land.lhs.true, label %tas5086_reset.exit.if.end50.thread_crit_edge

tas5086_reset.exit.if.end50.thread_crit_edge:     ; preds = %tas5086_reset.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50.thread

land.lhs.true:                                    ; preds = %tas5086_reset.exit
  %18 = ptrtoint ptr %i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %19)
  %cmp45.not = icmp eq i32 %19, 3
  br i1 %cmp45.not, label %if.then55, label %do.end49

do.end49:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16, i32 noundef %19) #12
  br label %if.end50.thread

if.end50.thread:                                  ; preds = %do.end49, %tas5086_reset.exit.if.end50.thread_crit_edge
  %ret.0.ph = phi i32 [ %call43, %tas5086_reset.exit.if.end50.thread_crit_edge ], [ -19, %do.end49 ]
  %call53102 = call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %arrayidx2) #9
  br label %cleanup

if.then55:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call53 = call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %arrayidx2) #9
  %call57 = call i32 @devm_snd_soc_register_component(ptr noundef %dev1, ptr noundef nonnull @soc_component_dev_tas5086, ptr noundef nonnull @tas5086_dai, i32 noundef 1) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then55, %if.end50.thread, %do.end40, %if.then11, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %do.end ], [ %4, %if.then11 ], [ %call35, %do.end40 ], [ -12, %entry.cleanup_crit_edge ], [ %call57, %if.then55 ], [ %ret.0.ph, %if.end50.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i) #9
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tas5086_i2c_remove(ptr nocapture noundef readnone %i2c) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpio_request(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @tas5086_writeable_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %reg, -15
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %switch.tableidx)
  %0 = icmp ugt i32 %switch.tableidx, 16
  %switch.cast = trunc i32 %switch.tableidx to i17
  %switch.downshift = lshr i17 15874, %switch.cast
  %1 = and i17 %switch.downshift, 1
  %switch.masked = icmp ne i17 %1, 0
  %retval.0.i = select i1 %0, i1 true, i1 %switch.masked
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %reg)
  %cmp = icmp ne i32 %reg, 1
  %spec.select = and i1 %cmp, %retval.0.i
  ret i1 %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @tas5086_accessible_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %reg, -15
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %switch.tableidx)
  %0 = icmp ugt i32 %switch.tableidx, 16
  %switch.cast = trunc i32 %switch.tableidx to i17
  %switch.downshift = lshr i17 15874, %switch.cast
  %1 = and i17 %switch.downshift, 1
  %switch.masked = icmp ne i17 %1, 0
  %retval.0 = select i1 %0, i1 true, i1 %switch.masked
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @tas5086_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %reg.off = add i32 %reg, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %reg.off)
  %switch = icmp ult i32 %reg.off, 2
  ret i1 %switch
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tas5086_reg_read(ptr noundef %context, i32 noundef %reg, ptr nocapture noundef %value) #2 align 64 {
entry:
  %send_buf = alloca i8, align 1
  %recv_buf = alloca [4 x i8], align 4
  %msgs = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %send_buf) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %recv_buf) #9
  %0 = ptrtoint ptr %recv_buf to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %recv_buf, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs) #9
  %1 = getelementptr inbounds i8, ptr %msgs, i32 4
  %2 = call ptr @memset(ptr %1, i32 255, i32 16)
  %3 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %tas5086_register_size.exit [
    i32 0, label %entry.if.end_crit_edge
    i32 1, label %entry.if.end_crit_edge53
    i32 2, label %entry.if.end_crit_edge54
    i32 3, label %entry.if.end_crit_edge55
    i32 4, label %entry.if.end_crit_edge56
    i32 5, label %entry.if.end_crit_edge57
    i32 6, label %entry.if.end_crit_edge58
    i32 7, label %entry.if.end_crit_edge59
    i32 8, label %entry.if.end_crit_edge60
    i32 9, label %entry.if.end_crit_edge61
    i32 10, label %entry.if.end_crit_edge62
    i32 11, label %entry.if.end_crit_edge63
    i32 12, label %entry.if.end_crit_edge64
    i32 13, label %entry.if.end_crit_edge65
    i32 14, label %entry.if.end_crit_edge66
    i32 15, label %entry.if.end_crit_edge67
    i32 16, label %entry.if.end_crit_edge68
    i32 17, label %entry.if.end_crit_edge69
    i32 18, label %entry.if.end_crit_edge70
    i32 19, label %entry.if.end_crit_edge71
    i32 20, label %entry.if.end_crit_edge72
    i32 21, label %entry.if.end_crit_edge73
    i32 22, label %entry.if.end_crit_edge74
    i32 23, label %entry.if.end_crit_edge75
    i32 24, label %entry.if.end_crit_edge76
    i32 25, label %entry.if.end_crit_edge77
    i32 26, label %entry.if.end_crit_edge78
    i32 27, label %entry.if.end_crit_edge79
    i32 28, label %entry.if.end_crit_edge80
    i32 32, label %entry.sw.bb1.i_crit_edge
    i32 37, label %entry.sw.bb1.i_crit_edge81
  ]

entry.sw.bb1.i_crit_edge81:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1.i

entry.sw.bb1.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1.i

entry.if.end_crit_edge80:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge79:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge78:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge77:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge76:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge75:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge74:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge73:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge72:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge71:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge70:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge69:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge68:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge67:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge66:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge65:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge64:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge63:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge62:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge61:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge60:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge59:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge58:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge57:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge56:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge55:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge54:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge53:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

sw.bb1.i:                                         ; preds = %entry.sw.bb1.i_crit_edge, %entry.sw.bb1.i_crit_edge81
  br label %if.end

tas5086_register_size.exit:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.i2c_client, ptr %context, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %reg) #12
  br label %cleanup

if.end:                                           ; preds = %sw.bb1.i, %entry.if.end_crit_edge, %entry.if.end_crit_edge53, %entry.if.end_crit_edge54, %entry.if.end_crit_edge55, %entry.if.end_crit_edge56, %entry.if.end_crit_edge57, %entry.if.end_crit_edge58, %entry.if.end_crit_edge59, %entry.if.end_crit_edge60, %entry.if.end_crit_edge61, %entry.if.end_crit_edge62, %entry.if.end_crit_edge63, %entry.if.end_crit_edge64, %entry.if.end_crit_edge65, %entry.if.end_crit_edge66, %entry.if.end_crit_edge67, %entry.if.end_crit_edge68, %entry.if.end_crit_edge69, %entry.if.end_crit_edge70, %entry.if.end_crit_edge71, %entry.if.end_crit_edge72, %entry.if.end_crit_edge73, %entry.if.end_crit_edge74, %entry.if.end_crit_edge75, %entry.if.end_crit_edge76, %entry.if.end_crit_edge77, %entry.if.end_crit_edge78, %entry.if.end_crit_edge79, %entry.if.end_crit_edge80
  %exitcond.not = phi i1 [ false, %sw.bb1.i ], [ true, %entry.if.end_crit_edge ], [ true, %entry.if.end_crit_edge53 ], [ true, %entry.if.end_crit_edge54 ], [ true, %entry.if.end_crit_edge55 ], [ true, %entry.if.end_crit_edge56 ], [ true, %entry.if.end_crit_edge57 ], [ true, %entry.if.end_crit_edge58 ], [ true, %entry.if.end_crit_edge59 ], [ true, %entry.if.end_crit_edge60 ], [ true, %entry.if.end_crit_edge61 ], [ true, %entry.if.end_crit_edge62 ], [ true, %entry.if.end_crit_edge63 ], [ true, %entry.if.end_crit_edge64 ], [ true, %entry.if.end_crit_edge65 ], [ true, %entry.if.end_crit_edge66 ], [ true, %entry.if.end_crit_edge67 ], [ true, %entry.if.end_crit_edge68 ], [ true, %entry.if.end_crit_edge69 ], [ true, %entry.if.end_crit_edge70 ], [ true, %entry.if.end_crit_edge71 ], [ true, %entry.if.end_crit_edge72 ], [ true, %entry.if.end_crit_edge73 ], [ true, %entry.if.end_crit_edge74 ], [ true, %entry.if.end_crit_edge75 ], [ true, %entry.if.end_crit_edge76 ], [ true, %entry.if.end_crit_edge77 ], [ true, %entry.if.end_crit_edge78 ], [ true, %entry.if.end_crit_edge79 ], [ true, %entry.if.end_crit_edge80 ]
  %retval.0.i.ph = phi i16 [ 4, %sw.bb1.i ], [ 1, %entry.if.end_crit_edge ], [ 1, %entry.if.end_crit_edge53 ], [ 1, %entry.if.end_crit_edge54 ], [ 1, %entry.if.end_crit_edge55 ], [ 1, %entry.if.end_crit_edge56 ], [ 1, %entry.if.end_crit_edge57 ], [ 1, %entry.if.end_crit_edge58 ], [ 1, %entry.if.end_crit_edge59 ], [ 1, %entry.if.end_crit_edge60 ], [ 1, %entry.if.end_crit_edge61 ], [ 1, %entry.if.end_crit_edge62 ], [ 1, %entry.if.end_crit_edge63 ], [ 1, %entry.if.end_crit_edge64 ], [ 1, %entry.if.end_crit_edge65 ], [ 1, %entry.if.end_crit_edge66 ], [ 1, %entry.if.end_crit_edge67 ], [ 1, %entry.if.end_crit_edge68 ], [ 1, %entry.if.end_crit_edge69 ], [ 1, %entry.if.end_crit_edge70 ], [ 1, %entry.if.end_crit_edge71 ], [ 1, %entry.if.end_crit_edge72 ], [ 1, %entry.if.end_crit_edge73 ], [ 1, %entry.if.end_crit_edge74 ], [ 1, %entry.if.end_crit_edge75 ], [ 1, %entry.if.end_crit_edge76 ], [ 1, %entry.if.end_crit_edge77 ], [ 1, %entry.if.end_crit_edge78 ], [ 1, %entry.if.end_crit_edge79 ], [ 1, %entry.if.end_crit_edge80 ]
  %conv = trunc i32 %reg to i8
  %4 = ptrtoint ptr %send_buf to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %send_buf, align 1
  %addr = getelementptr inbounds %struct.i2c_client, ptr %context, i32 0, i32 1
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %addr, align 2
  %7 = ptrtoint ptr %msgs to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %msgs, align 4
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 2
  %8 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 3
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %send_buf, ptr %buf, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msgs, i32 0, i32 1
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %flags, align 2
  %arrayidx6 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %6, ptr %arrayidx6, align 4
  %len10 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs, i32 0, i32 1, i32 2
  %12 = ptrtoint ptr %len10 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %retval.0.i.ph, ptr %len10, align 4
  %buf12 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs, i32 0, i32 1, i32 3
  %13 = ptrtoint ptr %buf12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %recv_buf, ptr %buf12, align 4
  %flags14 = getelementptr inbounds [2 x %struct.i2c_msg], ptr %msgs, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %flags14 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 1, ptr %flags14, align 2
  %adapter = getelementptr inbounds %struct.i2c_client, ptr %context, i32 0, i32 3
  %15 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %adapter, align 8
  %call16 = call i32 @i2c_transfer(ptr noundef %16, ptr noundef nonnull %msgs, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.end.cleanup_crit_edge, label %if.else

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call16)
  %cmp20.not = icmp eq i32 %call16, 2
  br i1 %cmp20.not, label %for.body, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %if.else
  %17 = ptrtoint ptr %recv_buf to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %recv_buf, align 4
  %conv28 = zext i8 %18 to i32
  br i1 %exitcond.not, label %for.body.cleanup.loopexit_crit_edge, label %for.body.1

for.body.cleanup.loopexit_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.loopexit

for.body.1:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %shl.1 = shl nuw nsw i32 %conv28, 8
  %arrayidx27.1 = getelementptr inbounds [4 x i8], ptr %recv_buf, i32 0, i32 1
  %19 = ptrtoint ptr %arrayidx27.1 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx27.1, align 1
  %conv28.1 = zext i8 %20 to i32
  %or.1 = or i32 %shl.1, %conv28.1
  %shl.2 = shl nuw nsw i32 %or.1, 8
  %arrayidx27.2 = getelementptr inbounds [4 x i8], ptr %recv_buf, i32 0, i32 2
  %21 = ptrtoint ptr %arrayidx27.2 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx27.2, align 2
  %conv28.2 = zext i8 %22 to i32
  %or.2 = or i32 %shl.2, %conv28.2
  %shl.3 = shl nuw i32 %or.2, 8
  %arrayidx27.3 = getelementptr inbounds [4 x i8], ptr %recv_buf, i32 0, i32 3
  %23 = ptrtoint ptr %arrayidx27.3 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx27.3, align 1
  %conv28.3 = zext i8 %24 to i32
  %or.3 = or i32 %shl.3, %conv28.3
  br label %cleanup.loopexit

cleanup.loopexit:                                 ; preds = %for.body.1, %for.body.cleanup.loopexit_crit_edge
  %or.lcssa = phi i32 [ %conv28, %for.body.cleanup.loopexit_crit_edge ], [ %or.3, %for.body.1 ]
  %25 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or.lcssa, ptr %value, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %if.else.cleanup_crit_edge, %if.end.cleanup_crit_edge, %tas5086_register_size.exit
  %retval.0 = phi i32 [ -22, %tas5086_register_size.exit ], [ %call16, %if.end.cleanup_crit_edge ], [ -5, %if.else.cleanup_crit_edge ], [ 0, %cleanup.loopexit ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %recv_buf) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %send_buf) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tas5086_reg_write(ptr noundef %context, i32 noundef %reg, i32 noundef %value) #2 align 64 {
entry:
  %buf = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %buf) #9
  %0 = getelementptr inbounds i8, ptr %buf, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_storeN_noabort(i32 %1, i32 4)
  store i32 -1, ptr %0, align 1
  %2 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %reg, label %tas5086_register_size.exit [
    i32 0, label %entry.if.end_crit_edge
    i32 1, label %entry.if.end_crit_edge33
    i32 2, label %entry.if.end_crit_edge34
    i32 3, label %entry.if.end_crit_edge35
    i32 4, label %entry.if.end_crit_edge36
    i32 5, label %entry.if.end_crit_edge37
    i32 6, label %entry.if.end_crit_edge38
    i32 7, label %entry.if.end_crit_edge39
    i32 8, label %entry.if.end_crit_edge40
    i32 9, label %entry.if.end_crit_edge41
    i32 10, label %entry.if.end_crit_edge42
    i32 11, label %entry.if.end_crit_edge43
    i32 12, label %entry.if.end_crit_edge44
    i32 13, label %entry.if.end_crit_edge45
    i32 14, label %entry.if.end_crit_edge46
    i32 15, label %entry.if.end_crit_edge47
    i32 16, label %entry.if.end_crit_edge48
    i32 17, label %entry.if.end_crit_edge49
    i32 18, label %entry.if.end_crit_edge50
    i32 19, label %entry.if.end_crit_edge51
    i32 20, label %entry.if.end_crit_edge52
    i32 21, label %entry.if.end_crit_edge53
    i32 22, label %entry.if.end_crit_edge54
    i32 23, label %entry.if.end_crit_edge55
    i32 24, label %entry.if.end_crit_edge56
    i32 25, label %entry.if.end_crit_edge57
    i32 26, label %entry.if.end_crit_edge58
    i32 27, label %entry.if.end_crit_edge59
    i32 28, label %entry.if.end_crit_edge60
    i32 32, label %entry.sw.bb1.i_crit_edge
    i32 37, label %entry.sw.bb1.i_crit_edge61
  ]

entry.sw.bb1.i_crit_edge61:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1.i

entry.sw.bb1.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb1.i

entry.if.end_crit_edge60:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge59:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge58:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge57:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge56:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge55:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge54:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge53:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge52:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge51:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge50:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge49:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge48:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge47:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge46:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge45:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge44:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge43:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge42:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge41:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge40:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge39:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge38:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge37:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge36:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge35:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge34:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge33:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

sw.bb1.i:                                         ; preds = %entry.sw.bb1.i_crit_edge, %entry.sw.bb1.i_crit_edge61
  br label %if.end

tas5086_register_size.exit:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.i2c_client, ptr %context, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %reg) #12
  br label %cleanup

if.end:                                           ; preds = %sw.bb1.i, %entry.if.end_crit_edge, %entry.if.end_crit_edge33, %entry.if.end_crit_edge34, %entry.if.end_crit_edge35, %entry.if.end_crit_edge36, %entry.if.end_crit_edge37, %entry.if.end_crit_edge38, %entry.if.end_crit_edge39, %entry.if.end_crit_edge40, %entry.if.end_crit_edge41, %entry.if.end_crit_edge42, %entry.if.end_crit_edge43, %entry.if.end_crit_edge44, %entry.if.end_crit_edge45, %entry.if.end_crit_edge46, %entry.if.end_crit_edge47, %entry.if.end_crit_edge48, %entry.if.end_crit_edge49, %entry.if.end_crit_edge50, %entry.if.end_crit_edge51, %entry.if.end_crit_edge52, %entry.if.end_crit_edge53, %entry.if.end_crit_edge54, %entry.if.end_crit_edge55, %entry.if.end_crit_edge56, %entry.if.end_crit_edge57, %entry.if.end_crit_edge58, %entry.if.end_crit_edge59, %entry.if.end_crit_edge60
  %retval.0.i.ph = phi i32 [ 1, %entry.if.end_crit_edge ], [ 1, %entry.if.end_crit_edge33 ], [ 1, %entry.if.end_crit_edge34 ], [ 1, %entry.if.end_crit_edge35 ], [ 1, %entry.if.end_crit_edge36 ], [ 1, %entry.if.end_crit_edge37 ], [ 1, %entry.if.end_crit_edge38 ], [ 1, %entry.if.end_crit_edge39 ], [ 1, %entry.if.end_crit_edge40 ], [ 1, %entry.if.end_crit_edge41 ], [ 1, %entry.if.end_crit_edge42 ], [ 1, %entry.if.end_crit_edge43 ], [ 1, %entry.if.end_crit_edge44 ], [ 1, %entry.if.end_crit_edge45 ], [ 1, %entry.if.end_crit_edge46 ], [ 1, %entry.if.end_crit_edge47 ], [ 1, %entry.if.end_crit_edge48 ], [ 1, %entry.if.end_crit_edge49 ], [ 1, %entry.if.end_crit_edge50 ], [ 1, %entry.if.end_crit_edge51 ], [ 1, %entry.if.end_crit_edge52 ], [ 1, %entry.if.end_crit_edge53 ], [ 1, %entry.if.end_crit_edge54 ], [ 1, %entry.if.end_crit_edge55 ], [ 1, %entry.if.end_crit_edge56 ], [ 1, %entry.if.end_crit_edge57 ], [ 1, %entry.if.end_crit_edge58 ], [ 1, %entry.if.end_crit_edge59 ], [ 1, %entry.if.end_crit_edge60 ], [ 4, %sw.bb1.i ]
  %conv = trunc i32 %reg to i8
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %conv, ptr %buf, align 1
  %conv3 = trunc i32 %value to i8
  %arrayidx4 = getelementptr [5 x i8], ptr %buf, i32 0, i32 %retval.0.i.ph
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv3, ptr %arrayidx4, align 1
  %dec = add nsw i32 %retval.0.i.ph, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp1.not = icmp eq i32 %dec, 0
  br i1 %cmp1.not, label %if.end.for.end_crit_edge, label %for.body.1

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.1:                                       ; preds = %if.end
  %shr = lshr i32 %value, 8
  %conv3.1 = trunc i32 %shr to i8
  %arrayidx4.1 = getelementptr [5 x i8], ptr %buf, i32 0, i32 %dec
  %5 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv3.1, ptr %arrayidx4.1, align 1
  %dec.1 = add nsw i32 %retval.0.i.ph, -2
  %shr.1 = lshr i32 %value, 16
  %conv3.2 = trunc i32 %shr.1 to i8
  %arrayidx4.2 = getelementptr [5 x i8], ptr %buf, i32 0, i32 %dec.1
  %6 = ptrtoint ptr %arrayidx4.2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv3.2, ptr %arrayidx4.2, align 1
  %dec.2 = add nsw i32 %retval.0.i.ph, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.2)
  %cmp1.not.2 = icmp eq i32 %dec.2, 0
  br i1 %cmp1.not.2, label %for.body.1.for.end_crit_edge, label %for.body.3

for.body.1.for.end_crit_edge:                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.3:                                       ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #11
  %shr.2 = lshr i32 %value, 24
  %conv3.3 = trunc i32 %shr.2 to i8
  %arrayidx4.3 = getelementptr [5 x i8], ptr %buf, i32 0, i32 %dec.2
  %7 = ptrtoint ptr %arrayidx4.3 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv3.3, ptr %arrayidx4.3, align 1
  br label %for.end

for.end:                                          ; preds = %for.body.3, %for.body.1.for.end_crit_edge, %if.end.for.end_crit_edge
  %add = add nuw nsw i32 %retval.0.i.ph, 1
  %call.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %context, ptr noundef nonnull %buf, i32 noundef %add, i16 noundef zeroext 0) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %add)
  %cmp7 = icmp eq i32 %call.i, %add
  br i1 %cmp7, label %for.end.cleanup_crit_edge, label %if.else

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp10 = icmp slt i32 %call.i, 0
  %call5. = select i1 %cmp10, i32 %call.i, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %if.else, %for.end.cleanup_crit_edge, %tas5086_register_size.exit
  %retval.0 = phi i32 [ -22, %tas5086_register_size.exit ], [ 0, %for.end.cleanup_crit_edge ], [ %call5., %if.else ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %buf) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_named_gpio_flags(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output_raw(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_raw_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tas5086_probe(ptr nocapture noundef readonly %component) #2 align 64 {
entry:
  %name = alloca [25 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %supplies = getelementptr inbounds %struct.tas5086_private, ptr %3, i32 0, i32 9
  %call1 = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %supplies) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.13, i32 noundef %call1) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %pwm_start_mid_z = getelementptr inbounds %struct.tas5086_private, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %pwm_start_mid_z to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %pwm_start_mid_z, align 4
  %charge_period = getelementptr inbounds %struct.tas5086_private, ptr %3, i32 0, i32 5
  %7 = ptrtoint ptr %charge_period to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1300000, ptr %charge_period, align 4
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %call3 = tail call ptr @of_match_device(ptr noundef nonnull @tas5086_dt_ids, ptr noundef %9) #9
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.if.end18_crit_edge, label %if.then4

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then4:                                         ; preds = %if.end
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  %of_node6 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 27
  %12 = ptrtoint ptr %of_node6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node6, align 8
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %13, ptr noundef nonnull @.str.72, ptr noundef %charge_period, i32 noundef 1, i32 noundef 0) #9
  call void @llvm.lifetime.start.p0(i64 25, ptr nonnull %name) #9
  %14 = call ptr @memset(ptr %name, i32 255, i32 25)
  %call11 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 25, ptr noundef nonnull @.str.73, i32 noundef 1)
  %call13 = call ptr @of_get_property(ptr noundef %13, ptr noundef nonnull %name, ptr noundef null) #9
  %cmp14.not = icmp eq ptr %call13, null
  br i1 %cmp14.not, label %if.then4.if.end17_crit_edge, label %if.then15

if.then4.if.end17_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then15:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %pwm_start_mid_z to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pwm_start_mid_z, align 4
  %or = or i32 %16, 1
  store i32 %or, ptr %pwm_start_mid_z, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.then4.if.end17_crit_edge
  call void @llvm.lifetime.end.p0(i64 25, ptr nonnull %name) #9
  call void @llvm.lifetime.start.p0(i64 25, ptr nonnull %name) #9
  %17 = call ptr @memset(ptr %name, i32 255, i32 25)
  %call11.1 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 25, ptr noundef nonnull @.str.73, i32 noundef 2)
  %call13.1 = call ptr @of_get_property(ptr noundef %13, ptr noundef nonnull %name, ptr noundef null) #9
  %cmp14.not.1 = icmp eq ptr %call13.1, null
  br i1 %cmp14.not.1, label %if.end17.if.end17.1_crit_edge, label %if.then15.1

if.end17.if.end17.1_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.1

if.then15.1:                                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %pwm_start_mid_z to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pwm_start_mid_z, align 4
  %or.1 = or i32 %19, 2
  store i32 %or.1, ptr %pwm_start_mid_z, align 4
  br label %if.end17.1

if.end17.1:                                       ; preds = %if.then15.1, %if.end17.if.end17.1_crit_edge
  call void @llvm.lifetime.end.p0(i64 25, ptr nonnull %name) #9
  call void @llvm.lifetime.start.p0(i64 25, ptr nonnull %name) #9
  %20 = call ptr @memset(ptr %name, i32 255, i32 25)
  %call11.2 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 25, ptr noundef nonnull @.str.73, i32 noundef 3)
  %call13.2 = call ptr @of_get_property(ptr noundef %13, ptr noundef nonnull %name, ptr noundef null) #9
  %cmp14.not.2 = icmp eq ptr %call13.2, null
  br i1 %cmp14.not.2, label %if.end17.1.if.end17.2_crit_edge, label %if.then15.2

if.end17.1.if.end17.2_crit_edge:                  ; preds = %if.end17.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.2

if.then15.2:                                      ; preds = %if.end17.1
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %pwm_start_mid_z to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pwm_start_mid_z, align 4
  %or.2 = or i32 %22, 4
  store i32 %or.2, ptr %pwm_start_mid_z, align 4
  br label %if.end17.2

if.end17.2:                                       ; preds = %if.then15.2, %if.end17.1.if.end17.2_crit_edge
  call void @llvm.lifetime.end.p0(i64 25, ptr nonnull %name) #9
  call void @llvm.lifetime.start.p0(i64 25, ptr nonnull %name) #9
  %23 = call ptr @memset(ptr %name, i32 255, i32 25)
  %call11.3 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 25, ptr noundef nonnull @.str.73, i32 noundef 4)
  %call13.3 = call ptr @of_get_property(ptr noundef %13, ptr noundef nonnull %name, ptr noundef null) #9
  %cmp14.not.3 = icmp eq ptr %call13.3, null
  br i1 %cmp14.not.3, label %if.end17.2.if.end17.3_crit_edge, label %if.then15.3

if.end17.2.if.end17.3_crit_edge:                  ; preds = %if.end17.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.3

if.then15.3:                                      ; preds = %if.end17.2
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %pwm_start_mid_z to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %pwm_start_mid_z, align 4
  %or.3 = or i32 %25, 8
  store i32 %or.3, ptr %pwm_start_mid_z, align 4
  br label %if.end17.3

if.end17.3:                                       ; preds = %if.then15.3, %if.end17.2.if.end17.3_crit_edge
  call void @llvm.lifetime.end.p0(i64 25, ptr nonnull %name) #9
  call void @llvm.lifetime.start.p0(i64 25, ptr nonnull %name) #9
  %26 = call ptr @memset(ptr %name, i32 255, i32 25)
  %call11.4 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 25, ptr noundef nonnull @.str.73, i32 noundef 5)
  %call13.4 = call ptr @of_get_property(ptr noundef %13, ptr noundef nonnull %name, ptr noundef null) #9
  %cmp14.not.4 = icmp eq ptr %call13.4, null
  br i1 %cmp14.not.4, label %if.end17.3.if.end17.4_crit_edge, label %if.then15.4

if.end17.3.if.end17.4_crit_edge:                  ; preds = %if.end17.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.4

if.then15.4:                                      ; preds = %if.end17.3
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %pwm_start_mid_z to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pwm_start_mid_z, align 4
  %or.4 = or i32 %28, 16
  store i32 %or.4, ptr %pwm_start_mid_z, align 4
  br label %if.end17.4

if.end17.4:                                       ; preds = %if.then15.4, %if.end17.3.if.end17.4_crit_edge
  call void @llvm.lifetime.end.p0(i64 25, ptr nonnull %name) #9
  call void @llvm.lifetime.start.p0(i64 25, ptr nonnull %name) #9
  %29 = call ptr @memset(ptr %name, i32 255, i32 25)
  %call11.5 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 25, ptr noundef nonnull @.str.73, i32 noundef 6)
  %call13.5 = call ptr @of_get_property(ptr noundef %13, ptr noundef nonnull %name, ptr noundef null) #9
  %cmp14.not.5 = icmp eq ptr %call13.5, null
  br i1 %cmp14.not.5, label %if.end17.4.if.end17.5_crit_edge, label %if.then15.5

if.end17.4.if.end17.5_crit_edge:                  ; preds = %if.end17.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.5

if.then15.5:                                      ; preds = %if.end17.4
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %pwm_start_mid_z to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pwm_start_mid_z, align 4
  %or.5 = or i32 %31, 32
  store i32 %or.5, ptr %pwm_start_mid_z, align 4
  br label %if.end17.5

if.end17.5:                                       ; preds = %if.then15.5, %if.end17.4.if.end17.5_crit_edge
  call void @llvm.lifetime.end.p0(i64 25, ptr nonnull %name) #9
  br label %if.end18

if.end18:                                         ; preds = %if.end17.5, %if.end.if.end18_crit_edge
  %gpio_nreset.i = getelementptr inbounds %struct.tas5086_private, ptr %3, i32 0, i32 8
  %32 = ptrtoint ptr %gpio_nreset.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %gpio_nreset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %33)
  %34 = icmp ult i32 %33, 2048
  br i1 %34, label %if.then.i, label %if.end18.tas5086_reset.exit_crit_edge

if.end18.tas5086_reset.exit_crit_edge:            ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %tas5086_reset.exit

if.then.i:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i54 = call ptr @gpio_to_desc(i32 noundef %33) #9
  %call1.i.i = call i32 @gpiod_direction_output_raw(ptr noundef %call.i.i54, i32 noundef 0) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %35(i32 noundef 214748) #9
  %36 = ptrtoint ptr %gpio_nreset.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %gpio_nreset.i, align 4
  %call.i6.i = call ptr @gpio_to_desc(i32 noundef %37) #9
  call void @gpiod_set_raw_value(ptr noundef %call.i6.i, i32 noundef 1) #9
  call void @msleep(i32 noundef 15) #9
  br label %tas5086_reset.exit

tas5086_reset.exit:                               ; preds = %if.then.i, %if.end18.tas5086_reset.exit_crit_edge
  %38 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i, align 4
  %call20 = call fastcc i32 @tas5086_init(ptr noundef %39, ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %tas5086_reset.exit.exit_disable_regulators_crit_edge, label %if.end23

tas5086_reset.exit.exit_disable_regulators_crit_edge: ; preds = %tas5086_reset.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_disable_regulators

if.end23:                                         ; preds = %tas5086_reset.exit
  %40 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %3, align 4
  %call24 = call i32 @regmap_write(ptr noundef %41, i32 noundef 7, i32 noundef 48) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %if.end23.exit_disable_regulators_crit_edge, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end23.exit_disable_regulators_crit_edge:       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit_disable_regulators

exit_disable_regulators:                          ; preds = %if.end23.exit_disable_regulators_crit_edge, %tas5086_reset.exit.exit_disable_regulators_crit_edge
  %ret.0 = phi i32 [ %call20, %tas5086_reset.exit.exit_disable_regulators_crit_edge ], [ %call24, %if.end23.exit_disable_regulators_crit_edge ]
  %call30 = call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies) #9
  br label %cleanup

cleanup:                                          ; preds = %exit_disable_regulators, %if.end23.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call1, %do.end ], [ %ret.0, %exit_disable_regulators ], [ 0, %if.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tas5086_remove(ptr nocapture noundef readonly %component) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %gpio_nreset = getelementptr inbounds %struct.tas5086_private, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %gpio_nreset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gpio_nreset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %5)
  %6 = icmp ult i32 %5, 2048
  br i1 %6, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call ptr @gpio_to_desc(i32 noundef %5) #9
  tail call void @gpiod_set_raw_value(ptr noundef %call.i, i32 noundef 0) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %supplies = getelementptr inbounds %struct.tas5086_private, ptr %3, i32 0, i32 9
  %call3 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tas5086_soc_suspend(ptr nocapture noundef readonly %component) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call1 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 5, i32 noundef 96) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %supplies = getelementptr inbounds %struct.tas5086_private, ptr %3, i32 0, i32 9
  %call2 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tas5086_soc_resume(ptr nocapture noundef readonly %component) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %supplies = getelementptr inbounds %struct.tas5086_private, ptr %3, i32 0, i32 9
  %call1 = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %supplies) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %gpio_nreset.i = getelementptr inbounds %struct.tas5086_private, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %gpio_nreset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gpio_nreset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %5)
  %6 = icmp ult i32 %5, 2048
  br i1 %6, label %if.then.i, label %if.end.tas5086_reset.exit_crit_edge

if.end.tas5086_reset.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %tas5086_reset.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = tail call ptr @gpio_to_desc(i32 noundef %5) #9
  %call1.i.i = tail call i32 @gpiod_direction_output_raw(ptr noundef %call.i.i, i32 noundef 0) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 214748) #9
  %8 = ptrtoint ptr %gpio_nreset.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %gpio_nreset.i, align 4
  %call.i6.i = tail call ptr @gpio_to_desc(i32 noundef %9) #9
  tail call void @gpiod_set_raw_value(ptr noundef %call.i6.i, i32 noundef 1) #9
  tail call void @msleep(i32 noundef 15) #9
  br label %tas5086_reset.exit

tas5086_reset.exit:                               ; preds = %if.then.i, %if.end.tas5086_reset.exit_crit_edge
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  tail call void @regcache_mark_dirty(ptr noundef %11) #9
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  %call2 = tail call fastcc i32 @tas5086_init(ptr noundef %13, ptr noundef %3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %tas5086_reset.exit.cleanup_crit_edge, label %if.end5

tas5086_reset.exit.cleanup_crit_edge:             ; preds = %tas5086_reset.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %tas5086_reset.exit
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  %call7 = tail call i32 @regcache_sync(ptr noundef %15) #9
  %16 = tail call i32 @llvm.smin.i32(i32 %call7, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %tas5086_reset.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %call2, %tas5086_reset.exit.cleanup_crit_edge ], [ %16, %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_mono_info(ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tas5086_get_deemph(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %deemph = getelementptr inbounds %struct.tas5086_private, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %deemph to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %deemph, align 4, !range !233
  %8 = zext i8 %7 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tas5086_put_deemph(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool = icmp ne i32 %7, 0
  %deemph = getelementptr inbounds %struct.tas5086_private, ptr %5, i32 0, i32 4
  %frombool = zext i1 %tobool to i8
  %8 = ptrtoint ptr %deemph to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %frombool, ptr %deemph, align 4
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %driver_data.i.i.i, align 4
  %deemph.i = getelementptr inbounds %struct.tas5086_private, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %deemph.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %deemph.i, align 4, !range !233
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i, label %entry.tas5086_set_deemph.exit_crit_edge, label %for.cond.preheader.i

entry.tas5086_set_deemph.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %tas5086_set_deemph.exit

for.cond.preheader.i:                             ; preds = %entry
  %rate.i = getelementptr inbounds %struct.tas5086_private, ptr %12, i32 0, i32 7
  %15 = ptrtoint ptr %rate.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rate.i, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %16, label %for.cond.preheader.i.tas5086_set_deemph.exit_crit_edge [
    i32 48000, label %if.end3.fold.split12.i
    i32 32000, label %if.end3.fold.split.i
    i32 44100, label %if.end3.fold.split11.i
  ]

for.cond.preheader.i.tas5086_set_deemph.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tas5086_set_deemph.exit

if.end3.fold.split.i:                             ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tas5086_set_deemph.exit

if.end3.fold.split11.i:                           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tas5086_set_deemph.exit

if.end3.fold.split12.i:                           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tas5086_set_deemph.exit

tas5086_set_deemph.exit:                          ; preds = %if.end3.fold.split12.i, %if.end3.fold.split11.i, %if.end3.fold.split.i, %for.cond.preheader.i.tas5086_set_deemph.exit_crit_edge, %entry.tas5086_set_deemph.exit_crit_edge
  %val.0.i = phi i32 [ 0, %entry.tas5086_set_deemph.exit_crit_edge ], [ 1, %if.end3.fold.split.i ], [ 2, %if.end3.fold.split11.i ], [ 3, %if.end3.fold.split12.i ], [ 0, %for.cond.preheader.i.tas5086_set_deemph.exit_crit_edge ]
  %18 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %12, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 3, i32 noundef 3, i32 noundef %val.0.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  ret i32 %call.i.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tas5086_init(ptr noundef %dev, ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pwm_start_mid_z = getelementptr inbounds %struct.tas5086_private, ptr %priv, i32 0, i32 6
  %0 = ptrtoint ptr %pwm_start_mid_z to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pwm_start_mid_z, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %or = or i32 %1, 128
  %call = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 24, i32 noundef %or) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %charge_period = getelementptr inbounds %struct.tas5086_private, ptr %priv, i32 0, i32 5
  %4 = ptrtoint ptr %charge_period to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %charge_period, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %5, label %for.inc.i.23 [
    i32 0, label %if.then2
    i32 13000, label %if.end.if.then8_crit_edge
    i32 16900, label %if.then8.fold.split
    i32 23400, label %if.then8.fold.split52
    i32 31200, label %if.then8.fold.split53
    i32 41600, label %if.then8.fold.split54
    i32 54600, label %if.then8.fold.split55
    i32 72800, label %if.then8.fold.split56
    i32 96200, label %if.then8.fold.split57
    i32 130000, label %if.then8.fold.split58
    i32 156000, label %if.then8.fold.split59
    i32 234000, label %if.then8.fold.split60
    i32 312000, label %if.then8.fold.split61
    i32 416000, label %if.then8.fold.split62
    i32 546000, label %if.then8.fold.split63
    i32 728000, label %if.then8.fold.split64
    i32 962000, label %if.then8.fold.split65
    i32 1300000, label %if.then8.fold.split66
    i32 169000, label %if.then8.fold.split67
    i32 2340000, label %if.then8.fold.split68
    i32 3120000, label %if.then8.fold.split69
    i32 4160000, label %if.then8.fold.split70
    i32 5460000, label %if.then8.fold.split71
    i32 7280000, label %if.then8.fold.split72
    i32 9620000, label %if.then8.fold.split73
  ]

if.end.if.then8_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %priv, align 4
  %call4 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 26, i32 noundef 0) #9
  br label %if.end14

for.inc.i.23:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.74, i32 noundef %5) #12
  br label %if.end14

if.then8.fold.split:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

if.then8.fold.split52:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

if.then8.fold.split53:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

if.then8.fold.split54:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

if.then8.fold.split55:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

if.then8.fold.split56:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

if.then8.fold.split57:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

if.then8.fold.split58:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

if.then8.fold.split59:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

if.then8.fold.split60:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

if.then8.fold.split61:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

if.then8.fold.split62:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

if.then8.fold.split63:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

if.then8.fold.split64:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

if.then8.fold.split65:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

if.then8.fold.split66:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

if.then8.fold.split67:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

if.then8.fold.split68:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

if.then8.fold.split69:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

if.then8.fold.split70:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

if.then8.fold.split71:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

if.then8.fold.split72:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

if.then8.fold.split73:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then8

if.then8:                                         ; preds = %if.then8.fold.split73, %if.then8.fold.split72, %if.then8.fold.split71, %if.then8.fold.split70, %if.then8.fold.split69, %if.then8.fold.split68, %if.then8.fold.split67, %if.then8.fold.split66, %if.then8.fold.split65, %if.then8.fold.split64, %if.then8.fold.split63, %if.then8.fold.split62, %if.then8.fold.split61, %if.then8.fold.split60, %if.then8.fold.split59, %if.then8.fold.split58, %if.then8.fold.split57, %if.then8.fold.split56, %if.then8.fold.split55, %if.then8.fold.split54, %if.then8.fold.split53, %if.then8.fold.split52, %if.then8.fold.split, %if.end.if.then8_crit_edge
  %i.06.i.lcssa = phi i32 [ 8, %if.end.if.then8_crit_edge ], [ 9, %if.then8.fold.split ], [ 10, %if.then8.fold.split52 ], [ 11, %if.then8.fold.split53 ], [ 12, %if.then8.fold.split54 ], [ 13, %if.then8.fold.split55 ], [ 14, %if.then8.fold.split56 ], [ 15, %if.then8.fold.split57 ], [ 16, %if.then8.fold.split58 ], [ 17, %if.then8.fold.split59 ], [ 18, %if.then8.fold.split60 ], [ 19, %if.then8.fold.split61 ], [ 20, %if.then8.fold.split62 ], [ 21, %if.then8.fold.split63 ], [ 22, %if.then8.fold.split64 ], [ 23, %if.then8.fold.split65 ], [ 24, %if.then8.fold.split66 ], [ 25, %if.then8.fold.split67 ], [ 26, %if.then8.fold.split68 ], [ 27, %if.then8.fold.split69 ], [ 28, %if.then8.fold.split70 ], [ 29, %if.then8.fold.split71 ], [ 30, %if.then8.fold.split72 ], [ 31, %if.then8.fold.split73 ]
  %9 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv, align 4
  %call10 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 26, i32 noundef %i.06.i.lcssa) #9
  br label %if.end14

if.end14:                                         ; preds = %if.then8, %for.inc.i.23, %if.then2
  %11 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %priv, align 4
  %call16 = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 27, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.end14.cleanup_crit_edge, label %if.end19

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end19:                                         ; preds = %if.end14
  %13 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv, align 4
  %call21 = tail call i32 @regmap_write(ptr noundef %14, i32 noundef 5, i32 noundef 32) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.end19.cleanup_crit_edge, label %if.end24

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end24:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %priv, align 4
  %call26 = tail call i32 @regmap_write(ptr noundef %16, i32 noundef 6, i32 noundef 63) #9
  %17 = tail call i32 @llvm.smin.i32(i32 %call26, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.end19.cleanup_crit_edge, %if.end14.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %if.end14.cleanup_crit_edge ], [ %call21, %if.end19.cleanup_crit_edge ], [ %17, %if.end24 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tas5086_set_dai_sysclk(ptr nocapture noundef readonly %codec_dai, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %codec_dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %6 = zext i32 %clk_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %clk_id, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %mclk = getelementptr inbounds %struct.tas5086_private, ptr %5, i32 0, i32 1
  br label %sw.epilog.sink.split

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sclk = getelementptr inbounds %struct.tas5086_private, ptr %5, i32 0, i32 2
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb2, %sw.bb
  %sclk.sink = phi ptr [ %sclk, %sw.bb2 ], [ %mclk, %sw.bb ]
  %7 = ptrtoint ptr %sclk.sink to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %freq, ptr %sclk.sink, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tas5086_set_dai_fmt(ptr nocapture noundef readonly %codec_dai, i32 noundef %format) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %codec_dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %and = and i32 %format, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %and)
  %cmp.not = icmp eq i32 %and, 16384
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.79) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %format2 = getelementptr inbounds %struct.tas5086_private, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %format2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %format, ptr %format2, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tas5086_mute_stream(ptr nocapture noundef readonly %dai, i32 noundef %mute, i32 noundef %stream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mute)
  %tobool.not = icmp eq i32 %mute, 0
  %spec.store.select = select i1 %tobool.not, i32 0, i32 63
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call2 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 6, i32 noundef %spec.store.select) #9
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tas5086_hw_params(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i, align 4
  %rate = getelementptr inbounds %struct.tas5086_private, ptr %5, i32 0, i32 7
  %8 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %rate, align 4
  %9 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %7, label %for.inc.i.7 [
    i32 32000, label %entry.if.end_crit_edge
    i32 38000, label %if.end.fold.split
    i32 44100, label %if.end.fold.split116
    i32 48000, label %if.end.fold.split117
    i32 88200, label %if.end.fold.split118
    i32 96000, label %if.end.fold.split119
    i32 176400, label %if.end.fold.split120
    i32 192000, label %if.end.fold.split121
  ]

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.inc.i.7:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.81) #12
  br label %cleanup

if.end.fold.split:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.fold.split116:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.fold.split117:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.fold.split118:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.fold.split119:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.fold.split120:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end.fold.split121:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %if.end.fold.split121, %if.end.fold.split120, %if.end.fold.split119, %if.end.fold.split118, %if.end.fold.split117, %if.end.fold.split116, %if.end.fold.split, %entry.if.end_crit_edge
  %i.06.i.lcssa = phi i32 [ 0, %entry.if.end_crit_edge ], [ 32, %if.end.fold.split ], [ 64, %if.end.fold.split116 ], [ 96, %if.end.fold.split117 ], [ 128, %if.end.fold.split118 ], [ 160, %if.end.fold.split119 ], [ 192, %if.end.fold.split120 ], [ 224, %if.end.fold.split121 ]
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %5, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 0, i32 noundef 224, i32 noundef %i.06.i.lcssa, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp6 = icmp slt i32 %call.i, 0
  br i1 %cmp6, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %mclk = getelementptr inbounds %struct.tas5086_private, ptr %5, i32 0, i32 1
  %14 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mclk, align 4
  %16 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rate, align 4
  %div = udiv i32 %15, %17
  %18 = add i32 %div, -64
  %19 = call i32 @llvm.fshl.i32(i32 %18, i32 %18, i32 26)
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %19)
  %20 = icmp ult i32 %19, 8
  br i1 %20, label %switch.hole_check, label %if.end8.for.inc.i102.5_crit_edge

if.end8.for.inc.i102.5_crit_edge:                 ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i102.5

for.inc.i102.5:                                   ; preds = %switch.hole_check.for.inc.i102.5_crit_edge, %if.end8.for.inc.i102.5_crit_edge
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.84) #12
  br label %cleanup

switch.hole_check:                                ; preds = %if.end8
  %switch.maskindex = trunc i32 %19 to i8
  %switch.shifted = lshr i8 -81, %switch.maskindex
  %23 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %switch.lobit.not = icmp eq i8 %23, 0
  br i1 %switch.lobit.not, label %switch.hole_check.for.inc.i102.5_crit_edge, label %switch.lookup

switch.hole_check.for.inc.i102.5_crit_edge:       ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i102.5

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.tas5086_hw_params, i32 0, i32 %19
  %24 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %24)
  %switch.load = load i32, ptr %switch.gep, align 4
  %25 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %5, align 4
  %call.i105 = tail call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef 0, i32 noundef 28, i32 noundef %switch.load, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i105)
  %cmp21 = icmp slt i32 %call.i105, 0
  br i1 %cmp21, label %switch.lookup.cleanup_crit_edge, label %if.end23

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end23:                                         ; preds = %switch.lookup
  %27 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %5, align 4
  %sclk = getelementptr inbounds %struct.tas5086_private, ptr %5, i32 0, i32 2
  %29 = ptrtoint ptr %sclk to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sclk, align 4
  %31 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rate, align 4
  %mul = mul i32 %32, 48
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %mul)
  %cmp26 = icmp eq i32 %30, %mul
  %cond = select i1 %cmp26, i32 2, i32 0
  %call.i106 = tail call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef 0, i32 noundef 2, i32 noundef %cond, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i106)
  %cmp28 = icmp slt i32 %call.i106, 0
  br i1 %cmp28, label %if.end23.cleanup_crit_edge, label %if.end30

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end30:                                         ; preds = %if.end23
  %format = getelementptr inbounds %struct.tas5086_private, ptr %5, i32 0, i32 3
  %33 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %format, align 4
  %and = and i32 %34, 15
  %switch.tableidx = add nsw i32 %and, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %35 = icmp ult i32 %switch.tableidx, 3
  br i1 %35, label %switch.lookup126, label %do.end35

do.end35:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.87) #12
  br label %cleanup

switch.lookup126:                                 ; preds = %if.end30
  %switch.gep127 = getelementptr inbounds [3 x i32], ptr @switch.table.tas5086_hw_params.92, i32 0, i32 %switch.tableidx
  %38 = ptrtoint ptr %switch.gep127 to i32
  call void @__asan_load4_noabort(i32 %38)
  %switch.load128 = load i32, ptr %switch.gep127, align 4
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %39 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i.i.i = icmp eq i32 %40, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %switch.lookup126.if.then.i.i.i_crit_edge

switch.lookup126.if.then.i.i.i_crit_edge:         ; preds = %switch.lookup126
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %switch.lookup126.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %switch.lookup126.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %40, %switch.lookup126.if.then.i.i.i_crit_edge ], [ %43, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %41 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #9, !range !234
  %add.i.i.i = or i32 %41, %i.09.lcssa.i.i.i
  br label %params_width.exit

for.inc.i.i.i:                                    ; preds = %switch.lookup126
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %42 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.1.i.i.i = icmp eq i32 %43, 0
  br i1 %tobool.not.1.i.i.i, label %for.inc.i.i.i.params_width.exit_crit_edge, label %for.inc.i.i.i.if.then.i.i.i_crit_edge

for.inc.i.i.i.if.then.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i

for.inc.i.i.i.params_width.exit_crit_edge:        ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %params_width.exit

params_width.exit:                                ; preds = %for.inc.i.i.i.params_width.exit_crit_edge, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ 0, %for.inc.i.i.i.params_width.exit_crit_edge ]
  %call1.i = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i) #9
  %44 = zext i32 %call1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %call1.i, label %do.end46 [
    i32 16, label %params_width.exit.sw.epilog48_crit_edge
    i32 20, label %sw.bb39
    i32 24, label %sw.bb41
  ]

params_width.exit.sw.epilog48_crit_edge:          ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog48

sw.bb39:                                          ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #11
  %add40 = add nuw nsw i32 %switch.load128, 1
  br label %sw.epilog48

sw.bb41:                                          ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #11
  %add42 = add nuw nsw i32 %switch.load128, 2
  br label %sw.epilog48

do.end46:                                         ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.90) #12
  br label %cleanup

sw.epilog48:                                      ; preds = %sw.bb41, %sw.bb39, %params_width.exit.sw.epilog48_crit_edge
  %val.1 = phi i32 [ %add42, %sw.bb41 ], [ %add40, %sw.bb39 ], [ %switch.load128, %params_width.exit.sw.epilog48_crit_edge ]
  %47 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %5, align 4
  %call50 = tail call i32 @regmap_write(ptr noundef %48, i32 noundef 4, i32 noundef %val.1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51 = icmp slt i32 %call50, 0
  br i1 %cmp51, label %sw.epilog48.cleanup_crit_edge, label %if.end53

sw.epilog48.cleanup_crit_edge:                    ; preds = %sw.epilog48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end53:                                         ; preds = %sw.epilog48
  %49 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %5, align 4
  %call.i107 = tail call i32 @regmap_update_bits_base(ptr noundef %50, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i107)
  %cmp56 = icmp slt i32 %call.i107, 0
  br i1 %cmp56, label %if.end53.cleanup_crit_edge, label %if.end58

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end58:                                         ; preds = %if.end53
  %51 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %52, i32 0, i32 8
  %53 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %driver_data.i.i.i, align 4
  %deemph.i = getelementptr inbounds %struct.tas5086_private, ptr %54, i32 0, i32 4
  %55 = ptrtoint ptr %deemph.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %deemph.i, align 4, !range !233
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool.not.i = icmp eq i8 %56, 0
  br i1 %tobool.not.i, label %if.end58.tas5086_set_deemph.exit_crit_edge, label %for.cond.preheader.i

if.end58.tas5086_set_deemph.exit_crit_edge:       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %tas5086_set_deemph.exit

for.cond.preheader.i:                             ; preds = %if.end58
  %rate.i = getelementptr inbounds %struct.tas5086_private, ptr %54, i32 0, i32 7
  %57 = ptrtoint ptr %rate.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %rate.i, align 4
  %59 = zext i32 %58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %58, label %for.cond.preheader.i.tas5086_set_deemph.exit_crit_edge [
    i32 48000, label %if.end3.fold.split12.i
    i32 32000, label %if.end3.fold.split.i
    i32 44100, label %if.end3.fold.split11.i
  ]

for.cond.preheader.i.tas5086_set_deemph.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tas5086_set_deemph.exit

if.end3.fold.split.i:                             ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tas5086_set_deemph.exit

if.end3.fold.split11.i:                           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tas5086_set_deemph.exit

if.end3.fold.split12.i:                           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tas5086_set_deemph.exit

tas5086_set_deemph.exit:                          ; preds = %if.end3.fold.split12.i, %if.end3.fold.split11.i, %if.end3.fold.split.i, %for.cond.preheader.i.tas5086_set_deemph.exit_crit_edge, %if.end58.tas5086_set_deemph.exit_crit_edge
  %val.0.i = phi i32 [ 0, %if.end58.tas5086_set_deemph.exit_crit_edge ], [ 1, %if.end3.fold.split.i ], [ 2, %if.end3.fold.split11.i ], [ 3, %if.end3.fold.split12.i ], [ 0, %for.cond.preheader.i.tas5086_set_deemph.exit_crit_edge ]
  %60 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %54, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %61, i32 noundef 3, i32 noundef 3, i32 noundef %val.0.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %cleanup

cleanup:                                          ; preds = %tas5086_set_deemph.exit, %if.end53.cleanup_crit_edge, %sw.epilog48.cleanup_crit_edge, %do.end46, %do.end35, %if.end23.cleanup_crit_edge, %switch.lookup.cleanup_crit_edge, %for.inc.i102.5, %if.end.cleanup_crit_edge, %for.inc.i.7
  %retval.0 = phi i32 [ -22, %for.inc.i.7 ], [ -22, %for.inc.i102.5 ], [ -22, %do.end35 ], [ -22, %do.end46 ], [ %call.i.i, %tas5086_set_deemph.exit ], [ %call.i, %if.end.cleanup_crit_edge ], [ %call.i105, %switch.lookup.cleanup_crit_edge ], [ %call.i106, %if.end23.cleanup_crit_edge ], [ %call50, %sw.epilog48.cleanup_crit_edge ], [ %call.i107, %if.end53.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 113)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 113)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !27, !28, !29, !31, !33, !35, !36, !37, !39, !40, !41, !43, !45, !47, !49, !51, !52, !53, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !173, !174, !176, !178, !180, !181, !182, !183, !184, !186, !188, !190, !192, !194, !196, !197, !198, !199, !201, !202, !203, !204, !206, !207, !208, !210, !211, !212, !214, !215, !216, !218, !220, !222}
!llvm.module.flags = !{!224, !225, !226, !227, !228, !229, !230, !231}
!llvm.ident = !{!232}

!0 = !{ptr @__initcall__kmod_snd_soc_tas5086__296_1001_tas5086_i2c_driver_init6, !1, !"__initcall__kmod_snd_soc_tas5086__296_1001_tas5086_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/tas5086.c", i32 1001, i32 1}
!2 = !{ptr @__exitcall_tas5086_i2c_driver_exit, !1, !"__exitcall_tas5086_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author297, !4, !"__UNIQUE_ID_author297", i1 false, i1 false}
!4 = !{!"../sound/soc/codecs/tas5086.c", i32 1003, i32 1}
!5 = !{ptr @__UNIQUE_ID_description298, !6, !"__UNIQUE_ID_description298", i1 false, i1 false}
!6 = !{!"../sound/soc/codecs/tas5086.c", i32 1004, i32 1}
!7 = !{ptr @__UNIQUE_ID_file299, !8, !"__UNIQUE_ID_file299", i1 false, i1 false}
!8 = !{!"../sound/soc/codecs/tas5086.c", i32 1005, i32 1}
!9 = !{ptr @__UNIQUE_ID_license300, !8, !"__UNIQUE_ID_license300", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/codecs/tas5086.c", i32 993, i32 11}
!12 = !{ptr @tas5086_i2c_driver, !13, !"tas5086_i2c_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/tas5086.c", i32 991, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/tas5086.c", i32 932, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @tas5086_i2c_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @tas5086_i2c_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @tas5086_i2c_probe._key, !23, !"_key", i1 false, i1 false}
!23 = !{!"../sound/soc/codecs/tas5086.c", i32 936, i32 17}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../sound/soc/codecs/tas5086.c", i32 939, i32 3}
!27 = !{ptr @tas5086_i2c_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @tas5086_i2c_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/soc/codecs/tas5086.c", i32 947, i32 44}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/soc/codecs/tas5086.c", i32 951, i32 43}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/soc/codecs/tas5086.c", i32 958, i32 3}
!35 = !{ptr @tas5086_i2c_probe._entry.12, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @tas5086_i2c_probe._entry_ptr.14, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/soc/codecs/tas5086.c", i32 967, i32 3}
!39 = !{ptr @tas5086_i2c_probe._entry.15, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @tas5086_i2c_probe._entry_ptr.17, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/soc/codecs/tas5086.c", i32 236, i32 2}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/soc/codecs/tas5086.c", i32 236, i32 10}
!45 = distinct !{null, !46, !"supply_names", i1 false, i1 false}
!46 = !{!"../sound/soc/codecs/tas5086.c", i32 235, i32 27}
!47 = !{ptr @tas5086_regmap, !48, !"tas5086_regmap", i1 false, i1 false}
!48 = !{!"../sound/soc/codecs/tas5086.c", i32 900, i32 35}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/soc/codecs/tas5086.c", i32 133, i32 2}
!51 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @tas5086_register_size._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @tas5086_register_size._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @tas5086_reg_defaults, !55, !"tas5086_reg_defaults", i1 false, i1 false}
!55 = !{!"../sound/soc/codecs/tas5086.c", i32 91, i32 33}
!56 = !{ptr @soc_component_dev_tas5086, !57, !"soc_component_dev_tas5086", i1 false, i1 false}
!57 = !{!"../sound/soc/codecs/tas5086.c", i32 877, i32 46}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/soc/codecs/tas5086.c", i32 536, i32 2}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/codecs/tas5086.c", i32 538, i32 2}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/soc/codecs/tas5086.c", i32 541, i32 2}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/codecs/tas5086.c", i32 544, i32 2}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/soc/codecs/tas5086.c", i32 547, i32 2}
!68 = !{ptr @tas5086_controls, !69, !"tas5086_controls", i1 false, i1 false}
!69 = !{!"../sound/soc/codecs/tas5086.c", i32 535, i32 38}
!70 = !{ptr @tas5086_dac_tlv, !71, !"tas5086_dac_tlv", i1 false, i1 false}
!71 = !{!"../sound/soc/codecs/tas5086.c", i32 533, i32 14}
!72 = distinct !{null, !73, !"tas5086_deemph", i1 false, i1 false}
!73 = !{!"../sound/soc/codecs/tas5086.c", i32 253, i32 12}
!74 = !{ptr @.str.30, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/soc/codecs/tas5086.c", i32 600, i32 2}
!76 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/codecs/tas5086.c", i32 601, i32 2}
!78 = !{ptr @.str.32, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/codecs/tas5086.c", i32 602, i32 2}
!80 = !{ptr @.str.33, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/soc/codecs/tas5086.c", i32 603, i32 2}
!82 = !{ptr @.str.34, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/codecs/tas5086.c", i32 604, i32 2}
!84 = !{ptr @.str.35, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/soc/codecs/tas5086.c", i32 605, i32 2}
!86 = !{ptr @.str.36, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/soc/codecs/tas5086.c", i32 606, i32 2}
!88 = !{ptr @.str.37, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/soc/codecs/tas5086.c", i32 607, i32 2}
!90 = !{ptr @.str.38, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/soc/codecs/tas5086.c", i32 609, i32 2}
!92 = !{ptr @.str.39, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/soc/codecs/tas5086.c", i32 610, i32 2}
!94 = !{ptr @.str.40, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/soc/codecs/tas5086.c", i32 611, i32 2}
!96 = !{ptr @.str.41, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/soc/codecs/tas5086.c", i32 612, i32 2}
!98 = !{ptr @.str.42, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/soc/codecs/tas5086.c", i32 613, i32 2}
!100 = !{ptr @.str.43, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/soc/codecs/tas5086.c", i32 614, i32 2}
!102 = !{ptr @.str.44, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/soc/codecs/tas5086.c", i32 616, i32 2}
!104 = !{ptr @.str.45, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/soc/codecs/tas5086.c", i32 618, i32 2}
!106 = !{ptr @.str.46, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/soc/codecs/tas5086.c", i32 620, i32 2}
!108 = !{ptr @.str.47, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/soc/codecs/tas5086.c", i32 622, i32 2}
!110 = !{ptr @.str.48, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/soc/codecs/tas5086.c", i32 624, i32 2}
!112 = !{ptr @.str.49, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/soc/codecs/tas5086.c", i32 626, i32 2}
!114 = !{ptr @.str.50, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/soc/codecs/tas5086.c", i32 629, i32 2}
!116 = !{ptr @.str.51, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/soc/codecs/tas5086.c", i32 631, i32 2}
!118 = !{ptr @.str.52, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/soc/codecs/tas5086.c", i32 633, i32 2}
!120 = !{ptr @.str.53, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/soc/codecs/tas5086.c", i32 635, i32 2}
!122 = !{ptr @.str.54, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/soc/codecs/tas5086.c", i32 637, i32 2}
!124 = !{ptr @.str.55, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/soc/codecs/tas5086.c", i32 639, i32 2}
!126 = !{ptr @tas5086_dapm_widgets, !127, !"tas5086_dapm_widgets", i1 false, i1 false}
!127 = !{!"../sound/soc/codecs/tas5086.c", i32 599, i32 41}
!128 = !{ptr @.str.57, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/soc/codecs/tas5086.c", i32 568, i32 2}
!130 = !{ptr @.str.58, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/soc/codecs/tas5086.c", i32 569, i32 2}
!132 = !{ptr @.str.59, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../sound/soc/codecs/tas5086.c", i32 570, i32 2}
!134 = !{ptr @.str.60, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../sound/soc/codecs/tas5086.c", i32 571, i32 2}
!136 = !{ptr @.str.61, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../sound/soc/codecs/tas5086.c", i32 572, i32 2}
!138 = !{ptr @.str.62, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/soc/codecs/tas5086.c", i32 573, i32 2}
!140 = !{ptr @tas5086_dapm_input_mux_controls, !141, !"tas5086_dapm_input_mux_controls", i1 false, i1 false}
!141 = !{!"../sound/soc/codecs/tas5086.c", i32 567, i32 38}
!142 = !{ptr @tas5086_dapm_input_mux_enum, !143, !"tas5086_dapm_input_mux_enum", i1 false, i1 false}
!143 = !{!"../sound/soc/codecs/tas5086.c", i32 558, i32 30}
!144 = !{ptr @.str.63, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../sound/soc/codecs/tas5086.c", i32 555, i32 24}
!146 = !{ptr @.str.64, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../sound/soc/codecs/tas5086.c", i32 555, i32 38}
!148 = !{ptr @tas5086_dapm_sdin_texts, !149, !"tas5086_dapm_sdin_texts", i1 false, i1 false}
!149 = !{!"../sound/soc/codecs/tas5086.c", i32 552, i32 20}
!150 = !{ptr @.str.65, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../sound/soc/codecs/tas5086.c", i32 591, i32 2}
!152 = !{ptr @.str.66, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../sound/soc/codecs/tas5086.c", i32 592, i32 2}
!154 = !{ptr @.str.67, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../sound/soc/codecs/tas5086.c", i32 593, i32 2}
!156 = !{ptr @.str.68, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../sound/soc/codecs/tas5086.c", i32 594, i32 2}
!158 = !{ptr @.str.69, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../sound/soc/codecs/tas5086.c", i32 595, i32 2}
!160 = !{ptr @.str.70, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../sound/soc/codecs/tas5086.c", i32 596, i32 2}
!162 = !{ptr @tas5086_dapm_output_mux_controls, !163, !"tas5086_dapm_output_mux_controls", i1 false, i1 false}
!163 = !{!"../sound/soc/codecs/tas5086.c", i32 590, i32 38}
!164 = !{ptr @tas5086_dapm_output_mux_enum, !165, !"tas5086_dapm_output_mux_enum", i1 false, i1 false}
!165 = !{!"../sound/soc/codecs/tas5086.c", i32 581, i32 30}
!166 = !{ptr @tas5086_dapm_channel_texts, !167, !"tas5086_dapm_channel_texts", i1 false, i1 false}
!167 = !{!"../sound/soc/codecs/tas5086.c", i32 577, i32 20}
!168 = !{ptr @tas5086_dapm_routes, !169, !"tas5086_dapm_routes", i1 false, i1 false}
!169 = !{!"../sound/soc/codecs/tas5086.c", i32 643, i32 40}
!170 = !{ptr @.str.71, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../sound/soc/codecs/tas5086.c", i32 824, i32 3}
!172 = !{ptr @tas5086_probe._entry, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @tas5086_probe._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.72, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../sound/soc/codecs/tas5086.c", i32 834, i32 33}
!176 = !{ptr @.str.73, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../sound/soc/codecs/tas5086.c", i32 841, i32 6}
!178 = !{ptr @.str.74, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../sound/soc/codecs/tas5086.c", i32 508, i32 4}
!180 = !{ptr @.str.75, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @.str.76, !179, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @tas5086_init._entry, !179, !"_entry", i1 false, i1 false}
!183 = !{ptr @tas5086_init._entry_ptr, !179, !"_entry_ptr", i1 false, i1 false}
!184 = distinct !{null, !185, !"tas5086_charge_period", i1 false, i1 false}
!185 = !{!"../sound/soc/codecs/tas5086.c", i32 477, i32 18}
!186 = !{ptr @.str.77, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../sound/soc/codecs/tas5086.c", i32 755, i32 10}
!188 = !{ptr @.str.78, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../sound/soc/codecs/tas5086.c", i32 757, i32 18}
!190 = !{ptr @tas5086_dai, !191, !"tas5086_dai", i1 false, i1 false}
!191 = !{!"../sound/soc/codecs/tas5086.c", i32 754, i32 34}
!192 = !{ptr @tas5086_dai_ops, !193, !"tas5086_dai_ops", i1 false, i1 false}
!193 = !{!"../sound/soc/codecs/tas5086.c", i32 747, i32 37}
!194 = !{ptr @.str.79, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../sound/soc/codecs/tas5086.c", i32 322, i32 3}
!196 = !{ptr @.str.80, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @tas5086_set_dai_fmt._entry, !195, !"_entry", i1 false, i1 false}
!198 = !{ptr @tas5086_set_dai_fmt._entry_ptr, !195, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.81, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../sound/soc/codecs/tas5086.c", i32 367, i32 3}
!201 = !{ptr @.str.82, !200, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @tas5086_hw_params._entry, !200, !"_entry", i1 false, i1 false}
!203 = !{ptr @tas5086_hw_params._entry_ptr, !200, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.84, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../sound/soc/codecs/tas5086.c", i32 381, i32 3}
!206 = !{ptr @tas5086_hw_params._entry.83, !205, !"_entry", i1 false, i1 false}
!207 = !{ptr @tas5086_hw_params._entry_ptr.85, !205, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.87, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../sound/soc/codecs/tas5086.c", i32 418, i32 3}
!210 = !{ptr @tas5086_hw_params._entry.86, !209, !"_entry", i1 false, i1 false}
!211 = !{ptr @tas5086_hw_params._entry_ptr.88, !209, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.90, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../sound/soc/codecs/tas5086.c", i32 434, i32 3}
!214 = !{ptr @tas5086_hw_params._entry.89, !213, !"_entry", i1 false, i1 false}
!215 = !{ptr @tas5086_hw_params._entry_ptr.91, !213, !"_entry_ptr", i1 false, i1 false}
!216 = distinct !{null, !217, !"tas5086_sample_rates", i1 false, i1 false}
!217 = !{!"../sound/soc/codecs/tas5086.c", i32 332, i32 18}
!218 = distinct !{null, !219, !"tas5086_ratios", i1 false, i1 false}
!219 = !{!"../sound/soc/codecs/tas5086.c", i32 336, i32 18}
!220 = !{ptr @tas5086_dt_ids, !221, !"tas5086_dt_ids", i1 false, i1 false}
!221 = !{!"../sound/soc/codecs/tas5086.c", i32 810, i32 34}
!222 = !{ptr @tas5086_i2c_id, !223, !"tas5086_i2c_id", i1 false, i1 false}
!223 = !{!"../sound/soc/codecs/tas5086.c", i32 894, i32 35}
!224 = !{i32 1, !"wchar_size", i32 2}
!225 = !{i32 1, !"min_enum_size", i32 4}
!226 = !{i32 8, !"branch-target-enforcement", i32 0}
!227 = !{i32 8, !"sign-return-address", i32 0}
!228 = !{i32 8, !"sign-return-address-all", i32 0}
!229 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!230 = !{i32 7, !"uwtable", i32 1}
!231 = !{i32 7, !"frame-pointer", i32 2}
!232 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!233 = !{i8 0, i8 2}
!234 = !{i32 0, i32 33}
