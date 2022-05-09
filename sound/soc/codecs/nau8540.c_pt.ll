; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/nau8540.c_pt.bc'
source_filename = "../sound/soc/codecs/nau8540.c"
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
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.98, i32 }
%union.anon.98 = type { ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8, %struct.snd_soc_dobj }
%struct.atomic_t = type { i32 }
%struct.nau8540_fll_attr = type { i32, i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.nau8540_osr_attr = type { i32, i32 }
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
%struct.nau8540 = type { ptr, ptr }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@__initcall__kmod_snd_soc_nau8540__299_880_nau8540_i2c_driver_init6 = internal global ptr @nau8540_i2c_driver_init, section ".initcall6.init", align 4
@nau8540_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @nau8540_i2c_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @nau8540_of_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @nau8540_i2c_ids, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_nau8540_i2c_driver_exit = internal global ptr @nau8540_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description300 = internal constant [49 x i8] c"snd_soc_nau8540.description=ASoC NAU85L40 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author301 = internal constant [53 x i8] c"snd_soc_nau8540.author=John Hsu <KCHSU0@nuvoton.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file302 = internal constant [54 x i8] c"snd_soc_nau8540.file=sound/soc/codecs/snd-soc-nau8540\00", section ".modinfo", align 1
@__UNIQUE_ID_license303 = internal constant [31 x i8] c"snd_soc_nau8540.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"nau8540\00", [24 x i8] zeroinitializer }, align 32
@nau8540_of_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nuvoton,nau8540\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@nau8540_i2c_ids = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"nau8540\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@nau8540_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@nau8540_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 16, i32 0, i32 0, i32 16, ptr @nau8540_writeable_reg, ptr @nau8540_readable_reg, ptr @nau8540_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 109, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nau8540_reg_defaults, i32 51, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"nau8540:840:(&nau8540_regmap_config)->lock\00", [53 x i8] zeroinitializer }, align 32
@nau8540_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 846, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Failed to read device id from the NAU85L40: %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nau8540_i2c_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sound/soc/codecs/nau8540.c\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nau8540_i2c_probe._entry_ptr = internal global ptr @nau8540_i2c_probe._entry, section ".printk_index", align 4
@nau8540_component_driver = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @nau8540_snd_controls, i32 8, ptr @nau8540_dapm_widgets, i32 23, ptr @nau8540_dapm_routes, i32 36, ptr null, ptr null, ptr @nau8540_suspend, ptr @nau8540_resume, ptr null, ptr null, ptr null, ptr null, ptr @nau8540_set_sysclk, ptr @nau8540_set_pll, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 124, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@nau8540_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr @.str.64, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @nau8540_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.45, i64 73014445060, i32 254, i32 0, i32 0, i32 1, i32 4, i32 0 }, %struct.snd_soc_pcm_stream zeroinitializer, i8 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@nau8540_reg_defaults = internal constant { [51 x %struct.reg_default], [104 x i8] } { [51 x %struct.reg_default] [%struct.reg_default { i32 1, i32 0 }, %struct.reg_default { i32 2, i32 0 }, %struct.reg_default { i32 3, i32 0 }, %struct.reg_default { i32 4, i32 1 }, %struct.reg_default { i32 5, i32 12582 }, %struct.reg_default { i32 6, i32 8 }, %struct.reg_default { i32 7, i32 16 }, %struct.reg_default { i32 8, i32 49152 }, %struct.reg_default { i32 9, i32 24576 }, %struct.reg_default { i32 10, i32 61756 }, %struct.reg_default { i32 16, i32 11 }, %struct.reg_default { i32 17, i32 12304 }, %struct.reg_default { i32 18, i32 2048 }, %struct.reg_default { i32 19, i32 0 }, %struct.reg_default { i32 20, i32 15 }, %struct.reg_default { i32 32, i32 0 }, %struct.reg_default { i32 33, i32 28683 }, %struct.reg_default { i32 34, i32 34 }, %struct.reg_default { i32 35, i32 4112 }, %struct.reg_default { i32 36, i32 4112 }, %struct.reg_default { i32 48, i32 0 }, %struct.reg_default { i32 49, i32 0 }, %struct.reg_default { i32 50, i32 0 }, %struct.reg_default { i32 51, i32 0 }, %struct.reg_default { i32 52, i32 0 }, %struct.reg_default { i32 53, i32 0 }, %struct.reg_default { i32 54, i32 0 }, %struct.reg_default { i32 55, i32 0 }, %struct.reg_default { i32 56, i32 0 }, %struct.reg_default { i32 57, i32 0 }, %struct.reg_default { i32 58, i32 2 }, %struct.reg_default { i32 64, i32 1024 }, %struct.reg_default { i32 65, i32 1024 }, %struct.reg_default { i32 66, i32 1024 }, %struct.reg_default { i32 67, i32 1024 }, %struct.reg_default { i32 68, i32 228 }, %struct.reg_default { i32 80, i32 0 }, %struct.reg_default { i32 81, i32 0 }, %struct.reg_default { i32 82, i32 61439 }, %struct.reg_default { i32 96, i32 0 }, %struct.reg_default { i32 97, i32 0 }, %struct.reg_default { i32 100, i32 17 }, %struct.reg_default { i32 101, i32 32 }, %struct.reg_default { i32 102, i32 0 }, %struct.reg_default { i32 103, i32 4 }, %struct.reg_default { i32 104, i32 0 }, %struct.reg_default { i32 105, i32 0 }, %struct.reg_default { i32 106, i32 0 }, %struct.reg_default { i32 107, i32 257 }, %struct.reg_default { i32 108, i32 257 }, %struct.reg_default { i32 109, i32 0 }], [104 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@nau8540_snd_controls = internal constant { [8 x %struct.snd_kcontrol_new], [96 x i8] } { [8 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.7, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @adc_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.8, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @adc_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.9 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.10, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @adc_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.11 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.12, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @adc_vol_tlv }, i32 ptrtoint (ptr @.compoundliteral.13 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.14, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @fepga_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.15 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.16, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @fepga_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.17 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.18, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @fepga_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.19 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.20, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @fepga_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.21 to i32) }], [96 x i8] zeroinitializer }, align 32
@nau8540_dapm_routes = internal constant { [36 x %struct.snd_soc_dapm_route], [464 x i8] } { [36 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.28, ptr null, ptr @.str.24, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.29, ptr null, ptr @.str.25, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.30, ptr null, ptr @.str.26, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.31, ptr null, ptr @.str.27, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.32, ptr null, ptr @.str.28, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.33, ptr null, ptr @.str.29, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.34, ptr null, ptr @.str.30, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.35, ptr null, ptr @.str.31, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.36, ptr null, ptr @.str.32, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.37, ptr null, ptr @.str.33, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.38, ptr null, ptr @.str.34, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.39, ptr null, ptr @.str.35, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.32, ptr null, ptr @.str.23, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.33, ptr null, ptr @.str.23, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.34, ptr null, ptr @.str.22, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.35, ptr null, ptr @.str.22, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.43, ptr @.str.48, ptr @.str.36, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.43, ptr @.str.49, ptr @.str.37, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.43, ptr @.str.50, ptr @.str.38, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.43, ptr @.str.51, ptr @.str.39, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.42, ptr @.str.48, ptr @.str.36, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.42, ptr @.str.49, ptr @.str.37, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.42, ptr @.str.50, ptr @.str.38, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.42, ptr @.str.51, ptr @.str.39, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.41, ptr @.str.48, ptr @.str.36, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.41, ptr @.str.49, ptr @.str.37, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.41, ptr @.str.50, ptr @.str.38, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.41, ptr @.str.51, ptr @.str.39, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.40, ptr @.str.48, ptr @.str.36, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.40, ptr @.str.49, ptr @.str.37, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.40, ptr @.str.50, ptr @.str.38, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.40, ptr @.str.51, ptr @.str.39, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.44, ptr null, ptr @.str.43, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.44, ptr null, ptr @.str.42, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.44, ptr null, ptr @.str.41, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.44, ptr null, ptr @.str.40, ptr null, %struct.snd_soc_dobj zeroinitializer }], [464 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Mic1 Volume\00", [20 x i8] zeroinitializer }, align 32
@adc_vol_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 4, i32 8, i32 -12800, i32 3600], [16 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1312, i32 1312, i32 64, i32 64, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Mic2 Volume\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.9 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1312, i32 1312, i32 65, i32 65, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Mic3 Volume\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.11 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1312, i32 1312, i32 66, i32 66, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Mic4 Volume\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.13 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1312, i32 1312, i32 67, i32 67, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Frontend PGA1 Volume\00", [43 x i8] zeroinitializer }, align 32
@fepga_gain_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 4, i32 8, i32 -100, i32 3600], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.15 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 37, i32 37, i32 107, i32 107, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Frontend PGA2 Volume\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.17 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 37, i32 37, i32 107, i32 107, i32 8, i32 8, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Frontend PGA3 Volume\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.19 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 37, i32 37, i32 108, i32 108, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Frontend PGA4 Volume\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.21 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 37, i32 37, i32 108, i32 108, i32 8, i32 8, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MICBIAS2\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MICBIAS1\00", [23 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MIC1\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MIC2\00", [27 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MIC3\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MIC4\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Frontend PGA1\00", [18 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Frontend PGA2\00", [18 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Frontend PGA3\00", [18 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Frontend PGA4\00", [18 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ADC1\00", [27 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ADC2\00", [27 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ADC3\00", [27 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ADC4\00", [27 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ADC CH1\00", [24 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ADC CH2\00", [24 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ADC CH3\00", [24 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ADC CH4\00", [24 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Digital CH4 Mux\00", [16 x i8] zeroinitializer }, align 32
@digital_ch4_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.47, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @digital_ch4_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Digital CH3 Mux\00", [16 x i8] zeroinitializer }, align 32
@digital_ch3_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.52, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @digital_ch3_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Digital CH2 Mux\00", [16 x i8] zeroinitializer }, align 32
@digital_ch2_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.53, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @digital_ch2_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Digital CH1 Mux\00", [16 x i8] zeroinitializer }, align 32
@digital_ch1_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.54, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @digital_ch1_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AIFTX\00", [26 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Capture\00", [24 x i8] zeroinitializer }, align 32
@nau8540_dapm_widgets = internal constant { [23 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [1044 x i8] } { [23 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.22, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 103, i8 11, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.23, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 103, i8 10, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.24, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.25, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.26, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.27, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.28, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 109, i8 12, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.29, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 109, i8 13, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.30, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 109, i8 14, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.31, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 109, i8 15, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.32, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @adc_power_control, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.33, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 1, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @adc_power_control, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.34, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 1, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @adc_power_control, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.35, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 1, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @adc_power_control, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.36, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 102, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.37, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 102, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.38, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 102, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.39, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 102, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.40, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @digital_ch4_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.41, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @digital_ch3_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.42, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @digital_ch2_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.43, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @digital_ch1_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.44, ptr @.str.45, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 8, ptr @aiftx_power_control, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [1044 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Digital CH4 Select\00", [45 x i8] zeroinitializer }, align 32
@digital_ch4_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 68, i8 6, i8 6, i32 4, i32 3, ptr @adc_channel, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@adc_channel = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51], [16 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ADC channel 1\00", [18 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ADC channel 2\00", [18 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ADC channel 3\00", [18 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ADC channel 4\00", [18 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Digital CH3 Select\00", [45 x i8] zeroinitializer }, align 32
@digital_ch3_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 68, i8 4, i8 4, i32 4, i32 3, ptr @adc_channel, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Digital CH2 Select\00", [45 x i8] zeroinitializer }, align 32
@digital_ch2_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 68, i8 2, i8 2, i32 4, i32 3, ptr @adc_channel, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Digital CH1 Select\00", [45 x i8] zeroinitializer }, align 32
@digital_ch1_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 68, i8 0, i8 0, i32 4, i32 3, ptr @adc_channel, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@nau8540_set_sysclk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.4, i32 721, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Invalid clock id (%d)\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nau8540_set_sysclk\00", [45 x i8] zeroinitializer }, align 32
@nau8540_set_sysclk._entry_ptr = internal global ptr @nau8540_set_sysclk._entry, section ".printk_index", align 4
@nau8540_set_sysclk.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.57, ptr @.str.56, ptr @.str.4, ptr @.str.58, i8 0, i8 -75, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"snd_soc_nau8540\00", [16 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Sysclk is %dHz and clock id is %d\0A\00", [61 x i8] zeroinitializer }, align 32
@nau8540_set_pll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.59, ptr @.str.4, i32 675, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"nau8540_set_pll\00", [16 x i8] zeroinitializer }, align 32
@nau8540_set_pll._entry_ptr = internal global ptr @nau8540_set_pll._entry, section ".printk_index", align 4
@nau8540_set_pll.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.57, ptr @.str.59, ptr @.str.4, ptr @.str.58, i8 0, i8 -87, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@nau8540_set_pll._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.4, i32 684, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unsupported input clock %d\0A\00", [36 x i8] zeroinitializer }, align 32
@nau8540_set_pll._entry_ptr.62 = internal global ptr @nau8540_set_pll._entry.60, section ".printk_index", align 4
@nau8540_set_pll.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.57, ptr @.str.59, ptr @.str.4, ptr @.str.63, i8 0, i8 -84, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"mclk_src=%x ratio=%x fll_frac=%x fll_int=%x clk_ref_div=%x\0A\00", [36 x i8] zeroinitializer }, align 32
@fll_pre_scalar = internal constant { [4 x %struct.nau8540_fll_attr], [32 x i8] } { [4 x %struct.nau8540_fll_attr] [%struct.nau8540_fll_attr { i32 1, i32 0 }, %struct.nau8540_fll_attr { i32 2, i32 1 }, %struct.nau8540_fll_attr { i32 4, i32 2 }, %struct.nau8540_fll_attr { i32 8, i32 3 }], [32 x i8] zeroinitializer }, align 32
@fll_ratio = internal constant { [7 x %struct.nau8540_fll_attr], [40 x i8] } { [7 x %struct.nau8540_fll_attr] [%struct.nau8540_fll_attr { i32 512000, i32 1 }, %struct.nau8540_fll_attr { i32 256000, i32 2 }, %struct.nau8540_fll_attr { i32 128000, i32 4 }, %struct.nau8540_fll_attr { i32 64000, i32 8 }, %struct.nau8540_fll_attr { i32 32000, i32 16 }, %struct.nau8540_fll_attr { i32 8000, i32 32 }, %struct.nau8540_fll_attr { i32 4000, i32 64 }], [40 x i8] zeroinitializer }, align 32
@mclk_src_scaling = internal constant { [10 x %struct.nau8540_fll_attr], [48 x i8] } { [10 x %struct.nau8540_fll_attr] [%struct.nau8540_fll_attr { i32 1, i32 0 }, %struct.nau8540_fll_attr { i32 2, i32 2 }, %struct.nau8540_fll_attr { i32 4, i32 3 }, %struct.nau8540_fll_attr { i32 8, i32 4 }, %struct.nau8540_fll_attr { i32 16, i32 5 }, %struct.nau8540_fll_attr { i32 32, i32 6 }, %struct.nau8540_fll_attr { i32 3, i32 7 }, %struct.nau8540_fll_attr { i32 6, i32 10 }, %struct.nau8540_fll_attr { i32 12, i32 11 }, %struct.nau8540_fll_attr { i32 24, i32 12 }], [48 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nau8540-hifi\00", [19 x i8] zeroinitializer }, align 32
@nau8540_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr @nau8540_set_fmt, ptr null, ptr @nau8540_set_tdm_slot, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nau8540_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@osr_adc_sel = internal constant { [4 x %struct.nau8540_osr_attr], [32 x i8] } { [4 x %struct.nau8540_osr_attr] [%struct.nau8540_osr_attr { i32 32, i32 3 }, %struct.nau8540_osr_attr { i32 64, i32 2 }, %struct.nau8540_osr_attr { i32 128, i32 1 }, %struct.nau8540_osr_attr { i32 256, i32 0 }], [32 x i8] zeroinitializer }, align 32
@nau8540_clock_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.4, i32 366, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"exceed the maximum frequency of CLK_ADC\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nau8540_clock_check\00", [44 x i8] zeroinitializer }, align 32
@nau8540_clock_check._entry_ptr = internal global ptr @nau8540_clock_check._entry, section ".printk_index", align 4
@switch.table.nau8540_set_pll = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 63488, i32 64512], [20 x i8] zeroinitializer }, align 32
@switch.table.nau8540_hw_params = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 4, i32 8, i32 0, i32 12], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [55 x i64] [i64 53, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 16, i64 17, i64 18, i64 19, i64 20, i64 32, i64 33, i64 34, i64 35, i64 36, i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 56, i64 57, i64 58, i64 64, i64 65, i64 66, i64 67, i64 68, i64 80, i64 81, i64 82, i64 90, i64 96, i64 97, i64 100, i64 101, i64 102, i64 103, i64 104, i64 105, i64 106, i64 107, i64 108, i64 109]
@__sancov_gen_cov_switch_values.67 = internal global [65 x i64] [i64 63, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 16, i64 17, i64 18, i64 19, i64 20, i64 32, i64 33, i64 34, i64 35, i64 36, i64 45, i64 46, i64 47, i64 48, i64 49, i64 50, i64 51, i64 52, i64 53, i64 54, i64 55, i64 56, i64 57, i64 58, i64 64, i64 65, i64 66, i64 67, i64 68, i64 72, i64 73, i64 74, i64 75, i64 76, i64 77, i64 78, i64 79, i64 80, i64 81, i64 82, i64 88, i64 96, i64 97, i64 100, i64 101, i64 102, i64 103, i64 104, i64 105, i64 106, i64 107, i64 108, i64 109]
@__sancov_gen_cov_switch_values.68 = internal global [16 x i64] [i64 14, i64 32, i64 0, i64 45, i64 46, i64 47, i64 72, i64 73, i64 74, i64 75, i64 76, i64 77, i64 78, i64 79, i64 88, i64 90]
@__sancov_gen_cov_switch_values.69 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.71 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 768]
@__sancov_gen_cov_switch_values.72 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@___asan_gen_.73 = private unnamed_addr constant [19 x i8] c"nau8540_i2c_driver\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 872, i32 26 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 874, i32 11 }
@___asan_gen_.79 = private unnamed_addr constant [15 x i8] c"nau8540_of_ids\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 865, i32 34 }
@___asan_gen_.82 = private unnamed_addr constant [16 x i8] c"nau8540_i2c_ids\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 858, i32 35 }
@___asan_gen_.85 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [22 x i8] c"nau8540_regmap_config\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 812, i32 35 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 840, i32 20 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 845, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant [25 x i8] c"nau8540_component_driver\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 794, i32 46 }
@___asan_gen_.115 = private unnamed_addr constant [12 x i8] c"nau8540_dai\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 527, i32 34 }
@___asan_gen_.118 = private unnamed_addr constant [21 x i8] c"nau8540_reg_defaults\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 77, i32 33 }
@___asan_gen_.121 = private unnamed_addr constant [21 x i8] c"nau8540_snd_controls\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 186, i32 38 }
@___asan_gen_.124 = private unnamed_addr constant [20 x i8] c"nau8540_dapm_routes\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 313, i32 40 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 187, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant [12 x i8] c"adc_vol_tlv\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 183, i32 14 }
@___asan_gen_.133 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 189, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant [19 x i8] c".compoundliteral.9\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 191, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant [20 x i8] c".compoundliteral.11\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 193, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant [20 x i8] c".compoundliteral.13\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 196, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant [15 x i8] c"fepga_gain_tlv\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 184, i32 14 }
@___asan_gen_.152 = private unnamed_addr constant [20 x i8] c".compoundliteral.15\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 198, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant [20 x i8] c".compoundliteral.17\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 200, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant [20 x i8] c".compoundliteral.19\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 202, i32 2 }
@___asan_gen_.164 = private unnamed_addr constant [20 x i8] c".compoundliteral.21\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 269, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 270, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 272, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 273, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 274, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 275, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 277, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 278, i32 2 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 279, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 280, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 282, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 285, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 288, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 291, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 295, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 296, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 297, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 298, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 300, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant [16 x i8] c"digital_ch4_mux\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 212, i32 38 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 302, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant [16 x i8] c"digital_ch3_mux\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 218, i32 38 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 304, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant [16 x i8] c"digital_ch2_mux\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 224, i32 38 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 306, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant [16 x i8] c"digital_ch1_mux\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 230, i32 38 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 309, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant [21 x i8] c"nau8540_dapm_widgets\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 268, i32 41 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 213, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant [17 x i8] c"digital_ch4_enum\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 209, i32 8 }
@___asan_gen_.258 = private unnamed_addr constant [12 x i8] c"adc_channel\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 206, i32 27 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 207, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 207, i32 19 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 207, i32 36 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 207, i32 53 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 219, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant [17 x i8] c"digital_ch3_enum\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 215, i32 8 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 225, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant [17 x i8] c"digital_ch2_enum\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 221, i32 8 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 231, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant [17 x i8] c"digital_ch1_enum\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 227, i32 8 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 721, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 725, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 675, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 684, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 687, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant [15 x i8] c"fll_pre_scalar\00", align 1
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 62, i32 38 }
@___asan_gen_.324 = private unnamed_addr constant [10 x i8] c"fll_ratio\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 52, i32 38 }
@___asan_gen_.327 = private unnamed_addr constant [17 x i8] c"mclk_src_scaling\00", align 1
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 38, i32 38 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 528, i32 10 }
@___asan_gen_.333 = private unnamed_addr constant [16 x i8] c"nau8540_dai_ops\00", align 1
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 517, i32 37 }
@___asan_gen_.336 = private unnamed_addr constant [12 x i8] c"osr_adc_sel\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 70, i32 38 }
@___asan_gen_.339 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.345 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.346 = private constant [30 x i8] c"../sound/soc/codecs/nau8540.c\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.346, i32 366, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant [29 x i8] c"switch.table.nau8540_set_pll\00", align 1
@___asan_gen_.349 = private unnamed_addr constant [31 x i8] c"switch.table.nau8540_hw_params\00", align 1
@llvm.compiler.used = appending global [111 x ptr] [ptr @__UNIQUE_ID_author301, ptr @__UNIQUE_ID_description300, ptr @__UNIQUE_ID_file302, ptr @__UNIQUE_ID_license303, ptr @__exitcall_nau8540_i2c_driver_exit, ptr @__initcall__kmod_snd_soc_nau8540__299_880_nau8540_i2c_driver_init6, ptr @nau8540_clock_check._entry, ptr @nau8540_clock_check._entry_ptr, ptr @nau8540_i2c_driver_exit, ptr @nau8540_i2c_probe._entry, ptr @nau8540_i2c_probe._entry_ptr, ptr @nau8540_set_pll._entry, ptr @nau8540_set_pll._entry.60, ptr @nau8540_set_pll._entry_ptr, ptr @nau8540_set_pll._entry_ptr.62, ptr @nau8540_set_sysclk._entry, ptr @nau8540_set_sysclk._entry_ptr, ptr @nau8540_i2c_driver, ptr @.str, ptr @nau8540_of_ids, ptr @nau8540_i2c_ids, ptr @nau8540_i2c_probe._key, ptr @nau8540_regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @nau8540_component_driver, ptr @nau8540_dai, ptr @nau8540_reg_defaults, ptr @nau8540_snd_controls, ptr @nau8540_dapm_routes, ptr @.str.7, ptr @adc_vol_tlv, ptr @.compoundliteral, ptr @.str.8, ptr @.compoundliteral.9, ptr @.str.10, ptr @.compoundliteral.11, ptr @.str.12, ptr @.compoundliteral.13, ptr @.str.14, ptr @fepga_gain_tlv, ptr @.compoundliteral.15, ptr @.str.16, ptr @.compoundliteral.17, ptr @.str.18, ptr @.compoundliteral.19, ptr @.str.20, ptr @.compoundliteral.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @digital_ch4_mux, ptr @.str.41, ptr @digital_ch3_mux, ptr @.str.42, ptr @digital_ch2_mux, ptr @.str.43, ptr @digital_ch1_mux, ptr @.str.44, ptr @.str.45, ptr @nau8540_dapm_widgets, ptr @.str.47, ptr @digital_ch4_enum, ptr @adc_channel, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @digital_ch3_enum, ptr @.str.53, ptr @digital_ch2_enum, ptr @.str.54, ptr @digital_ch1_enum, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.63, ptr @fll_pre_scalar, ptr @fll_ratio, ptr @mclk_src_scaling, ptr @.str.64, ptr @nau8540_dai_ops, ptr @osr_adc_sel, ptr @.str.65, ptr @.str.66, ptr @switch.table.nau8540_set_pll, ptr @switch.table.nau8540_hw_params], section "llvm.metadata"
@0 = internal global [99 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8540_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8540_of_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8540_i2c_ids to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8540_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8540_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8540_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8540_component_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8540_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8540_reg_defaults to i32), i32 408, i32 512, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8540_snd_controls to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8540_dapm_routes to i32), i32 1872, i32 2336, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_vol_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.9 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.11 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.13 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fepga_gain_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.15 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.17 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.19 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.21 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_ch4_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_ch3_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_ch2_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_ch1_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8540_dapm_widgets to i32), i32 4140, i32 5184, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_ch4_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_channel to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_ch3_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_ch2_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_ch1_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8540_set_sysclk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8540_set_pll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8540_set_pll._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fll_pre_scalar to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fll_ratio to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mclk_src_scaling to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8540_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @osr_adc_sel to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nau8540_clock_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nau8540_set_pll to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nau8540_hw_params to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nau8540_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @nau8540_i2c_driver) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nau8540_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @nau8540_i2c_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nau8540_i2c_probe(ptr noundef %i2c, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %platform_data.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #7
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %value, align 4, !annotation !192
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then:                                          ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 8, i32 noundef 3520) #7
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.then.cleanup_crit_edge, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %nau8540.0 = phi ptr [ %1, %entry.if.end5_crit_edge ], [ %call.i, %if.then.if.end5_crit_edge ]
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %nau8540.0, ptr %driver_data.i.i, align 4
  %call6 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef nonnull @nau8540_regmap_config, ptr noundef nonnull @nau8540_i2c_probe._key, ptr noundef nonnull @.str.1) #7
  %regmap = getelementptr inbounds %struct.nau8540, ptr %nau8540.0, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call6, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %call6 to i32
  br label %cleanup

