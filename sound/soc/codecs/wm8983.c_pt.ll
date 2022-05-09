; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/wm8983.c_pt.bc'
source_filename = "../sound/soc/codecs/wm8983.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
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
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.atomic_t = type { i32 }
%struct.anon.108 = type { i32, i32 }
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
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.92, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.92 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.87, [128 x i8] }
%union.anon.87 = type { %union.anon.89 }
%union.anon.89 = type { [64 x i64] }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.wm8983_priv = type { ptr, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@__initcall__kmod_snd_soc_wm8983__301_1098_wm8983_modinit6 = internal global ptr @wm8983_modinit, section ".initcall6.init", align 4
@wm8983_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @wm8983_i2c_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.6, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @wm8983_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@wm8983_spi_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @wm8983_spi_probe, ptr null, ptr null, %struct.device_driver { ptr @.str.6, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_wm8983_exit = internal global ptr @wm8983_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description302 = internal constant [46 x i8] c"snd_soc_wm8983.description=ASoC WM8983 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author303 = internal constant [75 x i8] c"snd_soc_wm8983.author=Dimitris Papastamos <dp@opensource.wolfsonmicro.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file304 = internal constant [52 x i8] c"snd_soc_wm8983.file=sound/soc/codecs/snd-soc-wm8983\00", section ".modinfo", align 1
@__UNIQUE_ID_license305 = internal constant [27 x i8] c"snd_soc_wm8983.license=GPL\00", section ".modinfo", align 1
@wm8983_modinit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1086, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013Failed to register wm8983 I2C driver: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wm8983_modinit\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sound/soc/codecs/wm8983.c\00", [38 x i8] zeroinitializer }, align 32
@wm8983_modinit._entry_ptr = internal global ptr @wm8983_modinit._entry, section ".printk_index", align 4
@wm8983_modinit._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 1093, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013Failed to register wm8983 SPI driver: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@wm8983_modinit._entry_ptr.5 = internal global ptr @wm8983_modinit._entry.3, section ".printk_index", align 4
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wm8983\00", [25 x i8] zeroinitializer }, align 32
@wm8983_i2c_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"wm8983\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@wm8983_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@wm8983_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 7, i32 0, i32 0, i32 9, ptr @wm8983_writeable, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 63, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm8983_defaults, i32 53, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"wm8983:1048:(&wm8983_regmap)->lock\00", [61 x i8] zeroinitializer }, align 32
@wm8983_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 1051, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to init regmap: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wm8983_i2c_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wm8983_i2c_probe._entry_ptr = internal global ptr @wm8983_i2c_probe._entry, section ".printk_index", align 4
@soc_component_dev_wm8983 = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @wm8983_snd_controls, i32 54, ptr @wm8983_dapm_widgets, i32 35, ptr @wm8983_audio_map, i32 40, ptr @wm8983_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm8983_set_bias_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 124, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@wm8983_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr @.str.236, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @wm8983_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.114, i64 68719477828, i32 254, i32 0, i32 0, i32 2, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.115, i64 68719477828, i32 254, i32 0, i32 0, i32 2, i32 2, i32 0 }, i8 -128, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@wm8983_defaults = internal constant { [53 x %struct.reg_default], [120 x i8] } { [53 x %struct.reg_default] [%struct.reg_default { i32 1, i32 0 }, %struct.reg_default { i32 2, i32 0 }, %struct.reg_default { i32 3, i32 0 }, %struct.reg_default { i32 4, i32 80 }, %struct.reg_default { i32 5, i32 0 }, %struct.reg_default { i32 6, i32 320 }, %struct.reg_default { i32 7, i32 0 }, %struct.reg_default { i32 8, i32 0 }, %struct.reg_default { i32 9, i32 0 }, %struct.reg_default { i32 10, i32 0 }, %struct.reg_default { i32 11, i32 255 }, %struct.reg_default { i32 12, i32 255 }, %struct.reg_default { i32 13, i32 0 }, %struct.reg_default { i32 14, i32 256 }, %struct.reg_default { i32 15, i32 255 }, %struct.reg_default { i32 16, i32 255 }, %struct.reg_default { i32 18, i32 300 }, %struct.reg_default { i32 19, i32 44 }, %struct.reg_default { i32 20, i32 44 }, %struct.reg_default { i32 21, i32 44 }, %struct.reg_default { i32 22, i32 44 }, %struct.reg_default { i32 24, i32 50 }, %struct.reg_default { i32 25, i32 0 }, %struct.reg_default { i32 27, i32 0 }, %struct.reg_default { i32 28, i32 0 }, %struct.reg_default { i32 29, i32 0 }, %struct.reg_default { i32 30, i32 0 }, %struct.reg_default { i32 32, i32 56 }, %struct.reg_default { i32 33, i32 11 }, %struct.reg_default { i32 34, i32 50 }, %struct.reg_default { i32 35, i32 0 }, %struct.reg_default { i32 36, i32 8 }, %struct.reg_default { i32 37, i32 12 }, %struct.reg_default { i32 38, i32 147 }, %struct.reg_default { i32 39, i32 233 }, %struct.reg_default { i32 41, i32 0 }, %struct.reg_default { i32 42, i32 0 }, %struct.reg_default { i32 43, i32 0 }, %struct.reg_default { i32 44, i32 51 }, %struct.reg_default { i32 45, i32 16 }, %struct.reg_default { i32 46, i32 16 }, %struct.reg_default { i32 47, i32 256 }, %struct.reg_default { i32 48, i32 256 }, %struct.reg_default { i32 49, i32 2 }, %struct.reg_default { i32 50, i32 1 }, %struct.reg_default { i32 51, i32 1 }, %struct.reg_default { i32 52, i32 57 }, %struct.reg_default { i32 53, i32 57 }, %struct.reg_default { i32 54, i32 57 }, %struct.reg_default { i32 55, i32 57 }, %struct.reg_default { i32 56, i32 1 }, %struct.reg_default { i32 57, i32 1 }, %struct.reg_default { i32 61, i32 0 }], [120 x i8] zeroinitializer }, align 32
@wm8983_snd_controls = internal constant { [54 x %struct.snd_kcontrol_new], [640 x i8] } { [54 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.12, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.13, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @alc_sel to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.14, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @alc_max_tlv }, i32 ptrtoint (ptr @.compoundliteral.15 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.16, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @alc_min_tlv }, i32 ptrtoint (ptr @.compoundliteral.17 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.18, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @alc_tar_tlv }, i32 ptrtoint (ptr @.compoundliteral.19 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.20, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.21 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.22, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.23 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.24, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.25 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.26, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @alc_mode to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.27, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.28 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.29, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.30 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.31, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @adc_tlv }, i32 ptrtoint (ptr @.compoundliteral.32 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.33, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.34 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.35, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @pga_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.36 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.37, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @pga_boost_tlv }, i32 ptrtoint (ptr @.compoundliteral.38 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.39, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.40 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.41, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.42 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.43, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @dac_tlv }, i32 ptrtoint (ptr @.compoundliteral.44 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.45, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.46 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.47, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.48 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.49, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.50 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.51, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @lim_thresh_tlv }, i32 ptrtoint (ptr @.compoundliteral.52 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.53, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @lim_boost_tlv }, i32 ptrtoint (ptr @.compoundliteral.54 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.55, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.56 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.57, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.58 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.59, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.60 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.61, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @out_tlv }, i32 ptrtoint (ptr @.compoundliteral.62 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.63, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.64 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.65, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.66 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.67, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @out_tlv }, i32 ptrtoint (ptr @.compoundliteral.68 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.69, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.70 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.71, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.72 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.73, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.74 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.75, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.76 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.77, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.78 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.79, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @filter_mode to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.80, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.81 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.82, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @aux_tlv }, i32 ptrtoint (ptr @.compoundliteral.83 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.84, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @bypass_tlv }, i32 ptrtoint (ptr @.compoundliteral.85 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.86, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @eqmode_get, ptr @eqmode_put, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @eqmode to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.87, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @eq1_cutoff to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.88, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @eq_tlv }, i32 ptrtoint (ptr @.compoundliteral.89 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.90, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @eq2_bw to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.91, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @eq2_cutoff to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.92, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @eq_tlv }, i32 ptrtoint (ptr @.compoundliteral.93 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.94, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @eq3_bw to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.95, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @eq3_cutoff to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.96, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @eq_tlv }, i32 ptrtoint (ptr @.compoundliteral.97 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.98, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @eq4_bw to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.99, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @eq4_cutoff to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.100, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @eq_tlv }, i32 ptrtoint (ptr @.compoundliteral.101 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.102, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @eq5_cutoff to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.103, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @eq_tlv }, i32 ptrtoint (ptr @.compoundliteral.104 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.105, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @depth_3d to i32) }], [640 x i8] zeroinitializer }, align 32
@wm8983_audio_map = internal constant { [40 x %struct.snd_soc_dapm_route], [512 x i8] } { [40 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.167, ptr @.str.220, ptr @.str.161, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.167, ptr @.str.222, ptr @.str.153, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.175, ptr null, ptr @.str.167, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.190, ptr null, ptr @.str.175, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.168, ptr @.str.224, ptr @.str.161, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.168, ptr @.str.226, ptr @.str.162, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.168, ptr @.str.228, ptr @.str.153, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.168, ptr @.str.230, ptr @.str.155, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.176, ptr null, ptr @.str.168, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.191, ptr null, ptr @.str.176, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.162, ptr @.str.197, ptr @.str.155, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.162, ptr @.str.195, ptr @.str.183, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.162, ptr @.str.193, ptr @.str.166, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.161, ptr @.str.197, ptr @.str.153, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.161, ptr @.str.195, ptr @.str.182, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.161, ptr @.str.193, ptr @.str.165, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.172, ptr null, ptr @.str.162, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.187, ptr null, ptr @.str.172, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.171, ptr null, ptr @.str.161, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.186, ptr null, ptr @.str.171, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.174, ptr null, ptr @.str.162, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.189, ptr null, ptr @.str.174, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.173, ptr null, ptr @.str.161, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.188, ptr null, ptr @.str.173, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.159, ptr null, ptr @.str.166, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.166, ptr @.str.218, ptr @.str.183, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.166, ptr null, ptr @.str.170, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.166, ptr @.str.216, ptr @.str.185, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.157, ptr null, ptr @.str.165, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.165, ptr @.str.214, ptr @.str.182, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.165, ptr null, ptr @.str.169, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.165, ptr @.str.212, ptr @.str.184, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.170, ptr null, ptr @.str.164, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.169, ptr null, ptr @.str.163, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.164, ptr @.str.208, ptr @.str.185, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.164, ptr @.str.204, ptr @.str.180, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.164, ptr @.str.206, ptr @.str.181, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.163, ptr @.str.202, ptr @.str.184, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.163, ptr @.str.204, ptr @.str.178, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.163, ptr @.str.206, ptr @.str.179, ptr null, %struct.snd_soc_dobj zeroinitializer }], [512 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Digital Loopback Switch\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 5, i32 5, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ALC Capture Function\00", [43 x i8] zeroinitializer }, align 32
@alc_sel = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 32, i8 7, i8 7, i32 4, i32 3, ptr @alc_sel_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ALC Capture Max Volume\00", [41 x i8] zeroinitializer }, align 32
@alc_max_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -675, i32 600], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.15 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 32, i32 32, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ALC Capture Min Volume\00", [41 x i8] zeroinitializer }, align 32
@alc_min_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -1200, i32 600], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.17 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 32, i32 32, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ALC Capture Target Volume\00", [38 x i8] zeroinitializer }, align 32
@alc_tar_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -2250, i32 150], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.19 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 33, i32 33, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ALC Capture Attack\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.21 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 10, i32 10, i32 34, i32 34, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ALC Capture Hold\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.23 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 10, i32 10, i32 33, i32 33, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ALC Capture Decay\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.25 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 10, i32 10, i32 34, i32 34, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ALC Mode\00", [23 x i8] zeroinitializer }, align 32
@alc_mode = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 34, i8 8, i8 8, i32 2, i32 1, ptr @alc_mode_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ALC Capture NG Switch\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.28 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 35, i32 35, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ALC Capture NG Threshold\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.30 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 35, i32 35, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Capture Volume\00", [17 x i8] zeroinitializer }, align 32
@adc_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -12700, i32 65586], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.32 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 15, i32 16, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Capture PGA ZC Switch\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.34 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 45, i32 46, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Capture PGA Volume\00", [45 x i8] zeroinitializer }, align 32
@pga_vol_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -1200, i32 75], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.36 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 45, i32 46, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Capture PGA Boost Volume\00", [39 x i8] zeroinitializer }, align 32
@pga_boost_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 0, i32 2000], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.38 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 47, i32 48, i32 8, i32 8, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ADC Inversion Switch\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.40 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 14, i32 14, i32 0, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ADC 128x Oversampling Switch\00", [35 x i8] zeroinitializer }, align 32
@.compoundliteral.42 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 14, i32 14, i32 8, i32 8, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Playback Volume\00", [16 x i8] zeroinitializer }, align 32
@dac_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -12700, i32 65586], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.44 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 11, i32 12, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DAC Playback Limiter Switch\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.46 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 24, i32 24, i32 8, i32 8, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DAC Playback Limiter Decay\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.48 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 10, i32 10, i32 24, i32 24, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DAC Playback Limiter Attack\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.50 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 11, i32 11, i32 24, i32 24, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"DAC Playback Limiter Threshold\00", [33 x i8] zeroinitializer }, align 32
@lim_thresh_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -600, i32 100], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.52 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 25, i32 25, i32 4, i32 4, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"DAC Playback Limiter Boost Volume\00", [62 x i8] zeroinitializer }, align 32
@lim_boost_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 0, i32 100], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.54 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 12, i32 12, i32 25, i32 25, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DAC Inversion Switch\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.56 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 10, i32 10, i32 0, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DAC Auto Mute Switch\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.58 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 10, i32 10, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"DAC 128x Oversampling Switch\00", [35 x i8] zeroinitializer }, align 32
@.compoundliteral.60 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 10, i32 10, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Headphone Playback Volume\00", [38 x i8] zeroinitializer }, align 32
@out_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -5700, i32 100], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.62 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 52, i32 53, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Headphone Playback ZC Switch\00", [35 x i8] zeroinitializer }, align 32
@.compoundliteral.64 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 52, i32 53, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Headphone Switch\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.66 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 52, i32 53, i32 6, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Speaker Playback Volume\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.68 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 54, i32 55, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Speaker Playback ZC Switch\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.70 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 54, i32 55, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Speaker Switch\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.72 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 54, i32 55, i32 6, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"OUT3 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.74 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 56, i32 56, i32 6, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"OUT4 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.76 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 57, i32 57, i32 6, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"High Pass Filter Switch\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.78 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 14, i32 14, i32 8, i32 8, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"High Pass Filter Mode\00", [42 x i8] zeroinitializer }, align 32
@filter_mode = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 14, i8 7, i8 7, i32 2, i32 1, ptr @filter_mode_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"High Pass Filter Cutoff\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.81 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 14, i32 14, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Aux Bypass Volume\00", [46 x i8] zeroinitializer }, align 32
@aux_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -1500, i32 300], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.83 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 50, i32 51, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Input PGA Bypass Volume\00", [40 x i8] zeroinitializer }, align 32
@bypass_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -1500, i32 300], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.85 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 50, i32 51, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Equalizer Function\00", [45 x i8] zeroinitializer }, align 32
@eqmode = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 0, i8 0, i8 0, i32 2, i32 0, ptr @eqmode_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"EQ1 Cutoff\00", [21 x i8] zeroinitializer }, align 32
@eq1_cutoff = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 18, i8 5, i8 5, i32 4, i32 3, ptr @eq1_cutoff_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"EQ1 Volume\00", [21 x i8] zeroinitializer }, align 32
@eq_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -1200, i32 100], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.89 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 24, i32 24, i32 18, i32 18, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"EQ2 Bandwidth\00", [18 x i8] zeroinitializer }, align 32
@eq2_bw = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 19, i8 8, i8 8, i32 2, i32 1, ptr @eq_bw_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"EQ2 Cutoff\00", [21 x i8] zeroinitializer }, align 32
@eq2_cutoff = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 19, i8 5, i8 5, i32 4, i32 3, ptr @eq2_cutoff_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"EQ2 Volume\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.93 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 24, i32 24, i32 19, i32 19, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"EQ3 Bandwidth\00", [18 x i8] zeroinitializer }, align 32
@eq3_bw = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 20, i8 8, i8 8, i32 2, i32 1, ptr @eq_bw_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"EQ3 Cutoff\00", [21 x i8] zeroinitializer }, align 32
@eq3_cutoff = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 20, i8 5, i8 5, i32 4, i32 3, ptr @eq3_cutoff_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"EQ3 Volume\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.97 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 24, i32 24, i32 20, i32 20, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"EQ4 Bandwidth\00", [18 x i8] zeroinitializer }, align 32
@eq4_bw = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 21, i8 8, i8 8, i32 2, i32 1, ptr @eq_bw_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"EQ4 Cutoff\00", [21 x i8] zeroinitializer }, align 32
@eq4_cutoff = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 21, i8 5, i8 5, i32 4, i32 3, ptr @eq4_cutoff_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"EQ4 Volume\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.101 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 24, i32 24, i32 21, i32 21, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"EQ5 Cutoff\00", [21 x i8] zeroinitializer }, align 32
@eq5_cutoff = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 22, i8 5, i8 5, i32 4, i32 3, ptr @eq5_cutoff_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"EQ5 Volume\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.104 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 24, i32 24, i32 22, i32 22, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"3D Depth\00", [23 x i8] zeroinitializer }, align 32
@depth_3d = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 41, i8 0, i8 0, i32 16, i32 15, ptr @depth_3d_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@alc_sel_text = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109], [16 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Off\00", [28 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Right\00", [26 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Left\00", [27 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Stereo\00", [25 x i8] zeroinitializer }, align 32
@alc_mode_text = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.110, ptr @.str.111], [24 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ALC\00", [28 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Limiter\00", [24 x i8] zeroinitializer }, align 32
@filter_mode_text = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.112, ptr @.str.113], [24 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Audio\00", [26 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Application\00", [20 x i8] zeroinitializer }, align 32
@eqmode_text = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.114, ptr @.str.115], [24 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Capture\00", [24 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Playback\00", [23 x i8] zeroinitializer }, align 32
@eq1_cutoff_text = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119], [16 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"80Hz\00", [27 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"105Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"135Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"175Hz\00", [26 x i8] zeroinitializer }, align 32
@eq_bw_text = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.120, ptr @.str.121], [24 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Narrow\00", [25 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Wide\00", [27 x i8] zeroinitializer }, align 32
@eq2_cutoff_text = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125], [16 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"230Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"300Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"385Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"500Hz\00", [26 x i8] zeroinitializer }, align 32
@eq3_cutoff_text = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129], [16 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"650Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"850Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"1.1kHz\00", [25 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"1.4kHz\00", [25 x i8] zeroinitializer }, align 32
@eq4_cutoff_text = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133], [16 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"1.8kHz\00", [25 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"2.4kHz\00", [25 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"3.2kHz\00", [25 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"4.1kHz\00", [25 x i8] zeroinitializer }, align 32
@eq5_cutoff_text = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137], [16 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"5.3kHz\00", [25 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"6.9kHz\00", [25 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"9kHz\00", [27 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"11.7kHz\00", [24 x i8] zeroinitializer }, align 32
@depth_3d_text = internal global { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.106, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152], [32 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"6.67%\00", [26 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"13.3%\00", [26 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"20%\00", [28 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"26.7%\00", [26 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"33.3%\00", [26 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"40%\00", [28 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"46.6%\00", [26 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"53.3%\00", [26 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"60%\00", [28 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"66.7%\00", [26 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"73.3%\00", [26 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"80%\00", [28 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"86.7%\00", [26 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"93.3%\00", [26 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"100%\00", [27 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Left DAC\00", [23 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Left Playback\00", [18 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Right DAC\00", [22 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Right Playback\00", [17 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Left ADC\00", [23 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Left Capture\00", [19 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Right ADC\00", [22 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Right Capture\00", [18 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Left Output Mixer\00", [46 x i8] zeroinitializer }, align 32
@left_out_mixer = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.193, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.194 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.195, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.196 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.197, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.198 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Right Output Mixer\00", [45 x i8] zeroinitializer }, align 32
@right_out_mixer = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.193, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.199 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.195, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.200 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.197, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.201 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Left Input Mixer\00", [47 x i8] zeroinitializer }, align 32
@left_input_mixer = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.202, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.203 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.204, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.205 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.206, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.207 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Right Input Mixer\00", [46 x i8] zeroinitializer }, align 32
@right_input_mixer = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.208, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.209 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.204, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.210 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.206, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.211 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Left Boost Mixer\00", [47 x i8] zeroinitializer }, align 32
@left_boost_mixer = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.212, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 { ptr @boost_tlv }, i32 ptrtoint (ptr @.compoundliteral.213 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.214, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 { ptr @boost_tlv }, i32 ptrtoint (ptr @.compoundliteral.215 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Right Boost Mixer\00", [46 x i8] zeroinitializer }, align 32
@right_boost_mixer = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.216, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 { ptr @boost_tlv }, i32 ptrtoint (ptr @.compoundliteral.217 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.218, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 { ptr @boost_tlv }, i32 ptrtoint (ptr @.compoundliteral.219 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"OUT3 Mixer\00", [21 x i8] zeroinitializer }, align 32
@out3_mixer = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.220, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.221 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.222, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.223 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"OUT4 Mixer\00", [21 x i8] zeroinitializer }, align 32
@out4_mixer = internal constant { [4 x %struct.snd_kcontrol_new], [32 x i8] } { [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.224, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.225 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.226, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.227 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.228, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.229 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.230, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.231 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Left Capture PGA\00", [47 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Right Capture PGA\00", [46 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Left Headphone Out\00", [45 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Right Headphone Out\00", [44 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Left Speaker Out\00", [47 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Right Speaker Out\00", [46 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"OUT3 Out\00", [23 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"OUT4 Out\00", [23 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Mic Bias\00", [23 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"LIN\00", [28 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"LIP\00", [28 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RIN\00", [28 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RIP\00", [28 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AUXL\00", [27 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AUXR\00", [27 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"L2\00", [29 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"R2\00", [29 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"HPL\00", [28 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"HPR\00", [28 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SPKL\00", [27 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SPKR\00", [27 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"OUT3\00", [27 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"OUT4\00", [27 x i8] zeroinitializer }, align 32
@wm8983_dapm_widgets = internal constant { [35 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [1572 x i8] } { [35 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.153, ptr @.str.154, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.155, ptr @.str.156, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.157, ptr @.str.158, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.159, ptr @.str.160, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.161, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 3, ptr @left_out_mixer, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.162, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 3, ptr @right_out_mixer, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.163, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 3, ptr @left_input_mixer, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.164, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 3, ptr @right_input_mixer, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.165, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @left_boost_mixer, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.166, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @right_boost_mixer, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.167, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 1, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @out3_mixer, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.168, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 1, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @out4_mixer, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.169, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 45, i8 6, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.170, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 46, i8 6, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.171, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.172, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2, i8 8, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.173, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.174, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.175, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.176, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 8, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.177, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 1, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.178, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.179, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.180, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.181, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.182, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.183, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.184, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.185, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.186, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.187, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.188, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.189, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.190, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.191, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [1572 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Line Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.194 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 50, i32 50, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Aux Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.196 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 50, i32 50, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PCM Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.198 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 50, i32 50, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.199 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 51, i32 51, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.200 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 51, i32 51, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.201 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 51, i32 51, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"L2 Switch\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.203 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 44, i32 44, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MicN Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.205 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 44, i32 44, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MicP Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.207 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 44, i32 44, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"R2 Switch\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.209 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 44, i32 44, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.210 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 44, i32 44, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.211 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 44, i32 44, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"L2 Volume\00", [22 x i8] zeroinitializer }, align 32
@boost_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -1200, i32 65836], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.213 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 47, i32 47, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"AUXL Volume\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.215 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 47, i32 47, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"R2 Volume\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.217 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 48, i32 48, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"AUXR Volume\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.219 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 48, i32 48, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"LMIX2OUT3 Switch\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.221 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 56, i32 56, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"LDAC2OUT3 Switch\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.223 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 56, i32 56, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"LMIX2OUT4 Switch\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.225 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 57, i32 57, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RMIX2OUT4 Switch\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.227 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 57, i32 57, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"LDAC2OUT4 Switch\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.229 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 57, i32 57, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"RDAC2OUT4 Switch\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.231 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 57, i32 57, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@wm8983_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.232, ptr @.str.233, ptr @.str.2, i32 920, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to issue reset: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wm8983_probe\00", [19 x i8] zeroinitializer }, align 32
@wm8983_probe._entry_ptr = internal global ptr @wm8983_probe._entry, section ".printk_index", align 4
@wm8983_set_bias_level._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.234, ptr @.str.235, ptr @.str.2, i32 865, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to sync cache: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wm8983_set_bias_level\00", [42 x i8] zeroinitializer }, align 32
@wm8983_set_bias_level._entry_ptr = internal global ptr @wm8983_set_bias_level._entry, section ".printk_index", align 4
@.str.236 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wm8983-hifi\00", [20 x i8] zeroinitializer }, align 32
@wm8983_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @wm8983_set_sysclk, ptr @wm8983_set_pll, ptr null, ptr null, ptr @wm8983_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm8983_dac_mute, ptr null, ptr null, ptr @wm8983_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 -128 }, [32 x i8] zeroinitializer }, align 32
@wm8983_set_sysclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.237, ptr @.str.238, ptr @.str.2, i32 839, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unknown clock source: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wm8983_set_sysclk\00", [46 x i8] zeroinitializer }, align 32
@wm8983_set_sysclk._entry_ptr = internal global ptr @wm8983_set_sysclk._entry, section ".printk_index", align 4
@pll_factors._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.239, ptr @.str.240, ptr @.str.2, i32 766, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\013%s: WM8983 N value is not within the recommended range: %lu\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pll_factors\00", [20 x i8] zeroinitializer }, align 32
@pll_factors._entry_ptr = internal global ptr @pll_factors._entry, section ".printk_index", align 4
@wm8983_set_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.241, ptr @.str.242, ptr @.str.2, i32 589, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Unknown dai format\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wm8983_set_fmt\00", [17 x i8] zeroinitializer }, align 32
@wm8983_set_fmt._entry_ptr = internal global ptr @wm8983_set_fmt._entry, section ".printk_index", align 4
@wm8983_set_fmt._entry.243 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.244, ptr @.str.242, ptr @.str.2, i32 604, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Unknown master/slave configuration\0A\00", [60 x i8] zeroinitializer }, align 32
@wm8983_set_fmt._entry_ptr.245 = internal global ptr @wm8983_set_fmt._entry.243, section ".printk_index", align 4
@wm8983_set_fmt._entry.246 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.247, ptr @.str.242, ptr @.str.2, i32 615, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"DSP A/B modes are not supported\0A\00", [63 x i8] zeroinitializer }, align 32
@wm8983_set_fmt._entry_ptr.248 = internal global ptr @wm8983_set_fmt._entry.246, section ".printk_index", align 4
@wm8983_set_fmt._entry.249 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.250, ptr @.str.242, ptr @.str.2, i32 635, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unknown polarity configuration\0A\00", [32 x i8] zeroinitializer }, align 32
@wm8983_set_fmt._entry_ptr.251 = internal global ptr @wm8983_set_fmt._entry.249, section ".printk_index", align 4
@wm8983_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.252, ptr @.str.253, ptr @.str.2, i32 660, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to convert params to bclk: %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wm8983_hw_params\00", [47 x i8] zeroinitializer }, align 32
@wm8983_hw_params._entry_ptr = internal global ptr @wm8983_hw_params._entry, section ".printk_index", align 4
@wm8983_hw_params._entry.254 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.255, ptr @.str.253, ptr @.str.2, i32 681, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unsupported word length %u\0A\00", [36 x i8] zeroinitializer }, align 32
@wm8983_hw_params._entry_ptr.256 = internal global ptr @wm8983_hw_params._entry.254, section ".printk_index", align 4
@srates = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 48000, i32 32000, i32 24000, i32 16000, i32 12000, i32 8000], [40 x i8] zeroinitializer }, align 32
@wm8983_hw_params.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.257, ptr @.str.253, ptr @.str.2, ptr @.str.258, i8 0, i8 -81, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.257 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"snd_soc_wm8983\00", [17 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Selected SRATE = %d\0A\00", [43 x i8] zeroinitializer }, align 32
@wm8983_hw_params.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.257, ptr @.str.253, ptr @.str.2, ptr @.str.259, i8 0, i8 -80, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.259 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Target BCLK = %uHz\0A\00", [44 x i8] zeroinitializer }, align 32
@wm8983_hw_params.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.257, ptr @.str.253, ptr @.str.2, ptr @.str.260, i8 0, i8 -80, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.260 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SYSCLK = %uHz\0A\00", [17 x i8] zeroinitializer }, align 32
@fs_ratios = internal constant { [8 x %struct.anon.108], [32 x i8] } { [8 x %struct.anon.108] [%struct.anon.108 { i32 10, i32 128 }, %struct.anon.108 { i32 15, i32 192 }, %struct.anon.108 { i32 20, i32 256 }, %struct.anon.108 { i32 30, i32 384 }, %struct.anon.108 { i32 40, i32 512 }, %struct.anon.108 { i32 60, i32 768 }, %struct.anon.108 { i32 80, i32 1024 }, %struct.anon.108 { i32 120, i32 1536 }], [32 x i8] zeroinitializer }, align 32
@wm8983_hw_params._entry.261 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.262, ptr @.str.253, ptr @.str.2, i32 716, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Unable to configure MCLK ratio %u/%u\0A\00", [58 x i8] zeroinitializer }, align 32
@wm8983_hw_params._entry_ptr.263 = internal global ptr @wm8983_hw_params._entry.261, section ".printk_index", align 4
@wm8983_hw_params.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.257, ptr @.str.253, ptr @.str.2, ptr @.str.264, i8 0, i8 -76, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.264 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MCLK ratio = %dfs\0A\00", [45 x i8] zeroinitializer }, align 32
@wm8983_hw_params._entry.265 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.266, ptr @.str.253, ptr @.str.2, i32 732, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"No matching BCLK divider found\0A\00", [32 x i8] zeroinitializer }, align 32
@wm8983_hw_params._entry_ptr.267 = internal global ptr @wm8983_hw_params._entry.265, section ".printk_index", align 4
@wm8983_hw_params.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.257, ptr @.str.253, ptr @.str.2, ptr @.str.268, i8 0, i8 -72, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.268 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"BCLK div = %d\0A\00", [17 x i8] zeroinitializer }, align 32
@wm8983_spi_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.269 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"wm8983:1015:(&wm8983_regmap)->lock\00", [61 x i8] zeroinitializer }, align 32
@wm8983_spi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.270, ptr @.str.2, i32 1018, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wm8983_spi_probe\00", [47 x i8] zeroinitializer }, align 32
@wm8983_spi_probe._entry_ptr = internal global ptr @wm8983_spi_probe._entry, section ".printk_index", align 4
@switch.table.wm8983_set_fmt = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 16, i32 0, i32 8, i32 24, i32 24], [44 x i8] zeroinitializer }, align 32
@switch.table.wm8983_set_fmt.271 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 0, i32 0, i32 256, i32 256], [44 x i8] zeroinitializer }, align 32
@switch.table.wm8983_set_fmt.272 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 0, i32 128, i32 0, i32 128], [44 x i8] zeroinitializer }, align 32
@switch.table.wm8983_hw_params = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 32, i32 64, i32 0, i32 96], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [57 x i64] [i64 55, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 27, i64 28, i64 29, i64 30, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 41, i64 42, i64 43, i64 44, i64 45, i64 46, i64 47, i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 56, i64 57, i64 61]
@__sancov_gen_cov_switch_values.273 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.274 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.275 = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.276 = internal global [10 x i64] [i64 8, i64 32, i64 128, i64 192, i64 256, i64 384, i64 512, i64 768, i64 1024, i64 1536]
@___asan_gen_.277 = private unnamed_addr constant [18 x i8] c"wm8983_i2c_driver\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 1069, i32 26 }
@___asan_gen_.280 = private unnamed_addr constant [18 x i8] c"wm8983_spi_driver\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 1029, i32 26 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 1085, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 1092, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 1071, i32 11 }
@___asan_gen_.304 = private unnamed_addr constant [14 x i8] c"wm8983_i2c_id\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 1063, i32 35 }
@___asan_gen_.310 = private unnamed_addr constant [14 x i8] c"wm8983_regmap\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 993, i32 35 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 1048, i32 19 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 1051, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant [25 x i8] c"soc_component_dev_wm8983\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 977, i32 46 }
@___asan_gen_.334 = private unnamed_addr constant [11 x i8] c"wm8983_dai\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 957, i32 34 }
@___asan_gen_.337 = private unnamed_addr constant [16 x i8] c"wm8983_defaults\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 28, i32 33 }
@___asan_gen_.340 = private unnamed_addr constant [20 x i8] c"wm8983_snd_controls\00", align 1
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 205, i32 38 }
@___asan_gen_.343 = private unnamed_addr constant [17 x i8] c"wm8983_audio_map\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 430, i32 40 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 206, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 209, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant [8 x i8] c"alc_sel\00", align 1
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 145, i32 8 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 210, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant [12 x i8] c"alc_max_tlv\00", align 1
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 135, i32 14 }
@___asan_gen_.362 = private unnamed_addr constant [20 x i8] c".compoundliteral.15\00", align 1
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 212, i32 2 }
@___asan_gen_.366 = private unnamed_addr constant [12 x i8] c"alc_min_tlv\00", align 1
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 134, i32 14 }
@___asan_gen_.369 = private unnamed_addr constant [20 x i8] c".compoundliteral.17\00", align 1
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 214, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant [12 x i8] c"alc_tar_tlv\00", align 1
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 136, i32 14 }
@___asan_gen_.376 = private unnamed_addr constant [20 x i8] c".compoundliteral.19\00", align 1
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 216, i32 2 }
@___asan_gen_.380 = private unnamed_addr constant [20 x i8] c".compoundliteral.21\00", align 1
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 217, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant [20 x i8] c".compoundliteral.23\00", align 1
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 218, i32 2 }
@___asan_gen_.388 = private unnamed_addr constant [20 x i8] c".compoundliteral.25\00", align 1
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 219, i32 2 }
@___asan_gen_.392 = private unnamed_addr constant [9 x i8] c"alc_mode\00", align 1
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 148, i32 8 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 220, i32 2 }
@___asan_gen_.398 = private unnamed_addr constant [20 x i8] c".compoundliteral.28\00", align 1
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 222, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant [20 x i8] c".compoundliteral.30\00", align 1
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 225, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant [8 x i8] c"adc_tlv\00", align 1
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 130, i32 14 }
@___asan_gen_.409 = private unnamed_addr constant [20 x i8] c".compoundliteral.32\00", align 1
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 227, i32 2 }
@___asan_gen_.413 = private unnamed_addr constant [20 x i8] c".compoundliteral.34\00", align 1
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 229, i32 2 }
@___asan_gen_.417 = private unnamed_addr constant [12 x i8] c"pga_vol_tlv\00", align 1
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 137, i32 14 }
@___asan_gen_.420 = private unnamed_addr constant [20 x i8] c".compoundliteral.36\00", align 1
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 232, i32 2 }
@___asan_gen_.424 = private unnamed_addr constant [14 x i8] c"pga_boost_tlv\00", align 1
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 142, i32 14 }
@___asan_gen_.427 = private unnamed_addr constant [20 x i8] c".compoundliteral.38\00", align 1
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 236, i32 2 }
@___asan_gen_.431 = private unnamed_addr constant [20 x i8] c".compoundliteral.40\00", align 1
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 237, i32 2 }
@___asan_gen_.435 = private unnamed_addr constant [20 x i8] c".compoundliteral.42\00", align 1
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 239, i32 2 }
@___asan_gen_.439 = private unnamed_addr constant [8 x i8] c"dac_tlv\00", align 1
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 129, i32 14 }
@___asan_gen_.442 = private unnamed_addr constant [20 x i8] c".compoundliteral.44\00", align 1
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 242, i32 2 }
@___asan_gen_.446 = private unnamed_addr constant [20 x i8] c".compoundliteral.46\00", align 1
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 243, i32 2 }
@___asan_gen_.450 = private unnamed_addr constant [20 x i8] c".compoundliteral.48\00", align 1
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 244, i32 2 }
@___asan_gen_.454 = private unnamed_addr constant [20 x i8] c".compoundliteral.50\00", align 1
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 245, i32 2 }
@___asan_gen_.458 = private unnamed_addr constant [15 x i8] c"lim_thresh_tlv\00", align 1
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 132, i32 14 }
@___asan_gen_.461 = private unnamed_addr constant [20 x i8] c".compoundliteral.52\00", align 1
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 247, i32 2 }
@___asan_gen_.465 = private unnamed_addr constant [14 x i8] c"lim_boost_tlv\00", align 1
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 133, i32 14 }
@___asan_gen_.468 = private unnamed_addr constant [20 x i8] c".compoundliteral.54\00", align 1
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 249, i32 2 }
@___asan_gen_.472 = private unnamed_addr constant [20 x i8] c".compoundliteral.56\00", align 1
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 250, i32 2 }
@___asan_gen_.476 = private unnamed_addr constant [20 x i8] c".compoundliteral.58\00", align 1
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 251, i32 2 }
@___asan_gen_.480 = private unnamed_addr constant [20 x i8] c".compoundliteral.60\00", align 1
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 253, i32 2 }
@___asan_gen_.484 = private unnamed_addr constant [8 x i8] c"out_tlv\00", align 1
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 131, i32 14 }
@___asan_gen_.487 = private unnamed_addr constant [20 x i8] c".compoundliteral.62\00", align 1
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 255, i32 2 }
@___asan_gen_.491 = private unnamed_addr constant [20 x i8] c".compoundliteral.64\00", align 1
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 257, i32 2 }
@___asan_gen_.495 = private unnamed_addr constant [20 x i8] c".compoundliteral.66\00", align 1
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 260, i32 2 }
@___asan_gen_.499 = private unnamed_addr constant [20 x i8] c".compoundliteral.68\00", align 1
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 262, i32 2 }
@___asan_gen_.503 = private unnamed_addr constant [20 x i8] c".compoundliteral.70\00", align 1
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 264, i32 2 }
@___asan_gen_.507 = private unnamed_addr constant [20 x i8] c".compoundliteral.72\00", align 1
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 267, i32 2 }
@___asan_gen_.511 = private unnamed_addr constant [20 x i8] c".compoundliteral.74\00", align 1
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 270, i32 2 }
@___asan_gen_.515 = private unnamed_addr constant [20 x i8] c".compoundliteral.76\00", align 1
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 273, i32 2 }
@___asan_gen_.519 = private unnamed_addr constant [20 x i8] c".compoundliteral.78\00", align 1
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 274, i32 2 }
@___asan_gen_.523 = private unnamed_addr constant [12 x i8] c"filter_mode\00", align 1
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 151, i32 8 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 275, i32 2 }
@___asan_gen_.529 = private unnamed_addr constant [20 x i8] c".compoundliteral.81\00", align 1
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 277, i32 2 }
@___asan_gen_.533 = private unnamed_addr constant [8 x i8] c"aux_tlv\00", align 1
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 140, i32 14 }
@___asan_gen_.536 = private unnamed_addr constant [20 x i8] c".compoundliteral.83\00", align 1
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 281, i32 2 }
@___asan_gen_.540 = private unnamed_addr constant [11 x i8] c"bypass_tlv\00", align 1
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 141, i32 14 }
@___asan_gen_.543 = private unnamed_addr constant [20 x i8] c".compoundliteral.85\00", align 1
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 285, i32 2 }
@___asan_gen_.547 = private unnamed_addr constant [7 x i8] c"eqmode\00", align 1
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 156, i32 8 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 286, i32 2 }
@___asan_gen_.553 = private unnamed_addr constant [11 x i8] c"eq1_cutoff\00", align 1
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 161, i32 8 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 287, i32 2 }
@___asan_gen_.559 = private unnamed_addr constant [7 x i8] c"eq_tlv\00", align 1
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 139, i32 14 }
@___asan_gen_.562 = private unnamed_addr constant [20 x i8] c".compoundliteral.89\00", align 1
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 288, i32 2 }
@___asan_gen_.566 = private unnamed_addr constant [7 x i8] c"eq2_bw\00", align 1
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 166, i32 8 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 289, i32 2 }
@___asan_gen_.572 = private unnamed_addr constant [11 x i8] c"eq2_cutoff\00", align 1
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 167, i32 8 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 290, i32 2 }
@___asan_gen_.578 = private unnamed_addr constant [20 x i8] c".compoundliteral.93\00", align 1
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 291, i32 2 }
@___asan_gen_.582 = private unnamed_addr constant [7 x i8] c"eq3_bw\00", align 1
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 171, i32 8 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 292, i32 2 }
@___asan_gen_.588 = private unnamed_addr constant [11 x i8] c"eq3_cutoff\00", align 1
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 172, i32 8 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 293, i32 2 }
@___asan_gen_.594 = private unnamed_addr constant [20 x i8] c".compoundliteral.97\00", align 1
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 294, i32 2 }
@___asan_gen_.598 = private unnamed_addr constant [7 x i8] c"eq4_bw\00", align 1
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 176, i32 8 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 295, i32 2 }
@___asan_gen_.604 = private unnamed_addr constant [11 x i8] c"eq4_cutoff\00", align 1
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 177, i32 8 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 296, i32 2 }
@___asan_gen_.610 = private unnamed_addr constant [21 x i8] c".compoundliteral.101\00", align 1
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 297, i32 2 }
@___asan_gen_.614 = private unnamed_addr constant [11 x i8] c"eq5_cutoff\00", align 1
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 181, i32 8 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 298, i32 2 }
@___asan_gen_.620 = private unnamed_addr constant [21 x i8] c".compoundliteral.104\00", align 1
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 300, i32 2 }
@___asan_gen_.624 = private unnamed_addr constant [9 x i8] c"depth_3d\00", align 1
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 202, i32 8 }
@___asan_gen_.627 = private unnamed_addr constant [13 x i8] c"alc_sel_text\00", align 1
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 144, i32 20 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 144, i32 39 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 144, i32 46 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 144, i32 55 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 144, i32 63 }
@___asan_gen_.642 = private unnamed_addr constant [14 x i8] c"alc_mode_text\00", align 1
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 147, i32 20 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 147, i32 40 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 147, i32 47 }
@___asan_gen_.651 = private unnamed_addr constant [17 x i8] c"filter_mode_text\00", align 1
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 150, i32 20 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 150, i32 43 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 150, i32 52 }
@___asan_gen_.660 = private unnamed_addr constant [12 x i8] c"eqmode_text\00", align 1
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 155, i32 20 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 155, i32 38 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 155, i32 49 }
@___asan_gen_.669 = private unnamed_addr constant [16 x i8] c"eq1_cutoff_text\00", align 1
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 158, i32 20 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 159, i32 2 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 159, i32 10 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 159, i32 19 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 159, i32 28 }
@___asan_gen_.684 = private unnamed_addr constant [11 x i8] c"eq_bw_text\00", align 1
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 154, i32 20 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 154, i32 37 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 154, i32 47 }
@___asan_gen_.693 = private unnamed_addr constant [16 x i8] c"eq2_cutoff_text\00", align 1
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 163, i32 20 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 164, i32 2 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 164, i32 11 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 164, i32 20 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 164, i32 29 }
@___asan_gen_.708 = private unnamed_addr constant [16 x i8] c"eq3_cutoff_text\00", align 1
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 168, i32 20 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 169, i32 2 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 169, i32 11 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 169, i32 20 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 169, i32 30 }
@___asan_gen_.723 = private unnamed_addr constant [16 x i8] c"eq4_cutoff_text\00", align 1
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 173, i32 20 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 174, i32 2 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 174, i32 12 }
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 174, i32 22 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 174, i32 32 }
@___asan_gen_.738 = private unnamed_addr constant [16 x i8] c"eq5_cutoff_text\00", align 1
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 178, i32 20 }
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 179, i32 2 }
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 179, i32 12 }
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 179, i32 22 }
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 179, i32 30 }
@___asan_gen_.753 = private unnamed_addr constant [14 x i8] c"depth_3d_text\00", align 1
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 184, i32 20 }
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 186, i32 2 }
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 187, i32 2 }
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 188, i32 2 }
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 189, i32 2 }
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 190, i32 2 }
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 191, i32 2 }
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 192, i32 2 }
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 193, i32 2 }
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 194, i32 2 }
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 195, i32 2 }
@___asan_gen_.788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 196, i32 2 }
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 197, i32 2 }
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 198, i32 2 }
@___asan_gen_.797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 199, i32 2 }
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 200, i32 2 }
@___asan_gen_.806 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 360, i32 2 }
@___asan_gen_.812 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 362, i32 2 }
@___asan_gen_.818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 364, i32 2 }
@___asan_gen_.824 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 366, i32 2 }
@___asan_gen_.827 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 369, i32 2 }
@___asan_gen_.828 = private unnamed_addr constant [15 x i8] c"left_out_mixer\00", align 1
@___asan_gen_.830 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 303, i32 38 }
@___asan_gen_.833 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 371, i32 2 }
@___asan_gen_.834 = private unnamed_addr constant [16 x i8] c"right_out_mixer\00", align 1
@___asan_gen_.836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 309, i32 38 }
@___asan_gen_.839 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 374, i32 2 }
@___asan_gen_.840 = private unnamed_addr constant [17 x i8] c"left_input_mixer\00", align 1
@___asan_gen_.842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 315, i32 38 }
@___asan_gen_.845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 376, i32 2 }
@___asan_gen_.846 = private unnamed_addr constant [18 x i8] c"right_input_mixer\00", align 1
@___asan_gen_.848 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 321, i32 38 }
@___asan_gen_.851 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 379, i32 2 }
@___asan_gen_.852 = private unnamed_addr constant [17 x i8] c"left_boost_mixer\00", align 1
@___asan_gen_.854 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 327, i32 38 }
@___asan_gen_.857 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 381, i32 2 }
@___asan_gen_.858 = private unnamed_addr constant [18 x i8] c"right_boost_mixer\00", align 1
@___asan_gen_.860 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 352, i32 38 }
@___asan_gen_.863 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 384, i32 2 }
@___asan_gen_.864 = private unnamed_addr constant [11 x i8] c"out3_mixer\00", align 1
@___asan_gen_.866 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 334, i32 38 }
@___asan_gen_.869 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 387, i32 2 }
@___asan_gen_.870 = private unnamed_addr constant [11 x i8] c"out4_mixer\00", align 1
@___asan_gen_.872 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 341, i32 38 }
@___asan_gen_.875 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 390, i32 2 }
@___asan_gen_.878 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 392, i32 2 }
@___asan_gen_.881 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 395, i32 2 }
@___asan_gen_.884 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 397, i32 2 }
@___asan_gen_.887 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 400, i32 2 }
@___asan_gen_.890 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 402, i32 2 }
@___asan_gen_.893 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 405, i32 2 }
@___asan_gen_.896 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 408, i32 2 }
@___asan_gen_.899 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 411, i32 2 }
@___asan_gen_.902 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 414, i32 2 }
@___asan_gen_.905 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 415, i32 2 }
@___asan_gen_.908 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 416, i32 2 }
@___asan_gen_.911 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 417, i32 2 }
@___asan_gen_.914 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 418, i32 2 }
@___asan_gen_.917 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 419, i32 2 }
@___asan_gen_.920 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 420, i32 2 }
@___asan_gen_.923 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 421, i32 2 }
@___asan_gen_.926 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 422, i32 2 }
@___asan_gen_.929 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 423, i32 2 }
@___asan_gen_.932 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 424, i32 2 }
@___asan_gen_.935 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 425, i32 2 }
@___asan_gen_.938 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 426, i32 2 }
@___asan_gen_.941 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 427, i32 2 }
@___asan_gen_.942 = private unnamed_addr constant [20 x i8] c"wm8983_dapm_widgets\00", align 1
@___asan_gen_.944 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 359, i32 41 }
@___asan_gen_.947 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 304, i32 2 }
@___asan_gen_.948 = private unnamed_addr constant [21 x i8] c".compoundliteral.194\00", align 1
@___asan_gen_.951 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 305, i32 2 }
@___asan_gen_.952 = private unnamed_addr constant [21 x i8] c".compoundliteral.196\00", align 1
@___asan_gen_.955 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 306, i32 2 }
@___asan_gen_.956 = private unnamed_addr constant [21 x i8] c".compoundliteral.198\00", align 1
@___asan_gen_.957 = private unnamed_addr constant [21 x i8] c".compoundliteral.199\00", align 1
@___asan_gen_.958 = private unnamed_addr constant [21 x i8] c".compoundliteral.200\00", align 1
@___asan_gen_.959 = private unnamed_addr constant [21 x i8] c".compoundliteral.201\00", align 1
@___asan_gen_.962 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 316, i32 2 }
@___asan_gen_.963 = private unnamed_addr constant [21 x i8] c".compoundliteral.203\00", align 1
@___asan_gen_.966 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 317, i32 2 }
@___asan_gen_.967 = private unnamed_addr constant [21 x i8] c".compoundliteral.205\00", align 1
@___asan_gen_.970 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 318, i32 2 }
@___asan_gen_.971 = private unnamed_addr constant [21 x i8] c".compoundliteral.207\00", align 1
@___asan_gen_.974 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 322, i32 2 }
@___asan_gen_.975 = private unnamed_addr constant [21 x i8] c".compoundliteral.209\00", align 1
@___asan_gen_.976 = private unnamed_addr constant [21 x i8] c".compoundliteral.210\00", align 1
@___asan_gen_.977 = private unnamed_addr constant [21 x i8] c".compoundliteral.211\00", align 1
@___asan_gen_.980 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 328, i32 2 }
@___asan_gen_.981 = private unnamed_addr constant [10 x i8] c"boost_tlv\00", align 1
@___asan_gen_.983 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 138, i32 14 }
@___asan_gen_.984 = private unnamed_addr constant [21 x i8] c".compoundliteral.213\00", align 1
@___asan_gen_.987 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 330, i32 2 }
@___asan_gen_.988 = private unnamed_addr constant [21 x i8] c".compoundliteral.215\00", align 1
@___asan_gen_.991 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 353, i32 2 }
@___asan_gen_.992 = private unnamed_addr constant [21 x i8] c".compoundliteral.217\00", align 1
@___asan_gen_.995 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 355, i32 2 }
@___asan_gen_.996 = private unnamed_addr constant [21 x i8] c".compoundliteral.219\00", align 1
@___asan_gen_.999 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 335, i32 2 }
@___asan_gen_.1000 = private unnamed_addr constant [21 x i8] c".compoundliteral.221\00", align 1
@___asan_gen_.1003 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 337, i32 2 }
@___asan_gen_.1004 = private unnamed_addr constant [21 x i8] c".compoundliteral.223\00", align 1
@___asan_gen_.1007 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 342, i32 2 }
@___asan_gen_.1008 = private unnamed_addr constant [21 x i8] c".compoundliteral.225\00", align 1
@___asan_gen_.1011 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 344, i32 2 }
@___asan_gen_.1012 = private unnamed_addr constant [21 x i8] c".compoundliteral.227\00", align 1
@___asan_gen_.1015 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 346, i32 2 }
@___asan_gen_.1016 = private unnamed_addr constant [21 x i8] c".compoundliteral.229\00", align 1
@___asan_gen_.1019 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 348, i32 2 }
@___asan_gen_.1020 = private unnamed_addr constant [21 x i8] c".compoundliteral.231\00", align 1
@___asan_gen_.1029 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 920, i32 3 }
@___asan_gen_.1038 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 865, i32 5 }
@___asan_gen_.1041 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 958, i32 10 }
@___asan_gen_.1042 = private unnamed_addr constant [15 x i8] c"wm8983_dai_ops\00", align 1
@___asan_gen_.1044 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 945, i32 37 }
@___asan_gen_.1053 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 839, i32 3 }
@___asan_gen_.1062 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 765, i32 3 }
@___asan_gen_.1071 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 589, i32 3 }
@___asan_gen_.1077 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 604, i32 3 }
@___asan_gen_.1083 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 615, i32 3 }
@___asan_gen_.1089 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 635, i32 3 }
@___asan_gen_.1098 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 660, i32 3 }
@___asan_gen_.1104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 680, i32 3 }
@___asan_gen_.1105 = private unnamed_addr constant [7 x i8] c"srates\00", align 1
@___asan_gen_.1107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 118, i32 18 }
@___asan_gen_.1113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 701, i32 2 }
@___asan_gen_.1116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 705, i32 2 }
@___asan_gen_.1119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 706, i32 2 }
@___asan_gen_.1120 = private unnamed_addr constant [10 x i8] c"fs_ratios\00", align 1
@___asan_gen_.1122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 107, i32 3 }
@___asan_gen_.1128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 715, i32 3 }
@___asan_gen_.1131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 720, i32 2 }
@___asan_gen_.1137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 732, i32 3 }
@___asan_gen_.1140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 736, i32 2 }
@___asan_gen_.1141 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.1146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 1015, i32 19 }
@___asan_gen_.1147 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1150 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1151 = private constant [29 x i8] c"../sound/soc/codecs/wm8983.c\00", align 1
@___asan_gen_.1152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1151, i32 1018, i32 3 }
@___asan_gen_.1153 = private unnamed_addr constant [28 x i8] c"switch.table.wm8983_set_fmt\00", align 1
@___asan_gen_.1154 = private unnamed_addr constant [32 x i8] c"switch.table.wm8983_set_fmt.271\00", align 1
@___asan_gen_.1155 = private unnamed_addr constant [32 x i8] c"switch.table.wm8983_set_fmt.272\00", align 1
@___asan_gen_.1156 = private unnamed_addr constant [30 x i8] c"switch.table.wm8983_hw_params\00", align 1
@llvm.compiler.used = appending global [361 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description302, ptr @__UNIQUE_ID_file304, ptr @__UNIQUE_ID_license305, ptr @__exitcall_wm8983_exit, ptr @__initcall__kmod_snd_soc_wm8983__301_1098_wm8983_modinit6, ptr @pll_factors._entry, ptr @pll_factors._entry_ptr, ptr @wm8983_exit, ptr @wm8983_hw_params._entry, ptr @wm8983_hw_params._entry.254, ptr @wm8983_hw_params._entry.261, ptr @wm8983_hw_params._entry.265, ptr @wm8983_hw_params._entry_ptr, ptr @wm8983_hw_params._entry_ptr.256, ptr @wm8983_hw_params._entry_ptr.263, ptr @wm8983_hw_params._entry_ptr.267, ptr @wm8983_i2c_probe._entry, ptr @wm8983_i2c_probe._entry_ptr, ptr @wm8983_modinit._entry, ptr @wm8983_modinit._entry.3, ptr @wm8983_modinit._entry_ptr, ptr @wm8983_modinit._entry_ptr.5, ptr @wm8983_probe._entry, ptr @wm8983_probe._entry_ptr, ptr @wm8983_set_bias_level._entry, ptr @wm8983_set_bias_level._entry_ptr, ptr @wm8983_set_fmt._entry, ptr @wm8983_set_fmt._entry.243, ptr @wm8983_set_fmt._entry.246, ptr @wm8983_set_fmt._entry.249, ptr @wm8983_set_fmt._entry_ptr, ptr @wm8983_set_fmt._entry_ptr.245, ptr @wm8983_set_fmt._entry_ptr.248, ptr @wm8983_set_fmt._entry_ptr.251, ptr @wm8983_set_sysclk._entry, ptr @wm8983_set_sysclk._entry_ptr, ptr @wm8983_spi_probe._entry, ptr @wm8983_spi_probe._entry_ptr, ptr @wm8983_i2c_driver, ptr @wm8983_spi_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @wm8983_i2c_id, ptr @wm8983_i2c_probe._key, ptr @wm8983_regmap, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @soc_component_dev_wm8983, ptr @wm8983_dai, ptr @wm8983_defaults, ptr @wm8983_snd_controls, ptr @wm8983_audio_map, ptr @.str.12, ptr @.compoundliteral, ptr @.str.13, ptr @alc_sel, ptr @.str.14, ptr @alc_max_tlv, ptr @.compoundliteral.15, ptr @.str.16, ptr @alc_min_tlv, ptr @.compoundliteral.17, ptr @.str.18, ptr @alc_tar_tlv, ptr @.compoundliteral.19, ptr @.str.20, ptr @.compoundliteral.21, ptr @.str.22, ptr @.compoundliteral.23, ptr @.str.24, ptr @.compoundliteral.25, ptr @.str.26, ptr @alc_mode, ptr @.str.27, ptr @.compoundliteral.28, ptr @.str.29, ptr @.compoundliteral.30, ptr @.str.31, ptr @adc_tlv, ptr @.compoundliteral.32, ptr @.str.33, ptr @.compoundliteral.34, ptr @.str.35, ptr @pga_vol_tlv, ptr @.compoundliteral.36, ptr @.str.37, ptr @pga_boost_tlv, ptr @.compoundliteral.38, ptr @.str.39, ptr @.compoundliteral.40, ptr @.str.41, ptr @.compoundliteral.42, ptr @.str.43, ptr @dac_tlv, ptr @.compoundliteral.44, ptr @.str.45, ptr @.compoundliteral.46, ptr @.str.47, ptr @.compoundliteral.48, ptr @.str.49, ptr @.compoundliteral.50, ptr @.str.51, ptr @lim_thresh_tlv, ptr @.compoundliteral.52, ptr @.str.53, ptr @lim_boost_tlv, ptr @.compoundliteral.54, ptr @.str.55, ptr @.compoundliteral.56, ptr @.str.57, ptr @.compoundliteral.58, ptr @.str.59, ptr @.compoundliteral.60, ptr @.str.61, ptr @out_tlv, ptr @.compoundliteral.62, ptr @.str.63, ptr @.compoundliteral.64, ptr @.str.65, ptr @.compoundliteral.66, ptr @.str.67, ptr @.compoundliteral.68, ptr @.str.69, ptr @.compoundliteral.70, ptr @.str.71, ptr @.compoundliteral.72, ptr @.str.73, ptr @.compoundliteral.74, ptr @.str.75, ptr @.compoundliteral.76, ptr @.str.77, ptr @.compoundliteral.78, ptr @.str.79, ptr @filter_mode, ptr @.str.80, ptr @.compoundliteral.81, ptr @.str.82, ptr @aux_tlv, ptr @.compoundliteral.83, ptr @.str.84, ptr @bypass_tlv, ptr @.compoundliteral.85, ptr @.str.86, ptr @eqmode, ptr @.str.87, ptr @eq1_cutoff, ptr @.str.88, ptr @eq_tlv, ptr @.compoundliteral.89, ptr @.str.90, ptr @eq2_bw, ptr @.str.91, ptr @eq2_cutoff, ptr @.str.92, ptr @.compoundliteral.93, ptr @.str.94, ptr @eq3_bw, ptr @.str.95, ptr @eq3_cutoff, ptr @.str.96, ptr @.compoundliteral.97, ptr @.str.98, ptr @eq4_bw, ptr @.str.99, ptr @eq4_cutoff, ptr @.str.100, ptr @.compoundliteral.101, ptr @.str.102, ptr @eq5_cutoff, ptr @.str.103, ptr @.compoundliteral.104, ptr @.str.105, ptr @depth_3d, ptr @alc_sel_text, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @alc_mode_text, ptr @.str.110, ptr @.str.111, ptr @filter_mode_text, ptr @.str.112, ptr @.str.113, ptr @eqmode_text, ptr @.str.114, ptr @.str.115, ptr @eq1_cutoff_text, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @eq_bw_text, ptr @.str.120, ptr @.str.121, ptr @eq2_cutoff_text, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @eq3_cutoff_text, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @eq4_cutoff_text, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @eq5_cutoff_text, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @depth_3d_text, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @left_out_mixer, ptr @.str.162, ptr @right_out_mixer, ptr @.str.163, ptr @left_input_mixer, ptr @.str.164, ptr @right_input_mixer, ptr @.str.165, ptr @left_boost_mixer, ptr @.str.166, ptr @right_boost_mixer, ptr @.str.167, ptr @out3_mixer, ptr @.str.168, ptr @out4_mixer, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @wm8983_dapm_widgets, ptr @.str.193, ptr @.compoundliteral.194, ptr @.str.195, ptr @.compoundliteral.196, ptr @.str.197, ptr @.compoundliteral.198, ptr @.compoundliteral.199, ptr @.compoundliteral.200, ptr @.compoundliteral.201, ptr @.str.202, ptr @.compoundliteral.203, ptr @.str.204, ptr @.compoundliteral.205, ptr @.str.206, ptr @.compoundliteral.207, ptr @.str.208, ptr @.compoundliteral.209, ptr @.compoundliteral.210, ptr @.compoundliteral.211, ptr @.str.212, ptr @boost_tlv, ptr @.compoundliteral.213, ptr @.str.214, ptr @.compoundliteral.215, ptr @.str.216, ptr @.compoundliteral.217, ptr @.str.218, ptr @.compoundliteral.219, ptr @.str.220, ptr @.compoundliteral.221, ptr @.str.222, ptr @.compoundliteral.223, ptr @.str.224, ptr @.compoundliteral.225, ptr @.str.226, ptr @.compoundliteral.227, ptr @.str.228, ptr @.compoundliteral.229, ptr @.str.230, ptr @.compoundliteral.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @wm8983_dai_ops, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.244, ptr @.str.247, ptr @.str.250, ptr @.str.252, ptr @.str.253, ptr @.str.255, ptr @srates, ptr @.str.257, ptr @.str.258, ptr @.str.259, ptr @.str.260, ptr @fs_ratios, ptr @.str.262, ptr @.str.264, ptr @.str.266, ptr @.str.268, ptr @wm8983_spi_probe._key, ptr @.str.269, ptr @.str.270, ptr @switch.table.wm8983_set_fmt, ptr @switch.table.wm8983_set_fmt.271, ptr @switch.table.wm8983_set_fmt.272, ptr @switch.table.wm8983_hw_params], section "llvm.metadata"
@0 = internal global [338 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8983_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8983_spi_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8983_modinit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8983_modinit._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8983_i2c_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8983_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1141 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8983_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8983_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_component_dev_wm8983 to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8983_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8983_defaults to i32), i32 424, i32 544, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8983_snd_controls to i32), i32 2592, i32 3232, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8983_audio_map to i32), i32 2080, i32 2592, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alc_sel to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alc_max_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.15 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alc_min_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.17 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alc_tar_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.19 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.21 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.23 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.25 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alc_mode to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.28 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.30 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.32 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.34 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pga_vol_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.36 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pga_boost_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.38 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.40 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.42 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.44 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.46 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.48 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.50 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lim_thresh_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.52 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lim_boost_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.54 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.56 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.58 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.60 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @out_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.62 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.64 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.66 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.68 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.70 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.72 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.74 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.76 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.78 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @filter_mode to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.81 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aux_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.83 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bypass_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.85 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eqmode to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eq1_cutoff to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eq_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.89 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eq2_bw to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eq2_cutoff to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.93 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eq3_bw to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eq3_cutoff to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.97 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eq4_bw to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eq4_cutoff to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.101 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eq5_cutoff to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.104 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @depth_3d to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alc_sel_text to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alc_mode_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @filter_mode_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eqmode_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eq1_cutoff_text to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eq_bw_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eq2_cutoff_text to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eq3_cutoff_text to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eq4_cutoff_text to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eq5_cutoff_text to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @depth_3d_text to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @left_out_mixer to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @right_out_mixer to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @left_input_mixer to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @right_input_mixer to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @left_boost_mixer to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @right_boost_mixer to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @out3_mixer to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @out4_mixer to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8983_dapm_widgets to i32), i32 6300, i32 7872, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.194 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.196 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.198 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.199 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.200 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.201 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.203 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.205 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.207 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.209 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.210 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.211 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @boost_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.213 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.215 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.217 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.219 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.221 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.223 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.225 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.227 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.229 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1019 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.231 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8983_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8983_set_bias_level._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8983_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8983_set_sysclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_factors._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8983_set_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8983_set_fmt._entry.243 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8983_set_fmt._entry.246 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8983_set_fmt._entry.249 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8983_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8983_hw_params._entry.254 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @srates to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fs_ratios to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1120 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8983_hw_params._entry.261 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8983_hw_params._entry.265 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8983_spi_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1141 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8983_spi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wm8983_set_fmt to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wm8983_set_fmt.271 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wm8983_set_fmt.272 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1155 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wm8983_hw_params to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1156 to i32), i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8983_modinit() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @wm8983_i2c_driver) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %call) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call2 = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @wm8983_spi_driver) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp.not = icmp eq i32 %call2, 0
  br i1 %cmp.not, label %if.end.if.end9_crit_edge, label %do.end6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %call2) #9
  br label %if.end9

