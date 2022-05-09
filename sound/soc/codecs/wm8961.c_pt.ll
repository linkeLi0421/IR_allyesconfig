; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/wm8961.c_pt.bc'
source_filename = "../sound/soc/codecs/wm8961.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
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
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.anon.108 = type { i32, i16 }
%struct.anon.109 = type { i32, i16 }
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
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.wm8961_priv = type { ptr, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }

@__initcall__kmod_snd_soc_wm8961__301_984_wm8961_i2c_driver_init6 = internal global ptr @wm8961_i2c_driver_init, section ".initcall6.init", align 4
@wm8961_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @wm8961_i2c_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @wm8961_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_wm8961_i2c_driver_exit = internal global ptr @wm8961_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description302 = internal constant [46 x i8] c"snd_soc_wm8961.description=ASoC WM8961 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author303 = internal constant [71 x i8] c"snd_soc_wm8961.author=Mark Brown <broonie@opensource.wolfsonmicro.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file304 = internal constant [52 x i8] c"snd_soc_wm8961.file=sound/soc/codecs/snd-soc-wm8961\00", section ".modinfo", align 1
@__UNIQUE_ID_license305 = internal constant [27 x i8] c"snd_soc_wm8961.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wm8961\00", [25 x i8] zeroinitializer }, align 32
@wm8961_i2c_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"wm8961\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@wm8961_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@wm8961_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 16, ptr null, ptr @wm8961_readable, ptr @wm8961_volatile, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 252, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm8961_reg_defaults, i32 54, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"wm8961:926:(&wm8961_regmap)->lock\00", [62 x i8] zeroinitializer }, align 32
@wm8961_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 932, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to read chip ID: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wm8961_i2c_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sound/soc/codecs/wm8961.c\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wm8961_i2c_probe._entry_ptr = internal global ptr @wm8961_i2c_probe._entry, section ".printk_index", align 4
@wm8961_i2c_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 937, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Device is not a WM8961: ID=0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@wm8961_i2c_probe._entry_ptr.9 = internal global ptr @wm8961_i2c_probe._entry.7, section ".printk_index", align 4
@wm8961_i2c_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 947, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to read chip revision: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@wm8961_i2c_probe._entry_ptr.12 = internal global ptr @wm8961_i2c_probe._entry.10, section ".printk_index", align 4
@wm8961_i2c_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 954, ptr @.str.15, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"WM8961 family %d revision %c\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@wm8961_i2c_probe._entry_ptr.16 = internal global ptr @wm8961_i2c_probe._entry.13, section ".printk_index", align 4
@wm8961_i2c_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 958, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to issue reset: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@wm8961_i2c_probe._entry_ptr.19 = internal global ptr @wm8961_i2c_probe._entry.17, section ".printk_index", align 4
@soc_component_dev_wm8961 = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @wm8961_snd_controls, i32 17, ptr @wm8961_dapm_widgets, i32 20, ptr @audio_paths, i32 24, ptr @wm8961_probe, ptr null, ptr null, ptr @wm8961_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm8961_set_bias_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 124, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@wm8961_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr @.str.90, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @wm8961_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.65, i64 68719476804, i32 254, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.71, i64 68719476804, i32 254, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@wm8961_reg_defaults = internal constant { [54 x %struct.reg_default], [112 x i8] } { [54 x %struct.reg_default] [%struct.reg_default { i32 0, i32 159 }, %struct.reg_default { i32 1, i32 159 }, %struct.reg_default { i32 2, i32 0 }, %struct.reg_default { i32 3, i32 0 }, %struct.reg_default { i32 4, i32 32 }, %struct.reg_default { i32 5, i32 8 }, %struct.reg_default { i32 6, i32 0 }, %struct.reg_default { i32 7, i32 10 }, %struct.reg_default { i32 8, i32 500 }, %struct.reg_default { i32 9, i32 0 }, %struct.reg_default { i32 10, i32 255 }, %struct.reg_default { i32 11, i32 255 }, %struct.reg_default { i32 14, i32 64 }, %struct.reg_default { i32 17, i32 123 }, %struct.reg_default { i32 18, i32 0 }, %struct.reg_default { i32 19, i32 50 }, %struct.reg_default { i32 20, i32 0 }, %struct.reg_default { i32 21, i32 192 }, %struct.reg_default { i32 22, i32 192 }, %struct.reg_default { i32 23, i32 288 }, %struct.reg_default { i32 24, i32 0 }, %struct.reg_default { i32 25, i32 0 }, %struct.reg_default { i32 26, i32 0 }, %struct.reg_default { i32 27, i32 0 }, %struct.reg_default { i32 28, i32 0 }, %struct.reg_default { i32 30, i32 95 }, %struct.reg_default { i32 32, i32 0 }, %struct.reg_default { i32 33, i32 0 }, %struct.reg_default { i32 40, i32 0 }, %struct.reg_default { i32 41, i32 0 }, %struct.reg_default { i32 47, i32 0 }, %struct.reg_default { i32 48, i32 35 }, %struct.reg_default { i32 49, i32 0 }, %struct.reg_default { i32 51, i32 3 }, %struct.reg_default { i32 56, i32 262 }, %struct.reg_default { i32 57, i32 0 }, %struct.reg_default { i32 58, i32 0 }, %struct.reg_default { i32 60, i32 0 }, %struct.reg_default { i32 61, i32 0 }, %struct.reg_default { i32 63, i32 350 }, %struct.reg_default { i32 65, i32 16 }, %struct.reg_default { i32 68, i32 3 }, %struct.reg_default { i32 69, i32 0 }, %struct.reg_default { i32 71, i32 507 }, %struct.reg_default { i32 72, i32 0 }, %struct.reg_default { i32 82, i32 0 }, %struct.reg_default { i32 87, i32 0 }, %struct.reg_default { i32 88, i32 0 }, %struct.reg_default { i32 89, i32 0 }, %struct.reg_default { i32 90, i32 0 }, %struct.reg_default { i32 91, i32 0 }, %struct.reg_default { i32 92, i32 0 }, %struct.reg_default { i32 93, i32 0 }, %struct.reg_default { i32 252, i32 1 }], [112 x i8] zeroinitializer }, align 32
@wm8961_snd_controls = internal constant { [17 x %struct.snd_kcontrol_new], [208 x i8] } { [17 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.20, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @out_tlv }, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.21, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @hp_sec_tlv }, i32 ptrtoint (ptr @.compoundliteral.22 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.23, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.24 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.25, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @out_tlv }, i32 ptrtoint (ptr @.compoundliteral.26 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.27, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.28 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.29, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.30 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.31, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.32 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.33, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @dac_deemph to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.34, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.35 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.36, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @sidetone_tlv }, i32 ptrtoint (ptr @.compoundliteral.37 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.38, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.39 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.40, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @adc_hpf to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.41, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @adc_tlv }, i32 ptrtoint (ptr @.compoundliteral.42 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.43, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @boost_tlv }, i32 ptrtoint (ptr @.compoundliteral.44 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.45, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @pga_tlv }, i32 ptrtoint (ptr @.compoundliteral.46 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.47, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.48 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.49, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.50 to i32) }], [208 x i8] zeroinitializer }, align 32
@audio_paths = internal constant { [24 x %struct.snd_soc_dapm_route], [288 x i8] } { [24 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.70, ptr null, ptr @.str.61, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.70, ptr null, ptr @.str.68, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.72, ptr null, ptr @.str.61, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.72, ptr null, ptr @.str.69, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.82, ptr @.str.64, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr @.str.83, ptr @.str.66, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.82, ptr @.str.64, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr @.str.83, ptr @.str.66, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.75, ptr null, ptr @.str.73, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.76, ptr null, ptr @.str.73, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.73, ptr null, ptr @.str.70, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.73, ptr null, ptr @.str.72, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.77, ptr null, ptr @.str.74, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.78, ptr null, ptr @.str.74, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.79, ptr null, ptr @.str.74, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.80, ptr null, ptr @.str.74, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.74, ptr null, ptr @.str.70, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.74, ptr null, ptr @.str.72, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.64, ptr null, ptr @.str.62, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.64, ptr null, ptr @.str.61, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr null, ptr @.str.63, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr null, ptr @.str.61, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.62, ptr null, ptr @.str.59, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.63, ptr null, ptr @.str.60, ptr null, %struct.snd_soc_dobj zeroinitializer }], [288 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Headphone Volume\00", [47 x i8] zeroinitializer }, align 32
@out_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -12100, i32 65636], [16 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 127, i32 127, i32 2, i32 3, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Headphone Secondary Volume\00", [37 x i8] zeroinitializer }, align 32
@hp_sec_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -700, i32 100], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.22 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 71, i32 71, i32 6, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Headphone ZC Switch\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.24 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2, i32 3, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Speaker Volume\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.26 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 127, i32 127, i32 40, i32 41, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Speaker ZC Switch\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.28 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 40, i32 41, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Speaker AC Gain\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.30 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 51, i32 51, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DAC x128 OSR Switch\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.32 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 6, i32 6, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DAC Deemphasis\00", [17 x i8] zeroinitializer }, align 32
@dac_deemph = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 5, i8 1, i8 1, i32 4, i32 3, ptr @dac_deemph_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DAC Soft Mute Switch\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.35 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 6, i32 6, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Sidetone Volume\00", [16 x i8] zeroinitializer }, align 32
@sidetone_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -3600, i32 300], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.37 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 12, i32 12, i32 57, i32 58, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ADC High Pass Filter Switch\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.39 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 5, i32 5, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ADC High Pass Filter Mode\00", [38 x i8] zeroinitializer }, align 32
@adc_hpf = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 6, i8 7, i8 7, i32 4, i32 3, ptr @adc_hpf_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Capture Volume\00", [17 x i8] zeroinitializer }, align 32
@adc_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -7200, i32 65611], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.42 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 119, i32 119, i32 21, i32 22, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Capture Boost Volume\00", [43 x i8] zeroinitializer }, align 32
@boost_tlv = internal constant { [26 x i32], [56 x i8] } { [26 x i32] [i32 3, i32 96, i32 0, i32 0, i32 1, i32 8, i32 0, i32 0, i32 1, i32 1, i32 1, i32 8, i32 13, i32 0, i32 2, i32 2, i32 1, i32 8, i32 20, i32 0, i32 3, i32 3, i32 1, i32 8, i32 29, i32 0], [56 x i8] zeroinitializer }, align 32
@.compoundliteral.44 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 32, i32 33, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Capture PGA Volume\00", [45 x i8] zeroinitializer }, align 32
@pga_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -2325, i32 75], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.46 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 62, i32 62, i32 0, i32 1, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Capture PGA ZC Switch\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.48 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 0, i32 1, i32 6, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Capture PGA Switch\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.50 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 0, i32 1, i32 7, i32 7, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@dac_deemph_text = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54], [16 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"None\00", [27 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"32kHz\00", [26 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"44.1kHz\00", [24 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"48kHz\00", [26 x i8] zeroinitializer }, align 32
@adc_hpf_text = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58], [16 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Hi-fi\00", [26 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Voice 1\00", [24 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Voice 2\00", [24 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Voice 3\00", [24 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"LINPUT\00", [25 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"RINPUT\00", [25 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CLK_DSP\00", [24 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Left Input\00", [21 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Right Input\00", [20 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ADCL\00", [27 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HiFi Capture\00", [19 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ADCR\00", [27 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MICBIAS\00", [24 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DACL Sidetone\00", [18 x i8] zeroinitializer }, align 32
@dacl_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.68, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @dacl_sidetone to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DACR Sidetone\00", [18 x i8] zeroinitializer }, align 32
@dacr_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.69, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @dacr_sidetone to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DACL\00", [27 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"HiFi Playback\00", [18 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DACR\00", [27 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Headphone Output\00", [47 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Speaker Output\00", [17 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HP_L\00", [27 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HP_R\00", [27 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SPK_LN\00", [25 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SPK_LP\00", [25 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SPK_RN\00", [25 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SPK_RP\00", [25 x i8] zeroinitializer }, align 32
@wm8961_dapm_widgets = internal constant { [20 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [912 x i8] } { [20 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.59, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.60, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.61, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.62, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 25, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.63, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 25, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.64, ptr @.str.65, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 25, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.66, ptr @.str.65, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 25, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.67, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 25, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.68, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @dacl_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.69, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @dacr_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.70, ptr @.str.71, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 26, i8 8, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.72, ptr @.str.71, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 26, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.73, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @wm8961_hp_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.74, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @wm8961_spk_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.75, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.76, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.77, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.78, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.79, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.80, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [912 x i8] zeroinitializer }, align 32
@dacl_sidetone = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 57, i8 2, i8 2, i32 3, i32 3, ptr @sidetone_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@sidetone_text = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.51, ptr @.str.82, ptr @.str.83], [20 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Left\00", [27 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Right\00", [26 x i8] zeroinitializer }, align 32
@dacr_sidetone = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 58, i8 2, i8 2, i32 3, i32 3, ptr @sidetone_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@wm8961_hp_event.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.84, ptr @.str.85, ptr @.str.4, ptr @.str.86, i8 0, i8 56, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"snd_soc_wm8961\00", [17 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wm8961_hp_event\00", [16 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Enabling DC servo\0A\00", [45 x i8] zeroinitializer }, align 32
@wm8961_hp_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.85, ptr @.str.4, i32 238, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DC servo timed out\0A\00", [44 x i8] zeroinitializer }, align 32
@wm8961_hp_event._entry_ptr = internal global ptr @wm8961_hp_event._entry, section ".printk_index", align 4
@wm8961_hp_event.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.84, ptr @.str.85, ptr @.str.4, ptr @.str.88, i8 0, i8 60, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DC servo startup complete\0A\00", [37 x i8] zeroinitializer }, align 32
@wm8961_hp_event.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.84, ptr @.str.85, ptr @.str.4, ptr @.str.89, i8 0, i8 68, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Disabling charge pump\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wm8961-hifi\00", [20 x i8] zeroinitializer }, align 32
@wm8961_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @wm8961_set_sysclk, ptr null, ptr @wm8961_set_clkdiv, ptr null, ptr @wm8961_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr @wm8961_set_tristate, ptr null, ptr null, ptr @wm8961_mute, ptr null, ptr null, ptr @wm8961_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 -128 }, [32 x i8] zeroinitializer }, align 32
@wm8961_set_sysclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.4, i32 601, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MCLK must be <33MHz\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wm8961_set_sysclk\00", [46 x i8] zeroinitializer }, align 32
@wm8961_set_sysclk._entry_ptr = internal global ptr @wm8961_set_sysclk._entry, section ".printk_index", align 4
@wm8961_set_sysclk.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.84, ptr @.str.92, ptr @.str.4, ptr @.str.93, i8 0, i8 -105, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Using MCLK/2 for %dHz MCLK\0A\00", [36 x i8] zeroinitializer }, align 32
@wm8961_set_sysclk.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.84, ptr @.str.92, ptr @.str.4, ptr @.str.94, i8 0, i8 -104, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.94 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Using MCLK/1 for %dHz MCLK\0A\00", [36 x i8] zeroinitializer }, align 32
@wm8961_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.96, ptr @.str.4, i32 513, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"MCLK has not been specified\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wm8961_hw_params\00", [47 x i8] zeroinitializer }, align 32
@wm8961_hw_params._entry_ptr = internal global ptr @wm8961_hw_params._entry, section ".printk_index", align 4
@wm8961_srate = internal constant { [9 x %struct.anon.108], [56 x i8] } { [9 x %struct.anon.108] [%struct.anon.108 { i32 48000, i16 0 }, %struct.anon.108 { i32 44100, i16 0 }, %struct.anon.108 { i32 32000, i16 1 }, %struct.anon.108 { i32 22050, i16 2 }, %struct.anon.108 { i32 24000, i16 2 }, %struct.anon.108 { i32 16000, i16 3 }, %struct.anon.108 { i32 11250, i16 4 }, %struct.anon.108 { i32 12000, i16 4 }, %struct.anon.108 { i32 8000, i16 5 }], [56 x i8] zeroinitializer }, align 32
@wm8961_hw_params.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.84, ptr @.str.96, ptr @.str.4, ptr @.str.97, i8 0, i8 -124, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Selected SRATE %dHz for %dHz\0A\00", [34 x i8] zeroinitializer }, align 32
@wm8961_hw_params._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.96, ptr @.str.4, i32 536, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"SYSCLK must be at least 64*fs for DAC\0A\00", [57 x i8] zeroinitializer }, align 32
@wm8961_hw_params._entry_ptr.100 = internal global ptr @wm8961_hw_params._entry.98, section ".printk_index", align 4
@wm8961_hw_params._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.96, ptr @.str.4, i32 541, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"SYSCLK must be at least 256*fs for ADC\0A\00", [56 x i8] zeroinitializer }, align 32
@wm8961_hw_params._entry_ptr.103 = internal global ptr @wm8961_hw_params._entry.101, section ".printk_index", align 4
@wm8961_clk_sys_ratio = internal constant { [10 x %struct.anon.109], [48 x i8] } { [10 x %struct.anon.109] [%struct.anon.109 { i32 64, i16 0 }, %struct.anon.109 { i32 128, i16 1 }, %struct.anon.109 { i32 192, i16 2 }, %struct.anon.109 { i32 256, i16 3 }, %struct.anon.109 { i32 384, i16 4 }, %struct.anon.109 { i32 512, i16 5 }, %struct.anon.109 { i32 768, i16 6 }, %struct.anon.109 { i32 1024, i16 7 }, %struct.anon.109 { i32 1408, i16 8 }, %struct.anon.109 { i32 1536, i16 9 }], [48 x i8] zeroinitializer }, align 32
@wm8961_hw_params._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.96, ptr @.str.4, i32 550, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unable to generate CLK_SYS_RATE\0A\00", [63 x i8] zeroinitializer }, align 32
@wm8961_hw_params._entry_ptr.106 = internal global ptr @wm8961_hw_params._entry.104, section ".printk_index", align 4
@wm8961_hw_params.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.84, ptr @.str.96, ptr @.str.4, ptr @.str.107, i8 0, i8 -118, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.107 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Selected CLK_SYS_RATE of %d for %d/%d=%d\0A\00", [54 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [57 x i64] [i64 55, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 14, i64 15, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 26, i64 27, i64 28, i64 30, i64 32, i64 33, i64 40, i64 41, i64 47, i64 48, i64 49, i64 51, i64 56, i64 57, i64 58, i64 60, i64 61, i64 63, i64 65, i64 68, i64 69, i64 71, i64 72, i64 82, i64 87, i64 88, i64 89, i64 90, i64 91, i64 92, i64 93, i64 252]
@__sancov_gen_cov_switch_values.108 = internal global [5 x i64] [i64 3, i64 32, i64 15, i64 61, i64 93]
@__sancov_gen_cov_switch_values.109 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.110 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.111 = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.112 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.113 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 768]
@__sancov_gen_cov_switch_values.114 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.115 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 4]
@___asan_gen_.116 = private unnamed_addr constant [18 x i8] c"wm8961_i2c_driver\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 976, i32 26 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 978, i32 11 }
@___asan_gen_.122 = private unnamed_addr constant [14 x i8] c"wm8961_i2c_id\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 970, i32 35 }
@___asan_gen_.125 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.128 = private unnamed_addr constant [14 x i8] c"wm8961_regmap\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 901, i32 35 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 926, i32 19 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 932, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 937, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 947, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 951, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 958, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant [25 x i8] c"soc_component_dev_wm8961\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 884, i32 46 }
@___asan_gen_.182 = private unnamed_addr constant [11 x i8] c"wm8961_dai\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 815, i32 34 }
@___asan_gen_.185 = private unnamed_addr constant [20 x i8] c"wm8961_reg_defaults\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 32, i32 33 }
@___asan_gen_.188 = private unnamed_addr constant [20 x i8] c"wm8961_snd_controls\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 339, i32 38 }
@___asan_gen_.191 = private unnamed_addr constant [12 x i8] c"audio_paths\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 433, i32 40 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 340, i32 1 }
@___asan_gen_.197 = private unnamed_addr constant [8 x i8] c"out_tlv\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 327, i32 14 }
@___asan_gen_.200 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 342, i32 1 }
@___asan_gen_.204 = private unnamed_addr constant [11 x i8] c"hp_sec_tlv\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 328, i32 14 }
@___asan_gen_.207 = private unnamed_addr constant [20 x i8] c".compoundliteral.22\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 344, i32 1 }
@___asan_gen_.211 = private unnamed_addr constant [20 x i8] c".compoundliteral.24\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 347, i32 1 }
@___asan_gen_.215 = private unnamed_addr constant [20 x i8] c".compoundliteral.26\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 349, i32 1 }
@___asan_gen_.219 = private unnamed_addr constant [20 x i8] c".compoundliteral.28\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 351, i32 1 }
@___asan_gen_.223 = private unnamed_addr constant [20 x i8] c".compoundliteral.30\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 353, i32 1 }
@___asan_gen_.227 = private unnamed_addr constant [20 x i8] c".compoundliteral.32\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 354, i32 1 }
@___asan_gen_.231 = private unnamed_addr constant [11 x i8] c"dac_deemph\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 324, i32 8 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 355, i32 1 }
@___asan_gen_.237 = private unnamed_addr constant [20 x i8] c".compoundliteral.35\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 357, i32 1 }
@___asan_gen_.241 = private unnamed_addr constant [13 x i8] c"sidetone_tlv\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 330, i32 14 }
@___asan_gen_.244 = private unnamed_addr constant [20 x i8] c".compoundliteral.37\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 360, i32 1 }
@___asan_gen_.248 = private unnamed_addr constant [20 x i8] c".compoundliteral.39\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 361, i32 1 }
@___asan_gen_.252 = private unnamed_addr constant [8 x i8] c"adc_hpf\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 317, i32 8 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 363, i32 1 }
@___asan_gen_.258 = private unnamed_addr constant [8 x i8] c"adc_tlv\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 329, i32 14 }
@___asan_gen_.261 = private unnamed_addr constant [20 x i8] c".compoundliteral.42\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 366, i32 1 }
@___asan_gen_.265 = private unnamed_addr constant [10 x i8] c"boost_tlv\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 331, i32 14 }
@___asan_gen_.268 = private unnamed_addr constant [20 x i8] c".compoundliteral.44\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 369, i32 1 }
@___asan_gen_.272 = private unnamed_addr constant [8 x i8] c"pga_tlv\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 337, i32 14 }
@___asan_gen_.275 = private unnamed_addr constant [20 x i8] c".compoundliteral.46\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 372, i32 1 }
@___asan_gen_.279 = private unnamed_addr constant [20 x i8] c".compoundliteral.48\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 375, i32 1 }
@___asan_gen_.283 = private unnamed_addr constant [20 x i8] c".compoundliteral.50\00", align 1
@___asan_gen_.284 = private unnamed_addr constant [16 x i8] c"dac_deemph_text\00", align 1
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 320, i32 20 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 321, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 321, i32 10 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 321, i32 19 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 321, i32 30 }
@___asan_gen_.299 = private unnamed_addr constant [13 x i8] c"adc_hpf_text\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 313, i32 20 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 314, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 314, i32 11 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 314, i32 22 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 314, i32 33 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 397, i32 1 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 398, i32 1 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 400, i32 1 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 402, i32 1 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 403, i32 1 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 405, i32 1 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 406, i32 1 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 408, i32 1 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 410, i32 1 }
@___asan_gen_.344 = private unnamed_addr constant [9 x i8] c"dacl_mux\00", align 1
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 390, i32 38 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 411, i32 1 }
@___asan_gen_.350 = private unnamed_addr constant [9 x i8] c"dacr_mux\00", align 1
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 393, i32 38 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 413, i32 1 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 414, i32 1 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 417, i32 1 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 420, i32 1 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 424, i32 1 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 425, i32 1 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 426, i32 1 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 427, i32 1 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 428, i32 1 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 429, i32 1 }
@___asan_gen_.386 = private unnamed_addr constant [20 x i8] c"wm8961_dapm_widgets\00", align 1
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 396, i32 41 }
@___asan_gen_.389 = private unnamed_addr constant [14 x i8] c"dacl_sidetone\00", align 1
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 384, i32 8 }
@___asan_gen_.392 = private unnamed_addr constant [14 x i8] c"sidetone_text\00", align 1
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 380, i32 20 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 381, i32 10 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 381, i32 18 }
@___asan_gen_.401 = private unnamed_addr constant [14 x i8] c"dacr_sidetone\00", align 1
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 387, i32 8 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 227, i32 3 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 238, i32 4 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 240, i32 4 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 275, i32 3 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 816, i32 10 }
@___asan_gen_.428 = private unnamed_addr constant [15 x i8] c"wm8961_dai_ops\00", align 1
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 805, i32 37 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 601, i32 3 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 606, i32 3 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 610, i32 3 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 513, i32 3 }
@___asan_gen_.455 = private unnamed_addr constant [13 x i8] c"wm8961_srate\00", align 1
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 489, i32 3 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 528, i32 2 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 535, i32 3 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 540, i32 3 }
@___asan_gen_.473 = private unnamed_addr constant [21 x i8] c"wm8961_clk_sys_ratio\00", align 1
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 472, i32 3 }
@___asan_gen_.476 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 550, i32 3 }
@___asan_gen_.482 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.483 = private constant [29 x i8] c"../sound/soc/codecs/wm8961.c\00", align 1
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 553, i32 2 }
@llvm.compiler.used = appending global [151 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description302, ptr @__UNIQUE_ID_file304, ptr @__UNIQUE_ID_license305, ptr @__exitcall_wm8961_i2c_driver_exit, ptr @__initcall__kmod_snd_soc_wm8961__301_984_wm8961_i2c_driver_init6, ptr @wm8961_hp_event._entry, ptr @wm8961_hp_event._entry_ptr, ptr @wm8961_hw_params._entry, ptr @wm8961_hw_params._entry.101, ptr @wm8961_hw_params._entry.104, ptr @wm8961_hw_params._entry.98, ptr @wm8961_hw_params._entry_ptr, ptr @wm8961_hw_params._entry_ptr.100, ptr @wm8961_hw_params._entry_ptr.103, ptr @wm8961_hw_params._entry_ptr.106, ptr @wm8961_i2c_driver_exit, ptr @wm8961_i2c_probe._entry, ptr @wm8961_i2c_probe._entry.10, ptr @wm8961_i2c_probe._entry.13, ptr @wm8961_i2c_probe._entry.17, ptr @wm8961_i2c_probe._entry.7, ptr @wm8961_i2c_probe._entry_ptr, ptr @wm8961_i2c_probe._entry_ptr.12, ptr @wm8961_i2c_probe._entry_ptr.16, ptr @wm8961_i2c_probe._entry_ptr.19, ptr @wm8961_i2c_probe._entry_ptr.9, ptr @wm8961_set_sysclk._entry, ptr @wm8961_set_sysclk._entry_ptr, ptr @wm8961_i2c_driver, ptr @.str, ptr @wm8961_i2c_id, ptr @wm8961_i2c_probe._key, ptr @wm8961_regmap, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.15, ptr @.str.18, ptr @soc_component_dev_wm8961, ptr @wm8961_dai, ptr @wm8961_reg_defaults, ptr @wm8961_snd_controls, ptr @audio_paths, ptr @.str.20, ptr @out_tlv, ptr @.compoundliteral, ptr @.str.21, ptr @hp_sec_tlv, ptr @.compoundliteral.22, ptr @.str.23, ptr @.compoundliteral.24, ptr @.str.25, ptr @.compoundliteral.26, ptr @.str.27, ptr @.compoundliteral.28, ptr @.str.29, ptr @.compoundliteral.30, ptr @.str.31, ptr @.compoundliteral.32, ptr @.str.33, ptr @dac_deemph, ptr @.str.34, ptr @.compoundliteral.35, ptr @.str.36, ptr @sidetone_tlv, ptr @.compoundliteral.37, ptr @.str.38, ptr @.compoundliteral.39, ptr @.str.40, ptr @adc_hpf, ptr @.str.41, ptr @adc_tlv, ptr @.compoundliteral.42, ptr @.str.43, ptr @boost_tlv, ptr @.compoundliteral.44, ptr @.str.45, ptr @pga_tlv, ptr @.compoundliteral.46, ptr @.str.47, ptr @.compoundliteral.48, ptr @.str.49, ptr @.compoundliteral.50, ptr @dac_deemph_text, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @adc_hpf_text, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @dacl_mux, ptr @.str.69, ptr @dacr_mux, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @wm8961_dapm_widgets, ptr @dacl_sidetone, ptr @sidetone_text, ptr @.str.82, ptr @.str.83, ptr @dacr_sidetone, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @wm8961_dai_ops, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @wm8961_srate, ptr @.str.97, ptr @.str.99, ptr @.str.102, ptr @wm8961_clk_sys_ratio, ptr @.str.105, ptr @.str.107], section "llvm.metadata"
@0 = internal global [133 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8961_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8961_i2c_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8961_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8961_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8961_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8961_i2c_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8961_i2c_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8961_i2c_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8961_i2c_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_component_dev_wm8961 to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8961_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8961_reg_defaults to i32), i32 432, i32 544, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8961_snd_controls to i32), i32 816, i32 1024, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_paths to i32), i32 1248, i32 1536, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @out_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hp_sec_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.22 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.24 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.26 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.28 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.30 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.32 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac_deemph to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.35 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sidetone_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.37 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.39 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_hpf to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.42 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boost_tlv to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.44 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pga_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.46 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.48 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.50 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac_deemph_text to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_hpf_text to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dacl_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dacr_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8961_dapm_widgets to i32), i32 3600, i32 4512, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dacl_sidetone to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sidetone_text to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dacr_sidetone to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8961_hp_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8961_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8961_set_sysclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8961_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8961_srate to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8961_hw_params._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8961_hw_params._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8961_clk_sys_ratio to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8961_hw_params._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8961_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @wm8961_i2c_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @wm8961_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @wm8961_i2c_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8961_i2c_probe(ptr noundef %i2c, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !250
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 8, i32 noundef 3520) #7
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef nonnull @wm8961_regmap, ptr noundef nonnull @wm8961_i2c_probe._key, ptr noundef nonnull @.str.1) #7
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call1, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call9 = call i32 @regmap_read(ptr noundef %call1, i32 noundef 15, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10.not = icmp eq i32 %call9, 0
  br i1 %cmp10.not, label %if.end13, label %do.end

do.end:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %call9) #10
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6145, i32 %4)
  %cmp14.not = icmp eq i32 %4, 6145
  br i1 %cmp14.not, label %if.end20, label %do.end18

