; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/max98520.c_pt.bc'
source_filename = "../sound/soc/codecs/max98520.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.98, i32 }
%union.anon.98 = type { ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8, %struct.snd_soc_dobj }
%struct.atomic_t = type { i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.max98520_priv = type { ptr, ptr, i32, i8 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@__initcall__kmod_snd_soc_max98520__301_764_max98520_i2c_driver_init6 = internal global ptr @max98520_i2c_driver_init, section ".initcall6.init", align 4
@max98520_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @max98520_i2c_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @max98520_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max98520_pm, ptr null, ptr null }, ptr @max98520_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_max98520_i2c_driver_exit = internal global ptr @max98520_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description302 = internal constant [54 x i8] c"snd_soc_max98520.description=ALSA SoC MAX98520 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author303 = internal constant [70 x i8] c"snd_soc_max98520.author=George Song <george.song@maximintegrated.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file304 = internal constant [56 x i8] c"snd_soc_max98520.file=sound/soc/codecs/snd-soc-max98520\00", section ".modinfo", align 1
@__UNIQUE_ID_license305 = internal constant [29 x i8] c"snd_soc_max98520.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"max98520\00", [23 x i8] zeroinitializer }, align 32
@max98520_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max98520\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@max98520_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @max98520_suspend, ptr @max98520_resume, ptr @max98520_suspend, ptr @max98520_resume, ptr @max98520_suspend, ptr @max98520_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@max98520_i2c_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"max98520\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@max98520_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 689, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"I2C check functionality failed\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"max98520_i2c_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sound/soc/codecs/max98520.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@max98520_i2c_probe._entry_ptr = internal global ptr @max98520_i2c_probe._entry, section ".printk_index", align 4
@max98520_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@max98520_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 16, i32 0, i32 0, i32 8, ptr null, ptr @max98520_readable_register, ptr @max98520_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 8703, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max98520_reg, i32 48, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"max98520:701:(&max98520_regmap)->lock\00", [58 x i8] zeroinitializer }, align 32
@max98520_i2c_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 704, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to allocate regmap: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@max98520_i2c_probe._entry_ptr.9 = internal global ptr @max98520_i2c_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@max98520_i2c_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 713, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unable to request GPIO pin: %d.\0A\00", [63 x i8] zeroinitializer }, align 32
@max98520_i2c_probe._entry_ptr.13 = internal global ptr @max98520_i2c_probe._entry.11, section ".printk_index", align 4
@max98520_i2c_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 724, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Failed to read: 0x%02X\0A\00", [40 x i8] zeroinitializer }, align 32
@max98520_i2c_probe._entry_ptr.16 = internal global ptr @max98520_i2c_probe._entry.14, section ".printk_index", align 4
@max98520_i2c_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 727, ptr @.str.19, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"MAX98520 revisionID: 0x%02X\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@max98520_i2c_probe._entry_ptr.20 = internal global ptr @max98520_i2c_probe._entry.17, section ".printk_index", align 4
@soc_codec_dev_max98520 = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @max98520_snd_controls, i32 27, ptr @max98520_dapm_widgets, i32 5, ptr @max98520_audio_map, i32 4, ptr @max98520_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 92, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@max98520_dai = internal global { [1 x %struct.snd_soc_dai_driver], [56 x i8] } { [1 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.166, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @max98520_dai_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.104, i64 1092, i32 8190, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }], [56 x i8] zeroinitializer }, align 32
@max98520_i2c_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 734, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to register codec: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@max98520_i2c_probe._entry_ptr.23 = internal global ptr @max98520_i2c_probe._entry.21, section ".printk_index", align 4
@max98520_reg = internal global { [48 x %struct.reg_default], [96 x i8] } { [48 x %struct.reg_default] [%struct.reg_default { i32 8192, i32 0 }, %struct.reg_default { i32 8193, i32 0 }, %struct.reg_default { i32 8194, i32 0 }, %struct.reg_default { i32 8224, i32 70 }, %struct.reg_default { i32 8225, i32 100 }, %struct.reg_default { i32 8226, i32 2 }, %struct.reg_default { i32 8227, i32 49 }, %struct.reg_default { i32 8231, i32 1 }, %struct.reg_default { i32 8240, i32 0 }, %struct.reg_default { i32 8247, i32 1 }, %struct.reg_default { i32 8256, i32 192 }, %struct.reg_default { i32 8257, i32 4 }, %struct.reg_default { i32 8258, i32 8 }, %struct.reg_default { i32 8259, i32 0 }, %struct.reg_default { i32 8260, i32 0 }, %struct.reg_default { i32 8271, i32 0 }, %struct.reg_default { i32 8336, i32 0 }, %struct.reg_default { i32 8337, i32 3 }, %struct.reg_default { i32 8338, i32 2 }, %struct.reg_default { i32 8340, i32 1 }, %struct.reg_default { i32 8341, i32 240 }, %struct.reg_default { i32 8351, i32 0 }, %struct.reg_default { i32 8368, i32 0 }, %struct.reg_default { i32 8369, i32 0 }, %struct.reg_default { i32 8370, i32 2 }, %struct.reg_default { i32 8371, i32 2 }, %struct.reg_default { i32 8372, i32 0 }, %struct.reg_default { i32 8373, i32 0 }, %struct.reg_default { i32 8374, i32 0 }, %struct.reg_default { i32 8375, i32 0 }, %struct.reg_default { i32 8376, i32 0 }, %struct.reg_default { i32 8377, i32 0 }, %struct.reg_default { i32 8378, i32 255 }, %struct.reg_default { i32 8379, i32 1 }, %struct.reg_default { i32 8380, i32 0 }, %struct.reg_default { i32 8381, i32 0 }, %struct.reg_default { i32 8399, i32 0 }, %struct.reg_default { i32 8400, i32 0 }, %struct.reg_default { i32 8401, i32 8 }, %struct.reg_default { i32 8402, i32 0 }, %struct.reg_default { i32 8403, i32 20 }, %struct.reg_default { i32 8404, i32 2 }, %struct.reg_default { i32 8405, i32 4 }, %struct.reg_default { i32 8406, i32 7 }, %struct.reg_default { i32 8408, i32 0 }, %struct.reg_default { i32 8462, i32 0 }, %struct.reg_default { i32 8463, i32 0 }, %struct.reg_default { i32 8703, i32 0 }], [96 x i8] zeroinitializer }, align 32
@max98520_snd_controls = internal constant { [27 x %struct.snd_kcontrol_new], [336 x i8] } { [27 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.24, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @max98520_digital_tlv }, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.25, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @max98520_spk_tlv }, i32 ptrtoint (ptr @.compoundliteral.26 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.27, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.28 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.29, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.30 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.31, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.32 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.33, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.34 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.35, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.36 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.37, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.38 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.39, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.40 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.41, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.42 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.43, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.44 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.45, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.46 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.47, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.48 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.49, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @max98520_dht_rotation_point_tlv }, i32 ptrtoint (ptr @.compoundliteral.50 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.51, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @max98520_dht_supply_hr_tlv }, i32 ptrtoint (ptr @.compoundliteral.52 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.53, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @max98520_dht_lim_thresh_tlv }, i32 ptrtoint (ptr @.compoundliteral.54 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.55, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @max98520_dht_max_atten_tlv }, i32 ptrtoint (ptr @.compoundliteral.56 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.57, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @max98520_dht_hysteresis_tlv }, i32 ptrtoint (ptr @.compoundliteral.58 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.59, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @max98520_dht_attack_rate_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.60, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @max98520_dht_release_rate_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.61, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.62 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.63, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.64 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.65, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.66 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.67, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.68 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.69, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.70 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.71, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.72 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.73, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.74 to i32) }], [336 x i8] zeroinitializer }, align 32
@max98520_audio_map = internal constant { [4 x %struct.snd_soc_dapm_route], [48 x i8] } { [4 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.105, ptr @.str.115, ptr @.str.103, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.105, ptr @.str.116, ptr @.str.103, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.105, ptr @.str.117, ptr @.str.103, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.106, ptr null, ptr @.str.105, ptr null, %struct.snd_soc_dobj zeroinitializer }], [48 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Digital Volume\00", [17 x i8] zeroinitializer }, align 32
@max98520_digital_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -6300, i32 65586], [16 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 127, i32 127, i32 8336, i32 8336, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Speaker Volume\00", [17 x i8] zeroinitializer }, align 32
@max98520_spk_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -600, i32 300], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.26 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 5, i32 5, i32 8337, i32 8337, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Ramp Up Switch\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.28 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 8338, i32 8338, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Ramp Down Switch\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.30 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 8338, i32 8338, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"CLK Monitor Switch\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.32 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 8247, i32 8247, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"CLKMON Autorestart Switch\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.34 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 8240, i32 8240, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Dither Switch\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.36 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 8338, i32 8338, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DC Blocker Switch\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.38 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 8338, i32 8338, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Speaker Safemode Switch\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.40 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 8338, i32 8338, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CP Bypass Switch\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.42 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 8340, i32 8340, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DHT Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.44 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 8408, i32 8408, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DHT Limiter Mode\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.46 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 8402, i32 8402, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DHT Hysteresis Switch\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.48 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 8406, i32 8406, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DHT Rot Pnt\00", [20 x i8] zeroinitializer }, align 32
@max98520_dht_rotation_point_tlv = internal constant { [20 x i32], [48 x i8] } { [20 x i32] [i32 3, i32 72, i32 0, i32 1, i32 1, i32 8, i32 -1500, i32 300, i32 2, i32 4, i32 1, i32 8, i32 -1000, i32 200, i32 5, i32 10, i32 1, i32 8, i32 -500, i32 100], [48 x i8] zeroinitializer }, align 32
@.compoundliteral.50 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 10, i32 10, i32 8400, i32 8400, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DHT Supply Headroom\00", [44 x i8] zeroinitializer }, align 32
@max98520_dht_supply_hr_tlv = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 3, i32 24, i32 0, i32 16, i32 1, i32 8, i32 -2000, i32 250], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.52 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 16, i32 16, i32 8401, i32 8401, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DHT Limiter Threshold\00", [42 x i8] zeroinitializer }, align 32
@max98520_dht_lim_thresh_tlv = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 3, i32 24, i32 0, i32 15, i32 1, i32 8, i32 -1500, i32 100], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.54 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 8402, i32 8402, i32 1, i32 1, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DHT Max Attenuation\00", [44 x i8] zeroinitializer }, align 32
@max98520_dht_max_atten_tlv = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 3, i32 24, i32 1, i32 20, i32 1, i32 8, i32 -2000, i32 100], [32 x i8] zeroinitializer }, align 32
@.compoundliteral.56 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 20, i32 20, i32 8403, i32 8403, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DHT Hysteresis\00", [17 x i8] zeroinitializer }, align 32
@max98520_dht_hysteresis_tlv = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 3, i32 48, i32 0, i32 3, i32 1, i32 8, i32 100, i32 100, i32 4, i32 7, i32 1, i32 8, i32 600, i32 200], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.58 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 8406, i32 8406, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DHT Attack Rate\00", [16 x i8] zeroinitializer }, align 32
@max98520_dht_attack_rate_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 8404, i8 0, i8 0, i32 14, i32 15, ptr @max98520_dht_attack_rate_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DHT Release Rate\00", [47 x i8] zeroinitializer }, align 32
@max98520_dht_release_rate_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 8405, i8 0, i8 0, i32 14, i32 15, ptr @max98520_dht_release_rate_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ADC PVDD CH Switch\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.62 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 8399, i32 8399, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ADC PVDD FLT Switch\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.64 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 8370, i32 8370, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ADC TEMP FLT Switch\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.66 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 8371, i32 8371, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ADC PVDD MSB\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.68 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 8374, i32 8374, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ADC PVDD LSB\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.70 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 8375, i32 8375, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ADC TEMP MSB\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.72 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 8376, i32 8376, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ADC TEMP LSB\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.74 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 8377, i32 8377, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@max98520_dht_attack_rate_text = internal constant { [14 x ptr], [40 x i8] } { [14 x ptr] [ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88], [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"20us\00", [27 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"40us\00", [27 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"80us\00", [27 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"160us\00", [26 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"320us\00", [26 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"640us\00", [26 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"1.28ms\00", [25 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"2.56ms\00", [25 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"5.12ms\00", [25 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"10.24ms\00", [24 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"20.48ms\00", [24 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"40.96ms\00", [24 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"81.92ms\00", [24 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"163.84ms\00", [23 x i8] zeroinitializer }, align 32
@max98520_dht_release_rate_text = internal constant { [14 x ptr], [40 x i8] } { [14 x ptr] [ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102], [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"2ms\00", [28 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"4ms\00", [28 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"8ms\00", [28 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"16ms\00", [27 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"32ms\00", [27 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"64ms\00", [27 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"128ms\00", [26 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"256ms\00", [26 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"512ms\00", [26 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"1.024s\00", [25 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"2.048s\00", [25 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"4.096s\00", [25 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"8.192s\00", [25 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"16.384s\00", [24 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Amp Enable\00", [21 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"HiFi Playback\00", [18 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DAI Sel Mux\00", [20 x i8] zeroinitializer }, align 32
@max98520_dai_controls = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.114, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @dai_sel_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"BE_OUT\00", [25 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Left Input Selection\00", [43 x i8] zeroinitializer }, align 32
@max98520_left_input_mixer_controls = internal constant { [16 x %struct.snd_kcontrol_new], [192 x i8] } { [16 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.118, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.119 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.120, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.121 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.122, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.123 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.124, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.125 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.126, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.127 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.128, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.129 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.130, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.131 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.132, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.133 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.134, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.135 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.136, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.137 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.138, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.139 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.140, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.141 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.142, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.143 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.144, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.145 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.146, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.147 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.148, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.149 to i32) }], [192 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Right Input Selection\00", [42 x i8] zeroinitializer }, align 32
@max98520_right_input_mixer_controls = internal constant { [16 x %struct.snd_kcontrol_new], [192 x i8] } { [16 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.118, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.150 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.120, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.151 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.122, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.152 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.124, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.153 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.126, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.154 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.128, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.155 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.130, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.156 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.132, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.157 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.134, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.158 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.136, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.159 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.138, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.160 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.140, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.161 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.142, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.162 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.144, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.163 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.146, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.164 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.148, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.165 to i32) }], [192 x i8] zeroinitializer }, align 32
@max98520_dapm_widgets = internal constant { [5 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [252 x i8] } { [5 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.103, ptr @.str.104, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 10, ptr @max98520_dac_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.105, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @max98520_dai_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.106, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.107, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 16, ptr @max98520_left_input_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.108, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 16, ptr @max98520_right_input_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [252 x i8] zeroinitializer }, align 32
@max98520_dac_event.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.110, ptr @.str.111, ptr @.str.3, ptr @.str.112, i8 0, i8 86, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.110 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"snd_soc_max98520\00", [47 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"max98520_dac_event\00", [45 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" AMP ON\0A\00", [23 x i8] zeroinitializer }, align 32
@max98520_dac_event.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.110, ptr @.str.111, ptr @.str.3, ptr @.str.113, i8 0, i8 88, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.113 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" AMP OFF\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DAI Sel\00", [24 x i8] zeroinitializer }, align 32
@dai_sel_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 8259, i8 0, i8 0, i32 3, i32 3, ptr @max98520_switch_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@max98520_switch_text = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.115, ptr @.str.116, ptr @.str.117], [20 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Left\00", [27 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Right\00", [26 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"LeftRight\00", [22 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PCM_INPUT_CH0\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.119 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 0, i32 0, i32 8260, i32 8260, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PCM_INPUT_CH1\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.121 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 8260, i32 8260, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PCM_INPUT_CH2\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.123 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 2, i32 2, i32 8260, i32 8260, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PCM_INPUT_CH3\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.125 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 8260, i32 8260, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PCM_INPUT_CH4\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.127 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 4, i32 4, i32 8260, i32 8260, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PCM_INPUT_CH5\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.129 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 5, i32 5, i32 8260, i32 8260, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PCM_INPUT_CH6\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.131 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 6, i32 6, i32 8260, i32 8260, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PCM_INPUT_CH7\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.133 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 8260, i32 8260, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PCM_INPUT_CH8\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.135 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 8, i32 8, i32 8260, i32 8260, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PCM_INPUT_CH9\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.137 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 9, i32 9, i32 8260, i32 8260, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"PCM_INPUT_CH10\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.139 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 10, i32 10, i32 8260, i32 8260, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"PCM_INPUT_CH11\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.141 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 11, i32 11, i32 8260, i32 8260, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"PCM_INPUT_CH12\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.143 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 12, i32 12, i32 8260, i32 8260, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"PCM_INPUT_CH13\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.145 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 13, i32 13, i32 8260, i32 8260, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"PCM_INPUT_CH14\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.147 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 14, i32 14, i32 8260, i32 8260, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"PCM_INPUT_CH15\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.149 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 8260, i32 8260, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.150 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 0, i32 0, i32 8260, i32 8260, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.151 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 8260, i32 8260, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.152 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 2, i32 2, i32 8260, i32 8260, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.153 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 8260, i32 8260, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.154 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 4, i32 4, i32 8260, i32 8260, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.155 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 5, i32 5, i32 8260, i32 8260, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.156 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 6, i32 6, i32 8260, i32 8260, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.157 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 8260, i32 8260, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.158 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 8, i32 8, i32 8260, i32 8260, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.159 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 9, i32 9, i32 8260, i32 8260, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.160 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 10, i32 10, i32 8260, i32 8260, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.161 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 11, i32 11, i32 8260, i32 8260, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.162 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 12, i32 12, i32 8260, i32 8260, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.163 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 13, i32 13, i32 8260, i32 8260, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.164 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 14, i32 14, i32 8260, i32 8260, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.165 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 8260, i32 8260, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"max98520-aif1\00", [18 x i8] zeroinitializer }, align 32
@max98520_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr @max98520_dai_set_fmt, ptr null, ptr @max98520_dai_tdm_slot, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max98520_dai_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@max98520_dai_set_fmt.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.110, ptr @.str.167, ptr @.str.3, ptr @.str.168, i8 0, i8 20, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.167 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"max98520_dai_set_fmt\00", [43 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: fmt 0x%08X\0A\00", [16 x i8] zeroinitializer }, align 32
@max98520_dai_set_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.167, ptr @.str.3, i32 89, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"DAI invert mode unsupported\0A\00", [35 x i8] zeroinitializer }, align 32
@max98520_dai_set_fmt._entry_ptr = internal global ptr @max98520_dai_set_fmt._entry, section ".printk_index", align 4
@max98520_dai_tdm_slot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.170, ptr @.str.171, ptr @.str.3, i32 283, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"BCLK %d not supported\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"max98520_dai_tdm_slot\00", [42 x i8] zeroinitializer }, align 32
@max98520_dai_tdm_slot._entry_ptr = internal global ptr @max98520_dai_tdm_slot._entry, section ".printk_index", align 4
@max98520_dai_tdm_slot._entry.172 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.173, ptr @.str.171, ptr @.str.3, i32 305, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"format unsupported %d\0A\00", [41 x i8] zeroinitializer }, align 32
@max98520_dai_tdm_slot._entry_ptr.174 = internal global ptr @max98520_dai_tdm_slot._entry.172, section ".printk_index", align 4
@max98520_dai_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.173, ptr @.str.175, ptr @.str.3, i32 190, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"max98520_dai_hw_params\00", [41 x i8] zeroinitializer }, align 32
@max98520_dai_hw_params._entry_ptr = internal global ptr @max98520_dai_hw_params._entry, section ".printk_index", align 4
@max98520_dai_hw_params.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.110, ptr @.str.175, ptr @.str.3, ptr @.str.176, i8 0, i8 50, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.176 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"format supported %d\00", [44 x i8] zeroinitializer }, align 32
@max98520_dai_hw_params._entry.177 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.175, ptr @.str.3, i32 246, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rate %d not supported\0A\00", [41 x i8] zeroinitializer }, align 32
@max98520_dai_hw_params._entry_ptr.179 = internal global ptr @max98520_dai_hw_params._entry.177, section ".printk_index", align 4
@max98520_dai_hw_params.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.110, ptr @.str.175, ptr @.str.3, ptr @.str.180, i8 0, i8 62, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.180 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c" %s ch_size: %d, sampling rate : %d out\0A\00", [55 x i8] zeroinitializer }, align 32
@max98520_dai_hw_params.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.110, ptr @.str.175, ptr @.str.3, ptr @.str.181, i8 0, i8 65, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.181 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s out error\00", [19 x i8] zeroinitializer }, align 32
@max98520_set_clock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.173, ptr @.str.182, ptr @.str.3, i32 154, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"max98520_set_clock\00", [45 x i8] zeroinitializer }, align 32
@max98520_set_clock._entry_ptr = internal global ptr @max98520_set_clock._entry, section ".printk_index", align 4
@max98520_set_clock.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.110, ptr @.str.182, ptr @.str.3, ptr @.str.183, i8 0, i8 40, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.183 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s tdm_mode:%d out\0A\00", [44 x i8] zeroinitializer }, align 32
@switch.table.max98520_dai_set_fmt = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 0, i32 64, i32 256, i32 192], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [53 x i64] [i64 51, i64 32, i64 8192, i64 8193, i64 8194, i64 8224, i64 8225, i64 8226, i64 8227, i64 8231, i64 8240, i64 8247, i64 8256, i64 8257, i64 8258, i64 8259, i64 8260, i64 8271, i64 8336, i64 8337, i64 8338, i64 8340, i64 8341, i64 8351, i64 8368, i64 8369, i64 8370, i64 8371, i64 8372, i64 8373, i64 8374, i64 8375, i64 8376, i64 8377, i64 8378, i64 8379, i64 8380, i64 8381, i64 8399, i64 8400, i64 8401, i64 8402, i64 8403, i64 8404, i64 8405, i64 8406, i64 8408, i64 8462, i64 8463, i64 8545, i64 8546, i64 8547, i64 8703]
@__sancov_gen_cov_switch_values.184 = internal global [17 x i64] [i64 15, i64 32, i64 8192, i64 8193, i64 8194, i64 8372, i64 8373, i64 8374, i64 8375, i64 8376, i64 8377, i64 8378, i64 8379, i64 8380, i64 8381, i64 8463, i64 8703]
@__sancov_gen_cov_switch_values.185 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8]
@__sancov_gen_cov_switch_values.186 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 768]
@__sancov_gen_cov_switch_values.187 = internal global [12 x i64] [i64 10, i64 32, i64 32, i64 48, i64 64, i64 96, i64 128, i64 192, i64 256, i64 320, i64 384, i64 512]
@__sancov_gen_cov_switch_values.188 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.189 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.190 = internal global [15 x i64] [i64 13, i64 32, i64 8000, i64 11025, i64 12000, i64 16000, i64 22050, i64 24000, i64 32000, i64 44100, i64 48000, i64 88200, i64 96000, i64 176400, i64 192000]
@__sancov_gen_cov_switch_values.191 = internal global [12 x i64] [i64 10, i64 32, i64 32, i64 48, i64 64, i64 96, i64 128, i64 192, i64 256, i64 320, i64 384, i64 512]
@___asan_gen_.192 = private unnamed_addr constant [20 x i8] c"max98520_i2c_driver\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 754, i32 26 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 756, i32 11 }
@___asan_gen_.198 = private unnamed_addr constant [18 x i8] c"max98520_of_match\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 747, i32 34 }
@___asan_gen_.201 = private unnamed_addr constant [12 x i8] c"max98520_pm\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 645, i32 32 }
@___asan_gen_.204 = private unnamed_addr constant [16 x i8] c"max98520_i2c_id\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 739, i32 35 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 689, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.228 = private unnamed_addr constant [16 x i8] c"max98520_regmap\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 663, i32 35 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 701, i32 21 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 704, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 709, i32 60 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 713, i32 4 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 723, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 727, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant [23 x i8] c"soc_codec_dev_max98520\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 649, i32 46 }
@___asan_gen_.267 = private unnamed_addr constant [13 x i8] c"max98520_dai\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 582, i32 34 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 734, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant [13 x i8] c"max98520_reg\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 21, i32 27 }
@___asan_gen_.279 = private unnamed_addr constant [22 x i8] c"max98520_snd_controls\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 517, i32 38 }
@___asan_gen_.282 = private unnamed_addr constant [19 x i8] c"max98520_audio_map\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 574, i32 40 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 519, i32 1 }
@___asan_gen_.288 = private unnamed_addr constant [21 x i8] c"max98520_digital_tlv\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 430, i32 14 }
@___asan_gen_.291 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 521, i32 1 }
@___asan_gen_.295 = private unnamed_addr constant [17 x i8] c"max98520_spk_tlv\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 431, i32 14 }
@___asan_gen_.298 = private unnamed_addr constant [20 x i8] c".compoundliteral.26\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 524, i32 1 }
@___asan_gen_.302 = private unnamed_addr constant [20 x i8] c".compoundliteral.28\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 526, i32 1 }
@___asan_gen_.306 = private unnamed_addr constant [20 x i8] c".compoundliteral.30\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 529, i32 1 }
@___asan_gen_.310 = private unnamed_addr constant [20 x i8] c".compoundliteral.32\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 532, i32 1 }
@___asan_gen_.314 = private unnamed_addr constant [20 x i8] c".compoundliteral.34\00", align 1
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 535, i32 1 }
@___asan_gen_.318 = private unnamed_addr constant [20 x i8] c".compoundliteral.36\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 538, i32 1 }
@___asan_gen_.322 = private unnamed_addr constant [20 x i8] c".compoundliteral.38\00", align 1
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 541, i32 1 }
@___asan_gen_.326 = private unnamed_addr constant [20 x i8] c".compoundliteral.40\00", align 1
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 544, i32 1 }
@___asan_gen_.330 = private unnamed_addr constant [20 x i8] c".compoundliteral.42\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 547, i32 1 }
@___asan_gen_.334 = private unnamed_addr constant [20 x i8] c".compoundliteral.44\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 548, i32 1 }
@___asan_gen_.338 = private unnamed_addr constant [20 x i8] c".compoundliteral.46\00", align 1
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 550, i32 1 }
@___asan_gen_.342 = private unnamed_addr constant [20 x i8] c".compoundliteral.48\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 552, i32 1 }
@___asan_gen_.346 = private unnamed_addr constant [32 x i8] c"max98520_dht_rotation_point_tlv\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 442, i32 14 }
@___asan_gen_.349 = private unnamed_addr constant [20 x i8] c".compoundliteral.50\00", align 1
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 554, i32 1 }
@___asan_gen_.353 = private unnamed_addr constant [27 x i8] c"max98520_dht_supply_hr_tlv\00", align 1
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 448, i32 14 }
@___asan_gen_.356 = private unnamed_addr constant [20 x i8] c".compoundliteral.52\00", align 1
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 556, i32 1 }
@___asan_gen_.360 = private unnamed_addr constant [28 x i8] c"max98520_dht_lim_thresh_tlv\00", align 1
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 433, i32 14 }
@___asan_gen_.363 = private unnamed_addr constant [20 x i8] c".compoundliteral.54\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 558, i32 1 }
@___asan_gen_.367 = private unnamed_addr constant [27 x i8] c"max98520_dht_max_atten_tlv\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 452, i32 14 }
@___asan_gen_.370 = private unnamed_addr constant [20 x i8] c".compoundliteral.56\00", align 1
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 560, i32 1 }
@___asan_gen_.374 = private unnamed_addr constant [28 x i8] c"max98520_dht_hysteresis_tlv\00", align 1
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 437, i32 14 }
@___asan_gen_.377 = private unnamed_addr constant [20 x i8] c".compoundliteral.58\00", align 1
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 562, i32 1 }
@___asan_gen_.381 = private unnamed_addr constant [30 x i8] c"max98520_dht_attack_rate_enum\00", align 1
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 462, i32 8 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 563, i32 1 }
@___asan_gen_.387 = private unnamed_addr constant [31 x i8] c"max98520_dht_release_rate_enum\00", align 1
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 471, i32 8 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 565, i32 1 }
@___asan_gen_.393 = private unnamed_addr constant [20 x i8] c".compoundliteral.62\00", align 1
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 566, i32 1 }
@___asan_gen_.397 = private unnamed_addr constant [20 x i8] c".compoundliteral.64\00", align 1
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 567, i32 1 }
@___asan_gen_.401 = private unnamed_addr constant [20 x i8] c".compoundliteral.66\00", align 1
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 568, i32 1 }
@___asan_gen_.405 = private unnamed_addr constant [20 x i8] c".compoundliteral.68\00", align 1
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 569, i32 1 }
@___asan_gen_.409 = private unnamed_addr constant [20 x i8] c".compoundliteral.70\00", align 1
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 570, i32 1 }
@___asan_gen_.413 = private unnamed_addr constant [20 x i8] c".compoundliteral.72\00", align 1
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 571, i32 1 }
@___asan_gen_.417 = private unnamed_addr constant [20 x i8] c".compoundliteral.74\00", align 1
@___asan_gen_.418 = private unnamed_addr constant [30 x i8] c"max98520_dht_attack_rate_text\00", align 1
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 456, i32 27 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 457, i32 2 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 457, i32 10 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 457, i32 18 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 457, i32 26 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 457, i32 35 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 457, i32 44 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 458, i32 2 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 458, i32 12 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 458, i32 22 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 458, i32 32 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 458, i32 43 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 458, i32 54 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 459, i32 2 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 459, i32 13 }
@___asan_gen_.463 = private unnamed_addr constant [31 x i8] c"max98520_dht_release_rate_text\00", align 1
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 466, i32 27 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 467, i32 2 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 467, i32 9 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 467, i32 16 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 467, i32 23 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 467, i32 31 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 467, i32 39 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 467, i32 47 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 467, i32 56 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 467, i32 65 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 468, i32 2 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 468, i32 12 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 468, i32 22 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 468, i32 32 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 468, i32 42 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 415, i32 2 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 418, i32 2 }
@___asan_gen_.517 = private unnamed_addr constant [22 x i8] c"max98520_dai_controls\00", align 1
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 373, i32 38 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 419, i32 2 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 421, i32 2 }
@___asan_gen_.526 = private unnamed_addr constant [35 x i8] c"max98520_left_input_mixer_controls\00", align 1
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 376, i32 38 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 425, i32 2 }
@___asan_gen_.532 = private unnamed_addr constant [36 x i8] c"max98520_right_input_mixer_controls\00", align 1
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 395, i32 38 }
@___asan_gen_.535 = private unnamed_addr constant [22 x i8] c"max98520_dapm_widgets\00", align 1
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 414, i32 41 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 347, i32 3 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 354, i32 3 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 374, i32 2 }
@___asan_gen_.553 = private unnamed_addr constant [13 x i8] c"dai_sel_enum\00", align 1
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 369, i32 30 }
@___asan_gen_.556 = private unnamed_addr constant [21 x i8] c"max98520_switch_text\00", align 1
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 366, i32 27 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 367, i32 2 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 367, i32 10 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 367, i32 19 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 377, i32 2 }
@___asan_gen_.571 = private unnamed_addr constant [21 x i8] c".compoundliteral.119\00", align 1
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 378, i32 2 }
@___asan_gen_.575 = private unnamed_addr constant [21 x i8] c".compoundliteral.121\00", align 1
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 379, i32 2 }
@___asan_gen_.579 = private unnamed_addr constant [21 x i8] c".compoundliteral.123\00", align 1
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 380, i32 2 }
@___asan_gen_.583 = private unnamed_addr constant [21 x i8] c".compoundliteral.125\00", align 1
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 381, i32 2 }
@___asan_gen_.587 = private unnamed_addr constant [21 x i8] c".compoundliteral.127\00", align 1
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 382, i32 2 }
@___asan_gen_.591 = private unnamed_addr constant [21 x i8] c".compoundliteral.129\00", align 1
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 383, i32 2 }
@___asan_gen_.595 = private unnamed_addr constant [21 x i8] c".compoundliteral.131\00", align 1
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 384, i32 2 }
@___asan_gen_.599 = private unnamed_addr constant [21 x i8] c".compoundliteral.133\00", align 1
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 385, i32 2 }
@___asan_gen_.603 = private unnamed_addr constant [21 x i8] c".compoundliteral.135\00", align 1
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 386, i32 2 }
@___asan_gen_.607 = private unnamed_addr constant [21 x i8] c".compoundliteral.137\00", align 1
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 387, i32 2 }
@___asan_gen_.611 = private unnamed_addr constant [21 x i8] c".compoundliteral.139\00", align 1
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 388, i32 2 }
@___asan_gen_.615 = private unnamed_addr constant [21 x i8] c".compoundliteral.141\00", align 1
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 389, i32 2 }
@___asan_gen_.619 = private unnamed_addr constant [21 x i8] c".compoundliteral.143\00", align 1
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 390, i32 2 }
@___asan_gen_.623 = private unnamed_addr constant [21 x i8] c".compoundliteral.145\00", align 1
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 391, i32 2 }
@___asan_gen_.627 = private unnamed_addr constant [21 x i8] c".compoundliteral.147\00", align 1
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 392, i32 2 }
@___asan_gen_.631 = private unnamed_addr constant [21 x i8] c".compoundliteral.149\00", align 1
@___asan_gen_.632 = private unnamed_addr constant [21 x i8] c".compoundliteral.150\00", align 1
@___asan_gen_.633 = private unnamed_addr constant [21 x i8] c".compoundliteral.151\00", align 1
@___asan_gen_.634 = private unnamed_addr constant [21 x i8] c".compoundliteral.152\00", align 1
@___asan_gen_.635 = private unnamed_addr constant [21 x i8] c".compoundliteral.153\00", align 1
@___asan_gen_.636 = private unnamed_addr constant [21 x i8] c".compoundliteral.154\00", align 1
@___asan_gen_.637 = private unnamed_addr constant [21 x i8] c".compoundliteral.155\00", align 1
@___asan_gen_.638 = private unnamed_addr constant [21 x i8] c".compoundliteral.156\00", align 1
@___asan_gen_.639 = private unnamed_addr constant [21 x i8] c".compoundliteral.157\00", align 1
@___asan_gen_.640 = private unnamed_addr constant [21 x i8] c".compoundliteral.158\00", align 1
@___asan_gen_.641 = private unnamed_addr constant [21 x i8] c".compoundliteral.159\00", align 1
@___asan_gen_.642 = private unnamed_addr constant [21 x i8] c".compoundliteral.160\00", align 1
@___asan_gen_.643 = private unnamed_addr constant [21 x i8] c".compoundliteral.161\00", align 1
@___asan_gen_.644 = private unnamed_addr constant [21 x i8] c".compoundliteral.162\00", align 1
@___asan_gen_.645 = private unnamed_addr constant [21 x i8] c".compoundliteral.163\00", align 1
@___asan_gen_.646 = private unnamed_addr constant [21 x i8] c".compoundliteral.164\00", align 1
@___asan_gen_.647 = private unnamed_addr constant [21 x i8] c".compoundliteral.165\00", align 1
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 584, i32 11 }
@___asan_gen_.651 = private unnamed_addr constant [17 x i8] c"max98520_dai_ops\00", align 1
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 331, i32 37 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 80, i32 2 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 89, i32 3 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 282, i32 3 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 304, i32 3 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 189, i32 3 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 200, i32 2 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 245, i32 3 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 250, i32 2 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 260, i32 2 }
@___asan_gen_.702 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 153, i32 4 }
@___asan_gen_.708 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.709 = private constant [31 x i8] c"../sound/soc/codecs/max98520.c\00", align 1
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.709, i32 163, i32 2 }
@___asan_gen_.711 = private unnamed_addr constant [34 x i8] c"switch.table.max98520_dai_set_fmt\00", align 1
@llvm.compiler.used = appending global [231 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description302, ptr @__UNIQUE_ID_file304, ptr @__UNIQUE_ID_license305, ptr @__exitcall_max98520_i2c_driver_exit, ptr @__initcall__kmod_snd_soc_max98520__301_764_max98520_i2c_driver_init6, ptr @max98520_dai_hw_params._entry, ptr @max98520_dai_hw_params._entry.177, ptr @max98520_dai_hw_params._entry_ptr, ptr @max98520_dai_hw_params._entry_ptr.179, ptr @max98520_dai_set_fmt._entry, ptr @max98520_dai_set_fmt._entry_ptr, ptr @max98520_dai_tdm_slot._entry, ptr @max98520_dai_tdm_slot._entry.172, ptr @max98520_dai_tdm_slot._entry_ptr, ptr @max98520_dai_tdm_slot._entry_ptr.174, ptr @max98520_i2c_driver_exit, ptr @max98520_i2c_probe._entry, ptr @max98520_i2c_probe._entry.11, ptr @max98520_i2c_probe._entry.14, ptr @max98520_i2c_probe._entry.17, ptr @max98520_i2c_probe._entry.21, ptr @max98520_i2c_probe._entry.7, ptr @max98520_i2c_probe._entry_ptr, ptr @max98520_i2c_probe._entry_ptr.13, ptr @max98520_i2c_probe._entry_ptr.16, ptr @max98520_i2c_probe._entry_ptr.20, ptr @max98520_i2c_probe._entry_ptr.23, ptr @max98520_i2c_probe._entry_ptr.9, ptr @max98520_set_clock._entry, ptr @max98520_set_clock._entry_ptr, ptr @max98520_i2c_driver, ptr @.str, ptr @max98520_of_match, ptr @max98520_pm, ptr @max98520_i2c_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @max98520_i2c_probe._key, ptr @max98520_regmap, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.19, ptr @soc_codec_dev_max98520, ptr @max98520_dai, ptr @.str.22, ptr @max98520_reg, ptr @max98520_snd_controls, ptr @max98520_audio_map, ptr @.str.24, ptr @max98520_digital_tlv, ptr @.compoundliteral, ptr @.str.25, ptr @max98520_spk_tlv, ptr @.compoundliteral.26, ptr @.str.27, ptr @.compoundliteral.28, ptr @.str.29, ptr @.compoundliteral.30, ptr @.str.31, ptr @.compoundliteral.32, ptr @.str.33, ptr @.compoundliteral.34, ptr @.str.35, ptr @.compoundliteral.36, ptr @.str.37, ptr @.compoundliteral.38, ptr @.str.39, ptr @.compoundliteral.40, ptr @.str.41, ptr @.compoundliteral.42, ptr @.str.43, ptr @.compoundliteral.44, ptr @.str.45, ptr @.compoundliteral.46, ptr @.str.47, ptr @.compoundliteral.48, ptr @.str.49, ptr @max98520_dht_rotation_point_tlv, ptr @.compoundliteral.50, ptr @.str.51, ptr @max98520_dht_supply_hr_tlv, ptr @.compoundliteral.52, ptr @.str.53, ptr @max98520_dht_lim_thresh_tlv, ptr @.compoundliteral.54, ptr @.str.55, ptr @max98520_dht_max_atten_tlv, ptr @.compoundliteral.56, ptr @.str.57, ptr @max98520_dht_hysteresis_tlv, ptr @.compoundliteral.58, ptr @.str.59, ptr @max98520_dht_attack_rate_enum, ptr @.str.60, ptr @max98520_dht_release_rate_enum, ptr @.str.61, ptr @.compoundliteral.62, ptr @.str.63, ptr @.compoundliteral.64, ptr @.str.65, ptr @.compoundliteral.66, ptr @.str.67, ptr @.compoundliteral.68, ptr @.str.69, ptr @.compoundliteral.70, ptr @.str.71, ptr @.compoundliteral.72, ptr @.str.73, ptr @.compoundliteral.74, ptr @max98520_dht_attack_rate_text, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @max98520_dht_release_rate_text, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @max98520_dai_controls, ptr @.str.106, ptr @.str.107, ptr @max98520_left_input_mixer_controls, ptr @.str.108, ptr @max98520_right_input_mixer_controls, ptr @max98520_dapm_widgets, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @dai_sel_enum, ptr @max98520_switch_text, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.compoundliteral.119, ptr @.str.120, ptr @.compoundliteral.121, ptr @.str.122, ptr @.compoundliteral.123, ptr @.str.124, ptr @.compoundliteral.125, ptr @.str.126, ptr @.compoundliteral.127, ptr @.str.128, ptr @.compoundliteral.129, ptr @.str.130, ptr @.compoundliteral.131, ptr @.str.132, ptr @.compoundliteral.133, ptr @.str.134, ptr @.compoundliteral.135, ptr @.str.136, ptr @.compoundliteral.137, ptr @.str.138, ptr @.compoundliteral.139, ptr @.str.140, ptr @.compoundliteral.141, ptr @.str.142, ptr @.compoundliteral.143, ptr @.str.144, ptr @.compoundliteral.145, ptr @.str.146, ptr @.compoundliteral.147, ptr @.str.148, ptr @.compoundliteral.149, ptr @.compoundliteral.150, ptr @.compoundliteral.151, ptr @.compoundliteral.152, ptr @.compoundliteral.153, ptr @.compoundliteral.154, ptr @.compoundliteral.155, ptr @.compoundliteral.156, ptr @.compoundliteral.157, ptr @.compoundliteral.158, ptr @.compoundliteral.159, ptr @.compoundliteral.160, ptr @.compoundliteral.161, ptr @.compoundliteral.162, ptr @.compoundliteral.163, ptr @.compoundliteral.164, ptr @.compoundliteral.165, ptr @.str.166, ptr @max98520_dai_ops, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.173, ptr @.str.175, ptr @.str.176, ptr @.str.178, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @switch.table.max98520_dai_set_fmt], section "llvm.metadata"
@0 = internal global [212 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98520_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98520_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98520_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98520_i2c_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98520_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98520_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98520_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98520_i2c_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98520_i2c_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98520_i2c_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98520_i2c_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_codec_dev_max98520 to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98520_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98520_i2c_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98520_reg to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98520_snd_controls to i32), i32 1296, i32 1632, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98520_audio_map to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98520_digital_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98520_spk_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.26 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.28 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.30 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.32 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.34 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.36 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.38 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.40 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.42 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.44 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.46 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.48 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98520_dht_rotation_point_tlv to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.50 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98520_dht_supply_hr_tlv to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.52 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98520_dht_lim_thresh_tlv to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.54 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98520_dht_max_atten_tlv to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.56 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98520_dht_hysteresis_tlv to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.58 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98520_dht_attack_rate_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98520_dht_release_rate_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.62 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.64 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.66 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.68 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.70 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.72 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.74 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98520_dht_attack_rate_text to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98520_dht_release_rate_text to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98520_dai_controls to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98520_left_input_mixer_controls to i32), i32 768, i32 960, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98520_right_input_mixer_controls to i32), i32 768, i32 960, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98520_dapm_widgets to i32), i32 900, i32 1152, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dai_sel_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98520_switch_text to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.119 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.121 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.123 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.125 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.127 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.129 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.131 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.133 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.135 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.137 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.139 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.141 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.143 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.145 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.147 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.149 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.150 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.151 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.152 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.153 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.154 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.155 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.156 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.157 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.158 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.159 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.160 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.161 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.162 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.163 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.164 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.165 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98520_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98520_dai_set_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98520_dai_tdm_slot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98520_dai_tdm_slot._entry.172 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98520_dai_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98520_dai_hw_params._entry.177 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98520_set_clock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.max98520_dai_set_fmt to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max98520_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @max98520_i2c_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max98520_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @max98520_i2c_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98520_i2c_probe(ptr noundef %i2c, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #7
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %reg, align 4
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %parent = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 1
  %1 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %parent, align 8
  %add.ptr = getelementptr i8, ptr %2, i32 -200
  %algo.i.i = getelementptr i8, ptr %2, i32 -192
  %3 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %algo.i.i, align 8
  %functionality.i.i = getelementptr inbounds %struct.i2c_algorithm, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %functionality.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %functionality.i.i, align 4
  %call.i.i = tail call i32 %6(ptr noundef %add.ptr) #7
  %and.i = and i32 %call.i.i, 1966080
  call void @__sanitizer_cov_trace_const_cmp4(i32 1966080, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 1966080
  br i1 %cmp.i.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 16, i32 noundef 3520) #7
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %7 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call8 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef nonnull @max98520_regmap, ptr noundef nonnull @max98520_i2c_probe._key, ptr noundef nonnull @.str.6) #7
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call8, ptr %call.i, align 4
  %cmp.i89 = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i89, label %if.then11, label %if.end18

