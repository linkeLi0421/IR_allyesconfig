; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/nau8810.c_pt.bc'
source_filename = "../sound/soc/codecs/nau8810.c"
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
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8, %struct.snd_soc_dobj }
%struct.soc_bytes_ext = type { i32, %struct.snd_soc_dobj, ptr, ptr }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.atomic_t = type { i32 }
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
%struct.nau8810 = type { ptr, ptr, %struct.nau8810_pll, i32, i32 }
%struct.nau8810_pll = type { i32, i32, i32, i32 }
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
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@__initcall__kmod_snd_soc_nau8810__296_923_nau8810_i2c_driver_init6 = internal global ptr @nau8810_i2c_driver_init, section ".initcall6.init", align 4
@nau8810_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @nau8810_i2c_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @nau8810_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @nau8810_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_nau8810_i2c_driver_exit = internal global ptr @nau8810_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description297 = internal constant [48 x i8] c"snd_soc_nau8810.description=ASoC NAU8810 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author298 = internal constant [54 x i8] c"snd_soc_nau8810.author=David Lin <ctlin0@nuvoton.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file299 = internal constant [54 x i8] c"snd_soc_nau8810.file=sound/soc/codecs/snd-soc-nau8810\00", section ".modinfo", align 1
@__UNIQUE_ID_license300 = internal constant [31 x i8] c"snd_soc_nau8810.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"nau8810\00", [24 x i8] zeroinitializer }, align 32
@nau8810_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nuvoton,nau8810\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nuvoton,nau8812\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nuvoton,nau8814\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@nau8810_i2c_id = internal constant { [4 x %struct.i2c_device_id], [32 x i8] } { [4 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"nau8810\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"nau8812\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id { [20 x i8] c"nau8814\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@nau8810_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@nau8810_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 7, i32 0, i32 0, i32 9, ptr @nau8810_writeable_reg, ptr @nau8810_readable_reg, ptr @nau8810_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 79, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nau8810_reg_defaults, i32 54, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"nau8810:885:(&nau8810_regmap_config)->lock\00", [53 x i8] zeroinitializer }, align 32
@nau8810_component_driver = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @nau8810_snd_controls, i32 41, ptr @nau8810_dapm_widgets, i32 19, ptr @nau8810_dapm_routes, i32 25, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nau8810_set_bias_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 124, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@nau8810_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr @.str.138, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @nau8810_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.86, i64 68719477828, i32 254, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.87, i64 68719477828, i32 254, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 -128, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@nau8810_reg_defaults = internal constant { [54 x %struct.reg_default], [112 x i8] } { [54 x %struct.reg_default] [%struct.reg_default { i32 1, i32 0 }, %struct.reg_default { i32 2, i32 0 }, %struct.reg_default { i32 3, i32 0 }, %struct.reg_default { i32 4, i32 80 }, %struct.reg_default { i32 5, i32 0 }, %struct.reg_default { i32 6, i32 320 }, %struct.reg_default { i32 7, i32 0 }, %struct.reg_default { i32 10, i32 0 }, %struct.reg_default { i32 11, i32 255 }, %struct.reg_default { i32 14, i32 256 }, %struct.reg_default { i32 15, i32 255 }, %struct.reg_default { i32 18, i32 300 }, %struct.reg_default { i32 19, i32 44 }, %struct.reg_default { i32 20, i32 44 }, %struct.reg_default { i32 21, i32 44 }, %struct.reg_default { i32 22, i32 44 }, %struct.reg_default { i32 24, i32 50 }, %struct.reg_default { i32 25, i32 0 }, %struct.reg_default { i32 27, i32 0 }, %struct.reg_default { i32 28, i32 0 }, %struct.reg_default { i32 29, i32 0 }, %struct.reg_default { i32 30, i32 0 }, %struct.reg_default { i32 32, i32 56 }, %struct.reg_default { i32 33, i32 11 }, %struct.reg_default { i32 34, i32 50 }, %struct.reg_default { i32 35, i32 0 }, %struct.reg_default { i32 36, i32 8 }, %struct.reg_default { i32 37, i32 12 }, %struct.reg_default { i32 38, i32 147 }, %struct.reg_default { i32 39, i32 233 }, %struct.reg_default { i32 40, i32 0 }, %struct.reg_default { i32 44, i32 3 }, %struct.reg_default { i32 45, i32 16 }, %struct.reg_default { i32 47, i32 256 }, %struct.reg_default { i32 49, i32 2 }, %struct.reg_default { i32 50, i32 1 }, %struct.reg_default { i32 54, i32 57 }, %struct.reg_default { i32 56, i32 1 }, %struct.reg_default { i32 58, i32 0 }, %struct.reg_default { i32 59, i32 0 }, %struct.reg_default { i32 60, i32 32 }, %struct.reg_default { i32 62, i32 0 }, %struct.reg_default { i32 63, i32 26 }, %struct.reg_default { i32 64, i32 202 }, %struct.reg_default { i32 65, i32 292 }, %struct.reg_default { i32 69, i32 1 }, %struct.reg_default { i32 70, i32 16 }, %struct.reg_default { i32 71, i32 0 }, %struct.reg_default { i32 73, i32 0 }, %struct.reg_default { i32 75, i32 0 }, %struct.reg_default { i32 76, i32 0 }, %struct.reg_default { i32 77, i32 0 }, %struct.reg_default { i32 78, i32 0 }, %struct.reg_default { i32 79, i32 0 }], [112 x i8] zeroinitializer }, align 32
@nau8810_snd_controls = internal constant { [41 x %struct.snd_kcontrol_new], [496 x i8] } { [41 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.2, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @nau8810_companding_adc_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.3, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @nau8810_companding_dac_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.4, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @nau8810_deemp_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.5, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @nau8810_eqmode_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.6, i32 0, i32 0, i32 0, ptr @snd_soc_bytes_info_ext, ptr @nau8810_eq_get, ptr @nau8810_eq_put, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.7, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.8 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.9, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @digital_tlv }, i32 ptrtoint (ptr @.compoundliteral.10 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.11, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.12 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.13, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.14 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.15, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.16 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.17, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @digital_tlv }, i32 ptrtoint (ptr @.compoundliteral.18 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.19, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @eq_tlv }, i32 ptrtoint (ptr @.compoundliteral.20 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.21, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @eq_tlv }, i32 ptrtoint (ptr @.compoundliteral.22 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.23, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @eq_tlv }, i32 ptrtoint (ptr @.compoundliteral.24 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.25, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @eq_tlv }, i32 ptrtoint (ptr @.compoundliteral.26 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.27, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @eq_tlv }, i32 ptrtoint (ptr @.compoundliteral.28 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.29, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.30 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.31, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.32 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.33, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.34 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.35, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.36 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.37, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.38 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.39, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @nau8810_alc_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.40, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.41 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.42, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.43 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.44, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.45 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.46, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.47 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.48, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.49 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.50, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.51 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.52, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.53 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.54, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.55 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.56, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.57 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.58, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.59 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.60, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.61 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.62, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @inpga_tlv }, i32 ptrtoint (ptr @.compoundliteral.63 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.64, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.65 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.66, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.67 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.68, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @spk_tlv }, i32 ptrtoint (ptr @.compoundliteral.69 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.70, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.71 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.72, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.73 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.74, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.75 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.76, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.77 to i32) }], [496 x i8] zeroinitializer }, align 32
@nau8810_dapm_routes = internal constant { [25 x %struct.snd_soc_dapm_route], [332 x i8] } { [25 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.97, ptr null, ptr @.str.106, ptr @check_mclk_select_pll, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.96, ptr @.str.115, ptr @.str.104, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.96, ptr @.str.119, ptr @.str.97, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.96, ptr @.str.117, ptr @.str.103, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.95, ptr @.str.115, ptr @.str.104, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.95, ptr @.str.119, ptr @.str.97, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.95, ptr @.str.117, ptr @.str.103, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.101, ptr null, ptr @.str.96, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.111, ptr null, ptr @.str.101, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.99, ptr null, ptr @.str.95, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.100, ptr null, ptr @.str.95, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.113, ptr null, ptr @.str.99, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.112, ptr null, ptr @.str.100, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.98, ptr null, ptr @.str.103, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.98, ptr null, ptr @.str.106, ptr @check_mclk_select_pll, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.103, ptr @.str.130, ptr @.str.104, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.103, ptr @.str.132, ptr @.str.102, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.103, ptr @.str.134, ptr @.str.110, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.102, ptr null, ptr @.str.105, ptr @check_mic_enabled, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.102, ptr @.str.124, ptr @.str.104, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.102, ptr @.str.126, ptr @.str.109, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.102, ptr @.str.128, ptr @.str.110, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.104, ptr null, ptr @.str.108, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.107, ptr @.str.136, ptr @.str.98, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.97, ptr null, ptr @.str.107, ptr null, %struct.snd_soc_dobj zeroinitializer }], [332 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ADC Companding\00", [17 x i8] zeroinitializer }, align 32
@nau8810_companding_adc_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 5, i8 1, i8 1, i32 4, i32 3, ptr @nau8810_companding, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DAC Companding\00", [17 x i8] zeroinitializer }, align 32
@nau8810_companding_dac_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 5, i8 3, i8 3, i32 4, i32 3, ptr @nau8810_companding, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DAC De-emphasis\00", [16 x i8] zeroinitializer }, align 32
@nau8810_deemp_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 10, i8 4, i8 4, i32 4, i32 3, ptr @nau8810_deemp, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"EQ Function\00", [20 x i8] zeroinitializer }, align 32
@nau8810_eqmode_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 18, i8 8, i8 8, i32 2, i32 1, ptr @nau8810_eqmode, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"EQ Parameters\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_bytes_ext, [48 x i8] } { %struct.soc_bytes_ext { i32 10, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DAC Inversion Switch\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.8 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 10, i32 10, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Playback Volume\00", [16 x i8] zeroinitializer }, align 32
@digital_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -12750, i32 65586], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.10 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 11, i32 11, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"High Pass Filter Switch\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.12 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 14, i32 14, i32 8, i32 8, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"High Pass Cut Off\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.14 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 14, i32 14, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ADC Inversion Switch\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.16 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 14, i32 14, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Capture Volume\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.18 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 15, i32 15, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"EQ1 Volume\00", [21 x i8] zeroinitializer }, align 32
@eq_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -1200, i32 100], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.20 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 24, i32 24, i32 18, i32 18, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"EQ2 Volume\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.22 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 24, i32 24, i32 19, i32 19, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"EQ3 Volume\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.24 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 24, i32 24, i32 20, i32 20, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"EQ4 Volume\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.26 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 24, i32 24, i32 21, i32 21, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"EQ5 Volume\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.28 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 24, i32 24, i32 22, i32 22, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DAC Limiter Switch\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.30 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 24, i32 24, i32 8, i32 8, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DAC Limiter Decay\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.32 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 24, i32 24, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DAC Limiter Attack\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.34 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 24, i32 24, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DAC Limiter Threshold\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.36 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 25, i32 25, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DAC Limiter Boost\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.38 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 25, i32 25, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ALC Mode\00", [23 x i8] zeroinitializer }, align 32
@nau8810_alc_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 34, i8 8, i8 8, i32 2, i32 1, ptr @nau8810_alc, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ALC Enable Switch\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.41 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 32, i32 32, i32 8, i32 8, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ALC Max Volume\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.43 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 32, i32 32, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ALC Min Volume\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.45 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 32, i32 32, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ALC ZC Switch\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.47 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 33, i32 33, i32 8, i32 8, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ALC Hold\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.49 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 33, i32 33, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ALC Target\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.51 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 33, i32 33, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ALC Decay\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.53 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 34, i32 34, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ALC Attack\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.55 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 34, i32 34, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ALC Noise Gate Switch\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.57 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 35, i32 35, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ALC Noise Gate Threshold\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.59 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 35, i32 35, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PGA ZC Switch\00", [18 x i8] zeroinitializer }, align 32
@.compoundliteral.61 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 45, i32 45, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PGA Volume\00", [21 x i8] zeroinitializer }, align 32
@inpga_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -1200, i32 75], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.63 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 45, i32 45, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Speaker ZC Switch\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.65 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 54, i32 54, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Speaker Mute Switch\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.67 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 54, i32 54, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Speaker Volume\00", [17 x i8] zeroinitializer }, align 32
@spk_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -5700, i32 100], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.69 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 54, i32 54, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Capture Boost(+20dB)\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.71 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 47, i32 47, i32 8, i32 8, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Mono Mute Switch\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.73 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 56, i32 56, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"DAC Oversampling Rate(128x) Switch\00", [61 x i8] zeroinitializer }, align 32
@.compoundliteral.75 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 10, i32 10, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ADC Oversampling Rate(128x) Switch\00", [61 x i8] zeroinitializer }, align 32
@.compoundliteral.77 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 14, i32 14, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@nau8810_companding = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81], [16 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Off\00", [28 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"NC\00", [29 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"u-law\00", [26 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"A-law\00", [26 x i8] zeroinitializer }, align 32
@nau8810_deemp = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85], [16 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"None\00", [27 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"32kHz\00", [26 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"44.1kHz\00", [24 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"48kHz\00", [26 x i8] zeroinitializer }, align 32
@nau8810_eqmode = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.86, ptr @.str.87], [24 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Capture\00", [24 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Playback\00", [23 x i8] zeroinitializer }, align 32
@nau8810_eq_put._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.90, i32 220, ptr @.str.91, ptr @.str.92 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"EQ configuration fail, register: %x ret: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"nau8810_eq_put\00", [17 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sound/soc/codecs/nau8810.c\00", [37 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nau8810_eq_put._entry_ptr = internal global ptr @nau8810_eq_put._entry, section ".printk_index", align 4
@nau8810_alc = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.93, ptr @.str.94], [24 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Normal\00", [25 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Limiter\00", [24 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Speaker Mixer\00", [18 x i8] zeroinitializer }, align 32
@nau8810_speaker_mixer_controls = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.115, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.116 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.117, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.118 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.119, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.120 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Mono Mixer\00", [21 x i8] zeroinitializer }, align 32
@nau8810_mono_mixer_controls = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.115, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.121 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.117, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.122 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.119, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.123 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DAC\00", [28 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ADC\00", [28 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SpkN Out\00", [23 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"SpkP Out\00", [23 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Mono Out\00", [23 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Input PGA\00", [22 x i8] zeroinitializer }, align 32
@nau8810_inpga = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.124, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.125 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.126, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.127 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.128, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.129 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Input Boost Stage\00", [46 x i8] zeroinitializer }, align 32
@nau8810_pgaboost_mixer_controls = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.130, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.131 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.132, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.133 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.134, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.135 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"AUX Input\00", [22 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Mic Bias\00", [23 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PLL\00", [28 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Digital Loopback\00", [47 x i8] zeroinitializer }, align 32
@nau8810_loopback = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.136, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.137 to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"AUX\00", [28 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MICN\00", [27 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MICP\00", [27 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MONOOUT\00", [24 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SPKOUTP\00", [24 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SPKOUTN\00", [24 x i8] zeroinitializer }, align 32
@nau8810_dapm_widgets = internal constant { [19 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [836 x i8] } { [19 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.95, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 3, ptr @nau8810_speaker_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.96, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 3, ptr @nau8810_mono_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.97, ptr @.str.87, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.98, ptr @.str.86, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.99, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.100, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.101, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.102, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 3, ptr @nau8810_inpga, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.103, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 3, ptr @nau8810_pgaboost_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.104, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 1, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.105, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 1, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.106, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 1, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.107, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @nau8810_loopback, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.108, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.109, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.110, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.111, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.112, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.113, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [836 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"AUX Bypass Switch\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.116 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 50, i32 50, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Line Bypass Switch\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.118 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 50, i32 50, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"PCM Playback Switch\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.120 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 50, i32 50, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.121 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 56, i32 56, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.122 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 56, i32 56, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.123 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 56, i32 56, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"AUX Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.125 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 44, i32 44, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MicN Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.127 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 44, i32 44, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MicP Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.129 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 44, i32 44, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"AUX PGA Switch\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.131 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 47, i32 47, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"PGA Mute Switch\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.133 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 45, i32 45, i32 6, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"PMIC PGA Switch\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.135 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 47, i32 47, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Switch\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.137 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 5, i32 5, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.138 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nau8810-hifi\00", [19 x i8] zeroinitializer }, align 32
@nau8810_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @nau8810_set_sysclk, ptr @nau8810_set_pll, ptr null, ptr null, ptr @nau8810_set_dai_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nau8810_pcm_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@nau8810_set_sysclk.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.139, ptr @.str.140, ptr @.str.90, ptr @.str.141, i8 0, i8 -126, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.139 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"snd_soc_nau8810\00", [16 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nau8810_set_sysclk\00", [45 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"master sysclk %dHz, source %s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MCLK\00", [27 x i8] zeroinitializer }, align 32
@nau8810_set_pll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.144, ptr @.str.90, i32 578, ptr @.str.91, ptr @.str.92 }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unsupported input clock %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nau8810_set_pll\00", [16 x i8] zeroinitializer }, align 32
@nau8810_set_pll._entry_ptr = internal global ptr @nau8810_set_pll._entry, section ".printk_index", align 4
@nau8810_set_pll._entry.145 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.144, ptr @.str.90, i32 583, ptr @.str.147, ptr @.str.92 }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"pll_int=%x pll_frac=%x mclk_scaler=%x pre_factor=%x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@nau8810_set_pll._entry_ptr.148 = internal global ptr @nau8810_set_pll._entry.145, section ".printk_index", align 4
@nau8810_mclk_scaler = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 10, i32 15, i32 20, i32 30, i32 40, i32 60, i32 80, i32 120], [32 x i8] zeroinitializer }, align 32
@nau8810_pcm_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.150, ptr @.str.90, i32 766, ptr @.str.91, ptr @.str.92 }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"MCLK div configuration fail\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nau8810_pcm_hw_params\00", [42 x i8] zeroinitializer }, align 32
@nau8810_pcm_hw_params._entry_ptr = internal global ptr @nau8810_pcm_hw_params._entry, section ".printk_index", align 4
@nau8810_mclk_clkdiv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.152, ptr @.str.90, i32 668, ptr @.str.91, ptr @.str.92 }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"Make mclk div configuration fail because of invalid system clock\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nau8810_mclk_clkdiv\00", [44 x i8] zeroinitializer }, align 32
@nau8810_mclk_clkdiv._entry_ptr = internal global ptr @nau8810_mclk_clkdiv._entry, section ".printk_index", align 4
@nau8810_mclk_clkdiv.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.139, ptr @.str.152, ptr @.str.90, ptr @.str.153, i8 0, i8 -85, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.153 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"master clock prescaler %x for fs %d\0A\00", [59 x i8] zeroinitializer }, align 32
@switch.table.nau8810_set_dai_fmt = internal constant { [4 x i16], [24 x i8] } { [4 x i16] [i16 16, i16 0, i16 8, i16 24], [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [53 x i64] [i64 51, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 10, i64 11, i64 14, i64 15, i64 18, i64 19, i64 20, i64 21, i64 22, i64 24, i64 25, i64 27, i64 28, i64 29, i64 30, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 44, i64 45, i64 47, i64 49, i64 50, i64 54, i64 56, i64 58, i64 59, i64 60, i64 69, i64 70, i64 71, i64 73, i64 75, i64 76, i64 77, i64 78, i64 79]
@__sancov_gen_cov_switch_values.154 = internal global [57 x i64] [i64 55, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 10, i64 11, i64 14, i64 15, i64 18, i64 19, i64 20, i64 21, i64 22, i64 24, i64 25, i64 27, i64 28, i64 29, i64 30, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 44, i64 45, i64 47, i64 49, i64 50, i64 54, i64 56, i64 58, i64 59, i64 60, i64 62, i64 63, i64 64, i64 65, i64 69, i64 70, i64 71, i64 73, i64 75, i64 76, i64 77, i64 78, i64 79]
@__sancov_gen_cov_switch_values.155 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 62, i64 63, i64 64, i64 65]
@__sancov_gen_cov_switch_values.156 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.157 = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.158 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.159 = internal global [5 x i64] [i64 3, i64 32, i64 20, i64 24, i64 32]
@__sancov_gen_cov_switch_values.160 = internal global [7 x i64] [i64 5, i64 32, i64 8000, i64 11025, i64 16000, i64 22050, i64 32000]
@___asan_gen_.161 = private unnamed_addr constant [19 x i8] c"nau8810_i2c_driver\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 914, i32 26 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 916, i32 11 }
@___asan_gen_.167 = private unnamed_addr constant [17 x i8] c"nau8810_of_match\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 905, i32 34 }
@___asan_gen_.170 = private unnamed_addr constant [15 x i8] c"nau8810_i2c_id\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 896, i32 35 }
@___asan_gen_.173 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.176 = private unnamed_addr constant [22 x i8] c"nau8810_regmap_config\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 843, i32 35 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 885, i32 20 }
@___asan_gen_.182 = private unnamed_addr constant [25 x i8] c"nau8810_component_driver\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 857, i32 46 }
@___asan_gen_.185 = private unnamed_addr constant [12 x i8] c"nau8810_dai\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 823, i32 34 }
@___asan_gen_.188 = private unnamed_addr constant [21 x i8] c"nau8810_reg_defaults\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 39, i32 33 }
@___asan_gen_.191 = private unnamed_addr constant [21 x i8] c"nau8810_snd_controls\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 265, i32 38 }
@___asan_gen_.194 = private unnamed_addr constant [20 x i8] c"nau8810_dapm_routes\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 472, i32 40 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 266, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant [28 x i8] c"nau8810_companding_adc_enum\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 233, i32 30 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 267, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant [28 x i8] c"nau8810_companding_dac_enum\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 237, i32 30 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 268, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant [19 x i8] c"nau8810_deemp_enum\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 244, i32 30 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 270, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant [20 x i8] c"nau8810_eqmode_enum\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 250, i32 30 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 271, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 274, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant [19 x i8] c".compoundliteral.8\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 276, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant [12 x i8] c"digital_tlv\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 260, i32 14 }
@___asan_gen_.235 = private unnamed_addr constant [20 x i8] c".compoundliteral.10\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 279, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant [20 x i8] c".compoundliteral.12\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 281, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant [20 x i8] c".compoundliteral.14\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 284, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant [20 x i8] c".compoundliteral.16\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 286, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant [20 x i8] c".compoundliteral.18\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 289, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant [7 x i8] c"eq_tlv\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 261, i32 14 }
@___asan_gen_.258 = private unnamed_addr constant [20 x i8] c".compoundliteral.20\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 291, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant [20 x i8] c".compoundliteral.22\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 293, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant [20 x i8] c".compoundliteral.24\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 295, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant [20 x i8] c".compoundliteral.26\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 297, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant [20 x i8] c".compoundliteral.28\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 300, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant [20 x i8] c".compoundliteral.30\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 302, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant [20 x i8] c".compoundliteral.32\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 304, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant [20 x i8] c".compoundliteral.34\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 306, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant [20 x i8] c".compoundliteral.36\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 308, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant [20 x i8] c".compoundliteral.38\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 311, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant [17 x i8] c"nau8810_alc_enum\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 256, i32 30 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 312, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant [20 x i8] c".compoundliteral.41\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 314, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant [20 x i8] c".compoundliteral.43\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 316, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant [20 x i8] c".compoundliteral.45\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 318, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant [20 x i8] c".compoundliteral.47\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 320, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant [20 x i8] c".compoundliteral.49\00", align 1
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 322, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant [20 x i8] c".compoundliteral.51\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 324, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant [20 x i8] c".compoundliteral.53\00", align 1
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 326, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant [20 x i8] c".compoundliteral.55\00", align 1
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 328, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant [20 x i8] c".compoundliteral.57\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 330, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant [20 x i8] c".compoundliteral.59\00", align 1
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 333, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant [20 x i8] c".compoundliteral.61\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 335, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant [10 x i8] c"inpga_tlv\00", align 1
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 262, i32 14 }
@___asan_gen_.351 = private unnamed_addr constant [20 x i8] c".compoundliteral.63\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 338, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant [20 x i8] c".compoundliteral.65\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 340, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant [20 x i8] c".compoundliteral.67\00", align 1
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 342, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant [8 x i8] c"spk_tlv\00", align 1
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 263, i32 14 }
@___asan_gen_.366 = private unnamed_addr constant [20 x i8] c".compoundliteral.69\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 345, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant [20 x i8] c".compoundliteral.71\00", align 1
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 347, i32 2 }
@___asan_gen_.374 = private unnamed_addr constant [20 x i8] c".compoundliteral.73\00", align 1
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 350, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant [20 x i8] c".compoundliteral.75\00", align 1
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 352, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant [20 x i8] c".compoundliteral.77\00", align 1
@___asan_gen_.383 = private unnamed_addr constant [19 x i8] c"nau8810_companding\00", align 1
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 230, i32 27 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 231, i32 2 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 231, i32 9 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 231, i32 15 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 231, i32 24 }
@___asan_gen_.398 = private unnamed_addr constant [14 x i8] c"nau8810_deemp\00", align 1
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 241, i32 27 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 242, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 242, i32 10 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 242, i32 19 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 242, i32 30 }
@___asan_gen_.413 = private unnamed_addr constant [15 x i8] c"nau8810_eqmode\00", align 1
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 248, i32 27 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 248, i32 47 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 248, i32 58 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 219, i32 4 }
@___asan_gen_.440 = private unnamed_addr constant [12 x i8] c"nau8810_alc\00", align 1
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 254, i32 27 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 254, i32 44 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 254, i32 54 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 430, i32 2 }
@___asan_gen_.452 = private unnamed_addr constant [31 x i8] c"nau8810_speaker_mixer_controls\00", align 1
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 357, i32 38 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 433, i32 2 }
@___asan_gen_.458 = private unnamed_addr constant [28 x i8] c"nau8810_mono_mixer_controls\00", align 1
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 367, i32 38 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 436, i32 2 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 438, i32 2 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 440, i32 2 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 442, i32 2 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 444, i32 2 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 447, i32 2 }
@___asan_gen_.479 = private unnamed_addr constant [14 x i8] c"nau8810_inpga\00", align 1
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 387, i32 38 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 450, i32 2 }
@___asan_gen_.485 = private unnamed_addr constant [32 x i8] c"nau8810_pgaboost_mixer_controls\00", align 1
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 377, i32 38 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 453, i32 2 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 456, i32 2 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 458, i32 2 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 461, i32 2 }
@___asan_gen_.500 = private unnamed_addr constant [17 x i8] c"nau8810_loopback\00", align 1
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 397, i32 38 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 464, i32 2 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 465, i32 2 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 466, i32 2 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 467, i32 2 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 468, i32 2 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 469, i32 2 }
@___asan_gen_.521 = private unnamed_addr constant [21 x i8] c"nau8810_dapm_widgets\00", align 1
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 429, i32 41 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 358, i32 2 }
@___asan_gen_.527 = private unnamed_addr constant [21 x i8] c".compoundliteral.116\00", align 1
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 360, i32 2 }
@___asan_gen_.531 = private unnamed_addr constant [21 x i8] c".compoundliteral.118\00", align 1
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 362, i32 2 }
@___asan_gen_.535 = private unnamed_addr constant [21 x i8] c".compoundliteral.120\00", align 1
@___asan_gen_.536 = private unnamed_addr constant [21 x i8] c".compoundliteral.121\00", align 1
@___asan_gen_.537 = private unnamed_addr constant [21 x i8] c".compoundliteral.122\00", align 1
@___asan_gen_.538 = private unnamed_addr constant [21 x i8] c".compoundliteral.123\00", align 1
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 388, i32 2 }
@___asan_gen_.542 = private unnamed_addr constant [21 x i8] c".compoundliteral.125\00", align 1
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 390, i32 2 }
@___asan_gen_.546 = private unnamed_addr constant [21 x i8] c".compoundliteral.127\00", align 1
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 392, i32 2 }
@___asan_gen_.550 = private unnamed_addr constant [21 x i8] c".compoundliteral.129\00", align 1
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 378, i32 2 }
@___asan_gen_.554 = private unnamed_addr constant [21 x i8] c".compoundliteral.131\00", align 1
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 380, i32 2 }
@___asan_gen_.558 = private unnamed_addr constant [21 x i8] c".compoundliteral.133\00", align 1
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 382, i32 2 }
@___asan_gen_.562 = private unnamed_addr constant [21 x i8] c".compoundliteral.135\00", align 1
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 398, i32 2 }
@___asan_gen_.566 = private unnamed_addr constant [21 x i8] c".compoundliteral.137\00", align 1
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 824, i32 10 }
@___asan_gen_.570 = private unnamed_addr constant [12 x i8] c"nau8810_ops\00", align 1
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 816, i32 37 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 520, i32 2 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 578, i32 3 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 581, i32 2 }
@___asan_gen_.603 = private unnamed_addr constant [20 x i8] c"nau8810_mclk_scaler\00", align 1
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 37, i32 18 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 766, i32 4 }
@___asan_gen_.615 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 668, i32 3 }
@___asan_gen_.624 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.625 = private constant [30 x i8] c"../sound/soc/codecs/nau8810.c\00", align 1
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.625, i32 683, i32 2 }
@___asan_gen_.627 = private unnamed_addr constant [33 x i8] c"switch.table.nau8810_set_dai_fmt\00", align 1
@llvm.compiler.used = appending global [201 x ptr] [ptr @__UNIQUE_ID_author298, ptr @__UNIQUE_ID_description297, ptr @__UNIQUE_ID_file299, ptr @__UNIQUE_ID_license300, ptr @__exitcall_nau8810_i2c_driver_exit, ptr @__initcall__kmod_snd_soc_nau8810__296_923_nau8810_i2c_driver_init6, ptr @nau8810_eq_put._entry, ptr @nau8810_eq_put._entry_ptr, ptr @nau8810_i2c_driver_exit, ptr @nau8810_mclk_clkdiv._entry, ptr @nau8810_mclk_clkdiv._entry_ptr, ptr @nau8810_pcm_hw_params._entry, ptr @nau8810_pcm_hw_params._entry_ptr, ptr @nau8810_set_pll._entry, ptr @nau8810_set_pll._entry.145, ptr @nau8810_set_pll._entry_ptr, ptr @nau8810_set_pll._entry_ptr.148, ptr @nau8810_i2c_driver, ptr @.str, ptr @nau8810_of_match, ptr @nau8810_i2c_id, ptr @nau8810_i2c_probe._key, ptr @nau8810_regmap_config, ptr @.str.1, ptr @nau8810_component_driver, ptr @nau8810_dai, ptr @nau8810_reg_defaults, ptr @nau8810_snd_controls, ptr @nau8810_dapm_routes, ptr @.str.2, ptr @nau8810_companding_adc_enum, ptr @.str.3, ptr @nau8810_companding_dac_enum, ptr @.str.4, ptr @nau8810_deemp_enum, ptr @.str.5, ptr @nau8810_eqmode_enum, ptr @.str.6, ptr @.compoundliteral, ptr @.str.7, ptr @.compoundliteral.8, ptr @.str.9, ptr @digital_tlv, ptr @.compoundliteral.10, ptr @.str.11, ptr @.compoundliteral.12, ptr @.str.13, ptr @.compoundliteral.14, ptr @.str.15, ptr @.compoundliteral.16, ptr @.str.17, ptr @.compoundliteral.18, ptr @.str.19, ptr @eq_tlv, ptr @.compoundliteral.20, ptr @.str.21, ptr @.compoundliteral.22, ptr @.str.23, ptr @.compoundliteral.24, ptr @.str.25, ptr @.compoundliteral.26, ptr @.str.27, ptr @.compoundliteral.28, ptr @.str.29, ptr @.compoundliteral.30, ptr @.str.31, ptr @.compoundliteral.32, ptr @.str.33, ptr @.compoundliteral.34, ptr @.str.35, ptr @.compoundliteral.36, ptr @.str.37, ptr @.compoundliteral.38, ptr @.str.39, ptr @nau8810_alc_enum, ptr @.str.40, ptr @.compoundliteral.41, ptr @.str.42, ptr @.compoundliteral.43, ptr @.str.44, ptr @.compoundliteral.45, ptr @.str.46, ptr @.compoundliteral.47, ptr @.str.48, ptr @.compoundliteral.49, ptr @.str.50, ptr @.compoundliteral.51, ptr @.str.52, ptr @.compoundliteral.53, ptr @.str.54, ptr @.compoundliteral.55, ptr @.str.56, ptr @.compoundliteral.57, ptr @.str.58, ptr @.compoundliteral.59, ptr @.str.60, ptr @.compoundliteral.61, ptr @.str.62, ptr @inpga_tlv, ptr @.compoundliteral.63, ptr @.str.64, ptr @.compoundliteral.65, ptr @.str.66, ptr @.compoundliteral.67, ptr @.str.68, ptr @spk_tlv, ptr @.compoundliteral.69, ptr @.str.70, ptr @.compoundliteral.71, ptr @.str.72, ptr @.compoundliteral.73, ptr @.str.74, ptr @.compoundliteral.75, ptr @.str.76, ptr @.compoundliteral.77, ptr @nau8810_companding, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @nau8810_deemp, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @nau8810_eqmode, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @nau8810_alc, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @nau8810_speaker_mixer_controls, ptr @.str.96, ptr @nau8810_mono_mixer_controls, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @nau8810_inpga, ptr @.str.103, ptr @nau8810_pgaboost_mixer_controls, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @nau8810_loopback, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @nau8810_dapm_widgets, ptr @.str.115, ptr @.compoundliteral.116, ptr @.str.117, ptr @.compoundliteral.118, ptr @.str.119, ptr @.compoundliteral.120, ptr @.compoundliteral.121, ptr @.compoundliteral.122, ptr @.compoundliteral.123, ptr @.str.124, ptr @.compoundliteral.125, ptr @.str.126, ptr @.compoundliteral.127, ptr @.str.128, ptr @.compoundliteral.129, ptr @.str.130, ptr @.compoundliteral.131, ptr @.str.132, ptr @.compoundliteral.133, ptr @.str.134, ptr @.compoundliteral.135, ptr @.str.136, ptr @.compoundliteral.137, ptr @.str.138, ptr @nau8810_ops, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.146, ptr @.str.147, ptr @nau8810_mclk_scaler, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @switch.table.nau8810_set_dai_fmt], section "llvm.metadata"
@0 = internal global [189 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8810_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8810_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8810_i2c_id to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8810_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8810_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8810_component_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8810_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8810_reg_defaults to i32), i32 432, i32 544, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8810_snd_controls to i32), i32 1968, i32 2464, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8810_dapm_routes to i32), i32 1300, i32 1632, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8810_companding_adc_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8810_companding_dac_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8810_deemp_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8810_eqmode_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.8 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.10 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.12 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.14 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.16 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.18 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eq_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.20 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.22 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.24 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.26 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.28 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.30 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.32 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.34 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.36 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.38 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8810_alc_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.41 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.43 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.45 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.47 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.49 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.51 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.53 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.55 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.57 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.59 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.61 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inpga_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.63 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.65 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.67 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.69 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.71 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.73 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.75 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.77 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8810_companding to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8810_deemp to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8810_eqmode to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8810_eq_put._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8810_alc to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8810_speaker_mixer_controls to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8810_mono_mixer_controls to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8810_inpga to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8810_pgaboost_mixer_controls to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8810_loopback to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8810_dapm_widgets to i32), i32 3420, i32 4256, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.116 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.118 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.120 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.121 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.122 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.123 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.125 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.127 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.129 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.131 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.133 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.135 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.137 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8810_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8810_set_pll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8810_set_pll._entry.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8810_mclk_scaler to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8810_pcm_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8810_mclk_clkdiv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nau8810_set_dai_fmt to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nau8810_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @nau8810_i2c_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nau8810_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @nau8810_i2c_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nau8810_i2c_probe(ptr noundef %i2c, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then:                                          ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 32, i32 noundef 3520) #7
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.then.cleanup_crit_edge, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %nau8810.0 = phi ptr [ %1, %entry.if.end5_crit_edge ], [ %call.i, %if.then.if.end5_crit_edge ]
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %nau8810.0, ptr %driver_data.i.i, align 4
  %call6 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef nonnull @nau8810_regmap_config, ptr noundef nonnull @nau8810_i2c_probe._key, ptr noundef nonnull @.str.1) #7
  %regmap = getelementptr inbounds %struct.nau8810, ptr %nau8810.0, i32 0, i32 1
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call6, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %call6 to i32
  br label %cleanup

