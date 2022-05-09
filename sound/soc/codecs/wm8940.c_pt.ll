; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/wm8940.c_pt.bc'
source_filename = "../sound/soc/codecs/wm8940.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.wm8940_priv = type { i32, ptr }
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

@__initcall__kmod_snd_soc_wm8940__294_790_wm8940_i2c_driver_init6 = internal global ptr @wm8940_i2c_driver_init, section ".initcall6.init", align 4
@wm8940_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @wm8940_i2c_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @wm8940_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_wm8940_i2c_driver_exit = internal global ptr @wm8940_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description295 = internal constant [46 x i8] c"snd_soc_wm8940.description=ASoC WM8940 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author296 = internal constant [39 x i8] c"snd_soc_wm8940.author=Jonathan Cameron\00", section ".modinfo", align 1
@__UNIQUE_ID_file297 = internal constant [52 x i8] c"snd_soc_wm8940.file=sound/soc/codecs/snd-soc-wm8940\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [27 x i8] c"snd_soc_wm8940.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wm8940\00", [25 x i8] zeroinitializer }, align 32
@wm8940_i2c_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"wm8940\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@wm8940_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@wm8940_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 16, ptr null, ptr @wm8940_readable_register, ptr @wm8940_volatile_register, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 56, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm8940_reg_defaults, i32 39, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"wm8940:764:(&wm8940_regmap)->lock\00", [62 x i8] zeroinitializer }, align 32
@soc_component_dev_wm8940 = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @wm8940_snd_controls, i32 38, ptr @wm8940_dapm_widgets, i32 17, ptr @wm8940_dapm_routes, i32 19, ptr @wm8940_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm8940_set_bias_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 124, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@wm8940_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr @.str.134, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @wm8940_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.135, i64 68719477829, i32 254, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.136, i64 68719477829, i32 254, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 -128, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@wm8940_reg_defaults = internal constant { [39 x %struct.reg_default], [72 x i8] } { [39 x %struct.reg_default] [%struct.reg_default { i32 1, i32 0 }, %struct.reg_default { i32 2, i32 0 }, %struct.reg_default { i32 3, i32 0 }, %struct.reg_default { i32 4, i32 16 }, %struct.reg_default { i32 5, i32 0 }, %struct.reg_default { i32 6, i32 320 }, %struct.reg_default { i32 7, i32 0 }, %struct.reg_default { i32 8, i32 0 }, %struct.reg_default { i32 9, i32 2 }, %struct.reg_default { i32 10, i32 0 }, %struct.reg_default { i32 11, i32 255 }, %struct.reg_default { i32 14, i32 256 }, %struct.reg_default { i32 15, i32 255 }, %struct.reg_default { i32 16, i32 0 }, %struct.reg_default { i32 17, i32 0 }, %struct.reg_default { i32 18, i32 0 }, %struct.reg_default { i32 19, i32 0 }, %struct.reg_default { i32 20, i32 0 }, %struct.reg_default { i32 21, i32 0 }, %struct.reg_default { i32 22, i32 0 }, %struct.reg_default { i32 23, i32 0 }, %struct.reg_default { i32 24, i32 50 }, %struct.reg_default { i32 25, i32 0 }, %struct.reg_default { i32 32, i32 56 }, %struct.reg_default { i32 33, i32 11 }, %struct.reg_default { i32 34, i32 50 }, %struct.reg_default { i32 35, i32 0 }, %struct.reg_default { i32 36, i32 65 }, %struct.reg_default { i32 37, i32 12 }, %struct.reg_default { i32 38, i32 147 }, %struct.reg_default { i32 39, i32 233 }, %struct.reg_default { i32 42, i32 48 }, %struct.reg_default { i32 44, i32 2 }, %struct.reg_default { i32 45, i32 80 }, %struct.reg_default { i32 47, i32 2 }, %struct.reg_default { i32 49, i32 2 }, %struct.reg_default { i32 50, i32 0 }, %struct.reg_default { i32 54, i32 121 }, %struct.reg_default { i32 56, i32 0 }], [72 x i8] zeroinitializer }, align 32
@wm8940_snd_controls = internal constant { [38 x %struct.snd_kcontrol_new], [448 x i8] } { [38 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.2, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.3, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @wm8940_dac_companding_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.4, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @wm8940_adc_companding_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.5, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @wm8940_alc_mode_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.6, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.7 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.8, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @wm8940_alc_max_tlv }, i32 ptrtoint (ptr @.compoundliteral.9 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.10, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @wm8940_alc_min_tlv }, i32 ptrtoint (ptr @.compoundliteral.11 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.12, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @wm8940_alc_tar_tlv }, i32 ptrtoint (ptr @.compoundliteral.13 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.14, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.15 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.16, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.17 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.18, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.19 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.20, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.21 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.22, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.23 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.24, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.25 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.26, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.27 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.28, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.29 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.30, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.31 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.32, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @wm8940_lim_thresh_tlv }, i32 ptrtoint (ptr @.compoundliteral.33 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.34, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @wm8940_lim_boost_tlv }, i32 ptrtoint (ptr @.compoundliteral.35 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.36, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.37 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.38, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @wm8940_pga_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.39 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.40, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @wm8940_adc_tlv }, i32 ptrtoint (ptr @.compoundliteral.41 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.42, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @wm8940_adc_tlv }, i32 ptrtoint (ptr @.compoundliteral.43 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.44, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @wm8940_mic_bias_level_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.45, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @wm8940_capture_boost_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.46 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.47, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @wm8940_spk_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.48 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.49, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.50 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.51, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @wm8940_att_tlv }, i32 ptrtoint (ptr @.compoundliteral.52 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.53, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.54 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.55, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.56 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.57, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @wm8940_att_tlv }, i32 ptrtoint (ptr @.compoundliteral.58 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.59, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.60 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.61, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @wm8940_filter_mode_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.62, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.63 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.64, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.65 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.66, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.67 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.68, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.69 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.70, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.71 to i32) }], [448 x i8] zeroinitializer }, align 32
@wm8940_dapm_routes = internal constant { [19 x %struct.snd_soc_dapm_route], [228 x i8] } { [19 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.83, ptr @.str.106, ptr @.str.84, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.83, ptr @.str.104, ptr @.str.92, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.83, ptr @.str.102, ptr @.str.96, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.82, ptr @.str.106, ptr @.str.84, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.82, ptr @.str.104, ptr @.str.92, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.82, ptr @.str.102, ptr @.str.96, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.88, ptr null, ptr @.str.83, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.89, ptr null, ptr @.str.88, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.86, ptr null, ptr @.str.82, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.87, ptr null, ptr @.str.82, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.91, ptr null, ptr @.str.86, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.90, ptr null, ptr @.str.87, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.95, ptr @.str.115, ptr @.str.98, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.95, ptr @.str.113, ptr @.str.99, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.95, ptr @.str.111, ptr @.str.100, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.96, ptr @.str.117, ptr @.str.95, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.96, ptr @.str.121, ptr @.str.99, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.96, ptr @.str.119, ptr @.str.92, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.93, ptr null, ptr @.str.96, ptr null, %struct.snd_soc_dobj zeroinitializer }], [228 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Digital Loopback Switch\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 5, i32 5, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DAC Companding\00", [17 x i8] zeroinitializer }, align 32
@wm8940_dac_companding_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 5, i8 3, i8 3, i32 4, i32 3, ptr @wm8940_companding, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ADC Companding\00", [17 x i8] zeroinitializer }, align 32
@wm8940_adc_companding_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 5, i8 1, i8 1, i32 4, i32 3, ptr @wm8940_companding, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ALC Mode\00", [23 x i8] zeroinitializer }, align 32
@wm8940_alc_mode_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 34, i8 8, i8 8, i32 2, i32 1, ptr @wm8940_alc_mode_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ALC Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.7 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 32, i32 32, i32 8, i32 8, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ALC Capture Max Gain\00", [43 x i8] zeroinitializer }, align 32
@wm8940_alc_max_tlv = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 675, i32 600], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.9 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 32, i32 32, i32 3, i32 3, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ALC Capture Min Gain\00", [43 x i8] zeroinitializer }, align 32
@wm8940_alc_min_tlv = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -1200, i32 600], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.11 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 32, i32 32, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ALC Capture Target\00", [45 x i8] zeroinitializer }, align 32
@wm8940_alc_tar_tlv = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -2250, i32 50], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.13 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 14, i32 14, i32 33, i32 33, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ALC Capture Hold\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.15 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 10, i32 10, i32 33, i32 33, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ALC Capture Decay\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.17 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 10, i32 10, i32 34, i32 34, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ALC Capture Attach\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.19 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 10, i32 10, i32 34, i32 34, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ALC ZC Switch\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.21 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 42, i32 42, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ALC Capture Noise Gate Switch\00", [34 x i8] zeroinitializer }, align 32
@.compoundliteral.23 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 35, i32 35, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ALC Capture Noise Gate Threshold\00", [63 x i8] zeroinitializer }, align 32
@.compoundliteral.25 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 35, i32 35, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DAC Playback Limiter Switch\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.27 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 24, i32 24, i32 8, i32 8, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DAC Playback Limiter Attack\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.29 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 9, i32 9, i32 24, i32 24, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DAC Playback Limiter Decay\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.31 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 11, i32 11, i32 24, i32 24, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"DAC Playback Limiter Threshold\00", [33 x i8] zeroinitializer }, align 32
@wm8940_lim_thresh_tlv = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -600, i32 100], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.33 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 9, i32 9, i32 25, i32 25, i32 4, i32 4, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DAC Playback Limiter Boost\00", [37 x i8] zeroinitializer }, align 32
@wm8940_lim_boost_tlv = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 0, i32 100], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.35 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 12, i32 12, i32 25, i32 25, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Capture PGA ZC Switch\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.37 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 45, i32 45, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Capture PGA Volume\00", [45 x i8] zeroinitializer }, align 32
@wm8940_pga_vol_tlv = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -1200, i32 75], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.39 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 45, i32 45, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Digital Playback Volume\00", [40 x i8] zeroinitializer }, align 32
@wm8940_adc_tlv = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -12750, i32 65586], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.41 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 11, i32 11, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Digital Capture Volume\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.43 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 15, i32 15, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Mic Bias Level\00", [17 x i8] zeroinitializer }, align 32
@wm8940_mic_bias_level_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 44, i8 8, i8 8, i32 2, i32 1, ptr @wm8940_mic_bias_level_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Capture Boost Volue\00", [44 x i8] zeroinitializer }, align 32
@wm8940_capture_boost_vol_tlv = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 0, i32 2000], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.46 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 47, i32 47, i32 8, i32 8, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Speaker Playback Volume\00", [40 x i8] zeroinitializer }, align 32
@wm8940_spk_vol_tlv = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -5700, i32 65636], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.48 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 54, i32 54, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Speaker Playback Switch\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.50 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 54, i32 54, i32 6, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Speaker Mixer Line Bypass Volume\00", [63 x i8] zeroinitializer }, align 32
@wm8940_att_tlv = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -1000, i32 1000], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.52 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 54, i32 54, i32 8, i32 8, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Speaker Playback ZC Switch\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.54 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 54, i32 54, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Mono Out Switch\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.56 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 56, i32 56, i32 6, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Mono Mixer Line Bypass Volume\00", [34 x i8] zeroinitializer }, align 32
@.compoundliteral.58 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 56, i32 56, i32 7, i32 7, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"High Pass Filter Switch\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.60 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 14, i32 14, i32 8, i32 8, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"High Pass Filter Mode\00", [42 x i8] zeroinitializer }, align 32
@wm8940_filter_mode_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 14, i8 7, i8 7, i32 2, i32 1, ptr @wm8940_filter_mode_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"High Pass Filter Cut Off\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.63 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 14, i32 14, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ADC Inversion Switch\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.65 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 14, i32 14, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DAC Inversion Switch\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.67 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 10, i32 10, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DAC Auto Mute Switch\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.69 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 10, i32 10, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ZC Timeout Clock Switch\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.71 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 7, i32 7, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@wm8940_companding = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75], [16 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Off\00", [28 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"NC\00", [29 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"u-law\00", [26 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"A-law\00", [26 x i8] zeroinitializer }, align 32
@wm8940_alc_mode_text = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.76, ptr @.str.77], [24 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ALC\00", [28 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Limiter\00", [24 x i8] zeroinitializer }, align 32
@wm8940_mic_bias_level_text = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.78, ptr @.str.79], [24 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0.9\00", [28 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0.65\00", [27 x i8] zeroinitializer }, align 32
@wm8940_filter_mode_text = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.80, ptr @.str.81], [24 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Audio\00", [26 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Application\00", [20 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Speaker Mixer\00", [18 x i8] zeroinitializer }, align 32
@wm8940_speaker_mixer_controls = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.102, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.103 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.104, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.105 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.106, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.107 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Mono Mixer\00", [21 x i8] zeroinitializer }, align 32
@wm8940_mono_mixer_controls = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.102, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.108 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.104, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.109 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.106, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.110 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DAC\00", [28 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"HiFi Playback\00", [18 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SpkN Out\00", [23 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SpkP Out\00", [23 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Mono Out\00", [23 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MONOOUT\00", [24 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SPKOUTP\00", [24 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SPKOUTN\00", [24 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Aux Input\00", [22 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ADC\00", [28 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HiFi Capture\00", [19 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Mic PGA\00", [24 x i8] zeroinitializer }, align 32
@wm8940_micpga_controls = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.111, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.112 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.113, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.114 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.115, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.116 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Boost Mixer\00", [20 x i8] zeroinitializer }, align 32
@wm8940_input_boost_controls = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.117, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.118 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.119, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 { ptr @wm8940_boost_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.120 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.121, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 { ptr @wm8940_boost_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.122 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Mic Bias\00", [23 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MICN\00", [27 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MICP\00", [27 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"AUX\00", [28 x i8] zeroinitializer }, align 32
@wm8940_dapm_widgets = internal constant { [17 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [748 x i8] } { [17 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.82, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 3, ptr @wm8940_speaker_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.83, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 3, ptr @wm8940_mono_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.84, ptr @.str.85, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.86, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.87, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.88, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.89, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.90, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.91, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.92, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 1, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.93, ptr @.str.94, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.95, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 3, ptr @wm8940_micpga_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.96, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 3, ptr @wm8940_input_boost_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 10, ptr @.str.97, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 1, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.98, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.99, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.100, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [748 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Line Bypass Switch\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.103 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 50, i32 50, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Aux Playback Switch\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.105 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 50, i32 50, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"PCM Playback Switch\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.107 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 50, i32 50, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.108 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 56, i32 56, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.109 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 56, i32 56, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.110 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 56, i32 56, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"AUX Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.112 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 44, i32 44, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MICP Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.114 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 44, i32 44, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MICN Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.116 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 44, i32 44, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Mic PGA Switch\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.118 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 45, i32 45, i32 6, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Aux Volume\00", [21 x i8] zeroinitializer }, align 32
@wm8940_boost_vol_tlv = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -1500, i32 65836], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.120 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 47, i32 47, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Mic Volume\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.122 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 47, i32 47, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@wm8940_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.124, ptr @.str.125, i32 702, ptr @.str.126, ptr @.str.127 }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to issue reset\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wm8940_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sound/soc/codecs/wm8940.c\00", [38 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wm8940_probe._entry_ptr = internal global ptr @wm8940_probe._entry, section ".printk_index", align 4
@wm8940_probe._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.124, ptr @.str.125, i32 713, ptr @.str.130, ptr @.str.127 }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"No platform data supplied\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@wm8940_probe._entry_ptr.131 = internal global ptr @wm8940_probe._entry.128, section ".printk_index", align 4
@wm8940_set_bias_level._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.133, ptr @.str.125, i32 495, ptr @.str.126, ptr @.str.127 }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to sync cache: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wm8940_set_bias_level\00", [42 x i8] zeroinitializer }, align 32
@wm8940_set_bias_level._entry_ptr = internal global ptr @wm8940_set_bias_level._entry, section ".printk_index", align 4
@.str.134 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wm8940-hifi\00", [20 x i8] zeroinitializer }, align 32
@wm8940_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @wm8940_set_dai_sysclk, ptr @wm8940_set_dai_pll, ptr @wm8940_set_dai_clkdiv, ptr null, ptr @wm8940_set_dai_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm8940_mute, ptr null, ptr null, ptr @wm8940_i2s_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 -128 }, [32 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Capture\00", [24 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Playback\00", [23 x i8] zeroinitializer }, align 32
@pll_div.0 = internal global { i8, [31 x i8] } zeroinitializer, align 32
@pll_div.1 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@pll_factors._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.138, ptr @.str.125, i32 552, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014WM8940 N value %d outwith recommended range!d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pll_factors\00", [20 x i8] zeroinitializer }, align 32
@pll_factors._entry_ptr = internal global ptr @pll_factors._entry, section ".printk_index", align 4
@switch.table.wm8940_set_dai_clkdiv = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 6, i32 6, i32 8], [20 x i8] zeroinitializer }, align 32
@switch.table.wm8940_set_dai_clkdiv.139 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 65507, i32 65311, i32 65487], [20 x i8] zeroinitializer }, align 32
@switch.table.wm8940_set_dai_clkdiv.140 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 2, i32 5, i32 4], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [42 x i64] [i64 40, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 25, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 42, i64 44, i64 45, i64 47, i64 49, i64 50, i64 54, i64 56]
@__sancov_gen_cov_switch_values.141 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.142 = internal global [7 x i64] [i64 5, i64 32, i64 11289600, i64 12000000, i64 12288000, i64 16934400, i64 18432000]
@__sancov_gen_cov_switch_values.143 = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.144 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.145 = internal global [5 x i64] [i64 3, i64 32, i64 512, i64 768, i64 1024]
@__sancov_gen_cov_switch_values.146 = internal global [7 x i64] [i64 5, i64 32, i64 8000, i64 11025, i64 16000, i64 22050, i64 32000]
@__sancov_gen_cov_switch_values.147 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 3, i64 4, i64 6]
@___asan_gen_.148 = private unnamed_addr constant [18 x i8] c"wm8940_i2c_driver\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 782, i32 26 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 784, i32 11 }
@___asan_gen_.154 = private unnamed_addr constant [14 x i8] c"wm8940_i2c_id\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 776, i32 35 }
@___asan_gen_.157 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.160 = private unnamed_addr constant [14 x i8] c"wm8940_regmap\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 740, i32 35 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 764, i32 19 }
@___asan_gen_.166 = private unnamed_addr constant [25 x i8] c"soc_component_dev_wm8940\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 724, i32 46 }
@___asan_gen_.169 = private unnamed_addr constant [11 x i8] c"wm8940_dai\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 674, i32 34 }
@___asan_gen_.172 = private unnamed_addr constant [20 x i8] c"wm8940_reg_defaults\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 103, i32 33 }
@___asan_gen_.175 = private unnamed_addr constant [20 x i8] c"wm8940_snd_controls\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 182, i32 38 }
@___asan_gen_.178 = private unnamed_addr constant [19 x i8] c"wm8940_dapm_routes\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 302, i32 40 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 183, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 185, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant [27 x i8] c"wm8940_dac_companding_enum\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 156, i32 8 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 186, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant [27 x i8] c"wm8940_adc_companding_enum\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 154, i32 8 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 188, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant [21 x i8] c"wm8940_alc_mode_enum\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 160, i32 8 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 189, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant [19 x i8] c".compoundliteral.7\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 190, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant [19 x i8] c"wm8940_alc_max_tlv\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 175, i32 8 }
@___asan_gen_.213 = private unnamed_addr constant [19 x i8] c".compoundliteral.9\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 192, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant [19 x i8] c"wm8940_alc_min_tlv\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 174, i32 8 }
@___asan_gen_.220 = private unnamed_addr constant [20 x i8] c".compoundliteral.11\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 194, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant [19 x i8] c"wm8940_alc_tar_tlv\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 176, i32 8 }
@___asan_gen_.227 = private unnamed_addr constant [20 x i8] c".compoundliteral.13\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 196, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant [20 x i8] c".compoundliteral.15\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 197, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant [20 x i8] c".compoundliteral.17\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 198, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant [20 x i8] c".compoundliteral.19\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 199, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant [20 x i8] c".compoundliteral.21\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 200, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant [20 x i8] c".compoundliteral.23\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 202, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant [20 x i8] c".compoundliteral.25\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 205, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant [20 x i8] c".compoundliteral.27\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 206, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant [20 x i8] c".compoundliteral.29\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 207, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant [20 x i8] c".compoundliteral.31\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 208, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant [22 x i8] c"wm8940_lim_thresh_tlv\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 178, i32 8 }
@___asan_gen_.270 = private unnamed_addr constant [20 x i8] c".compoundliteral.33\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 210, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant [21 x i8] c"wm8940_lim_boost_tlv\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 177, i32 8 }
@___asan_gen_.277 = private unnamed_addr constant [20 x i8] c".compoundliteral.35\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 213, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant [20 x i8] c".compoundliteral.37\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 214, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant [19 x i8] c"wm8940_pga_vol_tlv\00", align 1
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 173, i32 8 }
@___asan_gen_.288 = private unnamed_addr constant [20 x i8] c".compoundliteral.39\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 216, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant [15 x i8] c"wm8940_adc_tlv\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 179, i32 8 }
@___asan_gen_.295 = private unnamed_addr constant [20 x i8] c".compoundliteral.41\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 218, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant [20 x i8] c".compoundliteral.43\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 220, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant [27 x i8] c"wm8940_mic_bias_level_enum\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 164, i32 8 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 221, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant [29 x i8] c"wm8940_capture_boost_vol_tlv\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 180, i32 8 }
@___asan_gen_.312 = private unnamed_addr constant [20 x i8] c".compoundliteral.46\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 223, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant [19 x i8] c"wm8940_spk_vol_tlv\00", align 1
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 171, i32 8 }
@___asan_gen_.319 = private unnamed_addr constant [20 x i8] c".compoundliteral.48\00", align 1
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 225, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant [20 x i8] c".compoundliteral.50\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 227, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant [15 x i8] c"wm8940_att_tlv\00", align 1
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 172, i32 8 }
@___asan_gen_.330 = private unnamed_addr constant [20 x i8] c".compoundliteral.52\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 229, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant [20 x i8] c".compoundliteral.54\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 231, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant [20 x i8] c".compoundliteral.56\00", align 1
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 232, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant [20 x i8] c".compoundliteral.58\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 235, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant [20 x i8] c".compoundliteral.60\00", align 1
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 236, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant [24 x i8] c"wm8940_filter_mode_enum\00", align 1
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 168, i32 8 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 237, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant [20 x i8] c".compoundliteral.63\00", align 1
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 238, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant [20 x i8] c".compoundliteral.65\00", align 1
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 239, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant [20 x i8] c".compoundliteral.67\00", align 1
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 240, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant [20 x i8] c".compoundliteral.69\00", align 1
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 241, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant [20 x i8] c".compoundliteral.71\00", align 1
@___asan_gen_.373 = private unnamed_addr constant [18 x i8] c"wm8940_companding\00", align 1
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 153, i32 20 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 153, i32 44 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 153, i32 51 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 153, i32 57 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 153, i32 66 }
@___asan_gen_.388 = private unnamed_addr constant [21 x i8] c"wm8940_alc_mode_text\00", align 1
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 159, i32 20 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 159, i32 46 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 159, i32 53 }
@___asan_gen_.397 = private unnamed_addr constant [27 x i8] c"wm8940_mic_bias_level_text\00", align 1
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 163, i32 20 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 163, i32 52 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 163, i32 59 }
@___asan_gen_.406 = private unnamed_addr constant [24 x i8] c"wm8940_filter_mode_text\00", align 1
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 167, i32 20 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 167, i32 49 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 167, i32 58 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 272, i32 2 }
@___asan_gen_.418 = private unnamed_addr constant [30 x i8] c"wm8940_speaker_mixer_controls\00", align 1
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 244, i32 38 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 275, i32 2 }
@___asan_gen_.424 = private unnamed_addr constant [27 x i8] c"wm8940_mono_mixer_controls\00", align 1
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 250, i32 38 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 278, i32 2 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 280, i32 2 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 281, i32 2 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 282, i32 2 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 283, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 284, i32 2 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 285, i32 2 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 287, i32 2 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 288, i32 2 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 289, i32 2 }
@___asan_gen_.463 = private unnamed_addr constant [23 x i8] c"wm8940_micpga_controls\00", align 1
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 265, i32 38 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 292, i32 2 }
@___asan_gen_.469 = private unnamed_addr constant [28 x i8] c"wm8940_input_boost_controls\00", align 1
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 257, i32 38 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 295, i32 2 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 297, i32 2 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 298, i32 2 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 299, i32 2 }
@___asan_gen_.484 = private unnamed_addr constant [20 x i8] c"wm8940_dapm_widgets\00", align 1
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 271, i32 41 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 245, i32 2 }
@___asan_gen_.490 = private unnamed_addr constant [21 x i8] c".compoundliteral.103\00", align 1
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 246, i32 2 }
@___asan_gen_.494 = private unnamed_addr constant [21 x i8] c".compoundliteral.105\00", align 1
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 247, i32 2 }
@___asan_gen_.498 = private unnamed_addr constant [21 x i8] c".compoundliteral.107\00", align 1
@___asan_gen_.499 = private unnamed_addr constant [21 x i8] c".compoundliteral.108\00", align 1
@___asan_gen_.500 = private unnamed_addr constant [21 x i8] c".compoundliteral.109\00", align 1
@___asan_gen_.501 = private unnamed_addr constant [21 x i8] c".compoundliteral.110\00", align 1
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 266, i32 2 }
@___asan_gen_.505 = private unnamed_addr constant [21 x i8] c".compoundliteral.112\00", align 1
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 267, i32 2 }
@___asan_gen_.509 = private unnamed_addr constant [21 x i8] c".compoundliteral.114\00", align 1
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 268, i32 2 }
@___asan_gen_.513 = private unnamed_addr constant [21 x i8] c".compoundliteral.116\00", align 1
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 258, i32 2 }
@___asan_gen_.517 = private unnamed_addr constant [21 x i8] c".compoundliteral.118\00", align 1
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 259, i32 2 }
@___asan_gen_.521 = private unnamed_addr constant [21 x i8] c"wm8940_boost_vol_tlv\00", align 1
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 256, i32 8 }
@___asan_gen_.524 = private unnamed_addr constant [21 x i8] c".compoundliteral.120\00", align 1
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 261, i32 2 }
@___asan_gen_.528 = private unnamed_addr constant [21 x i8] c".compoundliteral.122\00", align 1
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 702, i32 3 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 713, i32 3 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 495, i32 5 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 675, i32 10 }
@___asan_gen_.568 = private unnamed_addr constant [15 x i8] c"wm8940_dai_ops\00", align 1
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 664, i32 37 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 684, i32 18 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 677, i32 18 }
@___asan_gen_.577 = private unnamed_addr constant [10 x i8] c"pll_div.0\00", align 1
@___asan_gen_.578 = private unnamed_addr constant [10 x i8] c"pll_div.1\00", align 1
@___asan_gen_.579 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.585 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.586 = private constant [29 x i8] c"../sound/soc/codecs/wm8940.c\00", align 1
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.586, i32 550, i32 3 }
@___asan_gen_.588 = private unnamed_addr constant [35 x i8] c"switch.table.wm8940_set_dai_clkdiv\00", align 1
@___asan_gen_.589 = private unnamed_addr constant [39 x i8] c"switch.table.wm8940_set_dai_clkdiv.139\00", align 1
@___asan_gen_.590 = private unnamed_addr constant [39 x i8] c"switch.table.wm8940_set_dai_clkdiv.140\00", align 1
@llvm.compiler.used = appending global [192 x ptr] [ptr @__UNIQUE_ID_author296, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_license298, ptr @__exitcall_wm8940_i2c_driver_exit, ptr @__initcall__kmod_snd_soc_wm8940__294_790_wm8940_i2c_driver_init6, ptr @pll_factors._entry, ptr @pll_factors._entry_ptr, ptr @wm8940_i2c_driver_exit, ptr @wm8940_probe._entry, ptr @wm8940_probe._entry.128, ptr @wm8940_probe._entry_ptr, ptr @wm8940_probe._entry_ptr.131, ptr @wm8940_set_bias_level._entry, ptr @wm8940_set_bias_level._entry_ptr, ptr @wm8940_i2c_driver, ptr @.str, ptr @wm8940_i2c_id, ptr @wm8940_i2c_probe._key, ptr @wm8940_regmap, ptr @.str.1, ptr @soc_component_dev_wm8940, ptr @wm8940_dai, ptr @wm8940_reg_defaults, ptr @wm8940_snd_controls, ptr @wm8940_dapm_routes, ptr @.str.2, ptr @.compoundliteral, ptr @.str.3, ptr @wm8940_dac_companding_enum, ptr @.str.4, ptr @wm8940_adc_companding_enum, ptr @.str.5, ptr @wm8940_alc_mode_enum, ptr @.str.6, ptr @.compoundliteral.7, ptr @.str.8, ptr @wm8940_alc_max_tlv, ptr @.compoundliteral.9, ptr @.str.10, ptr @wm8940_alc_min_tlv, ptr @.compoundliteral.11, ptr @.str.12, ptr @wm8940_alc_tar_tlv, ptr @.compoundliteral.13, ptr @.str.14, ptr @.compoundliteral.15, ptr @.str.16, ptr @.compoundliteral.17, ptr @.str.18, ptr @.compoundliteral.19, ptr @.str.20, ptr @.compoundliteral.21, ptr @.str.22, ptr @.compoundliteral.23, ptr @.str.24, ptr @.compoundliteral.25, ptr @.str.26, ptr @.compoundliteral.27, ptr @.str.28, ptr @.compoundliteral.29, ptr @.str.30, ptr @.compoundliteral.31, ptr @.str.32, ptr @wm8940_lim_thresh_tlv, ptr @.compoundliteral.33, ptr @.str.34, ptr @wm8940_lim_boost_tlv, ptr @.compoundliteral.35, ptr @.str.36, ptr @.compoundliteral.37, ptr @.str.38, ptr @wm8940_pga_vol_tlv, ptr @.compoundliteral.39, ptr @.str.40, ptr @wm8940_adc_tlv, ptr @.compoundliteral.41, ptr @.str.42, ptr @.compoundliteral.43, ptr @.str.44, ptr @wm8940_mic_bias_level_enum, ptr @.str.45, ptr @wm8940_capture_boost_vol_tlv, ptr @.compoundliteral.46, ptr @.str.47, ptr @wm8940_spk_vol_tlv, ptr @.compoundliteral.48, ptr @.str.49, ptr @.compoundliteral.50, ptr @.str.51, ptr @wm8940_att_tlv, ptr @.compoundliteral.52, ptr @.str.53, ptr @.compoundliteral.54, ptr @.str.55, ptr @.compoundliteral.56, ptr @.str.57, ptr @.compoundliteral.58, ptr @.str.59, ptr @.compoundliteral.60, ptr @.str.61, ptr @wm8940_filter_mode_enum, ptr @.str.62, ptr @.compoundliteral.63, ptr @.str.64, ptr @.compoundliteral.65, ptr @.str.66, ptr @.compoundliteral.67, ptr @.str.68, ptr @.compoundliteral.69, ptr @.str.70, ptr @.compoundliteral.71, ptr @wm8940_companding, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @wm8940_alc_mode_text, ptr @.str.76, ptr @.str.77, ptr @wm8940_mic_bias_level_text, ptr @.str.78, ptr @.str.79, ptr @wm8940_filter_mode_text, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @wm8940_speaker_mixer_controls, ptr @.str.83, ptr @wm8940_mono_mixer_controls, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @wm8940_micpga_controls, ptr @.str.96, ptr @wm8940_input_boost_controls, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @wm8940_dapm_widgets, ptr @.str.102, ptr @.compoundliteral.103, ptr @.str.104, ptr @.compoundliteral.105, ptr @.str.106, ptr @.compoundliteral.107, ptr @.compoundliteral.108, ptr @.compoundliteral.109, ptr @.compoundliteral.110, ptr @.str.111, ptr @.compoundliteral.112, ptr @.str.113, ptr @.compoundliteral.114, ptr @.str.115, ptr @.compoundliteral.116, ptr @.str.117, ptr @.compoundliteral.118, ptr @.str.119, ptr @wm8940_boost_vol_tlv, ptr @.compoundliteral.120, ptr @.str.121, ptr @.compoundliteral.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.129, ptr @.str.130, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @wm8940_dai_ops, ptr @.str.135, ptr @.str.136, ptr @pll_div.0, ptr @pll_div.1, ptr @.str.137, ptr @.str.138, ptr @switch.table.wm8940_set_dai_clkdiv, ptr @switch.table.wm8940_set_dai_clkdiv.139, ptr @switch.table.wm8940_set_dai_clkdiv.140], section "llvm.metadata"
@0 = internal global [181 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8940_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8940_i2c_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8940_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8940_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_component_dev_wm8940 to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8940_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8940_reg_defaults to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8940_snd_controls to i32), i32 1824, i32 2272, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8940_dapm_routes to i32), i32 988, i32 1216, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8940_dac_companding_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8940_adc_companding_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8940_alc_mode_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.7 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8940_alc_max_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.9 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8940_alc_min_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.11 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8940_alc_tar_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.13 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.15 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.17 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.19 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.21 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.23 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.25 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.27 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.29 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.31 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8940_lim_thresh_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.33 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8940_lim_boost_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.35 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.37 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8940_pga_vol_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.39 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8940_adc_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.41 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.43 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8940_mic_bias_level_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8940_capture_boost_vol_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.46 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8940_spk_vol_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.48 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.50 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8940_att_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.52 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.54 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.56 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.58 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.60 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8940_filter_mode_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.63 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.65 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.67 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.69 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.71 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8940_companding to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8940_alc_mode_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8940_mic_bias_level_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8940_filter_mode_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8940_speaker_mixer_controls to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8940_mono_mixer_controls to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8940_micpga_controls to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8940_input_boost_controls to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8940_dapm_widgets to i32), i32 3060, i32 3808, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.103 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.105 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.107 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.108 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.109 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.110 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.112 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.114 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.116 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.118 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8940_boost_vol_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.120 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.122 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8940_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8940_probe._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8940_set_bias_level._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8940_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_div.0 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_div.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_factors._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wm8940_set_dai_clkdiv to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wm8940_set_dai_clkdiv.139 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wm8940_set_dai_clkdiv.140 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8940_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @wm8940_i2c_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @wm8940_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @wm8940_i2c_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8940_i2c_probe(ptr noundef %i2c, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 8, i32 noundef 3520) #7
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef nonnull @wm8940_regmap, ptr noundef nonnull @wm8940_i2c_probe._key, ptr noundef nonnull @.str.1) #7
  %regmap = getelementptr inbounds %struct.wm8940_priv, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call1, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call9 = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @soc_component_dev_wm8940, ptr noundef nonnull @wm8940_dai, i32 noundef 1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then4 ], [ %call9, %if.end7 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @wm8940_readable_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #3 align 64 {
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
    i32 16, label %entry.return_crit_edge14
    i32 17, label %entry.return_crit_edge15
    i32 18, label %entry.return_crit_edge16
    i32 19, label %entry.return_crit_edge17
    i32 20, label %entry.return_crit_edge18
    i32 21, label %entry.return_crit_edge19
    i32 22, label %entry.return_crit_edge20
    i32 23, label %entry.return_crit_edge21
    i32 24, label %entry.return_crit_edge22
    i32 25, label %entry.return_crit_edge23
    i32 32, label %entry.return_crit_edge24
    i32 33, label %entry.return_crit_edge25
    i32 34, label %entry.return_crit_edge26
    i32 35, label %entry.return_crit_edge27
    i32 36, label %entry.return_crit_edge28
    i32 37, label %entry.return_crit_edge29
    i32 38, label %entry.return_crit_edge30
    i32 39, label %entry.return_crit_edge31
    i32 42, label %entry.return_crit_edge32
    i32 44, label %entry.return_crit_edge33
    i32 45, label %entry.return_crit_edge34
    i32 47, label %entry.return_crit_edge35
    i32 49, label %entry.return_crit_edge36
    i32 50, label %entry.return_crit_edge37
    i32 54, label %entry.return_crit_edge38
    i32 56, label %entry.return_crit_edge39
  ]

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

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30, %entry.return_crit_edge31, %entry.return_crit_edge32, %entry.return_crit_edge33, %entry.return_crit_edge34, %entry.return_crit_edge35, %entry.return_crit_edge36, %entry.return_crit_edge37, %entry.return_crit_edge38, %entry.return_crit_edge39
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ], [ true, %entry.return_crit_edge30 ], [ true, %entry.return_crit_edge31 ], [ true, %entry.return_crit_edge32 ], [ true, %entry.return_crit_edge33 ], [ true, %entry.return_crit_edge34 ], [ true, %entry.return_crit_edge35 ], [ true, %entry.return_crit_edge36 ], [ true, %entry.return_crit_edge37 ], [ true, %entry.return_crit_edge38 ], [ true, %entry.return_crit_edge39 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @wm8940_volatile_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reg)
  %cond = icmp eq i32 %reg, 0
  ret i1 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8940_probe(ptr noundef %component) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %platform_data = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data, align 8
  %call = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 0, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.123) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %dapm.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %call1.i = tail call i32 @snd_soc_dapm_force_bias_level(ptr noundef %dapm.i.i, i32 noundef 1) #7
  %call3 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 1, i32 noundef 384) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end10, label %if.else