if.then11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %call8 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %9) #10
  br label %cleanup

if.end18:                                         ; preds = %if.end6
  %call20 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef 7) #7
  %reset_gpio = getelementptr inbounds %struct.max98520_priv, ptr %call.i, i32 0, i32 1
  %10 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call20, ptr %reset_gpio, align 4
  %tobool22.not = icmp eq ptr %call20, null
  br i1 %tobool22.not, label %if.end18.if.end34_crit_edge, label %if.then23

if.end18.if.end34_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.then23:                                        ; preds = %if.end18
  %cmp.i90 = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i90, label %if.then26, label %max98520_power_on.exit

if.then26:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %call20 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %11) #10
  br label %cleanup

max98520_power_on.exit:                           ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %call20, i32 noundef 0) #7
  br label %if.end34

if.end34:                                         ; preds = %max98520_power_on.exit, %if.end18.if.end34_crit_edge
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call.i, align 4
  %call36 = call i32 @regmap_read(ptr noundef %13, i32 noundef 8703, ptr noundef nonnull %reg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp = icmp slt i32 %call36, 0
  br i1 %cmp, label %do.end40, label %do.end45

do.end40:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef 8703) #10
  br label %cleanup

do.end45:                                         ; preds = %if.end34
  %14 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reg, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %15) #10
  %call48 = call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @soc_codec_dev_max98520, ptr noundef nonnull @max98520_dai, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %do.end53, label %do.end45.cleanup_crit_edge

