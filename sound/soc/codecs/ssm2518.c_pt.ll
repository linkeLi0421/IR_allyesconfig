; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/ssm2518.c_pt.bc'
source_filename = "../sound/soc/codecs/ssm2518.c"
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
%struct.snd_pcm_hw_constraint_list = type { ptr, i32, i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.ssm2518_mcs_lut = type { i32, ptr }
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
%struct.ssm2518 = type { ptr, i8, i32, ptr, i32 }
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

@__initcall__kmod_snd_soc_ssm2518__294_821_ssm2518_driver_init6 = internal global ptr @ssm2518_driver_init, section ".initcall6.init", align 4
@ssm2518_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @ssm2518_i2c_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ssm2518_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ssm2518_i2c_ids, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ssm2518_driver_exit = internal global ptr @ssm2518_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description295 = internal constant [48 x i8] c"snd_soc_ssm2518.description=ASoC SSM2518 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author296 = internal constant [60 x i8] c"snd_soc_ssm2518.author=Lars-Peter Clausen <lars@metafoo.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_file297 = internal constant [54 x i8] c"snd_soc_ssm2518.file=sound/soc/codecs/snd-soc-ssm2518\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [28 x i8] c"snd_soc_ssm2518.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ssm2518\00", [24 x i8] zeroinitializer }, align 32
@ssm2518_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"adi,ssm2518\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ssm2518_i2c_ids = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ssm2518\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SSM2518 nSD\00", [20 x i8] zeroinitializer }, align 32
@ssm2518_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ssm2518_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 18, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ssm2518_reg_defaults, i32 19, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"ssm2518:768:(&ssm2518_regmap_config)->lock\00", [53 x i8] zeroinitializer }, align 32
@ssm2518_component_driver = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @ssm2518_snd_controls, i32 24, ptr @ssm2518_dapm_widgets, i32 4, ptr @ssm2518_routes, i32 2, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ssm2518_set_sysclk, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ssm2518_set_bias_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 28, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@ssm2518_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr @.str.82, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @ssm2518_dai_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.83, i64 2117, i32 2046, i32 0, i32 0, i32 2, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"gpios\00", [26 x i8] zeroinitializer }, align 32
@ssm2518_reg_defaults = internal constant { [19 x %struct.reg_default], [40 x i8] } { [19 x %struct.reg_default] [%struct.reg_default { i32 0, i32 5 }, %struct.reg_default { i32 1, i32 0 }, %struct.reg_default { i32 2, i32 2 }, %struct.reg_default { i32 3, i32 0 }, %struct.reg_default { i32 4, i32 16 }, %struct.reg_default { i32 5, i32 64 }, %struct.reg_default { i32 6, i32 64 }, %struct.reg_default { i32 7, i32 129 }, %struct.reg_default { i32 8, i32 12 }, %struct.reg_default { i32 9, i32 153 }, %struct.reg_default { i32 10, i32 124 }, %struct.reg_default { i32 11, i32 91 }, %struct.reg_default { i32 12, i32 87 }, %struct.reg_default { i32 13, i32 137 }, %struct.reg_default { i32 14, i32 140 }, %struct.reg_default { i32 15, i32 119 }, %struct.reg_default { i32 16, i32 38 }, %struct.reg_default { i32 17, i32 28 }, %struct.reg_default { i32 18, i32 151 }], [40 x i8] zeroinitializer }, align 32
@ssm2518_snd_controls = internal constant { [24 x %struct.snd_kcontrol_new], [288 x i8] } { [24 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.4, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.5, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @ssm2518_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.6 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.7, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.8 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.9, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.10 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.11, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.12 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.13, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.14 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.15, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.16 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.17, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.18 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.19, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.20 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.21, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.22 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.23, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @ssm2518_limiter_tlv }, i32 ptrtoint (ptr @.compoundliteral.24 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.25, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @ssm2518_compressor_tlv }, i32 ptrtoint (ptr @.compoundliteral.26 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.27, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @ssm2518_expander_tlv }, i32 ptrtoint (ptr @.compoundliteral.28 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.29, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @ssm2518_noise_gate_tlv }, i32 ptrtoint (ptr @.compoundliteral.30 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.31, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @ssm2518_limiter_tlv }, i32 ptrtoint (ptr @.compoundliteral.32 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.33, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @ssm2518_noise_gate_tlv }, i32 ptrtoint (ptr @.compoundliteral.34 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.35, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @ssm2518_post_drc_tlv }, i32 ptrtoint (ptr @.compoundliteral.36 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.37, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @ssm2518_drc_peak_detector_attack_time_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.38, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @ssm2518_drc_peak_detector_release_time_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.39, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @ssm2518_drc_attack_time_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.40, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @ssm2518_drc_decay_time_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.41, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @ssm2518_drc_hold_time_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.42, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @ssm2518_drc_noise_gate_hold_time_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.43, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @ssm2518_drc_rms_averaging_time_enum to i32) }], [288 x i8] zeroinitializer }, align 32
@ssm2518_routes = internal constant { [2 x %struct.snd_soc_dapm_route], [56 x i8] } { [2 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.79, ptr null, ptr @.str.76, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.80, ptr null, ptr @.str.78, ptr null, %struct.snd_soc_dobj zeroinitializer }], [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Playback De-emphasis Switch\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 7, i32 7, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Master Playback Volume\00", [41 x i8] zeroinitializer }, align 32
@ssm2518_vol_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 5, i32 8, i32 -7125, i32 2400], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.6 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 5, i32 6, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Master Playback Switch\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.8 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 7, i32 7, i32 2, i32 1, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Amp Low Power Mode Switch\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.10 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 9, i32 9, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"DAC Low Power Mode Switch\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.12 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 9, i32 9, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DRC Limiter Switch\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.14 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 10, i32 10, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DRC Compressor Switch\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.16 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 10, i32 10, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DRC Expander Switch\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.18 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 10, i32 10, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DRC Noise Gate Switch\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.20 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 10, i32 10, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DRC Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.22 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 10, i32 10, i32 0, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"DRC Limiter Threshold Volume\00", [35 x i8] zeroinitializer }, align 32
@ssm2518_limiter_tlv = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 3, i32 48, i32 0, i32 7, i32 1, i32 8, i32 -2200, i32 200, i32 7, i32 15, i32 1, i32 8, i32 -800, i32 100], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.24 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 12, i32 12, i32 4, i32 4, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"DRC Compressor Lower Threshold Volume\00", [58 x i8] zeroinitializer }, align 32
@ssm2518_compressor_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -3400, i32 200], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.26 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 12, i32 12, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"DRC Expander Upper Threshold Volume\00", [60 x i8] zeroinitializer }, align 32
@ssm2518_expander_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -8100, i32 300], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.28 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 13, i32 13, i32 4, i32 4, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"DRC Noise Gate Threshold Volume\00", [32 x i8] zeroinitializer }, align 32
@ssm2518_noise_gate_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -9600, i32 300], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.30 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 13, i32 13, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"DRC Upper Output Threshold Volume\00", [62 x i8] zeroinitializer }, align 32
@.compoundliteral.32 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 14, i32 14, i32 4, i32 4, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"DRC Lower Output Threshold Volume\00", [62 x i8] zeroinitializer }, align 32
@.compoundliteral.34 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 14, i32 14, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DRC Post Volume\00", [16 x i8] zeroinitializer }, align 32
@ssm2518_post_drc_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -2400, i32 300], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.36 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 17, i32 17, i32 2, i32 2, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"DRC Peak Detector Attack Time\00", [34 x i8] zeroinitializer }, align 32
@ssm2518_drc_peak_detector_attack_time_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 11, i8 4, i8 4, i32 16, i32 15, ptr @ssm2518_drc_peak_detector_attack_time_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"DRC Peak Detector Release Time\00", [33 x i8] zeroinitializer }, align 32
@ssm2518_drc_peak_detector_release_time_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 11, i8 0, i8 0, i32 16, i32 15, ptr @ssm2518_drc_peak_detector_release_time_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DRC Attack Time\00", [16 x i8] zeroinitializer }, align 32
@ssm2518_drc_attack_time_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 15, i8 4, i8 4, i32 16, i32 15, ptr @ssm2518_drc_peak_detector_attack_time_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DRC Decay Time\00", [17 x i8] zeroinitializer }, align 32
@ssm2518_drc_decay_time_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 15, i8 0, i8 0, i32 16, i32 15, ptr @ssm2518_drc_peak_detector_release_time_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DRC Hold Time\00", [18 x i8] zeroinitializer }, align 32
@ssm2518_drc_hold_time_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 16, i8 4, i8 4, i32 13, i32 15, ptr @ssm2518_drc_hold_time_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"DRC Noise Gate Hold Time\00", [39 x i8] zeroinitializer }, align 32
@ssm2518_drc_noise_gate_hold_time_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 16, i8 0, i8 0, i32 13, i32 15, ptr @ssm2518_drc_hold_time_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DRC RMS Averaging Time\00", [41 x i8] zeroinitializer }, align 32
@ssm2518_drc_rms_averaging_time_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 18, i8 0, i8 0, i32 16, i32 15, ptr @ssm2518_drc_peak_detector_release_time_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@ssm2518_drc_peak_detector_attack_time_text = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59], [32 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0 ms\00", [27 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0.1 ms\00", [25 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0.19 ms\00", [24 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0.37 ms\00", [24 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0.75 ms\00", [24 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"1.5 ms\00", [25 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"3 ms\00", [27 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"6 ms\00", [27 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"12 ms\00", [26 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"24 ms\00", [26 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"48 ms\00", [26 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"96 ms\00", [26 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"192 ms\00", [25 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"384 ms\00", [25 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"768 ms\00", [25 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"1536 ms\00", [24 x i8] zeroinitializer }, align 32
@ssm2518_drc_peak_detector_release_time_text = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.44, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63], [32 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"3072 ms\00", [24 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"6144 ms\00", [24 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"12288 ms\00", [23 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"24576 ms\00", [23 x i8] zeroinitializer }, align 32
@ssm2518_drc_hold_time_text = internal constant { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @.str.44, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75], [44 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0.67 ms\00", [24 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"1.33 ms\00", [24 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"2.67 ms\00", [24 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"5.33 ms\00", [24 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"10.66 ms\00", [23 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"21.32 ms\00", [23 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"42.64 ms\00", [23 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"85.28 ms\00", [23 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"170.56 ms\00", [22 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"341.12 ms\00", [22 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"682.24 ms\00", [22 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"1364 ms\00", [24 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DACL\00", [27 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"HiFi Playback\00", [18 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DACR\00", [27 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"OUTL\00", [27 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"OUTR\00", [27 x i8] zeroinitializer }, align 32
@ssm2518_dapm_widgets = internal constant { [4 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [176 x i8] } { [4 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.76, ptr @.str.77, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 9, i8 1, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.78, ptr @.str.77, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 9, i8 2, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.79, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.80, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [176 x i8] zeroinitializer }, align 32
@ssm2518_constraints_2048000 = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @ssm2518_rates_2048000, i32 3, i32 0 }, [20 x i8] zeroinitializer }, align 32
@ssm2518_constraints_2822000 = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @ssm2518_rates_2822000, i32 3, i32 0 }, [20 x i8] zeroinitializer }, align 32
@ssm2518_constraints_3072000 = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @ssm2518_rates_3072000, i32 4, i32 0 }, [20 x i8] zeroinitializer }, align 32
@ssm2518_constraints_12288000 = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @ssm2518_rates_12288000, i32 7, i32 0 }, [20 x i8] zeroinitializer }, align 32
@ssm2518_rates_2048000 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 8000, i32 16000, i32 32000], [20 x i8] zeroinitializer }, align 32
@ssm2518_rates_2822000 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 11025, i32 22050, i32 44100], [20 x i8] zeroinitializer }, align 32
@ssm2518_rates_3072000 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 12000, i32 24000, i32 48000, i32 96000], [16 x i8] zeroinitializer }, align 32
@ssm2518_rates_12288000 = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 8000, i32 12000, i32 16000, i32 24000, i32 32000, i32 48000, i32 96000], [36 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ssm2518-hifi\00", [19 x i8] zeroinitializer }, align 32
@ssm2518_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr @ssm2518_set_dai_fmt, ptr null, ptr @ssm2518_set_tdm_slot, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ssm2518_mute, ptr @ssm2518_startup, ptr null, ptr @ssm2518_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 -128 }, [32 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Playback\00", [23 x i8] zeroinitializer }, align 32
@ssm2518_mcs_lut = internal constant { [10 x %struct.ssm2518_mcs_lut], [48 x i8] } { [10 x %struct.ssm2518_mcs_lut] [%struct.ssm2518_mcs_lut { i32 8000, ptr @ssm2518_sysclks_2048000 }, %struct.ssm2518_mcs_lut { i32 11025, ptr @ssm2518_sysclks_2822000 }, %struct.ssm2518_mcs_lut { i32 12000, ptr @ssm2518_sysclks_3072000 }, %struct.ssm2518_mcs_lut { i32 16000, ptr @ssm2518_sysclks_2048000 }, %struct.ssm2518_mcs_lut { i32 24000, ptr @ssm2518_sysclks_3072000 }, %struct.ssm2518_mcs_lut { i32 22050, ptr @ssm2518_sysclks_2822000 }, %struct.ssm2518_mcs_lut { i32 32000, ptr @ssm2518_sysclks_2048000 }, %struct.ssm2518_mcs_lut { i32 44100, ptr @ssm2518_sysclks_2822000 }, %struct.ssm2518_mcs_lut { i32 48000, ptr @ssm2518_sysclks_3072000 }, %struct.ssm2518_mcs_lut { i32 96000, ptr @ssm2518_sysclks_3072000 }], [48 x i8] zeroinitializer }, align 32
@ssm2518_sysclks_2048000 = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 2048000, i32 4096000, i32 8192000, i32 12288000, i32 16384000, i32 24576000, i32 3200000, i32 6400000, i32 12800000, i32 0], [56 x i8] zeroinitializer }, align 32
@ssm2518_sysclks_2822000 = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 2822000, i32 5644800, i32 11289600, i32 16934400, i32 22579200, i32 33868800, i32 4410000, i32 8820000, i32 17640000, i32 0], [56 x i8] zeroinitializer }, align 32
@ssm2518_sysclks_3072000 = internal constant { [10 x i32], [56 x i8] } { [10 x i32] [i32 3072000, i32 6144000, i32 12288000, i32 16384000, i32 24576000, i32 38864000, i32 4800000, i32 9600000, i32 19200000, i32 0], [56 x i8] zeroinitializer }, align 32
@switch.table.ssm2518_set_tdm_slot = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 4, i32 8, i32 16, i32 12, i32 16, i32 16, i32 16, i32 16], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.84 = internal global [27 x i64] [i64 25, i64 32, i64 0, i64 2048000, i64 2822000, i64 3072000, i64 3200000, i64 4096000, i64 4410000, i64 4800000, i64 5644800, i64 6144000, i64 6400000, i64 8192000, i64 8820000, i64 9600000, i64 11289600, i64 12288000, i64 12800000, i64 16384000, i64 16934400, i64 17640000, i64 19200000, i64 22579200, i64 24576000, i64 33868800, i64 38864000]
@__sancov_gen_cov_switch_values.85 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.86 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.87 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.88 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.89 = internal global [12 x i64] [i64 10, i64 32, i64 8000, i64 11025, i64 12000, i64 16000, i64 22050, i64 24000, i64 32000, i64 44100, i64 48000, i64 96000]
@__sancov_gen_cov_switch_values.90 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 24]
@___asan_gen_.91 = private unnamed_addr constant [15 x i8] c"ssm2518_driver\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 813, i32 26 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 815, i32 11 }
@___asan_gen_.97 = private unnamed_addr constant [15 x i8] c"ssm2518_dt_ids\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 800, i32 34 }
@___asan_gen_.100 = private unnamed_addr constant [16 x i8] c"ssm2518_i2c_ids\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 807, i32 35 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 761, i32 26 }
@___asan_gen_.106 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.109 = private unnamed_addr constant [22 x i8] c"ssm2518_regmap_config\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 727, i32 35 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 768, i32 20 }
@___asan_gen_.115 = private unnamed_addr constant [25 x i8] c"ssm2518_component_driver\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 713, i32 46 }
@___asan_gen_.118 = private unnamed_addr constant [12 x i8] c"ssm2518_dai\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 632, i32 34 }
@___asan_gen_.122 = private unnamed_addr constant [27 x i8] c"../include/linux/of_gpio.h\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 121, i32 37 }
@___asan_gen_.124 = private unnamed_addr constant [21 x i8] c"ssm2518_reg_defaults\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 120, i32 33 }
@___asan_gen_.127 = private unnamed_addr constant [21 x i8] c"ssm2518_snd_controls\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 186, i32 38 }
@___asan_gen_.130 = private unnamed_addr constant [15 x i8] c"ssm2518_routes\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 237, i32 40 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 187, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 189, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant [16 x i8] c"ssm2518_vol_tlv\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 142, i32 14 }
@___asan_gen_.143 = private unnamed_addr constant [19 x i8] c".compoundliteral.6\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 191, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant [19 x i8] c".compoundliteral.8\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 193, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant [20 x i8] c".compoundliteral.10\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 194, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant [20 x i8] c".compoundliteral.12\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 196, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant [20 x i8] c".compoundliteral.14\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 197, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant [20 x i8] c".compoundliteral.16\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 198, i32 2 }
@___asan_gen_.167 = private unnamed_addr constant [20 x i8] c".compoundliteral.18\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 199, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant [20 x i8] c".compoundliteral.20\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 200, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant [20 x i8] c".compoundliteral.22\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 202, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant [20 x i8] c"ssm2518_limiter_tlv\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 148, i32 14 }
@___asan_gen_.182 = private unnamed_addr constant [20 x i8] c".compoundliteral.24\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 204, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant [23 x i8] c"ssm2518_compressor_tlv\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 143, i32 14 }
@___asan_gen_.189 = private unnamed_addr constant [20 x i8] c".compoundliteral.26\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 206, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant [21 x i8] c"ssm2518_expander_tlv\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 144, i32 14 }
@___asan_gen_.196 = private unnamed_addr constant [20 x i8] c".compoundliteral.28\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 208, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant [23 x i8] c"ssm2518_noise_gate_tlv\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 145, i32 14 }
@___asan_gen_.203 = private unnamed_addr constant [20 x i8] c".compoundliteral.30\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 210, i32 2 }
@___asan_gen_.207 = private unnamed_addr constant [20 x i8] c".compoundliteral.32\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 212, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant [20 x i8] c".compoundliteral.34\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 214, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant [21 x i8] c"ssm2518_post_drc_tlv\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 146, i32 14 }
@___asan_gen_.218 = private unnamed_addr constant [20 x i8] c".compoundliteral.36\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 217, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant [43 x i8] c"ssm2518_drc_peak_detector_attack_time_enum\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 171, i32 8 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 219, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant [44 x i8] c"ssm2518_drc_peak_detector_release_time_enum\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 173, i32 8 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 221, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant [29 x i8] c"ssm2518_drc_attack_time_enum\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 175, i32 8 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 222, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant [28 x i8] c"ssm2518_drc_decay_time_enum\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 177, i32 8 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 223, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant [27 x i8] c"ssm2518_drc_hold_time_enum\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 179, i32 8 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 224, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant [38 x i8] c"ssm2518_drc_noise_gate_hold_time_enum\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 181, i32 8 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 226, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant [36 x i8] c"ssm2518_drc_rms_averaging_time_enum\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 183, i32 8 }
@___asan_gen_.261 = private unnamed_addr constant [43 x i8] c"ssm2518_drc_peak_detector_attack_time_text\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 153, i32 27 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 154, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 154, i32 10 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 154, i32 20 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 154, i32 31 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 154, i32 42 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 154, i32 53 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 154, i32 63 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 155, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 155, i32 10 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 155, i32 19 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 155, i32 28 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 155, i32 37 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 155, i32 46 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 155, i32 56 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 156, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 156, i32 12 }
@___asan_gen_.312 = private unnamed_addr constant [44 x i8] c"ssm2518_drc_peak_detector_release_time_text\00", align 1
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 159, i32 27 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 161, i32 43 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 161, i32 54 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 162, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 162, i32 14 }
@___asan_gen_.327 = private unnamed_addr constant [27 x i8] c"ssm2518_drc_hold_time_text\00", align 1
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 165, i32 27 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 166, i32 10 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 166, i32 21 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 166, i32 32 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 166, i32 43 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 166, i32 54 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 167, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 167, i32 14 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 167, i32 26 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 167, i32 38 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 167, i32 51 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 168, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 168, i32 15 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 230, i32 2 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 231, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 233, i32 2 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 234, i32 2 }
@___asan_gen_.381 = private unnamed_addr constant [21 x i8] c"ssm2518_dapm_widgets\00", align 1
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 229, i32 41 }
@___asan_gen_.384 = private unnamed_addr constant [28 x i8] c"ssm2518_constraints_2048000\00", align 1
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 279, i32 48 }
@___asan_gen_.387 = private unnamed_addr constant [28 x i8] c"ssm2518_constraints_2822000\00", align 1
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 288, i32 48 }
@___asan_gen_.390 = private unnamed_addr constant [28 x i8] c"ssm2518_constraints_3072000\00", align 1
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 297, i32 48 }
@___asan_gen_.393 = private unnamed_addr constant [29 x i8] c"ssm2518_constraints_12288000\00", align 1
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 306, i32 48 }
@___asan_gen_.396 = private unnamed_addr constant [22 x i8] c"ssm2518_rates_2048000\00", align 1
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 275, i32 27 }
@___asan_gen_.399 = private unnamed_addr constant [22 x i8] c"ssm2518_rates_2822000\00", align 1
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 284, i32 27 }
@___asan_gen_.402 = private unnamed_addr constant [22 x i8] c"ssm2518_rates_3072000\00", align 1
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 293, i32 27 }
@___asan_gen_.405 = private unnamed_addr constant [23 x i8] c"ssm2518_rates_12288000\00", align 1
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 302, i32 27 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 633, i32 10 }
@___asan_gen_.411 = private unnamed_addr constant [16 x i8] c"ssm2518_dai_ops\00", align 1
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 623, i32 37 }
@___asan_gen_.414 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 635, i32 18 }
@___asan_gen_.417 = private unnamed_addr constant [16 x i8] c"ssm2518_mcs_lut\00", align 1
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 262, i32 37 }
@___asan_gen_.420 = private unnamed_addr constant [24 x i8] c"ssm2518_sysclks_2048000\00", align 1
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 247, i32 27 }
@___asan_gen_.423 = private unnamed_addr constant [24 x i8] c"ssm2518_sysclks_2822000\00", align 1
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 252, i32 27 }
@___asan_gen_.426 = private unnamed_addr constant [24 x i8] c"ssm2518_sysclks_3072000\00", align 1
@___asan_gen_.427 = private constant [30 x i8] c"../sound/soc/codecs/ssm2518.c\00", align 1
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.427, i32 257, i32 27 }
@___asan_gen_.429 = private unnamed_addr constant [34 x i8] c"switch.table.ssm2518_set_tdm_slot\00", align 1
@llvm.compiler.used = appending global [132 x ptr] [ptr @__UNIQUE_ID_author296, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_license298, ptr @__exitcall_ssm2518_driver_exit, ptr @__initcall__kmod_snd_soc_ssm2518__294_821_ssm2518_driver_init6, ptr @ssm2518_driver_exit, ptr @ssm2518_driver, ptr @.str, ptr @ssm2518_dt_ids, ptr @ssm2518_i2c_ids, ptr @.str.1, ptr @ssm2518_i2c_probe._key, ptr @ssm2518_regmap_config, ptr @.str.2, ptr @ssm2518_component_driver, ptr @ssm2518_dai, ptr @.str.3, ptr @ssm2518_reg_defaults, ptr @ssm2518_snd_controls, ptr @ssm2518_routes, ptr @.str.4, ptr @.compoundliteral, ptr @.str.5, ptr @ssm2518_vol_tlv, ptr @.compoundliteral.6, ptr @.str.7, ptr @.compoundliteral.8, ptr @.str.9, ptr @.compoundliteral.10, ptr @.str.11, ptr @.compoundliteral.12, ptr @.str.13, ptr @.compoundliteral.14, ptr @.str.15, ptr @.compoundliteral.16, ptr @.str.17, ptr @.compoundliteral.18, ptr @.str.19, ptr @.compoundliteral.20, ptr @.str.21, ptr @.compoundliteral.22, ptr @.str.23, ptr @ssm2518_limiter_tlv, ptr @.compoundliteral.24, ptr @.str.25, ptr @ssm2518_compressor_tlv, ptr @.compoundliteral.26, ptr @.str.27, ptr @ssm2518_expander_tlv, ptr @.compoundliteral.28, ptr @.str.29, ptr @ssm2518_noise_gate_tlv, ptr @.compoundliteral.30, ptr @.str.31, ptr @.compoundliteral.32, ptr @.str.33, ptr @.compoundliteral.34, ptr @.str.35, ptr @ssm2518_post_drc_tlv, ptr @.compoundliteral.36, ptr @.str.37, ptr @ssm2518_drc_peak_detector_attack_time_enum, ptr @.str.38, ptr @ssm2518_drc_peak_detector_release_time_enum, ptr @.str.39, ptr @ssm2518_drc_attack_time_enum, ptr @.str.40, ptr @ssm2518_drc_decay_time_enum, ptr @.str.41, ptr @ssm2518_drc_hold_time_enum, ptr @.str.42, ptr @ssm2518_drc_noise_gate_hold_time_enum, ptr @.str.43, ptr @ssm2518_drc_rms_averaging_time_enum, ptr @ssm2518_drc_peak_detector_attack_time_text, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @ssm2518_drc_peak_detector_release_time_text, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @ssm2518_drc_hold_time_text, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @ssm2518_dapm_widgets, ptr @ssm2518_constraints_2048000, ptr @ssm2518_constraints_2822000, ptr @ssm2518_constraints_3072000, ptr @ssm2518_constraints_12288000, ptr @ssm2518_rates_2048000, ptr @ssm2518_rates_2822000, ptr @ssm2518_rates_3072000, ptr @ssm2518_rates_12288000, ptr @.str.82, ptr @ssm2518_dai_ops, ptr @.str.83, ptr @ssm2518_mcs_lut, ptr @ssm2518_sysclks_2048000, ptr @ssm2518_sysclks_2822000, ptr @ssm2518_sysclks_3072000, ptr @switch.table.ssm2518_set_tdm_slot], section "llvm.metadata"
@0 = internal global [125 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssm2518_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssm2518_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssm2518_i2c_ids to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssm2518_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssm2518_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssm2518_component_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssm2518_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssm2518_reg_defaults to i32), i32 152, i32 192, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssm2518_snd_controls to i32), i32 1152, i32 1440, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssm2518_routes to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssm2518_vol_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.6 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.8 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.10 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.12 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.14 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.16 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.18 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.20 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.22 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssm2518_limiter_tlv to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.24 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssm2518_compressor_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.26 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssm2518_expander_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.28 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssm2518_noise_gate_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.30 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.32 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.34 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssm2518_post_drc_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.36 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssm2518_drc_peak_detector_attack_time_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssm2518_drc_peak_detector_release_time_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssm2518_drc_attack_time_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssm2518_drc_decay_time_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssm2518_drc_hold_time_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssm2518_drc_noise_gate_hold_time_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssm2518_drc_rms_averaging_time_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssm2518_drc_peak_detector_attack_time_text to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssm2518_drc_peak_detector_release_time_text to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssm2518_drc_hold_time_text to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssm2518_dapm_widgets to i32), i32 720, i32 896, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssm2518_constraints_2048000 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssm2518_constraints_2822000 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssm2518_constraints_3072000 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssm2518_constraints_12288000 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssm2518_rates_2048000 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssm2518_rates_2822000 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssm2518_rates_3072000 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssm2518_rates_12288000 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssm2518_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssm2518_mcs_lut to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssm2518_sysclks_2048000 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssm2518_sysclks_2822000 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssm2518_sysclks_3072000 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ssm2518_set_tdm_slot to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ssm2518_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ssm2518_driver) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ssm2518_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @i2c_del_driver(ptr noundef nonnull @ssm2518_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssm2518_i2c_probe(ptr noundef %i2c, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %platform_data = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 20, i32 noundef 3520) #4
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  br label %if.end21.sink.split

if.else:                                          ; preds = %if.end
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %if.else.if.end21.sink.split_crit_edge, label %if.then6

if.else.if.end21.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21.sink.split

if.then6:                                         ; preds = %if.else
  %call.i.i = tail call i32 @of_get_named_gpio_flags(ptr noundef nonnull %5, ptr noundef nonnull @.str.3, i32 noundef 0, ptr noundef null) #4
  %enable_gpio10 = getelementptr inbounds %struct.ssm2518, ptr %call.i, i32 0, i32 4
  %6 = ptrtoint ptr %enable_gpio10 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call.i.i, ptr %enable_gpio10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %cmp12 = icmp sgt i32 %call.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call.i.i)
  %cmp14.not = icmp eq i32 %call.i.i, -2
  %or.cond = or i1 %cmp12, %cmp14.not
  br i1 %or.cond, label %if.then6.if.end21_crit_edge, label %if.then6.cleanup_crit_edge

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then6.if.end21_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end21