if.end9:                                          ; preds = %do.end6, %if.end.if.end9_crit_edge
  ret i32 %call2
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @wm8983_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @wm8983_i2c_driver) #6
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @wm8983_spi_driver, i32 0, i32 4)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8983_i2c_probe(ptr noundef %i2c, ptr nocapture noundef readnone %id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 12, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef nonnull @wm8983_regmap, ptr noundef nonnull @wm8983_i2c_probe._key, ptr noundef nonnull @.str.7) #6
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call1, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %call1 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %1) #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call10 = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @soc_component_dev_wm8983, ptr noundef nonnull @wm8983_dai, i32 noundef 1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then4 ], [ %call10, %if.end8 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @wm8983_writeable(ptr nocapture noundef readnone %dev, i32 noundef %reg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %sw.default [
    i32 61, label %entry.return_crit_edge
    i32 41, label %entry.return_crit_edge6
    i32 42, label %entry.return_crit_edge7
    i32 43, label %entry.return_crit_edge8
    i32 44, label %entry.return_crit_edge9
    i32 45, label %entry.return_crit_edge10
    i32 46, label %entry.return_crit_edge11
    i32 47, label %entry.return_crit_edge12
    i32 48, label %entry.return_crit_edge13
    i32 49, label %entry.return_crit_edge14
    i32 50, label %entry.return_crit_edge15
    i32 51, label %entry.return_crit_edge16
    i32 52, label %entry.return_crit_edge17
    i32 53, label %entry.return_crit_edge18
    i32 54, label %entry.return_crit_edge19
    i32 55, label %entry.return_crit_edge20
    i32 56, label %entry.return_crit_edge21
    i32 57, label %entry.return_crit_edge22
    i32 32, label %entry.return_crit_edge23
    i32 33, label %entry.return_crit_edge24
    i32 34, label %entry.return_crit_edge25
    i32 35, label %entry.return_crit_edge26
    i32 36, label %entry.return_crit_edge27
    i32 37, label %entry.return_crit_edge28
    i32 38, label %entry.return_crit_edge29
    i32 39, label %entry.return_crit_edge30
    i32 27, label %entry.return_crit_edge31
    i32 28, label %entry.return_crit_edge32
    i32 29, label %entry.return_crit_edge33
    i32 30, label %entry.return_crit_edge34
    i32 18, label %entry.return_crit_edge35
    i32 19, label %entry.return_crit_edge36
    i32 20, label %entry.return_crit_edge37
    i32 21, label %entry.return_crit_edge38
    i32 22, label %entry.return_crit_edge39
    i32 23, label %entry.return_crit_edge40
    i32 24, label %entry.return_crit_edge41
    i32 25, label %entry.return_crit_edge42
    i32 0, label %entry.return_crit_edge43
    i32 1, label %entry.return_crit_edge44
    i32 2, label %entry.return_crit_edge45
    i32 3, label %entry.return_crit_edge46
    i32 4, label %entry.return_crit_edge47
    i32 5, label %entry.return_crit_edge48
    i32 6, label %entry.return_crit_edge49
    i32 7, label %entry.return_crit_edge50
    i32 8, label %entry.return_crit_edge51
    i32 9, label %entry.return_crit_edge52
    i32 10, label %entry.return_crit_edge53
    i32 11, label %entry.return_crit_edge54
    i32 12, label %entry.return_crit_edge55
    i32 13, label %entry.return_crit_edge56
    i32 14, label %entry.return_crit_edge57
    i32 15, label %entry.return_crit_edge58
    i32 16, label %entry.return_crit_edge59
  ]