do.end45.cleanup_crit_edge:                       ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end53:                                         ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef %call48) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end53, %do.end45.cleanup_crit_edge, %do.end40, %if.then26, %if.then11, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %9, %if.then11 ], [ %11, %if.then26 ], [ %call36, %do.end40 ], [ -6, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ %call48, %do.end53 ], [ %call48, %do.end45.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @max98520_readable_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %sw.default [
    i32 8192, label %entry.return_crit_edge
    i32 8231, label %entry.return_crit_edge10
    i32 8240, label %entry.return_crit_edge11
    i32 8247, label %entry.return_crit_edge12
    i32 8271, label %entry.return_crit_edge13
    i32 8351, label %entry.return_crit_edge14
    i32 8399, label %entry.return_crit_edge15
    i32 8408, label %entry.return_crit_edge16
    i32 8703, label %entry.return_crit_edge17
    i32 8545, label %entry.return_crit_edge18
    i32 8546, label %entry.return_crit_edge19
    i32 8547, label %entry.return_crit_edge20
    i32 8462, label %entry.return_crit_edge21
    i32 8463, label %entry.return_crit_edge22
    i32 8400, label %entry.return_crit_edge23
    i32 8401, label %entry.return_crit_edge24
    i32 8402, label %entry.return_crit_edge25
    i32 8403, label %entry.return_crit_edge26
    i32 8404, label %entry.return_crit_edge27
    i32 8405, label %entry.return_crit_edge28
    i32 8406, label %entry.return_crit_edge29
    i32 8368, label %entry.return_crit_edge30
    i32 8369, label %entry.return_crit_edge31
    i32 8370, label %entry.return_crit_edge32
    i32 8371, label %entry.return_crit_edge33
    i32 8372, label %entry.return_crit_edge34
    i32 8373, label %entry.return_crit_edge35
    i32 8374, label %entry.return_crit_edge36
    i32 8375, label %entry.return_crit_edge37
    i32 8376, label %entry.return_crit_edge38
    i32 8377, label %entry.return_crit_edge39
    i32 8378, label %entry.return_crit_edge40
    i32 8379, label %entry.return_crit_edge41
    i32 8380, label %entry.return_crit_edge42
    i32 8381, label %entry.return_crit_edge43
    i32 8340, label %entry.return_crit_edge44
    i32 8341, label %entry.return_crit_edge45
    i32 8336, label %entry.return_crit_edge46
    i32 8337, label %entry.return_crit_edge47
    i32 8338, label %entry.return_crit_edge48
    i32 8256, label %entry.return_crit_edge49
    i32 8257, label %entry.return_crit_edge50
    i32 8258, label %entry.return_crit_edge51
    i32 8259, label %entry.return_crit_edge52
    i32 8260, label %entry.return_crit_edge53
    i32 8224, label %entry.return_crit_edge54
    i32 8225, label %entry.return_crit_edge55
    i32 8226, label %entry.return_crit_edge56
    i32 8227, label %entry.return_crit_edge57
    i32 8193, label %entry.return_crit_edge58
    i32 8194, label %entry.return_crit_edge59
  ]

entry.return_crit_edge59:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge58:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge57:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge56:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge55:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge54:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge53:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge52:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge51:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge50:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge49:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge48:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge47:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge46:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge45:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge44:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge43:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge42:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge41:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge40:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge39:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge38:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge37:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge36:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge35:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge34:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge33:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge32:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge31:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge30:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30, %entry.return_crit_edge31, %entry.return_crit_edge32, %entry.return_crit_edge33, %entry.return_crit_edge34, %entry.return_crit_edge35, %entry.return_crit_edge36, %entry.return_crit_edge37, %entry.return_crit_edge38, %entry.return_crit_edge39, %entry.return_crit_edge40, %entry.return_crit_edge41, %entry.return_crit_edge42, %entry.return_crit_edge43, %entry.return_crit_edge44, %entry.return_crit_edge45, %entry.return_crit_edge46, %entry.return_crit_edge47, %entry.return_crit_edge48, %entry.return_crit_edge49, %entry.return_crit_edge50, %entry.return_crit_edge51, %entry.return_crit_edge52, %entry.return_crit_edge53, %entry.return_crit_edge54, %entry.return_crit_edge55, %entry.return_crit_edge56, %entry.return_crit_edge57, %entry.return_crit_edge58, %entry.return_crit_edge59
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ], [ true, %entry.return_crit_edge30 ], [ true, %entry.return_crit_edge31 ], [ true, %entry.return_crit_edge32 ], [ true, %entry.return_crit_edge33 ], [ true, %entry.return_crit_edge34 ], [ true, %entry.return_crit_edge35 ], [ true, %entry.return_crit_edge36 ], [ true, %entry.return_crit_edge37 ], [ true, %entry.return_crit_edge38 ], [ true, %entry.return_crit_edge39 ], [ true, %entry.return_crit_edge40 ], [ true, %entry.return_crit_edge41 ], [ true, %entry.return_crit_edge42 ], [ true, %entry.return_crit_edge43 ], [ true, %entry.return_crit_edge44 ], [ true, %entry.return_crit_edge45 ], [ true, %entry.return_crit_edge46 ], [ true, %entry.return_crit_edge47 ], [ true, %entry.return_crit_edge48 ], [ true, %entry.return_crit_edge49 ], [ true, %entry.return_crit_edge50 ], [ true, %entry.return_crit_edge51 ], [ true, %entry.return_crit_edge52 ], [ true, %entry.return_crit_edge53 ], [ true, %entry.return_crit_edge54 ], [ true, %entry.return_crit_edge55 ], [ true, %entry.return_crit_edge56 ], [ true, %entry.return_crit_edge57 ], [ true, %entry.return_crit_edge58 ], [ true, %entry.return_crit_edge59 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @max98520_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.184)
  switch i32 %reg, label %sw.default [
    i32 8463, label %entry.return_crit_edge
    i32 8703, label %entry.return_crit_edge3
    i32 8192, label %entry.return_crit_edge4
    i32 8372, label %entry.return_crit_edge5
    i32 8373, label %entry.return_crit_edge6
    i32 8374, label %entry.return_crit_edge7
    i32 8375, label %entry.return_crit_edge8
    i32 8376, label %entry.return_crit_edge9
    i32 8377, label %entry.return_crit_edge10
    i32 8378, label %entry.return_crit_edge11
    i32 8379, label %entry.return_crit_edge12
    i32 8380, label %entry.return_crit_edge13
    i32 8381, label %entry.return_crit_edge14
    i32 8193, label %entry.return_crit_edge15
    i32 8194, label %entry.return_crit_edge16
  ]