do.end18:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %4) #10
  br label %cleanup

if.end20:                                         ; preds = %if.end13
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call.i, align 4
  call void @regcache_cache_bypass(ptr noundef %6, i1 noundef zeroext true) #7
  %call23 = call i32 @regmap_read(ptr noundef %6, i32 noundef 1, ptr noundef nonnull %val) #7
  call void @regcache_cache_bypass(ptr noundef %6, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp25.not = icmp eq i32 %call23, 0
  br i1 %cmp25.not, label %do.end34, label %do.end29

do.end29:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %call23) #10
  br label %cleanup

do.end34:                                         ; preds = %if.end20
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %and = lshr i32 %8, 12
  %shr = and i32 %and, 15
  %and36 = lshr i32 %8, 9
  %shr37 = and i32 %and36, 7
  %add = add nuw nsw i32 %shr37, 65
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %shr, i32 noundef %add) #10
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call.i, align 4
  %call39 = call i32 @regmap_write(ptr noundef %10, i32 noundef 15, i32 noundef 6145) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40.not = icmp eq i32 %call39, 0
  br i1 %cmp40.not, label %if.end46, label %do.end44

do.end44:                                         ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %call39) #10
  br label %cleanup

if.end46:                                         ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call48 = call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @soc_component_dev_wm8961, ptr noundef nonnull @wm8961_dai, i32 noundef 1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %do.end44, %do.end29, %do.end18, %do.end, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then4 ], [ %call9, %do.end ], [ -22, %do.end18 ], [ %call23, %do.end29 ], [ %call39, %do.end44 ], [ %call48, %if.end46 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_bypass(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @wm8961_readable(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %sw.default [
    i32 0, label %entry.return_crit_edge
    i32 1, label %entry.return_crit_edge1
    i32 2, label %entry.return_crit_edge2
    i32 3, label %entry.return_crit_edge3
    i32 4, label %entry.return_crit_edge4
    i32 5, label %entry.return_crit_edge5
    i32 6, label %entry.return_crit_edge6
    i32 7, label %entry.return_crit_edge7
    i32 8, label %entry.return_crit_edge8
    i32 9, label %entry.return_crit_edge9
    i32 10, label %entry.return_crit_edge10
    i32 11, label %entry.return_crit_edge11
    i32 14, label %entry.return_crit_edge12
    i32 15, label %entry.return_crit_edge13
    i32 17, label %entry.return_crit_edge14
    i32 18, label %entry.return_crit_edge15
    i32 19, label %entry.return_crit_edge16
    i32 20, label %entry.return_crit_edge17
    i32 21, label %entry.return_crit_edge18
    i32 22, label %entry.return_crit_edge19
    i32 23, label %entry.return_crit_edge20
    i32 24, label %entry.return_crit_edge21
    i32 25, label %entry.return_crit_edge22
    i32 26, label %entry.return_crit_edge23
    i32 27, label %entry.return_crit_edge24
    i32 28, label %entry.return_crit_edge25
    i32 30, label %entry.return_crit_edge26
    i32 32, label %entry.return_crit_edge27
    i32 33, label %entry.return_crit_edge28
    i32 40, label %entry.return_crit_edge29
    i32 41, label %entry.return_crit_edge30
    i32 47, label %entry.return_crit_edge31
    i32 48, label %entry.return_crit_edge32
    i32 49, label %entry.return_crit_edge33
    i32 51, label %entry.return_crit_edge34
    i32 56, label %entry.return_crit_edge35
    i32 57, label %entry.return_crit_edge36
    i32 58, label %entry.return_crit_edge37
    i32 60, label %entry.return_crit_edge38
    i32 61, label %entry.return_crit_edge39
    i32 63, label %entry.return_crit_edge40
    i32 65, label %entry.return_crit_edge41
    i32 68, label %entry.return_crit_edge42
    i32 69, label %entry.return_crit_edge43
    i32 71, label %entry.return_crit_edge44
    i32 72, label %entry.return_crit_edge45
    i32 82, label %entry.return_crit_edge46
    i32 87, label %entry.return_crit_edge47
    i32 88, label %entry.return_crit_edge48
    i32 89, label %entry.return_crit_edge49
    i32 90, label %entry.return_crit_edge50
    i32 91, label %entry.return_crit_edge51
    i32 92, label %entry.return_crit_edge52
    i32 93, label %entry.return_crit_edge53
    i32 252, label %entry.return_crit_edge54
  ]

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

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30, %entry.return_crit_edge31, %entry.return_crit_edge32, %entry.return_crit_edge33, %entry.return_crit_edge34, %entry.return_crit_edge35, %entry.return_crit_edge36, %entry.return_crit_edge37, %entry.return_crit_edge38, %entry.return_crit_edge39, %entry.return_crit_edge40, %entry.return_crit_edge41, %entry.return_crit_edge42, %entry.return_crit_edge43, %entry.return_crit_edge44, %entry.return_crit_edge45, %entry.return_crit_edge46, %entry.return_crit_edge47, %entry.return_crit_edge48, %entry.return_crit_edge49, %entry.return_crit_edge50, %entry.return_crit_edge51, %entry.return_crit_edge52, %entry.return_crit_edge53, %entry.return_crit_edge54
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ], [ true, %entry.return_crit_edge30 ], [ true, %entry.return_crit_edge31 ], [ true, %entry.return_crit_edge32 ], [ true, %entry.return_crit_edge33 ], [ true, %entry.return_crit_edge34 ], [ true, %entry.return_crit_edge35 ], [ true, %entry.return_crit_edge36 ], [ true, %entry.return_crit_edge37 ], [ true, %entry.return_crit_edge38 ], [ true, %entry.return_crit_edge39 ], [ true, %entry.return_crit_edge40 ], [ true, %entry.return_crit_edge41 ], [ true, %entry.return_crit_edge42 ], [ true, %entry.return_crit_edge43 ], [ true, %entry.return_crit_edge44 ], [ true, %entry.return_crit_edge45 ], [ true, %entry.return_crit_edge46 ], [ true, %entry.return_crit_edge47 ], [ true, %entry.return_crit_edge48 ], [ true, %entry.return_crit_edge49 ], [ true, %entry.return_crit_edge50 ], [ true, %entry.return_crit_edge51 ], [ true, %entry.return_crit_edge52 ], [ true, %entry.return_crit_edge53 ], [ true, %entry.return_crit_edge54 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @wm8961_volatile(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.108)
  switch i32 %reg, label %sw.default [
    i32 15, label %entry.return_crit_edge
    i32 93, label %entry.return_crit_edge1
    i32 61, label %entry.return_crit_edge2
  ]

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8961_probe(ptr noundef %component) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 82) #7
  %conv2 = and i32 %call, 65532
  %conv3 = or i32 %conv2, 3
  %call4 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 82, i32 noundef %conv3) #7
  %call5 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 3) #7
  %conv7 = and i32 %call5, 65407
  %or8 = or i32 %conv7, 128
  %or9 = or i32 %conv7, 384
  %call10 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 3, i32 noundef %or9) #7
  %call13 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 2, i32 noundef %or8) #7
  %call14 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 41) #7
  %conv16 = and i32 %call14, 65407
  %or17 = or i32 %conv16, 128
  %or18 = or i32 %conv16, 384
  %call19 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 41, i32 noundef %or18) #7
  %call22 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 40, i32 noundef %or17) #7
  %call23 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 22) #7
  %conv25 = and i32 %call23, 65279
  %or26 = or i32 %conv25, 256
  %call27 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 22, i32 noundef %or26) #7
  %call28 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 1) #7
  %conv30 = and i32 %call28, 65279
  %or31 = or i32 %conv30, 256
  %call32 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 1, i32 noundef %or31) #7
  %call33 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 6) #7
  %conv37 = and i32 %call33, 65527
  %conv38 = or i32 %conv37, 8
  %call39 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 6, i32 noundef %conv38) #7
  %call40 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 30) #7
  %conv43 = and i32 %call40, 65534
  %call45 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 30, i32 noundef %conv43) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8961_resume(ptr nocapture noundef readonly %component) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 13
  %0 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap.i, align 4
  %call.i = tail call i32 @regcache_sync(ptr noundef %1) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8961_set_bias_level(ptr noundef %component, i32 noundef %level) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.109)
  switch i32 %level, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb15
    i32 2, label %sw.bb
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %dapm.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %1 = ptrtoint ptr %dapm.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dapm.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %if.then, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 28) #7
  %conv3 = and i32 %call1, 65511
  %conv4 = or i32 %conv3, 24
  %call5 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 28, i32 noundef %conv4) #7
  %call6 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 25) #7
  %3 = and i32 %call6, 65087
  %conv12 = or i32 %3, 192
  br label %sw.epilog.sink.split