entry.return_crit_edge59:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge58:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge57:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge56:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge55:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge54:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge53:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge52:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge51:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge50:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge49:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge48:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge47:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge46:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge45:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge44:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge43:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge42:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge41:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge40:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge39:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge38:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge37:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge36:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge35:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge34:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge33:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge32:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge31:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge30:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30, %entry.return_crit_edge31, %entry.return_crit_edge32, %entry.return_crit_edge33, %entry.return_crit_edge34, %entry.return_crit_edge35, %entry.return_crit_edge36, %entry.return_crit_edge37, %entry.return_crit_edge38, %entry.return_crit_edge39, %entry.return_crit_edge40, %entry.return_crit_edge41, %entry.return_crit_edge42, %entry.return_crit_edge43, %entry.return_crit_edge44, %entry.return_crit_edge45, %entry.return_crit_edge46, %entry.return_crit_edge47, %entry.return_crit_edge48, %entry.return_crit_edge49, %entry.return_crit_edge50, %entry.return_crit_edge51, %entry.return_crit_edge52, %entry.return_crit_edge53, %entry.return_crit_edge54, %entry.return_crit_edge55, %entry.return_crit_edge56, %entry.return_crit_edge57, %entry.return_crit_edge58, %entry.return_crit_edge59
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ], [ true, %entry.return_crit_edge30 ], [ true, %entry.return_crit_edge31 ], [ true, %entry.return_crit_edge32 ], [ true, %entry.return_crit_edge33 ], [ true, %entry.return_crit_edge34 ], [ true, %entry.return_crit_edge35 ], [ true, %entry.return_crit_edge36 ], [ true, %entry.return_crit_edge37 ], [ true, %entry.return_crit_edge38 ], [ true, %entry.return_crit_edge39 ], [ true, %entry.return_crit_edge40 ], [ true, %entry.return_crit_edge41 ], [ true, %entry.return_crit_edge42 ], [ true, %entry.return_crit_edge43 ], [ true, %entry.return_crit_edge44 ], [ true, %entry.return_crit_edge45 ], [ true, %entry.return_crit_edge46 ], [ true, %entry.return_crit_edge47 ], [ true, %entry.return_crit_edge48 ], [ true, %entry.return_crit_edge49 ], [ true, %entry.return_crit_edge50 ], [ true, %entry.return_crit_edge51 ], [ true, %entry.return_crit_edge52 ], [ true, %entry.return_crit_edge53 ], [ true, %entry.return_crit_edge54 ], [ true, %entry.return_crit_edge55 ], [ true, %entry.return_crit_edge56 ], [ true, %entry.return_crit_edge57 ], [ true, %entry.return_crit_edge58 ], [ true, %entry.return_crit_edge59 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8983_probe(ptr noundef %component) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 0, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 11, i32 noundef 256, i32 noundef 256) #6
  %call2.1 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 12, i32 noundef 256, i32 noundef 256) #6
  %call2.2 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 15, i32 noundef 256, i32 noundef 256) #6
  %call2.3 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 16, i32 noundef 256, i32 noundef 256) #6
  %call2.4 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 52, i32 noundef 256, i32 noundef 256) #6
  %call2.5 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 53, i32 noundef 256, i32 noundef 256) #6
  %call2.6 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 54, i32 noundef 256, i32 noundef 256) #6
  %call2.7 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 55, i32 noundef 256, i32 noundef 256) #6
  %call2.8 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 45, i32 noundef 256, i32 noundef 256) #6
  %call2.9 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 46, i32 noundef 256, i32 noundef 256) #6
  %call6 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 52, i32 noundef 64, i32 noundef 64) #6
  %call6.1 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 53, i32 noundef 64, i32 noundef 64) #6
  %call6.2 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 54, i32 noundef 64, i32 noundef 64) #6
  %call6.3 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 55, i32 noundef 64, i32 noundef 64) #6
  %call6.4 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 56, i32 noundef 64, i32 noundef 64) #6
  %call6.5 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 57, i32 noundef 64, i32 noundef 64) #6
  %call10 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 10, i32 noundef 64, i32 noundef 64) #6
  %call11 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 61, i32 noundef 256, i32 noundef 256) #6
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.232, i32 noundef %call) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.body.preheader
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %for.body.preheader ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8983_set_bias_level(ptr noundef %component, i32 noundef %level) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.273)
  switch i32 %level, label %entry.cleanup_crit_edge [
    i32 3, label %entry.sw.bb_crit_edge
    i32 2, label %entry.sw.bb_crit_edge37
    i32 1, label %sw.bb2
    i32 0, label %sw.bb14
  ]