if.end12:                                         ; preds = %if.end5
  %call14 = call i32 @regmap_read(ptr noundef %call6, i32 noundef 88, ptr noundef nonnull %value) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp = icmp slt i32 %call14, 0
  br i1 %cmp, label %do.end, label %if.end16

do.end:                                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef %call14) #10
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %nau8540.0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev1, ptr %nau8540.0, align 4
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call.i40 = call i32 @regmap_write(ptr noundef %8, i32 noundef 0, i32 noundef 0) #7
  %call1.i = call i32 @regmap_write(ptr noundef %8, i32 noundef 0, i32 noundef 0) #7
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call.i.i = call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 96, i32 noundef 112, i32 noundef 96, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %call.i18.i = call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 104, i32 noundef 12288, i32 noundef 12288, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %11(i32 noundef 429496000) #7
  %call.i19.i = call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 103, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %call.i20.i = call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 2, i32 noundef 32770, i32 noundef 32770, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %call.i21.i = call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 58, i32 noundef 16387, i32 noundef 16385, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %call.i22.i = call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 105, i32 noundef 136, i32 noundef 136, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %call.i23.i = call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 106, i32 noundef 136, i32 noundef 136, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %call.i24.i = call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 17, i32 noundef 32768, i32 noundef 32768, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %call.i25.i = call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 18, i32 noundef 32768, i32 noundef 32768, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %call19 = call i32 @devm_snd_soc_register_component(ptr noundef %dev1, ptr noundef nonnull @nau8540_component_driver, ptr noundef nonnull @nau8540_dai, i32 noundef 1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %do.end, %if.then9, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then9 ], [ %call14, %do.end ], [ %call19, %if.end16 ], [ -12, %if.then.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #7
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
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @nau8540_writeable_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %sw.default [
    i32 90, label %entry.return_crit_edge
    i32 100, label %entry.return_crit_edge9
    i32 101, label %entry.return_crit_edge10
    i32 102, label %entry.return_crit_edge11
    i32 103, label %entry.return_crit_edge12
    i32 104, label %entry.return_crit_edge13
    i32 105, label %entry.return_crit_edge14
    i32 106, label %entry.return_crit_edge15
    i32 107, label %entry.return_crit_edge16
    i32 108, label %entry.return_crit_edge17
    i32 109, label %entry.return_crit_edge18
    i32 96, label %entry.return_crit_edge19
    i32 97, label %entry.return_crit_edge20
    i32 80, label %entry.return_crit_edge21
    i32 81, label %entry.return_crit_edge22
    i32 82, label %entry.return_crit_edge23
    i32 64, label %entry.return_crit_edge24
    i32 65, label %entry.return_crit_edge25
    i32 66, label %entry.return_crit_edge26
    i32 67, label %entry.return_crit_edge27
    i32 68, label %entry.return_crit_edge28
    i32 48, label %entry.return_crit_edge29
    i32 49, label %entry.return_crit_edge30
    i32 50, label %entry.return_crit_edge31
    i32 51, label %entry.return_crit_edge32
    i32 52, label %entry.return_crit_edge33
    i32 53, label %entry.return_crit_edge34
    i32 54, label %entry.return_crit_edge35
    i32 55, label %entry.return_crit_edge36
    i32 56, label %entry.return_crit_edge37
    i32 57, label %entry.return_crit_edge38
    i32 58, label %entry.return_crit_edge39
    i32 32, label %entry.return_crit_edge40
    i32 33, label %entry.return_crit_edge41
    i32 34, label %entry.return_crit_edge42
    i32 35, label %entry.return_crit_edge43
    i32 36, label %entry.return_crit_edge44
    i32 16, label %entry.return_crit_edge45
    i32 17, label %entry.return_crit_edge46
    i32 18, label %entry.return_crit_edge47
    i32 19, label %entry.return_crit_edge48
    i32 20, label %entry.return_crit_edge49
    i32 0, label %entry.return_crit_edge50
    i32 1, label %entry.return_crit_edge51
    i32 2, label %entry.return_crit_edge52
    i32 3, label %entry.return_crit_edge53
    i32 4, label %entry.return_crit_edge54
    i32 5, label %entry.return_crit_edge55
    i32 6, label %entry.return_crit_edge56
    i32 7, label %entry.return_crit_edge57
    i32 8, label %entry.return_crit_edge58
    i32 9, label %entry.return_crit_edge59
    i32 10, label %entry.return_crit_edge60
  ]

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

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30, %entry.return_crit_edge31, %entry.return_crit_edge32, %entry.return_crit_edge33, %entry.return_crit_edge34, %entry.return_crit_edge35, %entry.return_crit_edge36, %entry.return_crit_edge37, %entry.return_crit_edge38, %entry.return_crit_edge39, %entry.return_crit_edge40, %entry.return_crit_edge41, %entry.return_crit_edge42, %entry.return_crit_edge43, %entry.return_crit_edge44, %entry.return_crit_edge45, %entry.return_crit_edge46, %entry.return_crit_edge47, %entry.return_crit_edge48, %entry.return_crit_edge49, %entry.return_crit_edge50, %entry.return_crit_edge51, %entry.return_crit_edge52, %entry.return_crit_edge53, %entry.return_crit_edge54, %entry.return_crit_edge55, %entry.return_crit_edge56, %entry.return_crit_edge57, %entry.return_crit_edge58, %entry.return_crit_edge59, %entry.return_crit_edge60
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ], [ true, %entry.return_crit_edge30 ], [ true, %entry.return_crit_edge31 ], [ true, %entry.return_crit_edge32 ], [ true, %entry.return_crit_edge33 ], [ true, %entry.return_crit_edge34 ], [ true, %entry.return_crit_edge35 ], [ true, %entry.return_crit_edge36 ], [ true, %entry.return_crit_edge37 ], [ true, %entry.return_crit_edge38 ], [ true, %entry.return_crit_edge39 ], [ true, %entry.return_crit_edge40 ], [ true, %entry.return_crit_edge41 ], [ true, %entry.return_crit_edge42 ], [ true, %entry.return_crit_edge43 ], [ true, %entry.return_crit_edge44 ], [ true, %entry.return_crit_edge45 ], [ true, %entry.return_crit_edge46 ], [ true, %entry.return_crit_edge47 ], [ true, %entry.return_crit_edge48 ], [ true, %entry.return_crit_edge49 ], [ true, %entry.return_crit_edge50 ], [ true, %entry.return_crit_edge51 ], [ true, %entry.return_crit_edge52 ], [ true, %entry.return_crit_edge53 ], [ true, %entry.return_crit_edge54 ], [ true, %entry.return_crit_edge55 ], [ true, %entry.return_crit_edge56 ], [ true, %entry.return_crit_edge57 ], [ true, %entry.return_crit_edge58 ], [ true, %entry.return_crit_edge59 ], [ true, %entry.return_crit_edge60 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @nau8540_readable_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %reg, label %sw.default [
    i32 88, label %entry.return_crit_edge
    i32 100, label %entry.return_crit_edge9
    i32 101, label %entry.return_crit_edge10
    i32 102, label %entry.return_crit_edge11
    i32 103, label %entry.return_crit_edge12
    i32 104, label %entry.return_crit_edge13
    i32 105, label %entry.return_crit_edge14
    i32 106, label %entry.return_crit_edge15
    i32 107, label %entry.return_crit_edge16
    i32 108, label %entry.return_crit_edge17
    i32 109, label %entry.return_crit_edge18
    i32 96, label %entry.return_crit_edge19
    i32 97, label %entry.return_crit_edge20
    i32 72, label %entry.return_crit_edge21
    i32 73, label %entry.return_crit_edge22
    i32 74, label %entry.return_crit_edge23
    i32 75, label %entry.return_crit_edge24
    i32 76, label %entry.return_crit_edge25
    i32 77, label %entry.return_crit_edge26
    i32 78, label %entry.return_crit_edge27
    i32 79, label %entry.return_crit_edge28
    i32 80, label %entry.return_crit_edge29
    i32 81, label %entry.return_crit_edge30
    i32 82, label %entry.return_crit_edge31
    i32 64, label %entry.return_crit_edge32
    i32 65, label %entry.return_crit_edge33
    i32 66, label %entry.return_crit_edge34
    i32 67, label %entry.return_crit_edge35
    i32 68, label %entry.return_crit_edge36
    i32 45, label %entry.return_crit_edge37
    i32 46, label %entry.return_crit_edge38
    i32 47, label %entry.return_crit_edge39
    i32 48, label %entry.return_crit_edge40
    i32 49, label %entry.return_crit_edge41
    i32 50, label %entry.return_crit_edge42
    i32 51, label %entry.return_crit_edge43
    i32 52, label %entry.return_crit_edge44
    i32 53, label %entry.return_crit_edge45
    i32 54, label %entry.return_crit_edge46
    i32 55, label %entry.return_crit_edge47
    i32 56, label %entry.return_crit_edge48
    i32 57, label %entry.return_crit_edge49
    i32 58, label %entry.return_crit_edge50
    i32 32, label %entry.return_crit_edge51
    i32 33, label %entry.return_crit_edge52
    i32 34, label %entry.return_crit_edge53
    i32 35, label %entry.return_crit_edge54
    i32 36, label %entry.return_crit_edge55
    i32 16, label %entry.return_crit_edge56
    i32 17, label %entry.return_crit_edge57
    i32 18, label %entry.return_crit_edge58
    i32 19, label %entry.return_crit_edge59
    i32 20, label %entry.return_crit_edge60
    i32 1, label %entry.return_crit_edge61
    i32 2, label %entry.return_crit_edge62
    i32 3, label %entry.return_crit_edge63
    i32 4, label %entry.return_crit_edge64
    i32 5, label %entry.return_crit_edge65
    i32 6, label %entry.return_crit_edge66
    i32 7, label %entry.return_crit_edge67
    i32 8, label %entry.return_crit_edge68
    i32 9, label %entry.return_crit_edge69
    i32 10, label %entry.return_crit_edge70
  ]

entry.return_crit_edge70:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

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

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30, %entry.return_crit_edge31, %entry.return_crit_edge32, %entry.return_crit_edge33, %entry.return_crit_edge34, %entry.return_crit_edge35, %entry.return_crit_edge36, %entry.return_crit_edge37, %entry.return_crit_edge38, %entry.return_crit_edge39, %entry.return_crit_edge40, %entry.return_crit_edge41, %entry.return_crit_edge42, %entry.return_crit_edge43, %entry.return_crit_edge44, %entry.return_crit_edge45, %entry.return_crit_edge46, %entry.return_crit_edge47, %entry.return_crit_edge48, %entry.return_crit_edge49, %entry.return_crit_edge50, %entry.return_crit_edge51, %entry.return_crit_edge52, %entry.return_crit_edge53, %entry.return_crit_edge54, %entry.return_crit_edge55, %entry.return_crit_edge56, %entry.return_crit_edge57, %entry.return_crit_edge58, %entry.return_crit_edge59, %entry.return_crit_edge60, %entry.return_crit_edge61, %entry.return_crit_edge62, %entry.return_crit_edge63, %entry.return_crit_edge64, %entry.return_crit_edge65, %entry.return_crit_edge66, %entry.return_crit_edge67, %entry.return_crit_edge68, %entry.return_crit_edge69, %entry.return_crit_edge70
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ], [ true, %entry.return_crit_edge30 ], [ true, %entry.return_crit_edge31 ], [ true, %entry.return_crit_edge32 ], [ true, %entry.return_crit_edge33 ], [ true, %entry.return_crit_edge34 ], [ true, %entry.return_crit_edge35 ], [ true, %entry.return_crit_edge36 ], [ true, %entry.return_crit_edge37 ], [ true, %entry.return_crit_edge38 ], [ true, %entry.return_crit_edge39 ], [ true, %entry.return_crit_edge40 ], [ true, %entry.return_crit_edge41 ], [ true, %entry.return_crit_edge42 ], [ true, %entry.return_crit_edge43 ], [ true, %entry.return_crit_edge44 ], [ true, %entry.return_crit_edge45 ], [ true, %entry.return_crit_edge46 ], [ true, %entry.return_crit_edge47 ], [ true, %entry.return_crit_edge48 ], [ true, %entry.return_crit_edge49 ], [ true, %entry.return_crit_edge50 ], [ true, %entry.return_crit_edge51 ], [ true, %entry.return_crit_edge52 ], [ true, %entry.return_crit_edge53 ], [ true, %entry.return_crit_edge54 ], [ true, %entry.return_crit_edge55 ], [ true, %entry.return_crit_edge56 ], [ true, %entry.return_crit_edge57 ], [ true, %entry.return_crit_edge58 ], [ true, %entry.return_crit_edge59 ], [ true, %entry.return_crit_edge60 ], [ true, %entry.return_crit_edge61 ], [ true, %entry.return_crit_edge62 ], [ true, %entry.return_crit_edge63 ], [ true, %entry.return_crit_edge64 ], [ true, %entry.return_crit_edge65 ], [ true, %entry.return_crit_edge66 ], [ true, %entry.return_crit_edge67 ], [ true, %entry.return_crit_edge68 ], [ true, %entry.return_crit_edge69 ], [ true, %entry.return_crit_edge70 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @nau8540_volatile_reg(ptr nocapture noundef readnone %dev, i32 noundef %reg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %reg, label %sw.default [
    i32 0, label %entry.return_crit_edge
    i32 88, label %entry.return_crit_edge4
    i32 90, label %entry.return_crit_edge5
    i32 72, label %entry.return_crit_edge6
    i32 73, label %entry.return_crit_edge7
    i32 74, label %entry.return_crit_edge8
    i32 75, label %entry.return_crit_edge9
    i32 76, label %entry.return_crit_edge10
    i32 77, label %entry.return_crit_edge11
    i32 78, label %entry.return_crit_edge12
    i32 79, label %entry.return_crit_edge13
    i32 45, label %entry.return_crit_edge14
    i32 46, label %entry.return_crit_edge15
    i32 47, label %entry.return_crit_edge16
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

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nau8540_suspend(ptr nocapture noundef readonly %component) #2 align 64 {
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
  %regmap = getelementptr inbounds %struct.nau8540, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %5, i1 noundef zeroext true) #7
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  tail call void @regcache_mark_dirty(ptr noundef %7) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nau8540_resume(ptr nocapture noundef readonly %component) #2 align 64 {
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
  %regmap = getelementptr inbounds %struct.nau8540, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %5, i1 noundef zeroext false) #7
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call2 = tail call i32 @regcache_sync(ptr noundef %7) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nau8540_set_sysclk(ptr nocapture noundef readonly %component, i32 noundef %clk_id, i32 noundef %source, i32 noundef %freq, i32 noundef %dir) #2 align 64 {
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
  %4 = zext i32 %clk_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %clk_id, label %do.end [
    i32 0, label %entry.sw.bb_crit_edge
    i32 1, label %entry.sw.bb_crit_edge27
    i32 2, label %sw.bb4
  ]

entry.sw.bb_crit_edge27:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge27
  %regmap = getelementptr inbounds %struct.nau8540, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 3, i32 noundef 32768, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call.i23 = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 9, i32 noundef 32768, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %do.body9

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %regmap5 = getelementptr inbounds %struct.nau8540, ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %regmap5 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap5, align 4
  %call.i24 = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 9, i32 noundef 32768, i32 noundef 32768, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %11 = ptrtoint ptr %regmap5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap5, align 4
  %call.i25 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 3, i32 noundef 32768, i32 noundef 32768, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %do.body9

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.55, i32 noundef %clk_id) #10
  br label %cleanup

