; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/wm8523.c_pt.bc'
source_filename = "../sound/soc/codecs/wm8523.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.106, ptr }
%union.anon.106 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.reg_default = type { i32, i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.98, i32 }
%union.anon.98 = type { ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8, %struct.snd_soc_dobj }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.anon.107 = type { i32, i32 }
%struct.atomic_t = type { i32 }
%struct.anon.109 = type { i32, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.wm8523_priv = type { ptr, [2 x %struct.regulator_bulk_data], i32, [7 x i32], %struct.snd_pcm_hw_constraint_list }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.snd_pcm_hw_constraint_list = type { ptr, i32, i32 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@__initcall__kmod_snd_soc_wm8523__296_536_wm8523_i2c_driver_init6 = internal global ptr @wm8523_i2c_driver_init, section ".initcall6.init", align 4
@wm8523_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @wm8523_i2c_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @wm8523_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @wm8523_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_wm8523_i2c_driver_exit = internal global ptr @wm8523_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description297 = internal constant [46 x i8] c"snd_soc_wm8523.description=ASoC WM8523 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author298 = internal constant [71 x i8] c"snd_soc_wm8523.author=Mark Brown <broonie@opensource.wolfsonmicro.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file299 = internal constant [52 x i8] c"snd_soc_wm8523.file=sound/soc/codecs/snd-soc-wm8523\00", section ".modinfo", align 1
@__UNIQUE_ID_license300 = internal constant [27 x i8] c"snd_soc_wm8523.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wm8523\00", [25 x i8] zeroinitializer }, align 32
@wm8523_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"wlf,wm8523\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@wm8523_i2c_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"wm8523\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@wm8523_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@wm8523_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 16, ptr null, ptr null, ptr @wm8523_volatile_register, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm8523_reg_defaults, i32 7, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"wm8523:458:(&wm8523_regmap)->lock\00", [62 x i8] zeroinitializer }, align 32
@wm8523_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 461, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to create regmap: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wm8523_i2c_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sound/soc/codecs/wm8523.c\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wm8523_i2c_probe._entry_ptr = internal global ptr @wm8523_i2c_probe._entry, section ".printk_index", align 4
@wm8523_i2c_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 471, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to request supplies: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@wm8523_i2c_probe._entry_ptr.9 = internal global ptr @wm8523_i2c_probe._entry.7, section ".printk_index", align 4
@wm8523_i2c_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 478, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to enable supplies: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@wm8523_i2c_probe._entry_ptr.12 = internal global ptr @wm8523_i2c_probe._entry.10, section ".printk_index", align 4
@wm8523_i2c_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 484, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to read ID register\0A\00", [36 x i8] zeroinitializer }, align 32
@wm8523_i2c_probe._entry_ptr.15 = internal global ptr @wm8523_i2c_probe._entry.13, section ".printk_index", align 4
@wm8523_i2c_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 488, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Device is not a WM8523, ID is %x\0A\00", [62 x i8] zeroinitializer }, align 32
@wm8523_i2c_probe._entry_ptr.18 = internal global ptr @wm8523_i2c_probe._entry.16, section ".printk_index", align 4
@wm8523_i2c_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.3, ptr @.str.4, i32 495, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to read revision register\0A\00", [62 x i8] zeroinitializer }, align 32
@wm8523_i2c_probe._entry_ptr.21 = internal global ptr @wm8523_i2c_probe._entry.19, section ".printk_index", align 4
@wm8523_i2c_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.3, ptr @.str.4, i32 499, ptr @.str.24, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"revision %c\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@wm8523_i2c_probe._entry_ptr.25 = internal global ptr @wm8523_i2c_probe._entry.22, section ".printk_index", align 4
@wm8523_i2c_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.3, ptr @.str.4, i32 503, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to reset device: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@wm8523_i2c_probe._entry_ptr.28 = internal global ptr @wm8523_i2c_probe._entry.26, section ".printk_index", align 4
@soc_component_dev_wm8523 = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @wm8523_controls, i32 7, ptr @wm8523_dapm_widgets, i32 3, ptr @wm8523_dapm_routes, i32 2, ptr @wm8523_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm8523_set_bias_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 124, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@wm8523_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr @.str.51, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @wm8523_dai_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.46, i64 68719477828, i32 8190, i32 0, i32 0, i32 2, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@wm8523_reg_defaults = internal constant { [7 x %struct.reg_default], [40 x i8] } { [7 x %struct.reg_default] [%struct.reg_default { i32 2, i32 0 }, %struct.reg_default { i32 3, i32 6162 }, %struct.reg_default { i32 4, i32 0 }, %struct.reg_default { i32 5, i32 1 }, %struct.reg_default { i32 6, i32 400 }, %struct.reg_default { i32 7, i32 400 }, %struct.reg_default { i32 8, i32 0 }], [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AVDD\00", [27 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LINEVDD\00", [24 x i8] zeroinitializer }, align 32
@wm8523_controls = internal constant { [7 x %struct.snd_kcontrol_new], [80 x i8] } { [7 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.31, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @dac_tlv }, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.32, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.33 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.34, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.35 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.36, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.37 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.38, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.39 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.40, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.41 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.42, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @wm8523_zc_count to i32) }], [80 x i8] zeroinitializer }, align 32
@wm8523_dapm_routes = internal constant { [2 x %struct.snd_soc_dapm_route], [56 x i8] } { [2 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.47, ptr null, ptr @.str.45, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.48, ptr null, ptr @.str.45, ptr null, %struct.snd_soc_dobj zeroinitializer }], [56 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Playback Volume\00", [16 x i8] zeroinitializer }, align 32
@dac_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -10000, i32 25], [16 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 448, i32 448, i32 6, i32 7, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ZC Switch\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.33 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 5, i32 5, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Playback Deemphasis Switch\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.35 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 3, i32 3, i32 8, i32 8, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Playback Switch\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.37 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 5, i32 5, i32 2, i32 3, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Volume Ramp Up Switch\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.39 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 5, i32 5, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Volume Ramp Down Switch\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.41 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 5, i32 5, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Zero Detect Count\00", [46 x i8] zeroinitializer }, align 32
@wm8523_zc_count = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 8, i8 0, i8 0, i32 2, i32 1, ptr @wm8523_zd_count_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@wm8523_zd_count_text = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.43, ptr @.str.44], [24 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1024\00", [27 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"2048\00", [27 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DAC\00", [28 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Playback\00", [23 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"LINEVOUTL\00", [22 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"LINEVOUTR\00", [22 x i8] zeroinitializer }, align 32
@wm8523_dapm_widgets = internal constant { [3 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [132 x i8] } { [3 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.45, ptr @.str.46, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.47, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.48, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [132 x i8] zeroinitializer }, align 32
@wm8523_set_bias_level._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.50, ptr @.str.4, i32 339, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wm8523_set_bias_level\00", [42 x i8] zeroinitializer }, align 32
@wm8523_set_bias_level._entry_ptr = internal global ptr @wm8523_set_bias_level._entry, section ".printk_index", align 4
@.str.51 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wm8523-hifi\00", [20 x i8] zeroinitializer }, align 32
@wm8523_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @wm8523_set_dai_sysclk, ptr null, ptr null, ptr null, ptr @wm8523_set_dai_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm8523_startup, ptr null, ptr @wm8523_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@lrclk_ratios = internal constant { [7 x %struct.anon.107], [40 x i8] } { [7 x %struct.anon.107] [%struct.anon.107 { i32 1, i32 128 }, %struct.anon.107 { i32 2, i32 192 }, %struct.anon.107 { i32 3, i32 256 }, %struct.anon.107 { i32 4, i32 384 }, %struct.anon.107 { i32 5, i32 512 }, %struct.anon.107 { i32 6, i32 768 }, %struct.anon.107 { i32 7, i32 1152 }], [40 x i8] zeroinitializer }, align 32
@wm8523_set_dai_sysclk.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.52, ptr @.str.53, ptr @.str.4, ptr @.str.54, i8 0, i8 59, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"snd_soc_wm8523\00", [17 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wm8523_set_dai_sysclk\00", [42 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Supported sample rate: %dHz\0A\00", [35 x i8] zeroinitializer }, align 32
@wm8523_set_dai_sysclk.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.52, ptr @.str.53, ptr @.str.4, ptr @.str.55, i8 0, i8 61, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Skipping sample rate: %dHz\0A\00", [36 x i8] zeroinitializer }, align 32
@wm8523_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.4, i32 132, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"No MCLK configured, call set_sysclk() on init\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wm8523_startup\00", [17 x i8] zeroinitializer }, align 32
@wm8523_startup._entry_ptr = internal global ptr @wm8523_startup._entry, section ".printk_index", align 4
@wm8523_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.4, i32 163, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"MCLK/fs ratio %d unsupported\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wm8523_hw_params\00", [47 x i8] zeroinitializer }, align 32
@wm8523_hw_params._entry_ptr = internal global ptr @wm8523_hw_params._entry, section ".printk_index", align 4
@bclk_ratios = internal constant { [3 x %struct.anon.109], [40 x i8] } { [3 x %struct.anon.109] [%struct.anon.109 { i32 2, i32 32 }, %struct.anon.109 { i32 3, i32 64 }, %struct.anon.109 { i32 4, i32 128 }], [40 x i8] zeroinitializer }, align 32
@wm8523_hw_params._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.4, i32 179, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"No matching BCLK/fs ratio for word length %d\0A\00", [50 x i8] zeroinitializer }, align 32
@wm8523_hw_params._entry_ptr.62 = internal global ptr @wm8523_hw_params._entry.60, section ".printk_index", align 4
@switch.table.wm8523_hw_params = internal constant { [17 x i32], [60 x i8] } { [17 x i32] [i32 0, i32 1, i32 2, i32 0, i32 3, i32 0, i32 4, i32 0, i32 0, i32 0, i32 5, i32 0, i32 0, i32 0, i32 0, i32 0, i32 6], [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.63 = internal global [14 x i64] [i64 12, i64 32, i64 8000, i64 11025, i64 16000, i64 22050, i64 32000, i64 44100, i64 48000, i64 64000, i64 88200, i64 96000, i64 176400, i64 192000]
@__sancov_gen_cov_switch_values.64 = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.65 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.66 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.67 = internal global [5 x i64] [i64 3, i64 32, i64 20, i64 24, i64 32]
@___asan_gen_.68 = private unnamed_addr constant [18 x i8] c"wm8523_i2c_driver\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 527, i32 26 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 529, i32 11 }
@___asan_gen_.74 = private unnamed_addr constant [16 x i8] c"wm8523_of_match\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 428, i32 34 }
@___asan_gen_.77 = private unnamed_addr constant [14 x i8] c"wm8523_i2c_id\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 521, i32 35 }
@___asan_gen_.80 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [14 x i8] c"wm8523_regmap\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 434, i32 35 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 458, i32 19 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 461, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 471, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 478, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 484, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 488, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 495, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 498, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 503, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant [25 x i8] c"soc_component_dev_wm8523\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 412, i32 46 }
@___asan_gen_.155 = private unnamed_addr constant [11 x i8] c"wm8523_dai\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 384, i32 34 }
@___asan_gen_.158 = private unnamed_addr constant [20 x i8] c"wm8523_reg_defaults\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 46, i32 33 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 31, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 32, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant [16 x i8] c"wm8523_controls\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 77, i32 38 }
@___asan_gen_.170 = private unnamed_addr constant [19 x i8] c"wm8523_dapm_routes\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 94, i32 40 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 78, i32 1 }
@___asan_gen_.176 = private unnamed_addr constant [8 x i8] c"dac_tlv\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 67, i32 14 }
@___asan_gen_.179 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 80, i32 1 }
@___asan_gen_.183 = private unnamed_addr constant [20 x i8] c".compoundliteral.33\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 81, i32 1 }
@___asan_gen_.187 = private unnamed_addr constant [20 x i8] c".compoundliteral.35\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 82, i32 1 }
@___asan_gen_.191 = private unnamed_addr constant [20 x i8] c".compoundliteral.37\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 83, i32 1 }
@___asan_gen_.195 = private unnamed_addr constant [20 x i8] c".compoundliteral.39\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 84, i32 1 }
@___asan_gen_.199 = private unnamed_addr constant [20 x i8] c".compoundliteral.41\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 85, i32 1 }
@___asan_gen_.203 = private unnamed_addr constant [16 x i8] c"wm8523_zc_count\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 74, i32 8 }
@___asan_gen_.206 = private unnamed_addr constant [21 x i8] c"wm8523_zd_count_text\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 69, i32 20 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 70, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 71, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 89, i32 1 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 90, i32 1 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 91, i32 1 }
@___asan_gen_.227 = private unnamed_addr constant [20 x i8] c"wm8523_dapm_widgets\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 88, i32 41 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 337, i32 5 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 385, i32 10 }
@___asan_gen_.239 = private unnamed_addr constant [15 x i8] c"wm8523_dai_ops\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 377, i32 37 }
@___asan_gen_.242 = private unnamed_addr constant [13 x i8] c"lrclk_ratios\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 102, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 238, i32 4 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 244, i32 4 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 131, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 162, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant [12 x i8] c"bclk_ratios\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 115, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.281 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.282 = private constant [29 x i8] c"../sound/soc/codecs/wm8523.c\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 177, i32 4 }
@___asan_gen_.284 = private unnamed_addr constant [30 x i8] c"switch.table.wm8523_hw_params\00", align 1
@llvm.compiler.used = appending global [96 x ptr] [ptr @__UNIQUE_ID_author298, ptr @__UNIQUE_ID_description297, ptr @__UNIQUE_ID_file299, ptr @__UNIQUE_ID_license300, ptr @__exitcall_wm8523_i2c_driver_exit, ptr @__initcall__kmod_snd_soc_wm8523__296_536_wm8523_i2c_driver_init6, ptr @wm8523_hw_params._entry, ptr @wm8523_hw_params._entry.60, ptr @wm8523_hw_params._entry_ptr, ptr @wm8523_hw_params._entry_ptr.62, ptr @wm8523_i2c_driver_exit, ptr @wm8523_i2c_probe._entry, ptr @wm8523_i2c_probe._entry.10, ptr @wm8523_i2c_probe._entry.13, ptr @wm8523_i2c_probe._entry.16, ptr @wm8523_i2c_probe._entry.19, ptr @wm8523_i2c_probe._entry.22, ptr @wm8523_i2c_probe._entry.26, ptr @wm8523_i2c_probe._entry.7, ptr @wm8523_i2c_probe._entry_ptr, ptr @wm8523_i2c_probe._entry_ptr.12, ptr @wm8523_i2c_probe._entry_ptr.15, ptr @wm8523_i2c_probe._entry_ptr.18, ptr @wm8523_i2c_probe._entry_ptr.21, ptr @wm8523_i2c_probe._entry_ptr.25, ptr @wm8523_i2c_probe._entry_ptr.28, ptr @wm8523_i2c_probe._entry_ptr.9, ptr @wm8523_set_bias_level._entry, ptr @wm8523_set_bias_level._entry_ptr, ptr @wm8523_startup._entry, ptr @wm8523_startup._entry_ptr, ptr @wm8523_i2c_driver, ptr @.str, ptr @wm8523_of_match, ptr @wm8523_i2c_id, ptr @wm8523_i2c_probe._key, ptr @wm8523_regmap, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.24, ptr @.str.27, ptr @soc_component_dev_wm8523, ptr @wm8523_dai, ptr @wm8523_reg_defaults, ptr @.str.29, ptr @.str.30, ptr @wm8523_controls, ptr @wm8523_dapm_routes, ptr @.str.31, ptr @dac_tlv, ptr @.compoundliteral, ptr @.str.32, ptr @.compoundliteral.33, ptr @.str.34, ptr @.compoundliteral.35, ptr @.str.36, ptr @.compoundliteral.37, ptr @.str.38, ptr @.compoundliteral.39, ptr @.str.40, ptr @.compoundliteral.41, ptr @.str.42, ptr @wm8523_zc_count, ptr @wm8523_zd_count_text, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @wm8523_dapm_widgets, ptr @.str.50, ptr @.str.51, ptr @wm8523_dai_ops, ptr @lrclk_ratios, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @bclk_ratios, ptr @.str.61, ptr @switch.table.wm8523_hw_params], section "llvm.metadata"
@0 = internal global [77 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8523_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8523_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8523_i2c_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8523_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8523_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8523_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8523_i2c_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8523_i2c_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8523_i2c_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8523_i2c_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8523_i2c_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8523_i2c_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8523_i2c_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_component_dev_wm8523 to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8523_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8523_reg_defaults to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8523_controls to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8523_dapm_routes to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.33 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.35 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.37 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.39 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.41 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8523_zc_count to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8523_zd_count_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8523_dapm_widgets to i32), i32 540, i32 672, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8523_set_bias_level._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8523_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lrclk_ratios to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8523_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8523_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bclk_ratios to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8523_hw_params._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wm8523_hw_params to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8523_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @wm8523_i2c_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @wm8523_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @wm8523_i2c_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8523_i2c_probe(ptr noundef %i2c, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !152
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 72, i32 noundef 3520) #7
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef nonnull @wm8523_regmap, ptr noundef nonnull @wm8523_i2c_probe._key, ptr noundef nonnull @.str.1) #7
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call1, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end
  %arrayidx10 = getelementptr %struct.wm8523_priv, ptr %call.i, i32 0, i32 1, i32 0
  %2 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str.29, ptr %arrayidx10, align 4
  %arrayidx10.1 = getelementptr %struct.wm8523_priv, ptr %call.i, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %arrayidx10.1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.30, ptr %arrayidx10.1, align 4
  %call13 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev, i32 noundef 2, ptr noundef %arrayidx10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14.not = icmp eq i32 %call13, 0
  br i1 %cmp14.not, label %if.end20, label %do.end18

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %call1 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %4) #10
  br label %cleanup

