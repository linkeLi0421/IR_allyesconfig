; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/da7210.c_pt.bc'
source_filename = "../sound/soc/codecs/da7210.c"
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
%struct.reg_sequence = type { i32, i32, i32 }
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
%struct.pll_div = type { i32, i32, i8, i8, i8, i8 }
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
%struct.da7210_priv = type { ptr, i32, i32 }
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

@__initcall__kmod_snd_soc_da7210__297_1349_da7210_modinit6 = internal global ptr @da7210_modinit, section ".initcall6.init", align 4
@da7210_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @da7210_i2c_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @da7210_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@da7210_spi_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @da7210_spi_probe, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_da7210_exit = internal global ptr @da7210_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description298 = internal constant [46 x i8] c"snd_soc_da7210.description=ASoC DA7210 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author299 = internal constant [52 x i8] c"snd_soc_da7210.author=David Chen, Kuninori Morimoto\00", section ".modinfo", align 1
@__UNIQUE_ID_file300 = internal constant [52 x i8] c"snd_soc_da7210.file=sound/soc/codecs/snd-soc-da7210\00", section ".modinfo", align 1
@__UNIQUE_ID_license301 = internal constant [27 x i8] c"snd_soc_da7210.license=GPL\00", section ".modinfo", align 1
@da7210_modinit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1344, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013Failed to register da7210 SPI driver: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"da7210_modinit\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sound/soc/codecs/da7210.c\00", [38 x i8] zeroinitializer }, align 32
@da7210_modinit._entry_ptr = internal global ptr @da7210_modinit._entry, section ".printk_index", align 4
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"da7210\00", [25 x i8] zeroinitializer }, align 32
@da7210_i2c_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"da7210\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@da7210_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@da7210_regmap_config_i2c = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr @da7210_readable_register, ptr @da7210_volatile_register, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @da7210_reg_defaults, i32 50, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"da7210:1222:(&da7210_regmap_config_i2c)->lock\00", [50 x i8] zeroinitializer }, align 32
@da7210_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 1225, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"regmap_init() failed: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"da7210_i2c_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@da7210_i2c_probe._entry_ptr = internal global ptr @da7210_i2c_probe._entry, section ".printk_index", align 4
@da7210_regmap_i2c_patch = internal constant { [8 x %struct.reg_sequence], [32 x i8] } { [8 x %struct.reg_sequence] [%struct.reg_sequence { i32 3, i32 0, i32 0 }, %struct.reg_sequence { i32 43, i32 16, i32 0 }, %struct.reg_sequence { i32 138, i32 139, i32 0 }, %struct.reg_sequence { i32 139, i32 180, i32 0 }, %struct.reg_sequence { i32 144, i32 1, i32 0 }, %struct.reg_sequence { i32 167, i32 124, i32 0 }, %struct.reg_sequence { i32 138, i32 0, i32 0 }, %struct.reg_sequence { i32 139, i32 0, i32 0 }], [32 x i8] zeroinitializer }, align 32
@da7210_i2c_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.6, ptr @.str.2, i32 1232, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to apply regmap patch: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@da7210_i2c_probe._entry_ptr.12 = internal global ptr @da7210_i2c_probe._entry.9, section ".printk_index", align 4
@soc_component_dev_da7210 = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @da7210_snd_controls, i32 47, ptr @da7210_dapm_widgets, i32 34, ptr @da7210_audio_map, i32 45, ptr @da7210_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 92, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@da7210_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr @.str.199, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @da7210_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.137, i64 68719477828, i32 2046, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.140, i64 68719477828, i32 2046, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 -128, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@da7210_i2c_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.6, ptr @.str.2, i32 1237, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to register component: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@da7210_i2c_probe._entry_ptr.15 = internal global ptr @da7210_i2c_probe._entry.13, section ".printk_index", align 4
@da7210_reg_defaults = internal constant { [50 x %struct.reg_default], [112 x i8] } { [50 x %struct.reg_default] [%struct.reg_default zeroinitializer, %struct.reg_default { i32 1, i32 17 }, %struct.reg_default { i32 3, i32 0 }, %struct.reg_default { i32 4, i32 0 }, %struct.reg_default { i32 5, i32 0 }, %struct.reg_default { i32 6, i32 0 }, %struct.reg_default { i32 7, i32 0 }, %struct.reg_default { i32 8, i32 0 }, %struct.reg_default { i32 9, i32 0 }, %struct.reg_default { i32 10, i32 0 }, %struct.reg_default { i32 11, i32 0 }, %struct.reg_default { i32 12, i32 0 }, %struct.reg_default { i32 13, i32 0 }, %struct.reg_default { i32 14, i32 0 }, %struct.reg_default { i32 15, i32 8 }, %struct.reg_default { i32 16, i32 0 }, %struct.reg_default { i32 17, i32 0 }, %struct.reg_default { i32 18, i32 0 }, %struct.reg_default { i32 19, i32 0 }, %struct.reg_default { i32 20, i32 8 }, %struct.reg_default { i32 21, i32 16 }, %struct.reg_default { i32 22, i32 16 }, %struct.reg_default { i32 23, i32 84 }, %struct.reg_default { i32 24, i32 64 }, %struct.reg_default { i32 25, i32 0 }, %struct.reg_default { i32 26, i32 0 }, %struct.reg_default { i32 27, i32 0 }, %struct.reg_default { i32 28, i32 0 }, %struct.reg_default { i32 29, i32 0 }, %struct.reg_default { i32 30, i32 0 }, %struct.reg_default { i32 31, i32 0 }, %struct.reg_default { i32 32, i32 0 }, %struct.reg_default { i32 33, i32 0 }, %struct.reg_default { i32 34, i32 0 }, %struct.reg_default { i32 35, i32 2 }, %struct.reg_default { i32 36, i32 0 }, %struct.reg_default { i32 37, i32 118 }, %struct.reg_default { i32 38, i32 0 }, %struct.reg_default { i32 39, i32 0 }, %struct.reg_default { i32 40, i32 4 }, %struct.reg_default { i32 41, i32 0 }, %struct.reg_default { i32 42, i32 0 }, %struct.reg_default { i32 43, i32 48 }, %struct.reg_default { i32 44, i32 42 }, %struct.reg_default { i32 131, i32 0 }, %struct.reg_default { i32 132, i32 0 }, %struct.reg_default { i32 133, i32 0 }, %struct.reg_default { i32 134, i32 0 }, %struct.reg_default { i32 135, i32 0 }, %struct.reg_default { i32 136, i32 0 }], [112 x i8] zeroinitializer }, align 32
@da7210_snd_controls = internal constant { [47 x %struct.snd_kcontrol_new], [560 x i8] } { [47 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.16, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @hp_out_tlv }, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.17, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @dac_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.18 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.19, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @lineout_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.20 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.21, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @mono_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.22 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.23, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @mic_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.24 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.25, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @aux1_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.26 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.27, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @aux2_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.28 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.29, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @inpga_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.30 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.31, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.32 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.33, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @eq_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.34 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.35, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @eq_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.36 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.37, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @eq_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.38 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.39, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @eq_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.40 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.41, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @eq_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.42 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.43, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.44 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.45, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @adc_eq_master_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.46 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.47, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @eq_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.48 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.49, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @eq_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.50 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.51, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @eq_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.52 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.53, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @eq_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.54 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.55, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @eq_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.56 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.57, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.58 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.59, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @da7210_dac_hpf_cutoff to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.60, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.61 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.62, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @da7210_dac_vf_cutoff to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.63, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.64 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.65, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @da7210_adc_hpf_cutoff to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.66, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.67 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.68, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @da7210_adc_vf_cutoff to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.69, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.70 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.71, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.72 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.73, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.74 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.75, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.76 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.77, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.78 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.79, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.80 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.81, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.82 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.83, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.84 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.85, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.86 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.87, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @da7210_hp_mode_sel to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.88, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @da7210_put_alc_sw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.89 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.90, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.91 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.92, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.93 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.94, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.95 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.96, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.97 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.98, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.99 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.100, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.101 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.102, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @da7210_put_noise_sup_sw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.103 to i32) }], [560 x i8] zeroinitializer }, align 32
@da7210_audio_map = internal constant { [45 x %struct.snd_soc_dapm_route], [604 x i8] } { [45 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.126, ptr null, ptr @.str.121, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.127, ptr null, ptr @.str.122, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.128, ptr null, ptr @.str.123, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.129, ptr null, ptr @.str.124, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.130, ptr null, ptr @.str.125, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.134, ptr @.str.158, ptr @.str.126, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.134, ptr @.str.160, ptr @.str.127, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.134, ptr @.str.162, ptr @.str.128, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.134, ptr @.str.164, ptr @.str.130, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.134, ptr @.str.166, ptr @.str.142, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.135, ptr @.str.160, ptr @.str.127, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.135, ptr @.str.158, ptr @.str.126, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.135, ptr @.str.170, ptr @.str.129, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.135, ptr @.str.164, ptr @.str.130, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.135, ptr @.str.173, ptr @.str.143, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.131, ptr null, ptr @.str.134, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.136, ptr null, ptr @.str.131, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.132, ptr null, ptr @.str.135, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.138, ptr null, ptr @.str.132, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.142, ptr @.str.162, ptr @.str.128, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.142, ptr @.str.164, ptr @.str.130, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.142, ptr @.str.177, ptr @.str.131, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.142, ptr @.str.179, ptr @.str.132, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.142, ptr @.str.181, ptr @.str.139, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.143, ptr @.str.170, ptr @.str.129, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.143, ptr @.str.164, ptr @.str.130, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.143, ptr @.str.179, ptr @.str.132, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.143, ptr @.str.177, ptr @.str.131, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.143, ptr @.str.187, ptr @.str.141, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.144, ptr @.str.179, ptr @.str.132, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.144, ptr @.str.177, ptr @.str.131, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.144, ptr @.str.173, ptr @.str.143, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.144, ptr @.str.166, ptr @.str.142, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.145, ptr null, ptr @.str.142, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.146, ptr null, ptr @.str.143, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.147, ptr null, ptr @.str.145, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.152, ptr null, ptr @.str.147, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.148, ptr null, ptr @.str.146, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.153, ptr null, ptr @.str.148, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.150, ptr null, ptr @.str.145, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.154, ptr null, ptr @.str.150, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.151, ptr null, ptr @.str.146, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.155, ptr null, ptr @.str.151, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.149, ptr null, ptr @.str.144, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.156, ptr null, ptr @.str.149, ptr null, %struct.snd_soc_dobj zeroinitializer }], [604 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"HeadPhone Playback Volume\00", [38 x i8] zeroinitializer }, align 32
@hp_out_tlv = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 3, i32 48, i32 0, i32 16, i32 1, i32 8, i32 -9999999, i32 65536, i32 17, i32 63, i32 1, i32 8, i32 -5400, i32 150], [40 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 33, i32 34, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Digital Playback Volume\00", [40 x i8] zeroinitializer }, align 32
@dac_gain_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -7725, i32 75], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.18 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 119, i32 119, i32 21, i32 22, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Lineout Playback Volume\00", [40 x i8] zeroinitializer }, align 32
@lineout_vol_tlv = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 3, i32 48, i32 0, i32 16, i32 1, i32 8, i32 -9999999, i32 65536, i32 17, i32 63, i32 1, i32 8, i32 -5400, i32 150], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.20 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 30, i32 31, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Mono Playback Volume\00", [43 x i8] zeroinitializer }, align 32
@mono_vol_tlv = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 3, i32 48, i32 0, i32 2, i32 1, i32 8, i32 -1800, i32 65536, i32 3, i32 7, i32 1, i32 8, i32 -1800, i32 600], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.22 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 32, i32 32, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Mic Capture Volume\00", [45 x i8] zeroinitializer }, align 32
@mic_vol_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -600, i32 600], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.24 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 5, i32 5, i32 7, i32 8, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Aux1 Capture Volume\00", [44 x i8] zeroinitializer }, align 32
@aux1_vol_tlv = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 3, i32 48, i32 0, i32 16, i32 1, i32 8, i32 -9999999, i32 65536, i32 17, i32 63, i32 1, i32 8, i32 -4800, i32 150], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.26 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 9, i32 10, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Aux2 Capture Volume\00", [44 x i8] zeroinitializer }, align 32
@aux2_vol_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -600, i32 600], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.28 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 11, i32 11, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"In PGA Capture Volume\00", [42 x i8] zeroinitializer }, align 32
@inpga_gain_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -450, i32 150], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.30 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 12, i32 12, i32 0, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DAC EQ Switch\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.32 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 27, i32 27, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DAC EQ1 Volume\00", [17 x i8] zeroinitializer }, align 32
@eq_gain_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -1050, i32 150], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.34 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 25, i32 25, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DAC EQ2 Volume\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.36 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 25, i32 25, i32 4, i32 4, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DAC EQ3 Volume\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.38 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 26, i32 26, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DAC EQ4 Volume\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.40 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 26, i32 26, i32 4, i32 4, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DAC EQ5 Volume\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.42 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 27, i32 27, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ADC EQ Switch\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.44 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 19, i32 19, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ADC EQ Master Volume\00", [43 x i8] zeroinitializer }, align 32
@adc_eq_master_gain_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -1800, i32 66136], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.46 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 19, i32 19, i32 4, i32 4, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ADC EQ1 Volume\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.48 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 17, i32 17, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ADC EQ2 Volume\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.50 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 17, i32 17, i32 4, i32 4, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ADC EQ3 Volume\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.52 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 18, i32 18, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ADC EQ4 Volume\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.54 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 18, i32 18, i32 4, i32 4, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ADC EQ5 Volume\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.56 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 19, i32 19, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DAC HPF Switch\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.58 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 20, i32 20, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DAC HPF Cutoff\00", [17 x i8] zeroinitializer }, align 32
@da7210_dac_hpf_cutoff = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 20, i8 0, i8 0, i32 4, i32 3, ptr @da7210_hpf_cutoff_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DAC Voice Mode Switch\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.61 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 20, i32 20, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DAC Voice Cutoff\00", [47 x i8] zeroinitializer }, align 32
@da7210_dac_vf_cutoff = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 20, i8 4, i8 4, i32 8, i32 7, ptr @da7210_vf_cutoff_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ADC HPF Switch\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.64 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 15, i32 15, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ADC HPF Cutoff\00", [17 x i8] zeroinitializer }, align 32
@da7210_adc_hpf_cutoff = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 15, i8 0, i8 0, i32 4, i32 3, ptr @da7210_hpf_cutoff_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ADC Voice Mode Switch\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.67 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 15, i32 15, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ADC Voice Cutoff\00", [47 x i8] zeroinitializer }, align 32
@da7210_adc_vf_cutoff = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 15, i8 4, i8 4, i32 8, i32 7, ptr @da7210_vf_cutoff_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Mic Capture Switch\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.70 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 7, i32 8, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Aux2 Capture Switch\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.72 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 11, i32 11, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ADC Capture Switch\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.74 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 16, i32 16, i32 2, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Digital Soft Mute Switch\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.76 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 24, i32 24, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Digital Soft Mute Rate\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.78 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 24, i32 24, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Aux1 ZC Switch\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.80 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 36, i32 36, i32 0, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"In PGA ZC Switch\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.82 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 36, i32 36, i32 2, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Lineout ZC Switch\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.84 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 36, i32 36, i32 4, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Headphone ZC Switch\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.86 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 36, i32 36, i32 6, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Headphone Class\00", [16 x i8] zeroinitializer }, align 32
@da7210_hp_mode_sel = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 35, i8 0, i8 0, i32 2, i32 1, ptr @da7210_hp_mode_txt, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ALC Enable Switch\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.89 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 16, i32 16, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ALC Capture Max Volume\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.91 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 131, i32 131, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ALC Capture Min Volume\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.93 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 132, i32 132, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ALC Capture Noise Volume\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.95 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 133, i32 133, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ALC Capture Attack Rate\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.97 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 134, i32 134, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ALC Capture Release Rate\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.99 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 135, i32 135, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ALC Capture Release Delay\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.101 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 136, i32 136, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Noise Suppression Enable Switch\00", [32 x i8] zeroinitializer }, align 32
@.compoundliteral.103 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1, i32 1, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@da7210_hpf_cutoff_txt = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107], [16 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Fs/8192*pi\00", [21 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Fs/4096*pi\00", [21 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Fs/2048*pi\00", [21 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Fs/1024*pi\00", [21 x i8] zeroinitializer }, align 32
@da7210_vf_cutoff_txt = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115], [32 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"2.5Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"25Hz\00", [27 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"50Hz\00", [27 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"100Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"150Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"200Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"300Hz\00", [26 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"400Hz\00", [26 x i8] zeroinitializer }, align 32
@da7210_hp_mode_txt = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.116, ptr @.str.117], [24 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Class H\00", [24 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Class G\00", [24 x i8] zeroinitializer }, align 32
@da7210_put_alc_sw.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.118, ptr @.str.119, ptr @.str.2, ptr @.str.120, i8 0, i8 83, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.118 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"snd_soc_da7210\00", [17 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"da7210_put_alc_sw\00", [46 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Disable noise suppression to enable ALC\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MICL\00", [27 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MICR\00", [27 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AUX1L\00", [26 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AUX1R\00", [26 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AUX2\00", [27 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Mic Left\00", [23 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Mic Right\00", [22 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Aux1 Left\00", [22 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Aux1 Right\00", [21 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Aux2 Mono\00", [22 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"INPGA Left\00", [21 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"INPGA Right\00", [20 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Mic Bias\00", [23 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"In Mixer Left\00", [18 x i8] zeroinitializer }, align 32
@da7210_dapm_inmixl_controls = internal constant { [5 x %struct.snd_kcontrol_new], [48 x i8] } { [5 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.158, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.159 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.160, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.161 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.162, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.163 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.164, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.165 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.166, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.167 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"In Mixer Right\00", [17 x i8] zeroinitializer }, align 32
@da7210_dapm_inmixr_controls = internal constant { [5 x %struct.snd_kcontrol_new], [48 x i8] } { [5 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.160, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.168 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.158, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.169 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.170, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.171 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.164, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.172 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.173, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.174 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ADC Left\00", [23 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Capture\00", [24 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ADC Right\00", [22 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DAC Left\00", [23 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Playback\00", [23 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"DAC Right\00", [22 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Out Mixer Left\00", [17 x i8] zeroinitializer }, align 32
@da7210_dapm_outmixl_controls = internal constant { [5 x %struct.snd_kcontrol_new], [48 x i8] } { [5 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.162, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.175 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.164, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.176 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.177, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.178 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.179, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.180 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.181, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.182 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Out Mixer Right\00", [16 x i8] zeroinitializer }, align 32
@da7210_dapm_outmixr_controls = internal constant { [5 x %struct.snd_kcontrol_new], [48 x i8] } { [5 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.170, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.183 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.164, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.184 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.177, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.185 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.179, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.186 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.187, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.188 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Mono Mixer\00", [21 x i8] zeroinitializer }, align 32
@da7210_dapm_monomix_controls = internal constant { [4 x %struct.snd_kcontrol_new], [32 x i8] } { [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.179, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.189 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.177, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.190 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.173, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.191 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.166, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.192 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"OUTPGA Left Enable\00", [45 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"OUTPGA Right Enable\00", [44 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Out1 Left\00", [22 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Out1 Right\00", [21 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Out2 Mono\00", [22 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Headphone Left\00", [17 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Headphone Right\00", [16 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"OUT1L\00", [26 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"OUT1R\00", [26 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"HPL\00", [28 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"HPR\00", [28 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"OUT2\00", [27 x i8] zeroinitializer }, align 32
@da7210_dapm_widgets = internal constant { [34 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [1528 x i8] } { [34 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.121, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.122, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.123, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.124, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.125, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.126, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 5, i8 0, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.127, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 5, i8 1, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.128, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 5, i8 2, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.129, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 5, i8 3, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.130, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 5, i8 4, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.131, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 13, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.132, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 14, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.133, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 7, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.134, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 5, ptr @da7210_dapm_inmixl_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.135, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 5, ptr @da7210_dapm_inmixr_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.136, ptr @.str.137, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 5, i8 5, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.138, ptr @.str.137, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 5, i8 6, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.139, ptr @.str.140, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 4, i8 5, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.141, ptr @.str.140, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 4, i8 6, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.142, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 5, ptr @da7210_dapm_outmixl_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.143, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 5, ptr @da7210_dapm_outmixr_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.144, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @da7210_dapm_monomix_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.145, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 28, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.146, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 29, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.147, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 4, i8 0, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.148, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 4, i8 1, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.149, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 4, i8 2, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.150, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 4, i8 3, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.151, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 4, i8 4, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.152, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.153, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.154, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.155, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.156, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [1528 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Mic Left Switch\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.159 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13, i32 13, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Mic Right Switch\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.161 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13, i32 13, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Aux1 Left Switch\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.163 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13, i32 13, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Aux2 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.165 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13, i32 13, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Outmix Left Switch\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.167 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 13, i32 13, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.168 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 14, i32 14, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.169 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 14, i32 14, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Aux1 Right Switch\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.171 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 14, i32 14, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.172 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 14, i32 14, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Outmix Right Switch\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.174 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 14, i32 14, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.175 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 28, i32 28, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.176 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 28, i32 28, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"INPGA Left Switch\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.178 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 28, i32 28, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"INPGA Right Switch\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.180 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 28, i32 28, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DAC Left Switch\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.182 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 28, i32 28, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.183 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 29, i32 29, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.184 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 29, i32 29, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.185 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 29, i32 29, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.186 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 29, i32 29, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DAC Right Switch\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.188 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 29, i32 29, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.189 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 32, i32 32, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.190 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 32, i32 32, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.191 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 32, i32 32, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.192 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 32, i32 32, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@da7210_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.193, ptr @.str.194, ptr @.str.2, i32 1069, ptr @.str.195, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DA7210 Audio Codec %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"da7210_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@da7210_probe._entry_ptr = internal global ptr @da7210_probe._entry, section ".printk_index", align 4
@.str.196 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0.0.1\00", [26 x i8] zeroinitializer }, align 32
@da7210_probe._entry.197 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.193, ptr @.str.194, ptr @.str.2, i32 1160, ptr @.str.195, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@da7210_probe._entry_ptr.198 = internal global ptr @da7210_probe._entry.197, section ".printk_index", align 4
@.str.199 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"da7210-hifi\00", [20 x i8] zeroinitializer }, align 32
@da7210_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @da7210_set_dai_sysclk, ptr @da7210_set_dai_pll, ptr null, ptr null, ptr @da7210_set_dai_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @da7210_mute, ptr null, ptr null, ptr @da7210_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 -128 }, [32 x i8] zeroinitializer }, align 32
@da7210_set_dai_sysclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.200, ptr @.str.201, ptr @.str.2, i32 962, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unsupported MCLK value %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"da7210_set_dai_sysclk\00", [42 x i8] zeroinitializer }, align 32
@da7210_set_dai_sysclk._entry_ptr = internal global ptr @da7210_set_dai_sysclk._entry, section ".printk_index", align 4
@da7210_set_dai_sysclk._entry.202 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.203, ptr @.str.201, ptr @.str.2, i32 967, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unknown clock source %d\0A\00", [39 x i8] zeroinitializer }, align 32
@da7210_set_dai_sysclk._entry_ptr.204 = internal global ptr @da7210_set_dai_sysclk._entry.202, section ".printk_index", align 4
@da7210_pll_div = internal constant { [21 x %struct.pll_div], [36 x i8] } { [21 x %struct.pll_div] [%struct.pll_div { i32 12000000, i32 2822400, i8 -24, i8 108, i8 2, i8 1 }, %struct.pll_div { i32 13000000, i32 2822400, i8 -33, i8 40, i8 12, i8 1 }, %struct.pll_div { i32 13500000, i32 2822400, i8 -37, i8 10, i8 13, i8 1 }, %struct.pll_div { i32 14400000, i32 2822400, i8 -44, i8 90, i8 2, i8 1 }, %struct.pll_div { i32 19200000, i32 2822400, i8 -69, i8 67, i8 9, i8 1 }, %struct.pll_div { i32 19680000, i32 2822400, i8 -71, i8 109, i8 10, i8 1 }, %struct.pll_div { i32 19800000, i32 2822400, i8 -72, i8 -5, i8 11, i8 1 }, %struct.pll_div { i32 12000000, i32 3072000, i8 -13, i8 18, i8 7, i8 1 }, %struct.pll_div { i32 13000000, i32 3072000, i8 -24, i8 -3, i8 5, i8 1 }, %struct.pll_div { i32 13500000, i32 3072000, i8 -28, i8 -126, i8 3, i8 1 }, %struct.pll_div { i32 14400000, i32 3072000, i8 -35, i8 58, i8 0, i8 1 }, %struct.pll_div { i32 19200000, i32 3072000, i8 -63, i8 -21, i8 8, i8 1 }, %struct.pll_div { i32 19680000, i32 3072000, i8 -65, i8 -20, i8 0, i8 1 }, %struct.pll_div { i32 19800000, i32 3072000, i8 -65, i8 112, i8 0, i8 1 }, %struct.pll_div { i32 12000000, i32 2822400, i8 -19, i8 -65, i8 5, i8 0 }, %struct.pll_div { i32 13000000, i32 2822400, i8 -28, i8 19, i8 0, i8 0 }, %struct.pll_div { i32 13500000, i32 2822400, i8 -33, i8 -58, i8 8, i8 0 }, %struct.pll_div { i32 14400000, i32 2822400, i8 -40, i8 -54, i8 1, i8 0 }, %struct.pll_div { i32 19200000, i32 2822400, i8 -66, i8 -105, i8 9, i8 0 }, %struct.pll_div { i32 19680000, i32 2822400, i8 -68, i8 -84, i8 13, i8 0 }, %struct.pll_div { i32 19800000, i32 2822400, i8 -68, i8 53, i8 14, i8 0 }], [36 x i8] zeroinitializer }, align 32
@da7210_set_dai_pll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.205, ptr @.str.206, ptr @.str.2, i32 1029, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Unsupported PLL input frequency %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"da7210_set_dai_pll\00", [45 x i8] zeroinitializer }, align 32
@da7210_set_dai_pll._entry_ptr = internal global ptr @da7210_set_dai_pll._entry, section ".printk_index", align 4
@da7210_spi_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@da7210_regmap_config_spi = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr @da7210_readable_register, ptr @da7210_volatile_register, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @da7210_reg_defaults, i32 50, i32 1, ptr null, i32 0, i32 1, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"da7210:1308:(&da7210_regmap_config_spi)->lock\00", [50 x i8] zeroinitializer }, align 32
@da7210_spi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.208, ptr @.str.209, ptr @.str.2, i32 1311, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to register regmap: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"da7210_spi_probe\00", [47 x i8] zeroinitializer }, align 32
@da7210_spi_probe._entry_ptr = internal global ptr @da7210_spi_probe._entry, section ".printk_index", align 4
@da7210_regmap_spi_patch = internal constant { [12 x %struct.reg_sequence], [48 x i8] } { [12 x %struct.reg_sequence] [%struct.reg_sequence { i32 11, i32 0, i32 0 }, %struct.reg_sequence { i32 11, i32 0, i32 0 }, %struct.reg_sequence { i32 3, i32 0, i32 0 }, %struct.reg_sequence { i32 43, i32 16, i32 0 }, %struct.reg_sequence { i32 0, i32 128, i32 0 }, %struct.reg_sequence { i32 138, i32 139, i32 0 }, %struct.reg_sequence { i32 139, i32 180, i32 0 }, %struct.reg_sequence { i32 144, i32 1, i32 0 }, %struct.reg_sequence { i32 167, i32 124, i32 0 }, %struct.reg_sequence { i32 138, i32 0, i32 0 }, %struct.reg_sequence { i32 139, i32 0, i32 0 }, %struct.reg_sequence zeroinitializer], [48 x i8] zeroinitializer }, align 32
@da7210_spi_probe._entry.210 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.209, ptr @.str.2, i32 1318, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@da7210_spi_probe._entry_ptr.211 = internal global ptr @da7210_spi_probe._entry.210, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 12000000, i64 13000000, i64 13500000, i64 14400000, i64 19200000, i64 19680000, i64 19800000]
@__sancov_gen_cov_switch_values.212 = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.213 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.214 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.215 = internal global [12 x i64] [i64 10, i64 32, i64 8000, i64 11025, i64 12000, i64 16000, i64 22050, i64 32000, i64 44100, i64 48000, i64 88200, i64 96000]
@___asan_gen_.216 = private unnamed_addr constant [18 x i8] c"da7210_i2c_driver\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 1249, i32 26 }
@___asan_gen_.219 = private unnamed_addr constant [18 x i8] c"da7210_spi_driver\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 1326, i32 26 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 1343, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 1251, i32 11 }
@___asan_gen_.237 = private unnamed_addr constant [14 x i8] c"da7210_i2c_id\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 1242, i32 35 }
@___asan_gen_.243 = private unnamed_addr constant [25 x i8] c"da7210_regmap_config_i2c\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 1198, i32 35 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 1222, i32 19 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 1225, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant [24 x i8] c"da7210_regmap_i2c_patch\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 1181, i32 34 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 1232, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant [25 x i8] c"soc_component_dev_da7210\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 1165, i32 46 }
@___asan_gen_.279 = private unnamed_addr constant [11 x i8] c"da7210_dai\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 1043, i32 34 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 1237, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant [20 x i8] c"da7210_reg_defaults\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 674, i32 33 }
@___asan_gen_.291 = private unnamed_addr constant [20 x i8] c"da7210_snd_controls\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 388, i32 38 }
@___asan_gen_.294 = private unnamed_addr constant [17 x i8] c"da7210_audio_map\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 603, i32 40 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 390, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant [11 x i8] c"hp_out_tlv\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 265, i32 14 }
@___asan_gen_.303 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 393, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant [13 x i8] c"dac_gain_tlv\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 291, i32 14 }
@___asan_gen_.310 = private unnamed_addr constant [20 x i8] c".compoundliteral.18\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 396, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant [16 x i8] c"lineout_vol_tlv\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 271, i32 14 }
@___asan_gen_.317 = private unnamed_addr constant [20 x i8] c".compoundliteral.20\00", align 1
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 399, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant [13 x i8] c"mono_vol_tlv\00", align 1
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 277, i32 14 }
@___asan_gen_.324 = private unnamed_addr constant [20 x i8] c".compoundliteral.22\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 402, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant [12 x i8] c"mic_vol_tlv\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 292, i32 14 }
@___asan_gen_.331 = private unnamed_addr constant [20 x i8] c".compoundliteral.24\00", align 1
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 405, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant [13 x i8] c"aux1_vol_tlv\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 283, i32 14 }
@___asan_gen_.338 = private unnamed_addr constant [20 x i8] c".compoundliteral.26\00", align 1
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 408, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant [13 x i8] c"aux2_vol_tlv\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 293, i32 14 }
@___asan_gen_.345 = private unnamed_addr constant [20 x i8] c".compoundliteral.28\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 410, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant [15 x i8] c"inpga_gain_tlv\00", align 1
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 294, i32 14 }
@___asan_gen_.352 = private unnamed_addr constant [20 x i8] c".compoundliteral.30\00", align 1
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 414, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant [20 x i8] c".compoundliteral.32\00", align 1
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 415, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant [12 x i8] c"eq_gain_tlv\00", align 1
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 289, i32 14 }
@___asan_gen_.363 = private unnamed_addr constant [20 x i8] c".compoundliteral.34\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 417, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant [20 x i8] c".compoundliteral.36\00", align 1
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 419, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant [20 x i8] c".compoundliteral.38\00", align 1
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 421, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant [20 x i8] c".compoundliteral.40\00", align 1
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 423, i32 2 }
@___asan_gen_.379 = private unnamed_addr constant [20 x i8] c".compoundliteral.42\00", align 1
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 427, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant [20 x i8] c".compoundliteral.44\00", align 1
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 428, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant [23 x i8] c"adc_eq_master_gain_tlv\00", align 1
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 290, i32 14 }
@___asan_gen_.390 = private unnamed_addr constant [20 x i8] c".compoundliteral.46\00", align 1
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 430, i32 2 }
@___asan_gen_.394 = private unnamed_addr constant [20 x i8] c".compoundliteral.48\00", align 1
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 432, i32 2 }
@___asan_gen_.398 = private unnamed_addr constant [20 x i8] c".compoundliteral.50\00", align 1
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 434, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant [20 x i8] c".compoundliteral.52\00", align 1
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 436, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant [20 x i8] c".compoundliteral.54\00", align 1
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 438, i32 2 }
@___asan_gen_.410 = private unnamed_addr constant [20 x i8] c".compoundliteral.56\00", align 1
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 441, i32 2 }
@___asan_gen_.414 = private unnamed_addr constant [20 x i8] c".compoundliteral.58\00", align 1
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 442, i32 2 }
@___asan_gen_.418 = private unnamed_addr constant [22 x i8] c"da7210_dac_hpf_cutoff\00", align 1
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 301, i32 8 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 443, i32 2 }
@___asan_gen_.424 = private unnamed_addr constant [20 x i8] c".compoundliteral.61\00", align 1
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 444, i32 2 }
@___asan_gen_.428 = private unnamed_addr constant [21 x i8] c"da7210_dac_vf_cutoff\00", align 1
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 312, i32 8 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 446, i32 2 }
@___asan_gen_.434 = private unnamed_addr constant [20 x i8] c".compoundliteral.64\00", align 1
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 447, i32 2 }
@___asan_gen_.438 = private unnamed_addr constant [22 x i8] c"da7210_adc_hpf_cutoff\00", align 1
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 304, i32 8 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 448, i32 2 }
@___asan_gen_.444 = private unnamed_addr constant [20 x i8] c".compoundliteral.67\00", align 1
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 449, i32 2 }
@___asan_gen_.448 = private unnamed_addr constant [21 x i8] c"da7210_adc_vf_cutoff\00", align 1
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 315, i32 8 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 452, i32 2 }
@___asan_gen_.454 = private unnamed_addr constant [20 x i8] c".compoundliteral.70\00", align 1
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 453, i32 2 }
@___asan_gen_.458 = private unnamed_addr constant [20 x i8] c".compoundliteral.72\00", align 1
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 454, i32 2 }
@___asan_gen_.462 = private unnamed_addr constant [20 x i8] c".compoundliteral.74\00", align 1
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 455, i32 2 }
@___asan_gen_.466 = private unnamed_addr constant [20 x i8] c".compoundliteral.76\00", align 1
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 456, i32 2 }
@___asan_gen_.470 = private unnamed_addr constant [20 x i8] c".compoundliteral.78\00", align 1
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 459, i32 2 }
@___asan_gen_.474 = private unnamed_addr constant [20 x i8] c".compoundliteral.80\00", align 1
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 460, i32 2 }
@___asan_gen_.478 = private unnamed_addr constant [20 x i8] c".compoundliteral.82\00", align 1
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 461, i32 2 }
@___asan_gen_.482 = private unnamed_addr constant [20 x i8] c".compoundliteral.84\00", align 1
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 462, i32 2 }
@___asan_gen_.486 = private unnamed_addr constant [20 x i8] c".compoundliteral.86\00", align 1
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 464, i32 2 }
@___asan_gen_.490 = private unnamed_addr constant [19 x i8] c"da7210_hp_mode_sel\00", align 1
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 322, i32 8 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 467, i32 2 }
@___asan_gen_.496 = private unnamed_addr constant [20 x i8] c".compoundliteral.89\00", align 1
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 469, i32 2 }
@___asan_gen_.500 = private unnamed_addr constant [20 x i8] c".compoundliteral.91\00", align 1
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 470, i32 2 }
@___asan_gen_.504 = private unnamed_addr constant [20 x i8] c".compoundliteral.93\00", align 1
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 471, i32 2 }
@___asan_gen_.508 = private unnamed_addr constant [20 x i8] c".compoundliteral.95\00", align 1
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 472, i32 2 }
@___asan_gen_.512 = private unnamed_addr constant [20 x i8] c".compoundliteral.97\00", align 1
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 473, i32 2 }
@___asan_gen_.516 = private unnamed_addr constant [20 x i8] c".compoundliteral.99\00", align 1
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 474, i32 2 }
@___asan_gen_.520 = private unnamed_addr constant [21 x i8] c".compoundliteral.101\00", align 1
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 476, i32 2 }
@___asan_gen_.524 = private unnamed_addr constant [21 x i8] c".compoundliteral.103\00", align 1
@___asan_gen_.525 = private unnamed_addr constant [22 x i8] c"da7210_hpf_cutoff_txt\00", align 1
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 297, i32 27 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 298, i32 2 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 298, i32 16 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 298, i32 30 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 298, i32 44 }
@___asan_gen_.540 = private unnamed_addr constant [21 x i8] c"da7210_vf_cutoff_txt\00", align 1
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 308, i32 27 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 309, i32 2 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 309, i32 11 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 309, i32 19 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 309, i32 27 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 309, i32 36 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 309, i32 45 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 309, i32 54 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 309, i32 63 }
@___asan_gen_.567 = private unnamed_addr constant [19 x i8] c"da7210_hp_mode_txt\00", align 1
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 318, i32 20 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 319, i32 2 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 319, i32 13 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 334, i32 4 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 534, i32 2 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 535, i32 2 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 536, i32 2 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 537, i32 2 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 538, i32 2 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 541, i32 2 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 542, i32 2 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 543, i32 2 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 544, i32 2 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 545, i32 2 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 547, i32 2 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 548, i32 2 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 551, i32 2 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 554, i32 2 }
@___asan_gen_.627 = private unnamed_addr constant [28 x i8] c"da7210_dapm_inmixl_controls\00", align 1
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 487, i32 38 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 558, i32 2 }
@___asan_gen_.633 = private unnamed_addr constant [28 x i8] c"da7210_dapm_inmixr_controls\00", align 1
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 496, i32 38 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 563, i32 2 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 564, i32 2 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 568, i32 2 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 569, i32 2 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 572, i32 2 }
@___asan_gen_.657 = private unnamed_addr constant [29 x i8] c"da7210_dapm_outmixl_controls\00", align 1
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 505, i32 38 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 576, i32 2 }
@___asan_gen_.663 = private unnamed_addr constant [29 x i8] c"da7210_dapm_outmixr_controls\00", align 1
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 514, i32 38 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 580, i32 2 }
@___asan_gen_.669 = private unnamed_addr constant [29 x i8] c"da7210_dapm_monomix_controls\00", align 1
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 523, i32 38 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 585, i32 2 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 586, i32 2 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 588, i32 2 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 589, i32 2 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 590, i32 2 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 591, i32 2 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 592, i32 2 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 595, i32 2 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 596, i32 2 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 597, i32 2 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 598, i32 2 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 599, i32 2 }
@___asan_gen_.708 = private unnamed_addr constant [20 x i8] c"da7210_dapm_widgets\00", align 1
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 531, i32 41 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 488, i32 2 }
@___asan_gen_.714 = private unnamed_addr constant [21 x i8] c".compoundliteral.159\00", align 1
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 489, i32 2 }
@___asan_gen_.718 = private unnamed_addr constant [21 x i8] c".compoundliteral.161\00", align 1
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 490, i32 2 }
@___asan_gen_.722 = private unnamed_addr constant [21 x i8] c".compoundliteral.163\00", align 1
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 491, i32 2 }
@___asan_gen_.726 = private unnamed_addr constant [21 x i8] c".compoundliteral.165\00", align 1
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 492, i32 2 }
@___asan_gen_.730 = private unnamed_addr constant [21 x i8] c".compoundliteral.167\00", align 1
@___asan_gen_.731 = private unnamed_addr constant [21 x i8] c".compoundliteral.168\00", align 1
@___asan_gen_.732 = private unnamed_addr constant [21 x i8] c".compoundliteral.169\00", align 1
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 499, i32 2 }
@___asan_gen_.736 = private unnamed_addr constant [21 x i8] c".compoundliteral.171\00", align 1
@___asan_gen_.737 = private unnamed_addr constant [21 x i8] c".compoundliteral.172\00", align 1
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 501, i32 2 }
@___asan_gen_.741 = private unnamed_addr constant [21 x i8] c".compoundliteral.174\00", align 1
@___asan_gen_.742 = private unnamed_addr constant [21 x i8] c".compoundliteral.175\00", align 1
@___asan_gen_.743 = private unnamed_addr constant [21 x i8] c".compoundliteral.176\00", align 1
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 508, i32 2 }
@___asan_gen_.747 = private unnamed_addr constant [21 x i8] c".compoundliteral.178\00", align 1
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 509, i32 2 }
@___asan_gen_.751 = private unnamed_addr constant [21 x i8] c".compoundliteral.180\00", align 1
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 510, i32 2 }
@___asan_gen_.755 = private unnamed_addr constant [21 x i8] c".compoundliteral.182\00", align 1
@___asan_gen_.756 = private unnamed_addr constant [21 x i8] c".compoundliteral.183\00", align 1
@___asan_gen_.757 = private unnamed_addr constant [21 x i8] c".compoundliteral.184\00", align 1
@___asan_gen_.758 = private unnamed_addr constant [21 x i8] c".compoundliteral.185\00", align 1
@___asan_gen_.759 = private unnamed_addr constant [21 x i8] c".compoundliteral.186\00", align 1
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 519, i32 2 }
@___asan_gen_.763 = private unnamed_addr constant [21 x i8] c".compoundliteral.188\00", align 1
@___asan_gen_.764 = private unnamed_addr constant [21 x i8] c".compoundliteral.189\00", align 1
@___asan_gen_.765 = private unnamed_addr constant [21 x i8] c".compoundliteral.190\00", align 1
@___asan_gen_.766 = private unnamed_addr constant [21 x i8] c".compoundliteral.191\00", align 1
@___asan_gen_.767 = private unnamed_addr constant [21 x i8] c".compoundliteral.192\00", align 1
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 1069, i32 2 }
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 1160, i32 2 }
@___asan_gen_.788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 1044, i32 10 }
@___asan_gen_.789 = private unnamed_addr constant [15 x i8] c"da7210_dai_ops\00", align 1
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 1034, i32 37 }
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 961, i32 4 }
@___asan_gen_.806 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 967, i32 3 }
@___asan_gen_.807 = private unnamed_addr constant [15 x i8] c"da7210_pll_div\00", align 1
@___asan_gen_.809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 221, i32 29 }
@___asan_gen_.818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 1029, i32 2 }
@___asan_gen_.819 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.822 = private unnamed_addr constant [25 x i8] c"da7210_regmap_config_spi\00", align 1
@___asan_gen_.824 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 1284, i32 35 }
@___asan_gen_.827 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 1308, i32 19 }
@___asan_gen_.834 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 1311, i32 3 }
@___asan_gen_.837 = private unnamed_addr constant [24 x i8] c"da7210_regmap_spi_patch\00", align 1
@___asan_gen_.839 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 1260, i32 34 }
@___asan_gen_.840 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.841 = private constant [29 x i8] c"../sound/soc/codecs/da7210.c\00", align 1
@___asan_gen_.842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.841, i32 1318, i32 3 }
@llvm.compiler.used = appending global [271 x ptr] [ptr @__UNIQUE_ID_author299, ptr @__UNIQUE_ID_description298, ptr @__UNIQUE_ID_file300, ptr @__UNIQUE_ID_license301, ptr @__exitcall_da7210_exit, ptr @__initcall__kmod_snd_soc_da7210__297_1349_da7210_modinit6, ptr @da7210_exit, ptr @da7210_i2c_probe._entry, ptr @da7210_i2c_probe._entry.13, ptr @da7210_i2c_probe._entry.9, ptr @da7210_i2c_probe._entry_ptr, ptr @da7210_i2c_probe._entry_ptr.12, ptr @da7210_i2c_probe._entry_ptr.15, ptr @da7210_modinit._entry, ptr @da7210_modinit._entry_ptr, ptr @da7210_probe._entry, ptr @da7210_probe._entry.197, ptr @da7210_probe._entry_ptr, ptr @da7210_probe._entry_ptr.198, ptr @da7210_set_dai_pll._entry, ptr @da7210_set_dai_pll._entry_ptr, ptr @da7210_set_dai_sysclk._entry, ptr @da7210_set_dai_sysclk._entry.202, ptr @da7210_set_dai_sysclk._entry_ptr, ptr @da7210_set_dai_sysclk._entry_ptr.204, ptr @da7210_spi_probe._entry, ptr @da7210_spi_probe._entry.210, ptr @da7210_spi_probe._entry_ptr, ptr @da7210_spi_probe._entry_ptr.211, ptr @da7210_i2c_driver, ptr @da7210_spi_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @da7210_i2c_id, ptr @da7210_i2c_probe._key, ptr @da7210_regmap_config_i2c, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @da7210_regmap_i2c_patch, ptr @.str.10, ptr @.str.11, ptr @soc_component_dev_da7210, ptr @da7210_dai, ptr @.str.14, ptr @da7210_reg_defaults, ptr @da7210_snd_controls, ptr @da7210_audio_map, ptr @.str.16, ptr @hp_out_tlv, ptr @.compoundliteral, ptr @.str.17, ptr @dac_gain_tlv, ptr @.compoundliteral.18, ptr @.str.19, ptr @lineout_vol_tlv, ptr @.compoundliteral.20, ptr @.str.21, ptr @mono_vol_tlv, ptr @.compoundliteral.22, ptr @.str.23, ptr @mic_vol_tlv, ptr @.compoundliteral.24, ptr @.str.25, ptr @aux1_vol_tlv, ptr @.compoundliteral.26, ptr @.str.27, ptr @aux2_vol_tlv, ptr @.compoundliteral.28, ptr @.str.29, ptr @inpga_gain_tlv, ptr @.compoundliteral.30, ptr @.str.31, ptr @.compoundliteral.32, ptr @.str.33, ptr @eq_gain_tlv, ptr @.compoundliteral.34, ptr @.str.35, ptr @.compoundliteral.36, ptr @.str.37, ptr @.compoundliteral.38, ptr @.str.39, ptr @.compoundliteral.40, ptr @.str.41, ptr @.compoundliteral.42, ptr @.str.43, ptr @.compoundliteral.44, ptr @.str.45, ptr @adc_eq_master_gain_tlv, ptr @.compoundliteral.46, ptr @.str.47, ptr @.compoundliteral.48, ptr @.str.49, ptr @.compoundliteral.50, ptr @.str.51, ptr @.compoundliteral.52, ptr @.str.53, ptr @.compoundliteral.54, ptr @.str.55, ptr @.compoundliteral.56, ptr @.str.57, ptr @.compoundliteral.58, ptr @.str.59, ptr @da7210_dac_hpf_cutoff, ptr @.str.60, ptr @.compoundliteral.61, ptr @.str.62, ptr @da7210_dac_vf_cutoff, ptr @.str.63, ptr @.compoundliteral.64, ptr @.str.65, ptr @da7210_adc_hpf_cutoff, ptr @.str.66, ptr @.compoundliteral.67, ptr @.str.68, ptr @da7210_adc_vf_cutoff, ptr @.str.69, ptr @.compoundliteral.70, ptr @.str.71, ptr @.compoundliteral.72, ptr @.str.73, ptr @.compoundliteral.74, ptr @.str.75, ptr @.compoundliteral.76, ptr @.str.77, ptr @.compoundliteral.78, ptr @.str.79, ptr @.compoundliteral.80, ptr @.str.81, ptr @.compoundliteral.82, ptr @.str.83, ptr @.compoundliteral.84, ptr @.str.85, ptr @.compoundliteral.86, ptr @.str.87, ptr @da7210_hp_mode_sel, ptr @.str.88, ptr @.compoundliteral.89, ptr @.str.90, ptr @.compoundliteral.91, ptr @.str.92, ptr @.compoundliteral.93, ptr @.str.94, ptr @.compoundliteral.95, ptr @.str.96, ptr @.compoundliteral.97, ptr @.str.98, ptr @.compoundliteral.99, ptr @.str.100, ptr @.compoundliteral.101, ptr @.str.102, ptr @.compoundliteral.103, ptr @da7210_hpf_cutoff_txt, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @da7210_vf_cutoff_txt, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @da7210_hp_mode_txt, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @da7210_dapm_inmixl_controls, ptr @.str.135, ptr @da7210_dapm_inmixr_controls, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @da7210_dapm_outmixl_controls, ptr @.str.143, ptr @da7210_dapm_outmixr_controls, ptr @.str.144, ptr @da7210_dapm_monomix_controls, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @da7210_dapm_widgets, ptr @.str.158, ptr @.compoundliteral.159, ptr @.str.160, ptr @.compoundliteral.161, ptr @.str.162, ptr @.compoundliteral.163, ptr @.str.164, ptr @.compoundliteral.165, ptr @.str.166, ptr @.compoundliteral.167, ptr @.compoundliteral.168, ptr @.compoundliteral.169, ptr @.str.170, ptr @.compoundliteral.171, ptr @.compoundliteral.172, ptr @.str.173, ptr @.compoundliteral.174, ptr @.compoundliteral.175, ptr @.compoundliteral.176, ptr @.str.177, ptr @.compoundliteral.178, ptr @.str.179, ptr @.compoundliteral.180, ptr @.str.181, ptr @.compoundliteral.182, ptr @.compoundliteral.183, ptr @.compoundliteral.184, ptr @.compoundliteral.185, ptr @.compoundliteral.186, ptr @.str.187, ptr @.compoundliteral.188, ptr @.compoundliteral.189, ptr @.compoundliteral.190, ptr @.compoundliteral.191, ptr @.compoundliteral.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.199, ptr @da7210_dai_ops, ptr @.str.200, ptr @.str.201, ptr @.str.203, ptr @da7210_pll_div, ptr @.str.205, ptr @.str.206, ptr @da7210_spi_probe._key, ptr @da7210_regmap_config_spi, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @da7210_regmap_spi_patch], section "llvm.metadata"
@0 = internal global [253 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7210_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7210_spi_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7210_modinit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7210_i2c_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7210_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7210_regmap_config_i2c to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7210_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7210_regmap_i2c_patch to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7210_i2c_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_component_dev_da7210 to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7210_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7210_i2c_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7210_reg_defaults to i32), i32 400, i32 512, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7210_snd_controls to i32), i32 2256, i32 2816, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7210_audio_map to i32), i32 2340, i32 2944, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hp_out_tlv to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac_gain_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.18 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lineout_vol_tlv to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.20 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mono_vol_tlv to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.22 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mic_vol_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.24 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aux1_vol_tlv to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.26 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aux2_vol_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.28 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inpga_gain_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.30 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.32 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eq_gain_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.34 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.36 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.38 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.40 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.42 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.44 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_eq_master_gain_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.46 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.48 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.50 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.52 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.54 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.56 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.58 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7210_dac_hpf_cutoff to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.61 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7210_dac_vf_cutoff to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.64 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7210_adc_hpf_cutoff to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.67 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7210_adc_vf_cutoff to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.70 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.72 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.74 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.76 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.78 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.80 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.82 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.84 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.86 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7210_hp_mode_sel to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.89 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.91 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.93 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.95 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.97 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.99 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.101 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.103 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7210_hpf_cutoff_txt to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7210_vf_cutoff_txt to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7210_hp_mode_txt to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7210_dapm_inmixl_controls to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7210_dapm_inmixr_controls to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7210_dapm_outmixl_controls to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7210_dapm_outmixr_controls to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7210_dapm_monomix_controls to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7210_dapm_widgets to i32), i32 6120, i32 7648, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.159 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.161 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.163 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.165 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.167 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.168 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.169 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.171 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.172 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.174 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.175 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.176 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.178 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.180 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.182 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.183 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.184 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.185 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.186 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.188 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.189 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.190 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.191 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.192 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7210_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7210_probe._entry.197 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7210_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7210_set_dai_sysclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7210_set_dai_sysclk._entry.202 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7210_pll_div to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7210_set_dai_pll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7210_spi_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7210_regmap_config_spi to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7210_spi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7210_regmap_spi_patch to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7210_spi_probe._entry.210 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @da7210_modinit() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @da7210_i2c_driver) #6
  %call1 = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @da7210_spi_driver) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %call1) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @da7210_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @da7210_i2c_driver) #6
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @da7210_spi_driver, i32 0, i32 4)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da7210_i2c_probe(ptr noundef %i2c, ptr nocapture noundef readnone %id) #3 align 64 {
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
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call1 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef nonnull @da7210_regmap_config_i2c, ptr noundef nonnull @da7210_i2c_probe._key, ptr noundef nonnull @.str.4) #6
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call1, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %call1 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5, i32 noundef %2) #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call10 = tail call i32 @regmap_register_patch(ptr noundef %call1, ptr noundef nonnull @da7210_regmap_i2c_patch, i32 noundef 8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp.not = icmp eq i32 %call10, 0
  br i1 %cmp.not, label %if.end8.if.end16_crit_edge, label %do.end14