sw.bb15:                                          ; preds = %entry
  %dapm.i.i63 = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %4 = ptrtoint ptr %dapm.i.i63 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dapm.i.i63, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp17 = icmp eq i32 %5, 2
  br i1 %cmp17, label %if.then19, label %sw.bb15.sw.epilog_crit_edge

sw.bb15.sw.epilog_crit_edge:                      ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then19:                                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #9
  %call20 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 25) #7
  %conv24 = and i32 %call20, 65471
  %call26 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 25, i32 noundef %conv24) #7
  %call27 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 28) #7
  %conv31 = and i32 %call27, 65511
  %call33 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 28, i32 noundef %conv31) #7
  %call34 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 25) #7
  %conv38 = and i32 %call34, 65151
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %if.then19, %if.then
  %conv38.sink = phi i32 [ %conv38, %if.then19 ], [ %conv12, %if.then ]
  %call40 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 25, i32 noundef %conv38.sink) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb15.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
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
define internal i32 @wm8961_hp_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %call1 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef 69) #7
  %call2 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef 72) #7
  %call4 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef 26) #7
  %call6 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef 61) #7
  %and = and i32 %event, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end89_crit_edge, label %if.then

entry.if.end89_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end89

if.then:                                          ; preds = %entry
  %conv10 = and i32 %call1, 65399
  %call12 = tail call i32 @snd_soc_component_write(ptr noundef %add.ptr.i, i32 noundef 69, i32 noundef %conv10) #7
  %conv13 = and i32 %call2, 65534
  %or = or i32 %conv13, 1
  %call16 = tail call i32 @snd_soc_component_write(ptr noundef %add.ptr.i, i32 noundef 72, i32 noundef %or) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %3(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748000) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #7
  %conv18 = and i32 %call4, 65439
  %or19 = or i32 %conv18, 96
  %call22 = tail call i32 @snd_soc_component_write(ptr noundef %add.ptr.i, i32 noundef 26, i32 noundef %or19) #7
  %conv25 = or i32 %conv10, 17
  %call27 = tail call i32 @snd_soc_component_write(ptr noundef %add.ptr.i, i32 noundef 69, i32 noundef %conv25) #7
  %conv30 = or i32 %conv10, 51
  %call32 = tail call i32 @snd_soc_component_write(ptr noundef %add.ptr.i, i32 noundef 69, i32 noundef %conv30) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8961_hp_event.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8961_hp_event, %if.then40)) #7
          to label %do.end [label %if.then40], !srcloc !251