entry.return_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98520_probe(ptr nocapture noundef readonly %component) #2 align 64 {
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
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call1 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 8192, i32 noundef 1) #7
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %call3 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 8259, i32 noundef 2) #7
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %call5 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 8260, i32 noundef 16) #7
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 8338, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  %call9 = tail call i32 @regmap_write(ptr noundef %13, i32 noundef 8240, i32 noundef 1) #7
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  %call.i17 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 8271, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  ret i32 0
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98520_dac_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %dev.i = getelementptr i8, ptr %1, i32 -164
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %6 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.185)
  switch i32 %event, label %entry.cleanup_crit_edge [
    i32 2, label %do.body
    i32 8, label %do.body9
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max98520_dac_event.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max98520_dac_event, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !325

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max98520_dac_event.__UNIQUE_ID_ddebug299, ptr noundef %8, ptr noundef nonnull @.str.112) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %5, align 4
  %call5 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 8351, i32 noundef 1) #7
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %5, align 4
  %call7 = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 8463, i32 noundef 1) #7
  br label %cleanup.sink.split

do.body9:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max98520_dac_event.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max98520_dac_event, %if.then21)) #7
          to label %do.end25 [label %if.then21], !srcloc !325

if.then21:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max98520_dac_event.__UNIQUE_ID_ddebug300, ptr noundef %14, ptr noundef nonnull @.str.113) #7
  br label %do.end25