do.end10:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.129) #10
  br label %cleanup

if.else:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %call12 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 49) #7
  %conv13 = and i32 %call12, 65535
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %3, align 4
  %bf.lshr = lshr i8 %bf.load, 7
  %bf.cast = zext i8 %bf.lshr to i32
  %or = or i32 %conv13, %bf.cast
  %call14 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 49, i32 noundef %or) #7
  br label %cleanup

cleanup:                                          ; preds = %if.else, %do.end10, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call3, %if.end.cleanup_crit_edge ], [ %call14, %if.else ], [ %call3, %do.end10 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8940_set_bias_level(ptr noundef %component, i32 noundef %level) #2 align 64 {
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
  %call1 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 1) #7
  %4 = trunc i32 %call1 to i16
  %conv = and i16 %4, 496
  %5 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.141)
  switch i32 %level, label %entry.cleanup_crit_edge [
    i32 3, label %sw.bb
    i32 2, label %sw.bb12
    i32 1, label %sw.bb19
    i32 0, label %sw.bb35
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call4 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 49) #7
  %conv6 = and i32 %call4, 65533
  %or7 = or i32 %conv6, 2
  %call8 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 49, i32 noundef %or7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %6 = or i16 %conv, 13
  %or10 = zext i16 %6 to i32
  %call11 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 1, i32 noundef %or10) #7
  br label %cleanup

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %7 = or i16 %conv, 13
  %or17 = zext i16 %7 to i32
  %call18 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 1, i32 noundef %or17) #7
  br label %cleanup