if.end12:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %nau8810.0 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev1, ptr %nau8810.0, align 4
  %call15 = tail call i32 @regmap_write(ptr noundef %call6, i32 noundef 0, i32 noundef 0) #7
  %call16 = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev1, ptr noundef nonnull @nau8810_component_driver, ptr noundef nonnull @nau8810_dai, i32 noundef 1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then9, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then9 ], [ %call16, %if.end12 ], [ -12, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @nau8810_writeable_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %sw.default [
    i32 47, label %entry.return_crit_edge
    i32 54, label %entry.return_crit_edge15
    i32 56, label %entry.return_crit_edge16
    i32 73, label %entry.return_crit_edge17
    i32 75, label %entry.return_crit_edge18
    i32 76, label %entry.return_crit_edge19
    i32 77, label %entry.return_crit_edge20
    i32 78, label %entry.return_crit_edge21
    i32 79, label %entry.return_crit_edge22
    i32 69, label %entry.return_crit_edge23
    i32 70, label %entry.return_crit_edge24
    i32 71, label %entry.return_crit_edge25
    i32 58, label %entry.return_crit_edge26
    i32 59, label %entry.return_crit_edge27
    i32 60, label %entry.return_crit_edge28
    i32 49, label %entry.return_crit_edge29
    i32 50, label %entry.return_crit_edge30
    i32 44, label %entry.return_crit_edge31
    i32 45, label %entry.return_crit_edge32
    i32 32, label %entry.return_crit_edge33
    i32 33, label %entry.return_crit_edge34
    i32 34, label %entry.return_crit_edge35
    i32 35, label %entry.return_crit_edge36
    i32 36, label %entry.return_crit_edge37
    i32 37, label %entry.return_crit_edge38
    i32 38, label %entry.return_crit_edge39
    i32 39, label %entry.return_crit_edge40
    i32 40, label %entry.return_crit_edge41
    i32 27, label %entry.return_crit_edge42
    i32 28, label %entry.return_crit_edge43
    i32 29, label %entry.return_crit_edge44
    i32 30, label %entry.return_crit_edge45
    i32 24, label %entry.return_crit_edge46
    i32 25, label %entry.return_crit_edge47
    i32 18, label %entry.return_crit_edge48
    i32 19, label %entry.return_crit_edge49
    i32 20, label %entry.return_crit_edge50
    i32 21, label %entry.return_crit_edge51
    i32 22, label %entry.return_crit_edge52
    i32 14, label %entry.return_crit_edge53
    i32 15, label %entry.return_crit_edge54
    i32 10, label %entry.return_crit_edge55
    i32 11, label %entry.return_crit_edge56
    i32 0, label %entry.return_crit_edge57
    i32 1, label %entry.return_crit_edge58
    i32 2, label %entry.return_crit_edge59
    i32 3, label %entry.return_crit_edge60
    i32 4, label %entry.return_crit_edge61
    i32 5, label %entry.return_crit_edge62
    i32 6, label %entry.return_crit_edge63
    i32 7, label %entry.return_crit_edge64
  ]

entry.return_crit_edge64:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge63:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge62:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge61:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge60:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

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

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30, %entry.return_crit_edge31, %entry.return_crit_edge32, %entry.return_crit_edge33, %entry.return_crit_edge34, %entry.return_crit_edge35, %entry.return_crit_edge36, %entry.return_crit_edge37, %entry.return_crit_edge38, %entry.return_crit_edge39, %entry.return_crit_edge40, %entry.return_crit_edge41, %entry.return_crit_edge42, %entry.return_crit_edge43, %entry.return_crit_edge44, %entry.return_crit_edge45, %entry.return_crit_edge46, %entry.return_crit_edge47, %entry.return_crit_edge48, %entry.return_crit_edge49, %entry.return_crit_edge50, %entry.return_crit_edge51, %entry.return_crit_edge52, %entry.return_crit_edge53, %entry.return_crit_edge54, %entry.return_crit_edge55, %entry.return_crit_edge56, %entry.return_crit_edge57, %entry.return_crit_edge58, %entry.return_crit_edge59, %entry.return_crit_edge60, %entry.return_crit_edge61, %entry.return_crit_edge62, %entry.return_crit_edge63, %entry.return_crit_edge64
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ], [ true, %entry.return_crit_edge30 ], [ true, %entry.return_crit_edge31 ], [ true, %entry.return_crit_edge32 ], [ true, %entry.return_crit_edge33 ], [ true, %entry.return_crit_edge34 ], [ true, %entry.return_crit_edge35 ], [ true, %entry.return_crit_edge36 ], [ true, %entry.return_crit_edge37 ], [ true, %entry.return_crit_edge38 ], [ true, %entry.return_crit_edge39 ], [ true, %entry.return_crit_edge40 ], [ true, %entry.return_crit_edge41 ], [ true, %entry.return_crit_edge42 ], [ true, %entry.return_crit_edge43 ], [ true, %entry.return_crit_edge44 ], [ true, %entry.return_crit_edge45 ], [ true, %entry.return_crit_edge46 ], [ true, %entry.return_crit_edge47 ], [ true, %entry.return_crit_edge48 ], [ true, %entry.return_crit_edge49 ], [ true, %entry.return_crit_edge50 ], [ true, %entry.return_crit_edge51 ], [ true, %entry.return_crit_edge52 ], [ true, %entry.return_crit_edge53 ], [ true, %entry.return_crit_edge54 ], [ true, %entry.return_crit_edge55 ], [ true, %entry.return_crit_edge56 ], [ true, %entry.return_crit_edge57 ], [ true, %entry.return_crit_edge58 ], [ true, %entry.return_crit_edge59 ], [ true, %entry.return_crit_edge60 ], [ true, %entry.return_crit_edge61 ], [ true, %entry.return_crit_edge62 ], [ true, %entry.return_crit_edge63 ], [ true, %entry.return_crit_edge64 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @nau8810_readable_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.154)
  switch i32 %reg, label %sw.default [
    i32 47, label %entry.return_crit_edge
    i32 54, label %entry.return_crit_edge16
    i32 56, label %entry.return_crit_edge17
    i32 73, label %entry.return_crit_edge18
    i32 75, label %entry.return_crit_edge19
    i32 76, label %entry.return_crit_edge20
    i32 77, label %entry.return_crit_edge21
    i32 78, label %entry.return_crit_edge22
    i32 79, label %entry.return_crit_edge23
    i32 69, label %entry.return_crit_edge24
    i32 70, label %entry.return_crit_edge25
    i32 71, label %entry.return_crit_edge26
    i32 62, label %entry.return_crit_edge27
    i32 63, label %entry.return_crit_edge28
    i32 64, label %entry.return_crit_edge29
    i32 65, label %entry.return_crit_edge30
    i32 58, label %entry.return_crit_edge31
    i32 59, label %entry.return_crit_edge32
    i32 60, label %entry.return_crit_edge33
    i32 49, label %entry.return_crit_edge34
    i32 50, label %entry.return_crit_edge35
    i32 44, label %entry.return_crit_edge36
    i32 45, label %entry.return_crit_edge37
    i32 32, label %entry.return_crit_edge38
    i32 33, label %entry.return_crit_edge39
    i32 34, label %entry.return_crit_edge40
    i32 35, label %entry.return_crit_edge41
    i32 36, label %entry.return_crit_edge42
    i32 37, label %entry.return_crit_edge43
    i32 38, label %entry.return_crit_edge44
    i32 39, label %entry.return_crit_edge45
    i32 40, label %entry.return_crit_edge46
    i32 27, label %entry.return_crit_edge47
    i32 28, label %entry.return_crit_edge48
    i32 29, label %entry.return_crit_edge49
    i32 30, label %entry.return_crit_edge50
    i32 24, label %entry.return_crit_edge51
    i32 25, label %entry.return_crit_edge52
    i32 18, label %entry.return_crit_edge53
    i32 19, label %entry.return_crit_edge54
    i32 20, label %entry.return_crit_edge55
    i32 21, label %entry.return_crit_edge56
    i32 22, label %entry.return_crit_edge57
    i32 14, label %entry.return_crit_edge58
    i32 15, label %entry.return_crit_edge59
    i32 10, label %entry.return_crit_edge60
    i32 11, label %entry.return_crit_edge61
    i32 0, label %entry.return_crit_edge62
    i32 1, label %entry.return_crit_edge63
    i32 2, label %entry.return_crit_edge64
    i32 3, label %entry.return_crit_edge65
    i32 4, label %entry.return_crit_edge66
    i32 5, label %entry.return_crit_edge67
    i32 6, label %entry.return_crit_edge68
    i32 7, label %entry.return_crit_edge69
  ]