entry.sw.bb_crit_edge37:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge37
  %call1 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 1, i32 noundef 3, i32 noundef 1) #6
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %dapm.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %5 = ptrtoint ptr %dapm.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dapm.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then, label %sw.bb2.if.end12_crit_edge

sw.bb2.if.end12_crit_edge:                        ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then:                                          ; preds = %sw.bb2
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 4
  %call4 = tail call i32 @regcache_sync(ptr noundef %8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %do.end, label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.234, i32 noundef %call4) #9
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call7 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 42, i32 noundef 6, i32 noundef 6) #6
  %call8 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 49, i32 noundef 2, i32 noundef 2) #6
  %call9 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 1, i32 noundef 8, i32 noundef 8) #6
  %call10 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 1, i32 noundef 3, i32 noundef 1) #6
  tail call void @msleep(i32 noundef 250) #6
  %call11 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 42, i32 noundef 6, i32 noundef 0) #6
  br label %if.end12

if.end12:                                         ; preds = %if.end, %sw.bb2.if.end12_crit_edge
  %call13 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 1, i32 noundef 3, i32 noundef 2) #6
  br label %cleanup

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call15 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 49, i32 noundef 2, i32 noundef 0) #6
  %call16 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 1, i32 noundef 11, i32 noundef 0) #6
  tail call void @msleep(i32 noundef 100) #6
  %call17 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 1, i32 noundef 0) #6
  %call18 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 2, i32 noundef 0) #6
  %call19 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 3, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.bb14, %if.end12, %do.end, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %sw.bb14 ], [ 0, %if.end12 ], [ 0, %sw.bb ]
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eqmode_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %call1 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 18) #6
  %and = lshr i32 %call1, 8
  %and.lobit = and i32 %and, 1
  %2 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %and.lobit, ptr %2, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @eqmode_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %switch39 = icmp ult i32 %3, 2
  br i1 %switch39, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 18) #6
  %4 = and i32 %call4, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %trunc.not = icmp eq i32 %4, 0
  %5 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %trunc.not, label %sw.bb, label %sw.bb9