sw.bb19:                                          ; preds = %entry
  %dapm.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %8 = ptrtoint ptr %dapm.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dapm.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %if.then22, label %sw.bb19.if.end28_crit_edge

sw.bb19.if.end28_crit_edge:                       ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then22:                                        ; preds = %sw.bb19
  %regmap = getelementptr inbounds %struct.wm8940_priv, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call23 = tail call i32 @regcache_sync(ptr noundef %11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %do.end, label %if.then22.if.end28_crit_edge

if.then22.if.end28_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

do.end:                                           ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.132, i32 noundef %call23) #10
  br label %cleanup

if.end28:                                         ; preds = %if.then22.if.end28_crit_edge, %sw.bb19.if.end28_crit_edge
  %14 = or i16 %conv, 14
  %or33 = zext i16 %14 to i32
  %call34 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 1, i32 noundef %or33) #7
  br label %cleanup

sw.bb35:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv36 = zext i16 %conv to i32
  %call37 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 1, i32 noundef %conv36) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.bb35, %if.end28, %do.end, %sw.bb12, %if.end, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call23, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ %call37, %sw.bb35 ], [ %call34, %if.end28 ], [ %call18, %sw.bb12 ], [ %call8, %sw.bb.cleanup_crit_edge ], [ %call11, %if.end ]
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
declare dso_local i32 @snd_soc_dapm_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_force_bias_level(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wm8940_set_dai_sysclk(ptr nocapture noundef readonly %codec_dai, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %freq to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.142)
  switch i32 %freq, label %entry.cleanup_crit_edge [
    i32 11289600, label %entry.sw.bb_crit_edge
    i32 12000000, label %entry.sw.bb_crit_edge4
    i32 12288000, label %entry.sw.bb_crit_edge5
    i32 16934400, label %entry.sw.bb_crit_edge6
    i32 18432000, label %entry.sw.bb_crit_edge7
  ]

entry.sw.bb_crit_edge7:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge6:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge5:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge4:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge4, %entry.sw.bb_crit_edge5, %entry.sw.bb_crit_edge6, %entry.sw.bb_crit_edge7
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %codec_dai, i32 0, i32 12
  %1 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %component1, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %freq, ptr %6, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8940_set_dai_pll(ptr nocapture noundef readonly %codec_dai, i32 noundef %pll_id, i32 noundef %source, i32 noundef %freq_in, i32 noundef %freq_out) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %codec_dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %call = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 1) #7
  %and = and i32 %call, 479
  %call3 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 1, i32 noundef %and) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %freq_in)
  %cmp = icmp eq i32 %freq_in, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %freq_out)
  %cmp5 = icmp eq i32 %freq_out, 0
  %or.cond = or i1 %cmp, %cmp5
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 6) #7
  %and10 = and i32 %call7, 255
  %call11 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 6, i32 noundef %and10) #7
  %call12 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 36, i32 noundef 128) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %mul = shl i32 %freq_out, 2
  %div.i = udiv i32 %mul, %freq_in
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %div.i)
  %cmp.i = icmp ugt i32 %div.i, 12
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %shl.i = shl i32 %freq_in, 1
  %bf.load.i = load i8, ptr @pll_div.0, align 4
  %bf.clear.i = and i8 %bf.load.i, 63
  store i8 %bf.clear.i, ptr @pll_div.0, align 4
  %div1.i = udiv i32 %mul, %shl.i
  br label %if.end21.i

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %div.i)
  %cmp2.i = icmp ult i32 %div.i, 3
  br i1 %cmp2.i, label %if.then3.i, label %if.else8.i