do.end18:                                         ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %call13) #10
  br label %cleanup

if.end20:                                         ; preds = %for.body.preheader
  %call23 = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %arrayidx10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24.not = icmp eq i32 %call23, 0
  br i1 %cmp24.not, label %if.end30, label %do.end28

do.end28:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %call23) #10
  br label %cleanup

if.end30:                                         ; preds = %if.end20
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call.i, align 4
  %call32 = call i32 @regmap_read(ptr noundef %6, i32 noundef 0, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %do.end37, label %if.end39

do.end37:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #10
  br label %err_enable

if.end39:                                         ; preds = %if.end30
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 34083, i32 %8)
  %cmp40.not = icmp eq i32 %8, 34083
  br i1 %cmp40.not, label %if.end46, label %do.end44

do.end44:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %call32) #10
  br label %err_enable

if.end46:                                         ; preds = %if.end39
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call.i, align 4
  %call48 = call i32 @regmap_read(ptr noundef %10, i32 noundef 1, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %do.end53, label %do.end58

do.end53:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20) #10
  br label %err_enable

do.end58:                                         ; preds = %if.end46
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %and = and i32 %12, 7
  %add = add nuw nsw i32 %and, 65
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef %add) #10
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call.i, align 4
  %call61 = call i32 @regmap_write(ptr noundef %14, i32 noundef 0, i32 noundef 34083) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %cmp62.not = icmp eq i32 %call61, 0
  br i1 %cmp62.not, label %if.end68, label %do.end66