if.end21.sink.split:                              ; preds = %if.else.if.end21.sink.split_crit_edge, %if.then2
  %.sink = phi i32 [ %3, %if.then2 ], [ -1, %if.else.if.end21.sink.split_crit_edge ]
  %enable_gpio19 = getelementptr inbounds %struct.ssm2518, ptr %call.i, i32 0, i32 4
  %7 = ptrtoint ptr %enable_gpio19 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %.sink, ptr %enable_gpio19, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.end21.sink.split, %if.then6.if.end21_crit_edge
  %enable_gpio22 = getelementptr inbounds %struct.ssm2518, ptr %call.i, i32 0, i32 4
  %8 = ptrtoint ptr %enable_gpio22 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %enable_gpio22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %9)
  %10 = icmp ult i32 %9, 2048
  br i1 %10, label %if.then24, label %if.end21.if.end31_crit_edge

if.end21.if.end31_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end31

if.then24:                                        ; preds = %if.end21
  %call27 = tail call i32 @devm_gpio_request_one(ptr noundef %dev, i32 noundef %9, i32 noundef 2, ptr noundef nonnull @.str.1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.then24.if.end31_crit_edge, label %if.then24.cleanup_crit_edge

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then24.if.end31_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end31

if.end31:                                         ; preds = %if.then24.if.end31_crit_edge, %if.end21.if.end31_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call32 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef nonnull @ssm2518_regmap_config, ptr noundef nonnull @ssm2518_i2c_probe._key, ptr noundef nonnull @.str.2) #4
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call32, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then35, label %if.end38