if.then40:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr i8, ptr %1, i32 -164
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8961_hp_event.__UNIQUE_ID_ddebug294, ptr noundef %8, ptr noundef nonnull @.str.86) #7
  br label %do.end

do.end:                                           ; preds = %if.then40, %if.then
  %conv35 = and i32 %call6, 65331
  %conv41 = or i32 %conv35, 204
  %call42 = tail call i32 @snd_soc_component_write(ptr noundef %add.ptr.i, i32 noundef 61, i32 noundef %conv41) #7
  br label %do.body43

do.body43:                                        ; preds = %do.body43.do.body43_crit_edge, %do.end
  %timeout.0 = phi i32 [ 500, %do.end ], [ %dec47, %do.body43.do.body43_crit_edge ]
  tail call void @msleep(i32 noundef 1) #7
  %call44 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef 61) #7
  %dec47 = add nsw i32 %timeout.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec47)
  %tobool48.not = icmp eq i32 %dec47, 0
  %and50 = and i32 %call44, 68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  %or.cond = select i1 %tobool48.not, i1 true, i1 %tobool51.not
  br i1 %or.cond, label %do.end52, label %do.body43.do.body43_crit_edge

do.body43.do.body43_crit_edge:                    ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body43

do.end52:                                         ; preds = %do.body43
  br i1 %tobool51.not, label %do.body61, label %do.end59

do.end59:                                         ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #9
  %dev60 = getelementptr i8, ptr %1, i32 -164
  %9 = ptrtoint ptr %dev60 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev60, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.87) #10
  br label %if.end78

do.body61:                                        ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8961_hp_event.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8961_hp_event, %if.then73)) #7
          to label %if.end78 [label %if.then73], !srcloc !251

if.then73:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #9
  %dev74 = getelementptr i8, ptr %1, i32 -164
  %11 = ptrtoint ptr %dev74 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev74, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8961_hp_event.__UNIQUE_ID_ddebug295, ptr noundef %12, ptr noundef nonnull @.str.88) #7
  br label %if.end78

if.end78:                                         ; preds = %if.then73, %do.body61, %do.end59
  %conv81 = or i32 %conv10, 119
  %call83 = tail call i32 @snd_soc_component_write(ptr noundef %add.ptr.i, i32 noundef 69, i32 noundef %conv81) #7
  %or85 = or i32 %conv10, 255
  %call88 = tail call i32 @snd_soc_component_write(ptr noundef %add.ptr.i, i32 noundef 69, i32 noundef %or85) #7
  br label %if.end89