if.then3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %shr.i = lshr i32 %freq_in, 2
  %bf.load4.i = load i8, ptr @pll_div.0, align 4
  %bf.set6.i = or i8 %bf.load4.i, -64
  store i8 %bf.set6.i, ptr @pll_div.0, align 4
  %div7.i = udiv i32 %mul, %shr.i
  br label %if.end21.i

if.else8.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %div.i)
  %cmp9.i = icmp ult i32 %div.i, 6
  br i1 %cmp9.i, label %if.then10.i, label %if.else16.i

if.then10.i:                                      ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #9
  %shr11.i = lshr i32 %freq_in, 1
  %bf.load12.i = load i8, ptr @pll_div.0, align 4
  %bf.clear13.i = and i8 %bf.load12.i, 63
  %bf.set14.i = or i8 %bf.clear13.i, -128
  store i8 %bf.set14.i, ptr @pll_div.0, align 4
  %div15.i = udiv i32 %mul, %shr11.i
  br label %if.end21.i

if.else16.i:                                      ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #9
  %bf.load17.i = load i8, ptr @pll_div.0, align 4
  %bf.clear18.i = and i8 %bf.load17.i, 63
  %bf.set19.i = or i8 %bf.clear18.i, 64
  store i8 %bf.set19.i, ptr @pll_div.0, align 4
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.else16.i, %if.then10.i, %if.then3.i, %if.then.i
  %Ndiv.0.i = phi i32 [ %div1.i, %if.then.i ], [ %div7.i, %if.then3.i ], [ %div15.i, %if.then10.i ], [ %div.i, %if.else16.i ]
  %source.addr.0.i = phi i32 [ %shl.i, %if.then.i ], [ %shr.i, %if.then3.i ], [ %shr11.i, %if.then10.i ], [ %freq_in, %if.else16.i ]
  %2 = add i32 %Ndiv.0.i, -13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -7, i32 %2)
  %3 = icmp ult i32 %2, -7
  br i1 %3, label %do.end.i, label %if.end21.i.if.end25.i_crit_edge