entry.return_crit_edge69:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge68:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge67:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge66:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge65:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge64:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge63:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge62:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge61:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

entry.return_crit_edge60:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

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

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30, %entry.return_crit_edge31, %entry.return_crit_edge32, %entry.return_crit_edge33, %entry.return_crit_edge34, %entry.return_crit_edge35, %entry.return_crit_edge36, %entry.return_crit_edge37, %entry.return_crit_edge38, %entry.return_crit_edge39, %entry.return_crit_edge40, %entry.return_crit_edge41, %entry.return_crit_edge42, %entry.return_crit_edge43, %entry.return_crit_edge44, %entry.return_crit_edge45, %entry.return_crit_edge46, %entry.return_crit_edge47, %entry.return_crit_edge48, %entry.return_crit_edge49, %entry.return_crit_edge50, %entry.return_crit_edge51, %entry.return_crit_edge52, %entry.return_crit_edge53, %entry.return_crit_edge54, %entry.return_crit_edge55, %entry.return_crit_edge56, %entry.return_crit_edge57, %entry.return_crit_edge58, %entry.return_crit_edge59, %entry.return_crit_edge60, %entry.return_crit_edge61, %entry.return_crit_edge62, %entry.return_crit_edge63, %entry.return_crit_edge64, %entry.return_crit_edge65, %entry.return_crit_edge66, %entry.return_crit_edge67, %entry.return_crit_edge68, %entry.return_crit_edge69
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ], [ true, %entry.return_crit_edge30 ], [ true, %entry.return_crit_edge31 ], [ true, %entry.return_crit_edge32 ], [ true, %entry.return_crit_edge33 ], [ true, %entry.return_crit_edge34 ], [ true, %entry.return_crit_edge35 ], [ true, %entry.return_crit_edge36 ], [ true, %entry.return_crit_edge37 ], [ true, %entry.return_crit_edge38 ], [ true, %entry.return_crit_edge39 ], [ true, %entry.return_crit_edge40 ], [ true, %entry.return_crit_edge41 ], [ true, %entry.return_crit_edge42 ], [ true, %entry.return_crit_edge43 ], [ true, %entry.return_crit_edge44 ], [ true, %entry.return_crit_edge45 ], [ true, %entry.return_crit_edge46 ], [ true, %entry.return_crit_edge47 ], [ true, %entry.return_crit_edge48 ], [ true, %entry.return_crit_edge49 ], [ true, %entry.return_crit_edge50 ], [ true, %entry.return_crit_edge51 ], [ true, %entry.return_crit_edge52 ], [ true, %entry.return_crit_edge53 ], [ true, %entry.return_crit_edge54 ], [ true, %entry.return_crit_edge55 ], [ true, %entry.return_crit_edge56 ], [ true, %entry.return_crit_edge57 ], [ true, %entry.return_crit_edge58 ], [ true, %entry.return_crit_edge59 ], [ true, %entry.return_crit_edge60 ], [ true, %entry.return_crit_edge61 ], [ true, %entry.return_crit_edge62 ], [ true, %entry.return_crit_edge63 ], [ true, %entry.return_crit_edge64 ], [ true, %entry.return_crit_edge65 ], [ true, %entry.return_crit_edge66 ], [ true, %entry.return_crit_edge67 ], [ true, %entry.return_crit_edge68 ], [ true, %entry.return_crit_edge69 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @nau8810_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.155)
  switch i32 %reg, label %sw.default [
    i32 0, label %entry.return_crit_edge
    i32 62, label %entry.return_crit_edge2
    i32 63, label %entry.return_crit_edge3
    i32 64, label %entry.return_crit_edge4
    i32 65, label %entry.return_crit_edge5
  ]

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

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nau8810_set_bias_level(ptr nocapture noundef readonly %component, i32 noundef %level) #2 align 64 {
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
  %regmap = getelementptr inbounds %struct.nau8810, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %6 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.156)
  switch i32 %level, label %entry.sw.epilog_crit_edge [
    i32 3, label %entry.sw.bb_crit_edge
    i32 2, label %entry.sw.bb_crit_edge24
    i32 1, label %sw.bb2
    i32 0, label %sw.bb8
  ]