do.body9:                                         ; preds = %sw.bb4, %sw.bb
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nau8540_set_sysclk.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nau8540_set_sysclk, %if.then)) #7
          to label %cleanup [label %if.then], !srcloc !193

if.then:                                          ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nau8540_set_sysclk.__UNIQUE_ID_ddebug298, ptr noundef %16, ptr noundef nonnull @.str.58, i32 noundef %freq, i32 noundef %clk_id) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then, %do.body9, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.then ], [ 0, %do.body9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nau8540_set_pll(ptr nocapture noundef readonly %component, i32 noundef %pll_id, i32 noundef %source, i32 noundef %freq_in, i32 noundef %freq_out) #2 align 64 {
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
  %switch.tableidx = add i32 %pll_id, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %4 = icmp ult i32 %switch.tableidx, 3
  br i1 %4, label %switch.lookup, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.55, i32 noundef %pll_id) #10
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.nau8540_set_pll, i32 0, i32 %switch.tableidx
  %7 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %7)
  %switch.load = load i32, ptr %switch.gep, align 4
  %regmap = getelementptr inbounds %struct.nau8540, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 6, i32 noundef 64512, i32 noundef %switch.load, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nau8540_set_pll.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nau8540_set_pll, %if.then)) #7
          to label %do.end14 [label %if.then], !srcloc !193