if.end8.if.end16_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

do.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %call10) #9
  br label %if.end16

if.end16:                                         ; preds = %do.end14, %if.end8.if.end16_crit_edge
  %call18 = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @soc_component_dev_da7210, ptr noundef nonnull @da7210_dai, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %do.end23, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end23:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %call18) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end23, %if.end16.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then4 ], [ -12, %entry.cleanup_crit_edge ], [ %call18, %do.end23 ], [ %call18, %if.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_register_patch(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @da7210_readable_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %reg, -138
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %switch.tableidx)
  %0 = icmp ugt i32 %switch.tableidx, 29
  %switch.cast = trunc i32 %switch.tableidx to i30
  %switch.downshift = lshr i30 536870844, %switch.cast
  %1 = and i30 %switch.downshift, 1
  %2 = sext i30 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %switch.masked = icmp ne i30 %1, 0
  %retval.0 = select i1 %0, i1 true, i1 %switch.masked
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @da7210_volatile_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %reg)
  %cond = icmp eq i32 %reg, 2
  ret i1 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da7210_probe(ptr noundef %component) #3 align 64 {
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
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %1, ptr noundef nonnull @.str.193, ptr noundef nonnull @.str.196) #9
  %mclk_rate = getelementptr inbounds %struct.da7210_priv, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %mclk_rate to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %mclk_rate, align 4
  %master = getelementptr inbounds %struct.da7210_priv, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %master to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %master, align 4
  %call1 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 1, i32 noundef 5) #6
  %call2 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 7, i32 noundef 192) #6
  %call3 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 8, i32 noundef 128) #6
  %call4 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 13, i32 noundef 128) #6
  %call5 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 14, i32 noundef 128) #6
  %call6 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 16, i32 noundef 136) #6
  %call7 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 23, i32 noundef 220) #6
  %call8 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 28, i32 noundef 128) #6
  %call9 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 29, i32 noundef 128) #6
  %call10 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 35, i32 noundef 206) #6
  %call11 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 24, i32 noundef 64) #6
  %call12 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 30, i32 noundef 128) #6
  %call13 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 31, i32 noundef 128) #6
  %call14 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 32, i32 noundef 224) #6
  %call15 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 9, i32 noundef 128) #6
  %call16 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 10, i32 noundef 128) #6
  %call17 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 11, i32 noundef 8) #6
  %call18 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 43, i32 noundef 80) #6
  %call19 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 44, i32 noundef 11) #6
  %call20 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 3, i32 noundef 1) #6
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.193, ptr noundef nonnull @.str.196) #9
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
define internal i32 @da7210_put_alc_sw(ptr noundef %kcontrol, ptr noundef %ucontrol) #3 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 1) #6
  %and = and i32 %call1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.then.if.end10_crit_edge, label %do.body

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @da7210_put_alc_sw.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@da7210_put_alc_sw, %if.then8)) #6
          to label %cleanup [label %if.then8], !srcloc !379

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @da7210_put_alc_sw.__UNIQUE_ID_ddebug296, ptr noundef %5, ptr noundef nonnull @.str.120) #6
  br label %cleanup