if.end89:                                         ; preds = %if.end78, %entry.if.end89_crit_edge
  %dcs_reg.0 = phi i32 [ %call44, %if.end78 ], [ %call6, %entry.if.end89_crit_edge ]
  %pwr_reg.0 = phi i32 [ %or19, %if.end78 ], [ %call4, %entry.if.end89_crit_edge ]
  %cp_reg.0 = phi i32 [ %or, %if.end78 ], [ %call2, %entry.if.end89_crit_edge ]
  %hp_reg.0 = phi i32 [ %or85, %if.end78 ], [ %call1, %entry.if.end89_crit_edge ]
  %and90 = and i32 %event, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  br i1 %tobool91.not, label %if.end89.if.end138_crit_edge, label %if.then92

if.end89.if.end138_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end138

if.then92:                                        ; preds = %if.end89
  %conv95 = and i32 %hp_reg.0, 65399
  %call97 = tail call i32 @snd_soc_component_write(ptr noundef %add.ptr.i, i32 noundef 69, i32 noundef %conv95) #7
  %conv100 = and i32 %hp_reg.0, 65331
  %call102 = tail call i32 @snd_soc_component_write(ptr noundef %add.ptr.i, i32 noundef 69, i32 noundef %conv100) #7
  %conv105 = and i32 %dcs_reg.0, 65399
  %call107 = tail call i32 @snd_soc_component_write(ptr noundef %add.ptr.i, i32 noundef 61, i32 noundef %conv105) #7
  %conv110 = and i32 %hp_reg.0, 65280
  %call112 = tail call i32 @snd_soc_component_write(ptr noundef %add.ptr.i, i32 noundef 69, i32 noundef %conv110) #7
  %conv115 = and i32 %pwr_reg.0, 65439
  %call117 = tail call i32 @snd_soc_component_write(ptr noundef %add.ptr.i, i32 noundef 26, i32 noundef %conv115) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8961_hp_event.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8961_hp_event, %if.then130)) #7
          to label %do.end134 [label %if.then130], !srcloc !251

if.then130:                                       ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #9
  %dev131 = getelementptr i8, ptr %1, i32 -164
  %13 = ptrtoint ptr %dev131 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev131, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8961_hp_event.__UNIQUE_ID_ddebug296, ptr noundef %14, ptr noundef nonnull @.str.89) #7
  br label %do.end134

do.end134:                                        ; preds = %if.then130, %if.then92
  %and136 = and i32 %cp_reg.0, 65534
  %call137 = tail call i32 @snd_soc_component_write(ptr noundef %add.ptr.i, i32 noundef 72, i32 noundef %and136) #7
  br label %if.end138

if.end138:                                        ; preds = %do.end134, %if.end89.if.end138_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8961_spk_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %call1 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef 26) #7
  %call2 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef 49) #7
  %and = and i32 %event, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv4 = and i32 %call1, 65511
  %or = or i32 %conv4, 24
  %call7 = tail call i32 @snd_soc_component_write(ptr noundef %add.ptr.i, i32 noundef 26, i32 noundef %or) #7
  %conv8 = and i32 %call2, 65343
  %or9 = or i32 %conv8, 192
  %call12 = tail call i32 @snd_soc_component_write(ptr noundef %add.ptr.i, i32 noundef 49, i32 noundef %or9) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %pwr_reg.0 = phi i32 [ %or, %if.then ], [ %call1, %entry.if.end_crit_edge ]
  %spk_reg.0 = phi i32 [ %or9, %if.then ], [ %call2, %entry.if.end_crit_edge ]
  %and13 = and i32 %event, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end.if.end26_crit_edge, label %if.then15

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv18 = and i32 %spk_reg.0, 65343
  %call20 = tail call i32 @snd_soc_component_write(ptr noundef %add.ptr.i, i32 noundef 49, i32 noundef %conv18) #7
  %conv23 = and i32 %pwr_reg.0, 65511
  %call25 = tail call i32 @snd_soc_component_write(ptr noundef %add.ptr.i, i32 noundef 26, i32 noundef %conv23) #7
  br label %if.end26

if.end26:                                         ; preds = %if.then15, %if.end.if.end26_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8961_set_sysclk(ptr nocapture noundef readonly %dai, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #2 align 64 {
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
  %call2 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 33000000, i32 %freq)
  %cmp = icmp ugt i32 %freq, 33000000
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.91) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 16500000, i32 %freq)
  %cmp4 = icmp ugt i32 %freq, 16500000
  br i1 %cmp4, label %do.body7, label %do.body18

do.body7:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8961_set_sysclk.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8961_set_sysclk, %if.then11)) #7
          to label %do.end15 [label %if.then11], !srcloc !251

if.then11:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8961_set_sysclk.__UNIQUE_ID_ddebug299, ptr noundef %9, ptr noundef nonnull @.str.93, i32 noundef %freq) #7
  br label %do.end15

do.end15:                                         ; preds = %if.then11, %do.body7
  %conv16 = and i32 %call2, 65531
  %or = or i32 %conv16, 4
  %div54 = lshr i32 %freq, 1
  br label %if.end37

do.body18:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8961_set_sysclk.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8961_set_sysclk, %if.then30)) #7
          to label %do.end34 [label %if.then30], !srcloc !251

if.then30:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8961_set_sysclk.__UNIQUE_ID_ddebug300, ptr noundef %11, ptr noundef nonnull @.str.94, i32 noundef %freq) #7
  br label %do.end34

do.end34:                                         ; preds = %if.then30, %do.body18
  %conv36 = and i32 %call2, 65531
  br label %if.end37

if.end37:                                         ; preds = %do.end34, %do.end15
  %reg.0 = phi i32 [ %or, %do.end15 ], [ %conv36, %do.end34 ]
  %freq.addr.0 = phi i32 [ %div54, %do.end15 ], [ %freq, %do.end34 ]
  %conv38 = and i32 %reg.0, 65535
  %call39 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 4, i32 noundef %conv38) #7
  %sysclk = getelementptr inbounds %struct.wm8961_priv, ptr %5, i32 0, i32 1
  %12 = ptrtoint ptr %sysclk to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %freq.addr.0, ptr %sysclk, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end37 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8961_set_clkdiv(ptr nocapture noundef readonly %dai, i32 noundef %div_id, i32 noundef %div) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %2 = zext i32 %div_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.110)
  switch i32 %div_id, label %entry.cleanup_crit_edge [
    i32 1, label %entry.cleanup.sink.split_crit_edge
    i32 2, label %sw.bb8
  ]

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb8, %entry.cleanup.sink.split_crit_edge
  %.sink31 = phi i32 [ 14, %sw.bb8 ], [ 8, %entry.cleanup.sink.split_crit_edge ]
  %.sink30 = phi i32 [ 65024, %sw.bb8 ], [ 65520, %entry.cleanup.sink.split_crit_edge ]
  %call = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef %.sink31) #7
  %conv3 = and i32 %call, %.sink30
  %div.masked29 = and i32 %div, 65535
  %conv6 = or i32 %conv3, %div.masked29
  %call7 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef %.sink31, i32 noundef %conv6) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8961_set_fmt(ptr nocapture noundef readonly %dai, i32 noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %call = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 7) #7
  %2 = trunc i32 %call to i16
  %conv3 = and i16 %2, -212
  %3 = trunc i32 %fmt to i16
  %trunc = and i16 %3, -4096
  %4 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.111)
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
  %5 = or i16 %conv3, 64
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %aif.0 = phi i16 [ %conv3, %entry.sw.epilog_crit_edge ], [ %5, %sw.bb ]
  %and7 = and i32 %fmt, 15
  %6 = zext i32 %and7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.112)
  switch i32 %and7, label %sw.epilog.cleanup_crit_edge [
    i32 2, label %sw.epilog.sw.epilog29_crit_edge
    i32 3, label %sw.bb8
    i32 1, label %sw.bb12
    i32 5, label %sw.bb16
    i32 4, label %sw.epilog.sw.bb20_crit_edge
  ]

sw.epilog.sw.bb20_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb20

sw.epilog.sw.epilog29_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog29

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb8:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %7 = or i16 %aif.0, 1
  br label %sw.epilog29

sw.bb12:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %8 = or i16 %aif.0, 2
  br label %sw.epilog29

sw.bb16:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %9 = or i16 %aif.0, 16
  br label %sw.bb20

sw.bb20:                                          ; preds = %sw.bb16, %sw.epilog.sw.bb20_crit_edge
  %aif.1 = phi i16 [ %aif.0, %sw.epilog.sw.bb20_crit_edge ], [ %9, %sw.bb16 ]
  %10 = or i16 %aif.1, 3
  %and24 = and i32 %fmt, 3840
  %11 = zext i32 %and24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.113)
  switch i32 %and24, label %sw.bb20.cleanup_crit_edge [
    i32 0, label %sw.bb20.sw.epilog29_crit_edge
    i32 768, label %sw.bb20.sw.epilog29_crit_edge61
  ]

sw.bb20.sw.epilog29_crit_edge61:                  ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog29

sw.bb20.sw.epilog29_crit_edge:                    ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog29

sw.bb20.cleanup_crit_edge:                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.epilog29:                                      ; preds = %sw.bb20.sw.epilog29_crit_edge, %sw.bb20.sw.epilog29_crit_edge61, %sw.bb12, %sw.bb8, %sw.epilog.sw.epilog29_crit_edge
  %aif.2 = phi i16 [ %10, %sw.bb20.sw.epilog29_crit_edge ], [ %10, %sw.bb20.sw.epilog29_crit_edge61 ], [ %8, %sw.bb12 ], [ %7, %sw.bb8 ], [ %aif.0, %sw.epilog.sw.epilog29_crit_edge ]
  %and30 = lshr i32 %fmt, 8
  %12 = and i32 %and30, 15
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.114)
  switch i32 %12, label %sw.epilog29.cleanup_crit_edge [
    i32 0, label %sw.epilog29.sw.epilog44_crit_edge
    i32 2, label %sw.bb31
    i32 3, label %sw.bb35
    i32 4, label %sw.bb39
  ]

sw.epilog29.sw.epilog44_crit_edge:                ; preds = %sw.epilog29
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog44

sw.epilog29.cleanup_crit_edge:                    ; preds = %sw.epilog29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb31:                                          ; preds = %sw.epilog29
  call void @__sanitizer_cov_trace_pc() #9
  %14 = or i16 %aif.2, 16
  br label %sw.epilog44

sw.bb35:                                          ; preds = %sw.epilog29
  call void @__sanitizer_cov_trace_pc() #9
  %15 = or i16 %aif.2, 128
  br label %sw.epilog44

sw.bb39:                                          ; preds = %sw.epilog29
  call void @__sanitizer_cov_trace_pc() #9
  %16 = or i16 %aif.2, 144
  br label %sw.epilog44