if.then35:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %call32 to i32
  br label %cleanup

if.end38:                                         ; preds = %if.end31
  tail call void @regcache_cache_bypass(ptr noundef %call32, i1 noundef zeroext true) #4
  %14 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call.i, align 4
  %call41 = tail call i32 @regmap_write(ptr noundef %15, i32 noundef 0, i32 noundef 128) #4
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %call.i, align 4
  tail call void @regcache_cache_bypass(ptr noundef %17, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool43.not = icmp eq i32 %call41, 0
  br i1 %tobool43.not, label %if.end45, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end45:                                         ; preds = %if.end38
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call.i, align 4
  %call.i92 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 9, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92)
  %tobool48.not = icmp eq i32 %call.i92, 0
  br i1 %tobool48.not, label %if.end50, label %if.end45.cleanup_crit_edge

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end50:                                         ; preds = %if.end45
  %20 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call.i, align 4
  %call.i.i93 = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %22 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call.i, align 4
  tail call void @regcache_mark_dirty(ptr noundef %23) #4
  %24 = ptrtoint ptr %enable_gpio22 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %enable_gpio22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %25)
  %26 = icmp ult i32 %25, 2048
  br i1 %26, label %if.then3.i, label %if.end50.ssm2518_set_power.exit_crit_edge