if.end10:                                         ; preds = %if.then.if.end10_crit_edge, %entry.if.end10_crit_edge
  %call11 = tail call i32 @snd_soc_put_volsw(ptr noundef %kcontrol, ptr noundef %ucontrol) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then8, %do.body
  %retval.0 = phi i32 [ %call11, %if.end10 ], [ -22, %if.then8 ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da7210_put_noise_sup_sw(ptr noundef %kcontrol, ptr noundef %ucontrol) #3 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end30_crit_edge, label %if.then

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 16) #6
  %and = and i32 %call1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  %call4 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 36) #6
  %and5 = and i32 %call4, 195
  call void @__sanitizer_cov_trace_const_cmp4(i32 195, i32 %and5)
  %cmp.not = icmp eq i32 %and5, 195
  br i1 %cmp.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 12) #6
  %and10 = and i32 %call8, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %and10)
  %cmp11 = icmp ult i32 %and10, 10
  %4 = and i32 %call8, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %4)
  %cmp15 = icmp ult i32 %4, 160
  %or.cond = or i1 %cmp11, %cmp15
  br i1 %or.cond, label %if.end7.cleanup_crit_edge, label %if.end18

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end18:                                         ; preds = %if.end7
  %call19 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 9) #6
  %and20 = and i32 %call19, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 53, i32 %and20)
  %cmp21 = icmp ult i32 %and20, 53
  br i1 %cmp21, label %if.end18.cleanup_crit_edge, label %lor.lhs.false23

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false23:                                  ; preds = %if.end18
  %call24 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 10) #6
  %and25 = and i32 %call24, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 53, i32 %and25)
  %cmp26 = icmp ult i32 %and25, 53
  br i1 %cmp26, label %lor.lhs.false23.cleanup_crit_edge, label %lor.lhs.false23.if.end30_crit_edge