do.end25:                                         ; preds = %if.then21, %do.body9
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %5, align 4
  %call27 = tail call i32 @regmap_write(ptr noundef %16, i32 noundef 8463, i32 noundef 0) #7
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %5, align 4
  %call29 = tail call i32 @regmap_write(ptr noundef %18, i32 noundef 8351, i32 noundef 0) #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end25, %do.end
  tail call void @usleep_range_state(i32 noundef 30000, i32 noundef 31000, i32 noundef 2) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98520_dai_set_fmt(ptr nocapture noundef readonly %codec_dai, i32 noundef %fmt) #2 align 64 {
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max98520_dai_set_fmt.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max98520_dai_set_fmt, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !325

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max98520_dai_set_fmt.__UNIQUE_ID_ddebug294, ptr noundef %7, ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.167, i32 noundef %fmt) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %and = and i32 %fmt, 3840
  %8 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.186)
  switch i32 %and, label %do.end7 [
    i32 0, label %do.end.sw.epilog_crit_edge
    i32 768, label %sw.bb
  ]

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end7:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.169) #10
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb, %do.end.sw.epilog_crit_edge
  %invert.0 = phi i32 [ 16, %sw.bb ], [ %and, %do.end.sw.epilog_crit_edge ]
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %5, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 8257, i32 noundef 16, i32 noundef %invert.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %and10 = and i32 %fmt, 15
  %switch.tableidx = add nsw i32 %and10, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %13 = icmp ult i32 %switch.tableidx, 5
  br i1 %13, label %switch.hole_check, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.hole_check:                                ; preds = %sw.epilog
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 29, %switch.maskindex
  %14 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %switch.lobit.not = icmp eq i8 %14, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.max98520_dai_set_fmt, i32 0, i32 %switch.tableidx
  %15 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %15)
  %switch.load = load i32, ptr %switch.gep, align 4
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %5, align 4
  %call.i27 = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 8256, i32 noundef 56, i32 noundef %switch.load, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %switch.hole_check.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %do.end7
  %retval.0 = phi i32 [ -22, %do.end7 ], [ 0, %switch.lookup ], [ -22, %sw.epilog.cleanup_crit_edge ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98520_dai_tdm_slot(ptr nocapture noundef readonly %dai, i32 noundef %tx_mask, i32 noundef %rx_mask, i32 noundef %slots, i32 noundef %slot_width) #2 align 64 {
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
  %6 = or i32 %rx_mask, %tx_mask
  %7 = or i32 %6, %slots
  %8 = or i32 %7, %slot_width
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %9 = icmp ne i32 %8, 0
  %spec.select = zext i1 %9 to i8
  %10 = getelementptr inbounds %struct.max98520_priv, ptr %5, i32 0, i32 3
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %spec.select, ptr %10, align 4
  %mul = mul i32 %slot_width, %slots
  %12 = zext i32 %mul to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.187)
  switch i32 %mul, label %do.end [
    i32 32, label %entry.if.end11_crit_edge
    i32 48, label %cleanup.fold.split.i
    i32 64, label %cleanup.fold.split8.i
    i32 96, label %cleanup.fold.split9.i
    i32 128, label %cleanup.fold.split10.i
    i32 192, label %cleanup.fold.split11.i
    i32 256, label %cleanup.fold.split12.i
    i32 384, label %cleanup.fold.split13.i
    i32 512, label %cleanup.fold.split14.i
    i32 320, label %cleanup.fold.split15.i
  ]

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

cleanup.fold.split.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

cleanup.fold.split8.i:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

cleanup.fold.split9.i:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

cleanup.fold.split10.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

cleanup.fold.split11.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

cleanup.fold.split12.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

cleanup.fold.split13.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

cleanup.fold.split14.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

cleanup.fold.split15.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.170, i32 noundef %mul) #10
  br label %cleanup

if.end11:                                         ; preds = %cleanup.fold.split15.i, %cleanup.fold.split14.i, %cleanup.fold.split13.i, %cleanup.fold.split12.i, %cleanup.fold.split11.i, %cleanup.fold.split10.i, %cleanup.fold.split9.i, %cleanup.fold.split8.i, %cleanup.fold.split.i, %entry.if.end11_crit_edge
  %retval.0.i.ph = phi i32 [ 11, %cleanup.fold.split15.i ], [ 10, %cleanup.fold.split14.i ], [ 9, %cleanup.fold.split13.i ], [ 8, %cleanup.fold.split12.i ], [ 7, %cleanup.fold.split11.i ], [ 6, %cleanup.fold.split10.i ], [ 5, %cleanup.fold.split9.i ], [ 4, %cleanup.fold.split8.i ], [ 3, %cleanup.fold.split.i ], [ 2, %entry.if.end11_crit_edge ]
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %5, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 8257, i32 noundef 15, i32 noundef %retval.0.i.ph, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %17 = zext i32 %slot_width to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.188)
  switch i32 %slot_width, label %do.end17 [
    i32 16, label %if.end11.sw.epilog_crit_edge
    i32 24, label %sw.bb13
    i32 32, label %sw.bb14
  ]

if.end11.sw.epilog_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.173, i32 noundef %slot_width) #10
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb14, %sw.bb13, %if.end11.sw.epilog_crit_edge
  %chan_sz.0 = phi i32 [ 192, %sw.bb14 ], [ 128, %sw.bb13 ], [ 64, %if.end11.sw.epilog_crit_edge ]
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %5, align 4
  %call.i46 = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 8256, i32 noundef 192, i32 noundef %chan_sz.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %22 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %5, align 4
  %call.i47 = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 8260, i32 noundef 15, i32 noundef %rx_mask, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %24 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %5, align 4
  %shl = shl i32 %rx_mask, 15
  %call.i48 = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 8260, i32 noundef 491520, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end17, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end17 ], [ 0, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98520_dai_hw_params(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #2 align 64 {
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
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %entry.if.then.i.i_crit_edge

entry.if.then.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %for.inc.i.i.if.then.i.i_crit_edge, %entry.if.then.i.i_crit_edge
  %i.09.lcssa.i.i = phi i32 [ 0, %entry.if.then.i.i_crit_edge ], [ 32, %for.inc.i.i.if.then.i.i_crit_edge ]
  %.lcssa.i.i = phi i32 [ %7, %entry.if.then.i.i_crit_edge ], [ %10, %for.inc.i.i.if.then.i.i_crit_edge ]
  %8 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true) #7, !range !326
  %add.i.i = or i32 %8, %i.09.lcssa.i.i
  br label %params_format.exit

for.inc.i.i:                                      ; preds = %entry
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.1.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.params_format.exit_crit_edge, label %for.inc.i.i.if.then.i.i_crit_edge

for.inc.i.i.if.then.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

for.inc.i.i.params_format.exit_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %params_format.exit

params_format.exit:                               ; preds = %for.inc.i.i.params_format.exit_crit_edge, %if.then.i.i
  %retval.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ 0, %for.inc.i.i.params_format.exit_crit_edge ]
  %call3 = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i) #7
  %11 = zext i32 %call3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.189)
  switch i32 %call3, label %do.end [
    i32 16, label %params_format.exit.sw.epilog_crit_edge
    i32 24, label %sw.bb4
    i32 32, label %sw.bb5
  ]

params_format.exit.sw.epilog_crit_edge:           ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb4:                                           ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb5:                                           ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.end:                                           ; preds = %params_format.exit
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i.i105 = icmp eq i32 %15, 0
  br i1 %tobool.not.i.i105, label %for.inc.i.i112, label %do.end.if.then.i.i109_crit_edge

do.end.if.then.i.i109_crit_edge:                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i109

if.then.i.i109:                                   ; preds = %for.inc.i.i112.if.then.i.i109_crit_edge, %do.end.if.then.i.i109_crit_edge
  %i.09.lcssa.i.i106 = phi i32 [ 0, %do.end.if.then.i.i109_crit_edge ], [ 32, %for.inc.i.i112.if.then.i.i109_crit_edge ]
  %.lcssa.i.i107 = phi i32 [ %15, %do.end.if.then.i.i109_crit_edge ], [ %18, %for.inc.i.i112.if.then.i.i109_crit_edge ]
  %16 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i107, i1 true) #7, !range !326
  %add.i.i108 = or i32 %16, %i.09.lcssa.i.i106
  br label %params_format.exit114

for.inc.i.i112:                                   ; preds = %do.end
  %arrayidx.1.i.i110 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %17 = ptrtoint ptr %arrayidx.1.i.i110 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.1.i.i110, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.1.i.i111 = icmp eq i32 %18, 0
  br i1 %tobool.not.1.i.i111, label %for.inc.i.i112.params_format.exit114_crit_edge, label %for.inc.i.i112.if.then.i.i109_crit_edge

for.inc.i.i112.if.then.i.i109_crit_edge:          ; preds = %for.inc.i.i112
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i109