if.end50.ssm2518_set_power.exit_crit_edge:        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #6
  br label %ssm2518_set_power.exit

if.then3.i:                                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #6
  %call.i25.i = tail call ptr @gpio_to_desc(i32 noundef %25) #4
  tail call void @gpiod_set_raw_value(ptr noundef %call.i25.i, i32 noundef 0) #4
  br label %ssm2518_set_power.exit

ssm2518_set_power.exit:                           ; preds = %if.then3.i, %if.end50.ssm2518_set_power.exit_crit_edge
  %27 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call.i, align 4
  tail call void @regcache_cache_only(ptr noundef %28, i1 noundef zeroext true) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i93)
  %tobool52.not = icmp eq i32 %call.i.i93, 0
  br i1 %tobool52.not, label %if.end54, label %ssm2518_set_power.exit.cleanup_crit_edge

ssm2518_set_power.exit.cleanup_crit_edge:         ; preds = %ssm2518_set_power.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end54:                                         ; preds = %ssm2518_set_power.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call56 = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @ssm2518_component_driver, ptr noundef nonnull @ssm2518_dai, i32 noundef 1) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %ssm2518_set_power.exit.cleanup_crit_edge, %if.end45.cleanup_crit_edge, %if.end38.cleanup_crit_edge, %if.then35, %if.then24.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %13, %if.then35 ], [ %call56, %if.end54 ], [ -12, %entry.cleanup_crit_edge ], [ %call.i.i, %if.then6.cleanup_crit_edge ], [ %call27, %if.then24.cleanup_crit_edge ], [ %call41, %if.end38.cleanup_crit_edge ], [ %call.i92, %if.end45.cleanup_crit_edge ], [ %call.i.i93, %ssm2518_set_power.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpio_request_one(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_bypass(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_named_gpio_flags(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_raw_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssm2518_set_sysclk(ptr nocapture noundef readonly %component, i32 noundef %clk_id, i32 noundef %source, i32 noundef %freq, i32 noundef %dir) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clk_id)
  %cmp.not = icmp eq i32 %clk_id, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %source to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %source, label %if.end.cleanup_crit_edge [
    i32 0, label %if.end.sw.epilog_crit_edge
    i32 1, label %sw.bb1
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %if.end.sw.epilog_crit_edge
  %val.0 = phi i32 [ 32, %sw.bb1 ], [ %source, %if.end.sw.epilog_crit_edge ]
  %5 = zext i32 %freq to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %freq, label %sw.epilog.cleanup_crit_edge [
    i32 0, label %sw.epilog.sw.epilog12_crit_edge
    i32 2048000, label %sw.epilog.sw.bb3_crit_edge
    i32 4096000, label %sw.epilog.sw.bb3_crit_edge22
    i32 8192000, label %sw.epilog.sw.bb3_crit_edge23
    i32 3200000, label %sw.epilog.sw.bb3_crit_edge24
    i32 6400000, label %sw.epilog.sw.bb3_crit_edge25
    i32 12800000, label %sw.epilog.sw.bb3_crit_edge26
    i32 2822000, label %sw.epilog.sw.bb5_crit_edge
    i32 5644800, label %sw.epilog.sw.bb5_crit_edge27
    i32 11289600, label %sw.epilog.sw.bb5_crit_edge28
    i32 16934400, label %sw.epilog.sw.bb5_crit_edge29
    i32 22579200, label %sw.epilog.sw.bb5_crit_edge30
    i32 33868800, label %sw.epilog.sw.bb5_crit_edge31
    i32 4410000, label %sw.epilog.sw.bb5_crit_edge32
    i32 8820000, label %sw.epilog.sw.bb5_crit_edge33
    i32 17640000, label %sw.epilog.sw.bb5_crit_edge34
    i32 3072000, label %sw.epilog.sw.bb7_crit_edge
    i32 6144000, label %sw.epilog.sw.bb7_crit_edge35
    i32 38864000, label %sw.epilog.sw.bb7_crit_edge36
    i32 4800000, label %sw.epilog.sw.bb7_crit_edge37
    i32 9600000, label %sw.epilog.sw.bb7_crit_edge38
    i32 19200000, label %sw.epilog.sw.bb7_crit_edge39
    i32 12288000, label %sw.epilog.sw.bb9_crit_edge
    i32 16384000, label %sw.epilog.sw.bb9_crit_edge40
    i32 24576000, label %sw.epilog.sw.bb9_crit_edge41
  ]

sw.epilog.sw.bb9_crit_edge41:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb9

sw.epilog.sw.bb9_crit_edge40:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb9

sw.epilog.sw.bb9_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb9

sw.epilog.sw.bb7_crit_edge39:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb7

sw.epilog.sw.bb7_crit_edge38:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb7

sw.epilog.sw.bb7_crit_edge37:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb7

sw.epilog.sw.bb7_crit_edge36:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb7

sw.epilog.sw.bb7_crit_edge35:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb7

sw.epilog.sw.bb7_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb7

sw.epilog.sw.bb5_crit_edge34:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb5

sw.epilog.sw.bb5_crit_edge33:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb5

sw.epilog.sw.bb5_crit_edge32:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb5

sw.epilog.sw.bb5_crit_edge31:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb5

sw.epilog.sw.bb5_crit_edge30:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb5

sw.epilog.sw.bb5_crit_edge29:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb5

sw.epilog.sw.bb5_crit_edge28:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb5

sw.epilog.sw.bb5_crit_edge27:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb5

sw.epilog.sw.bb5_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb5

sw.epilog.sw.bb3_crit_edge26:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb3

sw.epilog.sw.bb3_crit_edge25:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb3

sw.epilog.sw.bb3_crit_edge24:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb3

sw.epilog.sw.bb3_crit_edge23:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb3

sw.epilog.sw.bb3_crit_edge22:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb3

sw.epilog.sw.bb3_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb3

sw.epilog.sw.epilog12_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog12

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb3:                                           ; preds = %sw.epilog.sw.bb3_crit_edge, %sw.epilog.sw.bb3_crit_edge22, %sw.epilog.sw.bb3_crit_edge23, %sw.epilog.sw.bb3_crit_edge24, %sw.epilog.sw.bb3_crit_edge25, %sw.epilog.sw.bb3_crit_edge26
  br label %sw.epilog12

sw.bb5:                                           ; preds = %sw.epilog.sw.bb5_crit_edge, %sw.epilog.sw.bb5_crit_edge27, %sw.epilog.sw.bb5_crit_edge28, %sw.epilog.sw.bb5_crit_edge29, %sw.epilog.sw.bb5_crit_edge30, %sw.epilog.sw.bb5_crit_edge31, %sw.epilog.sw.bb5_crit_edge32, %sw.epilog.sw.bb5_crit_edge33, %sw.epilog.sw.bb5_crit_edge34
  br label %sw.epilog12

sw.bb7:                                           ; preds = %sw.epilog.sw.bb7_crit_edge, %sw.epilog.sw.bb7_crit_edge35, %sw.epilog.sw.bb7_crit_edge36, %sw.epilog.sw.bb7_crit_edge37, %sw.epilog.sw.bb7_crit_edge38, %sw.epilog.sw.bb7_crit_edge39
  br label %sw.epilog12

sw.bb9:                                           ; preds = %sw.epilog.sw.bb9_crit_edge, %sw.epilog.sw.bb9_crit_edge40, %sw.epilog.sw.bb9_crit_edge41
  br label %sw.epilog12

sw.epilog12:                                      ; preds = %sw.bb9, %sw.bb7, %sw.bb5, %sw.bb3, %sw.epilog.sw.epilog12_crit_edge
  %ssm2518_constraints_12288000.sink = phi ptr [ @ssm2518_constraints_12288000, %sw.bb9 ], [ @ssm2518_constraints_3072000, %sw.bb7 ], [ @ssm2518_constraints_2822000, %sw.bb5 ], [ @ssm2518_constraints_2048000, %sw.bb3 ], [ null, %sw.epilog.sw.epilog12_crit_edge ]
  %constraints10 = getelementptr inbounds %struct.ssm2518, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %constraints10 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %ssm2518_constraints_12288000.sink, ptr %constraints10, align 4
  %sysclk = getelementptr inbounds %struct.ssm2518, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %sysclk to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %freq, ptr %sysclk, align 4
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 0, i32 noundef 32, i32 noundef %val.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog12, %sw.epilog.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %sw.epilog12 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssm2518_set_bias_level(ptr nocapture noundef readonly %component, i32 noundef %level) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %level, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb3
    i32 1, label %sw.bb
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %dapm.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %5 = ptrtoint ptr %dapm.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dapm.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  %enable_gpio.i = getelementptr inbounds %struct.ssm2518, ptr %3, i32 0, i32 4
  %7 = ptrtoint ptr %enable_gpio.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %enable_gpio.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %8)
  %9 = icmp ult i32 %8, 2048
  br i1 %9, label %if.then3.i, label %if.then.ssm2518_set_power.exit_crit_edge

if.then.ssm2518_set_power.exit_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %ssm2518_set_power.exit

if.then3.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %call.i25.i = tail call ptr @gpio_to_desc(i32 noundef %8) #4
  tail call void @gpiod_set_raw_value(ptr noundef %call.i25.i, i32 noundef 1) #4
  br label %ssm2518_set_power.exit

ssm2518_set_power.exit:                           ; preds = %if.then3.i, %if.then.ssm2518_set_power.exit_crit_edge
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  tail call void @regcache_cache_only(ptr noundef %11, i1 noundef zeroext false) #4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  %call.i26.i = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 0, i32 noundef 129, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %3, align 4
  %call14.i = tail call i32 @regcache_sync(ptr noundef %15) #4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %3, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 4
  tail call void @regcache_mark_dirty(ptr noundef %19) #4
  %enable_gpio.i7 = getelementptr inbounds %struct.ssm2518, ptr %3, i32 0, i32 4
  %20 = ptrtoint ptr %enable_gpio.i7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %enable_gpio.i7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %21)
  %22 = icmp ult i32 %21, 2048
  br i1 %22, label %if.then3.i9, label %sw.bb3.ssm2518_set_power.exit10_crit_edge

sw.bb3.ssm2518_set_power.exit10_crit_edge:        ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #6
  br label %ssm2518_set_power.exit10

if.then3.i9:                                      ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #6
  %call.i25.i8 = tail call ptr @gpio_to_desc(i32 noundef %21) #4
  tail call void @gpiod_set_raw_value(ptr noundef %call.i25.i8, i32 noundef 0) #4
  br label %ssm2518_set_power.exit10

ssm2518_set_power.exit10:                         ; preds = %if.then3.i9, %sw.bb3.ssm2518_set_power.exit10_crit_edge
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %3, align 4
  tail call void @regcache_cache_only(ptr noundef %24, i1 noundef zeroext true) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %ssm2518_set_power.exit10, %ssm2518_set_power.exit, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ %call.i26.i, %ssm2518_set_power.exit ], [ 0, %sw.bb.sw.epilog_crit_edge ], [ %call.i.i, %ssm2518_set_power.exit10 ]
  ret i32 %ret.0
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
define internal i32 @ssm2518_set_dai_fmt(ptr nocapture noundef readonly %dai, i32 noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %component = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %and = and i32 %fmt, 61440
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %and)
  %cond = icmp eq i32 %and, 16384
  br i1 %cond, label %sw.epilog, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  %and1 = lshr i32 %fmt, 8
  %6 = and i32 %and1, 15
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %6, label %sw.epilog.cleanup_crit_edge [
    i32 0, label %sw.epilog.sw.epilog7_crit_edge
    i32 3, label %sw.bb2
    i32 2, label %sw.bb3
    i32 4, label %sw.bb4
  ]

sw.epilog.sw.epilog7_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog7

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb2:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog7

sw.bb3:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog7

sw.bb4:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog7

sw.epilog7:                                       ; preds = %sw.bb4, %sw.bb3, %sw.bb2, %sw.epilog.sw.epilog7_crit_edge
  %ctrl2.0 = phi i32 [ 2, %sw.bb4 ], [ 0, %sw.bb3 ], [ 2, %sw.bb2 ], [ %6, %sw.epilog.sw.epilog7_crit_edge ]
  %invert_fclk.0.off0 = phi i1 [ true, %sw.bb4 ], [ true, %sw.bb3 ], [ false, %sw.bb2 ], [ false, %sw.epilog.sw.epilog7_crit_edge ]
  %right_j = getelementptr inbounds %struct.ssm2518, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %right_j to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %right_j, align 4
  %and8 = and i32 %fmt, 15
  %9 = zext i32 %and8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %and8, label %sw.epilog7.cleanup_crit_edge [
    i32 1, label %sw.epilog26
    i32 3, label %sw.bb11
    i32 2, label %sw.bb13
    i32 4, label %sw.bb19
    i32 5, label %sw.bb22
  ]

sw.epilog7.cleanup_crit_edge:                     ; preds = %sw.epilog7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb11:                                          ; preds = %sw.epilog7
  br i1 %invert_fclk.0.off0, label %sw.bb11.sw.epilog26.thread_crit_edge, label %sw.bb11._crit_edge

sw.bb11._crit_edge:                               ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #6
  br label %11

sw.bb11.sw.epilog26.thread_crit_edge:             ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog26.thread

sw.bb13:                                          ; preds = %sw.epilog7
  %10 = ptrtoint ptr %right_j to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %right_j, align 4
  br i1 %invert_fclk.0.off0, label %sw.bb13.sw.epilog26.thread_crit_edge, label %sw.bb13._crit_edge

sw.bb13._crit_edge:                               ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #6
  br label %11

sw.bb13.sw.epilog26.thread_crit_edge:             ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog26.thread

sw.bb19:                                          ; preds = %sw.epilog7
  call void @__sanitizer_cov_trace_pc() #6
  %or20 = or i32 %ctrl2.0, 64
  br label %sw.epilog26.thread

sw.bb22:                                          ; preds = %sw.epilog7
  call void @__sanitizer_cov_trace_pc() #6
  %or23 = or i32 %ctrl2.0, 64
  br label %sw.epilog26.thread

sw.epilog26:                                      ; preds = %sw.epilog7
  br i1 %invert_fclk.0.off0, label %sw.epilog26._crit_edge, label %sw.epilog26.sw.epilog26.thread_crit_edge

sw.epilog26.sw.epilog26.thread_crit_edge:         ; preds = %sw.epilog26
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog26.thread

sw.epilog26._crit_edge:                           ; preds = %sw.epilog26
  call void @__sanitizer_cov_trace_pc() #6
  br label %11

11:                                               ; preds = %sw.epilog26._crit_edge, %sw.bb13._crit_edge, %sw.bb11._crit_edge
  %ctrl1.065 = phi i32 [ 64, %sw.bb13._crit_edge ], [ 0, %sw.epilog26._crit_edge ], [ 32, %sw.bb11._crit_edge ]
  %or2866 = or i32 %ctrl2.0, 32
  br label %sw.epilog26.thread

sw.epilog26.thread:                               ; preds = %11, %sw.epilog26.sw.epilog26.thread_crit_edge, %sw.bb22, %sw.bb19, %sw.bb13.sw.epilog26.thread_crit_edge, %sw.bb11.sw.epilog26.thread_crit_edge
  %ctrl1.063 = phi i32 [ %ctrl1.065, %11 ], [ 0, %sw.epilog26.sw.epilog26.thread_crit_edge ], [ 64, %sw.bb13.sw.epilog26.thread_crit_edge ], [ 32, %sw.bb11.sw.epilog26.thread_crit_edge ], [ 0, %sw.bb19 ], [ 32, %sw.bb22 ]
  %12 = phi i32 [ %or2866, %11 ], [ %ctrl2.0, %sw.epilog26.sw.epilog26.thread_crit_edge ], [ %ctrl2.0, %sw.bb13.sw.epilog26.thread_crit_edge ], [ %ctrl2.0, %sw.bb11.sw.epilog26.thread_crit_edge ], [ %or20, %sw.bb19 ], [ %or23, %sw.bb22 ]
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %5, align 4
  %call29 = tail call i32 @regmap_write(ptr noundef %14, i32 noundef 2, i32 noundef %ctrl1.063) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %sw.epilog26.thread.cleanup_crit_edge

sw.epilog26.thread.cleanup_crit_edge:             ; preds = %sw.epilog26.thread
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end32:                                         ; preds = %sw.epilog26.thread
  call void @__sanitizer_cov_trace_pc() #6
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %5, align 4
  %call34 = tail call i32 @regmap_write(ptr noundef %16, i32 noundef 3, i32 noundef %12) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %sw.epilog26.thread.cleanup_crit_edge, %sw.epilog7.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call34, %if.end32 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ -22, %sw.epilog7.cleanup_crit_edge ], [ %call29, %sw.epilog26.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssm2518_set_tdm_slot(ptr nocapture noundef readonly %dai, i32 noundef %tx_mask, i32 noundef %rx_mask, i32 noundef %slots, i32 noundef %width) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %component = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slots)
  %cmp = icmp eq i32 %slots, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 2, i32 noundef 28, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tx_mask)
  %cmp2 = icmp eq i32 %tx_mask, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rx_mask)
  %cmp3.not = icmp ne i32 %rx_mask, 0
  %or.cond.not = or i1 %cmp2, %cmp3.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %slots)
  %cmp6 = icmp eq i32 %slots, 1
  %or.cond88 = or i1 %or.cond.not, %cmp6
  br i1 %or.cond88, label %if.end.cleanup_crit_edge, label %if.else

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.else:                                          ; preds = %if.end
  %8 = tail call i32 @llvm.cttz.i32(i32 %tx_mask, i1 false) #4, !range !231
  %shl = shl nuw i32 1, %8
  %neg = xor i32 %shl, -1
  %and = and i32 %neg, %tx_mask
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp12 = icmp eq i32 %and, 0
  br i1 %cmp12, label %if.else.if.end20_crit_edge, label %if.else14

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end20