lor.lhs.false23.if.end30_crit_edge:               ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

lor.lhs.false23.cleanup_crit_edge:                ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end30:                                         ; preds = %lor.lhs.false23.if.end30_crit_edge, %entry.if.end30_crit_edge
  %call31 = tail call i32 @snd_soc_put_volsw(ptr noundef %kcontrol, ptr noundef %ucontrol) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %lor.lhs.false23.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call31, %if.end30 ], [ -22, %if.end18.cleanup_crit_edge ], [ -22, %lor.lhs.false23.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da7210_set_dai_sysclk(ptr nocapture noundef readonly %codec_dai, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clk_id)
  %cond = icmp eq i32 %clk_id, 0
  br i1 %cond, label %sw.bb, label %do.end6

sw.bb:                                            ; preds = %entry
  %6 = zext i32 %freq to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %freq, label %do.end [
    i32 12000000, label %sw.bb.sw.bb2_crit_edge
    i32 13000000, label %sw.bb.sw.bb2_crit_edge14
    i32 13500000, label %sw.bb.sw.bb2_crit_edge15
    i32 14400000, label %sw.bb.sw.bb2_crit_edge16
    i32 19200000, label %sw.bb.sw.bb2_crit_edge17
    i32 19680000, label %sw.bb.sw.bb2_crit_edge18
    i32 19800000, label %sw.bb.sw.bb2_crit_edge19
  ]

sw.bb.sw.bb2_crit_edge19:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2

sw.bb.sw.bb2_crit_edge18:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2

sw.bb.sw.bb2_crit_edge17:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2

sw.bb.sw.bb2_crit_edge16:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2

sw.bb.sw.bb2_crit_edge15:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2

sw.bb.sw.bb2_crit_edge14:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2

sw.bb.sw.bb2_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2

sw.bb2:                                           ; preds = %sw.bb.sw.bb2_crit_edge, %sw.bb.sw.bb2_crit_edge14, %sw.bb.sw.bb2_crit_edge15, %sw.bb.sw.bb2_crit_edge16, %sw.bb.sw.bb2_crit_edge17, %sw.bb.sw.bb2_crit_edge18, %sw.bb.sw.bb2_crit_edge19
  %mclk_rate = getelementptr inbounds %struct.da7210_priv, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %mclk_rate to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %freq, ptr %mclk_rate, align 4
  br label %cleanup

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %codec_dai, i32 0, i32 2
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.200, i32 noundef %freq) #9
  br label %cleanup