sw.bb:                                            ; preds = %if.end
  br i1 %tobool.not, label %sw.bb.cleanup_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb9:                                           ; preds = %if.end
  br i1 %tobool.not, label %sw.bb9.sw.epilog_crit_edge, label %sw.bb9.cleanup_crit_edge

sw.bb9.cleanup_crit_edge:                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb9.sw.epilog_crit_edge:                       ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb9.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %call15 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 2) #6
  %call16 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 3) #6
  %call17 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 2, i32 noundef 3, i32 noundef 0) #6
  %call18 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 3, i32 noundef 3, i32 noundef 0) #6
  %7 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %value, align 8
  %shl = shl i32 %8, 8
  %call21 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 18, i32 noundef 256, i32 noundef %shl) #6
  %call22 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 2, i32 noundef %call15) #6
  %call23 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 3, i32 noundef %call16) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb9.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %sw.bb9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8983_set_sysclk(ptr nocapture noundef readonly %dai, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %6 = zext i32 %clk_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.274)
  switch i32 %clk_id, label %do.end [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 1, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.237, i32 noundef %clk_id) #9
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb3, %entry.sw.epilog_crit_edge
  %.sink = phi i32 [ 256, %sw.bb3 ], [ %clk_id, %entry.sw.epilog_crit_edge ]
  %call4 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 6, i32 noundef 256, i32 noundef %.sink) #6
  %sysclk = getelementptr inbounds %struct.wm8983_priv, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %sysclk to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %freq, ptr %sysclk, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8983_set_pll(ptr nocapture noundef readonly %dai, i32 noundef %pll_id, i32 noundef %source, i32 noundef %freq_in, i32 noundef %freq_out) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %freq_in)
  %tobool.not = icmp eq i32 %freq_in, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %freq_out)
  %tobool2.not = icmp eq i32 %freq_out, 0
  %or.cond = or i1 %tobool.not, %tobool2.not
  br i1 %or.cond, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 1, i32 noundef 32, i32 noundef 0) #6
  br label %cleanup

if.else:                                          ; preds = %entry
  %mul3 = shl i32 %freq_out, 3
  %div.i = udiv i32 %mul3, %freq_in
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %div.i)
  %cmp.i = icmp ult i32 %div.i, 6
  br i1 %cmp.i, label %if.then.i, label %if.else.if.end.i_crit_edge

if.else.if.end.i_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %shr.i = lshr i32 %freq_in, 1
  %div4.i = udiv i32 %mul3, %shr.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.else.if.end.i_crit_edge
  %pll_div.sroa.0.0 = phi i32 [ 16, %if.then.i ], [ 0, %if.else.if.end.i_crit_edge ]
  %Ndiv.0.i = phi i32 [ %div4.i, %if.then.i ], [ %div.i, %if.else.if.end.i_crit_edge ]
  %source.addr.0.i = phi i32 [ %shr.i, %if.then.i ], [ %freq_in, %if.else.if.end.i_crit_edge ]
  %2 = add i32 %Ndiv.0.i, -13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -7, i32 %2)
  %3 = icmp ult i32 %2, -7
  br i1 %3, label %pll_factors.exit, label %if.end8.i

if.end8.i:                                        ; preds = %if.end.i
  %bf.set11.i = or i32 %Ndiv.0.i, %pll_div.sroa.0.0
  %rem.i = urem i32 %mul3, %source.addr.0.i
  %conv.i = zext i32 %rem.i to i64
  %mul.i = mul nuw nsw i64 %conv.i, 167772160
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i)
  %cmp186.i = icmp ult i64 %mul.i, 4294967296
  br i1 %cmp186.i, label %if.then190.i, label %if.else196.i, !prof !553

if.then190.i:                                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv191.i = trunc i64 %mul.i to i32
  %div194.i = udiv i32 %conv191.i, %source.addr.0.i
  br label %if.end

if.else196.i:                                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  %4 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %source.addr.0.i, i64 %mul.i) #10, !srcloc !554
  %asmresult1.i.i = extractvalue { i64, i64 } %4, 1
  %extract.t340.i = trunc i64 %asmresult1.i.i to i32
  br label %if.end

pll_factors.exit:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.239, ptr noundef nonnull @.str.240, i32 noundef %Ndiv.0.i) #9
  br label %cleanup

if.end:                                           ; preds = %if.else196.i, %if.then190.i
  %Kpart.0.off0.i = phi i32 [ %div194.i, %if.then190.i ], [ %extract.t340.i, %if.else196.i ]
  %rem204.i = urem i32 %Kpart.0.off0.i, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %rem204.i)
  %cmp205.i = icmp ugt i32 %rem204.i, 4
  %add208.i = add i32 %Kpart.0.off0.i, 5
  %spec.select.i = select i1 %cmp205.i, i32 %add208.i, i32 %Kpart.0.off0.i
  %div210.i = udiv i32 %spec.select.i, 10
  %call7 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 1, i32 noundef 32, i32 noundef 0) #6
  %call10 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 36, i32 noundef %bf.set11.i) #6
  %and = and i32 %div210.i, 511
  %call14 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 39, i32 noundef %and) #6
  %bf.lshr16 = lshr i32 %div210.i, 9
  %and18 = and i32 %bf.lshr16, 511
  %call19 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 38, i32 noundef %and18) #6
  %bf.shl213.i = lshr i32 %div210.i, 18
  %bf.lshr21 = and i32 %bf.shl213.i, 63
  %call24 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 37, i32 noundef %bf.lshr21) #6
  %call25 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 1, i32 noundef 32, i32 noundef 32) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %pll_factors.exit, %if.then
  %retval.0 = phi i32 [ 0, %if.end ], [ 0, %if.then ], [ -22, %pll_factors.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8983_set_fmt(ptr nocapture noundef readonly %dai, i32 noundef %fmt) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %and = and i32 %fmt, 15
  %switch.tableidx = add nsw i32 %and, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 5
  br i1 %2, label %switch.lookup, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.241) #9
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.wm8983_set_fmt, i32 0, i32 %switch.tableidx
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load i32, ptr %switch.gep, align 4
  %call = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 4, i32 noundef 24, i32 noundef %switch.load) #6
  %6 = trunc i32 %fmt to i16
  %trunc = and i16 %6, -4096
  %7 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.275)
  switch i16 %trunc, label %do.end11 [
    i16 4096, label %switch.lookup.sw.epilog13_crit_edge
    i16 16384, label %sw.bb7
  ]

switch.lookup.sw.epilog13_crit_edge:              ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog13

sw.bb7:                                           ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog13

do.end11:                                         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  %dev12 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %8 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev12, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.244) #9
  br label %cleanup

sw.epilog13:                                      ; preds = %sw.bb7, %switch.lookup.sw.epilog13_crit_edge
  %master.0 = phi i32 [ 0, %sw.bb7 ], [ 1, %switch.lookup.sw.epilog13_crit_edge ]
  %call16 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 6, i32 noundef 1, i32 noundef %master.0) #6
  %10 = and i32 %fmt, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %10)
  %switch = icmp eq i32 %10, 4
  br i1 %switch, label %do.end21, label %sw.epilog24

do.end21:                                         ; preds = %sw.epilog13
  call void @__sanitizer_cov_trace_pc() #8
  %dev22 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %11 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev22, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.247) #9
  br label %cleanup

sw.epilog24:                                      ; preds = %sw.epilog13
  %and25 = lshr i32 %fmt, 8
  %13 = and i32 %and25, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %13)
  %14 = icmp ult i32 %13, 5
  br i1 %14, label %switch.hole_check, label %sw.epilog24.do.end32_crit_edge

sw.epilog24.do.end32_crit_edge:                   ; preds = %sw.epilog24
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end32

do.end32:                                         ; preds = %switch.hole_check.do.end32_crit_edge, %sw.epilog24.do.end32_crit_edge
  %dev33 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %15 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev33, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.250) #9
  br label %cleanup

switch.hole_check:                                ; preds = %sw.epilog24
  %switch.maskindex = trunc i32 %13 to i8
  %switch.shifted = lshr i8 29, %switch.maskindex
  %17 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %switch.lobit.not = icmp eq i8 %17, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end32_crit_edge, label %switch.lookup56

switch.hole_check.do.end32_crit_edge:             ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end32

switch.lookup56:                                  ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep57 = getelementptr inbounds [5 x i32], ptr @switch.table.wm8983_set_fmt.271, i32 0, i32 %13
  %18 = ptrtoint ptr %switch.gep57 to i32
  call void @__asan_load4_noabort(i32 %18)
  %switch.load58 = load i32, ptr %switch.gep57, align 4
  %switch.gep59 = getelementptr inbounds [5 x i32], ptr @switch.table.wm8983_set_fmt.272, i32 0, i32 %13
  %19 = ptrtoint ptr %switch.gep59 to i32
  call void @__asan_load4_noabort(i32 %19)
  %switch.load60 = load i32, ptr %switch.gep59, align 4
  %call37 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 4, i32 noundef 128, i32 noundef %switch.load60) #6
  %call40 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 4, i32 noundef 256, i32 noundef %switch.load58) #6
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup56, %do.end32, %do.end21, %do.end11, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end11 ], [ -22, %do.end32 ], [ 0, %switch.lookup56 ], [ -22, %do.end21 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8983_dac_mute(ptr nocapture noundef readonly %dai, i32 noundef %mute, i32 noundef %direction) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mute)
  %tobool.not = icmp eq i32 %mute, 0
  %shl = select i1 %tobool.not, i32 0, i32 64
  %call = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 10, i32 noundef 64, i32 noundef %shl) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8983_hw_params(ptr nocapture noundef readnone %substream, ptr noundef %params, ptr nocapture noundef readonly %dai) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %call2 = tail call i32 @snd_soc_params_to_bclk(ptr noundef %params) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.252, i32 noundef %call2) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %bclk = getelementptr inbounds %struct.wm8983_priv, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %bclk to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call2, ptr %bclk, align 4
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %if.end.if.then.i.i.i_crit_edge

if.end.if.then.i.i.i_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %if.end.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %if.end.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %10, %if.end.if.then.i.i.i_crit_edge ], [ %13, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %11 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #6, !range !555
  %add.i.i.i = or i32 %11, %i.09.lcssa.i.i.i
  br label %params_width.exit

for.inc.i.i.i:                                    ; preds = %if.end
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.1.i.i.i = icmp eq i32 %13, 0
  br i1 %tobool.not.1.i.i.i, label %for.inc.i.i.i.params_width.exit_crit_edge, label %for.inc.i.i.i.if.then.i.i.i_crit_edge

for.inc.i.i.i.if.then.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i.i

for.inc.i.i.i.params_width.exit_crit_edge:        ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %params_width.exit

params_width.exit:                                ; preds = %for.inc.i.i.i.params_width.exit_crit_edge, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ 0, %for.inc.i.i.i.params_width.exit_crit_edge ]
  %call1.i = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i) #6
  %14 = add i32 %call1.i, -16
  %15 = tail call i32 @llvm.fshl.i32(i32 %14, i32 %14, i32 30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %15)
  %16 = icmp ult i32 %15, 5
  br i1 %16, label %switch.hole_check, label %params_width.exit.do.end9_crit_edge

params_width.exit.do.end9_crit_edge:              ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end9

do.end9:                                          ; preds = %switch.hole_check.do.end9_crit_edge, %params_width.exit.do.end9_crit_edge
  %dev10 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %17 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev10, align 4
  %19 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i.i.i260 = icmp eq i32 %20, 0
  br i1 %tobool.not.i.i.i260, label %for.inc.i.i.i267, label %do.end9.if.then.i.i.i264_crit_edge

do.end9.if.then.i.i.i264_crit_edge:               ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i.i264

if.then.i.i.i264:                                 ; preds = %for.inc.i.i.i267.if.then.i.i.i264_crit_edge, %do.end9.if.then.i.i.i264_crit_edge
  %i.09.lcssa.i.i.i261 = phi i32 [ 0, %do.end9.if.then.i.i.i264_crit_edge ], [ 32, %for.inc.i.i.i267.if.then.i.i.i264_crit_edge ]
  %.lcssa.i.i.i262 = phi i32 [ %20, %do.end9.if.then.i.i.i264_crit_edge ], [ %23, %for.inc.i.i.i267.if.then.i.i.i264_crit_edge ]
  %21 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i262, i1 true) #6, !range !555
  %add.i.i.i263 = or i32 %21, %i.09.lcssa.i.i.i261
  br label %params_width.exit270

for.inc.i.i.i267:                                 ; preds = %do.end9
  %arrayidx.1.i.i.i265 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %22 = ptrtoint ptr %arrayidx.1.i.i.i265 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.1.i.i.i265, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.1.i.i.i266 = icmp eq i32 %23, 0
  br i1 %tobool.not.1.i.i.i266, label %for.inc.i.i.i267.params_width.exit270_crit_edge, label %for.inc.i.i.i267.if.then.i.i.i264_crit_edge

for.inc.i.i.i267.if.then.i.i.i264_crit_edge:      ; preds = %for.inc.i.i.i267
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i.i264

for.inc.i.i.i267.params_width.exit270_crit_edge:  ; preds = %for.inc.i.i.i267
  call void @__sanitizer_cov_trace_pc() #8
  br label %params_width.exit270

params_width.exit270:                             ; preds = %for.inc.i.i.i267.params_width.exit270_crit_edge, %if.then.i.i.i264
  %retval.0.i.i.i268 = phi i32 [ %add.i.i.i263, %if.then.i.i.i264 ], [ 0, %for.inc.i.i.i267.params_width.exit270_crit_edge ]
  %call1.i269 = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i268) #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.255, i32 noundef %call1.i269) #9
  br label %cleanup

switch.hole_check:                                ; preds = %params_width.exit
  %switch.maskindex = trunc i32 %15 to i8
  %switch.shifted = lshr i8 23, %switch.maskindex
  %24 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %switch.lobit.not = icmp eq i8 %24, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end9_crit_edge, label %switch.lookup