do.end66:                                         ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27, i32 noundef %call61) #10
  br label %err_enable

if.end68:                                         ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #9
  %call71 = call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %arrayidx10) #7
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %15 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call73 = call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @soc_component_dev_wm8523, ptr noundef nonnull @wm8523_dai, i32 noundef 1) #7
  br label %cleanup

err_enable:                                       ; preds = %do.end66, %do.end53, %do.end44, %do.end37
  %ret.0 = phi i32 [ %call32, %do.end37 ], [ -22, %do.end44 ], [ %call48, %do.end53 ], [ %call61, %do.end66 ]
  %call76 = call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %arrayidx10) #7
  br label %cleanup

cleanup:                                          ; preds = %err_enable, %if.end68, %do.end28, %do.end18, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then4 ], [ %call13, %do.end18 ], [ %call23, %do.end28 ], [ %ret.0, %err_enable ], [ %call73, %if.end68 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @wm8523_volatile_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %reg)
  %switch = icmp ult i32 %reg, 2
  ret i1 %switch
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8523_probe(ptr noundef %component) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %rate_constraint_list = getelementptr inbounds %struct.wm8523_priv, ptr %3, i32 0, i32 3
  %rate_constraint = getelementptr inbounds %struct.wm8523_priv, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %rate_constraint to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %rate_constraint_list, ptr %rate_constraint, align 4
  %count = getelementptr inbounds %struct.wm8523_priv, ptr %3, i32 0, i32 4, i32 1
  %5 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 7, ptr %count, align 4
  %call2 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 7, i32 noundef 512, i32 noundef 512) #7
  %call3 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 5, i32 noundef 16, i32 noundef 16) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8523_set_bias_level(ptr noundef %component, i32 noundef %level) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %4 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %level, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb11
    i32 2, label %sw.bb
    i32 1, label %sw.bb2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 2, i32 noundef 3, i32 noundef 3) #7
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %dapm.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %5 = ptrtoint ptr %dapm.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dapm.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then, label %sw.bb2.if.end9_crit_edge