sw.epilog44:                                      ; preds = %sw.bb39, %sw.bb35, %sw.bb31, %sw.epilog29.sw.epilog44_crit_edge
  %aif.3 = phi i16 [ %16, %sw.bb39 ], [ %15, %sw.bb35 ], [ %14, %sw.bb31 ], [ %aif.2, %sw.epilog29.sw.epilog44_crit_edge ]
  %conv45 = zext i16 %aif.3 to i32
  %call46 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 7, i32 noundef %conv45) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog44, %sw.epilog29.cleanup_crit_edge, %sw.bb20.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call46, %sw.epilog44 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.bb20.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ -22, %sw.epilog29.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8961_set_tristate(ptr nocapture noundef readonly %dai, i32 noundef %tristate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %call = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 24) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tristate)
  %tobool.not = icmp eq i32 %tristate, 0
  %conv2 = and i32 %call, 65527
  %or = or i32 %conv2, 8
  %reg.0 = select i1 %tobool.not, i32 %conv2, i32 %or
  %call7 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 24, i32 noundef %reg.0) #7
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8961_mute(ptr nocapture noundef readonly %dai, i32 noundef %mute, i32 noundef %direction) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %call = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mute)
  %tobool.not = icmp eq i32 %mute, 0
  %conv2 = and i32 %call, 65527
  %or = or i32 %conv2, 8
  %reg.0 = select i1 %tobool.not, i32 %conv2, i32 %or
  tail call void @msleep(i32 noundef 17) #7
  %call7 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 5, i32 noundef %reg.0) #7
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8961_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #2 align 64 {
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
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i, align 4
  %sysclk = getelementptr inbounds %struct.wm8961_priv, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sysclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %do.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %sub.1 = sub i32 44100, %7
  %10 = tail call i32 @llvm.abs.i32(i32 %sub.1, i1 false)
  %sub8.1 = sub i32 48000, %7
  %11 = tail call i32 @llvm.abs.i32(i32 %sub8.1, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %11)
  %cmp16.1 = icmp slt i32 %10, %11
  %best.1.1 = zext i1 %cmp16.1 to i32
  %sub.2 = sub i32 32000, %7
  %12 = tail call i32 @llvm.abs.i32(i32 %sub.2, i1 false)
  %arrayidx6.2 = getelementptr [9 x %struct.anon.108], ptr @wm8961_srate, i32 0, i32 %best.1.1
  %13 = ptrtoint ptr %arrayidx6.2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx6.2, align 4
  %sub8.2 = sub i32 %14, %7
  %15 = tail call i32 @llvm.abs.i32(i32 %sub8.2, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %15)
  %cmp16.2 = icmp slt i32 %12, %15
  %best.1.2 = select i1 %cmp16.2, i32 2, i32 %best.1.1
  %sub.3 = sub i32 22050, %7
  %16 = tail call i32 @llvm.abs.i32(i32 %sub.3, i1 false)
  %arrayidx6.3 = getelementptr [9 x %struct.anon.108], ptr @wm8961_srate, i32 0, i32 %best.1.2
  %17 = ptrtoint ptr %arrayidx6.3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx6.3, align 4
  %sub8.3 = sub i32 %18, %7
  %19 = tail call i32 @llvm.abs.i32(i32 %sub8.3, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %19)
  %cmp16.3 = icmp slt i32 %16, %19
  %best.1.3 = select i1 %cmp16.3, i32 3, i32 %best.1.2
  %sub.4 = sub i32 24000, %7
  %20 = tail call i32 @llvm.abs.i32(i32 %sub.4, i1 false)
  %arrayidx6.4 = getelementptr [9 x %struct.anon.108], ptr @wm8961_srate, i32 0, i32 %best.1.3
  %21 = ptrtoint ptr %arrayidx6.4 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx6.4, align 4
  %sub8.4 = sub i32 %22, %7
  %23 = tail call i32 @llvm.abs.i32(i32 %sub8.4, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %23)
  %cmp16.4 = icmp slt i32 %20, %23
  %best.1.4 = select i1 %cmp16.4, i32 4, i32 %best.1.3
  %sub.5 = sub i32 16000, %7
  %24 = tail call i32 @llvm.abs.i32(i32 %sub.5, i1 false)
  %arrayidx6.5 = getelementptr [9 x %struct.anon.108], ptr @wm8961_srate, i32 0, i32 %best.1.4
  %25 = ptrtoint ptr %arrayidx6.5 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx6.5, align 4
  %sub8.5 = sub i32 %26, %7
  %27 = tail call i32 @llvm.abs.i32(i32 %sub8.5, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %27)
  %cmp16.5 = icmp slt i32 %24, %27
  %best.1.5 = select i1 %cmp16.5, i32 5, i32 %best.1.4
  %sub.6 = sub i32 11250, %7
  %28 = tail call i32 @llvm.abs.i32(i32 %sub.6, i1 false)
  %arrayidx6.6 = getelementptr [9 x %struct.anon.108], ptr @wm8961_srate, i32 0, i32 %best.1.5
  %29 = ptrtoint ptr %arrayidx6.6 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx6.6, align 4
  %sub8.6 = sub i32 %30, %7
  %31 = tail call i32 @llvm.abs.i32(i32 %sub8.6, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %31)
  %cmp16.6 = icmp slt i32 %28, %31
  %best.1.6 = select i1 %cmp16.6, i32 6, i32 %best.1.5
  %sub.7 = sub i32 12000, %7
  %32 = tail call i32 @llvm.abs.i32(i32 %sub.7, i1 false)
  %arrayidx6.7 = getelementptr [9 x %struct.anon.108], ptr @wm8961_srate, i32 0, i32 %best.1.6
  %33 = ptrtoint ptr %arrayidx6.7 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx6.7, align 4
  %sub8.7 = sub i32 %34, %7
  %35 = tail call i32 @llvm.abs.i32(i32 %sub8.7, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %35)
  %cmp16.7 = icmp slt i32 %32, %35
  %best.1.7 = select i1 %cmp16.7, i32 7, i32 %best.1.6
  %sub.8 = sub i32 8000, %7
  %36 = tail call i32 @llvm.abs.i32(i32 %sub.8, i1 false)
  %arrayidx6.8 = getelementptr [9 x %struct.anon.108], ptr @wm8961_srate, i32 0, i32 %best.1.7
  %37 = ptrtoint ptr %arrayidx6.8 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx6.8, align 4
  %sub8.8 = sub i32 %38, %7
  %39 = tail call i32 @llvm.abs.i32(i32 %sub8.8, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %39)
  %cmp16.8 = icmp slt i32 %36, %39
  %best.1.8 = select i1 %cmp16.8, i32 8, i32 %best.1.7
  %call19 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 27) #7
  %val = getelementptr [9 x %struct.anon.108], ptr @wm8961_srate, i32 0, i32 %best.1.8, i32 1
  %40 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %val, align 4
  %42 = trunc i32 %call19 to i16
  %43 = and i16 %42, -8
  %conv25 = or i16 %43, %41
  %conv26 = zext i16 %conv25 to i32
  %call27 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 27, i32 noundef %conv26) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8961_hw_params.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8961_hw_params, %if.then34)) #7
          to label %do.end40 [label %if.then34], !srcloc !251

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.95) #10
  br label %cleanup

if.then34:                                        ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx22 = getelementptr [9 x %struct.anon.108], ptr @wm8961_srate, i32 0, i32 %best.1.8
  %44 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev.i, align 4
  %46 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx22, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8961_hw_params.__UNIQUE_ID_ddebug297, ptr noundef %45, ptr noundef nonnull @.str.97, i32 noundef %47, i32 noundef %7) #7
  br label %do.end40

do.end40:                                         ; preds = %if.then34, %for.body.preheader
  %48 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %sysclk, align 4
  %div = sdiv i32 %49, %7
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %50 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp42 = icmp eq i32 %51, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %div)
  %cmp44 = icmp slt i32 %div, 64
  %or.cond = select i1 %cmp42, i1 %cmp44, i1 false
  br i1 %or.cond, label %do.end49, label %if.end51

do.end49:                                         ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.99) #10
  br label %cleanup

if.end51:                                         ; preds = %do.end40
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %51)
  %cmp53 = icmp eq i32 %51, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %div)
  %cmp56 = icmp slt i32 %div, 256
  %or.cond213 = select i1 %cmp53, i1 %cmp56, i1 false
  br i1 %or.cond213, label %do.end61, label %for.body67.preheader

for.body67.preheader:                             ; preds = %if.end51
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %div)
  %cmp69.not = icmp sgt i32 %div, 64
  br i1 %cmp69.not, label %for.inc73, label %for.body67.preheader.do.body84_crit_edge

for.body67.preheader.do.body84_crit_edge:         ; preds = %for.body67.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body84

do.end61:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.102) #10
  br label %cleanup

for.inc73:                                        ; preds = %for.body67.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %div)
  %cmp69.not.1 = icmp ugt i32 %div, 128
  br i1 %cmp69.not.1, label %for.inc73.1, label %for.inc73.do.body84_crit_edge

for.inc73.do.body84_crit_edge:                    ; preds = %for.inc73
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body84

for.inc73.1:                                      ; preds = %for.inc73
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %div)
  %cmp69.not.2 = icmp ugt i32 %div, 192
  br i1 %cmp69.not.2, label %for.inc73.2, label %for.inc73.1.do.body84_crit_edge

for.inc73.1.do.body84_crit_edge:                  ; preds = %for.inc73.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body84

for.inc73.2:                                      ; preds = %for.inc73.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %div)
  %cmp69.not.3 = icmp ugt i32 %div, 256
  br i1 %cmp69.not.3, label %for.inc73.3, label %for.inc73.2.do.body84_crit_edge

for.inc73.2.do.body84_crit_edge:                  ; preds = %for.inc73.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body84

for.inc73.3:                                      ; preds = %for.inc73.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 384, i32 %div)
  %cmp69.not.4 = icmp ugt i32 %div, 384
  br i1 %cmp69.not.4, label %for.inc73.4, label %for.inc73.3.do.body84_crit_edge

for.inc73.3.do.body84_crit_edge:                  ; preds = %for.inc73.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body84

for.inc73.4:                                      ; preds = %for.inc73.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %div)
  %cmp69.not.5 = icmp ugt i32 %div, 512
  br i1 %cmp69.not.5, label %for.inc73.5, label %for.inc73.4.do.body84_crit_edge

for.inc73.4.do.body84_crit_edge:                  ; preds = %for.inc73.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body84

for.inc73.5:                                      ; preds = %for.inc73.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %div)
  %cmp69.not.6 = icmp ugt i32 %div, 768
  br i1 %cmp69.not.6, label %for.inc73.6, label %for.inc73.5.do.body84_crit_edge

for.inc73.5.do.body84_crit_edge:                  ; preds = %for.inc73.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body84

for.inc73.6:                                      ; preds = %for.inc73.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %div)
  %cmp69.not.7 = icmp ugt i32 %div, 1024
  br i1 %cmp69.not.7, label %for.inc73.7, label %for.inc73.6.do.body84_crit_edge

for.inc73.6.do.body84_crit_edge:                  ; preds = %for.inc73.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body84

for.inc73.7:                                      ; preds = %for.inc73.6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1408, i32 %div)
  %cmp69.not.8 = icmp ugt i32 %div, 1408
  br i1 %cmp69.not.8, label %for.inc73.8, label %for.inc73.7.do.body84_crit_edge