entry.sw.bb_crit_edge24:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge24
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 1, i32 noundef 3, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %call.i20 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 1, i32 noundef 12, i32 noundef 12, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %dapm.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %7 = ptrtoint ptr %dapm.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dapm.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %if.then, label %sw.bb2.if.end_crit_edge

sw.bb2.if.end_crit_edge:                          ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %sw.bb2
  %call5 = tail call i32 @regcache_sync(ptr noundef %5) #7
  %call.i21 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 1, i32 noundef 3, i32 noundef 3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.then
  %__ms.023 = phi i32 [ 100, %if.then ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %__ms.023, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #7
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.body.if.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %while.body.if.end_crit_edge, %sw.bb2.if.end_crit_edge
  %call.i22 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 1, i32 noundef 3, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 1, i32 noundef 0) #7
  %call10 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 2, i32 noundef 0) #7
  %call11 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 3, i32 noundef 0) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb8, %if.end, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_bytes_info_ext(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nau8810_eq_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
  %reg_val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
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
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %6 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %private_value, align 4
  %8 = inttoptr i32 %7 to ptr
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_val) #7
  %9 = ptrtoint ptr %reg_val to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %reg_val, align 4, !annotation !287
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp10.not = icmp ult i32 %11, 2
  br i1 %cmp10.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %regmap = getelementptr inbounds %struct.nau8810, ptr %5, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.011 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %add = add nuw i32 %i.011, 18
  %call2 = call i32 @regmap_read(ptr noundef %13, i32 noundef %add, ptr noundef nonnull %reg_val) #7
  %14 = ptrtoint ptr %reg_val to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reg_val, align 4
  %conv3 = and i32 %15, 65535
  store i32 %conv3, ptr %reg_val, align 4
  %add.ptr = getelementptr i16, ptr %value, i32 %i.011
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 %conv3, ptr %add.ptr, align 2
  %inc = add nuw nsw i32 %i.011, 1
  %17 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %8, align 4
  %div8 = lshr i32 %18, 1
  %cmp = icmp ult i32 %inc, %div8
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nau8810_eq_put(ptr nocapture noundef readonly %kcontrol, ptr noundef %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %6 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %private_value, align 4
  %8 = inttoptr i32 %7 to ptr
  %value2 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %call3 = tail call ptr @kmemdup(ptr noundef %value2, i32 noundef %10, i32 noundef 3265) #7
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp33.not = icmp ult i32 %12, 2
  br i1 %cmp33.not, label %for.cond.preheader.cleanup.sink.split_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup.sink.split_crit_edge:  ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %regmap = getelementptr inbounds %struct.nau8810, ptr %5, i32 0, i32 1
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.034, 1
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %8, align 4
  %div31 = lshr i32 %14, 1
  %cmp = icmp ult i32 %inc, %div31
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.cleanup.sink.split_crit_edge

for.cond.cleanup.sink.split_crit_edge:            ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.034 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %add.ptr = getelementptr i16, ptr %call3, i32 %i.034
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %add.ptr, align 2
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  %add = add nuw i32 %i.034, 18
  %conv = zext i16 %16 to i32
  %call5 = tail call i32 @regmap_write(ptr noundef %18, i32 noundef %add, i32 noundef %conv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %for.cond, label %do.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.88, i32 noundef %add, i32 noundef %call5) #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end, %for.cond.cleanup.sink.split_crit_edge, %for.cond.preheader.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call5, %do.end ], [ 0, %for.cond.preheader.cleanup.sink.split_crit_edge ], [ 0, %for.cond.cleanup.sink.split_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call3) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @check_mclk_select_pll(ptr nocapture noundef readonly %source, ptr nocapture noundef readnone %sink) #2 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %source, i32 0, i32 4
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #7
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %value, align 4, !annotation !287
  %regmap = getelementptr inbounds %struct.nau8810, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call2 = call i32 @regmap_read(ptr noundef %8, i32 noundef 6, ptr noundef nonnull %value) #7
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value, align 4
  %and = and i32 %10, 256
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #7
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @check_mic_enabled(ptr nocapture noundef readonly %source, ptr nocapture noundef readnone %sink) #2 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %source, i32 0, i32 4
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #7
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %value, align 4, !annotation !287
  %regmap = getelementptr inbounds %struct.nau8810, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call2 = call i32 @regmap_read(ptr noundef %8, i32 noundef 44, ptr noundef nonnull %value) #7
  %9 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %value, align 4
  %11 = and i32 %10, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call6 = call i32 @regmap_read(ptr noundef %14, i32 noundef 47, ptr noundef nonnull %value) #7
  %15 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %value, align 4
  %and7 = and i32 %16, 112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp ne i32 %and7, 0
  %. = zext i1 %tobool8.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ %., %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nau8810_set_sysclk(ptr nocapture noundef readonly %dai, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #2 align 64 {
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
  %clk_id2 = getelementptr inbounds %struct.nau8810, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %clk_id2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %clk_id, ptr %clk_id2, align 4
  %sysclk = getelementptr inbounds %struct.nau8810, ptr %5, i32 0, i32 3
  %7 = ptrtoint ptr %sysclk to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %freq, ptr %sysclk, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nau8810_set_sysclk.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nau8810_set_sysclk, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !288

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %clk_id)
  %cmp = icmp eq i32 %clk_id, 1
  %cond = select i1 %cmp, ptr @.str.106, ptr @.str.142
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nau8810_set_sysclk.__UNIQUE_ID_ddebug294, ptr noundef %9, ptr noundef nonnull @.str.141, i32 noundef %freq, ptr noundef nonnull %cond) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nau8810_set_pll(ptr nocapture noundef readonly %codec_dai, i32 noundef %pll_id, i32 noundef %source, i32 noundef %freq_in, i32 noundef %freq_out) #2 align 64 {
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
  %regmap = getelementptr inbounds %struct.nau8810, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %pll = getelementptr inbounds %struct.nau8810, ptr %5, i32 0, i32 2
  %8 = add i32 %freq_in, -33000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -25000001, i32 %8)
  %9 = icmp ult i32 %8, -25000001
  br i1 %9, label %entry.do.end_crit_edge, label %for.cond.preheader.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