if.then:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nau8540_set_pll.__UNIQUE_ID_ddebug296, ptr noundef %11, ptr noundef nonnull @.str.58, i32 noundef %freq_out, i32 noundef %pll_id) #7
  br label %do.end14

do.end14:                                         ; preds = %if.then, %switch.lookup
  %div58 = lshr i32 %freq_out, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 13500001, i32 %freq_in)
  %cmp1.i = icmp ult i32 %freq_in, 13500001
  br i1 %cmp1.i, label %if.end4.i, label %for.inc.i

for.inc.i:                                        ; preds = %do.end14
  %div.1110.i = lshr i32 %freq_in, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 27000002, i32 %freq_in)
  %cmp1.1.i = icmp ult i32 %freq_in, 27000002
  br i1 %cmp1.1.i, label %for.inc.i.if.end4.thread.i_crit_edge, label %for.inc.1.i

for.inc.i.if.end4.thread.i_crit_edge:             ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.thread.i

for.inc.1.i:                                      ; preds = %for.inc.i
  %div.2111.i = lshr i32 %freq_in, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 54000004, i32 %freq_in)
  %cmp1.2.i = icmp ult i32 %freq_in, 54000004
  br i1 %cmp1.2.i, label %for.inc.1.i.if.end4.thread.i_crit_edge, label %for.inc.2.i