do.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev7 = getelementptr inbounds %struct.snd_soc_dai, ptr %codec_dai, i32 0, i32 2
  %10 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.203, i32 noundef %clk_id) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end6, %do.end, %sw.bb2
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %sw.bb2 ], [ -22, %do.end6 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da7210_set_dai_pll(ptr nocapture noundef readonly %codec_dai, i32 noundef %pll_id, i32 noundef %source, i32 noundef %fref, i32 noundef %fout) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %master = getelementptr inbounds %struct.da7210_priv, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %master, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  %spec.select = select i1 %tobool.not, i32 2822400, i32 %fout
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %indvars.iv = phi i32 [ 0, %entry ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [21 x %struct.pll_div], ptr @da7210_pll_div, i32 0, i32 %indvars.iv
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %fref)
  %cmp4 = icmp eq i32 %9, %fref
  br i1 %cmp4, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %mode = getelementptr [21 x %struct.pll_div], ptr @da7210_pll_div, i32 0, i32 %indvars.iv, i32 5
  %10 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %mode, align 1
  %conv9 = zext i8 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv9)
  %cmp10 = icmp eq i32 %7, %conv9
  br i1 %cmp10, label %land.lhs.true12, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true12:                                  ; preds = %land.lhs.true
  %fout15 = getelementptr [21 x %struct.pll_div], ptr @da7210_pll_div, i32 0, i32 %indvars.iv, i32 1
  %12 = ptrtoint ptr %fout15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fout15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %13)
  %cmp16 = icmp eq i32 %spec.select, %13
  br i1 %cmp16, label %if.end30, label %land.lhs.true12.for.inc_crit_edge