switch.hole_check.do.end9_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end9

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.wm8983_hw_params, i32 0, i32 %15
  %25 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %25)
  %switch.load = load i32, ptr %switch.gep, align 4
  %call12 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 4, i32 noundef 96, i32 noundef %switch.load) #6
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %26 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i.i, align 4
  %sub = sub i32 48000, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp15 = icmp slt i32 %sub, 0
  %sub.neg = add i32 %27, -48000
  %cond = select i1 %cmp15, i32 %sub.neg, i32 %sub
  %sub22 = sub i32 32000, %27
  %28 = tail call i32 @llvm.abs.i32(i32 %sub22, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %cond)
  %cmp31.not = icmp slt i32 %28, %cond
  %29 = tail call i32 @llvm.smin.i32(i32 %28, i32 %cond)
  %spec.select282 = zext i1 %cmp31.not to i16
  %sub22.1 = sub i32 24000, %27
  %30 = tail call i32 @llvm.abs.i32(i32 %sub22.1, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %29)
  %cmp31.not.1 = icmp slt i32 %30, %29
  %31 = tail call i32 @llvm.smin.i32(i32 %30, i32 %29)
  %spec.select282.1 = select i1 %cmp31.not.1, i16 2, i16 %spec.select282
  %sub22.2 = sub i32 16000, %27
  %32 = tail call i32 @llvm.abs.i32(i32 %sub22.2, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %31)
  %cmp31.not.2 = icmp slt i32 %32, %31
  %33 = tail call i32 @llvm.smin.i32(i32 %32, i32 %31)
  %spec.select282.2 = select i1 %cmp31.not.2, i16 3, i16 %spec.select282.1
  %sub22.3 = sub i32 12000, %27
  %34 = tail call i32 @llvm.abs.i32(i32 %sub22.3, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %33)
  %cmp31.not.3 = icmp slt i32 %34, %33
  %35 = tail call i32 @llvm.smin.i32(i32 %34, i32 %33)
  %spec.select282.3 = select i1 %cmp31.not.3, i16 4, i16 %spec.select282.2
  %sub22.4 = sub i32 8000, %27
  %36 = tail call i32 @llvm.abs.i32(i32 %sub22.4, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %35)
  %cmp31.not.4 = icmp slt i32 %36, %35
  %spec.select282.4 = select i1 %cmp31.not.4, i16 5, i16 %spec.select282.3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8983_hw_params.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8983_hw_params, %if.then53)) #6
          to label %do.end58 [label %if.then53], !srcloc !556

if.then53:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  %dev54 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %37 = ptrtoint ptr %dev54 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev54, align 4
  %idxprom = zext i16 %spec.select282.4 to i32
  %arrayidx55 = getelementptr [6 x i32], ptr @srates, i32 0, i32 %idxprom
  %39 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx55, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8983_hw_params.__UNIQUE_ID_ddebug296, ptr noundef %38, ptr noundef nonnull @.str.258, i32 noundef %40) #6
  br label %do.end58

do.end58:                                         ; preds = %if.then53, %switch.lookup
  %41 = shl nuw nsw i16 %spec.select282.4, 1
  %shl60 = zext i16 %41 to i32
  %call61 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 7, i32 noundef 14, i32 noundef %shl60) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8983_hw_params.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8983_hw_params, %if.then74)) #6
          to label %do.body80 [label %if.then74], !srcloc !556

if.then74:                                        ; preds = %do.end58
  call void @__sanitizer_cov_trace_pc() #8
  %dev75 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %42 = ptrtoint ptr %dev75 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev75, align 4
  %44 = ptrtoint ptr %bclk to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %bclk, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8983_hw_params.__UNIQUE_ID_ddebug297, ptr noundef %43, ptr noundef nonnull @.str.259, i32 noundef %45) #6
  br label %do.body80

do.body80:                                        ; preds = %if.then74, %do.end58
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8983_hw_params.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8983_hw_params, %if.then92)) #6
          to label %do.end96 [label %if.then92], !srcloc !556

if.then92:                                        ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #8
  %dev93 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %46 = ptrtoint ptr %dev93 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev93, align 4
  %sysclk = getelementptr inbounds %struct.wm8983_priv, ptr %5, i32 0, i32 1
  %48 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %sysclk, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8983_hw_params.__UNIQUE_ID_ddebug298, ptr noundef %47, ptr noundef nonnull @.str.260, i32 noundef %49) #6
  br label %do.end96

do.end96:                                         ; preds = %if.then92, %do.body80
  %sysclk101 = getelementptr inbounds %struct.wm8983_priv, ptr %5, i32 0, i32 1
  %50 = ptrtoint ptr %sysclk101 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %sysclk101, align 4
  %52 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.i.i, align 4
  %div = udiv i32 %51, %53
  %54 = zext i32 %div to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.276)
  switch i32 %div, label %do.end116 [
    i32 128, label %do.end96.do.body121_crit_edge
    i32 192, label %do.body121.fold.split
    i32 256, label %do.body121.fold.split301
    i32 384, label %do.body121.fold.split302
    i32 512, label %do.body121.fold.split303
    i32 768, label %do.body121.fold.split304
    i32 1024, label %do.body121.fold.split305
    i32 1536, label %do.body121.fold.split306
  ]

do.end96.do.body121_crit_edge:                    ; preds = %do.end96
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body121

do.end116:                                        ; preds = %do.end96
  call void @__sanitizer_cov_trace_pc() #8
  %dev117 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %55 = ptrtoint ptr %dev117 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev117, align 4
  %57 = ptrtoint ptr %sysclk101 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %sysclk101, align 4
  %59 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.262, i32 noundef %58, i32 noundef %60) #9
  br label %cleanup

do.body121.fold.split:                            ; preds = %do.end96
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body121

do.body121.fold.split301:                         ; preds = %do.end96
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body121

do.body121.fold.split302:                         ; preds = %do.end96
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body121

do.body121.fold.split303:                         ; preds = %do.end96
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body121

do.body121.fold.split304:                         ; preds = %do.end96
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body121

do.body121.fold.split305:                         ; preds = %do.end96
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body121

do.body121.fold.split306:                         ; preds = %do.end96
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body121

do.body121:                                       ; preds = %do.body121.fold.split306, %do.body121.fold.split305, %do.body121.fold.split304, %do.body121.fold.split303, %do.body121.fold.split302, %do.body121.fold.split301, %do.body121.fold.split, %do.end96.do.body121_crit_edge
  %i.1292.lcssa = phi i32 [ 0, %do.end96.do.body121_crit_edge ], [ 1, %do.body121.fold.split ], [ 2, %do.body121.fold.split301 ], [ 3, %do.body121.fold.split302 ], [ 4, %do.body121.fold.split303 ], [ 5, %do.body121.fold.split304 ], [ 6, %do.body121.fold.split305 ], [ 7, %do.body121.fold.split306 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8983_hw_params.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8983_hw_params, %if.then133)) #6
          to label %do.end139 [label %if.then133], !srcloc !556

if.then133:                                       ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #8
  %dev134 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %61 = ptrtoint ptr %dev134 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev134, align 4
  %ratio136 = getelementptr [8 x %struct.anon.108], ptr @fs_ratios, i32 0, i32 %i.1292.lcssa, i32 1
  %63 = ptrtoint ptr %ratio136 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %ratio136, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8983_hw_params.__UNIQUE_ID_ddebug299, ptr noundef %62, ptr noundef nonnull @.str.264, i32 noundef %64) #6
  br label %do.end139

do.end139:                                        ; preds = %if.then133, %do.body121
  %shl140 = shl nuw nsw i32 %i.1292.lcssa, 5
  %call141 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 6, i32 noundef 224, i32 noundef %shl140) #6
  %65 = ptrtoint ptr %sysclk101 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %sysclk101, align 4
  %arrayidx143 = getelementptr [8 x %struct.anon.108], ptr @fs_ratios, i32 0, i32 %i.1292.lcssa
  %67 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx143, align 4
  %div145 = udiv i32 %66, %68
  %mul = mul i32 %div145, 10
  %69 = ptrtoint ptr %bclk to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %bclk, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %mul)
  %cmp153 = icmp eq i32 %70, %mul
  br i1 %cmp153, label %do.end139.do.body168_crit_edge, label %for.inc157

do.end139.do.body168_crit_edge:                   ; preds = %do.end139
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body168

for.inc157:                                       ; preds = %do.end139
  %div152.1296 = lshr exact i32 %mul, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %div152.1296)
  %cmp153.1 = icmp eq i32 %70, %div152.1296
  br i1 %cmp153.1, label %for.inc157.do.body168_crit_edge, label %for.inc157.1

for.inc157.do.body168_crit_edge:                  ; preds = %for.inc157
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body168

for.inc157.1:                                     ; preds = %for.inc157
  %div152.2297 = lshr i32 %mul, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %div152.2297)
  %cmp153.2 = icmp eq i32 %70, %div152.2297
  br i1 %cmp153.2, label %for.inc157.1.do.body168_crit_edge, label %for.inc157.2

for.inc157.1.do.body168_crit_edge:                ; preds = %for.inc157.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body168

for.inc157.2:                                     ; preds = %for.inc157.1
  %div152.3298 = lshr i32 %mul, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %div152.3298)
  %cmp153.3 = icmp eq i32 %70, %div152.3298
  br i1 %cmp153.3, label %for.inc157.2.do.body168_crit_edge, label %for.inc157.3

for.inc157.2.do.body168_crit_edge:                ; preds = %for.inc157.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body168

for.inc157.3:                                     ; preds = %for.inc157.2
  %div152.4299 = lshr i32 %mul, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %div152.4299)
  %cmp153.4 = icmp eq i32 %70, %div152.4299
  br i1 %cmp153.4, label %for.inc157.3.do.body168_crit_edge, label %for.inc157.4

for.inc157.3.do.body168_crit_edge:                ; preds = %for.inc157.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body168

for.inc157.4:                                     ; preds = %for.inc157.3
  %div152.5300 = lshr i32 %mul, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %div152.5300)
  %cmp153.5 = icmp eq i32 %70, %div152.5300
  br i1 %cmp153.5, label %for.inc157.4.do.body168_crit_edge, label %do.end165

for.inc157.4.do.body168_crit_edge:                ; preds = %for.inc157.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body168

do.end165:                                        ; preds = %for.inc157.4
  call void @__sanitizer_cov_trace_pc() #8
  %dev166 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %71 = ptrtoint ptr %dev166 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev166, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %72, ptr noundef nonnull @.str.266) #9
  br label %cleanup

do.body168:                                       ; preds = %for.inc157.4.do.body168_crit_edge, %for.inc157.3.do.body168_crit_edge, %for.inc157.2.do.body168_crit_edge, %for.inc157.1.do.body168_crit_edge, %for.inc157.do.body168_crit_edge, %do.end139.do.body168_crit_edge
  %i.2293.lcssa = phi i32 [ 0, %do.end139.do.body168_crit_edge ], [ 1, %for.inc157.do.body168_crit_edge ], [ 2, %for.inc157.1.do.body168_crit_edge ], [ 3, %for.inc157.2.do.body168_crit_edge ], [ 4, %for.inc157.3.do.body168_crit_edge ], [ 5, %for.inc157.4.do.body168_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm8983_hw_params.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm8983_hw_params, %if.then180)) #6
          to label %do.end184 [label %if.then180], !srcloc !556

if.then180:                                       ; preds = %do.body168
  call void @__sanitizer_cov_trace_pc() #8
  %dev181 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %73 = ptrtoint ptr %dev181 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev181, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm8983_hw_params.__UNIQUE_ID_ddebug300, ptr noundef %74, ptr noundef nonnull @.str.268, i32 noundef %i.2293.lcssa) #6
  br label %do.end184