sw.bb2.if.end9_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then:                                          ; preds = %sw.bb2
  %supplies = getelementptr inbounds %struct.wm8523_priv, ptr %3, i32 0, i32 1
  %call4 = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %supplies) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5.not = icmp eq i32 %call4, 0
  br i1 %cmp5.not, label %if.end, label %do.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.11, i32 noundef %call4) #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %3, align 4
  %call7 = tail call i32 @regcache_sync(ptr noundef %10) #7
  %call8 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 2, i32 noundef 3, i32 noundef 1) #7
  tail call void @msleep(i32 noundef 100) #7
  br label %if.end9

if.end9:                                          ; preds = %if.end, %sw.bb2.if.end9_crit_edge
  %call10 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 2, i32 noundef 3, i32 noundef 2) #7
  br label %cleanup

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call12 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 2, i32 noundef 3, i32 noundef 0) #7
  tail call void @msleep(i32 noundef 100) #7
  %supplies13 = getelementptr inbounds %struct.wm8523_priv, ptr %3, i32 0, i32 1
  %call15 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %supplies13) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.bb11, %if.end9, %do.end, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %sw.bb11 ], [ 0, %if.end9 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8523_set_dai_sysclk(ptr nocapture noundef readonly %codec_dai, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %sysclk = getelementptr inbounds %struct.wm8523_priv, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %sysclk to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %freq, ptr %sysclk, align 4
  %count = getelementptr inbounds %struct.wm8523_priv, ptr %5, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %count, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.052 = phi i32 [ 0, %entry ], [ %inc25, %for.inc.for.body_crit_edge ]
  %ratio = getelementptr [7 x %struct.anon.107], ptr @lrclk_ratios, i32 0, i32 %i.052, i32 1
  %8 = ptrtoint ptr %ratio to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ratio, align 4
  %div = udiv i32 %freq, %9
  %10 = zext i32 %div to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %div, label %do.body8 [
    i32 8000, label %for.body.do.body_crit_edge
    i32 11025, label %for.body.do.body_crit_edge54
    i32 16000, label %for.body.do.body_crit_edge55
    i32 22050, label %for.body.do.body_crit_edge56
    i32 32000, label %for.body.do.body_crit_edge57
    i32 44100, label %for.body.do.body_crit_edge58
    i32 48000, label %for.body.do.body_crit_edge59
    i32 64000, label %for.body.do.body_crit_edge60
    i32 88200, label %for.body.do.body_crit_edge61
    i32 96000, label %for.body.do.body_crit_edge62
    i32 176400, label %for.body.do.body_crit_edge63
    i32 192000, label %for.body.do.body_crit_edge64
  ]

for.body.do.body_crit_edge64:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.body.do.body_crit_edge63:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.body.do.body_crit_edge62:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.body.do.body_crit_edge61:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.body.do.body_crit_edge60:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.body.do.body_crit_edge59:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.body.do.body_crit_edge58:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.body.do.body_crit_edge57:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.body.do.body_crit_edge56:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.body.do.body_crit_edge55:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.body.do.body_crit_edge54:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.body.do.body_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body:                                          ; preds = %for.body.do.body_crit_edge, %for.body.do.body_crit_edge54, %for.body.do.body_crit_edge55, %for.body.do.body_crit_edge56, %for.body.do.body_crit_edge57, %for.body.do.body_crit_edge58, %for.body.do.body_crit_edge59, %for.body.do.body_crit_edge60, %for.body.do.body_crit_edge61, %for.body.do.body_crit_edge62, %for.body.do.body_crit_edge63, %for.body.do.body_crit_edge64
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8523_set_dai_sysclk.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8523_set_dai_sysclk, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !153

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8523_set_dai_sysclk.__UNIQUE_ID_ddebug294, ptr noundef %12, ptr noundef nonnull @.str.54, i32 noundef %div) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %arrayidx5 = getelementptr %struct.wm8523_priv, ptr %5, i32 0, i32 3, i32 %i.052
  %13 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %div, ptr %arrayidx5, align 4
  %14 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %count, align 4
  %inc = add i32 %15, 1
  store i32 %inc, ptr %count, align 4
  br label %for.inc

do.body8:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8523_set_dai_sysclk.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8523_set_dai_sysclk, %if.then20)) #7
          to label %for.inc [label %if.then20], !srcloc !153