for.inc.i.i112.params_format.exit114_crit_edge:   ; preds = %for.inc.i.i112
  call void @__sanitizer_cov_trace_pc() #9
  br label %params_format.exit114

params_format.exit114:                            ; preds = %for.inc.i.i112.params_format.exit114_crit_edge, %if.then.i.i109
  %retval.0.i.i113 = phi i32 [ %add.i.i108, %if.then.i.i109 ], [ 0, %for.inc.i.i112.params_format.exit114_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.173, i32 noundef %retval.0.i.i113) #10
  br label %do.body62

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb4, %params_format.exit.sw.epilog_crit_edge
  %chan_sz.0 = phi i32 [ 192, %sw.bb5 ], [ 128, %sw.bb4 ], [ 64, %params_format.exit.sw.epilog_crit_edge ]
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i.i116 = icmp eq i32 %20, 0
  br i1 %tobool.not.i.i116, label %for.inc.i.i123, label %sw.epilog.if.then.i.i120_crit_edge

sw.epilog.if.then.i.i120_crit_edge:               ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i120

if.then.i.i120:                                   ; preds = %for.inc.i.i123.if.then.i.i120_crit_edge, %sw.epilog.if.then.i.i120_crit_edge
  %i.09.lcssa.i.i117 = phi i32 [ 0, %sw.epilog.if.then.i.i120_crit_edge ], [ 32, %for.inc.i.i123.if.then.i.i120_crit_edge ]
  %.lcssa.i.i118 = phi i32 [ %20, %sw.epilog.if.then.i.i120_crit_edge ], [ %23, %for.inc.i.i123.if.then.i.i120_crit_edge ]
  %21 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i118, i1 true) #7, !range !326
  %add.i.i119 = or i32 %21, %i.09.lcssa.i.i117
  br label %params_format.exit125

for.inc.i.i123:                                   ; preds = %sw.epilog
  %arrayidx.1.i.i121 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %22 = ptrtoint ptr %arrayidx.1.i.i121 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.1.i.i121, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.1.i.i122 = icmp eq i32 %23, 0
  br i1 %tobool.not.1.i.i122, label %for.inc.i.i123.params_format.exit125_crit_edge, label %for.inc.i.i123.if.then.i.i120_crit_edge

for.inc.i.i123.if.then.i.i120_crit_edge:          ; preds = %for.inc.i.i123
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i120

for.inc.i.i123.params_format.exit125_crit_edge:   ; preds = %for.inc.i.i123
  call void @__sanitizer_cov_trace_pc() #9
  br label %params_format.exit125

params_format.exit125:                            ; preds = %for.inc.i.i123.params_format.exit125_crit_edge, %if.then.i.i120
  %retval.0.i.i124 = phi i32 [ %add.i.i119, %if.then.i.i120 ], [ 0, %for.inc.i.i123.params_format.exit125_crit_edge ]
  %call8 = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i124) #7
  %ch_size = getelementptr inbounds %struct.max98520_priv, ptr %5, i32 0, i32 2
  %24 = ptrtoint ptr %ch_size to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call8, ptr %ch_size, align 4
  %25 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %5, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef 8256, i32 noundef 192, i32 noundef %chan_sz.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max98520_dai_hw_params.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max98520_dai_hw_params, %if.then)) #7
          to label %do.end17 [label %if.then], !srcloc !325

if.then:                                          ; preds = %params_format.exit125
  %27 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i, align 4
  %29 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i.i127 = icmp eq i32 %30, 0
  br i1 %tobool.not.i.i127, label %for.inc.i.i134, label %if.then.if.then.i.i131_crit_edge

if.then.if.then.i.i131_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i131

if.then.i.i131:                                   ; preds = %for.inc.i.i134.if.then.i.i131_crit_edge, %if.then.if.then.i.i131_crit_edge
  %i.09.lcssa.i.i128 = phi i32 [ 0, %if.then.if.then.i.i131_crit_edge ], [ 32, %for.inc.i.i134.if.then.i.i131_crit_edge ]
  %.lcssa.i.i129 = phi i32 [ %30, %if.then.if.then.i.i131_crit_edge ], [ %33, %for.inc.i.i134.if.then.i.i131_crit_edge ]
  %31 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i129, i1 true) #7, !range !326
  %add.i.i130 = or i32 %31, %i.09.lcssa.i.i128
  br label %params_format.exit136

for.inc.i.i134:                                   ; preds = %if.then
  %arrayidx.1.i.i132 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %32 = ptrtoint ptr %arrayidx.1.i.i132 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.1.i.i132, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.1.i.i133 = icmp eq i32 %33, 0
  br i1 %tobool.not.1.i.i133, label %for.inc.i.i134.params_format.exit136_crit_edge, label %for.inc.i.i134.if.then.i.i131_crit_edge

for.inc.i.i134.if.then.i.i131_crit_edge:          ; preds = %for.inc.i.i134
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i131

for.inc.i.i134.params_format.exit136_crit_edge:   ; preds = %for.inc.i.i134
  call void @__sanitizer_cov_trace_pc() #9
  br label %params_format.exit136

params_format.exit136:                            ; preds = %for.inc.i.i134.params_format.exit136_crit_edge, %if.then.i.i131
  %retval.0.i.i135 = phi i32 [ %add.i.i130, %if.then.i.i131 ], [ 0, %for.inc.i.i134.params_format.exit136_crit_edge ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max98520_dai_hw_params.__UNIQUE_ID_ddebug296, ptr noundef %28, ptr noundef nonnull @.str.176, i32 noundef %retval.0.i.i135) #7
  br label %do.end17

do.end17:                                         ; preds = %params_format.exit136, %params_format.exit125
  %arrayidx.i.i137 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %34 = ptrtoint ptr %arrayidx.i.i137 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i.i137, align 4
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.190)
  switch i32 %35, label %do.end35 [
    i32 8000, label %do.end17.do.body39_crit_edge
    i32 11025, label %sw.bb20
    i32 12000, label %sw.bb21
    i32 16000, label %sw.bb22
    i32 22050, label %sw.bb23
    i32 24000, label %sw.bb24
    i32 32000, label %sw.bb25
    i32 44100, label %sw.bb26
    i32 48000, label %sw.bb27
    i32 88200, label %sw.bb28
    i32 96000, label %sw.bb29
    i32 176400, label %sw.bb30
    i32 192000, label %sw.bb31
  ]

do.end17.do.body39_crit_edge:                     ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body39

sw.bb20:                                          ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body39

sw.bb21:                                          ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body39

sw.bb22:                                          ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body39

sw.bb23:                                          ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body39

sw.bb24:                                          ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body39

sw.bb25:                                          ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body39

sw.bb26:                                          ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body39

sw.bb27:                                          ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body39

sw.bb28:                                          ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body39

sw.bb29:                                          ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body39

sw.bb30:                                          ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body39

sw.bb31:                                          ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body39

do.end35:                                         ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.178, i32 noundef %35) #10
  br label %do.body62

do.body39:                                        ; preds = %sw.bb31, %sw.bb30, %sw.bb29, %sw.bb28, %sw.bb27, %sw.bb26, %sw.bb25, %sw.bb24, %sw.bb23, %sw.bb22, %sw.bb21, %sw.bb20, %do.end17.do.body39_crit_edge
  %sampling_rate.0 = phi i32 [ 12, %sw.bb31 ], [ 11, %sw.bb30 ], [ 10, %sw.bb29 ], [ 9, %sw.bb28 ], [ 8, %sw.bb27 ], [ 7, %sw.bb26 ], [ 6, %sw.bb25 ], [ 5, %sw.bb24 ], [ 4, %sw.bb23 ], [ 3, %sw.bb22 ], [ 2, %sw.bb21 ], [ 1, %sw.bb20 ], [ 0, %do.end17.do.body39_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max98520_dai_hw_params.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max98520_dai_hw_params, %if.then51)) #7
          to label %do.end58 [label %if.then51], !srcloc !325

if.then51:                                        ; preds = %do.body39
  %39 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev.i, align 4
  %41 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i.i140 = icmp eq i32 %42, 0
  br i1 %tobool.not.i.i140, label %for.inc.i.i147, label %if.then51.if.then.i.i144_crit_edge

if.then51.if.then.i.i144_crit_edge:               ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i144

if.then.i.i144:                                   ; preds = %for.inc.i.i147.if.then.i.i144_crit_edge, %if.then51.if.then.i.i144_crit_edge
  %i.09.lcssa.i.i141 = phi i32 [ 0, %if.then51.if.then.i.i144_crit_edge ], [ 32, %for.inc.i.i147.if.then.i.i144_crit_edge ]
  %.lcssa.i.i142 = phi i32 [ %42, %if.then51.if.then.i.i144_crit_edge ], [ %45, %for.inc.i.i147.if.then.i.i144_crit_edge ]
  %43 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i142, i1 true) #7, !range !326
  %add.i.i143 = or i32 %43, %i.09.lcssa.i.i141
  br label %params_format.exit149

for.inc.i.i147:                                   ; preds = %if.then51
  %arrayidx.1.i.i145 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %44 = ptrtoint ptr %arrayidx.1.i.i145 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.1.i.i145, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.1.i.i146 = icmp eq i32 %45, 0
  br i1 %tobool.not.1.i.i146, label %for.inc.i.i147.params_format.exit149_crit_edge, label %for.inc.i.i147.if.then.i.i144_crit_edge

for.inc.i.i147.if.then.i.i144_crit_edge:          ; preds = %for.inc.i.i147
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i144

for.inc.i.i147.params_format.exit149_crit_edge:   ; preds = %for.inc.i.i147
  call void @__sanitizer_cov_trace_pc() #9
  br label %params_format.exit149

params_format.exit149:                            ; preds = %for.inc.i.i147.params_format.exit149_crit_edge, %if.then.i.i144
  %retval.0.i.i148 = phi i32 [ %add.i.i143, %if.then.i.i144 ], [ 0, %for.inc.i.i147.params_format.exit149_crit_edge ]
  %call54 = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i148) #7
  %46 = ptrtoint ptr %arrayidx.i.i137 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.i.i137, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max98520_dai_hw_params.__UNIQUE_ID_ddebug297, ptr noundef %40, ptr noundef nonnull @.str.180, ptr noundef nonnull @.str.175, i32 noundef %call54, i32 noundef %47) #7
  br label %do.end58

do.end58:                                         ; preds = %params_format.exit149, %do.body39
  %48 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %5, align 4
  %call.i151 = tail call i32 @regmap_update_bits_base(ptr noundef %49, i32 noundef 8258, i32 noundef 15, i32 noundef %sampling_rate.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %call61 = tail call fastcc i32 @max98520_set_clock(ptr noundef %1, ptr noundef %params)
  br label %cleanup

do.body62:                                        ; preds = %do.end35, %params_format.exit114
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max98520_dai_hw_params.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max98520_dai_hw_params, %if.then74)) #7
          to label %cleanup [label %if.then74], !srcloc !325

if.then74:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max98520_dai_hw_params.__UNIQUE_ID_ddebug298, ptr noundef %51, ptr noundef nonnull @.str.181, ptr noundef nonnull @.str.175) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then74, %do.body62, %do.end58
  %retval.0 = phi i32 [ %call61, %do.end58 ], [ -22, %if.then74 ], [ -22, %do.body62 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @max98520_set_clock(ptr nocapture noundef readonly %component, ptr nocapture noundef readonly %params) unnamed_addr #2 align 64 {
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
  %tdm_mode = getelementptr inbounds %struct.max98520_priv, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %tdm_mode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tdm_mode, align 4, !range !327
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.then, label %entry.do.body8_crit_edge

entry.do.body8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body8

if.then:                                          ; preds = %entry
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i, align 4
  %ch_size = getelementptr inbounds %struct.max98520_priv, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %ch_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ch_size, align 4
  %mul = mul i32 %9, %7
  %10 = zext i32 %mul to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.191)
  switch i32 %mul, label %do.end [
    i32 32, label %if.then.if.end_crit_edge
    i32 48, label %cleanup.fold.split.i
    i32 64, label %cleanup.fold.split8.i
    i32 96, label %cleanup.fold.split9.i
    i32 128, label %cleanup.fold.split10.i
    i32 192, label %cleanup.fold.split11.i
    i32 256, label %cleanup.fold.split12.i
    i32 384, label %cleanup.fold.split13.i
    i32 512, label %cleanup.fold.split14.i
    i32 320, label %cleanup.fold.split15.i
  ]

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

cleanup.fold.split.i:                             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

cleanup.fold.split8.i:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

cleanup.fold.split9.i:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

cleanup.fold.split10.i:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