if.else14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %9 = tail call i32 @llvm.cttz.i32(i32 %and, i1 true) #4, !range !231
  %shl16 = shl nuw i32 1, %9
  %neg17 = xor i32 %shl16, -1
  %and18 = and i32 %and, %neg17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %phi.cmp = icmp eq i32 %and18, 0
  br label %if.end20

if.end20:                                         ; preds = %if.else14, %if.else.if.end20_crit_edge
  %tx_mask.addr.0 = phi i1 [ %phi.cmp, %if.else14 ], [ true, %if.else.if.end20_crit_edge ]
  %right_slot.0 = phi i32 [ %9, %if.else14 ], [ %8, %if.else.if.end20_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %slots)
  %cmp23.not = icmp slt i32 %8, %slots
  %or.cond77 = select i1 %tx_mask.addr.0, i1 %cmp23.not, i1 false
  call void @__sanitizer_cov_trace_cmp4(i32 %right_slot.0, i32 %slots)
  %cmp25.not = icmp slt i32 %right_slot.0, %slots
  %or.cond78 = select i1 %or.cond77, i1 %cmp25.not, i1 false
  br i1 %or.cond78, label %if.end27, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end27:                                         ; preds = %if.end20
  %10 = zext i32 %width to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %width, label %if.end27.cleanup_crit_edge [
    i32 16, label %if.end27.sw.epilog_crit_edge
    i32 24, label %sw.bb28
    i32 32, label %sw.bb29
  ]