do.end184:                                        ; preds = %if.then180, %do.body168
  %shl185 = shl nuw nsw i32 %i.2293.lcssa, 2
  %call186 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 6, i32 noundef 28, i32 noundef %shl185) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end184, %do.end165, %do.end116, %params_width.exit270, %do.end
  %retval.0 = phi i32 [ %call2, %do.end ], [ -22, %params_width.exit270 ], [ -22, %do.end116 ], [ -22, %do.end165 ], [ 0, %do.end184 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_params_to_bclk(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8983_spi_probe(ptr noundef %spi) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef 12, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @__devm_regmap_init_spi(ptr noundef %spi, ptr noundef nonnull @wm8983_regmap, ptr noundef nonnull @wm8983_spi_probe._key, ptr noundef nonnull @.str.269) #6
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call1, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %call1 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.8, i32 noundef %1) #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call10 = tail call i32 @devm_snd_soc_register_component(ptr noundef %spi, ptr noundef nonnull @soc_component_dev_wm8983, ptr noundef nonnull @wm8983_dai, i32 noundef 1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then4 ], [ %call10, %if.end8 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_spi(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 338)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 338)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !14, !15, !16, !17, !19, !20, !21, !23, !25, !27, !28, !30, !31, !32, !33, !34, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !322, !324, !325, !327, !328, !330, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !381, !383, !385, !387, !389, !391, !393, !395, !397, !399, !401, !403, !405, !407, !409, !411, !413, !415, !417, !419, !421, !423, !425, !427, !429, !431, !433, !435, !437, !439, !441, !443, !445, !447, !449, !451, !452, !453, !454, !456, !458, !459, !460, !461, !463, !465, !467, !469, !470, !471, !472, !474, !475, !476, !477, !479, !480, !481, !482, !484, !485, !486, !488, !489, !490, !492, !493, !494, !496, !497, !498, !499, !501, !502, !503, !505, !506, !507, !509, !510, !512, !513, !515, !516, !517, !519, !520, !522, !523, !524, !526, !527, !529, !531, !533, !535, !537, !539, !540, !542, !543}
!llvm.module.flags = !{!544, !545, !546, !547, !548, !549, !550, !551}
!llvm.ident = !{!552}

!0 = !{ptr @__initcall__kmod_snd_soc_wm8983__301_1098_wm8983_modinit6, !1, !"__initcall__kmod_snd_soc_wm8983__301_1098_wm8983_modinit6", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/wm8983.c", i32 1098, i32 1}
!2 = !{ptr @__exitcall_wm8983_exit, !3, !"__exitcall_wm8983_exit", i1 false, i1 false}
!3 = !{!"../sound/soc/codecs/wm8983.c", i32 1109, i32 1}
!4 = !{ptr @__UNIQUE_ID_description302, !5, !"__UNIQUE_ID_description302", i1 false, i1 false}
!5 = !{!"../sound/soc/codecs/wm8983.c", i32 1111, i32 1}
!6 = !{ptr @__UNIQUE_ID_author303, !7, !"__UNIQUE_ID_author303", i1 false, i1 false}
!7 = !{!"../sound/soc/codecs/wm8983.c", i32 1112, i32 1}
!8 = !{ptr @__UNIQUE_ID_file304, !9, !"__UNIQUE_ID_file304", i1 false, i1 false}
!9 = !{!"../sound/soc/codecs/wm8983.c", i32 1113, i32 1}
!10 = !{ptr @__UNIQUE_ID_license305, !9, !"__UNIQUE_ID_license305", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../sound/soc/codecs/wm8983.c", i32 1085, i32 3}
!13 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @wm8983_modinit._entry, !12, !"_entry", i1 false, i1 false}
!16 = !{ptr @wm8983_modinit._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/soc/codecs/wm8983.c", i32 1092, i32 3}
!19 = !{ptr @wm8983_modinit._entry.3, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @wm8983_modinit._entry_ptr.5, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../sound/soc/codecs/wm8983.c", i32 1071, i32 11}
!23 = !{ptr @wm8983_i2c_driver, !24, !"wm8983_i2c_driver", i1 false, i1 false}
!24 = !{!"../sound/soc/codecs/wm8983.c", i32 1069, i32 26}
!25 = !{ptr @wm8983_i2c_probe._key, !26, !"_key", i1 false, i1 false}
!26 = !{!"../sound/soc/codecs/wm8983.c", i32 1048, i32 19}
!27 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/codecs/wm8983.c", i32 1051, i32 3}
!30 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @wm8983_i2c_probe._entry, !29, !"_entry", i1 false, i1 false}
!34 = !{ptr @wm8983_i2c_probe._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @wm8983_regmap, !36, !"wm8983_regmap", i1 false, i1 false}
!36 = !{!"../sound/soc/codecs/wm8983.c", i32 993, i32 35}
!37 = !{ptr @wm8983_defaults, !38, !"wm8983_defaults", i1 false, i1 false}
!38 = !{!"../sound/soc/codecs/wm8983.c", i32 28, i32 33}
!39 = !{ptr @soc_component_dev_wm8983, !40, !"soc_component_dev_wm8983", i1 false, i1 false}
!40 = !{!"../sound/soc/codecs/wm8983.c", i32 977, i32 46}
!41 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/soc/codecs/wm8983.c", i32 206, i32 2}
!43 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/soc/codecs/wm8983.c", i32 209, i32 2}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/soc/codecs/wm8983.c", i32 210, i32 2}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/soc/codecs/wm8983.c", i32 212, i32 2}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/soc/codecs/wm8983.c", i32 214, i32 2}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/soc/codecs/wm8983.c", i32 216, i32 2}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/soc/codecs/wm8983.c", i32 217, i32 2}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/soc/codecs/wm8983.c", i32 218, i32 2}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/soc/codecs/wm8983.c", i32 219, i32 2}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/soc/codecs/wm8983.c", i32 220, i32 2}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/soc/codecs/wm8983.c", i32 222, i32 2}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/soc/codecs/wm8983.c", i32 225, i32 2}
!65 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/soc/codecs/wm8983.c", i32 227, i32 2}
!67 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/soc/codecs/wm8983.c", i32 229, i32 2}
!69 = !{ptr @.str.37, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/soc/codecs/wm8983.c", i32 232, i32 2}
!71 = !{ptr @.str.39, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/soc/codecs/wm8983.c", i32 236, i32 2}
!73 = !{ptr @.str.41, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/soc/codecs/wm8983.c", i32 237, i32 2}
!75 = !{ptr @.str.43, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/soc/codecs/wm8983.c", i32 239, i32 2}
!77 = !{ptr @.str.45, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../sound/soc/codecs/wm8983.c", i32 242, i32 2}
!79 = !{ptr @.str.47, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/soc/codecs/wm8983.c", i32 243, i32 2}
!81 = !{ptr @.str.49, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/soc/codecs/wm8983.c", i32 244, i32 2}
!83 = !{ptr @.str.51, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/soc/codecs/wm8983.c", i32 245, i32 2}
!85 = !{ptr @.str.53, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../sound/soc/codecs/wm8983.c", i32 247, i32 2}
!87 = !{ptr @.str.55, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../sound/soc/codecs/wm8983.c", i32 249, i32 2}
!89 = !{ptr @.str.57, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/soc/codecs/wm8983.c", i32 250, i32 2}
!91 = !{ptr @.str.59, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../sound/soc/codecs/wm8983.c", i32 251, i32 2}
!93 = !{ptr @.str.61, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/soc/codecs/wm8983.c", i32 253, i32 2}
!95 = !{ptr @.str.63, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/soc/codecs/wm8983.c", i32 255, i32 2}
!97 = !{ptr @.str.65, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../sound/soc/codecs/wm8983.c", i32 257, i32 2}
!99 = !{ptr @.str.67, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/soc/codecs/wm8983.c", i32 260, i32 2}
!101 = !{ptr @.str.69, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../sound/soc/codecs/wm8983.c", i32 262, i32 2}
!103 = !{ptr @.str.71, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../sound/soc/codecs/wm8983.c", i32 264, i32 2}
!105 = !{ptr @.str.73, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../sound/soc/codecs/wm8983.c", i32 267, i32 2}
!107 = !{ptr @.str.75, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../sound/soc/codecs/wm8983.c", i32 270, i32 2}
!109 = !{ptr @.str.77, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../sound/soc/codecs/wm8983.c", i32 273, i32 2}
!111 = !{ptr @.str.79, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../sound/soc/codecs/wm8983.c", i32 274, i32 2}
!113 = !{ptr @.str.80, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../sound/soc/codecs/wm8983.c", i32 275, i32 2}
!115 = !{ptr @.str.82, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../sound/soc/codecs/wm8983.c", i32 277, i32 2}
!117 = !{ptr @.str.84, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../sound/soc/codecs/wm8983.c", i32 281, i32 2}
!119 = !{ptr @.str.86, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../sound/soc/codecs/wm8983.c", i32 285, i32 2}
!121 = !{ptr @.str.87, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../sound/soc/codecs/wm8983.c", i32 286, i32 2}
!123 = !{ptr @.str.88, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../sound/soc/codecs/wm8983.c", i32 287, i32 2}
!125 = !{ptr @.str.90, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../sound/soc/codecs/wm8983.c", i32 288, i32 2}
!127 = !{ptr @.str.91, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../sound/soc/codecs/wm8983.c", i32 289, i32 2}
!129 = !{ptr @.str.92, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../sound/soc/codecs/wm8983.c", i32 290, i32 2}
!131 = !{ptr @.str.94, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../sound/soc/codecs/wm8983.c", i32 291, i32 2}
!133 = !{ptr @.str.95, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../sound/soc/codecs/wm8983.c", i32 292, i32 2}
!135 = !{ptr @.str.96, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../sound/soc/codecs/wm8983.c", i32 293, i32 2}
!137 = !{ptr @.str.98, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../sound/soc/codecs/wm8983.c", i32 294, i32 2}
!139 = !{ptr @.str.99, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../sound/soc/codecs/wm8983.c", i32 295, i32 2}
!141 = !{ptr @.str.100, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../sound/soc/codecs/wm8983.c", i32 296, i32 2}
!143 = !{ptr @.str.102, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../sound/soc/codecs/wm8983.c", i32 297, i32 2}
!145 = !{ptr @.str.103, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../sound/soc/codecs/wm8983.c", i32 298, i32 2}
!147 = !{ptr @.str.105, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../sound/soc/codecs/wm8983.c", i32 300, i32 2}
!149 = !{ptr @wm8983_snd_controls, !150, !"wm8983_snd_controls", i1 false, i1 false}
!150 = !{!"../sound/soc/codecs/wm8983.c", i32 205, i32 38}
!151 = !{ptr @alc_sel, !152, !"alc_sel", i1 false, i1 false}
!152 = !{!"../sound/soc/codecs/wm8983.c", i32 145, i32 8}
!153 = !{ptr @.str.106, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../sound/soc/codecs/wm8983.c", i32 144, i32 39}
!155 = !{ptr @.str.107, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../sound/soc/codecs/wm8983.c", i32 144, i32 46}
!157 = !{ptr @.str.108, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../sound/soc/codecs/wm8983.c", i32 144, i32 55}
!159 = !{ptr @.str.109, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../sound/soc/codecs/wm8983.c", i32 144, i32 63}
!161 = !{ptr @alc_sel_text, !162, !"alc_sel_text", i1 false, i1 false}
!162 = !{!"../sound/soc/codecs/wm8983.c", i32 144, i32 20}
!163 = !{ptr @alc_max_tlv, !164, !"alc_max_tlv", i1 false, i1 false}
!164 = !{!"../sound/soc/codecs/wm8983.c", i32 135, i32 14}
!165 = !{ptr @alc_min_tlv, !166, !"alc_min_tlv", i1 false, i1 false}
!166 = !{!"../sound/soc/codecs/wm8983.c", i32 134, i32 14}
!167 = !{ptr @alc_tar_tlv, !168, !"alc_tar_tlv", i1 false, i1 false}
!168 = !{!"../sound/soc/codecs/wm8983.c", i32 136, i32 14}
!169 = !{ptr @alc_mode, !170, !"alc_mode", i1 false, i1 false}
!170 = !{!"../sound/soc/codecs/wm8983.c", i32 148, i32 8}
!171 = !{ptr @.str.110, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../sound/soc/codecs/wm8983.c", i32 147, i32 40}
!173 = !{ptr @.str.111, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../sound/soc/codecs/wm8983.c", i32 147, i32 47}
!175 = !{ptr @alc_mode_text, !176, !"alc_mode_text", i1 false, i1 false}
!176 = !{!"../sound/soc/codecs/wm8983.c", i32 147, i32 20}
!177 = !{ptr @adc_tlv, !178, !"adc_tlv", i1 false, i1 false}
!178 = !{!"../sound/soc/codecs/wm8983.c", i32 130, i32 14}
!179 = !{ptr @pga_vol_tlv, !180, !"pga_vol_tlv", i1 false, i1 false}
!180 = !{!"../sound/soc/codecs/wm8983.c", i32 137, i32 14}
!181 = !{ptr @pga_boost_tlv, !182, !"pga_boost_tlv", i1 false, i1 false}
!182 = !{!"../sound/soc/codecs/wm8983.c", i32 142, i32 14}
!183 = !{ptr @dac_tlv, !184, !"dac_tlv", i1 false, i1 false}
!184 = !{!"../sound/soc/codecs/wm8983.c", i32 129, i32 14}
!185 = !{ptr @lim_thresh_tlv, !186, !"lim_thresh_tlv", i1 false, i1 false}
!186 = !{!"../sound/soc/codecs/wm8983.c", i32 132, i32 14}
!187 = !{ptr @lim_boost_tlv, !188, !"lim_boost_tlv", i1 false, i1 false}
!188 = !{!"../sound/soc/codecs/wm8983.c", i32 133, i32 14}
!189 = !{ptr @out_tlv, !190, !"out_tlv", i1 false, i1 false}
!190 = !{!"../sound/soc/codecs/wm8983.c", i32 131, i32 14}
!191 = !{ptr @filter_mode, !192, !"filter_mode", i1 false, i1 false}
!192 = !{!"../sound/soc/codecs/wm8983.c", i32 151, i32 8}
!193 = !{ptr @.str.112, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../sound/soc/codecs/wm8983.c", i32 150, i32 43}
!195 = !{ptr @.str.113, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../sound/soc/codecs/wm8983.c", i32 150, i32 52}
!197 = !{ptr @filter_mode_text, !198, !"filter_mode_text", i1 false, i1 false}
!198 = !{!"../sound/soc/codecs/wm8983.c", i32 150, i32 20}
!199 = !{ptr @aux_tlv, !200, !"aux_tlv", i1 false, i1 false}
!200 = !{!"../sound/soc/codecs/wm8983.c", i32 140, i32 14}
!201 = !{ptr @bypass_tlv, !202, !"bypass_tlv", i1 false, i1 false}
!202 = !{!"../sound/soc/codecs/wm8983.c", i32 141, i32 14}
!203 = !{ptr @eqmode, !204, !"eqmode", i1 false, i1 false}
!204 = !{!"../sound/soc/codecs/wm8983.c", i32 156, i32 8}
!205 = !{ptr @.str.114, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../sound/soc/codecs/wm8983.c", i32 155, i32 38}
!207 = !{ptr @.str.115, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../sound/soc/codecs/wm8983.c", i32 155, i32 49}
!209 = !{ptr @eqmode_text, !210, !"eqmode_text", i1 false, i1 false}
!210 = !{!"../sound/soc/codecs/wm8983.c", i32 155, i32 20}
!211 = !{ptr @eq1_cutoff, !212, !"eq1_cutoff", i1 false, i1 false}
!212 = !{!"../sound/soc/codecs/wm8983.c", i32 161, i32 8}
!213 = !{ptr @.str.116, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../sound/soc/codecs/wm8983.c", i32 159, i32 2}
!215 = !{ptr @.str.117, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../sound/soc/codecs/wm8983.c", i32 159, i32 10}
!217 = !{ptr @.str.118, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../sound/soc/codecs/wm8983.c", i32 159, i32 19}
!219 = !{ptr @.str.119, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../sound/soc/codecs/wm8983.c", i32 159, i32 28}
!221 = !{ptr @eq1_cutoff_text, !222, !"eq1_cutoff_text", i1 false, i1 false}
!222 = !{!"../sound/soc/codecs/wm8983.c", i32 158, i32 20}
!223 = !{ptr @eq_tlv, !224, !"eq_tlv", i1 false, i1 false}
!224 = !{!"../sound/soc/codecs/wm8983.c", i32 139, i32 14}
!225 = !{ptr @eq2_bw, !226, !"eq2_bw", i1 false, i1 false}
!226 = !{!"../sound/soc/codecs/wm8983.c", i32 166, i32 8}
!227 = !{ptr @.str.120, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../sound/soc/codecs/wm8983.c", i32 154, i32 37}
!229 = !{ptr @.str.121, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../sound/soc/codecs/wm8983.c", i32 154, i32 47}
!231 = !{ptr @eq_bw_text, !232, !"eq_bw_text", i1 false, i1 false}
!232 = !{!"../sound/soc/codecs/wm8983.c", i32 154, i32 20}
!233 = !{ptr @eq2_cutoff, !234, !"eq2_cutoff", i1 false, i1 false}
!234 = !{!"../sound/soc/codecs/wm8983.c", i32 167, i32 8}
!235 = !{ptr @.str.122, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../sound/soc/codecs/wm8983.c", i32 164, i32 2}
!237 = !{ptr @.str.123, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../sound/soc/codecs/wm8983.c", i32 164, i32 11}
!239 = !{ptr @.str.124, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../sound/soc/codecs/wm8983.c", i32 164, i32 20}
!241 = !{ptr @.str.125, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../sound/soc/codecs/wm8983.c", i32 164, i32 29}
!243 = !{ptr @eq2_cutoff_text, !244, !"eq2_cutoff_text", i1 false, i1 false}
!244 = !{!"../sound/soc/codecs/wm8983.c", i32 163, i32 20}
!245 = !{ptr @eq3_bw, !246, !"eq3_bw", i1 false, i1 false}
!246 = !{!"../sound/soc/codecs/wm8983.c", i32 171, i32 8}
!247 = !{ptr @eq3_cutoff, !248, !"eq3_cutoff", i1 false, i1 false}
!248 = !{!"../sound/soc/codecs/wm8983.c", i32 172, i32 8}
!249 = !{ptr @.str.126, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../sound/soc/codecs/wm8983.c", i32 169, i32 2}
!251 = !{ptr @.str.127, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../sound/soc/codecs/wm8983.c", i32 169, i32 11}
!253 = !{ptr @.str.128, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../sound/soc/codecs/wm8983.c", i32 169, i32 20}
!255 = !{ptr @.str.129, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../sound/soc/codecs/wm8983.c", i32 169, i32 30}
!257 = !{ptr @eq3_cutoff_text, !258, !"eq3_cutoff_text", i1 false, i1 false}
!258 = !{!"../sound/soc/codecs/wm8983.c", i32 168, i32 20}
!259 = !{ptr @eq4_bw, !260, !"eq4_bw", i1 false, i1 false}
!260 = !{!"../sound/soc/codecs/wm8983.c", i32 176, i32 8}
!261 = !{ptr @eq4_cutoff, !262, !"eq4_cutoff", i1 false, i1 false}
!262 = !{!"../sound/soc/codecs/wm8983.c", i32 177, i32 8}
!263 = !{ptr @.str.130, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../sound/soc/codecs/wm8983.c", i32 174, i32 2}
!265 = !{ptr @.str.131, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../sound/soc/codecs/wm8983.c", i32 174, i32 12}
!267 = !{ptr @.str.132, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../sound/soc/codecs/wm8983.c", i32 174, i32 22}
!269 = !{ptr @.str.133, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../sound/soc/codecs/wm8983.c", i32 174, i32 32}
!271 = !{ptr @eq4_cutoff_text, !272, !"eq4_cutoff_text", i1 false, i1 false}
!272 = !{!"../sound/soc/codecs/wm8983.c", i32 173, i32 20}
!273 = !{ptr @eq5_cutoff, !274, !"eq5_cutoff", i1 false, i1 false}
!274 = !{!"../sound/soc/codecs/wm8983.c", i32 181, i32 8}
!275 = !{ptr @.str.134, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../sound/soc/codecs/wm8983.c", i32 179, i32 2}
!277 = !{ptr @.str.135, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../sound/soc/codecs/wm8983.c", i32 179, i32 12}
!279 = !{ptr @.str.136, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../sound/soc/codecs/wm8983.c", i32 179, i32 22}
!281 = !{ptr @.str.137, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../sound/soc/codecs/wm8983.c", i32 179, i32 30}
!283 = !{ptr @eq5_cutoff_text, !284, !"eq5_cutoff_text", i1 false, i1 false}
!284 = !{!"../sound/soc/codecs/wm8983.c", i32 178, i32 20}
!285 = !{ptr @depth_3d, !286, !"depth_3d", i1 false, i1 false}
!286 = !{!"../sound/soc/codecs/wm8983.c", i32 202, i32 8}
!287 = !{ptr @.str.138, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../sound/soc/codecs/wm8983.c", i32 186, i32 2}
!289 = !{ptr @.str.139, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../sound/soc/codecs/wm8983.c", i32 187, i32 2}
!291 = !{ptr @.str.140, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../sound/soc/codecs/wm8983.c", i32 188, i32 2}
!293 = !{ptr @.str.141, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../sound/soc/codecs/wm8983.c", i32 189, i32 2}
!295 = !{ptr @.str.142, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../sound/soc/codecs/wm8983.c", i32 190, i32 2}
!297 = !{ptr @.str.143, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../sound/soc/codecs/wm8983.c", i32 191, i32 2}
!299 = !{ptr @.str.144, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../sound/soc/codecs/wm8983.c", i32 192, i32 2}
!301 = !{ptr @.str.145, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../sound/soc/codecs/wm8983.c", i32 193, i32 2}
!303 = !{ptr @.str.146, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../sound/soc/codecs/wm8983.c", i32 194, i32 2}
!305 = !{ptr @.str.147, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../sound/soc/codecs/wm8983.c", i32 195, i32 2}
!307 = !{ptr @.str.148, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../sound/soc/codecs/wm8983.c", i32 196, i32 2}
!309 = !{ptr @.str.149, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../sound/soc/codecs/wm8983.c", i32 197, i32 2}
!311 = !{ptr @.str.150, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../sound/soc/codecs/wm8983.c", i32 198, i32 2}
!313 = !{ptr @.str.151, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../sound/soc/codecs/wm8983.c", i32 199, i32 2}
!315 = !{ptr @.str.152, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../sound/soc/codecs/wm8983.c", i32 200, i32 2}
!317 = !{ptr @depth_3d_text, !318, !"depth_3d_text", i1 false, i1 false}
!318 = !{!"../sound/soc/codecs/wm8983.c", i32 184, i32 20}
!319 = !{ptr @.str.153, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../sound/soc/codecs/wm8983.c", i32 360, i32 2}
!321 = !{ptr @.str.154, !320, !"<string literal>", i1 false, i1 false}
!322 = !{ptr @.str.155, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../sound/soc/codecs/wm8983.c", i32 362, i32 2}
!324 = !{ptr @.str.156, !323, !"<string literal>", i1 false, i1 false}
!325 = !{ptr @.str.157, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../sound/soc/codecs/wm8983.c", i32 364, i32 2}
!327 = !{ptr @.str.158, !326, !"<string literal>", i1 false, i1 false}
!328 = !{ptr @.str.159, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../sound/soc/codecs/wm8983.c", i32 366, i32 2}
!330 = !{ptr @.str.160, !329, !"<string literal>", i1 false, i1 false}
!331 = !{ptr @.str.161, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../sound/soc/codecs/wm8983.c", i32 369, i32 2}
!333 = !{ptr @.str.162, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../sound/soc/codecs/wm8983.c", i32 371, i32 2}
!335 = !{ptr @.str.163, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../sound/soc/codecs/wm8983.c", i32 374, i32 2}
!337 = !{ptr @.str.164, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../sound/soc/codecs/wm8983.c", i32 376, i32 2}
!339 = !{ptr @.str.165, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../sound/soc/codecs/wm8983.c", i32 379, i32 2}
!341 = !{ptr @.str.166, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../sound/soc/codecs/wm8983.c", i32 381, i32 2}
!343 = !{ptr @.str.167, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../sound/soc/codecs/wm8983.c", i32 384, i32 2}
!345 = !{ptr @.str.168, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../sound/soc/codecs/wm8983.c", i32 387, i32 2}
!347 = !{ptr @.str.169, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../sound/soc/codecs/wm8983.c", i32 390, i32 2}
!349 = !{ptr @.str.170, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../sound/soc/codecs/wm8983.c", i32 392, i32 2}
!351 = !{ptr @.str.171, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../sound/soc/codecs/wm8983.c", i32 395, i32 2}
!353 = !{ptr @.str.172, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../sound/soc/codecs/wm8983.c", i32 397, i32 2}
!355 = !{ptr @.str.173, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../sound/soc/codecs/wm8983.c", i32 400, i32 2}
!357 = !{ptr @.str.174, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../sound/soc/codecs/wm8983.c", i32 402, i32 2}
!359 = !{ptr @.str.175, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../sound/soc/codecs/wm8983.c", i32 405, i32 2}
!361 = !{ptr @.str.176, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../sound/soc/codecs/wm8983.c", i32 408, i32 2}
!363 = !{ptr @.str.177, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../sound/soc/codecs/wm8983.c", i32 411, i32 2}
!365 = !{ptr @.str.178, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../sound/soc/codecs/wm8983.c", i32 414, i32 2}
!367 = !{ptr @.str.179, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../sound/soc/codecs/wm8983.c", i32 415, i32 2}
!369 = !{ptr @.str.180, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../sound/soc/codecs/wm8983.c", i32 416, i32 2}
!371 = !{ptr @.str.181, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../sound/soc/codecs/wm8983.c", i32 417, i32 2}
!373 = !{ptr @.str.182, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../sound/soc/codecs/wm8983.c", i32 418, i32 2}
!375 = !{ptr @.str.183, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../sound/soc/codecs/wm8983.c", i32 419, i32 2}
!377 = !{ptr @.str.184, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../sound/soc/codecs/wm8983.c", i32 420, i32 2}
!379 = !{ptr @.str.185, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../sound/soc/codecs/wm8983.c", i32 421, i32 2}
!381 = !{ptr @.str.186, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../sound/soc/codecs/wm8983.c", i32 422, i32 2}
!383 = !{ptr @.str.187, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../sound/soc/codecs/wm8983.c", i32 423, i32 2}
!385 = !{ptr @.str.188, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../sound/soc/codecs/wm8983.c", i32 424, i32 2}
!387 = !{ptr @.str.189, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../sound/soc/codecs/wm8983.c", i32 425, i32 2}
!389 = !{ptr @.str.190, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../sound/soc/codecs/wm8983.c", i32 426, i32 2}
!391 = !{ptr @.str.191, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../sound/soc/codecs/wm8983.c", i32 427, i32 2}
!393 = !{ptr @wm8983_dapm_widgets, !394, !"wm8983_dapm_widgets", i1 false, i1 false}
!394 = !{!"../sound/soc/codecs/wm8983.c", i32 359, i32 41}
!395 = !{ptr @.str.193, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../sound/soc/codecs/wm8983.c", i32 304, i32 2}
!397 = !{ptr @.str.195, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../sound/soc/codecs/wm8983.c", i32 305, i32 2}
!399 = !{ptr @.str.197, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../sound/soc/codecs/wm8983.c", i32 306, i32 2}
!401 = !{ptr @left_out_mixer, !402, !"left_out_mixer", i1 false, i1 false}
!402 = !{!"../sound/soc/codecs/wm8983.c", i32 303, i32 38}
!403 = !{ptr @right_out_mixer, !404, !"right_out_mixer", i1 false, i1 false}
!404 = !{!"../sound/soc/codecs/wm8983.c", i32 309, i32 38}
!405 = !{ptr @.str.202, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../sound/soc/codecs/wm8983.c", i32 316, i32 2}
!407 = !{ptr @.str.204, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../sound/soc/codecs/wm8983.c", i32 317, i32 2}
!409 = !{ptr @.str.206, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../sound/soc/codecs/wm8983.c", i32 318, i32 2}
!411 = !{ptr @left_input_mixer, !412, !"left_input_mixer", i1 false, i1 false}
!412 = !{!"../sound/soc/codecs/wm8983.c", i32 315, i32 38}
!413 = !{ptr @.str.208, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../sound/soc/codecs/wm8983.c", i32 322, i32 2}
!415 = !{ptr @right_input_mixer, !416, !"right_input_mixer", i1 false, i1 false}
!416 = !{!"../sound/soc/codecs/wm8983.c", i32 321, i32 38}
!417 = !{ptr @.str.212, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../sound/soc/codecs/wm8983.c", i32 328, i32 2}
!419 = !{ptr @.str.214, !420, !"<string literal>", i1 false, i1 false}
!420 = !{!"../sound/soc/codecs/wm8983.c", i32 330, i32 2}
!421 = !{ptr @left_boost_mixer, !422, !"left_boost_mixer", i1 false, i1 false}
!422 = !{!"../sound/soc/codecs/wm8983.c", i32 327, i32 38}
!423 = !{ptr @boost_tlv, !424, !"boost_tlv", i1 false, i1 false}
!424 = !{!"../sound/soc/codecs/wm8983.c", i32 138, i32 14}
!425 = !{ptr @.str.216, !426, !"<string literal>", i1 false, i1 false}
!426 = !{!"../sound/soc/codecs/wm8983.c", i32 353, i32 2}
!427 = !{ptr @.str.218, !428, !"<string literal>", i1 false, i1 false}
!428 = !{!"../sound/soc/codecs/wm8983.c", i32 355, i32 2}
!429 = !{ptr @right_boost_mixer, !430, !"right_boost_mixer", i1 false, i1 false}
!430 = !{!"../sound/soc/codecs/wm8983.c", i32 352, i32 38}
!431 = !{ptr @.str.220, !432, !"<string literal>", i1 false, i1 false}
!432 = !{!"../sound/soc/codecs/wm8983.c", i32 335, i32 2}
!433 = !{ptr @.str.222, !434, !"<string literal>", i1 false, i1 false}
!434 = !{!"../sound/soc/codecs/wm8983.c", i32 337, i32 2}
!435 = !{ptr @out3_mixer, !436, !"out3_mixer", i1 false, i1 false}
!436 = !{!"../sound/soc/codecs/wm8983.c", i32 334, i32 38}
!437 = !{ptr @.str.224, !438, !"<string literal>", i1 false, i1 false}
!438 = !{!"../sound/soc/codecs/wm8983.c", i32 342, i32 2}
!439 = !{ptr @.str.226, !440, !"<string literal>", i1 false, i1 false}
!440 = !{!"../sound/soc/codecs/wm8983.c", i32 344, i32 2}
!441 = !{ptr @.str.228, !442, !"<string literal>", i1 false, i1 false}
!442 = !{!"../sound/soc/codecs/wm8983.c", i32 346, i32 2}
!443 = !{ptr @.str.230, !444, !"<string literal>", i1 false, i1 false}
!444 = !{!"../sound/soc/codecs/wm8983.c", i32 348, i32 2}
!445 = !{ptr @out4_mixer, !446, !"out4_mixer", i1 false, i1 false}
!446 = !{!"../sound/soc/codecs/wm8983.c", i32 341, i32 38}
!447 = !{ptr @wm8983_audio_map, !448, !"wm8983_audio_map", i1 false, i1 false}
!448 = !{!"../sound/soc/codecs/wm8983.c", i32 430, i32 40}
!449 = !{ptr @.str.232, !450, !"<string literal>", i1 false, i1 false}
!450 = !{!"../sound/soc/codecs/wm8983.c", i32 920, i32 3}
!451 = !{ptr @.str.233, !450, !"<string literal>", i1 false, i1 false}
!452 = !{ptr @wm8983_probe._entry, !450, !"_entry", i1 false, i1 false}
!453 = !{ptr @wm8983_probe._entry_ptr, !450, !"_entry_ptr", i1 false, i1 false}
!454 = distinct !{null, !455, !"vol_update_regs", i1 false, i1 false}
!455 = !{!"../sound/soc/codecs/wm8983.c", i32 85, i32 18}
!456 = !{ptr @.str.234, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../sound/soc/codecs/wm8983.c", i32 865, i32 5}
!458 = !{ptr @.str.235, !457, !"<string literal>", i1 false, i1 false}
!459 = !{ptr @wm8983_set_bias_level._entry, !457, !"_entry", i1 false, i1 false}
!460 = !{ptr @wm8983_set_bias_level._entry_ptr, !457, !"_entry_ptr", i1 false, i1 false}
!461 = !{ptr @.str.236, !462, !"<string literal>", i1 false, i1 false}
!462 = !{!"../sound/soc/codecs/wm8983.c", i32 958, i32 10}
!463 = !{ptr @wm8983_dai, !464, !"wm8983_dai", i1 false, i1 false}
!464 = !{!"../sound/soc/codecs/wm8983.c", i32 957, i32 34}
!465 = !{ptr @wm8983_dai_ops, !466, !"wm8983_dai_ops", i1 false, i1 false}
!466 = !{!"../sound/soc/codecs/wm8983.c", i32 945, i32 37}
!467 = !{ptr @.str.237, !468, !"<string literal>", i1 false, i1 false}
!468 = !{!"../sound/soc/codecs/wm8983.c", i32 839, i32 3}
!469 = !{ptr @.str.238, !468, !"<string literal>", i1 false, i1 false}
!470 = !{ptr @wm8983_set_sysclk._entry, !468, !"_entry", i1 false, i1 false}
!471 = !{ptr @wm8983_set_sysclk._entry_ptr, !468, !"_entry_ptr", i1 false, i1 false}
!472 = !{ptr @.str.239, !473, !"<string literal>", i1 false, i1 false}
!473 = !{!"../sound/soc/codecs/wm8983.c", i32 765, i32 3}
!474 = !{ptr @.str.240, !473, !"<string literal>", i1 false, i1 false}
!475 = !{ptr @pll_factors._entry, !473, !"_entry", i1 false, i1 false}
!476 = !{ptr @pll_factors._entry_ptr, !473, !"_entry_ptr", i1 false, i1 false}
!477 = !{ptr @.str.241, !478, !"<string literal>", i1 false, i1 false}
!478 = !{!"../sound/soc/codecs/wm8983.c", i32 589, i32 3}
!479 = !{ptr @.str.242, !478, !"<string literal>", i1 false, i1 false}
!480 = !{ptr @wm8983_set_fmt._entry, !478, !"_entry", i1 false, i1 false}
!481 = !{ptr @wm8983_set_fmt._entry_ptr, !478, !"_entry_ptr", i1 false, i1 false}
!482 = !{ptr @.str.244, !483, !"<string literal>", i1 false, i1 false}
!483 = !{!"../sound/soc/codecs/wm8983.c", i32 604, i32 3}
!484 = !{ptr @wm8983_set_fmt._entry.243, !483, !"_entry", i1 false, i1 false}
!485 = !{ptr @wm8983_set_fmt._entry_ptr.245, !483, !"_entry_ptr", i1 false, i1 false}
!486 = !{ptr @.str.247, !487, !"<string literal>", i1 false, i1 false}
!487 = !{!"../sound/soc/codecs/wm8983.c", i32 615, i32 3}
!488 = !{ptr @wm8983_set_fmt._entry.246, !487, !"_entry", i1 false, i1 false}
!489 = !{ptr @wm8983_set_fmt._entry_ptr.248, !487, !"_entry_ptr", i1 false, i1 false}
!490 = !{ptr @.str.250, !491, !"<string literal>", i1 false, i1 false}
!491 = !{!"../sound/soc/codecs/wm8983.c", i32 635, i32 3}
!492 = !{ptr @wm8983_set_fmt._entry.249, !491, !"_entry", i1 false, i1 false}
!493 = !{ptr @wm8983_set_fmt._entry_ptr.251, !491, !"_entry_ptr", i1 false, i1 false}
!494 = !{ptr @.str.252, !495, !"<string literal>", i1 false, i1 false}
!495 = !{!"../sound/soc/codecs/wm8983.c", i32 660, i32 3}
!496 = !{ptr @.str.253, !495, !"<string literal>", i1 false, i1 false}
!497 = !{ptr @wm8983_hw_params._entry, !495, !"_entry", i1 false, i1 false}
!498 = !{ptr @wm8983_hw_params._entry_ptr, !495, !"_entry_ptr", i1 false, i1 false}
!499 = !{ptr @.str.255, !500, !"<string literal>", i1 false, i1 false}
!500 = !{!"../sound/soc/codecs/wm8983.c", i32 680, i32 3}
!501 = !{ptr @wm8983_hw_params._entry.254, !500, !"_entry", i1 false, i1 false}
!502 = !{ptr @wm8983_hw_params._entry_ptr.256, !500, !"_entry_ptr", i1 false, i1 false}
!503 = !{ptr @.str.257, !504, !"<string literal>", i1 false, i1 false}
!504 = !{!"../sound/soc/codecs/wm8983.c", i32 701, i32 2}
!505 = !{ptr @.str.258, !504, !"<string literal>", i1 false, i1 false}
!506 = !{ptr @wm8983_hw_params.__UNIQUE_ID_ddebug296, !504, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!507 = !{ptr @.str.259, !508, !"<string literal>", i1 false, i1 false}
!508 = !{!"../sound/soc/codecs/wm8983.c", i32 705, i32 2}
!509 = !{ptr @wm8983_hw_params.__UNIQUE_ID_ddebug297, !508, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!510 = !{ptr @.str.260, !511, !"<string literal>", i1 false, i1 false}
!511 = !{!"../sound/soc/codecs/wm8983.c", i32 706, i32 2}
!512 = !{ptr @wm8983_hw_params.__UNIQUE_ID_ddebug298, !511, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!513 = !{ptr @.str.262, !514, !"<string literal>", i1 false, i1 false}
!514 = !{!"../sound/soc/codecs/wm8983.c", i32 715, i32 3}
!515 = !{ptr @wm8983_hw_params._entry.261, !514, !"_entry", i1 false, i1 false}
!516 = !{ptr @wm8983_hw_params._entry_ptr.263, !514, !"_entry_ptr", i1 false, i1 false}
!517 = !{ptr @.str.264, !518, !"<string literal>", i1 false, i1 false}
!518 = !{!"../sound/soc/codecs/wm8983.c", i32 720, i32 2}
!519 = !{ptr @wm8983_hw_params.__UNIQUE_ID_ddebug299, !518, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!520 = !{ptr @.str.266, !521, !"<string literal>", i1 false, i1 false}
!521 = !{!"../sound/soc/codecs/wm8983.c", i32 732, i32 3}
!522 = !{ptr @wm8983_hw_params._entry.265, !521, !"_entry", i1 false, i1 false}
!523 = !{ptr @wm8983_hw_params._entry_ptr.267, !521, !"_entry_ptr", i1 false, i1 false}
!524 = !{ptr @.str.268, !525, !"<string literal>", i1 false, i1 false}
!525 = !{!"../sound/soc/codecs/wm8983.c", i32 736, i32 2}
!526 = !{ptr @wm8983_hw_params.__UNIQUE_ID_ddebug300, !525, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!527 = !{ptr @srates, !528, !"srates", i1 false, i1 false}
!528 = !{!"../sound/soc/codecs/wm8983.c", i32 118, i32 18}
!529 = !{ptr @fs_ratios, !530, !"fs_ratios", i1 false, i1 false}
!530 = !{!"../sound/soc/codecs/wm8983.c", i32 107, i32 3}
!531 = distinct !{null, !532, !"bclk_divs", i1 false, i1 false}
!532 = !{!"../sound/soc/codecs/wm8983.c", i32 120, i32 18}
!533 = !{ptr @wm8983_i2c_id, !534, !"wm8983_i2c_id", i1 false, i1 false}
!534 = !{!"../sound/soc/codecs/wm8983.c", i32 1063, i32 35}
!535 = !{ptr @wm8983_spi_driver, !536, !"wm8983_spi_driver", i1 false, i1 false}
!536 = !{!"../sound/soc/codecs/wm8983.c", i32 1029, i32 26}
!537 = !{ptr @wm8983_spi_probe._key, !538, !"_key", i1 false, i1 false}
!538 = !{!"../sound/soc/codecs/wm8983.c", i32 1015, i32 19}
!539 = !{ptr @.str.269, !538, !"<string literal>", i1 false, i1 false}
!540 = !{ptr @.str.270, !541, !"<string literal>", i1 false, i1 false}
!541 = !{!"../sound/soc/codecs/wm8983.c", i32 1018, i32 3}
!542 = !{ptr @wm8983_spi_probe._entry, !541, !"_entry", i1 false, i1 false}
!543 = !{ptr @wm8983_spi_probe._entry_ptr, !541, !"_entry_ptr", i1 false, i1 false}
!544 = !{i32 1, !"wchar_size", i32 2}
!545 = !{i32 1, !"min_enum_size", i32 4}
!546 = !{i32 8, !"branch-target-enforcement", i32 0}
!547 = !{i32 8, !"sign-return-address", i32 0}
!548 = !{i32 8, !"sign-return-address-all", i32 0}
!549 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!550 = !{i32 7, !"uwtable", i32 1}
!551 = !{i32 7, !"frame-pointer", i32 2}
!552 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!553 = !{!"branch_weights", i32 2000, i32 1}
!554 = !{i64 2148219314, i64 2148219594, i64 2148219928, i64 2148220262}
!555 = !{i32 0, i32 33}
!556 = !{i64 2148986267, i64 2148986272, i64 2148986285, i64 2148986329, i64 2148986363, i64 2148986384}