for.cond.preheader.i:                             ; preds = %entry
  %div47 = lshr i32 %freq_out, 8
  %conv.i = zext i32 %div47 to i64
  %mul3.i = shl nuw nsw i64 %conv.i, 10
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i
  %scal_sel.062.i = phi i32 [ 8, %for.cond.preheader.i ], [ %scal_sel.1.i, %for.body.i.for.body.i_crit_edge ]
  %i.061.i = phi i32 [ 0, %for.cond.preheader.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %f2_max.060.i = phi i64 [ 0, %for.cond.preheader.i ], [ %f2_max.1.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [8 x i32], ptr @nau8810_mclk_scaler, i32 0, i32 %i.061.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  %conv4.i = sext i32 %11 to i64
  %mul5.i = mul i64 %mul3.i, %conv4.i
  %div79.i.i59.i = lshr exact i64 %mul5.i, 1
  %12 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div79.i.i59.i, i64 3689348814741910323) #11, !srcloc !289
  %13 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div79.i.i59.i, i64 %12) #11, !srcloc !290
  %14 = add i64 %13, -90000001
  call void @__sanitizer_cov_trace_const_cmp8(i64 9999999, i64 %14)
  %15 = icmp ult i64 %14, 9999999
  call void @__sanitizer_cov_trace_cmp8(i64 %f2_max.060.i, i64 %13)
  %cmp11.i = icmp ult i64 %f2_max.060.i, %13
  %or.cond57.i = select i1 %15, i1 %cmp11.i, i1 false
  %f2_max.1.i = select i1 %or.cond57.i, i64 %13, i64 %f2_max.060.i
  %scal_sel.1.i = select i1 %or.cond57.i, i32 %i.061.i, i32 %scal_sel.062.i
  %inc.i = add nuw nsw i32 %i.061.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 8
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %scal_sel.1.i)
  %cmp15.i = icmp eq i32 %scal_sel.1.i, 8
  br i1 %cmp15.i, label %for.end.i.do.end_crit_edge, label %if.end18.i

for.end.i.do.end_crit_edge:                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end18.i:                                       ; preds = %for.end.i
  %mclk_scaler.i = getelementptr inbounds %struct.nau8810, ptr %5, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %mclk_scaler.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %scal_sel.1.i, ptr %mclk_scaler.i, align 4
  %shl.i = shl i64 %f2_max.1.i, 28
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %shl.i)
  %cmp164.i.i.i = icmp ult i64 %shl.i, 4294967296
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !291

if.then168.i.i.i:                                 ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv169.i.i.i = trunc i64 %shl.i to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %freq_in
  %conv173.i.i.i = zext i32 %div172.i.i.i to i64
  br label %div_u64.exit.i

if.else174.i.i.i:                                 ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  %17 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %freq_in, i64 %shl.i) #11, !srcloc !292
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %17, 1
  br label %div_u64.exit.i

div_u64.exit.i:                                   ; preds = %if.else174.i.i.i, %if.then168.i.i.i
  %dividend.addr.0.i.i.i = phi i64 [ %conv173.i.i.i, %if.then168.i.i.i ], [ %asmresult1.i.i.i.i, %if.else174.i.i.i ]
  %18 = ptrtoint ptr %pll to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %pll, align 4
  %19 = and i64 %dividend.addr.0.i.i.i, 3758096384
  call void @__sanitizer_cov_trace_const_cmp8(i64 1610612736, i64 %19)
  %cmp20.i = icmp ult i64 %19, 1610612736
  %extract.t55.i = trunc i64 %dividend.addr.0.i.i.i to i32
  br i1 %cmp20.i, label %if.then22.i, label %div_u64.exit.i.do.end5_crit_edge