if.end21.i.if.end25.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25.i

do.end.i:                                         ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, i32 noundef %Ndiv.0.i) #10
  br label %if.end25.i

if.end25.i:                                       ; preds = %do.end.i, %if.end21.i.if.end25.i_crit_edge
  %4 = trunc i32 %Ndiv.0.i to i8
  %bf.load26.i = load i8, ptr @pll_div.0, align 4
  %bf.value.i = shl i8 %4, 2
  %bf.shl.i = and i8 %bf.value.i, 60
  %bf.clear27.i = and i8 %bf.load26.i, -61
  %bf.set28.i = or i8 %bf.clear27.i, %bf.shl.i
  store i8 %bf.set28.i, ptr @pll_div.0, align 4
  %rem.i = urem i32 %mul, %source.addr.0.i
  %conv.i = zext i32 %rem.i to i64
  %mul.i = mul nuw nsw i64 %conv.i, 167772160
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i)
  %cmp205.i = icmp ult i64 %mul.i, 4294967296
  br i1 %cmp205.i, label %if.then209.i, label %if.else215.i, !prof !273

if.then209.i:                                     ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv210.i = trunc i64 %mul.i to i32
  %div213.i = udiv i32 %conv210.i, %source.addr.0.i
  br label %pll_factors.exit

if.else215.i:                                     ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #9
  %5 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %source.addr.0.i, i64 %mul.i) #11, !srcloc !274
  %asmresult1.i.i = extractvalue { i64, i64 } %5, 1
  %extract.t356.i = trunc i64 %asmresult1.i.i to i32
  br label %pll_factors.exit

pll_factors.exit:                                 ; preds = %if.else215.i, %if.then209.i
  %Kpart.0.off0.i = phi i32 [ %div213.i, %if.then209.i ], [ %extract.t356.i, %if.else215.i ]
  %rem223.i = urem i32 %Kpart.0.off0.i, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %rem223.i)
  %cmp224.i = icmp ugt i32 %rem223.i, 4
  %add227.i = add i32 %Kpart.0.off0.i, 5
  %spec.select.i = select i1 %cmp224.i, i32 %add227.i, i32 %Kpart.0.off0.i
  %div229.i = udiv i32 %spec.select.i, 10
  store i32 %div229.i, ptr @pll_div.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %spec.select.i)
  %6 = icmp ult i32 %spec.select.i, 10
  %7 = lshr i8 %bf.set28.i, 2
  %8 = or i8 %7, 64
  %.sink = select i1 %6, i8 %7, i8 %8
  %or27 = zext i8 %.sink to i32
  %call28 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 36, i32 noundef %or27) #7
  %9 = load i32, ptr @pll_div.1, align 4
  %shr = lshr i32 %9, 18
  %call30 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 37, i32 noundef %shr) #7
  %10 = load i32, ptr @pll_div.1, align 4
  %shr31 = lshr i32 %10, 9
  %and32 = and i32 %shr31, 511
  %call33 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 38, i32 noundef %and32) #7
  %11 = load i32, ptr @pll_div.1, align 4
  %and34 = and i32 %11, 511
  %call35 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 39, i32 noundef %and34) #7
  %call36 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 1) #7
  %conv38 = and i32 %call36, 65503
  %or39 = or i32 %conv38, 32
  %call40 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 1, i32 noundef %or39) #7
  %call41 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 6) #7
  %conv43 = and i32 %call41, 65279
  %or44 = or i32 %conv43, 256
  %call45 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 6, i32 noundef %or44) #7
  br label %cleanup