for.inc73.7.do.body84_crit_edge:                  ; preds = %for.inc73.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body84

for.inc73.8:                                      ; preds = %for.inc73.7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %div)
  %cmp69.not.9 = icmp ugt i32 %div, 1536
  br i1 %cmp69.not.9, label %do.end81, label %for.inc73.8.do.body84_crit_edge

for.inc73.8.do.body84_crit_edge:                  ; preds = %for.inc73.8
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body84

do.end81:                                         ; preds = %for.inc73.8
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.105) #10
  br label %cleanup

do.body84:                                        ; preds = %for.inc73.8.do.body84_crit_edge, %for.inc73.7.do.body84_crit_edge, %for.inc73.6.do.body84_crit_edge, %for.inc73.5.do.body84_crit_edge, %for.inc73.4.do.body84_crit_edge, %for.inc73.3.do.body84_crit_edge, %for.inc73.2.do.body84_crit_edge, %for.inc73.1.do.body84_crit_edge, %for.inc73.do.body84_crit_edge, %for.body67.preheader.do.body84_crit_edge
  %i.1224.lcssa = phi i32 [ 0, %for.body67.preheader.do.body84_crit_edge ], [ 1, %for.inc73.do.body84_crit_edge ], [ 2, %for.inc73.1.do.body84_crit_edge ], [ 3, %for.inc73.2.do.body84_crit_edge ], [ 4, %for.inc73.3.do.body84_crit_edge ], [ 5, %for.inc73.4.do.body84_crit_edge ], [ 6, %for.inc73.5.do.body84_crit_edge ], [ 7, %for.inc73.6.do.body84_crit_edge ], [ 8, %for.inc73.7.do.body84_crit_edge ], [ 9, %for.inc73.8.do.body84_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8961_hw_params.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8961_hw_params, %if.then96)) #7
          to label %do.end105 [label %if.then96], !srcloc !251

if.then96:                                        ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev.i, align 4
  %arrayidx98 = getelementptr [10 x %struct.anon.109], ptr @wm8961_clk_sys_ratio, i32 0, i32 %i.1224.lcssa
  %60 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx98, align 4
  %62 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %sysclk, align 4
  %div102 = sdiv i32 %63, %7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8961_hw_params.__UNIQUE_ID_ddebug298, ptr noundef %59, ptr noundef nonnull @.str.107, i32 noundef %61, i32 noundef %63, i32 noundef %7, i32 noundef %div102) #7
  br label %do.end105

do.end105:                                        ; preds = %if.then96, %do.body84
  %call106 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 56) #7
  %conv110 = and i32 %call106, 65505
  %val112 = getelementptr [10 x %struct.anon.109], ptr @wm8961_clk_sys_ratio, i32 0, i32 %i.1224.lcssa, i32 1
  %64 = ptrtoint ptr %val112 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %val112, align 4
  %conv113 = zext i16 %65 to i32
  %shl = shl nuw nsw i32 %conv113, 1
  %shl.masked = and i32 %shl, 65534
  %conv117 = or i32 %shl.masked, %conv110
  %call118 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 56, i32 noundef %conv117) #7
  %call119 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 7) #7
  %66 = trunc i32 %call119 to i16
  %conv123 = and i16 %66, -13
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %67 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool.not.i.i.i = icmp eq i32 %68, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %do.end105.if.then.i.i.i_crit_edge

do.end105.if.then.i.i.i_crit_edge:                ; preds = %do.end105
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %do.end105.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %do.end105.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %68, %do.end105.if.then.i.i.i_crit_edge ], [ %71, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %69 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #7, !range !252
  %add.i.i.i = or i32 %69, %i.09.lcssa.i.i.i
  br label %params_width.exit

for.inc.i.i.i:                                    ; preds = %do.end105
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %70 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool.not.1.i.i.i = icmp eq i32 %71, 0
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
  %72 = add i32 %call1.i, -16
  %73 = tail call i32 @llvm.fshl.i32(i32 %72, i32 %72, i32 30)
  %74 = zext i32 %73 to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.115)
  switch i32 %73, label %params_width.exit.cleanup_crit_edge [
    i32 0, label %params_width.exit.sw.epilog_crit_edge
    i32 1, label %sw.bb
    i32 2, label %sw.bb128
    i32 4, label %sw.bb132
  ]

params_width.exit.sw.epilog_crit_edge:            ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

params_width.exit.cleanup_crit_edge:              ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #9
  %75 = or i16 %conv123, 4
  br label %sw.epilog

sw.bb128:                                         ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #9
  %76 = or i16 %conv123, 8
  br label %sw.epilog

sw.bb132:                                         ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #9
  %conv135 = or i16 %66, 12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb132, %sw.bb128, %sw.bb, %params_width.exit.sw.epilog_crit_edge
  %reg.0 = phi i16 [ %conv135, %sw.bb132 ], [ %76, %sw.bb128 ], [ %75, %sw.bb ], [ %conv123, %params_width.exit.sw.epilog_crit_edge ]
  %conv136 = zext i16 %reg.0 to i32
  %call137 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 7, i32 noundef %conv136) #7
  %call138 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 24001, i32 %7)
  %cmp140 = icmp slt i32 %7, 24001
  %conv143 = and i32 %call138, 65533
  %or144 = or i32 %conv143, 2
  %reg.1 = select i1 %cmp140, i32 %or144, i32 %conv143
  %call151 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 6, i32 noundef %reg.1) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %params_width.exit.cleanup_crit_edge, %do.end81, %do.end61, %do.end49, %do.end
  %retval.0 = phi i32 [ -22, %do.end49 ], [ -22, %do.end61 ], [ -22, %do.end81 ], [ 0, %sw.epilog ], [ -22, %do.end ], [ -22, %params_width.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 133)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 133)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !38, !40, !41, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !133, !135, !137, !139, !141, !143, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !181, !182, !183, !185, !186, !187, !189, !190, !192, !193, !195, !197, !199, !201, !203, !204, !205, !206, !208, !209, !211, !212, !214, !215, !216, !217, !219, !220, !222, !223, !224, !226, !227, !228, !230, !231, !232, !234, !235, !237, !239}
!llvm.module.flags = !{!241, !242, !243, !244, !245, !246, !247, !248}
!llvm.ident = !{!249}