if.then20:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8523_set_dai_sysclk.__UNIQUE_ID_ddebug295, ptr noundef %17, ptr noundef nonnull @.str.55, i32 noundef %div) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then20, %do.body8, %do.end
  %inc25 = add nuw nsw i32 %i.052, 1
  %exitcond.not = icmp eq i32 %inc25, 7
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp28 = icmp eq i32 %19, 0
  %. = select i1 %cmp28, i32 -22, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8523_set_dai_fmt(ptr nocapture noundef readonly %codec_dai, i32 noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %codec_dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %call = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 3) #7
  %2 = trunc i32 %call to i16
  %conv3 = and i16 %2, -232
  %3 = trunc i32 %fmt to i16
  %trunc = and i16 %3, -4096
  %4 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.64)
  switch i16 %trunc, label %entry.cleanup_crit_edge [
    i16 4096, label %sw.bb
    i16 16384, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = or i16 %conv3, 128
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %aifctrl1.0 = phi i16 [ %conv3, %entry.sw.epilog_crit_edge ], [ %5, %sw.bb ]
  %and7 = and i32 %fmt, 15
  %6 = zext i32 %and7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %and7, label %sw.epilog.cleanup_crit_edge [
    i32 1, label %sw.bb8
    i32 2, label %sw.epilog.sw.epilog25_crit_edge
    i32 3, label %sw.bb12
    i32 4, label %sw.bb16
    i32 5, label %sw.bb20
  ]

sw.epilog.sw.epilog25_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog25

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb8:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %7 = or i16 %aifctrl1.0, 2
  br label %sw.epilog25

sw.bb12:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %8 = or i16 %aifctrl1.0, 1
  br label %sw.epilog25

sw.bb16:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %9 = or i16 %aifctrl1.0, 3
  br label %sw.epilog25

sw.bb20:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %10 = or i16 %aifctrl1.0, 35
  br label %sw.epilog25

sw.epilog25:                                      ; preds = %sw.bb20, %sw.bb16, %sw.bb12, %sw.bb8, %sw.epilog.sw.epilog25_crit_edge
  %aifctrl1.1 = phi i16 [ %10, %sw.bb20 ], [ %9, %sw.bb16 ], [ %8, %sw.bb12 ], [ %aifctrl1.0, %sw.epilog.sw.epilog25_crit_edge ], [ %7, %sw.bb8 ]
  %and26 = lshr i32 %fmt, 8
  %11 = and i32 %and26, 15
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %11, label %sw.epilog25.cleanup_crit_edge [
    i32 0, label %sw.epilog25.sw.epilog40_crit_edge
    i32 4, label %sw.bb27
    i32 3, label %sw.bb31
    i32 2, label %sw.bb35
  ]

sw.epilog25.sw.epilog40_crit_edge:                ; preds = %sw.epilog25
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog40

sw.epilog25.cleanup_crit_edge:                    ; preds = %sw.epilog25
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb27:                                          ; preds = %sw.epilog25
  call void @__sanitizer_cov_trace_pc() #9
  %13 = or i16 %aifctrl1.1, 96
  br label %sw.epilog40

sw.bb31:                                          ; preds = %sw.epilog25
  call void @__sanitizer_cov_trace_pc() #9
  %14 = or i16 %aifctrl1.1, 32
  br label %sw.epilog40

sw.bb35:                                          ; preds = %sw.epilog25
  call void @__sanitizer_cov_trace_pc() #9
  %15 = or i16 %aifctrl1.1, 64
  br label %sw.epilog40

sw.epilog40:                                      ; preds = %sw.bb35, %sw.bb31, %sw.bb27, %sw.epilog25.sw.epilog40_crit_edge
  %aifctrl1.2 = phi i16 [ %15, %sw.bb35 ], [ %14, %sw.bb31 ], [ %13, %sw.bb27 ], [ %aifctrl1.1, %sw.epilog25.sw.epilog40_crit_edge ]
  %conv41 = zext i16 %aifctrl1.2 to i32
  %call42 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 3, i32 noundef %conv41) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog40, %sw.epilog25.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog40 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ -22, %sw.epilog25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8523_startup(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %sysclk = getelementptr inbounds %struct.wm8523_priv, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sysclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.56) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %8 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %runtime, align 4
  %rate_constraint = getelementptr inbounds %struct.wm8523_priv, ptr %5, i32 0, i32 4
  %call2 = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %9, i32 noundef 0, i32 noundef 11, ptr noundef %rate_constraint) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8523_hw_params(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %call2 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 3) #7
  %call3 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 4) #7
  %sysclk = getelementptr inbounds %struct.wm8523_priv, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sysclk, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i, align 4
  %div = udiv i32 %7, %9
  %10 = add i32 %div, -128
  %11 = call i32 @llvm.fshl.i32(i32 %10, i32 %10, i32 26)
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %11)
  %12 = icmp ult i32 %11, 17
  br i1 %12, label %switch.hole_check, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %switch.hole_check.do.end_crit_edge, %entry.do.end_crit_edge
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  %15 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sysclk, align 4
  %17 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i.i, align 4
  %div14 = udiv i32 %16, %18
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.58, i32 noundef %div14) #10
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.shifted = lshr i32 66647, %11
  %19 = and i32 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %switch.lobit.not = icmp eq i32 %19, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end_crit_edge, label %switch.lookup

switch.hole_check.do.end_crit_edge:               ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [17 x i32], ptr @switch.table.wm8523_hw_params, i32 0, i32 %11
  %20 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %20)
  %switch.load = load i32, ptr %switch.gep, align 4
  %conv17 = and i32 %call3, 65528
  %arrayidx18 = getelementptr [7 x %struct.anon.107], ptr @lrclk_ratios, i32 0, i32 %switch.load
  %21 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx18, align 4
  %or = or i32 %22, %conv17
  %and22 = and i32 %call2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool.not = icmp eq i32 %and22, 0
  br i1 %tobool.not, label %switch.lookup.if.end55_crit_edge, label %for.cond24.preheader

switch.lookup.if.end55_crit_edge:                 ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

for.cond24.preheader:                             ; preds = %switch.lookup
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %23 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i.i.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %for.cond24.preheader.if.then.i.i.i_crit_edge

for.cond24.preheader.if.then.i.i.i_crit_edge:     ; preds = %for.cond24.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %for.cond24.preheader.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %for.cond24.preheader.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %24, %for.cond24.preheader.if.then.i.i.i_crit_edge ], [ %27, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %25 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #7, !range !154
  %add.i.i.i = or i32 %25, %i.09.lcssa.i.i.i
  br label %params_width.exit

for.inc.i.i.i:                                    ; preds = %for.cond24.preheader
  %26 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.1.i.i.i = icmp eq i32 %27, 0
  br i1 %tobool.not.1.i.i.i, label %for.inc.i.i.i.params_width.exit_crit_edge, label %for.inc.i.i.i.if.then.i.i.i_crit_edge

for.inc.i.i.i.if.then.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i

for.inc.i.i.i.params_width.exit_crit_edge:        ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %params_width.exit

params_width.exit:                                ; preds = %for.inc.i.i.i.params_width.exit_crit_edge, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ 0, %for.inc.i.i.i.params_width.exit_crit_edge ]
  %call1.i = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i) #7
  %mul = shl i32 %call1.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %mul)
  %cmp31.not = icmp sgt i32 %mul, 32
  br i1 %cmp31.not, label %for.inc35, label %params_width.exit.if.end46_crit_edge

params_width.exit.if.end46_crit_edge:             ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

for.inc35:                                        ; preds = %params_width.exit
  %28 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i.i.i.1 = icmp eq i32 %29, 0
  br i1 %tobool.not.i.i.i.1, label %for.inc.i.i.i.1, label %for.inc35.if.then.i.i.i.1_crit_edge

for.inc35.if.then.i.i.i.1_crit_edge:              ; preds = %for.inc35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i.1

for.inc.i.i.i.1:                                  ; preds = %for.inc35
  %30 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.1.i.i.i.1 = icmp eq i32 %31, 0
  br i1 %tobool.not.1.i.i.i.1, label %for.inc.i.i.i.1.params_width.exit.1_crit_edge, label %for.inc.i.i.i.1.if.then.i.i.i.1_crit_edge

for.inc.i.i.i.1.if.then.i.i.i.1_crit_edge:        ; preds = %for.inc.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i.1

for.inc.i.i.i.1.params_width.exit.1_crit_edge:    ; preds = %for.inc.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %params_width.exit.1