land.lhs.true12.for.inc_crit_edge:                ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true12.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 21
  br i1 %exitcond.not, label %do.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end30:                                         ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #8
  %div1 = getelementptr [21 x %struct.pll_div], ptr @da7210_pll_div, i32 0, i32 %indvars.iv, i32 2
  %14 = ptrtoint ptr %div1 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %div1, align 4
  %div2 = getelementptr [21 x %struct.pll_div], ptr @da7210_pll_div, i32 0, i32 %indvars.iv, i32 3
  %16 = ptrtoint ptr %div2 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %div2, align 1
  %div3 = getelementptr [21 x %struct.pll_div], ptr @da7210_pll_div, i32 0, i32 %indvars.iv, i32 4
  %18 = ptrtoint ptr %div3 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %div3, align 2
  %phi.cast = zext i8 %15 to i32
  %phi.cast62 = zext i8 %17 to i32
  %phi.cast63 = zext i8 %19 to i32
  %call31 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 3, i32 noundef 1, i32 noundef 0) #6
  %call33 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 41, i32 noundef %phi.cast) #6
  %call35 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 42, i32 noundef %phi.cast62) #6
  %call37 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 43, i32 noundef 15, i32 noundef %phi.cast63) #6
  %call38 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 44, i32 noundef 128, i32 noundef 128) #6
  %call39 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 3, i32 noundef 1, i32 noundef 1) #6
  br label %cleanup

do.end:                                           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %codec_dai, i32 0, i32 2
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.205, i32 noundef %fref) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end30
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end30 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da7210_set_dai_fmt(ptr nocapture noundef readonly %codec_dai, i32 noundef %fmt) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %call2 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 38) #6
  %and = and i32 %call2, 127
  %call3 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 40) #6
  %and4 = and i32 %call3, 252
  %call5 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 44) #6
  %and6 = and i32 %call5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool.not = icmp eq i32 %and6, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call7 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 43) #6
  %and8 = and i32 %call7, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %6 = trunc i32 %fmt to i16
  %trunc = and i16 %6, -4096
  %7 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.212)
  switch i16 %trunc, label %if.end.cleanup_crit_edge [
    i16 4096, label %sw.bb
    i16 16384, label %sw.bb11
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %master = getelementptr inbounds %struct.da7210_priv, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %master to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %master, align 4
  %or = or i32 %and, 128
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %master12 = getelementptr inbounds %struct.da7210_priv, ptr %5, i32 0, i32 2
  %9 = ptrtoint ptr %master12 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %master12, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb11, %sw.bb
  %dai_cfg1.0 = phi i32 [ %and, %sw.bb11 ], [ %or, %sw.bb ]
  %and14 = and i32 %fmt, 15
  %10 = zext i32 %and14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.213)
  switch i32 %and14, label %sw.epilog.cleanup_crit_edge [
    i32 1, label %sw.epilog.sw.epilog22_crit_edge
    i32 3, label %sw.bb17
    i32 2, label %sw.bb19
  ]

sw.epilog.sw.epilog22_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog22

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb17:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %or18 = or i32 %and4, 1
  br label %sw.epilog22

sw.bb19:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %or20 = or i32 %and4, 2
  br label %sw.epilog22

sw.epilog22:                                      ; preds = %sw.bb19, %sw.bb17, %sw.epilog.sw.epilog22_crit_edge
  %dai_cfg3.0 = phi i32 [ %or20, %sw.bb19 ], [ %or18, %sw.bb17 ], [ %and4, %sw.epilog.sw.epilog22_crit_edge ]
  %or23 = or i32 %dai_cfg1.0, 4
  %call24 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 38, i32 noundef %or23) #6
  %call25 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 40, i32 noundef %dai_cfg3.0) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog22, %sw.epilog.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog22 ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da7210_mute(ptr nocapture noundef readonly %dai, i32 noundef %mute, i32 noundef %direction) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %call = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mute)
  %tobool.not = icmp eq i32 %mute, 0
  %conv = and i32 %call, 251
  %or = or i32 %conv, 4
  %conv.sink = select i1 %tobool.not, i32 %conv, i32 %or
  %call5 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 20, i32 noundef %conv.sink) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da7210_hw_params(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #3 align 64 {
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
  %call2 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 37, i32 noundef 118) #6
  %call3 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 40, i32 noundef 136) #6
  %call4 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 38) #6
  %and = and i32 %call4, 252
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.i.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %entry.if.then.i.i.i_crit_edge

entry.if.then.i.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %entry.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %entry.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %7, %entry.if.then.i.i.i_crit_edge ], [ %10, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %8 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #6, !range !380
  %add.i.i.i = or i32 %8, %i.09.lcssa.i.i.i
  br label %params_width.exit

for.inc.i.i.i:                                    ; preds = %entry
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.1.i.i.i = icmp eq i32 %10, 0
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
  %11 = add i32 %call1.i, -16
  %12 = tail call i32 @llvm.fshl.i32(i32 %11, i32 %11, i32 30)
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.214)
  switch i32 %12, label %params_width.exit.cleanup_crit_edge [
    i32 0, label %params_width.exit.sw.epilog_crit_edge
    i32 1, label %sw.bb6
    i32 2, label %sw.bb8
    i32 4, label %sw.bb10
  ]

params_width.exit.sw.epilog_crit_edge:            ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

params_width.exit.cleanup_crit_edge:              ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb6:                                           ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #8
  %or7 = or i32 %and, 1
  br label %sw.epilog

sw.bb8:                                           ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #8
  %or9 = or i32 %and, 2
  br label %sw.epilog

sw.bb10:                                          ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #8
  %or11 = or i32 %and, 3
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb10, %sw.bb8, %sw.bb6, %params_width.exit.sw.epilog_crit_edge
  %dai_cfg1.0 = phi i32 [ %or11, %sw.bb10 ], [ %or9, %sw.bb8 ], [ %or7, %sw.bb6 ], [ %and, %params_width.exit.sw.epilog_crit_edge ]
  %call12 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 38, i32 noundef %dai_cfg1.0) #6
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.215)
  switch i32 %15, label %sw.epilog.cleanup_crit_edge [
    i32 8000, label %sw.epilog.sw.epilog25_crit_edge
    i32 11025, label %sw.bb15
    i32 12000, label %sw.bb16
    i32 16000, label %sw.bb17
    i32 22050, label %sw.bb18
    i32 32000, label %sw.bb19
    i32 44100, label %sw.bb20
    i32 48000, label %sw.bb21
    i32 88200, label %sw.bb22
    i32 96000, label %sw.bb23
  ]

sw.epilog.sw.epilog25_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog25

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb15:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog25

sw.bb16:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog25

sw.bb17:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog25

sw.bb18:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog25

sw.bb19:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog25

sw.bb20:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog25

sw.bb21:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog25

sw.bb22:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog25

sw.bb23:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog25

sw.epilog25:                                      ; preds = %sw.bb23, %sw.bb22, %sw.bb21, %sw.bb20, %sw.bb19, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.epilog.sw.epilog25_crit_edge
  %fs.0 = phi i32 [ 15, %sw.bb23 ], [ 14, %sw.bb22 ], [ 11, %sw.bb21 ], [ 10, %sw.bb20 ], [ 9, %sw.bb19 ], [ 6, %sw.bb18 ], [ 5, %sw.bb17 ], [ 3, %sw.bb16 ], [ 2, %sw.bb15 ], [ 1, %sw.epilog.sw.epilog25_crit_edge ]
  %sysclk.0 = phi i32 [ 3072000, %sw.bb23 ], [ 2822400, %sw.bb22 ], [ 3072000, %sw.bb21 ], [ 2822400, %sw.bb20 ], [ 3072000, %sw.bb19 ], [ 2822400, %sw.bb18 ], [ 3072000, %sw.bb17 ], [ 3072000, %sw.bb16 ], [ 2822400, %sw.bb15 ], [ 3072000, %sw.epilog.sw.epilog25_crit_edge ]
  %call26 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 3, i32 noundef 1, i32 noundef 0) #6
  %call27 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 44, i32 noundef 15, i32 noundef %fs.0) #6
  %mclk_rate = getelementptr inbounds %struct.da7210_priv, ptr %5, i32 0, i32 1
  %17 = ptrtoint ptr %mclk_rate to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mclk_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not = icmp eq i32 %18, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %sysclk.0)
  %cmp.not = icmp eq i32 %18, %sysclk.0
  %or.cond = or i1 %tobool.not, %cmp.not
  br i1 %or.cond, label %if.else, label %if.then

if.then:                                          ; preds = %sw.epilog25
  %call29 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 43, i32 noundef 64, i32 noundef 0) #6
  %master = getelementptr inbounds %struct.da7210_priv, ptr %5, i32 0, i32 2
  %19 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %master, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool30.not = icmp eq i32 %20, 0
  br i1 %tobool30.not, label %if.then31, label %if.then.if.end35_crit_edge

if.then.if.end35_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

if.then31:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call32 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 44, i32 noundef 96, i32 noundef 96) #6
  br label %if.end35

if.else:                                          ; preds = %sw.epilog25
  call void @__sanitizer_cov_trace_pc() #8
  %call33 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 44, i32 noundef 32, i32 noundef 32) #6
  %call34 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 43, i32 noundef 64, i32 noundef 64) #6
  br label %if.end35

if.end35:                                         ; preds = %if.else, %if.then31, %if.then.if.end35_crit_edge
  %call36 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 3, i32 noundef 1, i32 noundef 1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %sw.epilog.cleanup_crit_edge, %params_width.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end35 ], [ -22, %params_width.exit.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da7210_spi_probe(ptr noundef %spi) #3 align 64 {
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
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call1 = tail call ptr @__devm_regmap_init_spi(ptr noundef %spi, ptr noundef nonnull @da7210_regmap_config_spi, ptr noundef nonnull @da7210_spi_probe._key, ptr noundef nonnull @.str.207) #6
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call1, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end8

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %call1 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.208, i32 noundef %2) #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call10 = tail call i32 @regmap_register_patch(ptr noundef %call1, ptr noundef nonnull @da7210_regmap_spi_patch, i32 noundef 12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp.not = icmp eq i32 %call10, 0
  br i1 %cmp.not, label %if.end8.if.end16_crit_edge, label %do.end14

if.end8.if.end16_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

do.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %spi, ptr noundef nonnull @.str.10, i32 noundef %call10) #9
  br label %if.end16

if.end16:                                         ; preds = %do.end14, %if.end8.if.end16_crit_edge
  %call18 = tail call i32 @devm_snd_soc_register_component(ptr noundef %spi, ptr noundef nonnull @soc_component_dev_da7210, ptr noundef nonnull @da7210_dai, i32 noundef 1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then4 ], [ %call18, %if.end16 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_spi(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 253)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 253)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !14, !15, !16, !17, !19, !21, !23, !24, !26, !27, !28, !29, !30, !31, !33, !34, !35, !36, !38, !39, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !211, !212, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !246, !248, !250, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !322, !323, !324, !325, !326, !328, !329, !331, !333, !335, !337, !338, !339, !340, !342, !343, !344, !346, !347, !348, !349, !351, !353, !355, !357, !358, !360, !361, !362, !363, !365, !366, !368}
!llvm.module.flags = !{!370, !371, !372, !373, !374, !375, !376, !377}
!llvm.ident = !{!378}