!0 = !{ptr @__initcall__kmod_snd_soc_wm8961__301_984_wm8961_i2c_driver_init6, !1, !"__initcall__kmod_snd_soc_wm8961__301_984_wm8961_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/wm8961.c", i32 984, i32 1}
!2 = !{ptr @__exitcall_wm8961_i2c_driver_exit, !1, !"__exitcall_wm8961_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description302, !4, !"__UNIQUE_ID_description302", i1 false, i1 false}
!4 = !{!"../sound/soc/codecs/wm8961.c", i32 986, i32 1}
!5 = !{ptr @__UNIQUE_ID_author303, !6, !"__UNIQUE_ID_author303", i1 false, i1 false}
!6 = !{!"../sound/soc/codecs/wm8961.c", i32 987, i32 1}
!7 = !{ptr @__UNIQUE_ID_file304, !8, !"__UNIQUE_ID_file304", i1 false, i1 false}
!8 = !{!"../sound/soc/codecs/wm8961.c", i32 988, i32 1}
!9 = !{ptr @__UNIQUE_ID_license305, !8, !"__UNIQUE_ID_license305", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/codecs/wm8961.c", i32 978, i32 11}
!12 = !{ptr @wm8961_i2c_driver, !13, !"wm8961_i2c_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/wm8961.c", i32 976, i32 26}
!14 = !{ptr @wm8961_i2c_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/wm8961.c", i32 926, i32 19}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/soc/codecs/wm8961.c", i32 932, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @wm8961_i2c_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @wm8961_i2c_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../sound/soc/codecs/wm8961.c", i32 937, i32 3}
!27 = !{ptr @wm8961_i2c_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @wm8961_i2c_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/soc/codecs/wm8961.c", i32 947, i32 3}
!31 = !{ptr @wm8961_i2c_probe._entry.10, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @wm8961_i2c_probe._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/soc/codecs/wm8961.c", i32 951, i32 2}
!35 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @wm8961_i2c_probe._entry.13, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @wm8961_i2c_probe._entry_ptr.16, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/codecs/wm8961.c", i32 958, i32 3}
!40 = !{ptr @wm8961_i2c_probe._entry.17, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @wm8961_i2c_probe._entry_ptr.19, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @wm8961_regmap, !43, !"wm8961_regmap", i1 false, i1 false}
!43 = !{!"../sound/soc/codecs/wm8961.c", i32 901, i32 35}
!44 = !{ptr @wm8961_reg_defaults, !45, !"wm8961_reg_defaults", i1 false, i1 false}
!45 = !{!"../sound/soc/codecs/wm8961.c", i32 32, i32 33}
!46 = !{ptr @soc_component_dev_wm8961, !47, !"soc_component_dev_wm8961", i1 false, i1 false}
!47 = !{!"../sound/soc/codecs/wm8961.c", i32 884, i32 46}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/soc/codecs/wm8961.c", i32 340, i32 1}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/codecs/wm8961.c", i32 342, i32 1}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/soc/codecs/wm8961.c", i32 344, i32 1}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/codecs/wm8961.c", i32 347, i32 1}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/codecs/wm8961.c", i32 349, i32 1}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/soc/codecs/wm8961.c", i32 351, i32 1}
!60 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/codecs/wm8961.c", i32 353, i32 1}
!62 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/soc/codecs/wm8961.c", i32 354, i32 1}
!64 = !{ptr @.str.34, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/codecs/wm8961.c", i32 355, i32 1}
!66 = !{ptr @.str.36, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/soc/codecs/wm8961.c", i32 357, i32 1}
!68 = !{ptr @.str.38, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/soc/codecs/wm8961.c", i32 360, i32 1}
!70 = !{ptr @.str.40, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/soc/codecs/wm8961.c", i32 361, i32 1}
!72 = !{ptr @.str.41, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/soc/codecs/wm8961.c", i32 363, i32 1}
!74 = !{ptr @.str.43, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/soc/codecs/wm8961.c", i32 366, i32 1}
!76 = !{ptr @.str.45, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/codecs/wm8961.c", i32 369, i32 1}
!78 = !{ptr @.str.47, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/codecs/wm8961.c", i32 372, i32 1}
!80 = !{ptr @.str.49, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/soc/codecs/wm8961.c", i32 375, i32 1}
!82 = !{ptr @wm8961_snd_controls, !83, !"wm8961_snd_controls", i1 false, i1 false}
!83 = !{!"../sound/soc/codecs/wm8961.c", i32 339, i32 38}
!84 = !{ptr @out_tlv, !85, !"out_tlv", i1 false, i1 false}
!85 = !{!"../sound/soc/codecs/wm8961.c", i32 327, i32 14}
!86 = !{ptr @hp_sec_tlv, !87, !"hp_sec_tlv", i1 false, i1 false}
!87 = !{!"../sound/soc/codecs/wm8961.c", i32 328, i32 14}
!88 = !{ptr @dac_deemph, !89, !"dac_deemph", i1 false, i1 false}
!89 = !{!"../sound/soc/codecs/wm8961.c", i32 324, i32 8}
!90 = !{ptr @.str.51, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/soc/codecs/wm8961.c", i32 321, i32 2}
!92 = !{ptr @.str.52, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/soc/codecs/wm8961.c", i32 321, i32 10}
!94 = !{ptr @.str.53, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/soc/codecs/wm8961.c", i32 321, i32 19}
!96 = !{ptr @.str.54, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/soc/codecs/wm8961.c", i32 321, i32 30}
!98 = !{ptr @dac_deemph_text, !99, !"dac_deemph_text", i1 false, i1 false}
!99 = !{!"../sound/soc/codecs/wm8961.c", i32 320, i32 20}
!100 = !{ptr @sidetone_tlv, !101, !"sidetone_tlv", i1 false, i1 false}
!101 = !{!"../sound/soc/codecs/wm8961.c", i32 330, i32 14}
!102 = !{ptr @adc_hpf, !103, !"adc_hpf", i1 false, i1 false}
!103 = !{!"../sound/soc/codecs/wm8961.c", i32 317, i32 8}
!104 = !{ptr @.str.55, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/soc/codecs/wm8961.c", i32 314, i32 2}
!106 = !{ptr @.str.56, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/soc/codecs/wm8961.c", i32 314, i32 11}
!108 = !{ptr @.str.57, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/soc/codecs/wm8961.c", i32 314, i32 22}
!110 = !{ptr @.str.58, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/soc/codecs/wm8961.c", i32 314, i32 33}
!112 = !{ptr @adc_hpf_text, !113, !"adc_hpf_text", i1 false, i1 false}
!113 = !{!"../sound/soc/codecs/wm8961.c", i32 313, i32 20}
!114 = !{ptr @adc_tlv, !115, !"adc_tlv", i1 false, i1 false}
!115 = !{!"../sound/soc/codecs/wm8961.c", i32 329, i32 14}
!116 = !{ptr @boost_tlv, !117, !"boost_tlv", i1 false, i1 false}
!117 = !{!"../sound/soc/codecs/wm8961.c", i32 331, i32 14}
!118 = !{ptr @pga_tlv, !119, !"pga_tlv", i1 false, i1 false}
!119 = !{!"../sound/soc/codecs/wm8961.c", i32 337, i32 14}
!120 = !{ptr @.str.59, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/soc/codecs/wm8961.c", i32 397, i32 1}
!122 = !{ptr @.str.60, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/soc/codecs/wm8961.c", i32 398, i32 1}
!124 = !{ptr @.str.61, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/soc/codecs/wm8961.c", i32 400, i32 1}
!126 = !{ptr @.str.62, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/soc/codecs/wm8961.c", i32 402, i32 1}
!128 = !{ptr @.str.63, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/soc/codecs/wm8961.c", i32 403, i32 1}
!130 = !{ptr @.str.64, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/soc/codecs/wm8961.c", i32 405, i32 1}
!132 = !{ptr @.str.65, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @.str.66, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../sound/soc/codecs/wm8961.c", i32 406, i32 1}
!135 = !{ptr @.str.67, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../sound/soc/codecs/wm8961.c", i32 408, i32 1}
!137 = !{ptr @.str.68, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../sound/soc/codecs/wm8961.c", i32 410, i32 1}
!139 = !{ptr @.str.69, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../sound/soc/codecs/wm8961.c", i32 411, i32 1}
!141 = !{ptr @.str.70, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../sound/soc/codecs/wm8961.c", i32 413, i32 1}
!143 = !{ptr @.str.71, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @.str.72, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../sound/soc/codecs/wm8961.c", i32 414, i32 1}
!146 = !{ptr @.str.73, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../sound/soc/codecs/wm8961.c", i32 417, i32 1}
!148 = !{ptr @.str.74, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../sound/soc/codecs/wm8961.c", i32 420, i32 1}
!150 = !{ptr @.str.75, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../sound/soc/codecs/wm8961.c", i32 424, i32 1}
!152 = !{ptr @.str.76, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../sound/soc/codecs/wm8961.c", i32 425, i32 1}
!154 = !{ptr @.str.77, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../sound/soc/codecs/wm8961.c", i32 426, i32 1}
!156 = !{ptr @.str.78, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../sound/soc/codecs/wm8961.c", i32 427, i32 1}
!158 = !{ptr @.str.79, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../sound/soc/codecs/wm8961.c", i32 428, i32 1}
!160 = !{ptr @.str.80, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../sound/soc/codecs/wm8961.c", i32 429, i32 1}
!162 = !{ptr @wm8961_dapm_widgets, !163, !"wm8961_dapm_widgets", i1 false, i1 false}
!163 = !{!"../sound/soc/codecs/wm8961.c", i32 396, i32 41}
!164 = !{ptr @dacl_mux, !165, !"dacl_mux", i1 false, i1 false}
!165 = !{!"../sound/soc/codecs/wm8961.c", i32 390, i32 38}
!166 = !{ptr @dacl_sidetone, !167, !"dacl_sidetone", i1 false, i1 false}
!167 = !{!"../sound/soc/codecs/wm8961.c", i32 384, i32 8}
!168 = !{ptr @.str.82, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../sound/soc/codecs/wm8961.c", i32 381, i32 10}
!170 = !{ptr @.str.83, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../sound/soc/codecs/wm8961.c", i32 381, i32 18}
!172 = !{ptr @sidetone_text, !173, !"sidetone_text", i1 false, i1 false}
!173 = !{!"../sound/soc/codecs/wm8961.c", i32 380, i32 20}
!174 = !{ptr @dacr_mux, !175, !"dacr_mux", i1 false, i1 false}
!175 = !{!"../sound/soc/codecs/wm8961.c", i32 393, i32 38}
!176 = !{ptr @dacr_sidetone, !177, !"dacr_sidetone", i1 false, i1 false}
!177 = !{!"../sound/soc/codecs/wm8961.c", i32 387, i32 8}
!178 = !{ptr @.str.84, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../sound/soc/codecs/wm8961.c", i32 227, i32 3}
!180 = !{ptr @.str.85, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @.str.86, !179, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @wm8961_hp_event.__UNIQUE_ID_ddebug294, !179, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!183 = !{ptr @.str.87, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../sound/soc/codecs/wm8961.c", i32 238, i32 4}
!185 = !{ptr @wm8961_hp_event._entry, !184, !"_entry", i1 false, i1 false}
!186 = !{ptr @wm8961_hp_event._entry_ptr, !184, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.88, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../sound/soc/codecs/wm8961.c", i32 240, i32 4}
!189 = !{ptr @wm8961_hp_event.__UNIQUE_ID_ddebug295, !188, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!190 = !{ptr @.str.89, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../sound/soc/codecs/wm8961.c", i32 275, i32 3}
!192 = !{ptr @wm8961_hp_event.__UNIQUE_ID_ddebug296, !191, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!193 = !{ptr @audio_paths, !194, !"audio_paths", i1 false, i1 false}
!194 = !{!"../sound/soc/codecs/wm8961.c", i32 433, i32 40}
!195 = !{ptr @.str.90, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../sound/soc/codecs/wm8961.c", i32 816, i32 10}
!197 = !{ptr @wm8961_dai, !198, !"wm8961_dai", i1 false, i1 false}
!198 = !{!"../sound/soc/codecs/wm8961.c", i32 815, i32 34}
!199 = !{ptr @wm8961_dai_ops, !200, !"wm8961_dai_ops", i1 false, i1 false}
!200 = !{!"../sound/soc/codecs/wm8961.c", i32 805, i32 37}
!201 = !{ptr @.str.91, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../sound/soc/codecs/wm8961.c", i32 601, i32 3}
!203 = !{ptr @.str.92, !202, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @wm8961_set_sysclk._entry, !202, !"_entry", i1 false, i1 false}
!205 = !{ptr @wm8961_set_sysclk._entry_ptr, !202, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.93, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../sound/soc/codecs/wm8961.c", i32 606, i32 3}
!208 = !{ptr @wm8961_set_sysclk.__UNIQUE_ID_ddebug299, !207, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!209 = !{ptr @.str.94, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../sound/soc/codecs/wm8961.c", i32 610, i32 3}
!211 = !{ptr @wm8961_set_sysclk.__UNIQUE_ID_ddebug300, !210, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!212 = !{ptr @.str.95, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../sound/soc/codecs/wm8961.c", i32 513, i32 3}
!214 = !{ptr @.str.96, !213, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @wm8961_hw_params._entry, !213, !"_entry", i1 false, i1 false}
!216 = !{ptr @wm8961_hw_params._entry_ptr, !213, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.97, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../sound/soc/codecs/wm8961.c", i32 528, i32 2}
!219 = !{ptr @wm8961_hw_params.__UNIQUE_ID_ddebug297, !218, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!220 = !{ptr @.str.99, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../sound/soc/codecs/wm8961.c", i32 535, i32 3}
!222 = !{ptr @wm8961_hw_params._entry.98, !221, !"_entry", i1 false, i1 false}
!223 = !{ptr @wm8961_hw_params._entry_ptr.100, !221, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.102, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../sound/soc/codecs/wm8961.c", i32 540, i32 3}
!226 = !{ptr @wm8961_hw_params._entry.101, !225, !"_entry", i1 false, i1 false}
!227 = !{ptr @wm8961_hw_params._entry_ptr.103, !225, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.105, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../sound/soc/codecs/wm8961.c", i32 550, i32 3}
!230 = !{ptr @wm8961_hw_params._entry.104, !229, !"_entry", i1 false, i1 false}
!231 = !{ptr @wm8961_hw_params._entry_ptr.106, !229, !"_entry_ptr", i1 false, i1 false}
!232 = !{ptr @.str.107, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../sound/soc/codecs/wm8961.c", i32 553, i32 2}
!234 = !{ptr @wm8961_hw_params.__UNIQUE_ID_ddebug298, !233, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!235 = !{ptr @wm8961_srate, !236, !"wm8961_srate", i1 false, i1 false}
!236 = !{!"../sound/soc/codecs/wm8961.c", i32 489, i32 3}
!237 = !{ptr @wm8961_clk_sys_ratio, !238, !"wm8961_clk_sys_ratio", i1 false, i1 false}
!238 = !{!"../sound/soc/codecs/wm8961.c", i32 472, i32 3}
!239 = !{ptr @wm8961_i2c_id, !240, !"wm8961_i2c_id", i1 false, i1 false}
!240 = !{!"../sound/soc/codecs/wm8961.c", i32 970, i32 35}
!241 = !{i32 1, !"wchar_size", i32 2}
!242 = !{i32 1, !"min_enum_size", i32 4}
!243 = !{i32 8, !"branch-target-enforcement", i32 0}
!244 = !{i32 8, !"sign-return-address", i32 0}
!245 = !{i32 8, !"sign-return-address-all", i32 0}
!246 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!247 = !{i32 7, !"uwtable", i32 1}
!248 = !{i32 7, !"frame-pointer", i32 2}
!249 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!250 = !{!"auto-init"}
!251 = !{i64 2148980029, i64 2148980034, i64 2148980047, i64 2148980091, i64 2148980125, i64 2148980146}
!252 = !{i32 0, i32 33}