for.inc.1.i.if.end4.thread.i_crit_edge:           ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.thread.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %div.3112.i = lshr i32 %freq_in, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 108000008, i32 %freq_in)
  %cmp1.3.i = icmp ult i32 %freq_in, 108000008
  br i1 %cmp1.3.i, label %for.inc.2.i.if.end4.thread.i_crit_edge, label %for.inc.2.i.do.end19_crit_edge

for.inc.2.i.do.end19_crit_edge:                   ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end19

for.inc.2.i.if.end4.thread.i_crit_edge:           ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4.thread.i

if.end4.thread.i:                                 ; preds = %for.inc.2.i.if.end4.thread.i_crit_edge, %for.inc.1.i.if.end4.thread.i_crit_edge, %for.inc.i.if.end4.thread.i_crit_edge
  %i.0100.lcssa.ph.i = phi i32 [ 3, %for.inc.2.i.if.end4.thread.i_crit_edge ], [ 2, %for.inc.1.i.if.end4.thread.i_crit_edge ], [ 1, %for.inc.i.if.end4.thread.i_crit_edge ]
  %div.lcssa.ph.i = phi i32 [ %div.3112.i, %for.inc.2.i.if.end4.thread.i_crit_edge ], [ %div.2111.i, %for.inc.1.i.if.end4.thread.i_crit_edge ], [ %div.1110.i, %for.inc.i.if.end4.thread.i_crit_edge ]
  %val115.i = getelementptr [4 x %struct.nau8540_fll_attr], ptr @fll_pre_scalar, i32 0, i32 %i.0100.lcssa.ph.i, i32 1
  %12 = ptrtoint ptr %val115.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val115.i, align 4
  br label %if.end19.i

if.end4.i:                                        ; preds = %do.end14
  call void @__sanitizer_cov_trace_const_cmp4(i32 512000, i32 %freq_in)
  %cmp11.not.i = icmp ult i32 %freq_in, 512000
  br i1 %cmp11.not.i, label %for.inc14.i, label %if.end4.i.if.end19.i_crit_edge

if.end4.i.if.end19.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19.i

for.inc14.i:                                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 256000, i32 %freq_in)
  %cmp11.not.1.i = icmp ult i32 %freq_in, 256000
  br i1 %cmp11.not.1.i, label %for.inc14.1.i, label %for.inc14.i.if.end19.i_crit_edge

for.inc14.i.if.end19.i_crit_edge:                 ; preds = %for.inc14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19.i

for.inc14.1.i:                                    ; preds = %for.inc14.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 128000, i32 %freq_in)
  %cmp11.not.2.i = icmp ult i32 %freq_in, 128000
  br i1 %cmp11.not.2.i, label %for.inc14.2.i, label %for.inc14.1.i.if.end19.i_crit_edge

for.inc14.1.i.if.end19.i_crit_edge:               ; preds = %for.inc14.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19.i

for.inc14.2.i:                                    ; preds = %for.inc14.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 64000, i32 %freq_in)
  %cmp11.not.3.i = icmp ult i32 %freq_in, 64000
  br i1 %cmp11.not.3.i, label %for.inc14.3.i, label %for.inc14.2.i.if.end19.i_crit_edge

for.inc14.2.i.if.end19.i_crit_edge:               ; preds = %for.inc14.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19.i

for.inc14.3.i:                                    ; preds = %for.inc14.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32000, i32 %freq_in)
  %cmp11.not.4.i = icmp ult i32 %freq_in, 32000
  br i1 %cmp11.not.4.i, label %for.inc14.4.i, label %for.inc14.3.i.if.end19.i_crit_edge

for.inc14.3.i.if.end19.i_crit_edge:               ; preds = %for.inc14.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19.i

for.inc14.4.i:                                    ; preds = %for.inc14.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8000, i32 %freq_in)
  %cmp11.not.5.i = icmp ult i32 %freq_in, 8000
  br i1 %cmp11.not.5.i, label %for.inc14.5.i, label %for.inc14.4.i.if.end19.i_crit_edge

for.inc14.4.i.if.end19.i_crit_edge:               ; preds = %for.inc14.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19.i

for.inc14.5.i:                                    ; preds = %for.inc14.4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4000, i32 %freq_in)
  %cmp11.not.6.i = icmp ult i32 %freq_in, 4000
  br i1 %cmp11.not.6.i, label %for.inc14.5.i.do.end19_crit_edge, label %for.inc14.5.i.if.end19.i_crit_edge

for.inc14.5.i.if.end19.i_crit_edge:               ; preds = %for.inc14.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19.i

for.inc14.5.i.do.end19_crit_edge:                 ; preds = %for.inc14.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end19