cleanup.fold.split11.i:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

cleanup.fold.split12.i:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

cleanup.fold.split13.i:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

cleanup.fold.split14.i:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

cleanup.fold.split15.i:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %if.then
  %arrayidx.i.i30 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %arrayidx.i.i30 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %do.end.if.then.i.i_crit_edge

do.end.if.then.i.i_crit_edge:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %for.inc.i.i.if.then.i.i_crit_edge, %do.end.if.then.i.i_crit_edge
  %i.09.lcssa.i.i = phi i32 [ 0, %do.end.if.then.i.i_crit_edge ], [ 32, %for.inc.i.i.if.then.i.i_crit_edge ]
  %.lcssa.i.i = phi i32 [ %12, %do.end.if.then.i.i_crit_edge ], [ %15, %for.inc.i.i.if.then.i.i_crit_edge ]
  %13 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true) #7, !range !326
  %add.i.i = or i32 %13, %i.09.lcssa.i.i
  br label %params_format.exit

for.inc.i.i:                                      ; preds = %do.end
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %14 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.1.i.i = icmp eq i32 %15, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.params_format.exit_crit_edge, label %for.inc.i.i.if.then.i.i_crit_edge

for.inc.i.i.if.then.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

for.inc.i.i.params_format.exit_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %params_format.exit

params_format.exit:                               ; preds = %for.inc.i.i.params_format.exit_crit_edge, %if.then.i.i
  %retval.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ 0, %for.inc.i.i.params_format.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.173, i32 noundef %retval.0.i.i) #10
  br label %cleanup

if.end:                                           ; preds = %cleanup.fold.split15.i, %cleanup.fold.split14.i, %cleanup.fold.split13.i, %cleanup.fold.split12.i, %cleanup.fold.split11.i, %cleanup.fold.split10.i, %cleanup.fold.split9.i, %cleanup.fold.split8.i, %cleanup.fold.split.i, %if.then.if.end_crit_edge
  %retval.0.i29.ph = phi i32 [ 11, %cleanup.fold.split15.i ], [ 10, %cleanup.fold.split14.i ], [ 9, %cleanup.fold.split13.i ], [ 8, %cleanup.fold.split12.i ], [ 7, %cleanup.fold.split11.i ], [ 6, %cleanup.fold.split10.i ], [ 5, %cleanup.fold.split9.i ], [ 4, %cleanup.fold.split8.i ], [ 3, %cleanup.fold.split.i ], [ 2, %if.then.if.end_crit_edge ]
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 8257, i32 noundef 15, i32 noundef %retval.0.i29.ph, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %do.body8

do.body8:                                         ; preds = %if.end, %entry.do.body8_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max98520_set_clock.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max98520_set_clock, %if.then13)) #7
          to label %cleanup [label %if.then13], !srcloc !325

if.then13:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  %20 = ptrtoint ptr %tdm_mode to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %tdm_mode, align 4, !range !327
  %22 = zext i8 %21 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max98520_set_clock.__UNIQUE_ID_ddebug295, ptr noundef %19, ptr noundef nonnull @.str.183, ptr noundef nonnull @.str.182, i32 noundef %22) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %do.body8, %params_format.exit
  %retval.0 = phi i32 [ -22, %params_format.exit ], [ 0, %if.then13 ], [ 0, %do.body8 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98520_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @regcache_cache_only(ptr noundef %3, i1 noundef zeroext true) #7
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void @regcache_mark_dirty(ptr noundef %5) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max98520_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @regcache_cache_only(ptr noundef %3, i1 noundef zeroext false) #7
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call2 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 8192, i32 noundef 1) #7
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %call4 = tail call i32 @regcache_sync(ptr noundef %7) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 212)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 212)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !27, !28, !29, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !44, !46, !47, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !191, !193, !195, !197, !199, !201, !203, !204, !205, !206, !208, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !270, !271, !273, !274, !275, !277, !278, !279, !280, !282, !283, !284, !286, !288, !289, !290, !292, !293, !295, !296, !297, !299, !300, !302, !303, !305, !306, !307, !309, !310, !312, !314}
!llvm.module.flags = !{!316, !317, !318, !319, !320, !321, !322, !323}
!llvm.ident = !{!324}