div_u64.exit.i.do.end5_crit_edge:                 ; preds = %div_u64.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end5

if.then22.i:                                      ; preds = %div_u64.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %pll to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %pll, align 4
  %extract.t.i = shl i32 %extract.t55.i, 1
  br label %do.end5

do.end:                                           ; preds = %for.end.i.do.end_crit_edge, %entry.do.end_crit_edge
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.143, i32 noundef %freq_in) #10
  br label %cleanup

do.end5:                                          ; preds = %if.then22.i, %div_u64.exit.i.do.end5_crit_edge
  %pll_ratio.0.off0.i = phi i32 [ %extract.t.i, %if.then22.i ], [ %extract.t55.i, %div_u64.exit.i.do.end5_crit_edge ]
  %23 = lshr i32 %pll_ratio.0.off0.i, 28
  %pll_int.i = getelementptr inbounds %struct.nau8810, ptr %5, i32 0, i32 2, i32 3
  %24 = ptrtoint ptr %pll_int.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %pll_int.i, align 4
  %25 = lshr i32 %pll_ratio.0.off0.i, 4
  %conv31.i = and i32 %25, 16777215
  %pll_frac.i = getelementptr inbounds %struct.nau8810, ptr %5, i32 0, i32 2, i32 2
  %26 = ptrtoint ptr %pll_frac.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv31.i, ptr %pll_frac.i, align 4
  %27 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %5, align 4
  %29 = ptrtoint ptr %mclk_scaler.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mclk_scaler.i, align 4
  %31 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pll, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %28, ptr noundef nonnull @.str.146, i32 noundef %23, i32 noundef %conv31.i, i32 noundef %30, i32 noundef %32) #10
  %33 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pll, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not = icmp eq i32 %34, 0
  %cond = select i1 %tobool.not, i32 0, i32 16
  %35 = ptrtoint ptr %pll_int.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pll_int.i, align 4
  %or = or i32 %cond, %36
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 36, i32 noundef 31, i32 noundef %or, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %37 = ptrtoint ptr %pll_frac.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pll_frac.i, align 4
  %39 = lshr i32 %38, 18
  %and = and i32 %39, 63
  %call11 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 37, i32 noundef %and) #7
  %40 = ptrtoint ptr %pll_frac.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pll_frac.i, align 4
  %42 = lshr i32 %41, 9
  %and14 = and i32 %42, 511
  %call15 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 38, i32 noundef %and14) #7
  %43 = ptrtoint ptr %pll_frac.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %pll_frac.i, align 4
  %and17 = and i32 %44, 511
  %call18 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 39, i32 noundef %and17) #7
  %45 = ptrtoint ptr %mclk_scaler.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %mclk_scaler.i, align 4
  %shl = shl i32 %46, 5
  %call.i48 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 6, i32 noundef 224, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %call.i49 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 6, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end5, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %do.end5 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nau8810_set_dai_fmt(ptr nocapture noundef readonly %codec_dai, i32 noundef %fmt) #2 align 64 {
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
  %6 = trunc i32 %fmt to i16
  %trunc = and i16 %6, -4096
  %7 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.157)
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
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %ctrl2_val.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ 1, %sw.bb ]
  %and3 = and i32 %fmt, 15
  %switch.tableidx = add nsw i32 %and3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %8 = icmp ult i32 %switch.tableidx, 4
  br i1 %8, label %switch.lookup, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.lookup:                                    ; preds = %sw.epilog
  %switch.gep = getelementptr inbounds [4 x i16], ptr @switch.table.nau8810_set_dai_fmt, i32 0, i32 %switch.tableidx
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load2_noabort(i32 %9)
  %switch.load = load i16, ptr %switch.gep, align 2
  %and18 = lshr i32 %fmt, 8
  %10 = and i32 %and18, 15
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.158)
  switch i32 %10, label %switch.lookup.cleanup_crit_edge [
    i32 0, label %switch.lookup.sw.epilog32_crit_edge
    i32 4, label %sw.bb19
    i32 3, label %sw.bb23
    i32 2, label %sw.bb27
  ]

switch.lookup.sw.epilog32_crit_edge:              ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog32

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb19:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  %12 = or i16 %switch.load, 384
  br label %sw.epilog32

sw.bb23:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  %13 = or i16 %switch.load, 256
  br label %sw.epilog32

sw.bb27:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  %14 = or i16 %switch.load, 128
  br label %sw.epilog32

sw.epilog32:                                      ; preds = %sw.bb27, %sw.bb23, %sw.bb19, %switch.lookup.sw.epilog32_crit_edge
  %ctrl1_val.1 = phi i16 [ %14, %sw.bb27 ], [ %13, %sw.bb23 ], [ %12, %sw.bb19 ], [ %switch.load, %switch.lookup.sw.epilog32_crit_edge ]
  %regmap = getelementptr inbounds %struct.nau8810, ptr %5, i32 0, i32 1
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %conv33 = zext i16 %ctrl1_val.1 to i32
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 4, i32 noundef 408, i32 noundef %conv33, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  %call.i51 = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 6, i32 noundef 1, i32 noundef %ctrl2_val.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog32, %switch.lookup.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog32 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ -22, %switch.lookup.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nau8810_pcm_hw_params(ptr nocapture noundef readnone %substream, ptr noundef %params, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  %ctrl_val = alloca i32, align 4
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ctrl_val) #7
  %6 = ptrtoint ptr %ctrl_val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %ctrl_val, align 4, !annotation !287
  %regmap = getelementptr inbounds %struct.nau8810, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call2 = call i32 @regmap_read(ptr noundef %8, i32 noundef 6, ptr noundef nonnull %ctrl_val) #7
  %9 = ptrtoint ptr %ctrl_val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ctrl_val, align 4
  %and = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end16_crit_edge, label %if.then

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then:                                          ; preds = %entry
  %call3 = call i32 @snd_soc_params_to_bclk(ptr noundef %params) #7
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i, align 4
  %div = udiv i32 %call3, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %div)
  %cmp = icmp ult i32 %div, 33
  br i1 %cmp, label %if.then.if.end13_crit_edge, label %if.else

if.then.if.end13_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %div)
  %cmp6 = icmp ult i32 %div, 65
  br i1 %cmp6, label %if.else.if.end13_crit_edge, label %if.else8

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.else8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 129, i32 %div)
  %cmp9 = icmp ult i32 %div, 129
  br i1 %cmp9, label %if.else8.if.end13_crit_edge, label %if.else8.cleanup_crit_edge

if.else8.cleanup_crit_edge:                       ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else8.if.end13_crit_edge:                      ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.end13:                                         ; preds = %if.else8.if.end13_crit_edge, %if.else.if.end13_crit_edge, %if.then.if.end13_crit_edge
  %bclk_div.0 = phi i32 [ 12, %if.then.if.end13_crit_edge ], [ 8, %if.else.if.end13_crit_edge ], [ 4, %if.else8.if.end13_crit_edge ]
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 6, i32 noundef 28, i32 noundef %bclk_div.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end16

if.end16:                                         ; preds = %if.end13, %entry.if.end16_crit_edge
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i.i.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %if.end16.if.then.i.i.i_crit_edge

if.end16.if.then.i.i.i_crit_edge:                 ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %if.end16.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %if.end16.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %16, %if.end16.if.then.i.i.i_crit_edge ], [ %19, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %17 = call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #7, !range !293
  %add.i.i.i = or i32 %17, %i.09.lcssa.i.i.i
  br label %params_width.exit

for.inc.i.i.i:                                    ; preds = %if.end16
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.1.i.i.i = icmp eq i32 %19, 0
  br i1 %tobool.not.1.i.i.i, label %for.inc.i.i.i.params_width.exit_crit_edge, label %for.inc.i.i.i.if.then.i.i.i_crit_edge

for.inc.i.i.i.if.then.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i

for.inc.i.i.i.params_width.exit_crit_edge:        ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %params_width.exit

params_width.exit:                                ; preds = %for.inc.i.i.i.params_width.exit_crit_edge, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ 0, %for.inc.i.i.i.params_width.exit_crit_edge ]
  %call1.i = call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i) #7
  %20 = zext i32 %call1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.159)
  switch i32 %call1.i, label %params_width.exit.sw.epilog_crit_edge [
    i32 32, label %sw.bb20
    i32 20, label %sw.bb
    i32 24, label %sw.bb18
  ]

params_width.exit.sw.epilog_crit_edge:            ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb18:                                          ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb20:                                          ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb20, %sw.bb18, %sw.bb, %params_width.exit.sw.epilog_crit_edge
  %val_len.0 = phi i32 [ 0, %params_width.exit.sw.epilog_crit_edge ], [ 64, %sw.bb18 ], [ 32, %sw.bb ], [ 96, %sw.bb20 ]
  %arrayidx.i.i75 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %21 = ptrtoint ptr %arrayidx.i.i75 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i.i75, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.160)
  switch i32 %22, label %sw.epilog.sw.epilog34_crit_edge [
    i32 8000, label %sw.bb23
    i32 11025, label %sw.bb25
    i32 16000, label %sw.bb27
    i32 22050, label %sw.bb29
    i32 32000, label %sw.bb31
  ]

sw.epilog.sw.epilog34_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog34

sw.bb23:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog34

sw.bb25:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog34

sw.bb27:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog34

sw.bb29:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog34

sw.bb31:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog34

sw.epilog34:                                      ; preds = %sw.bb31, %sw.bb29, %sw.bb27, %sw.bb25, %sw.bb23, %sw.epilog.sw.epilog34_crit_edge
  %val_rate.0 = phi i32 [ 0, %sw.epilog.sw.epilog34_crit_edge ], [ 2, %sw.bb31 ], [ 4, %sw.bb29 ], [ 6, %sw.bb27 ], [ 8, %sw.bb25 ], [ 10, %sw.bb23 ]
  %24 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap, align 4
  %call.i76 = call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 4, i32 noundef 96, i32 noundef %val_len.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %26 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap, align 4
  %call.i77 = call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef 7, i32 noundef 14, i32 noundef %val_rate.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %clk_id = getelementptr inbounds %struct.nau8810, ptr %5, i32 0, i32 4
  %28 = ptrtoint ptr %clk_id to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %clk_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp39 = icmp eq i32 %29, 0
  br i1 %cmp39, label %if.then40, label %sw.epilog34.cleanup_crit_edge

sw.epilog34.cleanup_crit_edge:                    ; preds = %sw.epilog34
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then40:                                        ; preds = %sw.epilog34
  %30 = ptrtoint ptr %arrayidx.i.i75 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i.i75, align 4
  %call42 = call fastcc i32 @nau8810_mclk_clkdiv(ptr noundef %5, i32 noundef %31)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp43 = icmp slt i32 %call42, 0
  br i1 %cmp43, label %do.end, label %if.then40.cleanup_crit_edge

if.then40.cleanup_crit_edge:                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.149) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then40.cleanup_crit_edge, %sw.epilog34.cleanup_crit_edge, %if.else8.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.else8.cleanup_crit_edge ], [ %call42, %do.end ], [ %call42, %if.then40.cleanup_crit_edge ], [ 0, %sw.epilog34.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ctrl_val) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_params_to_bclk(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nau8810_mclk_clkdiv(ptr nocapture noundef readonly %nau8810, i32 noundef %rate) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %rate, 8
  %sysclk = getelementptr inbounds %struct.nau8810, ptr %nau8810, i32 0, i32 3
  %0 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sysclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %do.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %mul2 = mul i32 %1, 10
  %div3 = sdiv i32 %mul2, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %div3, i32 %mul)
  %cmp4 = icmp slt i32 %div3, %mul
  br i1 %cmp4, label %for.cond.preheader.do.body7_crit_edge, label %for.cond

for.cond.preheader.do.body7_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body7

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %nau8810 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nau8810, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.151) #10
  br label %cleanup