if.end27.sw.epilog_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb28:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb29:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb29, %sw.bb28, %if.end27.sw.epilog_crit_edge
  %ctrl2.0 = phi i32 [ 0, %sw.bb29 ], [ 4, %sw.bb28 ], [ 8, %if.end27.sw.epilog_crit_edge ]
  %11 = add nsw i32 %slots, -2
  %12 = tail call i32 @llvm.fshl.i32(i32 %11, i32 %11, i32 31)
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %12)
  %13 = icmp ult i32 %12, 8
  br i1 %13, label %switch.hole_check, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

switch.hole_check:                                ; preds = %sw.epilog
  %switch.maskindex = trunc i32 %12 to i8
  %switch.shifted = lshr i8 -117, %switch.maskindex
  %14 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %switch.lobit.not = icmp eq i8 %14, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.ssm2518_set_tdm_slot, i32 0, i32 %12
  %15 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %15)
  %switch.load = load i32, ptr %switch.gep, align 4
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %5, align 4
  %shl39 = shl nuw nsw i32 %right_slot.0, 4
  %or = or i32 %shl39, %8
  %call40 = tail call i32 @regmap_write(ptr noundef %17, i32 noundef 4, i32 noundef %or) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool.not = icmp eq i32 %call40, 0
  br i1 %tobool.not, label %if.end42, label %switch.lookup.cleanup_crit_edge

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end42:                                         ; preds = %switch.lookup
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %5, align 4
  %call.i79 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 2, i32 noundef 28, i32 noundef %switch.load, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i79)
  %tobool45.not = icmp eq i32 %call.i79, 0
  br i1 %tobool45.not, label %if.end47, label %if.end42.cleanup_crit_edge

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end47:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #6
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %5, align 4
  %call.i80 = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 3, i32 noundef 12, i32 noundef %ctrl2.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %if.end42.cleanup_crit_edge, %switch.lookup.cleanup_crit_edge, %switch.hole_check.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call.i, %if.then ], [ %call.i80, %if.end47 ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end20.cleanup_crit_edge ], [ -22, %if.end27.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ %call40, %switch.lookup.cleanup_crit_edge ], [ %call.i79, %if.end42.cleanup_crit_edge ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssm2518_mute(ptr nocapture noundef readonly %dai, i32 noundef %mute, i32 noundef %direction) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %component = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mute)
  %tobool.not = icmp ne i32 %mute, 0
  %. = zext i1 %tobool.not to i32
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 7, i32 noundef 1, i32 noundef %., ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssm2518_startup(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %component = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %constraints = getelementptr inbounds %struct.ssm2518, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %constraints to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %constraints, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %8 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %runtime, align 4
  %call2 = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %9, i32 noundef 0, i32 noundef 11, ptr noundef nonnull %7) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ssm2518_hw_params(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %7, label %entry.cleanup_crit_edge [
    i32 8000, label %entry.for.end.i_crit_edge
    i32 11025, label %for.end.fold.split.i
    i32 12000, label %for.end.fold.split38.i
    i32 16000, label %for.end.fold.split39.i
    i32 24000, label %for.end.fold.split40.i
    i32 22050, label %for.end.fold.split41.i
    i32 32000, label %for.end.fold.split42.i
    i32 44100, label %for.end.fold.split43.i
    i32 48000, label %for.end.fold.split44.i
    i32 96000, label %for.end.fold.split45.i
  ]

entry.for.end.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.end.fold.split.i:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

for.end.fold.split38.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

for.end.fold.split39.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

for.end.fold.split40.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

for.end.fold.split41.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

for.end.fold.split42.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

for.end.fold.split43.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

for.end.fold.split44.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

for.end.fold.split45.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.fold.split45.i, %for.end.fold.split44.i, %for.end.fold.split43.i, %for.end.fold.split42.i, %for.end.fold.split41.i, %for.end.fold.split40.i, %for.end.fold.split39.i, %for.end.fold.split38.i, %for.end.fold.split.i, %entry.for.end.i_crit_edge
  %i.032.lcssa.i = phi i32 [ 0, %entry.for.end.i_crit_edge ], [ 1, %for.end.fold.split.i ], [ 2, %for.end.fold.split38.i ], [ 3, %for.end.fold.split39.i ], [ 4, %for.end.fold.split40.i ], [ 5, %for.end.fold.split41.i ], [ 6, %for.end.fold.split42.i ], [ 7, %for.end.fold.split43.i ], [ 8, %for.end.fold.split44.i ], [ 9, %for.end.fold.split45.i ]
  %sysclks4.i = getelementptr [10 x %struct.ssm2518_mcs_lut], ptr @ssm2518_mcs_lut, i32 0, i32 %i.032.lcssa.i, i32 1
  %9 = ptrtoint ptr %sysclks4.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sysclks4.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool9.not33.i = icmp eq i32 %12, 0
  br i1 %tobool9.not33.i, label %for.end.i.cleanup_crit_edge, label %for.body10.lr.ph.i

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body10.lr.ph.i:                               ; preds = %for.end.i
  %sysclk.i = getelementptr inbounds %struct.ssm2518, ptr %5, i32 0, i32 2
  %13 = ptrtoint ptr %sysclk.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sysclk.i, align 4
  br label %for.body10.i

for.body10.i:                                     ; preds = %for.inc15.i.for.body10.i_crit_edge, %for.body10.lr.ph.i
  %15 = phi i32 [ %12, %for.body10.lr.ph.i ], [ %17, %for.inc15.i.for.body10.i_crit_edge ]
  %i.134.i = phi i32 [ 0, %for.body10.lr.ph.i ], [ %inc16.i, %for.inc15.i.for.body10.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %14)
  %cmp12.i = icmp eq i32 %15, %14
  br i1 %cmp12.i, label %ssm2518_lookup_mcs.exit, label %for.inc15.i

for.inc15.i:                                      ; preds = %for.body10.i
  %inc16.i = add i32 %i.134.i, 1
  %arrayidx8.i = getelementptr i32, ptr %10, i32 %inc16.i
  %16 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx8.i, align 4
  %tobool9.not.i = icmp eq i32 %17, 0
  br i1 %tobool9.not.i, label %for.inc15.i.cleanup_crit_edge, label %for.inc15.i.for.body10.i_crit_edge

for.inc15.i.for.body10.i_crit_edge:               ; preds = %for.inc15.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body10.i

for.inc15.i.cleanup_crit_edge:                    ; preds = %for.inc15.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

ssm2518_lookup_mcs.exit:                          ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.134.i)
  %cmp = icmp slt i32 %i.134.i, 0
  br i1 %cmp, label %ssm2518_lookup_mcs.exit.cleanup_crit_edge, label %if.end

ssm2518_lookup_mcs.exit.cleanup_crit_edge:        ; preds = %ssm2518_lookup_mcs.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %ssm2518_lookup_mcs.exit
  %18 = add i32 %7, -8000
  call void @__sanitizer_cov_trace_const_cmp4(i32 4001, i32 %18)
  %19 = icmp ult i32 %18, 4001
  br i1 %19, label %if.end.if.end25_crit_edge, label %if.else

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

if.else:                                          ; preds = %if.end
  %20 = add i32 %7, -16000
  call void @__sanitizer_cov_trace_const_cmp4(i32 8001, i32 %20)
  %21 = icmp ult i32 %20, 8001
  br i1 %21, label %if.else.if.end25_crit_edge, label %if.else11

if.else.if.end25_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

if.else11:                                        ; preds = %if.else
  %22 = add i32 %7, -32000
  call void @__sanitizer_cov_trace_const_cmp4(i32 16001, i32 %22)
  %23 = icmp ult i32 %22, 16001
  br i1 %23, label %if.else11.if.end25_crit_edge, label %if.else16

if.else11.if.end25_crit_edge:                     ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

if.else16:                                        ; preds = %if.else11
  %24 = add i32 %7, -64000
  call void @__sanitizer_cov_trace_const_cmp4(i32 32001, i32 %24)
  %25 = icmp ult i32 %24, 32001
  br i1 %25, label %if.else16.if.end25_crit_edge, label %if.else16.cleanup_crit_edge

if.else16.cleanup_crit_edge:                      ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.else16.if.end25_crit_edge:                     ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

if.end25:                                         ; preds = %if.else16.if.end25_crit_edge, %if.else11.if.end25_crit_edge, %if.else.if.end25_crit_edge, %if.end.if.end25_crit_edge
  %ctrl1.0 = phi i32 [ 0, %if.end.if.end25_crit_edge ], [ 1, %if.else.if.end25_crit_edge ], [ 2, %if.else11.if.end25_crit_edge ], [ 3, %if.else16.if.end25_crit_edge ]
  %right_j = getelementptr inbounds %struct.ssm2518, ptr %5, i32 0, i32 1
  %26 = ptrtoint ptr %right_j to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %right_j, align 4, !range !232
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not = icmp eq i8 %27, 0
  br i1 %tobool.not, label %if.end25.if.end31_crit_edge, label %if.then26

if.end25.if.end31_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end31

if.then26:                                        ; preds = %if.end25
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i.i.i = icmp eq i32 %29, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %if.then26.if.then.i.i.i_crit_edge