cleanup:                                          ; preds = %pll_factors.exit, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8940_set_dai_clkdiv(ptr nocapture noundef readonly %codec_dai, i32 noundef %div_id, i32 noundef %div) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %div_id)
  %0 = icmp ult i32 %div_id, 3
  br i1 %0, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %codec_dai, i32 0, i32 12
  %1 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %component1, align 4
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.wm8940_set_dai_clkdiv, i32 0, i32 %div_id
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep32 = getelementptr inbounds [3 x i32], ptr @switch.table.wm8940_set_dai_clkdiv.139, i32 0, i32 %div_id
  %4 = ptrtoint ptr %switch.gep32 to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load33 = load i32, ptr %switch.gep32, align 4
  %switch.gep34 = getelementptr inbounds [3 x i32], ptr @switch.table.wm8940_set_dai_clkdiv.140, i32 0, i32 %div_id
  %5 = ptrtoint ptr %switch.gep34 to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load35 = load i32, ptr %switch.gep34, align 4
  %call13 = tail call i32 @snd_soc_component_read(ptr noundef %2, i32 noundef %switch.load) #7
  %conv15 = and i32 %call13, %switch.load33
  %shl17 = shl i32 %div, %switch.load35
  %or18 = or i32 %conv15, %shl17
  %call19 = tail call i32 @snd_soc_component_write(ptr noundef %2, i32 noundef %switch.load, i32 noundef %or18) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ %call19, %switch.lookup ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8940_set_dai_fmt(ptr nocapture noundef readonly %codec_dai, i32 noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %codec_dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %call = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 4) #7
  %2 = trunc i32 %call to i16
  %conv = and i16 %2, -409
  %call2 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 6) #7
  %3 = trunc i32 %call2 to i16
  %conv4 = and i16 %3, 510
  %4 = trunc i32 %fmt to i16
  %trunc = and i16 %4, -4096
  %5 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.143)
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
  %6 = or i16 %conv4, 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %clk.0 = phi i16 [ %conv4, %entry.sw.epilog_crit_edge ], [ %6, %sw.bb ]
  %conv8 = zext i16 %clk.0 to i32
  %call9 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 6, i32 noundef %conv8) #7
  %and10 = and i32 %fmt, 15
  %7 = zext i32 %and10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.144)
  switch i32 %and10, label %sw.epilog.sw.epilog27_crit_edge [
    i32 1, label %sw.bb11
    i32 3, label %sw.bb15
    i32 5, label %sw.bb23
    i32 4, label %sw.bb19
  ]

sw.epilog.sw.epilog27_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog27

sw.bb11:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %8 = or i16 %conv, 16
  br label %sw.epilog27

sw.bb15:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %9 = or i16 %conv, 8
  br label %sw.epilog27

sw.bb19:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %10 = or i16 %conv, 24
  br label %sw.epilog27

sw.bb23:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %11 = or i16 %conv, 152
  br label %sw.epilog27

sw.epilog27:                                      ; preds = %sw.bb23, %sw.bb19, %sw.bb15, %sw.bb11, %sw.epilog.sw.epilog27_crit_edge
  %iface.0 = phi i16 [ %conv, %sw.epilog.sw.epilog27_crit_edge ], [ %10, %sw.bb19 ], [ %11, %sw.bb23 ], [ %9, %sw.bb15 ], [ %8, %sw.bb11 ]
  %and28 = and i32 %fmt, 3840
  %12 = zext i32 %and28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.145)
  switch i32 %and28, label %sw.epilog27.sw.epilog41_crit_edge [
    i32 1024, label %sw.bb37
    i32 512, label %sw.bb29
    i32 768, label %sw.bb33
  ]

sw.epilog27.sw.epilog41_crit_edge:                ; preds = %sw.epilog27
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog41

sw.bb29:                                          ; preds = %sw.epilog27
  call void @__sanitizer_cov_trace_pc() #9
  %13 = or i16 %iface.0, 128
  br label %sw.epilog41

sw.bb33:                                          ; preds = %sw.epilog27
  call void @__sanitizer_cov_trace_pc() #9
  %14 = or i16 %iface.0, 256
  br label %sw.epilog41

sw.bb37:                                          ; preds = %sw.epilog27
  call void @__sanitizer_cov_trace_pc() #9
  %15 = or i16 %iface.0, 384
  br label %sw.epilog41

sw.epilog41:                                      ; preds = %sw.bb37, %sw.bb33, %sw.bb29, %sw.epilog27.sw.epilog41_crit_edge
  %iface.1 = phi i16 [ %iface.0, %sw.epilog27.sw.epilog41_crit_edge ], [ %14, %sw.bb33 ], [ %13, %sw.bb29 ], [ %15, %sw.bb37 ]
  %conv42 = zext i16 %iface.1 to i32
  %call43 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 4, i32 noundef %conv42) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog41, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog41 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8940_mute(ptr nocapture noundef readonly %dai, i32 noundef %mute, i32 noundef %direction) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %call = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 10) #7
  %conv = and i32 %call, 65471
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mute)
  %tobool.not = icmp eq i32 %mute, 0
  %conv3 = or i32 %call, 64
  %spec.select = select i1 %tobool.not, i32 %conv, i32 %conv3
  %conv4 = and i32 %spec.select, 65535
  %call5 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 10, i32 noundef %conv4) #7
  ret i32 %call5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8940_i2s_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %call = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 4) #7
  %2 = trunc i32 %call to i16
  %conv = and i16 %2, -609
  %call2 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 7) #7
  %3 = trunc i32 %call2 to i16
  %conv4 = and i16 %3, -15
  %call5 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 5) #7
  %4 = trunc i32 %call5 to i16
  %conv7 = and i16 %4, -33
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %5 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp = icmp eq i32 %6, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp10 = icmp eq i32 %8, 2
  %9 = or i16 %conv, 512
  %spec.select = select i1 %cmp10, i16 %9, i16 %conv
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %entry.if.end_crit_edge
  %iface.0 = phi i16 [ %conv, %entry.if.end_crit_edge ], [ %spec.select, %land.lhs.true ]
  %arrayidx.i.i83 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %10 = ptrtoint ptr %arrayidx.i.i83 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i83, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.146)
  switch i32 %11, label %if.end.sw.epilog_crit_edge [
    i32 8000, label %sw.bb
    i32 11025, label %sw.bb18
    i32 16000, label %sw.bb22
    i32 22050, label %sw.bb26
    i32 32000, label %sw.bb30
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %13 = or i16 %conv4, 10
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %14 = or i16 %conv4, 8
  br label %sw.epilog

sw.bb22:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %15 = or i16 %conv4, 6
  br label %sw.epilog

sw.bb26:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %16 = or i16 %conv4, 4
  br label %sw.epilog

sw.bb30:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %17 = or i16 %conv4, 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb30, %sw.bb26, %sw.bb22, %sw.bb18, %sw.bb, %if.end.sw.epilog_crit_edge
  %addcntrl.0 = phi i16 [ %conv4, %if.end.sw.epilog_crit_edge ], [ %17, %sw.bb30 ], [ %16, %sw.bb26 ], [ %15, %sw.bb22 ], [ %14, %sw.bb18 ], [ %13, %sw.bb ]
  %conv35 = zext i16 %addcntrl.0 to i32
  %call36 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 7, i32 noundef %conv35) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool.not = icmp eq i32 %call36, 0
  br i1 %tobool.not, label %if.end38, label %sw.epilog.error_ret_crit_edge

sw.epilog.error_ret_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_ret

if.end38:                                         ; preds = %sw.epilog
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i.i.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %if.end38.if.then.i.i.i_crit_edge

if.end38.if.then.i.i.i_crit_edge:                 ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %if.end38.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %if.end38.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %19, %if.end38.if.then.i.i.i_crit_edge ], [ %22, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %20 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #7, !range !275
  %add.i.i.i = or i32 %20, %i.09.lcssa.i.i.i
  br label %params_width.exit

for.inc.i.i.i:                                    ; preds = %if.end38
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %21 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.1.i.i.i = icmp eq i32 %22, 0
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
  %23 = add i32 %call1.i, -8
  %24 = tail call i32 @llvm.fshl.i32(i32 %23, i32 %23, i32 30)
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.147)
  switch i32 %24, label %params_width.exit.sw.epilog56_crit_edge [
    i32 0, label %sw.bb40
    i32 6, label %sw.bb52
    i32 3, label %sw.bb44
    i32 4, label %sw.bb48
  ]

params_width.exit.sw.epilog56_crit_edge:          ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog56

sw.bb40:                                          ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #9
  %conv43 = or i16 %4, 32
  br label %sw.epilog56

sw.bb44:                                          ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #9
  %26 = or i16 %iface.0, 32
  br label %sw.epilog56

sw.bb48:                                          ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #9
  %27 = or i16 %iface.0, 64
  br label %sw.epilog56

sw.bb52:                                          ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #9
  %28 = or i16 %iface.0, 96
  br label %sw.epilog56

sw.epilog56:                                      ; preds = %sw.bb52, %sw.bb48, %sw.bb44, %sw.bb40, %params_width.exit.sw.epilog56_crit_edge
  %iface.1 = phi i16 [ %iface.0, %params_width.exit.sw.epilog56_crit_edge ], [ %27, %sw.bb48 ], [ %26, %sw.bb44 ], [ %28, %sw.bb52 ], [ %iface.0, %sw.bb40 ]
  %companding.0 = phi i16 [ %conv7, %params_width.exit.sw.epilog56_crit_edge ], [ %conv7, %sw.bb48 ], [ %conv7, %sw.bb44 ], [ %conv7, %sw.bb52 ], [ %conv43, %sw.bb40 ]
  %conv57 = zext i16 %companding.0 to i32
  %call58 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 5, i32 noundef %conv57) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end61, label %sw.epilog56.error_ret_crit_edge

sw.epilog56.error_ret_crit_edge:                  ; preds = %sw.epilog56
  call void @__sanitizer_cov_trace_pc() #9
  br label %error_ret