for.cond:                                         ; preds = %for.cond.preheader
  %div3.1 = sdiv i32 %mul2, 20
  call void @__sanitizer_cov_trace_cmp4(i32 %div3.1, i32 %mul)
  %cmp4.1 = icmp slt i32 %div3.1, %mul
  br i1 %cmp4.1, label %for.cond.do.body7_crit_edge, label %for.cond.1

for.cond.do.body7_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body7

for.cond.1:                                       ; preds = %for.cond
  %div3.2 = sdiv i32 %mul2, 30
  call void @__sanitizer_cov_trace_cmp4(i32 %div3.2, i32 %mul)
  %cmp4.2 = icmp slt i32 %div3.2, %mul
  br i1 %cmp4.2, label %for.cond.1.do.body7_crit_edge, label %for.cond.2

for.cond.1.do.body7_crit_edge:                    ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body7

for.cond.2:                                       ; preds = %for.cond.1
  %div3.3 = sdiv i32 %mul2, 40
  call void @__sanitizer_cov_trace_cmp4(i32 %div3.3, i32 %mul)
  %cmp4.3 = icmp slt i32 %div3.3, %mul
  br i1 %cmp4.3, label %for.cond.2.do.body7_crit_edge, label %for.cond.3

for.cond.2.do.body7_crit_edge:                    ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body7

for.cond.3:                                       ; preds = %for.cond.2
  %div3.4 = sdiv i32 %mul2, 60
  call void @__sanitizer_cov_trace_cmp4(i32 %div3.4, i32 %mul)
  %cmp4.4 = icmp slt i32 %div3.4, %mul
  br i1 %cmp4.4, label %for.cond.3.do.body7_crit_edge, label %for.cond.4

for.cond.3.do.body7_crit_edge:                    ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body7

for.cond.4:                                       ; preds = %for.cond.3
  %div3.5 = sdiv i32 %mul2, 80
  call void @__sanitizer_cov_trace_cmp4(i32 %div3.5, i32 %mul)
  %cmp4.5 = icmp slt i32 %div3.5, %mul
  br i1 %cmp4.5, label %for.cond.4.do.body7_crit_edge, label %for.cond.5

for.cond.4.do.body7_crit_edge:                    ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body7

for.cond.5:                                       ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #9
  %div3.6 = sdiv i32 %mul2, 120
  call void @__sanitizer_cov_trace_cmp4(i32 %div3.6, i32 %mul)
  %cmp4.6 = icmp slt i32 %div3.6, %mul
  %spec.select = select i1 %cmp4.6, i32 6, i32 7
  br label %do.body7

do.body7:                                         ; preds = %for.cond.5, %for.cond.4.do.body7_crit_edge, %for.cond.3.do.body7_crit_edge, %for.cond.2.do.body7_crit_edge, %for.cond.1.do.body7_crit_edge, %for.cond.do.body7_crit_edge, %for.cond.preheader.do.body7_crit_edge
  %div.0.lcssa = phi i32 [ 0, %for.cond.preheader.do.body7_crit_edge ], [ 1, %for.cond.do.body7_crit_edge ], [ 2, %for.cond.1.do.body7_crit_edge ], [ 3, %for.cond.2.do.body7_crit_edge ], [ 4, %for.cond.3.do.body7_crit_edge ], [ 5, %for.cond.4.do.body7_crit_edge ], [ %spec.select, %for.cond.5 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nau8810_mclk_clkdiv.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nau8810_mclk_clkdiv, %if.then11)) #7
          to label %do.end15 [label %if.then11], !srcloc !288

if.then11:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %nau8810 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nau8810, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nau8810_mclk_clkdiv.__UNIQUE_ID_ddebug295, ptr noundef %5, ptr noundef nonnull @.str.153, i32 noundef %div.0.lcssa, i32 noundef %rate) #7
  br label %do.end15

do.end15:                                         ; preds = %if.then11, %do.body7
  %regmap = getelementptr inbounds %struct.nau8810, ptr %nau8810, i32 0, i32 1
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %shl = shl nuw nsw i32 %div.0.lcssa, 5
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 6, i32 noundef 224, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call.i32 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 6, i32 noundef 256, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end15, %do.end
  %retval.0 = phi i32 [ 0, %do.end15 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 189)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 189)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !144, !145, !146, !147, !148, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !246, !247, !248, !249, !251, !252, !253, !254, !256, !257, !258, !259, !261, !263, !264, !265, !266, !268, !269, !270, !271, !273, !274, !276}
!llvm.module.flags = !{!278, !279, !280, !281, !282, !283, !284, !285}
!llvm.ident = !{!286}