!0 = !{ptr @__initcall__kmod_snd_soc_da7210__297_1349_da7210_modinit6, !1, !"__initcall__kmod_snd_soc_da7210__297_1349_da7210_modinit6", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/da7210.c", i32 1349, i32 1}
!2 = !{ptr @__exitcall_da7210_exit, !3, !"__exitcall_da7210_exit", i1 false, i1 false}
!3 = !{!"../sound/soc/codecs/da7210.c", i32 1360, i32 1}
!4 = !{ptr @__UNIQUE_ID_description298, !5, !"__UNIQUE_ID_description298", i1 false, i1 false}
!5 = !{!"../sound/soc/codecs/da7210.c", i32 1362, i32 1}
!6 = !{ptr @__UNIQUE_ID_author299, !7, !"__UNIQUE_ID_author299", i1 false, i1 false}
!7 = !{!"../sound/soc/codecs/da7210.c", i32 1363, i32 1}
!8 = !{ptr @__UNIQUE_ID_file300, !9, !"__UNIQUE_ID_file300", i1 false, i1 false}
!9 = !{!"../sound/soc/codecs/da7210.c", i32 1364, i32 1}
!10 = !{ptr @__UNIQUE_ID_license301, !9, !"__UNIQUE_ID_license301", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../sound/soc/codecs/da7210.c", i32 1343, i32 3}
!13 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @da7210_modinit._entry, !12, !"_entry", i1 false, i1 false}
!16 = !{ptr @da7210_modinit._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/soc/codecs/da7210.c", i32 1251, i32 11}
!19 = !{ptr @da7210_i2c_driver, !20, !"da7210_i2c_driver", i1 false, i1 false}
!20 = !{!"../sound/soc/codecs/da7210.c", i32 1249, i32 26}
!21 = !{ptr @da7210_i2c_probe._key, !22, !"_key", i1 false, i1 false}
!22 = !{!"../sound/soc/codecs/da7210.c", i32 1222, i32 19}
!23 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/codecs/da7210.c", i32 1225, i32 3}
!26 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @da7210_i2c_probe._entry, !25, !"_entry", i1 false, i1 false}
!30 = !{ptr @da7210_i2c_probe._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/soc/codecs/da7210.c", i32 1232, i32 3}
!33 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @da7210_i2c_probe._entry.9, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @da7210_i2c_probe._entry_ptr.12, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/soc/codecs/da7210.c", i32 1237, i32 3}
!38 = !{ptr @da7210_i2c_probe._entry.13, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @da7210_i2c_probe._entry_ptr.15, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @da7210_regmap_config_i2c, !41, !"da7210_regmap_config_i2c", i1 false, i1 false}
!41 = !{!"../sound/soc/codecs/da7210.c", i32 1198, i32 35}
!42 = !{ptr @da7210_reg_defaults, !43, !"da7210_reg_defaults", i1 false, i1 false}
!43 = !{!"../sound/soc/codecs/da7210.c", i32 674, i32 33}
!44 = !{ptr @da7210_regmap_i2c_patch, !45, !"da7210_regmap_i2c_patch", i1 false, i1 false}
!45 = !{!"../sound/soc/codecs/da7210.c", i32 1181, i32 34}
!46 = !{ptr @soc_component_dev_da7210, !47, !"soc_component_dev_da7210", i1 false, i1 false}
!47 = !{!"../sound/soc/codecs/da7210.c", i32 1165, i32 46}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/soc/codecs/da7210.c", i32 390, i32 2}
!50 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/codecs/da7210.c", i32 393, i32 2}
!52 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/soc/codecs/da7210.c", i32 396, i32 2}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/codecs/da7210.c", i32 399, i32 2}
!56 = !{ptr @.str.23, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/codecs/da7210.c", i32 402, i32 2}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/soc/codecs/da7210.c", i32 405, i32 2}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/codecs/da7210.c", i32 408, i32 2}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/soc/codecs/da7210.c", i32 410, i32 2}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/codecs/da7210.c", i32 414, i32 2}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/soc/codecs/da7210.c", i32 415, i32 2}
!68 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/soc/codecs/da7210.c", i32 417, i32 2}
!70 = !{ptr @.str.37, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/soc/codecs/da7210.c", i32 419, i32 2}
!72 = !{ptr @.str.39, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/soc/codecs/da7210.c", i32 421, i32 2}
!74 = !{ptr @.str.41, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/soc/codecs/da7210.c", i32 423, i32 2}
!76 = !{ptr @.str.43, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/codecs/da7210.c", i32 427, i32 2}
!78 = !{ptr @.str.45, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/codecs/da7210.c", i32 428, i32 2}
!80 = !{ptr @.str.47, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/soc/codecs/da7210.c", i32 430, i32 2}
!82 = !{ptr @.str.49, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/codecs/da7210.c", i32 432, i32 2}
!84 = !{ptr @.str.51, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/soc/codecs/da7210.c", i32 434, i32 2}
!86 = !{ptr @.str.53, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/soc/codecs/da7210.c", i32 436, i32 2}
!88 = !{ptr @.str.55, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/soc/codecs/da7210.c", i32 438, i32 2}
!90 = !{ptr @.str.57, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/soc/codecs/da7210.c", i32 441, i32 2}
!92 = !{ptr @.str.59, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/soc/codecs/da7210.c", i32 442, i32 2}
!94 = !{ptr @.str.60, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/soc/codecs/da7210.c", i32 443, i32 2}
!96 = !{ptr @.str.62, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/soc/codecs/da7210.c", i32 444, i32 2}
!98 = !{ptr @.str.63, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/soc/codecs/da7210.c", i32 446, i32 2}
!100 = !{ptr @.str.65, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/soc/codecs/da7210.c", i32 447, i32 2}
!102 = !{ptr @.str.66, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/soc/codecs/da7210.c", i32 448, i32 2}
!104 = !{ptr @.str.68, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/soc/codecs/da7210.c", i32 449, i32 2}
!106 = !{ptr @.str.69, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/soc/codecs/da7210.c", i32 452, i32 2}
!108 = !{ptr @.str.71, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/soc/codecs/da7210.c", i32 453, i32 2}
!110 = !{ptr @.str.73, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/soc/codecs/da7210.c", i32 454, i32 2}
!112 = !{ptr @.str.75, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/soc/codecs/da7210.c", i32 455, i32 2}
!114 = !{ptr @.str.77, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/soc/codecs/da7210.c", i32 456, i32 2}
!116 = !{ptr @.str.79, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/soc/codecs/da7210.c", i32 459, i32 2}
!118 = !{ptr @.str.81, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/soc/codecs/da7210.c", i32 460, i32 2}
!120 = !{ptr @.str.83, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/soc/codecs/da7210.c", i32 461, i32 2}
!122 = !{ptr @.str.85, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/soc/codecs/da7210.c", i32 462, i32 2}
!124 = !{ptr @.str.87, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/soc/codecs/da7210.c", i32 464, i32 2}
!126 = !{ptr @.str.88, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/soc/codecs/da7210.c", i32 467, i32 2}
!128 = !{ptr @.str.90, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/soc/codecs/da7210.c", i32 469, i32 2}
!130 = !{ptr @.str.92, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/soc/codecs/da7210.c", i32 470, i32 2}
!132 = !{ptr @.str.94, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../sound/soc/codecs/da7210.c", i32 471, i32 2}
!134 = !{ptr @.str.96, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../sound/soc/codecs/da7210.c", i32 472, i32 2}
!136 = !{ptr @.str.98, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../sound/soc/codecs/da7210.c", i32 473, i32 2}
!138 = !{ptr @.str.100, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/soc/codecs/da7210.c", i32 474, i32 2}
!140 = !{ptr @.str.102, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../sound/soc/codecs/da7210.c", i32 476, i32 2}
!142 = !{ptr @da7210_snd_controls, !143, !"da7210_snd_controls", i1 false, i1 false}
!143 = !{!"../sound/soc/codecs/da7210.c", i32 388, i32 38}
!144 = !{ptr @hp_out_tlv, !145, !"hp_out_tlv", i1 false, i1 false}
!145 = !{!"../sound/soc/codecs/da7210.c", i32 265, i32 14}
!146 = !{ptr @dac_gain_tlv, !147, !"dac_gain_tlv", i1 false, i1 false}
!147 = !{!"../sound/soc/codecs/da7210.c", i32 291, i32 14}
!148 = !{ptr @lineout_vol_tlv, !149, !"lineout_vol_tlv", i1 false, i1 false}
!149 = !{!"../sound/soc/codecs/da7210.c", i32 271, i32 14}
!150 = !{ptr @mono_vol_tlv, !151, !"mono_vol_tlv", i1 false, i1 false}
!151 = !{!"../sound/soc/codecs/da7210.c", i32 277, i32 14}
!152 = !{ptr @mic_vol_tlv, !153, !"mic_vol_tlv", i1 false, i1 false}
!153 = !{!"../sound/soc/codecs/da7210.c", i32 292, i32 14}
!154 = !{ptr @aux1_vol_tlv, !155, !"aux1_vol_tlv", i1 false, i1 false}
!155 = !{!"../sound/soc/codecs/da7210.c", i32 283, i32 14}
!156 = !{ptr @aux2_vol_tlv, !157, !"aux2_vol_tlv", i1 false, i1 false}
!157 = !{!"../sound/soc/codecs/da7210.c", i32 293, i32 14}
!158 = !{ptr @inpga_gain_tlv, !159, !"inpga_gain_tlv", i1 false, i1 false}
!159 = !{!"../sound/soc/codecs/da7210.c", i32 294, i32 14}
!160 = !{ptr @eq_gain_tlv, !161, !"eq_gain_tlv", i1 false, i1 false}
!161 = !{!"../sound/soc/codecs/da7210.c", i32 289, i32 14}
!162 = !{ptr @adc_eq_master_gain_tlv, !163, !"adc_eq_master_gain_tlv", i1 false, i1 false}
!163 = !{!"../sound/soc/codecs/da7210.c", i32 290, i32 14}
!164 = !{ptr @da7210_dac_hpf_cutoff, !165, !"da7210_dac_hpf_cutoff", i1 false, i1 false}
!165 = !{!"../sound/soc/codecs/da7210.c", i32 301, i32 8}
!166 = !{ptr @.str.104, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../sound/soc/codecs/da7210.c", i32 298, i32 2}
!168 = !{ptr @.str.105, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../sound/soc/codecs/da7210.c", i32 298, i32 16}
!170 = !{ptr @.str.106, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../sound/soc/codecs/da7210.c", i32 298, i32 30}
!172 = !{ptr @.str.107, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../sound/soc/codecs/da7210.c", i32 298, i32 44}
!174 = !{ptr @da7210_hpf_cutoff_txt, !175, !"da7210_hpf_cutoff_txt", i1 false, i1 false}
!175 = !{!"../sound/soc/codecs/da7210.c", i32 297, i32 27}
!176 = !{ptr @da7210_dac_vf_cutoff, !177, !"da7210_dac_vf_cutoff", i1 false, i1 false}
!177 = !{!"../sound/soc/codecs/da7210.c", i32 312, i32 8}
!178 = !{ptr @.str.108, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../sound/soc/codecs/da7210.c", i32 309, i32 2}
!180 = !{ptr @.str.109, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../sound/soc/codecs/da7210.c", i32 309, i32 11}
!182 = !{ptr @.str.110, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../sound/soc/codecs/da7210.c", i32 309, i32 19}
!184 = !{ptr @.str.111, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../sound/soc/codecs/da7210.c", i32 309, i32 27}
!186 = !{ptr @.str.112, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../sound/soc/codecs/da7210.c", i32 309, i32 36}
!188 = !{ptr @.str.113, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../sound/soc/codecs/da7210.c", i32 309, i32 45}
!190 = !{ptr @.str.114, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../sound/soc/codecs/da7210.c", i32 309, i32 54}
!192 = !{ptr @.str.115, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../sound/soc/codecs/da7210.c", i32 309, i32 63}
!194 = !{ptr @da7210_vf_cutoff_txt, !195, !"da7210_vf_cutoff_txt", i1 false, i1 false}
!195 = !{!"../sound/soc/codecs/da7210.c", i32 308, i32 27}
!196 = !{ptr @da7210_adc_hpf_cutoff, !197, !"da7210_adc_hpf_cutoff", i1 false, i1 false}
!197 = !{!"../sound/soc/codecs/da7210.c", i32 304, i32 8}
!198 = !{ptr @da7210_adc_vf_cutoff, !199, !"da7210_adc_vf_cutoff", i1 false, i1 false}
!199 = !{!"../sound/soc/codecs/da7210.c", i32 315, i32 8}
!200 = !{ptr @da7210_hp_mode_sel, !201, !"da7210_hp_mode_sel", i1 false, i1 false}
!201 = !{!"../sound/soc/codecs/da7210.c", i32 322, i32 8}
!202 = !{ptr @.str.116, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../sound/soc/codecs/da7210.c", i32 319, i32 2}
!204 = !{ptr @.str.117, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../sound/soc/codecs/da7210.c", i32 319, i32 13}
!206 = !{ptr @da7210_hp_mode_txt, !207, !"da7210_hp_mode_txt", i1 false, i1 false}
!207 = !{!"../sound/soc/codecs/da7210.c", i32 318, i32 20}
!208 = !{ptr @.str.118, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../sound/soc/codecs/da7210.c", i32 334, i32 4}
!210 = !{ptr @.str.119, !209, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @.str.120, !209, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @da7210_put_alc_sw.__UNIQUE_ID_ddebug296, !209, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!213 = !{ptr @.str.121, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../sound/soc/codecs/da7210.c", i32 534, i32 2}
!215 = !{ptr @.str.122, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../sound/soc/codecs/da7210.c", i32 535, i32 2}
!217 = !{ptr @.str.123, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../sound/soc/codecs/da7210.c", i32 536, i32 2}
!219 = !{ptr @.str.124, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../sound/soc/codecs/da7210.c", i32 537, i32 2}
!221 = !{ptr @.str.125, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../sound/soc/codecs/da7210.c", i32 538, i32 2}
!223 = !{ptr @.str.126, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../sound/soc/codecs/da7210.c", i32 541, i32 2}
!225 = !{ptr @.str.127, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../sound/soc/codecs/da7210.c", i32 542, i32 2}
!227 = !{ptr @.str.128, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../sound/soc/codecs/da7210.c", i32 543, i32 2}
!229 = !{ptr @.str.129, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../sound/soc/codecs/da7210.c", i32 544, i32 2}
!231 = !{ptr @.str.130, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../sound/soc/codecs/da7210.c", i32 545, i32 2}
!233 = !{ptr @.str.131, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../sound/soc/codecs/da7210.c", i32 547, i32 2}
!235 = !{ptr @.str.132, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../sound/soc/codecs/da7210.c", i32 548, i32 2}
!237 = !{ptr @.str.133, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../sound/soc/codecs/da7210.c", i32 551, i32 2}
!239 = !{ptr @.str.134, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../sound/soc/codecs/da7210.c", i32 554, i32 2}
!241 = !{ptr @.str.135, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../sound/soc/codecs/da7210.c", i32 558, i32 2}
!243 = !{ptr @.str.136, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../sound/soc/codecs/da7210.c", i32 563, i32 2}
!245 = !{ptr @.str.137, !244, !"<string literal>", i1 false, i1 false}
!246 = !{ptr @.str.138, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../sound/soc/codecs/da7210.c", i32 564, i32 2}
!248 = !{ptr @.str.139, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../sound/soc/codecs/da7210.c", i32 568, i32 2}
!250 = !{ptr @.str.140, !249, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @.str.141, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../sound/soc/codecs/da7210.c", i32 569, i32 2}
!253 = !{ptr @.str.142, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../sound/soc/codecs/da7210.c", i32 572, i32 2}
!255 = !{ptr @.str.143, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../sound/soc/codecs/da7210.c", i32 576, i32 2}
!257 = !{ptr @.str.144, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../sound/soc/codecs/da7210.c", i32 580, i32 2}
!259 = !{ptr @.str.145, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../sound/soc/codecs/da7210.c", i32 585, i32 2}
!261 = !{ptr @.str.146, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../sound/soc/codecs/da7210.c", i32 586, i32 2}
!263 = !{ptr @.str.147, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../sound/soc/codecs/da7210.c", i32 588, i32 2}
!265 = !{ptr @.str.148, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../sound/soc/codecs/da7210.c", i32 589, i32 2}
!267 = !{ptr @.str.149, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../sound/soc/codecs/da7210.c", i32 590, i32 2}
!269 = !{ptr @.str.150, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../sound/soc/codecs/da7210.c", i32 591, i32 2}
!271 = !{ptr @.str.151, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../sound/soc/codecs/da7210.c", i32 592, i32 2}
!273 = !{ptr @.str.152, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../sound/soc/codecs/da7210.c", i32 595, i32 2}
!275 = !{ptr @.str.153, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../sound/soc/codecs/da7210.c", i32 596, i32 2}
!277 = !{ptr @.str.154, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../sound/soc/codecs/da7210.c", i32 597, i32 2}
!279 = !{ptr @.str.155, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../sound/soc/codecs/da7210.c", i32 598, i32 2}
!281 = !{ptr @.str.156, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../sound/soc/codecs/da7210.c", i32 599, i32 2}
!283 = !{ptr @da7210_dapm_widgets, !284, !"da7210_dapm_widgets", i1 false, i1 false}
!284 = !{!"../sound/soc/codecs/da7210.c", i32 531, i32 41}
!285 = !{ptr @.str.158, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../sound/soc/codecs/da7210.c", i32 488, i32 2}
!287 = !{ptr @.str.160, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../sound/soc/codecs/da7210.c", i32 489, i32 2}
!289 = !{ptr @.str.162, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../sound/soc/codecs/da7210.c", i32 490, i32 2}
!291 = !{ptr @.str.164, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../sound/soc/codecs/da7210.c", i32 491, i32 2}
!293 = !{ptr @.str.166, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../sound/soc/codecs/da7210.c", i32 492, i32 2}
!295 = !{ptr @da7210_dapm_inmixl_controls, !296, !"da7210_dapm_inmixl_controls", i1 false, i1 false}
!296 = !{!"../sound/soc/codecs/da7210.c", i32 487, i32 38}
!297 = !{ptr @.str.170, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../sound/soc/codecs/da7210.c", i32 499, i32 2}
!299 = !{ptr @.str.173, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../sound/soc/codecs/da7210.c", i32 501, i32 2}
!301 = !{ptr @da7210_dapm_inmixr_controls, !302, !"da7210_dapm_inmixr_controls", i1 false, i1 false}
!302 = !{!"../sound/soc/codecs/da7210.c", i32 496, i32 38}
!303 = !{ptr @.str.177, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../sound/soc/codecs/da7210.c", i32 508, i32 2}
!305 = !{ptr @.str.179, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../sound/soc/codecs/da7210.c", i32 509, i32 2}
!307 = !{ptr @.str.181, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../sound/soc/codecs/da7210.c", i32 510, i32 2}
!309 = !{ptr @da7210_dapm_outmixl_controls, !310, !"da7210_dapm_outmixl_controls", i1 false, i1 false}
!310 = !{!"../sound/soc/codecs/da7210.c", i32 505, i32 38}
!311 = !{ptr @.str.187, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../sound/soc/codecs/da7210.c", i32 519, i32 2}
!313 = !{ptr @da7210_dapm_outmixr_controls, !314, !"da7210_dapm_outmixr_controls", i1 false, i1 false}
!314 = !{!"../sound/soc/codecs/da7210.c", i32 514, i32 38}
!315 = !{ptr @da7210_dapm_monomix_controls, !316, !"da7210_dapm_monomix_controls", i1 false, i1 false}
!316 = !{!"../sound/soc/codecs/da7210.c", i32 523, i32 38}
!317 = !{ptr @da7210_audio_map, !318, !"da7210_audio_map", i1 false, i1 false}
!318 = !{!"../sound/soc/codecs/da7210.c", i32 603, i32 40}
!319 = !{ptr @.str.193, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../sound/soc/codecs/da7210.c", i32 1069, i32 2}
!321 = !{ptr @.str.194, !320, !"<string literal>", i1 false, i1 false}
!322 = !{ptr @.str.195, !320, !"<string literal>", i1 false, i1 false}
!323 = !{ptr @da7210_probe._entry, !320, !"_entry", i1 false, i1 false}
!324 = !{ptr @da7210_probe._entry_ptr, !320, !"_entry_ptr", i1 false, i1 false}
!325 = !{ptr @.str.196, !320, !"<string literal>", i1 false, i1 false}
!326 = !{ptr @da7210_probe._entry.197, !327, !"_entry", i1 false, i1 false}
!327 = !{!"../sound/soc/codecs/da7210.c", i32 1160, i32 2}
!328 = !{ptr @da7210_probe._entry_ptr.198, !327, !"_entry_ptr", i1 false, i1 false}
!329 = !{ptr @.str.199, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../sound/soc/codecs/da7210.c", i32 1044, i32 10}
!331 = !{ptr @da7210_dai, !332, !"da7210_dai", i1 false, i1 false}
!332 = !{!"../sound/soc/codecs/da7210.c", i32 1043, i32 34}
!333 = !{ptr @da7210_dai_ops, !334, !"da7210_dai_ops", i1 false, i1 false}
!334 = !{!"../sound/soc/codecs/da7210.c", i32 1034, i32 37}
!335 = !{ptr @.str.200, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../sound/soc/codecs/da7210.c", i32 961, i32 4}
!337 = !{ptr @.str.201, !336, !"<string literal>", i1 false, i1 false}
!338 = !{ptr @da7210_set_dai_sysclk._entry, !336, !"_entry", i1 false, i1 false}
!339 = !{ptr @da7210_set_dai_sysclk._entry_ptr, !336, !"_entry_ptr", i1 false, i1 false}
!340 = !{ptr @.str.203, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../sound/soc/codecs/da7210.c", i32 967, i32 3}
!342 = !{ptr @da7210_set_dai_sysclk._entry.202, !341, !"_entry", i1 false, i1 false}
!343 = !{ptr @da7210_set_dai_sysclk._entry_ptr.204, !341, !"_entry_ptr", i1 false, i1 false}
!344 = !{ptr @.str.205, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../sound/soc/codecs/da7210.c", i32 1029, i32 2}
!346 = !{ptr @.str.206, !345, !"<string literal>", i1 false, i1 false}
!347 = !{ptr @da7210_set_dai_pll._entry, !345, !"_entry", i1 false, i1 false}
!348 = !{ptr @da7210_set_dai_pll._entry_ptr, !345, !"_entry_ptr", i1 false, i1 false}
!349 = !{ptr @da7210_pll_div, !350, !"da7210_pll_div", i1 false, i1 false}
!350 = !{!"../sound/soc/codecs/da7210.c", i32 221, i32 29}
!351 = !{ptr @da7210_i2c_id, !352, !"da7210_i2c_id", i1 false, i1 false}
!352 = !{!"../sound/soc/codecs/da7210.c", i32 1242, i32 35}
!353 = !{ptr @da7210_spi_driver, !354, !"da7210_spi_driver", i1 false, i1 false}
!354 = !{!"../sound/soc/codecs/da7210.c", i32 1326, i32 26}
!355 = !{ptr @da7210_spi_probe._key, !356, !"_key", i1 false, i1 false}
!356 = !{!"../sound/soc/codecs/da7210.c", i32 1308, i32 19}
!357 = !{ptr @.str.207, !356, !"<string literal>", i1 false, i1 false}
!358 = !{ptr @.str.208, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../sound/soc/codecs/da7210.c", i32 1311, i32 3}
!360 = !{ptr @.str.209, !359, !"<string literal>", i1 false, i1 false}
!361 = !{ptr @da7210_spi_probe._entry, !359, !"_entry", i1 false, i1 false}
!362 = !{ptr @da7210_spi_probe._entry_ptr, !359, !"_entry_ptr", i1 false, i1 false}
!363 = !{ptr @da7210_spi_probe._entry.210, !364, !"_entry", i1 false, i1 false}
!364 = !{!"../sound/soc/codecs/da7210.c", i32 1318, i32 3}
!365 = !{ptr @da7210_spi_probe._entry_ptr.211, !364, !"_entry_ptr", i1 false, i1 false}
!366 = !{ptr @da7210_regmap_config_spi, !367, !"da7210_regmap_config_spi", i1 false, i1 false}
!367 = !{!"../sound/soc/codecs/da7210.c", i32 1284, i32 35}
!368 = !{ptr @da7210_regmap_spi_patch, !369, !"da7210_regmap_spi_patch", i1 false, i1 false}
!369 = !{!"../sound/soc/codecs/da7210.c", i32 1260, i32 34}
!370 = !{i32 1, !"wchar_size", i32 2}
!371 = !{i32 1, !"min_enum_size", i32 4}
!372 = !{i32 8, !"branch-target-enforcement", i32 0}
!373 = !{i32 8, !"sign-return-address", i32 0}
!374 = !{i32 8, !"sign-return-address-all", i32 0}
!375 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!376 = !{i32 7, !"uwtable", i32 1}
!377 = !{i32 7, !"frame-pointer", i32 2}
!378 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!379 = !{i64 2148796099, i64 2148796104, i64 2148796117, i64 2148796161, i64 2148796195, i64 2148796216}
!380 = !{i32 0, i32 33}