if.end19.i:                                       ; preds = %for.inc14.5.i.if.end19.i_crit_edge, %for.inc14.4.i.if.end19.i_crit_edge, %for.inc14.3.i.if.end19.i_crit_edge, %for.inc14.2.i.if.end19.i_crit_edge, %for.inc14.1.i.if.end19.i_crit_edge, %for.inc14.i.if.end19.i_crit_edge, %if.end4.i.if.end19.i_crit_edge, %if.end4.thread.i
  %fll_param.sroa.19.0 = phi i32 [ 0, %for.inc14.5.i.if.end19.i_crit_edge ], [ 0, %for.inc14.4.i.if.end19.i_crit_edge ], [ 0, %for.inc14.3.i.if.end19.i_crit_edge ], [ 0, %for.inc14.2.i.if.end19.i_crit_edge ], [ 0, %for.inc14.1.i.if.end19.i_crit_edge ], [ 0, %for.inc14.i.if.end19.i_crit_edge ], [ 0, %if.end4.i.if.end19.i_crit_edge ], [ %13, %if.end4.thread.i ]
  %div.lcssa119.i = phi i32 [ %freq_in, %for.inc14.5.i.if.end19.i_crit_edge ], [ %freq_in, %for.inc14.4.i.if.end19.i_crit_edge ], [ %freq_in, %for.inc14.3.i.if.end19.i_crit_edge ], [ %freq_in, %for.inc14.2.i.if.end19.i_crit_edge ], [ %freq_in, %for.inc14.1.i.if.end19.i_crit_edge ], [ %freq_in, %for.inc14.i.if.end19.i_crit_edge ], [ %freq_in, %if.end4.i.if.end19.i_crit_edge ], [ %div.lcssa.ph.i, %if.end4.thread.i ]
  %i.1101.lcssa.i = phi i32 [ 6, %for.inc14.5.i.if.end19.i_crit_edge ], [ 5, %for.inc14.4.i.if.end19.i_crit_edge ], [ 4, %for.inc14.3.i.if.end19.i_crit_edge ], [ 3, %for.inc14.2.i.if.end19.i_crit_edge ], [ 2, %for.inc14.1.i.if.end19.i_crit_edge ], [ 1, %for.inc14.i.if.end19.i_crit_edge ], [ 0, %if.end4.i.if.end19.i_crit_edge ], [ 0, %if.end4.thread.i ]
  %val21.i = getelementptr [7 x %struct.nau8540_fll_attr], ptr @fll_ratio, i32 0, i32 %i.1101.lcssa.i, i32 1
  %14 = ptrtoint ptr %val21.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val21.i, align 4
  %conv.i = zext i32 %div58 to i64
  %mul25.i = shl nuw nsw i64 %conv.i, 9
  %16 = add nsw i64 %mul25.i, -90000001
  call void @__sanitizer_cov_trace_const_cmp8(i64 9999999, i64 %16)
  %17 = icmp ult i64 %16, 9999999
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %freq_out)
  %cmp35.i = icmp ugt i32 %freq_out, 255
  %or.cond84.i = and i1 %cmp35.i, %17
  %fvco_max.1.i = select i1 %or.cond84.i, i64 %mul25.i, i64 0
  %fvco_sel.1.i = select i1 %or.cond84.i, i32 0, i32 10
  %mul29.1.i = shl nuw nsw i64 %conv.i, 10
  %18 = add nsw i64 %mul29.1.i, -90000001
  call void @__sanitizer_cov_trace_const_cmp8(i64 9999999, i64 %18)
  %19 = icmp ult i64 %18, 9999999
  call void @__sanitizer_cov_trace_cmp8(i64 %fvco_max.1.i, i64 %mul29.1.i)
  %cmp35.1.i = icmp ult i64 %fvco_max.1.i, %mul29.1.i
  %or.cond84.1.i = select i1 %19, i1 %cmp35.1.i, i1 false
  %fvco_max.1.1.i = select i1 %or.cond84.1.i, i64 %mul29.1.i, i64 %fvco_max.1.i
  %fvco_sel.1.1.i = select i1 %or.cond84.1.i, i32 1, i32 %fvco_sel.1.i
  %mul29.2.i = shl nuw nsw i64 %conv.i, 11
  %20 = add nsw i64 %mul29.2.i, -90000001
  call void @__sanitizer_cov_trace_const_cmp8(i64 9999999, i64 %20)
  %21 = icmp ult i64 %20, 9999999
  call void @__sanitizer_cov_trace_cmp8(i64 %fvco_max.1.1.i, i64 %mul29.2.i)
  %cmp35.2.i = icmp ult i64 %fvco_max.1.1.i, %mul29.2.i
  %or.cond84.2.i = select i1 %21, i1 %cmp35.2.i, i1 false
  %fvco_max.1.2.i = select i1 %or.cond84.2.i, i64 %mul29.2.i, i64 %fvco_max.1.1.i
  %fvco_sel.1.2.i = select i1 %or.cond84.2.i, i32 2, i32 %fvco_sel.1.1.i
  %mul29.3.i = shl nuw nsw i64 %conv.i, 12
  %22 = add nsw i64 %mul29.3.i, -90000001
  call void @__sanitizer_cov_trace_const_cmp8(i64 9999999, i64 %22)
  %23 = icmp ult i64 %22, 9999999
  call void @__sanitizer_cov_trace_cmp8(i64 %fvco_max.1.2.i, i64 %mul29.3.i)
  %cmp35.3.i = icmp ult i64 %fvco_max.1.2.i, %mul29.3.i
  %or.cond84.3.i = select i1 %23, i1 %cmp35.3.i, i1 false
  %fvco_max.1.3.i = select i1 %or.cond84.3.i, i64 %mul29.3.i, i64 %fvco_max.1.2.i
  %fvco_sel.1.3.i = select i1 %or.cond84.3.i, i32 3, i32 %fvco_sel.1.2.i
  %mul29.4.i = shl nuw nsw i64 %conv.i, 13
  %24 = add nsw i64 %mul29.4.i, -90000001
  call void @__sanitizer_cov_trace_const_cmp8(i64 9999999, i64 %24)
  %25 = icmp ult i64 %24, 9999999
  call void @__sanitizer_cov_trace_cmp8(i64 %fvco_max.1.3.i, i64 %mul29.4.i)
  %cmp35.4.i = icmp ult i64 %fvco_max.1.3.i, %mul29.4.i
  %or.cond84.4.i = select i1 %25, i1 %cmp35.4.i, i1 false
  %fvco_max.1.4.i = select i1 %or.cond84.4.i, i64 %mul29.4.i, i64 %fvco_max.1.3.i
  %fvco_sel.1.4.i = select i1 %or.cond84.4.i, i32 4, i32 %fvco_sel.1.3.i
  %mul29.5.i = shl nuw nsw i64 %conv.i, 14
  %26 = add nsw i64 %mul29.5.i, -90000001
  call void @__sanitizer_cov_trace_const_cmp8(i64 9999999, i64 %26)
  %27 = icmp ult i64 %26, 9999999
  call void @__sanitizer_cov_trace_cmp8(i64 %fvco_max.1.4.i, i64 %mul29.5.i)
  %cmp35.5.i = icmp ult i64 %fvco_max.1.4.i, %mul29.5.i
  %or.cond84.5.i = select i1 %27, i1 %cmp35.5.i, i1 false
  %fvco_max.1.5.i = select i1 %or.cond84.5.i, i64 %mul29.5.i, i64 %fvco_max.1.4.i
  %fvco_sel.1.5.i = select i1 %or.cond84.5.i, i32 5, i32 %fvco_sel.1.4.i
  %mul29.6.i = mul nuw nsw i64 %conv.i, 1536
  %28 = add nsw i64 %mul29.6.i, -90000001
  call void @__sanitizer_cov_trace_const_cmp8(i64 9999999, i64 %28)
  %29 = icmp ult i64 %28, 9999999
  call void @__sanitizer_cov_trace_cmp8(i64 %fvco_max.1.5.i, i64 %mul29.6.i)
  %cmp35.6.i = icmp ult i64 %fvco_max.1.5.i, %mul29.6.i
  %or.cond84.6.i = select i1 %29, i1 %cmp35.6.i, i1 false
  %fvco_max.1.6.i = select i1 %or.cond84.6.i, i64 %mul29.6.i, i64 %fvco_max.1.5.i
  %fvco_sel.1.6.i = select i1 %or.cond84.6.i, i32 6, i32 %fvco_sel.1.5.i
  %mul29.7.i = mul nuw nsw i64 %conv.i, 3072
  %30 = add nsw i64 %mul29.7.i, -90000001
  call void @__sanitizer_cov_trace_const_cmp8(i64 9999999, i64 %30)
  %31 = icmp ult i64 %30, 9999999
  call void @__sanitizer_cov_trace_cmp8(i64 %fvco_max.1.6.i, i64 %mul29.7.i)
  %cmp35.7.i = icmp ult i64 %fvco_max.1.6.i, %mul29.7.i
  %or.cond84.7.i = select i1 %31, i1 %cmp35.7.i, i1 false
  %fvco_max.1.7.i = select i1 %or.cond84.7.i, i64 %mul29.7.i, i64 %fvco_max.1.6.i
  %fvco_sel.1.7.i = select i1 %or.cond84.7.i, i32 7, i32 %fvco_sel.1.6.i
  %mul29.8.i = mul nuw nsw i64 %conv.i, 6144
  %32 = add nsw i64 %mul29.8.i, -90000001
  call void @__sanitizer_cov_trace_const_cmp8(i64 9999999, i64 %32)
  %33 = icmp ult i64 %32, 9999999
  call void @__sanitizer_cov_trace_cmp8(i64 %fvco_max.1.7.i, i64 %mul29.8.i)
  %cmp35.8.i = icmp ult i64 %fvco_max.1.7.i, %mul29.8.i
  %or.cond84.8.i = select i1 %33, i1 %cmp35.8.i, i1 false
  %fvco_max.1.8.i = select i1 %or.cond84.8.i, i64 %mul29.8.i, i64 %fvco_max.1.7.i
  %fvco_sel.1.8.i = select i1 %or.cond84.8.i, i32 8, i32 %fvco_sel.1.7.i
  %mul29.9.i = mul nuw nsw i64 %conv.i, 12288
  %34 = add nsw i64 %mul29.9.i, -90000001
  call void @__sanitizer_cov_trace_const_cmp8(i64 9999999, i64 %34)
  %35 = icmp ult i64 %34, 9999999
  call void @__sanitizer_cov_trace_cmp8(i64 %fvco_max.1.8.i, i64 %mul29.9.i)
  %cmp35.9.i = icmp ult i64 %fvco_max.1.8.i, %mul29.9.i
  %or.cond84.9.i = select i1 %35, i1 %cmp35.9.i, i1 false
  %fvco_sel.1.9.i = select i1 %or.cond84.9.i, i32 9, i32 %fvco_sel.1.8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %fvco_sel.1.9.i)
  %cmp42.i = icmp eq i32 %fvco_sel.1.9.i, 10
  br i1 %cmp42.i, label %if.end19.i.do.end19_crit_edge, label %if.end45.i

if.end19.i.do.end19_crit_edge:                    ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end19

if.end45.i:                                       ; preds = %if.end19.i
  %fvco_max.1.9.i = select i1 %or.cond84.9.i, i64 %mul29.9.i, i64 %fvco_max.1.8.i
  %val47.i = getelementptr [10 x %struct.nau8540_fll_attr], ptr @mclk_src_scaling, i32 0, i32 %fvco_sel.1.9.i, i32 1
  %36 = ptrtoint ptr %val47.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %val47.i, align 4
  %shl.i = shl nuw nsw i64 %fvco_max.1.9.i, 16
  %mul49.i = mul i32 %15, %div.lcssa119.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 65536, i64 %fvco_max.1.9.i)
  %cmp164.i.i.i = icmp ult i64 %fvco_max.1.9.i, 65536
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !194

if.then168.i.i.i:                                 ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv169.i.i.i = trunc i64 %shl.i to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %mul49.i
  br label %do.body22

if.else174.i.i.i:                                 ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #9
  %38 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul49.i, i64 %shl.i) #11, !srcloc !195
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %38, 1
  %extract.t93.i = trunc i64 %asmresult1.i.i.i.i to i32
  br label %do.body22

do.end19:                                         ; preds = %if.end19.i.do.end19_crit_edge, %for.inc14.5.i.do.end19_crit_edge, %for.inc.2.i.do.end19_crit_edge
  %39 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.61, i32 noundef %freq_in) #10
  br label %cleanup

do.body22:                                        ; preds = %if.else174.i.i.i, %if.then168.i.i.i
  %dividend.addr.0.i.i.off0.i = phi i32 [ %div172.i.i.i, %if.then168.i.i.i ], [ %extract.t93.i, %if.else174.i.i.i ]
  %41 = lshr i32 %dividend.addr.0.i.i.off0.i, 16
  %conv50.i = and i32 %41, 1023
  %conv52.i = and i32 %dividend.addr.0.i.i.off0.i, 65535
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @nau8540_set_pll.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@nau8540_set_pll, %if.then34)) #7
          to label %do.end38 [label %if.then34], !srcloc !193

if.then34:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @nau8540_set_pll.__UNIQUE_ID_ddebug297, ptr noundef %43, ptr noundef nonnull @.str.63, i32 noundef %37, i32 noundef %15, i32 noundef %conv52.i, i32 noundef %conv50.i, i32 noundef %fll_param.sroa.19.0) #7
  br label %do.end38