if.then.i.i.i.1:                                  ; preds = %for.inc.i.i.i.1.if.then.i.i.i.1_crit_edge, %for.inc35.if.then.i.i.i.1_crit_edge
  %i.09.lcssa.i.i.i.1 = phi i32 [ 0, %for.inc35.if.then.i.i.i.1_crit_edge ], [ 32, %for.inc.i.i.i.1.if.then.i.i.i.1_crit_edge ]
  %.lcssa.i.i.i.1 = phi i32 [ %29, %for.inc35.if.then.i.i.i.1_crit_edge ], [ %31, %for.inc.i.i.i.1.if.then.i.i.i.1_crit_edge ]
  %32 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i.1, i1 true) #7, !range !154
  %add.i.i.i.1 = or i32 %32, %i.09.lcssa.i.i.i.1
  br label %params_width.exit.1

params_width.exit.1:                              ; preds = %if.then.i.i.i.1, %for.inc.i.i.i.1.params_width.exit.1_crit_edge
  %retval.0.i.i.i.1 = phi i32 [ %add.i.i.i.1, %if.then.i.i.i.1 ], [ 0, %for.inc.i.i.i.1.params_width.exit.1_crit_edge ]
  %call1.i.1 = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i.1) #7
  %mul.1 = shl i32 %call1.i.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %mul.1)
  %cmp31.not.1 = icmp sgt i32 %mul.1, 64
  br i1 %cmp31.not.1, label %for.inc35.1, label %params_width.exit.1.if.end46_crit_edge

params_width.exit.1.if.end46_crit_edge:           ; preds = %params_width.exit.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

for.inc35.1:                                      ; preds = %params_width.exit.1
  %33 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not.i.i.i.2 = icmp eq i32 %34, 0
  br i1 %tobool.not.i.i.i.2, label %for.inc.i.i.i.2, label %for.inc35.1.if.then.i.i.i.2_crit_edge

for.inc35.1.if.then.i.i.i.2_crit_edge:            ; preds = %for.inc35.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i.2

for.inc.i.i.i.2:                                  ; preds = %for.inc35.1
  %35 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.1.i.i.i.2 = icmp eq i32 %36, 0
  br i1 %tobool.not.1.i.i.i.2, label %for.inc.i.i.i.2.params_width.exit.2_crit_edge, label %for.inc.i.i.i.2.if.then.i.i.i.2_crit_edge

for.inc.i.i.i.2.if.then.i.i.i.2_crit_edge:        ; preds = %for.inc.i.i.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i.2

for.inc.i.i.i.2.params_width.exit.2_crit_edge:    ; preds = %for.inc.i.i.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %params_width.exit.2

if.then.i.i.i.2:                                  ; preds = %for.inc.i.i.i.2.if.then.i.i.i.2_crit_edge, %for.inc35.1.if.then.i.i.i.2_crit_edge
  %i.09.lcssa.i.i.i.2 = phi i32 [ 0, %for.inc35.1.if.then.i.i.i.2_crit_edge ], [ 32, %for.inc.i.i.i.2.if.then.i.i.i.2_crit_edge ]
  %.lcssa.i.i.i.2 = phi i32 [ %34, %for.inc35.1.if.then.i.i.i.2_crit_edge ], [ %36, %for.inc.i.i.i.2.if.then.i.i.i.2_crit_edge ]
  %37 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i.2, i1 true) #7, !range !154
  %add.i.i.i.2 = or i32 %37, %i.09.lcssa.i.i.i.2
  br label %params_width.exit.2

params_width.exit.2:                              ; preds = %if.then.i.i.i.2, %for.inc.i.i.i.2.params_width.exit.2_crit_edge
  %retval.0.i.i.i.2 = phi i32 [ %add.i.i.i.2, %if.then.i.i.i.2 ], [ 0, %for.inc.i.i.i.2.params_width.exit.2_crit_edge ]
  %call1.i.2 = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i.2) #7
  %mul.2 = shl i32 %call1.i.2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %mul.2)
  %cmp31.not.2 = icmp sgt i32 %mul.2, 128
  br i1 %cmp31.not.2, label %do.end43, label %params_width.exit.2.if.end46_crit_edge

params_width.exit.2.if.end46_crit_edge:           ; preds = %params_width.exit.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46

do.end43:                                         ; preds = %params_width.exit.2
  %38 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i, align 4
  %40 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i.i.i110 = icmp eq i32 %41, 0
  br i1 %tobool.not.i.i.i110, label %for.inc.i.i.i117, label %do.end43.if.then.i.i.i114_crit_edge

do.end43.if.then.i.i.i114_crit_edge:              ; preds = %do.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i114

if.then.i.i.i114:                                 ; preds = %for.inc.i.i.i117.if.then.i.i.i114_crit_edge, %do.end43.if.then.i.i.i114_crit_edge
  %i.09.lcssa.i.i.i111 = phi i32 [ 0, %do.end43.if.then.i.i.i114_crit_edge ], [ 32, %for.inc.i.i.i117.if.then.i.i.i114_crit_edge ]
  %.lcssa.i.i.i112 = phi i32 [ %41, %do.end43.if.then.i.i.i114_crit_edge ], [ %44, %for.inc.i.i.i117.if.then.i.i.i114_crit_edge ]
  %42 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i112, i1 true) #7, !range !154
  %add.i.i.i113 = or i32 %42, %i.09.lcssa.i.i.i111
  br label %params_width.exit120

for.inc.i.i.i117:                                 ; preds = %do.end43
  %43 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.not.1.i.i.i116 = icmp eq i32 %44, 0
  br i1 %tobool.not.1.i.i.i116, label %for.inc.i.i.i117.params_width.exit120_crit_edge, label %for.inc.i.i.i117.if.then.i.i.i114_crit_edge

for.inc.i.i.i117.if.then.i.i.i114_crit_edge:      ; preds = %for.inc.i.i.i117
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i114

for.inc.i.i.i117.params_width.exit120_crit_edge:  ; preds = %for.inc.i.i.i117
  call void @__sanitizer_cov_trace_pc() #9
  br label %params_width.exit120

params_width.exit120:                             ; preds = %for.inc.i.i.i117.params_width.exit120_crit_edge, %if.then.i.i.i114
  %retval.0.i.i.i118 = phi i32 [ %add.i.i.i113, %if.then.i.i.i114 ], [ 0, %for.inc.i.i.i117.params_width.exit120_crit_edge ]
  %call1.i119 = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i118) #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.61, i32 noundef %call1.i119) #10
  br label %cleanup

if.end46:                                         ; preds = %params_width.exit.2.if.end46_crit_edge, %params_width.exit.1.if.end46_crit_edge, %params_width.exit.if.end46_crit_edge
  %i.1140.lcssa = phi i32 [ 0, %params_width.exit.if.end46_crit_edge ], [ 1, %params_width.exit.1.if.end46_crit_edge ], [ 2, %params_width.exit.2.if.end46_crit_edge ]
  %conv49 = and i32 %or, 65479
  %arrayidx50 = getelementptr [3 x %struct.anon.109], ptr @bclk_ratios, i32 0, i32 %i.1140.lcssa
  %45 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx50, align 4
  %shl = shl i32 %46, 3
  %or53 = or i32 %shl, %conv49
  br label %if.end55