if.then26.if.then.i.i.i_crit_edge:                ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %if.then26.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %if.then26.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %29, %if.then26.if.then.i.i.i_crit_edge ], [ %32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %30 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #4, !range !231
  %add.i.i.i = or i32 %30, %i.09.lcssa.i.i.i
  br label %params_width.exit

for.inc.i.i.i:                                    ; preds = %if.then26
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %31 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.1.i.i.i = icmp eq i32 %32, 0
  br i1 %tobool.not.1.i.i.i, label %for.inc.i.i.i.params_width.exit_crit_edge, label %for.inc.i.i.i.if.then.i.i.i_crit_edge

for.inc.i.i.i.if.then.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then.i.i.i

for.inc.i.i.i.params_width.exit_crit_edge:        ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %params_width.exit

params_width.exit:                                ; preds = %for.inc.i.i.i.params_width.exit_crit_edge, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ 0, %for.inc.i.i.i.params_width.exit_crit_edge ]
  %call1.i = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i) #4
  %33 = zext i32 %call1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %call1.i, label %params_width.exit.cleanup_crit_edge [
    i32 16, label %sw.bb
    i32 24, label %sw.bb28
  ]

params_width.exit.cleanup_crit_edge:              ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb:                                            ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #6
  %or = or i32 %ctrl1.0, 96
  br label %if.end31

sw.bb28:                                          ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #6
  %or29 = or i32 %ctrl1.0, 64
  br label %if.end31

if.end31:                                         ; preds = %sw.bb28, %sw.bb, %if.end25.if.end31_crit_edge
  %ctrl1.2 = phi i32 [ %ctrl1.0, %if.end25.if.end31_crit_edge ], [ %or29, %sw.bb28 ], [ %or, %sw.bb ]
  %ctrl1_mask.0 = phi i32 [ 3, %if.end25.if.end31_crit_edge ], [ 99, %sw.bb28 ], [ 99, %sw.bb ]
  %34 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %5, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %35, i32 noundef 1, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp33 = icmp slt i32 %call.i, 0
  br i1 %cmp33, label %if.end31.cleanup_crit_edge, label %if.end35

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end35:                                         ; preds = %if.end31
  %36 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %5, align 4
  %call.i73 = tail call i32 @regmap_update_bits_base(ptr noundef %37, i32 noundef 2, i32 noundef %ctrl1_mask.0, i32 noundef %ctrl1.2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i73)
  %cmp38 = icmp slt i32 %call.i73, 0
  br i1 %cmp38, label %if.end35.cleanup_crit_edge, label %if.end40

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end40:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #6
  %38 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %5, align 4
  %shl = shl nuw i32 %i.134.i, 1
  %call.i74 = tail call i32 @regmap_update_bits_base(ptr noundef %39, i32 noundef 0, i32 noundef 30, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.end35.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %params_width.exit.cleanup_crit_edge, %if.else16.cleanup_crit_edge, %ssm2518_lookup_mcs.exit.cleanup_crit_edge, %for.inc15.i.cleanup_crit_edge, %for.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i74, %if.end40 ], [ %i.134.i, %ssm2518_lookup_mcs.exit.cleanup_crit_edge ], [ -22, %if.else16.cleanup_crit_edge ], [ -22, %params_width.exit.cleanup_crit_edge ], [ %call.i, %if.end31.cleanup_crit_edge ], [ %call.i73, %if.end35.cleanup_crit_edge ], [ -22, %for.end.i.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.inc15.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_list(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 125)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 125)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220}
!llvm.module.flags = !{!222, !223, !224, !225, !226, !227, !228, !229}
!llvm.ident = !{!230}