do.end38:                                         ; preds = %if.then34, %do.body22
  %regmap39 = getelementptr inbounds %struct.nau8540, ptr %3, i32 0, i32 1
  %44 = ptrtoint ptr %regmap39 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regmap39, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %45, i32 noundef 3, i32 noundef 32783, i32 noundef %37, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %or1.i = or i32 %15, 6144
  %call.i28.i = tail call i32 @regmap_update_bits_base(ptr noundef %45, i32 noundef 4, i32 noundef 7295, i32 noundef %or1.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %call3.i = tail call i32 @regmap_write(ptr noundef %45, i32 noundef 5, i32 noundef %conv52.i) #7
  %call.i29.i = tail call i32 @regmap_update_bits_base(ptr noundef %45, i32 noundef 6, i32 noundef 1023, i32 noundef %conv50.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %shl.i69 = shl i32 %fll_param.sroa.19.0, 10
  %call.i30.i = tail call i32 @regmap_update_bits_base(ptr noundef %45, i32 noundef 7, i32 noundef 3072, i32 noundef %shl.i69, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %call.i31.i = tail call i32 @regmap_update_bits_base(ptr noundef %45, i32 noundef 8, i32 noundef 8192, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %call.i32.i = tail call i32 @regmap_update_bits_base(ptr noundef %45, i32 noundef 9, i32 noundef 32768, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv52.i)
  %tobool.not.i = icmp eq i32 %conv52.i, 0
  %..i = select i1 %tobool.not.i, i32 4096, i32 49152
  %.38.i = select i1 %tobool.not.i, i32 0, i32 24576
  %call.i35.i = tail call i32 @regmap_update_bits_base(ptr noundef %45, i32 noundef 8, i32 noundef 53248, i32 noundef %..i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %call.i36.i = tail call i32 @regmap_update_bits_base(ptr noundef %45, i32 noundef 9, i32 noundef 24576, i32 noundef %.38.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 429496000) #7
  %47 = ptrtoint ptr %regmap39 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regmap39, align 4
  %call.i70 = tail call i32 @regmap_update_bits_base(ptr noundef %48, i32 noundef 3, i32 noundef 32768, i32 noundef 32768, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end38, %do.end19, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end19 ], [ 0, %do.end38 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adc_power_control(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %k, i32 noundef %event) #2 align 64 {
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
  %and = and i32 %event, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @msleep(i32 noundef 300) #7
  br label %if.end12.sink.split

if.else:                                          ; preds = %entry
  %and5 = and i32 %event, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.else.if.end12_crit_edge, label %if.else.if.end12.sink.split_crit_edge

if.else.if.end12.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12.sink.split

if.else.if.end12_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.end12.sink.split:                              ; preds = %if.else.if.end12.sink.split_crit_edge, %if.then
  %.sink21 = phi i32 [ 0, %if.then ], [ 32768, %if.else.if.end12.sink.split_crit_edge ]
  %regmap = getelementptr inbounds %struct.nau8540, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call.i18 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 17, i32 noundef 32768, i32 noundef %.sink21, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call.i19 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 18, i32 noundef 32768, i32 noundef %.sink21, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end12

if.end12:                                         ; preds = %if.end12.sink.split, %if.else.if.end12_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aiftx_power_control(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %k, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %event, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  %regmap = getelementptr inbounds %struct.nau8540, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call2 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 90, i32 noundef 1) #7
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call4 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 90, i32 noundef 0) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nau8540_set_fmt(ptr nocapture noundef readonly %dai, i32 noundef %fmt) #2 align 64 {
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
  %6 = trunc i32 %fmt to i16
  %trunc = and i16 %6, -4096
  %7 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.70)
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
  %ctrl2_val.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ 8, %sw.bb ]
  %and2 = and i32 %fmt, 3840
  %8 = zext i32 %and2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.71)
  switch i32 %and2, label %sw.epilog.cleanup_crit_edge [
    i32 0, label %sw.epilog.sw.epilog6_crit_edge
    i32 768, label %sw.bb3
  ]

sw.epilog.sw.epilog6_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog6

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb3:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog6

sw.epilog6:                                       ; preds = %sw.bb3, %sw.epilog.sw.epilog6_crit_edge
  %ctrl1_val.0 = phi i32 [ 128, %sw.bb3 ], [ %and2, %sw.epilog.sw.epilog6_crit_edge ]
  %and7 = and i32 %fmt, 15
  %9 = zext i32 %and7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.72)
  switch i32 %and7, label %sw.epilog6.cleanup_crit_edge [
    i32 1, label %sw.bb8
    i32 3, label %sw.bb10
    i32 2, label %sw.epilog6.sw.epilog20_crit_edge
    i32 4, label %sw.bb14
    i32 5, label %sw.bb16
  ]

sw.epilog6.sw.epilog20_crit_edge:                 ; preds = %sw.epilog6
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog20

sw.epilog6.cleanup_crit_edge:                     ; preds = %sw.epilog6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb8:                                           ; preds = %sw.epilog6
  call void @__sanitizer_cov_trace_pc() #9
  %or9 = or i32 %ctrl1_val.0, 2
  br label %sw.epilog20

sw.bb10:                                          ; preds = %sw.epilog6
  call void @__sanitizer_cov_trace_pc() #9
  %or11 = or i32 %ctrl1_val.0, 1
  br label %sw.epilog20

sw.bb14:                                          ; preds = %sw.epilog6
  call void @__sanitizer_cov_trace_pc() #9
  %or15 = or i32 %ctrl1_val.0, 3
  br label %sw.epilog20

sw.bb16:                                          ; preds = %sw.epilog6
  call void @__sanitizer_cov_trace_pc() #9
  %or18 = or i32 %ctrl1_val.0, 67
  br label %sw.epilog20

sw.epilog20:                                      ; preds = %sw.bb16, %sw.bb14, %sw.bb10, %sw.bb8, %sw.epilog6.sw.epilog20_crit_edge
  %ctrl1_val.1 = phi i32 [ %or18, %sw.bb16 ], [ %or15, %sw.bb14 ], [ %or11, %sw.bb10 ], [ %or9, %sw.bb8 ], [ %ctrl1_val.0, %sw.epilog6.sw.epilog20_crit_edge ]
  %regmap = getelementptr inbounds %struct.nau8540, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 16, i32 noundef 207, i32 noundef %ctrl1_val.1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %call.i41 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 17, i32 noundef 24, i32 noundef %ctrl2_val.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %call.i42 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 18, i32 noundef 2048, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog20, %sw.epilog6.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog20 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ -22, %sw.epilog6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nau8540_set_tdm_slot(ptr nocapture noundef readonly %dai, i32 noundef %tx_mask, i32 noundef %rx_mask, i32 noundef %slots, i32 noundef %slot_width) #2 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %slots)
  %cmp = icmp sgt i32 %slots, 4
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %and = and i32 %tx_mask, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and2 = and i32 %tx_mask, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %or.cond = or i1 %tobool.not, %tobool3.not
  br i1 %or.cond, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %mul = shl i32 %slot_width, 2
  %shr = lshr i32 %tx_mask, 4
  %phi.bo = or i32 %mul, 2048
  %ctrl2_val.0 = select i1 %tobool.not, i32 2048, i32 %phi.bo
  %ctrl4_val.0.in = select i1 %tobool.not, i32 %tx_mask, i32 %shr
  %ctrl4_val.0 = or i32 %ctrl4_val.0.in, 49152
  %regmap = getelementptr inbounds %struct.nau8540, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 20, i32 noundef 49167, i32 noundef %ctrl4_val.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call.i28 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 17, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call.i29 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 18, i32 noundef 3071, i32 noundef %ctrl2_val.0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nau8540_hw_params(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #2 align 64 {
if.end.i:
  %osr = alloca i32, align 4
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %osr) #7
  %6 = ptrtoint ptr %osr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %osr, align 4, !annotation !192
  %regmap = getelementptr inbounds %struct.nau8540, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call2 = call i32 @regmap_read(ptr noundef %8, i32 noundef 58, ptr noundef nonnull %osr) #7
  %9 = ptrtoint ptr %osr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %osr, align 4
  %and = and i32 %10, 3
  store i32 %and, ptr %osr, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i, align 4
  %mul.i = mul i32 %12, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 6144000, i32 %mul.i)
  %cmp1.i = icmp sgt i32 %mul.i, 6144000
  br i1 %cmp1.i, label %nau8540_clock_check.exit, label %if.end

nau8540_clock_check.exit:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.65) #10
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %17 = ptrtoint ptr %osr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %osr, align 4
  %clk_src = getelementptr [4 x %struct.nau8540_osr_attr], ptr @osr_adc_sel, i32 0, i32 %18, i32 1
  %19 = ptrtoint ptr %clk_src to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %clk_src, align 4
  %shl = shl i32 %20, 6
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 3, i32 noundef 192, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %21 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i.i.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %if.end.if.then.i.i.i_crit_edge

if.end.if.then.i.i.i_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %if.end.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %if.end.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %22, %if.end.if.then.i.i.i_crit_edge ], [ %25, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %23 = call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #7, !range !196
  %add.i.i.i = or i32 %23, %i.09.lcssa.i.i.i
  br label %params_width.exit

for.inc.i.i.i:                                    ; preds = %if.end
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %24 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.1.i.i.i = icmp eq i32 %25, 0
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
  %26 = add i32 %call1.i, -16
  %27 = call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %27)
  %28 = icmp ult i32 %27, 5
  br i1 %28, label %switch.hole_check, label %params_width.exit.cleanup_crit_edge

params_width.exit.cleanup_crit_edge:              ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.hole_check:                                ; preds = %params_width.exit
  %switch.maskindex = trunc i32 %27 to i8
  %switch.shifted = lshr i8 23, %switch.maskindex
  %29 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %switch.lobit.not = icmp eq i8 %29, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.nau8540_hw_params, i32 0, i32 %27
  %30 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %30)
  %switch.load = load i32, ptr %switch.gep, align 4
  %31 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap, align 4
  %call.i27 = call i32 @regmap_update_bits_base(ptr noundef %32, i32 noundef 16, i32 noundef 12, i32 noundef %switch.load, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %switch.hole_check.cleanup_crit_edge, %params_width.exit.cleanup_crit_edge, %nau8540_clock_check.exit
  %retval.0 = phi i32 [ 0, %switch.lookup ], [ -22, %nau8540_clock_check.exit ], [ -22, %params_width.exit.cleanup_crit_edge ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %osr) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 99)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 99)
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
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !141, !142, !143, !145, !146, !147, !149, !150, !151, !153, !155, !156, !157, !159, !160, !162, !164, !166, !168, !170, !172, !174, !175, !176, !177, !179, !181}
!llvm.module.flags = !{!183, !184, !185, !186, !187, !188, !189, !190}
!llvm.ident = !{!191}