if.end55:                                         ; preds = %if.end46, %switch.lookup.if.end55_crit_edge
  %aifctrl2.0 = phi i32 [ %or53, %if.end46 ], [ %or, %switch.lookup.if.end55_crit_edge ]
  %47 = trunc i32 %call2 to i16
  %conv58 = and i16 %47, -25
  %arrayidx.i.i.i121 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %48 = ptrtoint ptr %arrayidx.i.i.i121 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.i.i.i121, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.i.i.i122 = icmp eq i32 %49, 0
  br i1 %tobool.not.i.i.i122, label %for.inc.i.i.i129, label %if.end55.if.then.i.i.i126_crit_edge

if.end55.if.then.i.i.i126_crit_edge:              ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i126

if.then.i.i.i126:                                 ; preds = %for.inc.i.i.i129.if.then.i.i.i126_crit_edge, %if.end55.if.then.i.i.i126_crit_edge
  %i.09.lcssa.i.i.i123 = phi i32 [ 0, %if.end55.if.then.i.i.i126_crit_edge ], [ 32, %for.inc.i.i.i129.if.then.i.i.i126_crit_edge ]
  %.lcssa.i.i.i124 = phi i32 [ %49, %if.end55.if.then.i.i.i126_crit_edge ], [ %52, %for.inc.i.i.i129.if.then.i.i.i126_crit_edge ]
  %50 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i124, i1 true) #7, !range !154
  %add.i.i.i125 = or i32 %50, %i.09.lcssa.i.i.i123
  br label %params_width.exit132

for.inc.i.i.i129:                                 ; preds = %if.end55
  %arrayidx.1.i.i.i127 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %51 = ptrtoint ptr %arrayidx.1.i.i.i127 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx.1.i.i.i127, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.not.1.i.i.i128 = icmp eq i32 %52, 0
  br i1 %tobool.not.1.i.i.i128, label %for.inc.i.i.i129.params_width.exit132_crit_edge, label %for.inc.i.i.i129.if.then.i.i.i126_crit_edge

for.inc.i.i.i129.if.then.i.i.i126_crit_edge:      ; preds = %for.inc.i.i.i129
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i126

for.inc.i.i.i129.params_width.exit132_crit_edge:  ; preds = %for.inc.i.i.i129
  call void @__sanitizer_cov_trace_pc() #9
  br label %params_width.exit132

params_width.exit132:                             ; preds = %for.inc.i.i.i129.params_width.exit132_crit_edge, %if.then.i.i.i126
  %retval.0.i.i.i130 = phi i32 [ %add.i.i.i125, %if.then.i.i.i126 ], [ 0, %for.inc.i.i.i129.params_width.exit132_crit_edge ]
  %call1.i131 = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i130) #7
  %53 = zext i32 %call1.i131 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %call1.i131, label %params_width.exit132.sw.epilog_crit_edge [
    i32 32, label %sw.bb67
    i32 20, label %sw.bb
    i32 24, label %sw.bb63
  ]

params_width.exit132.sw.epilog_crit_edge:         ; preds = %params_width.exit132
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %params_width.exit132
  call void @__sanitizer_cov_trace_pc() #9
  %54 = or i16 %conv58, 8
  br label %sw.epilog

sw.bb63:                                          ; preds = %params_width.exit132
  call void @__sanitizer_cov_trace_pc() #9
  %55 = or i16 %conv58, 16
  br label %sw.epilog

sw.bb67:                                          ; preds = %params_width.exit132
  call void @__sanitizer_cov_trace_pc() #9
  %conv70 = or i16 %47, 24
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb67, %sw.bb63, %sw.bb, %params_width.exit132.sw.epilog_crit_edge
  %aifctrl1.0 = phi i16 [ %conv58, %params_width.exit132.sw.epilog_crit_edge ], [ %55, %sw.bb63 ], [ %54, %sw.bb ], [ %conv70, %sw.bb67 ]
  %conv71 = zext i16 %aifctrl1.0 to i32
  %call72 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 3, i32 noundef %conv71) #7
  %conv73 = and i32 %aifctrl2.0, 65535
  %call74 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 4, i32 noundef %conv73) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %params_width.exit120, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %params_width.exit120 ], [ 0, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_list(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 77)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 77)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !50, !52, !53, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !95, !97, !99, !101, !103, !105, !106, !107, !109, !111, !113, !115, !116, !117, !118, !120, !121, !123, !125, !126, !127, !128, !130, !131, !132, !133, !135, !136, !137, !139, !141}
!llvm.module.flags = !{!143, !144, !145, !146, !147, !148, !149, !150}
!llvm.ident = !{!151}