!0 = !{ptr @__initcall__kmod_snd_soc_max98520__301_764_max98520_i2c_driver_init6, !1, !"__initcall__kmod_snd_soc_max98520__301_764_max98520_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/max98520.c", i32 764, i32 1}
!2 = !{ptr @__exitcall_max98520_i2c_driver_exit, !1, !"__exitcall_max98520_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description302, !4, !"__UNIQUE_ID_description302", i1 false, i1 false}
!4 = !{!"../sound/soc/codecs/max98520.c", i32 766, i32 1}
!5 = !{ptr @__UNIQUE_ID_author303, !6, !"__UNIQUE_ID_author303", i1 false, i1 false}
!6 = !{!"../sound/soc/codecs/max98520.c", i32 767, i32 1}
!7 = !{ptr @__UNIQUE_ID_file304, !8, !"__UNIQUE_ID_file304", i1 false, i1 false}
!8 = !{!"../sound/soc/codecs/max98520.c", i32 768, i32 1}
!9 = !{ptr @__UNIQUE_ID_license305, !8, !"__UNIQUE_ID_license305", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/codecs/max98520.c", i32 756, i32 11}
!12 = !{ptr @max98520_i2c_driver, !13, !"max98520_i2c_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/max98520.c", i32 754, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/max98520.c", i32 689, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @max98520_i2c_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @max98520_i2c_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @max98520_i2c_probe._key, !23, !"_key", i1 false, i1 false}
!23 = !{!"../sound/soc/codecs/max98520.c", i32 701, i32 21}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../sound/soc/codecs/max98520.c", i32 704, i32 3}
!27 = !{ptr @max98520_i2c_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @max98520_i2c_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/soc/codecs/max98520.c", i32 709, i32 60}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/soc/codecs/max98520.c", i32 713, i32 4}
!33 = !{ptr @max98520_i2c_probe._entry.11, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @max98520_i2c_probe._entry_ptr.13, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/soc/codecs/max98520.c", i32 723, i32 3}
!37 = !{ptr @max98520_i2c_probe._entry.14, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @max98520_i2c_probe._entry_ptr.16, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/soc/codecs/max98520.c", i32 727, i32 2}
!41 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @max98520_i2c_probe._entry.17, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @max98520_i2c_probe._entry_ptr.20, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/codecs/max98520.c", i32 734, i32 3}
!46 = !{ptr @max98520_i2c_probe._entry.21, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @max98520_i2c_probe._entry_ptr.23, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @max98520_regmap, !49, !"max98520_regmap", i1 false, i1 false}
!49 = !{!"../sound/soc/codecs/max98520.c", i32 663, i32 35}
!50 = !{ptr @max98520_reg, !51, !"max98520_reg", i1 false, i1 false}
!51 = !{!"../sound/soc/codecs/max98520.c", i32 21, i32 27}
!52 = !{ptr @soc_codec_dev_max98520, !53, !"soc_codec_dev_max98520", i1 false, i1 false}
!53 = !{!"../sound/soc/codecs/max98520.c", i32 649, i32 46}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/codecs/max98520.c", i32 519, i32 1}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/codecs/max98520.c", i32 521, i32 1}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/soc/codecs/max98520.c", i32 524, i32 1}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/codecs/max98520.c", i32 526, i32 1}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/soc/codecs/max98520.c", i32 529, i32 1}
!64 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/codecs/max98520.c", i32 532, i32 1}
!66 = !{ptr @.str.35, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/soc/codecs/max98520.c", i32 535, i32 1}
!68 = !{ptr @.str.37, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/soc/codecs/max98520.c", i32 538, i32 1}
!70 = !{ptr @.str.39, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/soc/codecs/max98520.c", i32 541, i32 1}
!72 = !{ptr @.str.41, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/soc/codecs/max98520.c", i32 544, i32 1}
!74 = !{ptr @.str.43, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/soc/codecs/max98520.c", i32 547, i32 1}
!76 = !{ptr @.str.45, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/codecs/max98520.c", i32 548, i32 1}
!78 = !{ptr @.str.47, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/codecs/max98520.c", i32 550, i32 1}
!80 = !{ptr @.str.49, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/soc/codecs/max98520.c", i32 552, i32 1}
!82 = !{ptr @.str.51, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/codecs/max98520.c", i32 554, i32 1}
!84 = !{ptr @.str.53, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/soc/codecs/max98520.c", i32 556, i32 1}
!86 = !{ptr @.str.55, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/soc/codecs/max98520.c", i32 558, i32 1}
!88 = !{ptr @.str.57, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/soc/codecs/max98520.c", i32 560, i32 1}
!90 = !{ptr @.str.59, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/soc/codecs/max98520.c", i32 562, i32 1}
!92 = !{ptr @.str.60, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/soc/codecs/max98520.c", i32 563, i32 1}
!94 = !{ptr @.str.61, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/soc/codecs/max98520.c", i32 565, i32 1}
!96 = !{ptr @.str.63, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/soc/codecs/max98520.c", i32 566, i32 1}
!98 = !{ptr @.str.65, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/soc/codecs/max98520.c", i32 567, i32 1}
!100 = !{ptr @.str.67, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/soc/codecs/max98520.c", i32 568, i32 1}
!102 = !{ptr @.str.69, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/soc/codecs/max98520.c", i32 569, i32 1}
!104 = !{ptr @.str.71, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/soc/codecs/max98520.c", i32 570, i32 1}
!106 = !{ptr @.str.73, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/soc/codecs/max98520.c", i32 571, i32 1}
!108 = !{ptr @max98520_snd_controls, !109, !"max98520_snd_controls", i1 false, i1 false}
!109 = !{!"../sound/soc/codecs/max98520.c", i32 517, i32 38}
!110 = !{ptr @max98520_digital_tlv, !111, !"max98520_digital_tlv", i1 false, i1 false}
!111 = !{!"../sound/soc/codecs/max98520.c", i32 430, i32 14}
!112 = !{ptr @max98520_spk_tlv, !113, !"max98520_spk_tlv", i1 false, i1 false}
!113 = !{!"../sound/soc/codecs/max98520.c", i32 431, i32 14}
!114 = !{ptr @max98520_dht_rotation_point_tlv, !115, !"max98520_dht_rotation_point_tlv", i1 false, i1 false}
!115 = !{!"../sound/soc/codecs/max98520.c", i32 442, i32 14}
!116 = !{ptr @max98520_dht_supply_hr_tlv, !117, !"max98520_dht_supply_hr_tlv", i1 false, i1 false}
!117 = !{!"../sound/soc/codecs/max98520.c", i32 448, i32 14}
!118 = !{ptr @max98520_dht_lim_thresh_tlv, !119, !"max98520_dht_lim_thresh_tlv", i1 false, i1 false}
!119 = !{!"../sound/soc/codecs/max98520.c", i32 433, i32 14}
!120 = !{ptr @max98520_dht_max_atten_tlv, !121, !"max98520_dht_max_atten_tlv", i1 false, i1 false}
!121 = !{!"../sound/soc/codecs/max98520.c", i32 452, i32 14}
!122 = !{ptr @max98520_dht_hysteresis_tlv, !123, !"max98520_dht_hysteresis_tlv", i1 false, i1 false}
!123 = !{!"../sound/soc/codecs/max98520.c", i32 437, i32 14}
!124 = !{ptr @max98520_dht_attack_rate_enum, !125, !"max98520_dht_attack_rate_enum", i1 false, i1 false}
!125 = !{!"../sound/soc/codecs/max98520.c", i32 462, i32 8}
!126 = !{ptr @.str.75, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/soc/codecs/max98520.c", i32 457, i32 2}
!128 = !{ptr @.str.76, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/soc/codecs/max98520.c", i32 457, i32 10}
!130 = !{ptr @.str.77, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/soc/codecs/max98520.c", i32 457, i32 18}
!132 = !{ptr @.str.78, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../sound/soc/codecs/max98520.c", i32 457, i32 26}
!134 = !{ptr @.str.79, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../sound/soc/codecs/max98520.c", i32 457, i32 35}
!136 = !{ptr @.str.80, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../sound/soc/codecs/max98520.c", i32 457, i32 44}
!138 = !{ptr @.str.81, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/soc/codecs/max98520.c", i32 458, i32 2}
!140 = !{ptr @.str.82, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../sound/soc/codecs/max98520.c", i32 458, i32 12}
!142 = !{ptr @.str.83, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../sound/soc/codecs/max98520.c", i32 458, i32 22}
!144 = !{ptr @.str.84, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../sound/soc/codecs/max98520.c", i32 458, i32 32}
!146 = !{ptr @.str.85, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../sound/soc/codecs/max98520.c", i32 458, i32 43}
!148 = !{ptr @.str.86, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../sound/soc/codecs/max98520.c", i32 458, i32 54}
!150 = !{ptr @.str.87, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../sound/soc/codecs/max98520.c", i32 459, i32 2}
!152 = !{ptr @.str.88, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../sound/soc/codecs/max98520.c", i32 459, i32 13}
!154 = !{ptr @max98520_dht_attack_rate_text, !155, !"max98520_dht_attack_rate_text", i1 false, i1 false}
!155 = !{!"../sound/soc/codecs/max98520.c", i32 456, i32 27}
!156 = !{ptr @max98520_dht_release_rate_enum, !157, !"max98520_dht_release_rate_enum", i1 false, i1 false}
!157 = !{!"../sound/soc/codecs/max98520.c", i32 471, i32 8}
!158 = !{ptr @.str.89, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../sound/soc/codecs/max98520.c", i32 467, i32 2}
!160 = !{ptr @.str.90, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../sound/soc/codecs/max98520.c", i32 467, i32 9}
!162 = !{ptr @.str.91, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../sound/soc/codecs/max98520.c", i32 467, i32 16}
!164 = !{ptr @.str.92, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../sound/soc/codecs/max98520.c", i32 467, i32 23}
!166 = !{ptr @.str.93, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../sound/soc/codecs/max98520.c", i32 467, i32 31}
!168 = !{ptr @.str.94, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../sound/soc/codecs/max98520.c", i32 467, i32 39}
!170 = !{ptr @.str.95, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../sound/soc/codecs/max98520.c", i32 467, i32 47}
!172 = !{ptr @.str.96, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../sound/soc/codecs/max98520.c", i32 467, i32 56}
!174 = !{ptr @.str.97, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../sound/soc/codecs/max98520.c", i32 467, i32 65}
!176 = !{ptr @.str.98, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../sound/soc/codecs/max98520.c", i32 468, i32 2}
!178 = !{ptr @.str.99, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../sound/soc/codecs/max98520.c", i32 468, i32 12}
!180 = !{ptr @.str.100, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../sound/soc/codecs/max98520.c", i32 468, i32 22}
!182 = !{ptr @.str.101, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../sound/soc/codecs/max98520.c", i32 468, i32 32}
!184 = !{ptr @.str.102, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../sound/soc/codecs/max98520.c", i32 468, i32 42}
!186 = !{ptr @max98520_dht_release_rate_text, !187, !"max98520_dht_release_rate_text", i1 false, i1 false}
!187 = !{!"../sound/soc/codecs/max98520.c", i32 466, i32 27}
!188 = !{ptr @.str.103, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../sound/soc/codecs/max98520.c", i32 415, i32 2}
!190 = !{ptr @.str.104, !189, !"<string literal>", i1 false, i1 false}
!191 = !{ptr @.str.105, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../sound/soc/codecs/max98520.c", i32 418, i32 2}
!193 = !{ptr @.str.106, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../sound/soc/codecs/max98520.c", i32 419, i32 2}
!195 = !{ptr @.str.107, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../sound/soc/codecs/max98520.c", i32 421, i32 2}
!197 = !{ptr @.str.108, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../sound/soc/codecs/max98520.c", i32 425, i32 2}
!199 = !{ptr @max98520_dapm_widgets, !200, !"max98520_dapm_widgets", i1 false, i1 false}
!200 = !{!"../sound/soc/codecs/max98520.c", i32 414, i32 41}
!201 = !{ptr @.str.110, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../sound/soc/codecs/max98520.c", i32 347, i32 3}
!203 = !{ptr @.str.111, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @.str.112, !202, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @max98520_dac_event.__UNIQUE_ID_ddebug299, !202, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!206 = !{ptr @.str.113, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../sound/soc/codecs/max98520.c", i32 354, i32 3}
!208 = !{ptr @max98520_dac_event.__UNIQUE_ID_ddebug300, !207, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!209 = !{ptr @.str.114, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../sound/soc/codecs/max98520.c", i32 374, i32 2}
!211 = !{ptr @max98520_dai_controls, !212, !"max98520_dai_controls", i1 false, i1 false}
!212 = !{!"../sound/soc/codecs/max98520.c", i32 373, i32 38}
!213 = !{ptr @dai_sel_enum, !214, !"dai_sel_enum", i1 false, i1 false}
!214 = !{!"../sound/soc/codecs/max98520.c", i32 369, i32 30}
!215 = !{ptr @.str.115, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../sound/soc/codecs/max98520.c", i32 367, i32 2}
!217 = !{ptr @.str.116, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../sound/soc/codecs/max98520.c", i32 367, i32 10}
!219 = !{ptr @.str.117, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../sound/soc/codecs/max98520.c", i32 367, i32 19}
!221 = !{ptr @max98520_switch_text, !222, !"max98520_switch_text", i1 false, i1 false}
!222 = !{!"../sound/soc/codecs/max98520.c", i32 366, i32 27}
!223 = !{ptr @.str.118, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../sound/soc/codecs/max98520.c", i32 377, i32 2}
!225 = !{ptr @.str.120, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../sound/soc/codecs/max98520.c", i32 378, i32 2}
!227 = !{ptr @.str.122, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../sound/soc/codecs/max98520.c", i32 379, i32 2}
!229 = !{ptr @.str.124, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../sound/soc/codecs/max98520.c", i32 380, i32 2}
!231 = !{ptr @.str.126, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../sound/soc/codecs/max98520.c", i32 381, i32 2}
!233 = !{ptr @.str.128, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../sound/soc/codecs/max98520.c", i32 382, i32 2}
!235 = !{ptr @.str.130, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../sound/soc/codecs/max98520.c", i32 383, i32 2}
!237 = !{ptr @.str.132, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../sound/soc/codecs/max98520.c", i32 384, i32 2}
!239 = !{ptr @.str.134, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../sound/soc/codecs/max98520.c", i32 385, i32 2}
!241 = !{ptr @.str.136, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../sound/soc/codecs/max98520.c", i32 386, i32 2}
!243 = !{ptr @.str.138, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../sound/soc/codecs/max98520.c", i32 387, i32 2}
!245 = !{ptr @.str.140, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../sound/soc/codecs/max98520.c", i32 388, i32 2}
!247 = !{ptr @.str.142, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../sound/soc/codecs/max98520.c", i32 389, i32 2}
!249 = !{ptr @.str.144, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../sound/soc/codecs/max98520.c", i32 390, i32 2}
!251 = !{ptr @.str.146, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../sound/soc/codecs/max98520.c", i32 391, i32 2}
!253 = !{ptr @.str.148, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../sound/soc/codecs/max98520.c", i32 392, i32 2}
!255 = !{ptr @max98520_left_input_mixer_controls, !256, !"max98520_left_input_mixer_controls", i1 false, i1 false}
!256 = !{!"../sound/soc/codecs/max98520.c", i32 376, i32 38}
!257 = !{ptr @max98520_right_input_mixer_controls, !258, !"max98520_right_input_mixer_controls", i1 false, i1 false}
!258 = !{!"../sound/soc/codecs/max98520.c", i32 395, i32 38}
!259 = !{ptr @max98520_audio_map, !260, !"max98520_audio_map", i1 false, i1 false}
!260 = !{!"../sound/soc/codecs/max98520.c", i32 574, i32 40}
!261 = !{ptr @.str.166, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../sound/soc/codecs/max98520.c", i32 584, i32 11}
!263 = !{ptr @max98520_dai, !264, !"max98520_dai", i1 false, i1 false}
!264 = !{!"../sound/soc/codecs/max98520.c", i32 582, i32 34}
!265 = !{ptr @max98520_dai_ops, !266, !"max98520_dai_ops", i1 false, i1 false}
!266 = !{!"../sound/soc/codecs/max98520.c", i32 331, i32 37}
!267 = !{ptr @.str.167, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../sound/soc/codecs/max98520.c", i32 80, i32 2}
!269 = !{ptr @.str.168, !268, !"<string literal>", i1 false, i1 false}
!270 = !{ptr @max98520_dai_set_fmt.__UNIQUE_ID_ddebug294, !268, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!271 = !{ptr @.str.169, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../sound/soc/codecs/max98520.c", i32 89, i32 3}
!273 = !{ptr @max98520_dai_set_fmt._entry, !272, !"_entry", i1 false, i1 false}
!274 = !{ptr @max98520_dai_set_fmt._entry_ptr, !272, !"_entry_ptr", i1 false, i1 false}
!275 = !{ptr @.str.170, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../sound/soc/codecs/max98520.c", i32 282, i32 3}
!277 = !{ptr @.str.171, !276, !"<string literal>", i1 false, i1 false}
!278 = !{ptr @max98520_dai_tdm_slot._entry, !276, !"_entry", i1 false, i1 false}
!279 = !{ptr @max98520_dai_tdm_slot._entry_ptr, !276, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @.str.173, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../sound/soc/codecs/max98520.c", i32 304, i32 3}
!282 = !{ptr @max98520_dai_tdm_slot._entry.172, !281, !"_entry", i1 false, i1 false}
!283 = !{ptr @max98520_dai_tdm_slot._entry_ptr.174, !281, !"_entry_ptr", i1 false, i1 false}
!284 = distinct !{null, !285, !"bclk_sel_table", i1 false, i1 false}
!285 = !{!"../sound/soc/codecs/max98520.c", i32 125, i32 18}
!286 = !{ptr @.str.175, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../sound/soc/codecs/max98520.c", i32 189, i32 3}
!288 = !{ptr @max98520_dai_hw_params._entry, !287, !"_entry", i1 false, i1 false}
!289 = !{ptr @max98520_dai_hw_params._entry_ptr, !287, !"_entry_ptr", i1 false, i1 false}
!290 = !{ptr @.str.176, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../sound/soc/codecs/max98520.c", i32 200, i32 2}
!292 = !{ptr @max98520_dai_hw_params.__UNIQUE_ID_ddebug296, !291, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!293 = !{ptr @.str.178, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../sound/soc/codecs/max98520.c", i32 245, i32 3}
!295 = !{ptr @max98520_dai_hw_params._entry.177, !294, !"_entry", i1 false, i1 false}
!296 = !{ptr @max98520_dai_hw_params._entry_ptr.179, !294, !"_entry_ptr", i1 false, i1 false}
!297 = !{ptr @.str.180, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../sound/soc/codecs/max98520.c", i32 250, i32 2}
!299 = !{ptr @max98520_dai_hw_params.__UNIQUE_ID_ddebug297, !298, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!300 = !{ptr @.str.181, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../sound/soc/codecs/max98520.c", i32 260, i32 2}
!302 = !{ptr @max98520_dai_hw_params.__UNIQUE_ID_ddebug298, !301, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!303 = !{ptr @.str.182, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../sound/soc/codecs/max98520.c", i32 153, i32 4}
!305 = !{ptr @max98520_set_clock._entry, !304, !"_entry", i1 false, i1 false}
!306 = !{ptr @max98520_set_clock._entry_ptr, !304, !"_entry_ptr", i1 false, i1 false}
!307 = !{ptr @.str.183, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../sound/soc/codecs/max98520.c", i32 163, i32 2}
!309 = !{ptr @max98520_set_clock.__UNIQUE_ID_ddebug295, !308, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!310 = !{ptr @max98520_of_match, !311, !"max98520_of_match", i1 false, i1 false}
!311 = !{!"../sound/soc/codecs/max98520.c", i32 747, i32 34}
!312 = !{ptr @max98520_pm, !313, !"max98520_pm", i1 false, i1 false}
!313 = !{!"../sound/soc/codecs/max98520.c", i32 645, i32 32}
!314 = !{ptr @max98520_i2c_id, !315, !"max98520_i2c_id", i1 false, i1 false}
!315 = !{!"../sound/soc/codecs/max98520.c", i32 739, i32 35}
!316 = !{i32 1, !"wchar_size", i32 2}
!317 = !{i32 1, !"min_enum_size", i32 4}
!318 = !{i32 8, !"branch-target-enforcement", i32 0}
!319 = !{i32 8, !"sign-return-address", i32 0}
!320 = !{i32 8, !"sign-return-address-all", i32 0}
!321 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!322 = !{i32 7, !"uwtable", i32 1}
!323 = !{i32 7, !"frame-pointer", i32 2}
!324 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!325 = !{i64 2148970633, i64 2148970638, i64 2148970651, i64 2148970695, i64 2148970729, i64 2148970750}
!326 = !{i32 0, i32 33}
!327 = !{i8 0, i8 2}