if.end61:                                         ; preds = %sw.epilog56
  call void @__sanitizer_cov_trace_pc() #9
  %conv62 = zext i16 %iface.1 to i32
  %call63 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 4, i32 noundef %conv62) #7
  br label %error_ret

error_ret:                                        ; preds = %if.end61, %sw.epilog56.error_ret_crit_edge, %sw.epilog.error_ret_crit_edge
  %ret.0 = phi i32 [ %call36, %sw.epilog.error_ret_crit_edge ], [ %call58, %sw.epilog56.error_ret_crit_edge ], [ %call63, %if.end61 ]
  ret i32 %ret.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 181)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 181)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !166, !168, !170, !172, !174, !176, !178, !180, !182, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !230, !231, !232, !233, !234, !235, !237, !238, !239, !240, !242, !243, !244, !245, !247, !249, !251, !253, !255, !257, !258, !259, !260, !262}
!llvm.module.flags = !{!264, !265, !266, !267, !268, !269, !270, !271}
!llvm.ident = !{!272}

!0 = !{ptr @__initcall__kmod_snd_soc_wm8940__294_790_wm8940_i2c_driver_init6, !1, !"__initcall__kmod_snd_soc_wm8940__294_790_wm8940_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/wm8940.c", i32 790, i32 1}
!2 = !{ptr @__exitcall_wm8940_i2c_driver_exit, !1, !"__exitcall_wm8940_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description295, !4, !"__UNIQUE_ID_description295", i1 false, i1 false}
!4 = !{!"../sound/soc/codecs/wm8940.c", i32 792, i32 1}
!5 = !{ptr @__UNIQUE_ID_author296, !6, !"__UNIQUE_ID_author296", i1 false, i1 false}
!6 = !{!"../sound/soc/codecs/wm8940.c", i32 793, i32 1}
!7 = !{ptr @__UNIQUE_ID_file297, !8, !"__UNIQUE_ID_file297", i1 false, i1 false}
!8 = !{!"../sound/soc/codecs/wm8940.c", i32 794, i32 1}
!9 = !{ptr @__UNIQUE_ID_license298, !8, !"__UNIQUE_ID_license298", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/codecs/wm8940.c", i32 784, i32 11}
!12 = !{ptr @wm8940_i2c_driver, !13, !"wm8940_i2c_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/wm8940.c", i32 782, i32 26}
!14 = !{ptr @wm8940_i2c_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/wm8940.c", i32 764, i32 19}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @wm8940_regmap, !18, !"wm8940_regmap", i1 false, i1 false}
!18 = !{!"../sound/soc/codecs/wm8940.c", i32 740, i32 35}
!19 = !{ptr @wm8940_reg_defaults, !20, !"wm8940_reg_defaults", i1 false, i1 false}
!20 = !{!"../sound/soc/codecs/wm8940.c", i32 103, i32 33}
!21 = !{ptr @soc_component_dev_wm8940, !22, !"soc_component_dev_wm8940", i1 false, i1 false}
!22 = !{!"../sound/soc/codecs/wm8940.c", i32 724, i32 46}
!23 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../sound/soc/codecs/wm8940.c", i32 183, i32 2}
!25 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../sound/soc/codecs/wm8940.c", i32 185, i32 2}
!27 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/soc/codecs/wm8940.c", i32 186, i32 2}
!29 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/soc/codecs/wm8940.c", i32 188, i32 2}
!31 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/soc/codecs/wm8940.c", i32 189, i32 2}
!33 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/soc/codecs/wm8940.c", i32 190, i32 2}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/soc/codecs/wm8940.c", i32 192, i32 2}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/soc/codecs/wm8940.c", i32 194, i32 2}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/soc/codecs/wm8940.c", i32 196, i32 2}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/soc/codecs/wm8940.c", i32 197, i32 2}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/soc/codecs/wm8940.c", i32 198, i32 2}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/soc/codecs/wm8940.c", i32 199, i32 2}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/soc/codecs/wm8940.c", i32 200, i32 2}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/soc/codecs/wm8940.c", i32 202, i32 2}
!51 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/soc/codecs/wm8940.c", i32 205, i32 2}
!53 = !{ptr @.str.28, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/soc/codecs/wm8940.c", i32 206, i32 2}
!55 = !{ptr @.str.30, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/soc/codecs/wm8940.c", i32 207, i32 2}
!57 = !{ptr @.str.32, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/soc/codecs/wm8940.c", i32 208, i32 2}
!59 = !{ptr @.str.34, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/soc/codecs/wm8940.c", i32 210, i32 2}
!61 = !{ptr @.str.36, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/soc/codecs/wm8940.c", i32 213, i32 2}
!63 = !{ptr @.str.38, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/soc/codecs/wm8940.c", i32 214, i32 2}
!65 = !{ptr @.str.40, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/soc/codecs/wm8940.c", i32 216, i32 2}
!67 = !{ptr @.str.42, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/soc/codecs/wm8940.c", i32 218, i32 2}
!69 = !{ptr @.str.44, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/soc/codecs/wm8940.c", i32 220, i32 2}
!71 = !{ptr @.str.45, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/soc/codecs/wm8940.c", i32 221, i32 2}
!73 = !{ptr @.str.47, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/soc/codecs/wm8940.c", i32 223, i32 2}
!75 = !{ptr @.str.49, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/soc/codecs/wm8940.c", i32 225, i32 2}
!77 = !{ptr @.str.51, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../sound/soc/codecs/wm8940.c", i32 227, i32 2}
!79 = !{ptr @.str.53, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/soc/codecs/wm8940.c", i32 229, i32 2}
!81 = !{ptr @.str.55, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/soc/codecs/wm8940.c", i32 231, i32 2}
!83 = !{ptr @.str.57, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/soc/codecs/wm8940.c", i32 232, i32 2}
!85 = !{ptr @.str.59, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../sound/soc/codecs/wm8940.c", i32 235, i32 2}
!87 = !{ptr @.str.61, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../sound/soc/codecs/wm8940.c", i32 236, i32 2}
!89 = !{ptr @.str.62, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/soc/codecs/wm8940.c", i32 237, i32 2}
!91 = !{ptr @.str.64, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../sound/soc/codecs/wm8940.c", i32 238, i32 2}
!93 = !{ptr @.str.66, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/soc/codecs/wm8940.c", i32 239, i32 2}
!95 = !{ptr @.str.68, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/soc/codecs/wm8940.c", i32 240, i32 2}
!97 = !{ptr @.str.70, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../sound/soc/codecs/wm8940.c", i32 241, i32 2}
!99 = !{ptr @wm8940_snd_controls, !100, !"wm8940_snd_controls", i1 false, i1 false}
!100 = !{!"../sound/soc/codecs/wm8940.c", i32 182, i32 38}
!101 = !{ptr @wm8940_dac_companding_enum, !102, !"wm8940_dac_companding_enum", i1 false, i1 false}
!102 = !{!"../sound/soc/codecs/wm8940.c", i32 156, i32 8}
!103 = !{ptr @.str.72, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../sound/soc/codecs/wm8940.c", i32 153, i32 44}
!105 = !{ptr @.str.73, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../sound/soc/codecs/wm8940.c", i32 153, i32 51}
!107 = !{ptr @.str.74, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../sound/soc/codecs/wm8940.c", i32 153, i32 57}
!109 = !{ptr @.str.75, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../sound/soc/codecs/wm8940.c", i32 153, i32 66}
!111 = !{ptr @wm8940_companding, !112, !"wm8940_companding", i1 false, i1 false}
!112 = !{!"../sound/soc/codecs/wm8940.c", i32 153, i32 20}
!113 = !{ptr @wm8940_adc_companding_enum, !114, !"wm8940_adc_companding_enum", i1 false, i1 false}
!114 = !{!"../sound/soc/codecs/wm8940.c", i32 154, i32 8}
!115 = !{ptr @wm8940_alc_mode_enum, !116, !"wm8940_alc_mode_enum", i1 false, i1 false}
!116 = !{!"../sound/soc/codecs/wm8940.c", i32 160, i32 8}
!117 = !{ptr @.str.76, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../sound/soc/codecs/wm8940.c", i32 159, i32 46}
!119 = !{ptr @.str.77, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../sound/soc/codecs/wm8940.c", i32 159, i32 53}
!121 = !{ptr @wm8940_alc_mode_text, !122, !"wm8940_alc_mode_text", i1 false, i1 false}
!122 = !{!"../sound/soc/codecs/wm8940.c", i32 159, i32 20}
!123 = !{ptr @wm8940_alc_max_tlv, !124, !"wm8940_alc_max_tlv", i1 false, i1 false}
!124 = !{!"../sound/soc/codecs/wm8940.c", i32 175, i32 8}
!125 = !{ptr @wm8940_alc_min_tlv, !126, !"wm8940_alc_min_tlv", i1 false, i1 false}
!126 = !{!"../sound/soc/codecs/wm8940.c", i32 174, i32 8}
!127 = !{ptr @wm8940_alc_tar_tlv, !128, !"wm8940_alc_tar_tlv", i1 false, i1 false}
!128 = !{!"../sound/soc/codecs/wm8940.c", i32 176, i32 8}
!129 = !{ptr @wm8940_lim_thresh_tlv, !130, !"wm8940_lim_thresh_tlv", i1 false, i1 false}
!130 = !{!"../sound/soc/codecs/wm8940.c", i32 178, i32 8}
!131 = !{ptr @wm8940_lim_boost_tlv, !132, !"wm8940_lim_boost_tlv", i1 false, i1 false}
!132 = !{!"../sound/soc/codecs/wm8940.c", i32 177, i32 8}
!133 = !{ptr @wm8940_pga_vol_tlv, !134, !"wm8940_pga_vol_tlv", i1 false, i1 false}
!134 = !{!"../sound/soc/codecs/wm8940.c", i32 173, i32 8}
!135 = !{ptr @wm8940_adc_tlv, !136, !"wm8940_adc_tlv", i1 false, i1 false}
!136 = !{!"../sound/soc/codecs/wm8940.c", i32 179, i32 8}
!137 = !{ptr @wm8940_mic_bias_level_enum, !138, !"wm8940_mic_bias_level_enum", i1 false, i1 false}
!138 = !{!"../sound/soc/codecs/wm8940.c", i32 164, i32 8}
!139 = !{ptr @.str.78, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../sound/soc/codecs/wm8940.c", i32 163, i32 52}
!141 = !{ptr @.str.79, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../sound/soc/codecs/wm8940.c", i32 163, i32 59}
!143 = !{ptr @wm8940_mic_bias_level_text, !144, !"wm8940_mic_bias_level_text", i1 false, i1 false}
!144 = !{!"../sound/soc/codecs/wm8940.c", i32 163, i32 20}
!145 = !{ptr @wm8940_capture_boost_vol_tlv, !146, !"wm8940_capture_boost_vol_tlv", i1 false, i1 false}
!146 = !{!"../sound/soc/codecs/wm8940.c", i32 180, i32 8}
!147 = !{ptr @wm8940_spk_vol_tlv, !148, !"wm8940_spk_vol_tlv", i1 false, i1 false}
!148 = !{!"../sound/soc/codecs/wm8940.c", i32 171, i32 8}
!149 = !{ptr @wm8940_att_tlv, !150, !"wm8940_att_tlv", i1 false, i1 false}
!150 = !{!"../sound/soc/codecs/wm8940.c", i32 172, i32 8}
!151 = !{ptr @wm8940_filter_mode_enum, !152, !"wm8940_filter_mode_enum", i1 false, i1 false}
!152 = !{!"../sound/soc/codecs/wm8940.c", i32 168, i32 8}
!153 = !{ptr @.str.80, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../sound/soc/codecs/wm8940.c", i32 167, i32 49}
!155 = !{ptr @.str.81, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../sound/soc/codecs/wm8940.c", i32 167, i32 58}
!157 = !{ptr @wm8940_filter_mode_text, !158, !"wm8940_filter_mode_text", i1 false, i1 false}
!158 = !{!"../sound/soc/codecs/wm8940.c", i32 167, i32 20}
!159 = !{ptr @.str.82, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../sound/soc/codecs/wm8940.c", i32 272, i32 2}
!161 = !{ptr @.str.83, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../sound/soc/codecs/wm8940.c", i32 275, i32 2}
!163 = !{ptr @.str.84, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../sound/soc/codecs/wm8940.c", i32 278, i32 2}
!165 = !{ptr @.str.85, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @.str.86, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../sound/soc/codecs/wm8940.c", i32 280, i32 2}
!168 = !{ptr @.str.87, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../sound/soc/codecs/wm8940.c", i32 281, i32 2}
!170 = !{ptr @.str.88, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../sound/soc/codecs/wm8940.c", i32 282, i32 2}
!172 = !{ptr @.str.89, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../sound/soc/codecs/wm8940.c", i32 283, i32 2}
!174 = !{ptr @.str.90, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../sound/soc/codecs/wm8940.c", i32 284, i32 2}
!176 = !{ptr @.str.91, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../sound/soc/codecs/wm8940.c", i32 285, i32 2}
!178 = !{ptr @.str.92, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../sound/soc/codecs/wm8940.c", i32 287, i32 2}
!180 = !{ptr @.str.93, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../sound/soc/codecs/wm8940.c", i32 288, i32 2}
!182 = !{ptr @.str.94, !181, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @.str.95, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../sound/soc/codecs/wm8940.c", i32 289, i32 2}
!185 = !{ptr @.str.96, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../sound/soc/codecs/wm8940.c", i32 292, i32 2}
!187 = !{ptr @.str.97, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../sound/soc/codecs/wm8940.c", i32 295, i32 2}
!189 = !{ptr @.str.98, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../sound/soc/codecs/wm8940.c", i32 297, i32 2}
!191 = !{ptr @.str.99, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../sound/soc/codecs/wm8940.c", i32 298, i32 2}
!193 = !{ptr @.str.100, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../sound/soc/codecs/wm8940.c", i32 299, i32 2}
!195 = !{ptr @wm8940_dapm_widgets, !196, !"wm8940_dapm_widgets", i1 false, i1 false}
!196 = !{!"../sound/soc/codecs/wm8940.c", i32 271, i32 41}
!197 = !{ptr @.str.102, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../sound/soc/codecs/wm8940.c", i32 245, i32 2}
!199 = !{ptr @.str.104, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../sound/soc/codecs/wm8940.c", i32 246, i32 2}
!201 = !{ptr @.str.106, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../sound/soc/codecs/wm8940.c", i32 247, i32 2}
!203 = !{ptr @wm8940_speaker_mixer_controls, !204, !"wm8940_speaker_mixer_controls", i1 false, i1 false}
!204 = !{!"../sound/soc/codecs/wm8940.c", i32 244, i32 38}
!205 = !{ptr @wm8940_mono_mixer_controls, !206, !"wm8940_mono_mixer_controls", i1 false, i1 false}
!206 = !{!"../sound/soc/codecs/wm8940.c", i32 250, i32 38}
!207 = !{ptr @.str.111, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../sound/soc/codecs/wm8940.c", i32 266, i32 2}
!209 = !{ptr @.str.113, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../sound/soc/codecs/wm8940.c", i32 267, i32 2}
!211 = !{ptr @.str.115, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../sound/soc/codecs/wm8940.c", i32 268, i32 2}
!213 = !{ptr @wm8940_micpga_controls, !214, !"wm8940_micpga_controls", i1 false, i1 false}
!214 = !{!"../sound/soc/codecs/wm8940.c", i32 265, i32 38}
!215 = !{ptr @.str.117, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../sound/soc/codecs/wm8940.c", i32 258, i32 2}
!217 = !{ptr @.str.119, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../sound/soc/codecs/wm8940.c", i32 259, i32 2}
!219 = !{ptr @.str.121, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../sound/soc/codecs/wm8940.c", i32 261, i32 2}
!221 = !{ptr @wm8940_input_boost_controls, !222, !"wm8940_input_boost_controls", i1 false, i1 false}
!222 = !{!"../sound/soc/codecs/wm8940.c", i32 257, i32 38}
!223 = !{ptr @wm8940_boost_vol_tlv, !224, !"wm8940_boost_vol_tlv", i1 false, i1 false}
!224 = !{!"../sound/soc/codecs/wm8940.c", i32 256, i32 8}
!225 = !{ptr @wm8940_dapm_routes, !226, !"wm8940_dapm_routes", i1 false, i1 false}
!226 = !{!"../sound/soc/codecs/wm8940.c", i32 302, i32 40}
!227 = !{ptr @.str.123, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../sound/soc/codecs/wm8940.c", i32 702, i32 3}
!229 = !{ptr @.str.124, !228, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @.str.125, !228, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @.str.126, !228, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @.str.127, !228, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @wm8940_probe._entry, !228, !"_entry", i1 false, i1 false}
!234 = !{ptr @wm8940_probe._entry_ptr, !228, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.129, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../sound/soc/codecs/wm8940.c", i32 713, i32 3}
!237 = !{ptr @.str.130, !236, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @wm8940_probe._entry.128, !236, !"_entry", i1 false, i1 false}
!239 = !{ptr @wm8940_probe._entry_ptr.131, !236, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @.str.132, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../sound/soc/codecs/wm8940.c", i32 495, i32 5}
!242 = !{ptr @.str.133, !241, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @wm8940_set_bias_level._entry, !241, !"_entry", i1 false, i1 false}
!244 = !{ptr @wm8940_set_bias_level._entry_ptr, !241, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @.str.134, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../sound/soc/codecs/wm8940.c", i32 675, i32 10}
!247 = !{ptr @.str.135, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../sound/soc/codecs/wm8940.c", i32 684, i32 18}
!249 = !{ptr @.str.136, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../sound/soc/codecs/wm8940.c", i32 677, i32 18}
!251 = !{ptr @wm8940_dai, !252, !"wm8940_dai", i1 false, i1 false}
!252 = !{!"../sound/soc/codecs/wm8940.c", i32 674, i32 34}
!253 = !{ptr @wm8940_dai_ops, !254, !"wm8940_dai_ops", i1 false, i1 false}
!254 = !{!"../sound/soc/codecs/wm8940.c", i32 664, i32 37}
!255 = !{ptr @.str.137, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../sound/soc/codecs/wm8940.c", i32 550, i32 3}
!257 = !{ptr @.str.138, !256, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @pll_factors._entry, !256, !"_entry", i1 false, i1 false}
!259 = !{ptr @pll_factors._entry_ptr, !256, !"_entry_ptr", i1 false, i1 false}
!260 = distinct !{null, !261, !"pll_div", i1 false, i1 false}
!261 = !{!"../sound/soc/codecs/wm8940.c", i32 519, i32 20}
!262 = !{ptr @wm8940_i2c_id, !263, !"wm8940_i2c_id", i1 false, i1 false}
!263 = !{!"../sound/soc/codecs/wm8940.c", i32 776, i32 35}
!264 = !{i32 1, !"wchar_size", i32 2}
!265 = !{i32 1, !"min_enum_size", i32 4}
!266 = !{i32 8, !"branch-target-enforcement", i32 0}
!267 = !{i32 8, !"sign-return-address", i32 0}
!268 = !{i32 8, !"sign-return-address-all", i32 0}
!269 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!270 = !{i32 7, !"uwtable", i32 1}
!271 = !{i32 7, !"frame-pointer", i32 2}
!272 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!273 = !{!"branch_weights", i32 2000, i32 1}
!274 = !{i64 2148207797, i64 2148208077, i64 2148208411, i64 2148208745}
!275 = !{i32 0, i32 33}