!0 = !{ptr @__initcall__kmod_snd_soc_nau8540__299_880_nau8540_i2c_driver_init6, !1, !"__initcall__kmod_snd_soc_nau8540__299_880_nau8540_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/nau8540.c", i32 880, i32 1}
!2 = !{ptr @__exitcall_nau8540_i2c_driver_exit, !1, !"__exitcall_nau8540_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description300, !4, !"__UNIQUE_ID_description300", i1 false, i1 false}
!4 = !{!"../sound/soc/codecs/nau8540.c", i32 882, i32 1}
!5 = !{ptr @__UNIQUE_ID_author301, !6, !"__UNIQUE_ID_author301", i1 false, i1 false}
!6 = !{!"../sound/soc/codecs/nau8540.c", i32 883, i32 1}
!7 = !{ptr @__UNIQUE_ID_file302, !8, !"__UNIQUE_ID_file302", i1 false, i1 false}
!8 = !{!"../sound/soc/codecs/nau8540.c", i32 884, i32 1}
!9 = !{ptr @__UNIQUE_ID_license303, !8, !"__UNIQUE_ID_license303", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/codecs/nau8540.c", i32 874, i32 11}
!12 = !{ptr @nau8540_i2c_driver, !13, !"nau8540_i2c_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/nau8540.c", i32 872, i32 26}
!14 = !{ptr @nau8540_i2c_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/nau8540.c", i32 840, i32 20}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/soc/codecs/nau8540.c", i32 845, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @nau8540_i2c_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @nau8540_i2c_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @nau8540_regmap_config, !26, !"nau8540_regmap_config", i1 false, i1 false}
!26 = !{!"../sound/soc/codecs/nau8540.c", i32 812, i32 35}
!27 = !{ptr @nau8540_reg_defaults, !28, !"nau8540_reg_defaults", i1 false, i1 false}
!28 = !{!"../sound/soc/codecs/nau8540.c", i32 77, i32 33}
!29 = !{ptr @nau8540_component_driver, !30, !"nau8540_component_driver", i1 false, i1 false}
!30 = !{!"../sound/soc/codecs/nau8540.c", i32 794, i32 46}
!31 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/soc/codecs/nau8540.c", i32 187, i32 2}
!33 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/soc/codecs/nau8540.c", i32 189, i32 2}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/soc/codecs/nau8540.c", i32 191, i32 2}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/soc/codecs/nau8540.c", i32 193, i32 2}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/soc/codecs/nau8540.c", i32 196, i32 2}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/soc/codecs/nau8540.c", i32 198, i32 2}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/soc/codecs/nau8540.c", i32 200, i32 2}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/soc/codecs/nau8540.c", i32 202, i32 2}
!47 = !{ptr @nau8540_snd_controls, !48, !"nau8540_snd_controls", i1 false, i1 false}
!48 = !{!"../sound/soc/codecs/nau8540.c", i32 186, i32 38}
!49 = !{ptr @adc_vol_tlv, !50, !"adc_vol_tlv", i1 false, i1 false}
!50 = !{!"../sound/soc/codecs/nau8540.c", i32 183, i32 14}
!51 = !{ptr @fepga_gain_tlv, !52, !"fepga_gain_tlv", i1 false, i1 false}
!52 = !{!"../sound/soc/codecs/nau8540.c", i32 184, i32 14}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/soc/codecs/nau8540.c", i32 269, i32 2}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/soc/codecs/nau8540.c", i32 270, i32 2}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/soc/codecs/nau8540.c", i32 272, i32 2}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/soc/codecs/nau8540.c", i32 273, i32 2}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/soc/codecs/nau8540.c", i32 274, i32 2}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/soc/codecs/nau8540.c", i32 275, i32 2}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/soc/codecs/nau8540.c", i32 277, i32 2}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/soc/codecs/nau8540.c", i32 278, i32 2}
!69 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/soc/codecs/nau8540.c", i32 279, i32 2}
!71 = !{ptr @.str.31, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/soc/codecs/nau8540.c", i32 280, i32 2}
!73 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/soc/codecs/nau8540.c", i32 282, i32 2}
!75 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/soc/codecs/nau8540.c", i32 285, i32 2}
!77 = !{ptr @.str.34, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../sound/soc/codecs/nau8540.c", i32 288, i32 2}
!79 = !{ptr @.str.35, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/soc/codecs/nau8540.c", i32 291, i32 2}
!81 = !{ptr @.str.36, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/soc/codecs/nau8540.c", i32 295, i32 2}
!83 = !{ptr @.str.37, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/soc/codecs/nau8540.c", i32 296, i32 2}
!85 = !{ptr @.str.38, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../sound/soc/codecs/nau8540.c", i32 297, i32 2}
!87 = !{ptr @.str.39, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../sound/soc/codecs/nau8540.c", i32 298, i32 2}
!89 = !{ptr @.str.40, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/soc/codecs/nau8540.c", i32 300, i32 2}
!91 = !{ptr @.str.41, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../sound/soc/codecs/nau8540.c", i32 302, i32 2}
!93 = !{ptr @.str.42, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/soc/codecs/nau8540.c", i32 304, i32 2}
!95 = !{ptr @.str.43, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/soc/codecs/nau8540.c", i32 306, i32 2}
!97 = !{ptr @.str.44, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../sound/soc/codecs/nau8540.c", i32 309, i32 2}
!99 = !{ptr @.str.45, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @nau8540_dapm_widgets, !101, !"nau8540_dapm_widgets", i1 false, i1 false}
!101 = !{!"../sound/soc/codecs/nau8540.c", i32 268, i32 41}
!102 = !{ptr @.str.47, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/soc/codecs/nau8540.c", i32 213, i32 2}
!104 = !{ptr @digital_ch4_mux, !105, !"digital_ch4_mux", i1 false, i1 false}
!105 = !{!"../sound/soc/codecs/nau8540.c", i32 212, i32 38}
!106 = !{ptr @digital_ch4_enum, !107, !"digital_ch4_enum", i1 false, i1 false}
!107 = !{!"../sound/soc/codecs/nau8540.c", i32 209, i32 8}
!108 = !{ptr @.str.48, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/soc/codecs/nau8540.c", i32 207, i32 2}
!110 = !{ptr @.str.49, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/soc/codecs/nau8540.c", i32 207, i32 19}
!112 = !{ptr @.str.50, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/soc/codecs/nau8540.c", i32 207, i32 36}
!114 = !{ptr @.str.51, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/soc/codecs/nau8540.c", i32 207, i32 53}
!116 = !{ptr @adc_channel, !117, !"adc_channel", i1 false, i1 false}
!117 = !{!"../sound/soc/codecs/nau8540.c", i32 206, i32 27}
!118 = !{ptr @.str.52, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/soc/codecs/nau8540.c", i32 219, i32 2}
!120 = !{ptr @digital_ch3_mux, !121, !"digital_ch3_mux", i1 false, i1 false}
!121 = !{!"../sound/soc/codecs/nau8540.c", i32 218, i32 38}
!122 = !{ptr @digital_ch3_enum, !123, !"digital_ch3_enum", i1 false, i1 false}
!123 = !{!"../sound/soc/codecs/nau8540.c", i32 215, i32 8}
!124 = !{ptr @.str.53, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/soc/codecs/nau8540.c", i32 225, i32 2}
!126 = !{ptr @digital_ch2_mux, !127, !"digital_ch2_mux", i1 false, i1 false}
!127 = !{!"../sound/soc/codecs/nau8540.c", i32 224, i32 38}
!128 = !{ptr @digital_ch2_enum, !129, !"digital_ch2_enum", i1 false, i1 false}
!129 = !{!"../sound/soc/codecs/nau8540.c", i32 221, i32 8}
!130 = !{ptr @.str.54, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/soc/codecs/nau8540.c", i32 231, i32 2}
!132 = !{ptr @digital_ch1_mux, !133, !"digital_ch1_mux", i1 false, i1 false}
!133 = !{!"../sound/soc/codecs/nau8540.c", i32 230, i32 38}
!134 = !{ptr @digital_ch1_enum, !135, !"digital_ch1_enum", i1 false, i1 false}
!135 = !{!"../sound/soc/codecs/nau8540.c", i32 227, i32 8}
!136 = !{ptr @nau8540_dapm_routes, !137, !"nau8540_dapm_routes", i1 false, i1 false}
!137 = !{!"../sound/soc/codecs/nau8540.c", i32 313, i32 40}
!138 = !{ptr @.str.55, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/soc/codecs/nau8540.c", i32 721, i32 3}
!140 = !{ptr @.str.56, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @nau8540_set_sysclk._entry, !139, !"_entry", i1 false, i1 false}
!142 = !{ptr @nau8540_set_sysclk._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.57, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../sound/soc/codecs/nau8540.c", i32 725, i32 2}
!145 = !{ptr @.str.58, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @nau8540_set_sysclk.__UNIQUE_ID_ddebug298, !144, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!147 = !{ptr @.str.59, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../sound/soc/codecs/nau8540.c", i32 675, i32 3}
!149 = !{ptr @nau8540_set_pll._entry, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @nau8540_set_pll._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @nau8540_set_pll.__UNIQUE_ID_ddebug296, !152, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!152 = !{!"../sound/soc/codecs/nau8540.c", i32 678, i32 2}
!153 = !{ptr @.str.61, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../sound/soc/codecs/nau8540.c", i32 684, i32 3}
!155 = !{ptr @nau8540_set_pll._entry.60, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @nau8540_set_pll._entry_ptr.62, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.63, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../sound/soc/codecs/nau8540.c", i32 687, i32 2}
!159 = !{ptr @nau8540_set_pll.__UNIQUE_ID_ddebug297, !158, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!160 = !{ptr @fll_pre_scalar, !161, !"fll_pre_scalar", i1 false, i1 false}
!161 = !{!"../sound/soc/codecs/nau8540.c", i32 62, i32 38}
!162 = !{ptr @fll_ratio, !163, !"fll_ratio", i1 false, i1 false}
!163 = !{!"../sound/soc/codecs/nau8540.c", i32 52, i32 38}
!164 = !{ptr @mclk_src_scaling, !165, !"mclk_src_scaling", i1 false, i1 false}
!165 = !{!"../sound/soc/codecs/nau8540.c", i32 38, i32 38}
!166 = !{ptr @.str.64, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../sound/soc/codecs/nau8540.c", i32 528, i32 10}
!168 = !{ptr @nau8540_dai, !169, !"nau8540_dai", i1 false, i1 false}
!169 = !{!"../sound/soc/codecs/nau8540.c", i32 527, i32 34}
!170 = !{ptr @nau8540_dai_ops, !171, !"nau8540_dai_ops", i1 false, i1 false}
!171 = !{!"../sound/soc/codecs/nau8540.c", i32 517, i32 37}
!172 = !{ptr @.str.65, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../sound/soc/codecs/nau8540.c", i32 366, i32 3}
!174 = !{ptr @.str.66, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @nau8540_clock_check._entry, !173, !"_entry", i1 false, i1 false}
!176 = !{ptr @nau8540_clock_check._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @osr_adc_sel, !178, !"osr_adc_sel", i1 false, i1 false}
!178 = !{!"../sound/soc/codecs/nau8540.c", i32 70, i32 38}
!179 = !{ptr @nau8540_of_ids, !180, !"nau8540_of_ids", i1 false, i1 false}
!180 = !{!"../sound/soc/codecs/nau8540.c", i32 865, i32 34}
!181 = !{ptr @nau8540_i2c_ids, !182, !"nau8540_i2c_ids", i1 false, i1 false}
!182 = !{!"../sound/soc/codecs/nau8540.c", i32 858, i32 35}
!183 = !{i32 1, !"wchar_size", i32 2}
!184 = !{i32 1, !"min_enum_size", i32 4}
!185 = !{i32 8, !"branch-target-enforcement", i32 0}
!186 = !{i32 8, !"sign-return-address", i32 0}
!187 = !{i32 8, !"sign-return-address-all", i32 0}
!188 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!189 = !{i32 7, !"uwtable", i32 1}
!190 = !{i32 7, !"frame-pointer", i32 2}
!191 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!192 = !{!"auto-init"}
!193 = !{i64 2148978675, i64 2148978680, i64 2148978693, i64 2148978737, i64 2148978771, i64 2148978792}
!194 = !{!"branch_weights", i32 2000, i32 1}
!195 = !{i64 2148211722, i64 2148212002, i64 2148212336, i64 2148212670}
!196 = !{i32 0, i32 33}