!0 = !{ptr @__initcall__kmod_snd_soc_ssm2518__294_821_ssm2518_driver_init6, !1, !"__initcall__kmod_snd_soc_ssm2518__294_821_ssm2518_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/ssm2518.c", i32 821, i32 1}
!2 = !{ptr @__exitcall_ssm2518_driver_exit, !1, !"__exitcall_ssm2518_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description295, !4, !"__UNIQUE_ID_description295", i1 false, i1 false}
!4 = !{!"../sound/soc/codecs/ssm2518.c", i32 823, i32 1}
!5 = !{ptr @__UNIQUE_ID_author296, !6, !"__UNIQUE_ID_author296", i1 false, i1 false}
!6 = !{!"../sound/soc/codecs/ssm2518.c", i32 824, i32 1}
!7 = !{ptr @__UNIQUE_ID_file297, !8, !"__UNIQUE_ID_file297", i1 false, i1 false}
!8 = !{!"../sound/soc/codecs/ssm2518.c", i32 825, i32 1}
!9 = !{ptr @__UNIQUE_ID_license298, !8, !"__UNIQUE_ID_license298", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/codecs/ssm2518.c", i32 815, i32 11}
!12 = !{ptr @ssm2518_driver, !13, !"ssm2518_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/ssm2518.c", i32 813, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/ssm2518.c", i32 761, i32 26}
!16 = !{ptr @ssm2518_i2c_probe._key, !17, !"_key", i1 false, i1 false}
!17 = !{!"../sound/soc/codecs/ssm2518.c", i32 768, i32 20}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../include/linux/of_gpio.h", i32 121, i32 37}
!21 = !{ptr @ssm2518_regmap_config, !22, !"ssm2518_regmap_config", i1 false, i1 false}
!22 = !{!"../sound/soc/codecs/ssm2518.c", i32 727, i32 35}
!23 = !{ptr @ssm2518_reg_defaults, !24, !"ssm2518_reg_defaults", i1 false, i1 false}
!24 = !{!"../sound/soc/codecs/ssm2518.c", i32 120, i32 33}
!25 = !{ptr @ssm2518_component_driver, !26, !"ssm2518_component_driver", i1 false, i1 false}
!26 = !{!"../sound/soc/codecs/ssm2518.c", i32 713, i32 46}
!27 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/soc/codecs/ssm2518.c", i32 187, i32 2}
!29 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/soc/codecs/ssm2518.c", i32 189, i32 2}
!31 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/soc/codecs/ssm2518.c", i32 191, i32 2}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/soc/codecs/ssm2518.c", i32 193, i32 2}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/soc/codecs/ssm2518.c", i32 194, i32 2}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/soc/codecs/ssm2518.c", i32 196, i32 2}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/soc/codecs/ssm2518.c", i32 197, i32 2}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/soc/codecs/ssm2518.c", i32 198, i32 2}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/soc/codecs/ssm2518.c", i32 199, i32 2}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/soc/codecs/ssm2518.c", i32 200, i32 2}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/soc/codecs/ssm2518.c", i32 202, i32 2}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/soc/codecs/ssm2518.c", i32 204, i32 2}
!51 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/soc/codecs/ssm2518.c", i32 206, i32 2}
!53 = !{ptr @.str.29, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/soc/codecs/ssm2518.c", i32 208, i32 2}
!55 = !{ptr @.str.31, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/soc/codecs/ssm2518.c", i32 210, i32 2}
!57 = !{ptr @.str.33, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/soc/codecs/ssm2518.c", i32 212, i32 2}
!59 = !{ptr @.str.35, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/soc/codecs/ssm2518.c", i32 214, i32 2}
!61 = !{ptr @.str.37, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/soc/codecs/ssm2518.c", i32 217, i32 2}
!63 = !{ptr @.str.38, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/soc/codecs/ssm2518.c", i32 219, i32 2}
!65 = !{ptr @.str.39, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/soc/codecs/ssm2518.c", i32 221, i32 2}
!67 = !{ptr @.str.40, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/soc/codecs/ssm2518.c", i32 222, i32 2}
!69 = !{ptr @.str.41, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/soc/codecs/ssm2518.c", i32 223, i32 2}
!71 = !{ptr @.str.42, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/soc/codecs/ssm2518.c", i32 224, i32 2}
!73 = !{ptr @.str.43, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/soc/codecs/ssm2518.c", i32 226, i32 2}
!75 = !{ptr @ssm2518_snd_controls, !76, !"ssm2518_snd_controls", i1 false, i1 false}
!76 = !{!"../sound/soc/codecs/ssm2518.c", i32 186, i32 38}
!77 = !{ptr @ssm2518_vol_tlv, !78, !"ssm2518_vol_tlv", i1 false, i1 false}
!78 = !{!"../sound/soc/codecs/ssm2518.c", i32 142, i32 14}
!79 = !{ptr @ssm2518_limiter_tlv, !80, !"ssm2518_limiter_tlv", i1 false, i1 false}
!80 = !{!"../sound/soc/codecs/ssm2518.c", i32 148, i32 14}
!81 = !{ptr @ssm2518_compressor_tlv, !82, !"ssm2518_compressor_tlv", i1 false, i1 false}
!82 = !{!"../sound/soc/codecs/ssm2518.c", i32 143, i32 14}
!83 = !{ptr @ssm2518_expander_tlv, !84, !"ssm2518_expander_tlv", i1 false, i1 false}
!84 = !{!"../sound/soc/codecs/ssm2518.c", i32 144, i32 14}
!85 = !{ptr @ssm2518_noise_gate_tlv, !86, !"ssm2518_noise_gate_tlv", i1 false, i1 false}
!86 = !{!"../sound/soc/codecs/ssm2518.c", i32 145, i32 14}
!87 = !{ptr @ssm2518_post_drc_tlv, !88, !"ssm2518_post_drc_tlv", i1 false, i1 false}
!88 = !{!"../sound/soc/codecs/ssm2518.c", i32 146, i32 14}
!89 = !{ptr @ssm2518_drc_peak_detector_attack_time_enum, !90, !"ssm2518_drc_peak_detector_attack_time_enum", i1 false, i1 false}
!90 = !{!"../sound/soc/codecs/ssm2518.c", i32 171, i32 8}
!91 = !{ptr @.str.44, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../sound/soc/codecs/ssm2518.c", i32 154, i32 2}
!93 = !{ptr @.str.45, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/soc/codecs/ssm2518.c", i32 154, i32 10}
!95 = !{ptr @.str.46, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/soc/codecs/ssm2518.c", i32 154, i32 20}
!97 = !{ptr @.str.47, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../sound/soc/codecs/ssm2518.c", i32 154, i32 31}
!99 = !{ptr @.str.48, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/soc/codecs/ssm2518.c", i32 154, i32 42}
!101 = !{ptr @.str.49, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../sound/soc/codecs/ssm2518.c", i32 154, i32 53}
!103 = !{ptr @.str.50, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../sound/soc/codecs/ssm2518.c", i32 154, i32 63}
!105 = !{ptr @.str.51, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../sound/soc/codecs/ssm2518.c", i32 155, i32 2}
!107 = !{ptr @.str.52, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../sound/soc/codecs/ssm2518.c", i32 155, i32 10}
!109 = !{ptr @.str.53, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../sound/soc/codecs/ssm2518.c", i32 155, i32 19}
!111 = !{ptr @.str.54, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../sound/soc/codecs/ssm2518.c", i32 155, i32 28}
!113 = !{ptr @.str.55, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../sound/soc/codecs/ssm2518.c", i32 155, i32 37}
!115 = !{ptr @.str.56, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../sound/soc/codecs/ssm2518.c", i32 155, i32 46}
!117 = !{ptr @.str.57, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../sound/soc/codecs/ssm2518.c", i32 155, i32 56}
!119 = !{ptr @.str.58, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../sound/soc/codecs/ssm2518.c", i32 156, i32 2}
!121 = !{ptr @.str.59, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../sound/soc/codecs/ssm2518.c", i32 156, i32 12}
!123 = !{ptr @ssm2518_drc_peak_detector_attack_time_text, !124, !"ssm2518_drc_peak_detector_attack_time_text", i1 false, i1 false}
!124 = !{!"../sound/soc/codecs/ssm2518.c", i32 153, i32 27}
!125 = !{ptr @ssm2518_drc_peak_detector_release_time_enum, !126, !"ssm2518_drc_peak_detector_release_time_enum", i1 false, i1 false}
!126 = !{!"../sound/soc/codecs/ssm2518.c", i32 173, i32 8}
!127 = !{ptr @.str.60, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../sound/soc/codecs/ssm2518.c", i32 161, i32 43}
!129 = !{ptr @.str.61, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../sound/soc/codecs/ssm2518.c", i32 161, i32 54}
!131 = !{ptr @.str.62, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../sound/soc/codecs/ssm2518.c", i32 162, i32 2}
!133 = !{ptr @.str.63, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../sound/soc/codecs/ssm2518.c", i32 162, i32 14}
!135 = !{ptr @ssm2518_drc_peak_detector_release_time_text, !136, !"ssm2518_drc_peak_detector_release_time_text", i1 false, i1 false}
!136 = !{!"../sound/soc/codecs/ssm2518.c", i32 159, i32 27}
!137 = !{ptr @ssm2518_drc_attack_time_enum, !138, !"ssm2518_drc_attack_time_enum", i1 false, i1 false}
!138 = !{!"../sound/soc/codecs/ssm2518.c", i32 175, i32 8}
!139 = !{ptr @ssm2518_drc_decay_time_enum, !140, !"ssm2518_drc_decay_time_enum", i1 false, i1 false}
!140 = !{!"../sound/soc/codecs/ssm2518.c", i32 177, i32 8}
!141 = !{ptr @ssm2518_drc_hold_time_enum, !142, !"ssm2518_drc_hold_time_enum", i1 false, i1 false}
!142 = !{!"../sound/soc/codecs/ssm2518.c", i32 179, i32 8}
!143 = !{ptr @.str.64, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../sound/soc/codecs/ssm2518.c", i32 166, i32 10}
!145 = !{ptr @.str.65, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../sound/soc/codecs/ssm2518.c", i32 166, i32 21}
!147 = !{ptr @.str.66, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../sound/soc/codecs/ssm2518.c", i32 166, i32 32}
!149 = !{ptr @.str.67, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../sound/soc/codecs/ssm2518.c", i32 166, i32 43}
!151 = !{ptr @.str.68, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../sound/soc/codecs/ssm2518.c", i32 166, i32 54}
!153 = !{ptr @.str.69, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../sound/soc/codecs/ssm2518.c", i32 167, i32 2}
!155 = !{ptr @.str.70, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../sound/soc/codecs/ssm2518.c", i32 167, i32 14}
!157 = !{ptr @.str.71, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../sound/soc/codecs/ssm2518.c", i32 167, i32 26}
!159 = !{ptr @.str.72, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../sound/soc/codecs/ssm2518.c", i32 167, i32 38}
!161 = !{ptr @.str.73, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../sound/soc/codecs/ssm2518.c", i32 167, i32 51}
!163 = !{ptr @.str.74, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../sound/soc/codecs/ssm2518.c", i32 168, i32 2}
!165 = !{ptr @.str.75, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../sound/soc/codecs/ssm2518.c", i32 168, i32 15}
!167 = !{ptr @ssm2518_drc_hold_time_text, !168, !"ssm2518_drc_hold_time_text", i1 false, i1 false}
!168 = !{!"../sound/soc/codecs/ssm2518.c", i32 165, i32 27}
!169 = !{ptr @ssm2518_drc_noise_gate_hold_time_enum, !170, !"ssm2518_drc_noise_gate_hold_time_enum", i1 false, i1 false}
!170 = !{!"../sound/soc/codecs/ssm2518.c", i32 181, i32 8}
!171 = !{ptr @ssm2518_drc_rms_averaging_time_enum, !172, !"ssm2518_drc_rms_averaging_time_enum", i1 false, i1 false}
!172 = !{!"../sound/soc/codecs/ssm2518.c", i32 183, i32 8}
!173 = !{ptr @.str.76, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../sound/soc/codecs/ssm2518.c", i32 230, i32 2}
!175 = !{ptr @.str.77, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @.str.78, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../sound/soc/codecs/ssm2518.c", i32 231, i32 2}
!178 = !{ptr @.str.79, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../sound/soc/codecs/ssm2518.c", i32 233, i32 2}
!180 = !{ptr @.str.80, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../sound/soc/codecs/ssm2518.c", i32 234, i32 2}
!182 = !{ptr @ssm2518_dapm_widgets, !183, !"ssm2518_dapm_widgets", i1 false, i1 false}
!183 = !{!"../sound/soc/codecs/ssm2518.c", i32 229, i32 41}
!184 = !{ptr @ssm2518_routes, !185, !"ssm2518_routes", i1 false, i1 false}
!185 = !{!"../sound/soc/codecs/ssm2518.c", i32 237, i32 40}
!186 = !{ptr @ssm2518_constraints_2048000, !187, !"ssm2518_constraints_2048000", i1 false, i1 false}
!187 = !{!"../sound/soc/codecs/ssm2518.c", i32 279, i32 48}
!188 = !{ptr @ssm2518_rates_2048000, !189, !"ssm2518_rates_2048000", i1 false, i1 false}
!189 = !{!"../sound/soc/codecs/ssm2518.c", i32 275, i32 27}
!190 = !{ptr @ssm2518_constraints_2822000, !191, !"ssm2518_constraints_2822000", i1 false, i1 false}
!191 = !{!"../sound/soc/codecs/ssm2518.c", i32 288, i32 48}
!192 = !{ptr @ssm2518_rates_2822000, !193, !"ssm2518_rates_2822000", i1 false, i1 false}
!193 = !{!"../sound/soc/codecs/ssm2518.c", i32 284, i32 27}
!194 = !{ptr @ssm2518_constraints_3072000, !195, !"ssm2518_constraints_3072000", i1 false, i1 false}
!195 = !{!"../sound/soc/codecs/ssm2518.c", i32 297, i32 48}
!196 = !{ptr @ssm2518_rates_3072000, !197, !"ssm2518_rates_3072000", i1 false, i1 false}
!197 = !{!"../sound/soc/codecs/ssm2518.c", i32 293, i32 27}
!198 = !{ptr @ssm2518_constraints_12288000, !199, !"ssm2518_constraints_12288000", i1 false, i1 false}
!199 = !{!"../sound/soc/codecs/ssm2518.c", i32 306, i32 48}
!200 = !{ptr @ssm2518_rates_12288000, !201, !"ssm2518_rates_12288000", i1 false, i1 false}
!201 = !{!"../sound/soc/codecs/ssm2518.c", i32 302, i32 27}
!202 = !{ptr @.str.82, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../sound/soc/codecs/ssm2518.c", i32 633, i32 10}
!204 = !{ptr @.str.83, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../sound/soc/codecs/ssm2518.c", i32 635, i32 18}
!206 = !{ptr @ssm2518_dai, !207, !"ssm2518_dai", i1 false, i1 false}
!207 = !{!"../sound/soc/codecs/ssm2518.c", i32 632, i32 34}
!208 = !{ptr @ssm2518_dai_ops, !209, !"ssm2518_dai_ops", i1 false, i1 false}
!209 = !{!"../sound/soc/codecs/ssm2518.c", i32 623, i32 37}
!210 = !{ptr @ssm2518_mcs_lut, !211, !"ssm2518_mcs_lut", i1 false, i1 false}
!211 = !{!"../sound/soc/codecs/ssm2518.c", i32 262, i32 37}
!212 = !{ptr @ssm2518_sysclks_2048000, !213, !"ssm2518_sysclks_2048000", i1 false, i1 false}
!213 = !{!"../sound/soc/codecs/ssm2518.c", i32 247, i32 27}
!214 = !{ptr @ssm2518_sysclks_2822000, !215, !"ssm2518_sysclks_2822000", i1 false, i1 false}
!215 = !{!"../sound/soc/codecs/ssm2518.c", i32 252, i32 27}
!216 = !{ptr @ssm2518_sysclks_3072000, !217, !"ssm2518_sysclks_3072000", i1 false, i1 false}
!217 = !{!"../sound/soc/codecs/ssm2518.c", i32 257, i32 27}
!218 = !{ptr @ssm2518_dt_ids, !219, !"ssm2518_dt_ids", i1 false, i1 false}
!219 = !{!"../sound/soc/codecs/ssm2518.c", i32 800, i32 34}
!220 = !{ptr @ssm2518_i2c_ids, !221, !"ssm2518_i2c_ids", i1 false, i1 false}
!221 = !{!"../sound/soc/codecs/ssm2518.c", i32 807, i32 35}
!222 = !{i32 1, !"wchar_size", i32 2}
!223 = !{i32 1, !"min_enum_size", i32 4}
!224 = !{i32 8, !"branch-target-enforcement", i32 0}
!225 = !{i32 8, !"sign-return-address", i32 0}
!226 = !{i32 8, !"sign-return-address-all", i32 0}
!227 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!228 = !{i32 7, !"uwtable", i32 1}
!229 = !{i32 7, !"frame-pointer", i32 2}
!230 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!231 = !{i32 0, i32 33}
!232 = !{i8 0, i8 2}