!0 = !{ptr @__initcall__kmod_snd_soc_wm8523__296_536_wm8523_i2c_driver_init6, !1, !"__initcall__kmod_snd_soc_wm8523__296_536_wm8523_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/wm8523.c", i32 536, i32 1}
!2 = !{ptr @__exitcall_wm8523_i2c_driver_exit, !1, !"__exitcall_wm8523_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description297, !4, !"__UNIQUE_ID_description297", i1 false, i1 false}
!4 = !{!"../sound/soc/codecs/wm8523.c", i32 538, i32 1}
!5 = !{ptr @__UNIQUE_ID_author298, !6, !"__UNIQUE_ID_author298", i1 false, i1 false}
!6 = !{!"../sound/soc/codecs/wm8523.c", i32 539, i32 1}
!7 = !{ptr @__UNIQUE_ID_file299, !8, !"__UNIQUE_ID_file299", i1 false, i1 false}
!8 = !{!"../sound/soc/codecs/wm8523.c", i32 540, i32 1}
!9 = !{ptr @__UNIQUE_ID_license300, !8, !"__UNIQUE_ID_license300", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/codecs/wm8523.c", i32 529, i32 11}
!12 = !{ptr @wm8523_i2c_driver, !13, !"wm8523_i2c_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/wm8523.c", i32 527, i32 26}
!14 = !{ptr @wm8523_i2c_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/wm8523.c", i32 458, i32 19}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/soc/codecs/wm8523.c", i32 461, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @wm8523_i2c_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @wm8523_i2c_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../sound/soc/codecs/wm8523.c", i32 471, i32 3}
!27 = !{ptr @wm8523_i2c_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @wm8523_i2c_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/soc/codecs/wm8523.c", i32 478, i32 3}
!31 = !{ptr @wm8523_i2c_probe._entry.10, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @wm8523_i2c_probe._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/soc/codecs/wm8523.c", i32 484, i32 3}
!35 = !{ptr @wm8523_i2c_probe._entry.13, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @wm8523_i2c_probe._entry_ptr.15, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/soc/codecs/wm8523.c", i32 488, i32 3}
!39 = !{ptr @wm8523_i2c_probe._entry.16, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @wm8523_i2c_probe._entry_ptr.18, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.20, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/soc/codecs/wm8523.c", i32 495, i32 3}
!43 = !{ptr @wm8523_i2c_probe._entry.19, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @wm8523_i2c_probe._entry_ptr.21, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/soc/codecs/wm8523.c", i32 498, i32 2}
!47 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @wm8523_i2c_probe._entry.22, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @wm8523_i2c_probe._entry_ptr.25, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.27, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/codecs/wm8523.c", i32 503, i32 3}
!52 = !{ptr @wm8523_i2c_probe._entry.26, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @wm8523_i2c_probe._entry_ptr.28, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @wm8523_regmap, !55, !"wm8523_regmap", i1 false, i1 false}
!55 = !{!"../sound/soc/codecs/wm8523.c", i32 434, i32 35}
!56 = !{ptr @wm8523_reg_defaults, !57, !"wm8523_reg_defaults", i1 false, i1 false}
!57 = !{!"../sound/soc/codecs/wm8523.c", i32 46, i32 33}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/soc/codecs/wm8523.c", i32 31, i32 2}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/codecs/wm8523.c", i32 32, i32 2}
!62 = distinct !{null, !63, !"wm8523_supply_names", i1 false, i1 false}
!63 = !{!"../sound/soc/codecs/wm8523.c", i32 30, i32 20}
!64 = !{ptr @soc_component_dev_wm8523, !65, !"soc_component_dev_wm8523", i1 false, i1 false}
!65 = !{!"../sound/soc/codecs/wm8523.c", i32 412, i32 46}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/soc/codecs/wm8523.c", i32 78, i32 1}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/soc/codecs/wm8523.c", i32 80, i32 1}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/soc/codecs/wm8523.c", i32 81, i32 1}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/soc/codecs/wm8523.c", i32 82, i32 1}
!74 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/soc/codecs/wm8523.c", i32 83, i32 1}
!76 = !{ptr @.str.40, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/codecs/wm8523.c", i32 84, i32 1}
!78 = !{ptr @.str.42, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/codecs/wm8523.c", i32 85, i32 1}
!80 = !{ptr @wm8523_controls, !81, !"wm8523_controls", i1 false, i1 false}
!81 = !{!"../sound/soc/codecs/wm8523.c", i32 77, i32 38}
!82 = !{ptr @dac_tlv, !83, !"dac_tlv", i1 false, i1 false}
!83 = !{!"../sound/soc/codecs/wm8523.c", i32 67, i32 14}
!84 = !{ptr @wm8523_zc_count, !85, !"wm8523_zc_count", i1 false, i1 false}
!85 = !{!"../sound/soc/codecs/wm8523.c", i32 74, i32 8}
!86 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/soc/codecs/wm8523.c", i32 70, i32 2}
!88 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/soc/codecs/wm8523.c", i32 71, i32 2}
!90 = !{ptr @wm8523_zd_count_text, !91, !"wm8523_zd_count_text", i1 false, i1 false}
!91 = !{!"../sound/soc/codecs/wm8523.c", i32 69, i32 20}
!92 = !{ptr @.str.45, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/soc/codecs/wm8523.c", i32 89, i32 1}
!94 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.47, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/soc/codecs/wm8523.c", i32 90, i32 1}
!97 = !{ptr @.str.48, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../sound/soc/codecs/wm8523.c", i32 91, i32 1}
!99 = !{ptr @wm8523_dapm_widgets, !100, !"wm8523_dapm_widgets", i1 false, i1 false}
!100 = !{!"../sound/soc/codecs/wm8523.c", i32 88, i32 41}
!101 = !{ptr @wm8523_dapm_routes, !102, !"wm8523_dapm_routes", i1 false, i1 false}
!102 = !{!"../sound/soc/codecs/wm8523.c", i32 94, i32 40}
!103 = !{ptr @.str.50, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../sound/soc/codecs/wm8523.c", i32 337, i32 5}
!105 = !{ptr @wm8523_set_bias_level._entry, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @wm8523_set_bias_level._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.51, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../sound/soc/codecs/wm8523.c", i32 385, i32 10}
!109 = !{ptr @wm8523_dai, !110, !"wm8523_dai", i1 false, i1 false}
!110 = !{!"../sound/soc/codecs/wm8523.c", i32 384, i32 34}
!111 = !{ptr @wm8523_dai_ops, !112, !"wm8523_dai_ops", i1 false, i1 false}
!112 = !{!"../sound/soc/codecs/wm8523.c", i32 377, i32 37}
!113 = !{ptr @.str.52, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../sound/soc/codecs/wm8523.c", i32 238, i32 4}
!115 = !{ptr @.str.53, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @.str.54, !114, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @wm8523_set_dai_sysclk.__UNIQUE_ID_ddebug294, !114, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!118 = !{ptr @.str.55, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/soc/codecs/wm8523.c", i32 244, i32 4}
!120 = !{ptr @wm8523_set_dai_sysclk.__UNIQUE_ID_ddebug295, !119, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!121 = !{ptr @lrclk_ratios, !122, !"lrclk_ratios", i1 false, i1 false}
!122 = !{!"../sound/soc/codecs/wm8523.c", i32 102, i32 3}
!123 = !{ptr @.str.56, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../sound/soc/codecs/wm8523.c", i32 131, i32 3}
!125 = !{ptr @.str.57, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @wm8523_startup._entry, !124, !"_entry", i1 false, i1 false}
!127 = !{ptr @wm8523_startup._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.58, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/soc/codecs/wm8523.c", i32 162, i32 3}
!130 = !{ptr @.str.59, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @wm8523_hw_params._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @wm8523_hw_params._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.61, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../sound/soc/codecs/wm8523.c", i32 177, i32 4}
!135 = !{ptr @wm8523_hw_params._entry.60, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @wm8523_hw_params._entry_ptr.62, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @bclk_ratios, !138, !"bclk_ratios", i1 false, i1 false}
!138 = !{!"../sound/soc/codecs/wm8523.c", i32 115, i32 3}
!139 = !{ptr @wm8523_of_match, !140, !"wm8523_of_match", i1 false, i1 false}
!140 = !{!"../sound/soc/codecs/wm8523.c", i32 428, i32 34}
!141 = !{ptr @wm8523_i2c_id, !142, !"wm8523_i2c_id", i1 false, i1 false}
!142 = !{!"../sound/soc/codecs/wm8523.c", i32 521, i32 35}
!143 = !{i32 1, !"wchar_size", i32 2}
!144 = !{i32 1, !"min_enum_size", i32 4}
!145 = !{i32 8, !"branch-target-enforcement", i32 0}
!146 = !{i32 8, !"sign-return-address", i32 0}
!147 = !{i32 8, !"sign-return-address-all", i32 0}
!148 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!149 = !{i32 7, !"uwtable", i32 1}
!150 = !{i32 7, !"frame-pointer", i32 2}
!151 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!152 = !{!"auto-init"}
!153 = !{i64 2148965048, i64 2148965053, i64 2148965066, i64 2148965110, i64 2148965144, i64 2148965165}
!154 = !{i32 0, i32 33}