!0 = !{ptr @__initcall__kmod_snd_soc_nau8810__296_923_nau8810_i2c_driver_init6, !1, !"__initcall__kmod_snd_soc_nau8810__296_923_nau8810_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/nau8810.c", i32 923, i32 1}
!2 = !{ptr @__exitcall_nau8810_i2c_driver_exit, !1, !"__exitcall_nau8810_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description297, !4, !"__UNIQUE_ID_description297", i1 false, i1 false}
!4 = !{!"../sound/soc/codecs/nau8810.c", i32 925, i32 1}
!5 = !{ptr @__UNIQUE_ID_author298, !6, !"__UNIQUE_ID_author298", i1 false, i1 false}
!6 = !{!"../sound/soc/codecs/nau8810.c", i32 926, i32 1}
!7 = !{ptr @__UNIQUE_ID_file299, !8, !"__UNIQUE_ID_file299", i1 false, i1 false}
!8 = !{!"../sound/soc/codecs/nau8810.c", i32 927, i32 1}
!9 = !{ptr @__UNIQUE_ID_license300, !8, !"__UNIQUE_ID_license300", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/codecs/nau8810.c", i32 916, i32 11}
!12 = !{ptr @nau8810_i2c_driver, !13, !"nau8810_i2c_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/nau8810.c", i32 914, i32 26}
!14 = !{ptr @nau8810_i2c_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/nau8810.c", i32 885, i32 20}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @nau8810_regmap_config, !18, !"nau8810_regmap_config", i1 false, i1 false}
!18 = !{!"../sound/soc/codecs/nau8810.c", i32 843, i32 35}
!19 = !{ptr @nau8810_reg_defaults, !20, !"nau8810_reg_defaults", i1 false, i1 false}
!20 = !{!"../sound/soc/codecs/nau8810.c", i32 39, i32 33}
!21 = !{ptr @nau8810_component_driver, !22, !"nau8810_component_driver", i1 false, i1 false}
!22 = !{!"../sound/soc/codecs/nau8810.c", i32 857, i32 46}
!23 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../sound/soc/codecs/nau8810.c", i32 266, i32 2}
!25 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../sound/soc/codecs/nau8810.c", i32 267, i32 2}
!27 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/soc/codecs/nau8810.c", i32 268, i32 2}
!29 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/soc/codecs/nau8810.c", i32 270, i32 2}
!31 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/soc/codecs/nau8810.c", i32 271, i32 2}
!33 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/soc/codecs/nau8810.c", i32 274, i32 2}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/soc/codecs/nau8810.c", i32 276, i32 2}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/soc/codecs/nau8810.c", i32 279, i32 2}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/soc/codecs/nau8810.c", i32 281, i32 2}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/soc/codecs/nau8810.c", i32 284, i32 2}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/soc/codecs/nau8810.c", i32 286, i32 2}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/soc/codecs/nau8810.c", i32 289, i32 2}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/soc/codecs/nau8810.c", i32 291, i32 2}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/soc/codecs/nau8810.c", i32 293, i32 2}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/soc/codecs/nau8810.c", i32 295, i32 2}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/soc/codecs/nau8810.c", i32 297, i32 2}
!55 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/soc/codecs/nau8810.c", i32 300, i32 2}
!57 = !{ptr @.str.31, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/soc/codecs/nau8810.c", i32 302, i32 2}
!59 = !{ptr @.str.33, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/soc/codecs/nau8810.c", i32 304, i32 2}
!61 = !{ptr @.str.35, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/soc/codecs/nau8810.c", i32 306, i32 2}
!63 = !{ptr @.str.37, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/soc/codecs/nau8810.c", i32 308, i32 2}
!65 = !{ptr @.str.39, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/soc/codecs/nau8810.c", i32 311, i32 2}
!67 = !{ptr @.str.40, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/soc/codecs/nau8810.c", i32 312, i32 2}
!69 = !{ptr @.str.42, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/soc/codecs/nau8810.c", i32 314, i32 2}
!71 = !{ptr @.str.44, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/soc/codecs/nau8810.c", i32 316, i32 2}
!73 = !{ptr @.str.46, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/soc/codecs/nau8810.c", i32 318, i32 2}
!75 = !{ptr @.str.48, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/soc/codecs/nau8810.c", i32 320, i32 2}
!77 = !{ptr @.str.50, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../sound/soc/codecs/nau8810.c", i32 322, i32 2}
!79 = !{ptr @.str.52, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/soc/codecs/nau8810.c", i32 324, i32 2}
!81 = !{ptr @.str.54, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/soc/codecs/nau8810.c", i32 326, i32 2}
!83 = !{ptr @.str.56, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/soc/codecs/nau8810.c", i32 328, i32 2}
!85 = !{ptr @.str.58, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../sound/soc/codecs/nau8810.c", i32 330, i32 2}
!87 = !{ptr @.str.60, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../sound/soc/codecs/nau8810.c", i32 333, i32 2}
!89 = !{ptr @.str.62, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/soc/codecs/nau8810.c", i32 335, i32 2}
!91 = !{ptr @.str.64, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../sound/soc/codecs/nau8810.c", i32 338, i32 2}
!93 = !{ptr @.str.66, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/soc/codecs/nau8810.c", i32 340, i32 2}
!95 = !{ptr @.str.68, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/soc/codecs/nau8810.c", i32 342, i32 2}
!97 = !{ptr @.str.70, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../sound/soc/codecs/nau8810.c", i32 345, i32 2}
!99 = !{ptr @.str.72, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/soc/codecs/nau8810.c", i32 347, i32 2}
!101 = !{ptr @.str.74, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../sound/soc/codecs/nau8810.c", i32 350, i32 2}
!103 = !{ptr @.str.76, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../sound/soc/codecs/nau8810.c", i32 352, i32 2}
!105 = !{ptr @nau8810_snd_controls, !106, !"nau8810_snd_controls", i1 false, i1 false}
!106 = !{!"../sound/soc/codecs/nau8810.c", i32 265, i32 38}
!107 = !{ptr @nau8810_companding_adc_enum, !108, !"nau8810_companding_adc_enum", i1 false, i1 false}
!108 = !{!"../sound/soc/codecs/nau8810.c", i32 233, i32 30}
!109 = !{ptr @.str.78, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../sound/soc/codecs/nau8810.c", i32 231, i32 2}
!111 = !{ptr @.str.79, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../sound/soc/codecs/nau8810.c", i32 231, i32 9}
!113 = !{ptr @.str.80, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../sound/soc/codecs/nau8810.c", i32 231, i32 15}
!115 = !{ptr @.str.81, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../sound/soc/codecs/nau8810.c", i32 231, i32 24}
!117 = !{ptr @nau8810_companding, !118, !"nau8810_companding", i1 false, i1 false}
!118 = !{!"../sound/soc/codecs/nau8810.c", i32 230, i32 27}
!119 = !{ptr @nau8810_companding_dac_enum, !120, !"nau8810_companding_dac_enum", i1 false, i1 false}
!120 = !{!"../sound/soc/codecs/nau8810.c", i32 237, i32 30}
!121 = !{ptr @nau8810_deemp_enum, !122, !"nau8810_deemp_enum", i1 false, i1 false}
!122 = !{!"../sound/soc/codecs/nau8810.c", i32 244, i32 30}
!123 = !{ptr @.str.82, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../sound/soc/codecs/nau8810.c", i32 242, i32 2}
!125 = !{ptr @.str.83, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../sound/soc/codecs/nau8810.c", i32 242, i32 10}
!127 = !{ptr @.str.84, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../sound/soc/codecs/nau8810.c", i32 242, i32 19}
!129 = !{ptr @.str.85, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../sound/soc/codecs/nau8810.c", i32 242, i32 30}
!131 = !{ptr @nau8810_deemp, !132, !"nau8810_deemp", i1 false, i1 false}
!132 = !{!"../sound/soc/codecs/nau8810.c", i32 241, i32 27}
!133 = !{ptr @nau8810_eqmode_enum, !134, !"nau8810_eqmode_enum", i1 false, i1 false}
!134 = !{!"../sound/soc/codecs/nau8810.c", i32 250, i32 30}
!135 = !{ptr @.str.86, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../sound/soc/codecs/nau8810.c", i32 248, i32 47}
!137 = !{ptr @.str.87, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../sound/soc/codecs/nau8810.c", i32 248, i32 58}
!139 = !{ptr @nau8810_eqmode, !140, !"nau8810_eqmode", i1 false, i1 false}
!140 = !{!"../sound/soc/codecs/nau8810.c", i32 248, i32 27}
!141 = !{ptr @.str.88, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../sound/soc/codecs/nau8810.c", i32 219, i32 4}
!143 = !{ptr @.str.89, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @.str.90, !142, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @.str.91, !142, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @.str.92, !142, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @nau8810_eq_put._entry, !142, !"_entry", i1 false, i1 false}
!148 = !{ptr @nau8810_eq_put._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @digital_tlv, !150, !"digital_tlv", i1 false, i1 false}
!150 = !{!"../sound/soc/codecs/nau8810.c", i32 260, i32 14}
!151 = !{ptr @eq_tlv, !152, !"eq_tlv", i1 false, i1 false}
!152 = !{!"../sound/soc/codecs/nau8810.c", i32 261, i32 14}
!153 = !{ptr @nau8810_alc_enum, !154, !"nau8810_alc_enum", i1 false, i1 false}
!154 = !{!"../sound/soc/codecs/nau8810.c", i32 256, i32 30}
!155 = !{ptr @.str.93, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../sound/soc/codecs/nau8810.c", i32 254, i32 44}
!157 = !{ptr @.str.94, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../sound/soc/codecs/nau8810.c", i32 254, i32 54}
!159 = !{ptr @nau8810_alc, !160, !"nau8810_alc", i1 false, i1 false}
!160 = !{!"../sound/soc/codecs/nau8810.c", i32 254, i32 27}
!161 = !{ptr @inpga_tlv, !162, !"inpga_tlv", i1 false, i1 false}
!162 = !{!"../sound/soc/codecs/nau8810.c", i32 262, i32 14}
!163 = !{ptr @spk_tlv, !164, !"spk_tlv", i1 false, i1 false}
!164 = !{!"../sound/soc/codecs/nau8810.c", i32 263, i32 14}
!165 = !{ptr @.str.95, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../sound/soc/codecs/nau8810.c", i32 430, i32 2}
!167 = !{ptr @.str.96, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../sound/soc/codecs/nau8810.c", i32 433, i32 2}
!169 = !{ptr @.str.97, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../sound/soc/codecs/nau8810.c", i32 436, i32 2}
!171 = !{ptr @.str.98, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../sound/soc/codecs/nau8810.c", i32 438, i32 2}
!173 = !{ptr @.str.99, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../sound/soc/codecs/nau8810.c", i32 440, i32 2}
!175 = !{ptr @.str.100, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../sound/soc/codecs/nau8810.c", i32 442, i32 2}
!177 = !{ptr @.str.101, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../sound/soc/codecs/nau8810.c", i32 444, i32 2}
!179 = !{ptr @.str.102, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../sound/soc/codecs/nau8810.c", i32 447, i32 2}
!181 = !{ptr @.str.103, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../sound/soc/codecs/nau8810.c", i32 450, i32 2}
!183 = !{ptr @.str.104, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../sound/soc/codecs/nau8810.c", i32 453, i32 2}
!185 = !{ptr @.str.105, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../sound/soc/codecs/nau8810.c", i32 456, i32 2}
!187 = !{ptr @.str.106, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../sound/soc/codecs/nau8810.c", i32 458, i32 2}
!189 = !{ptr @.str.107, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../sound/soc/codecs/nau8810.c", i32 461, i32 2}
!191 = !{ptr @.str.108, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../sound/soc/codecs/nau8810.c", i32 464, i32 2}
!193 = !{ptr @.str.109, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../sound/soc/codecs/nau8810.c", i32 465, i32 2}
!195 = !{ptr @.str.110, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../sound/soc/codecs/nau8810.c", i32 466, i32 2}
!197 = !{ptr @.str.111, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../sound/soc/codecs/nau8810.c", i32 467, i32 2}
!199 = !{ptr @.str.112, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../sound/soc/codecs/nau8810.c", i32 468, i32 2}
!201 = !{ptr @.str.113, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../sound/soc/codecs/nau8810.c", i32 469, i32 2}
!203 = !{ptr @nau8810_dapm_widgets, !204, !"nau8810_dapm_widgets", i1 false, i1 false}
!204 = !{!"../sound/soc/codecs/nau8810.c", i32 429, i32 41}
!205 = !{ptr @.str.115, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../sound/soc/codecs/nau8810.c", i32 358, i32 2}
!207 = !{ptr @.str.117, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../sound/soc/codecs/nau8810.c", i32 360, i32 2}
!209 = !{ptr @.str.119, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../sound/soc/codecs/nau8810.c", i32 362, i32 2}
!211 = !{ptr @nau8810_speaker_mixer_controls, !212, !"nau8810_speaker_mixer_controls", i1 false, i1 false}
!212 = !{!"../sound/soc/codecs/nau8810.c", i32 357, i32 38}
!213 = !{ptr @nau8810_mono_mixer_controls, !214, !"nau8810_mono_mixer_controls", i1 false, i1 false}
!214 = !{!"../sound/soc/codecs/nau8810.c", i32 367, i32 38}
!215 = !{ptr @.str.124, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../sound/soc/codecs/nau8810.c", i32 388, i32 2}
!217 = !{ptr @.str.126, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../sound/soc/codecs/nau8810.c", i32 390, i32 2}
!219 = !{ptr @.str.128, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../sound/soc/codecs/nau8810.c", i32 392, i32 2}
!221 = !{ptr @nau8810_inpga, !222, !"nau8810_inpga", i1 false, i1 false}
!222 = !{!"../sound/soc/codecs/nau8810.c", i32 387, i32 38}
!223 = !{ptr @.str.130, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../sound/soc/codecs/nau8810.c", i32 378, i32 2}
!225 = !{ptr @.str.132, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../sound/soc/codecs/nau8810.c", i32 380, i32 2}
!227 = !{ptr @.str.134, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../sound/soc/codecs/nau8810.c", i32 382, i32 2}
!229 = !{ptr @nau8810_pgaboost_mixer_controls, !230, !"nau8810_pgaboost_mixer_controls", i1 false, i1 false}
!230 = !{!"../sound/soc/codecs/nau8810.c", i32 377, i32 38}
!231 = !{ptr @.str.136, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../sound/soc/codecs/nau8810.c", i32 398, i32 2}
!233 = !{ptr @nau8810_loopback, !234, !"nau8810_loopback", i1 false, i1 false}
!234 = !{!"../sound/soc/codecs/nau8810.c", i32 397, i32 38}
!235 = !{ptr @nau8810_dapm_routes, !236, !"nau8810_dapm_routes", i1 false, i1 false}
!236 = !{!"../sound/soc/codecs/nau8810.c", i32 472, i32 40}
!237 = !{ptr @.str.138, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../sound/soc/codecs/nau8810.c", i32 824, i32 10}
!239 = !{ptr @nau8810_dai, !240, !"nau8810_dai", i1 false, i1 false}
!240 = !{!"../sound/soc/codecs/nau8810.c", i32 823, i32 34}
!241 = !{ptr @nau8810_ops, !242, !"nau8810_ops", i1 false, i1 false}
!242 = !{!"../sound/soc/codecs/nau8810.c", i32 816, i32 37}
!243 = !{ptr @.str.139, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../sound/soc/codecs/nau8810.c", i32 520, i32 2}
!245 = !{ptr @.str.140, !244, !"<string literal>", i1 false, i1 false}
!246 = !{ptr @.str.141, !244, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @nau8810_set_sysclk.__UNIQUE_ID_ddebug294, !244, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!248 = !{ptr @.str.142, !244, !"<string literal>", i1 false, i1 false}
!249 = !{ptr @.str.143, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../sound/soc/codecs/nau8810.c", i32 578, i32 3}
!251 = !{ptr @.str.144, !250, !"<string literal>", i1 false, i1 false}
!252 = !{ptr @nau8810_set_pll._entry, !250, !"_entry", i1 false, i1 false}
!253 = !{ptr @nau8810_set_pll._entry_ptr, !250, !"_entry_ptr", i1 false, i1 false}
!254 = !{ptr @.str.146, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../sound/soc/codecs/nau8810.c", i32 581, i32 2}
!256 = !{ptr @.str.147, !255, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @nau8810_set_pll._entry.145, !255, !"_entry", i1 false, i1 false}
!258 = !{ptr @nau8810_set_pll._entry_ptr.148, !255, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @nau8810_mclk_scaler, !260, !"nau8810_mclk_scaler", i1 false, i1 false}
!260 = !{!"../sound/soc/codecs/nau8810.c", i32 37, i32 18}
!261 = !{ptr @.str.149, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../sound/soc/codecs/nau8810.c", i32 766, i32 4}
!263 = !{ptr @.str.150, !262, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @nau8810_pcm_hw_params._entry, !262, !"_entry", i1 false, i1 false}
!265 = !{ptr @nau8810_pcm_hw_params._entry_ptr, !262, !"_entry_ptr", i1 false, i1 false}
!266 = !{ptr @.str.151, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../sound/soc/codecs/nau8810.c", i32 668, i32 3}
!268 = !{ptr @.str.152, !267, !"<string literal>", i1 false, i1 false}
!269 = !{ptr @nau8810_mclk_clkdiv._entry, !267, !"_entry", i1 false, i1 false}
!270 = !{ptr @nau8810_mclk_clkdiv._entry_ptr, !267, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @.str.153, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../sound/soc/codecs/nau8810.c", i32 683, i32 2}
!273 = !{ptr @nau8810_mclk_clkdiv.__UNIQUE_ID_ddebug295, !272, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!274 = !{ptr @nau8810_of_match, !275, !"nau8810_of_match", i1 false, i1 false}
!275 = !{!"../sound/soc/codecs/nau8810.c", i32 905, i32 34}
!276 = !{ptr @nau8810_i2c_id, !277, !"nau8810_i2c_id", i1 false, i1 false}
!277 = !{!"../sound/soc/codecs/nau8810.c", i32 896, i32 35}
!278 = !{i32 1, !"wchar_size", i32 2}
!279 = !{i32 1, !"min_enum_size", i32 4}
!280 = !{i32 8, !"branch-target-enforcement", i32 0}
!281 = !{i32 8, !"sign-return-address", i32 0}
!282 = !{i32 8, !"sign-return-address-all", i32 0}
!283 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!284 = !{i32 7, !"uwtable", i32 1}
!285 = !{i32 7, !"frame-pointer", i32 2}
!286 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!287 = !{!"auto-init"}
!288 = !{i64 2148980059, i64 2148980064, i64 2148980077, i64 2148980121, i64 2148980155, i64 2148980176}
!289 = !{i64 727445, i64 727472}
!290 = !{i64 727785, i64 727812, i64 727846, i64 727867}
!291 = !{!"branch_weights", i32 2000, i32 1}
!292 = !{i64 2148213106, i64 2148213386, i64 2148213720, i64 2148214054}
!293 = !{i32 0, i32 33}
