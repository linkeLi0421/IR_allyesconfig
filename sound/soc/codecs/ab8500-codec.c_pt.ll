; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/ab8500-codec.c_pt.bc'
source_filename = "../sound/soc/codecs/ab8500-codec.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.105, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.105 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.97, i32 }
%union.anon.97 = type { ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8, %struct.snd_soc_dobj }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.soc_mreg_control = type { i32, i32, i32, i32, i32, i32 }
%struct.filter_control = type { i32, i32, i32, [128 x i32] }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.ab8500_codec_drvdata = type { ptr, %struct.mutex, ptr, i32, ptr, ptr, i32 }
%struct.ab8500_codec_platform_data = type { %struct.amic_settings, i32 }
%struct.amic_settings = type { i32, i32, i32, i32, i32 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.91, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.91 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.86, [128 x i8] }
%union.anon.86 = type { %union.anon.88 }
%union.anon.88 = type { [64 x i64] }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.93, [64 x i8] }
%union.anon.93 = type { %struct.anon.96, [40 x i8] }
%struct.anon.96 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }

@__initcall__kmod_snd_soc_ab8500_codec__330_2575_ab8500_codec_platform_driver_init6 = internal global ptr @ab8500_codec_platform_driver_init, section ".initcall6.init", align 4
@ab8500_codec_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ab8500_codec_driver_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ab8500_codec_platform_driver_exit = internal global ptr @ab8500_codec_platform_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file331 = internal constant [64 x i8] c"snd_soc_ab8500_codec.file=sound/soc/codecs/snd-soc-ab8500-codec\00", section ".modinfo", align 1
@__UNIQUE_ID_license332 = internal constant [36 x i8] c"snd_soc_ab8500_codec.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ab8500-codec\00", [19 x i8] zeroinitializer }, align 32
@ab8500_codec_driver_probe.__UNIQUE_ID_ddebug328 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 2, i8 122, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"snd_soc_ab8500_codec\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ab8500_codec_driver_probe\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"sound/soc/codecs/ab8500-codec.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s: Enter.\0A\00", [20 x i8] zeroinitializer }, align 32
@ab8500_codec_driver_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ab8500_codec_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @ab8500_codec_read_reg, ptr @ab8500_codec_write_reg, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"ab8500_codec:2548:(&ab8500_codec_regmap)->lock\00", [49 x i8] zeroinitializer }, align 32
@ab8500_codec_driver_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 2552, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: Failed to allocate regmap: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ab8500_codec_driver_probe._entry_ptr = internal global ptr @ab8500_codec_driver_probe._entry, section ".printk_index", align 4
@ab8500_codec_driver_probe.__UNIQUE_ID_ddebug329 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.9, i8 2, i8 127, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: Register codec.\0A\00", [43 x i8] zeroinitializer }, align 32
@ab8500_component_driver = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @ab8500_ctrls, i32 119, ptr @ab8500_dapm_widgets, i32 138, ptr @ab8500_dapm_routes, i32 157, ptr @ab8500_codec_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 92, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@ab8500_codec_dai = internal global { [2 x %struct.snd_soc_dai_driver], [80 x i8] } { [2 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.504, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @ab8500_codec_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.333, i64 4, i32 128, i32 0, i32 0, i32 1, i32 8, i32 0 }, i8 -128, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.505, i32 1, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @ab8500_codec_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.320, i64 4, i32 128, i32 0, i32 0, i32 1, i32 8, i32 0 }, %struct.snd_soc_pcm_stream zeroinitializer, i8 -128, i32 0, i32 0 }], [80 x i8] zeroinitializer }, align 32
@ab8500_codec_driver_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 2564, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: Error: Failed to register codec (%d).\0A\00", [53 x i8] zeroinitializer }, align 32
@ab8500_codec_driver_probe._entry_ptr.12 = internal global ptr @ab8500_codec_driver_probe._entry.10, section ".printk_index", align 4
@ab8500_ctrls = internal global { [119 x %struct.snd_kcontrol_new], [1424 x i8] } { [119 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.13, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @soc_enum_envdeththre to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.14, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @soc_enum_envdetlthre to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.15, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.16, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @soc_enum_envdettime to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.17, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @soc_enum_da12voice to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.18, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.19 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.20, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.21 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.22, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.23 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.24, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.25 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.26, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @soc_enum_hsfadspeed to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.27, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @soc_enum_da2hslr to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.28, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @soc_enum_hsesinc to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.29, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.97 { ptr @dax_dig_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.30 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.31, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.97 { ptr @hs_ear_dig_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.32 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.33, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.97 { ptr @hs_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.34 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.35, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @soc_enum_eardaclowpow to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.36, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @soc_enum_eardrvlowpow to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.37, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @soc_enum_da34voice to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.38, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.39 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.40, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.41 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.42, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.43 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.44, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.45 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.46, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.47 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.48, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.97 { ptr @dax_dig_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.49 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.50, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.51 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.52, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.53 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.54, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.55 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.56, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @soc_enum_da56voice to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.57, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.58 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.59, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.60 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.61, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.62 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.63, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.97 { ptr @dax_dig_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.64 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.65, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.66 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.67, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.68 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.69, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.97 { ptr @adx_dig_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.70 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.71, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.97 { ptr @mic_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.72 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.73, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.74 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.75, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.76 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.77, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @soc_enum_ad34voice to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.78, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @soc_enum_dmic34sinc to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.79, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.97 { ptr @mic_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.80 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.81, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.82 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.83, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.84 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.85, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @soc_enum_dmic12sinc to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.86, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @soc_enum_ad12voice to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.87, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.97 { ptr @adx_dig_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.88 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.89, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.97 { ptr @lin_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.90 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.91, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.97 { ptr @lin2hs_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.92 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.93, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @soc_enum_dmic56sinc to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.94, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.97 { ptr @adx_dig_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.95 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.96, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @soc_enum_fadespeed to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.97, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.97 { ptr @dax_dig_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.98 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.99, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @soc_enum_da1slotmap to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.100, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @soc_enum_da2slotmap to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.101, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @soc_enum_da3slotmap to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.102, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @soc_enum_da4slotmap to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.103, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @soc_enum_da5slotmap to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.104, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @soc_enum_da6slotmap to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.105, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @soc_enum_da7slotmap to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.106, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @soc_enum_da8slotmap to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.107, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @soc_enum_adslot0map to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.108, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @soc_enum_adslot1map to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.109, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @soc_enum_adslot2map to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.110, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @soc_enum_adslot3map to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.111, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @soc_enum_adslot4map to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.112, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @soc_enum_adslot5map to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.113, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @soc_enum_adslot6map to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.114, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @soc_enum_adslot7map to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.115, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @soc_enum_adslot8map to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.116, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @soc_enum_adslot9map to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.117, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @soc_enum_adslot10map to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.118, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @soc_enum_adslot11map to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.119, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @soc_enum_adslot12map to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.120, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @soc_enum_adslot13map to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.121, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @soc_enum_adslot14map to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.122, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @soc_enum_adslot15map to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.123, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @soc_enum_adslot16map to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.124, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @soc_enum_adslot17map to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.125, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @soc_enum_adslot18map to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.126, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @soc_enum_adslot19map to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.127, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @soc_enum_adslot20map to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.128, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @soc_enum_adslot21map to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.129, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @soc_enum_adslot22map to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.130, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @soc_enum_adslot23map to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.131, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @soc_enum_adslot24map to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.132, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @soc_enum_adslot25map to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.133, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @soc_enum_adslot26map to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.134, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @soc_enum_adslot27map to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.135, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @soc_enum_adslot28map to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.136, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @soc_enum_adslot29map to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.137, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @soc_enum_adslot30map to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.138, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @soc_enum_adslot31map to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.139, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.140 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.141, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.142 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.143, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.144 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.145, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.146 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.147, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.148 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.149, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.150 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.151, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.152 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.153, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.154 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.155, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.156 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.157, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @soc_enum_bfifomask to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.158, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @soc_enum_bfifo19m2 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.159, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.160 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.161, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.162 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.163, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.164 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.165, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.166 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.167, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @soc_enum_bfifomast to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.168, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.169 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.170, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.171 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.172, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.173 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.174, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.175 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.176, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @anc_status_control_get, ptr @anc_status_control_put, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @soc_enum_ancstate to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.177, i32 0, i32 0, i32 0, ptr @snd_soc_info_xr_sx, ptr @snd_soc_get_xr_sx, ptr @snd_soc_put_xr_sx, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.178 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.179, i32 0, i32 0, i32 0, ptr @snd_soc_info_xr_sx, ptr @snd_soc_get_xr_sx, ptr @snd_soc_put_xr_sx, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.180 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.181, i32 0, i32 0, i32 0, ptr @snd_soc_info_xr_sx, ptr @snd_soc_get_xr_sx, ptr @snd_soc_put_xr_sx, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.182 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.183, i32 0, i32 0, i32 0, ptr @snd_soc_info_xr_sx, ptr @snd_soc_get_xr_sx, ptr @snd_soc_put_xr_sx, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.184 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.185, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @sid_status_control_get, ptr @sid_status_control_put, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @soc_enum_sidstate to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.186, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_strobe, ptr @snd_soc_put_strobe, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.187 to i32) }], [1424 x i8] zeroinitializer }, align 32
@ab8500_dapm_routes = internal constant { [157 x %struct.snd_soc_dapm_route], [2044 x i8] } { [157 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.317, ptr null, ptr @.str.311, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.317, ptr null, ptr @.str.310, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.317, ptr null, ptr @.str.315, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.317, ptr null, ptr @.str.316, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.321, ptr null, ptr @.str.333, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.321, ptr null, ptr @.str.317, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.319, ptr null, ptr @.str.320, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.319, ptr null, ptr @.str.317, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.287, ptr null, ptr @.str.317, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.433, ptr null, ptr @.str.287, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.319, ptr null, ptr @.str.318, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.322, ptr null, ptr @.str.321, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.323, ptr null, ptr @.str.333, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.323, ptr null, ptr @.str.331, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.324, ptr null, ptr @.str.333, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.324, ptr null, ptr @.str.331, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.332, ptr null, ptr @.str.323, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.334, ptr null, ptr @.str.324, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.335, ptr null, ptr @.str.332, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.336, ptr null, ptr @.str.334, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.337, ptr null, ptr @.str.335, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.338, ptr null, ptr @.str.336, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.339, ptr null, ptr @.str.337, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.340, ptr null, ptr @.str.338, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.341, ptr null, ptr @.str.339, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.342, ptr null, ptr @.str.340, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.343, ptr null, ptr @.str.341, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.344, ptr null, ptr @.str.342, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.345, ptr null, ptr @.str.343, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.346, ptr null, ptr @.str.344, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.347, ptr null, ptr @.str.345, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.348, ptr null, ptr @.str.346, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.349, ptr null, ptr @.str.347, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.350, ptr null, ptr @.str.348, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.325, ptr null, ptr @.str.333, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.363, ptr null, ptr @.str.325, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.326, ptr null, ptr @.str.333, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.364, ptr null, ptr @.str.326, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.365, ptr @.str.227, ptr @.str.363, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.366, ptr @.str.227, ptr @.str.364, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.370, ptr null, ptr @.str.365, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.369, ptr null, ptr @.str.366, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.367, ptr null, ptr @.str.370, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.368, ptr null, ptr @.str.369, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.371, ptr null, ptr @.str.367, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.372, ptr null, ptr @.str.368, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.373, ptr null, ptr @.str.371, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.374, ptr null, ptr @.str.372, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.358, ptr @.str.349, ptr @.str.335, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.358, ptr @.str.373, ptr @.str.370, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.359, ptr null, ptr @.str.358, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.360, ptr null, ptr @.str.359, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.361, ptr null, ptr @.str.360, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.362, ptr null, ptr @.str.361, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.351, ptr @.str.445, ptr @.str.341, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.351, ptr @.str.445, ptr @.str.342, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.351, ptr @.str.444, ptr @.str.359, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.352, ptr null, ptr @.str.351, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.353, ptr null, ptr @.str.351, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.354, ptr null, ptr @.str.352, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.355, ptr null, ptr @.str.353, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.356, ptr null, ptr @.str.354, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.357, ptr null, ptr @.str.355, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.327, ptr null, ptr @.str.333, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.377, ptr null, ptr @.str.327, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.328, ptr null, ptr @.str.333, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.378, ptr null, ptr @.str.328, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.379, ptr null, ptr @.str.377, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.380, ptr null, ptr @.str.378, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.381, ptr @.str.227, ptr @.str.379, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.382, ptr @.str.227, ptr @.str.380, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.381, ptr @.str.446, ptr @.str.375, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.382, ptr @.str.446, ptr @.str.376, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.383, ptr null, ptr @.str.381, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.384, ptr null, ptr @.str.382, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.385, ptr null, ptr @.str.383, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.386, ptr null, ptr @.str.384, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.396, ptr null, ptr @.str.79, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.399, ptr null, ptr @.str.397, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.400, ptr null, ptr @.str.398, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.401, ptr null, ptr @.str.399, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.402, ptr null, ptr @.str.400, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.405, ptr @.str.398, ptr @.str.402, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.405, ptr @.str.79, ptr @.str.396, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.406, ptr null, ptr @.str.401, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.407, ptr null, ptr @.str.405, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.408, ptr @.str.397, ptr @.str.406, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.409, ptr @.str.398, ptr @.str.407, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.410, ptr null, ptr @.str.408, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.411, ptr null, ptr @.str.409, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.412, ptr null, ptr @.str.410, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.412, ptr null, ptr @.str.411, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.269, ptr null, ptr @.str.320, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.269, ptr null, ptr @.str.412, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.270, ptr null, ptr @.str.320, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.270, ptr null, ptr @.str.412, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.388, ptr null, ptr @.str.71, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.389, ptr null, ptr @.str.388, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.390, ptr null, ptr @.str.388, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.387, ptr @.str.448, ptr @.str.389, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.387, ptr @.str.447, ptr @.str.390, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.391, ptr null, ptr @.str.387, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.392, ptr @.str.71, ptr @.str.391, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.393, ptr null, ptr @.str.392, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.394, ptr null, ptr @.str.393, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.271, ptr null, ptr @.str.320, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.271, ptr null, ptr @.str.394, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.413, ptr @.str.79, ptr @.str.407, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.414, ptr @.str.71, ptr @.str.391, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.415, ptr null, ptr @.str.413, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.416, ptr null, ptr @.str.414, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.417, ptr null, ptr @.str.415, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.418, ptr null, ptr @.str.416, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.329, ptr null, ptr @.str.320, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.329, ptr null, ptr @.str.417, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.330, ptr null, ptr @.str.320, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.330, ptr null, ptr @.str.418, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.419, ptr null, ptr @.str.314, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.420, ptr null, ptr @.str.314, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.421, ptr null, ptr @.str.314, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.422, ptr null, ptr @.str.314, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.423, ptr null, ptr @.str.314, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.424, ptr null, ptr @.str.314, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.408, ptr null, ptr @.str.419, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.409, ptr null, ptr @.str.420, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.392, ptr null, ptr @.str.421, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.413, ptr null, ptr @.str.423, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.414, ptr null, ptr @.str.424, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.431, ptr null, ptr @.str.422, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.432, ptr null, ptr @.str.431, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.272, ptr null, ptr @.str.320, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.272, ptr null, ptr @.str.432, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.403, ptr null, ptr @.str.401, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.404, ptr null, ptr @.str.402, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.341, ptr null, ptr @.str.403, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.342, ptr null, ptr @.str.404, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.434, ptr @.str.450, ptr @.str.415, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.434, ptr @.str.449, ptr @.str.416, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.435, ptr @.str.451, ptr @.str.434, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.365, ptr @.str.435, ptr @.str.435, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.366, ptr @.str.435, ptr @.str.435, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.436, ptr @.str.451, ptr @.str.435, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.335, ptr null, ptr @.str.436, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.437, ptr @.str.397, ptr @.str.412, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.437, ptr @.str.398, ptr @.str.412, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.437, ptr @.str.71, ptr @.str.394, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.437, ptr @.str.349, ptr @.str.323, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.438, ptr @.str.398, ptr @.str.412, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.438, ptr @.str.71, ptr @.str.394, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.438, ptr @.str.422, ptr @.str.432, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.438, ptr @.str.350, ptr @.str.324, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.439, ptr null, ptr @.str.437, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.440, ptr null, ptr @.str.438, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.441, ptr null, ptr @.str.439, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.442, ptr null, ptr @.str.440, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.332, ptr null, ptr @.str.441, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.334, ptr null, ptr @.str.442, ptr null, %struct.snd_soc_dobj zeroinitializer }], [2044 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Charge Pump High Threshold For Low Voltage\00", [53 x i8] zeroinitializer }, align 32
@soc_enum_envdeththre = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 13, i8 4, i8 4, i32 16, i32 15, ptr @enum_envdetthre, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Charge Pump Low Threshold For Low Voltage\00", [54 x i8] zeroinitializer }, align 32
@soc_enum_envdetlthre = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 13, i8 0, i8 0, i32 16, i32 15, ptr @enum_envdetthre, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Charge Pump Envelope Detection Switch\00", [58 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 14, i32 14, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Charge Pump Envelope Detection Decay Time\00", [54 x i8] zeroinitializer }, align 32
@soc_enum_envdettime = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 14, i8 0, i8 0, i32 16, i32 15, ptr @enum_envdettime, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Headset Mode\00", [19 x i8] zeroinitializer }, align 32
@soc_enum_da12voice = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 51, i8 7, i8 7, i32 2, i32 1, ptr @enum_av_mode, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Headset High Pass Switch\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.19 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 4, i32 4, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Headset Low Power Switch\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.21 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 4, i32 4, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Headset DAC Low Power Switch\00", [35 x i8] zeroinitializer }, align 32
@.compoundliteral.23 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 4, i32 4, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Headset DAC Drv Low Power Switch\00", [63 x i8] zeroinitializer }, align 32
@.compoundliteral.25 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 4, i32 4, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Headset Fade Speed\00", [45 x i8] zeroinitializer }, align 32
@soc_enum_hsfadspeed = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 6, i8 0, i8 0, i32 4, i32 3, ptr @enum_hsfadspeed, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Headset Source\00", [17 x i8] zeroinitializer }, align 32
@soc_enum_da2hslr = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 63, i8 7, i8 6, i32 2, i32 1, ptr @enum_da2hslr, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Headset Filter\00", [17 x i8] zeroinitializer }, align 32
@soc_enum_hsesinc = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 79, i8 7, i8 7, i32 2, i32 1, ptr @enum_sinc31, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Headset Master Volume\00", [42 x i8] zeroinitializer }, align 32
@dax_dig_gain_tlv = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -6300, i32 65636], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.30 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 71, i32 72, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Headset Digital Volume\00", [41 x i8] zeroinitializer }, align 32
@hs_ear_dig_gain_tlv = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -100, i32 65636], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.32 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 9, i32 9, i32 79, i32 80, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Headset Volume\00", [17 x i8] zeroinitializer }, align 32
@hs_gain_tlv = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 3, i32 48, i32 0, i32 3, i32 1, i32 8, i32 -3200, i32 400, i32 4, i32 15, i32 1, i32 8, i32 -1800, i32 200], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.34 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 22, i32 22, i32 4, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Earpiece DAC Mode\00", [46 x i8] zeroinitializer }, align 32
@soc_enum_eardaclowpow = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 4, i8 4, i8 4, i32 2, i32 1, ptr @enum_lowpow, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Earpiece DAC Drv Mode\00", [42 x i8] zeroinitializer }, align 32
@soc_enum_eardrvlowpow = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 4, i8 0, i8 0, i32 2, i32 1, ptr @enum_lowpow, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HF Mode\00", [24 x i8] zeroinitializer }, align 32
@soc_enum_da34voice = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 53, i8 7, i8 7, i32 2, i32 1, ptr @enum_av_mode, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"HF and Headset Swap Switch\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.39 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 51, i32 51, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"HF Low EMI Mode Switch\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.41 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 59, i32 59, i32 1, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"HF FIR Bypass Switch\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.43 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 60, i32 60, i32 4, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"HF High Volume Switch\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.45 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 60, i32 60, i32 0, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"HF L and R Bridge Switch\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.47 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 59, i32 59, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"HF Master Volume\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.49 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 73, i32 74, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Vibra High Volume Switch\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.51 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 60, i32 60, i32 2, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Vibra Low EMI Mode Switch\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.53 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 59, i32 59, i32 3, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Vibra FIR Bypass Switch\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.55 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 60, i32 60, i32 6, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Vibra Mode\00", [21 x i8] zeroinitializer }, align 32
@soc_enum_da56voice = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 55, i8 7, i8 7, i32 2, i32 1, ptr @enum_av_mode, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Vibra PWM Duty Cycle N\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.58 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 100, i32 100, i32 17, i32 19, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Vibra PWM Duty Cycle P\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.60 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 100, i32 100, i32 16, i32 18, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Vibra 1 and 2 Bridge Switch\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.62 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 59, i32 59, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Vibra Master Volume\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.64 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 75, i32 76, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ClassD High Pass Volume\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.66 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 10, i32 10, i32 61, i32 61, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ClassD White Volume\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.68 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 10, i32 10, i32 61, i32 61, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Mic Master Volume\00", [46 x i8] zeroinitializer }, align 32
@adx_dig_gain_tlv = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -3200, i32 65636], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.70 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 67, i32 68, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Mic 1\00", [26 x i8] zeroinitializer }, align 32
@mic_gain_tlv = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 0, i32 100], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.72 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 20, i32 20, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Mic 1 Low Power Switch\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.74 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 20, i32 20, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Mic High Pass Switch\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.76 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 26, i32 26, i32 5, i32 4, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Mic Mode\00", [23 x i8] zeroinitializer }, align 32
@soc_enum_ad34voice = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 26, i8 1, i8 0, i32 2, i32 1, ptr @enum_av_mode, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Mic Filter\00", [21 x i8] zeroinitializer }, align 32
@soc_enum_dmic34sinc = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 62, i8 3, i8 2, i32 2, i32 1, ptr @enum_sinc53, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Mic 2\00", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.80 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 21, i32 21, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Mic 2 Low Power Switch\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.82 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 21, i32 21, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"LineIn High Pass Switch\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.84 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 26, i32 26, i32 7, i32 6, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"LineIn Filter\00", [18 x i8] zeroinitializer }, align 32
@soc_enum_dmic12sinc = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 62, i8 5, i8 4, i32 2, i32 1, ptr @enum_sinc53, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LineIn Mode\00", [20 x i8] zeroinitializer }, align 32
@soc_enum_ad12voice = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 26, i8 3, i8 2, i32 2, i32 1, ptr @enum_av_mode, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"LineIn Master Volume\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.88 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 65, i32 66, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"LineIn\00", [25 x i8] zeroinitializer }, align 32
@lin_gain_tlv = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -1000, i32 200], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.90 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 23, i32 23, i32 4, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"LineIn to Headset Volume\00", [39 x i8] zeroinitializer }, align 32
@lin2hs_gain_tlv = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -3800, i32 65736], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.92 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 19, i32 19, i32 24, i32 25, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DMic Filter\00", [20 x i8] zeroinitializer }, align 32
@soc_enum_dmic56sinc = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 62, i8 1, i8 0, i32 2, i32 1, ptr @enum_sinc53, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DMic Master Volume\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.95 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 69, i32 70, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Digital Gain Fade Speed\00", [40 x i8] zeroinitializer }, align 32
@soc_enum_fadespeed = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 80, i8 6, i8 6, i32 4, i32 3, ptr @enum_fadespeed, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Analog Loopback Volume\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.98 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 77, i32 78, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Digital Interface DA 1 From Slot Map\00", [59 x i8] zeroinitializer }, align 32
@soc_enum_da1slotmap = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 51, i8 0, i8 0, i32 32, i32 31, ptr @enum_da_from_slot_map, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Digital Interface DA 2 From Slot Map\00", [59 x i8] zeroinitializer }, align 32
@soc_enum_da2slotmap = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 52, i8 0, i8 0, i32 32, i32 31, ptr @enum_da_from_slot_map, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Digital Interface DA 3 From Slot Map\00", [59 x i8] zeroinitializer }, align 32
@soc_enum_da3slotmap = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 53, i8 0, i8 0, i32 32, i32 31, ptr @enum_da_from_slot_map, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Digital Interface DA 4 From Slot Map\00", [59 x i8] zeroinitializer }, align 32
@soc_enum_da4slotmap = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 54, i8 0, i8 0, i32 32, i32 31, ptr @enum_da_from_slot_map, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Digital Interface DA 5 From Slot Map\00", [59 x i8] zeroinitializer }, align 32
@soc_enum_da5slotmap = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 55, i8 0, i8 0, i32 32, i32 31, ptr @enum_da_from_slot_map, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Digital Interface DA 6 From Slot Map\00", [59 x i8] zeroinitializer }, align 32
@soc_enum_da6slotmap = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 56, i8 0, i8 0, i32 32, i32 31, ptr @enum_da_from_slot_map, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Digital Interface DA 7 From Slot Map\00", [59 x i8] zeroinitializer }, align 32
@soc_enum_da7slotmap = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 57, i8 0, i8 0, i32 32, i32 31, ptr @enum_da_from_slot_map, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Digital Interface DA 8 From Slot Map\00", [59 x i8] zeroinitializer }, align 32
@soc_enum_da8slotmap = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 58, i8 0, i8 0, i32 32, i32 31, ptr @enum_da_from_slot_map, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Digital Interface AD To Slot 0 Map\00", [61 x i8] zeroinitializer }, align 32
@soc_enum_adslot0map = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 31, i8 0, i8 0, i32 16, i32 15, ptr @enum_ad_to_slot_map, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Digital Interface AD To Slot 1 Map\00", [61 x i8] zeroinitializer }, align 32
@soc_enum_adslot1map = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 31, i8 4, i8 4, i32 16, i32 15, ptr @enum_ad_to_slot_map, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Digital Interface AD To Slot 2 Map\00", [61 x i8] zeroinitializer }, align 32
@soc_enum_adslot2map = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 32, i8 0, i8 0, i32 16, i32 15, ptr @enum_ad_to_slot_map, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Digital Interface AD To Slot 3 Map\00", [61 x i8] zeroinitializer }, align 32
@soc_enum_adslot3map = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 32, i8 4, i8 4, i32 16, i32 15, ptr @enum_ad_to_slot_map, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Digital Interface AD To Slot 4 Map\00", [61 x i8] zeroinitializer }, align 32
@soc_enum_adslot4map = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 33, i8 0, i8 0, i32 16, i32 15, ptr @enum_ad_to_slot_map, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Digital Interface AD To Slot 5 Map\00", [61 x i8] zeroinitializer }, align 32
@soc_enum_adslot5map = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 33, i8 4, i8 4, i32 16, i32 15, ptr @enum_ad_to_slot_map, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Digital Interface AD To Slot 6 Map\00", [61 x i8] zeroinitializer }, align 32
@soc_enum_adslot6map = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 34, i8 0, i8 0, i32 16, i32 15, ptr @enum_ad_to_slot_map, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Digital Interface AD To Slot 7 Map\00", [61 x i8] zeroinitializer }, align 32
@soc_enum_adslot7map = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 34, i8 4, i8 4, i32 16, i32 15, ptr @enum_ad_to_slot_map, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Digital Interface AD To Slot 8 Map\00", [61 x i8] zeroinitializer }, align 32
@soc_enum_adslot8map = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 35, i8 0, i8 0, i32 16, i32 15, ptr @enum_ad_to_slot_map, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Digital Interface AD To Slot 9 Map\00", [61 x i8] zeroinitializer }, align 32
@soc_enum_adslot9map = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 35, i8 4, i8 4, i32 16, i32 15, ptr @enum_ad_to_slot_map, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Digital Interface AD To Slot 10 Map\00", [60 x i8] zeroinitializer }, align 32
@soc_enum_adslot10map = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 36, i8 0, i8 0, i32 16, i32 15, ptr @enum_ad_to_slot_map, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Digital Interface AD To Slot 11 Map\00", [60 x i8] zeroinitializer }, align 32
@soc_enum_adslot11map = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 36, i8 4, i8 4, i32 16, i32 15, ptr @enum_ad_to_slot_map, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Digital Interface AD To Slot 12 Map\00", [60 x i8] zeroinitializer }, align 32
@soc_enum_adslot12map = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 37, i8 0, i8 0, i32 16, i32 15, ptr @enum_ad_to_slot_map, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Digital Interface AD To Slot 13 Map\00", [60 x i8] zeroinitializer }, align 32
@soc_enum_adslot13map = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 37, i8 4, i8 4, i32 16, i32 15, ptr @enum_ad_to_slot_map, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Digital Interface AD To Slot 14 Map\00", [60 x i8] zeroinitializer }, align 32
@soc_enum_adslot14map = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 38, i8 0, i8 0, i32 16, i32 15, ptr @enum_ad_to_slot_map, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Digital Interface AD To Slot 15 Map\00", [60 x i8] zeroinitializer }, align 32
@soc_enum_adslot15map = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 38, i8 4, i8 4, i32 16, i32 15, ptr @enum_ad_to_slot_map, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Digital Interface AD To Slot 16 Map\00", [60 x i8] zeroinitializer }, align 32
@soc_enum_adslot16map = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 39, i8 0, i8 0, i32 16, i32 15, ptr @enum_ad_to_slot_map, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Digital Interface AD To Slot 17 Map\00", [60 x i8] zeroinitializer }, align 32
@soc_enum_adslot17map = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 39, i8 4, i8 4, i32 16, i32 15, ptr @enum_ad_to_slot_map, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Digital Interface AD To Slot 18 Map\00", [60 x i8] zeroinitializer }, align 32
@soc_enum_adslot18map = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 40, i8 0, i8 0, i32 16, i32 15, ptr @enum_ad_to_slot_map, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Digital Interface AD To Slot 19 Map\00", [60 x i8] zeroinitializer }, align 32
@soc_enum_adslot19map = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 40, i8 4, i8 4, i32 16, i32 15, ptr @enum_ad_to_slot_map, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Digital Interface AD To Slot 20 Map\00", [60 x i8] zeroinitializer }, align 32
@soc_enum_adslot20map = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 41, i8 0, i8 0, i32 16, i32 15, ptr @enum_ad_to_slot_map, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Digital Interface AD To Slot 21 Map\00", [60 x i8] zeroinitializer }, align 32
@soc_enum_adslot21map = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 41, i8 4, i8 4, i32 16, i32 15, ptr @enum_ad_to_slot_map, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Digital Interface AD To Slot 22 Map\00", [60 x i8] zeroinitializer }, align 32
@soc_enum_adslot22map = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 42, i8 0, i8 0, i32 16, i32 15, ptr @enum_ad_to_slot_map, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Digital Interface AD To Slot 23 Map\00", [60 x i8] zeroinitializer }, align 32
@soc_enum_adslot23map = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 42, i8 4, i8 4, i32 16, i32 15, ptr @enum_ad_to_slot_map, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Digital Interface AD To Slot 24 Map\00", [60 x i8] zeroinitializer }, align 32
@soc_enum_adslot24map = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 43, i8 0, i8 0, i32 16, i32 15, ptr @enum_ad_to_slot_map, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Digital Interface AD To Slot 25 Map\00", [60 x i8] zeroinitializer }, align 32
@soc_enum_adslot25map = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 43, i8 4, i8 4, i32 16, i32 15, ptr @enum_ad_to_slot_map, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Digital Interface AD To Slot 26 Map\00", [60 x i8] zeroinitializer }, align 32
@soc_enum_adslot26map = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 44, i8 0, i8 0, i32 16, i32 15, ptr @enum_ad_to_slot_map, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Digital Interface AD To Slot 27 Map\00", [60 x i8] zeroinitializer }, align 32
@soc_enum_adslot27map = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 44, i8 4, i8 4, i32 16, i32 15, ptr @enum_ad_to_slot_map, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Digital Interface AD To Slot 28 Map\00", [60 x i8] zeroinitializer }, align 32
@soc_enum_adslot28map = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 45, i8 0, i8 0, i32 16, i32 15, ptr @enum_ad_to_slot_map, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Digital Interface AD To Slot 29 Map\00", [60 x i8] zeroinitializer }, align 32
@soc_enum_adslot29map = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 45, i8 4, i8 4, i32 16, i32 15, ptr @enum_ad_to_slot_map, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Digital Interface AD To Slot 30 Map\00", [60 x i8] zeroinitializer }, align 32
@soc_enum_adslot30map = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 46, i8 0, i8 0, i32 16, i32 15, ptr @enum_ad_to_slot_map, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Digital Interface AD To Slot 31 Map\00", [60 x i8] zeroinitializer }, align 32
@soc_enum_adslot31map = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 46, i8 4, i8 4, i32 16, i32 15, ptr @enum_ad_to_slot_map, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Digital Interface AD 1 Loopback Switch\00", [57 x i8] zeroinitializer }, align 32
@.compoundliteral.140 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 51, i32 51, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Digital Interface AD 2 Loopback Switch\00", [57 x i8] zeroinitializer }, align 32
@.compoundliteral.142 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 52, i32 52, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Digital Interface AD 3 Loopback Switch\00", [57 x i8] zeroinitializer }, align 32
@.compoundliteral.144 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 53, i32 53, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Digital Interface AD 4 Loopback Switch\00", [57 x i8] zeroinitializer }, align 32
@.compoundliteral.146 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 54, i32 54, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Digital Interface AD 5 Loopback Switch\00", [57 x i8] zeroinitializer }, align 32
@.compoundliteral.148 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 55, i32 55, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Digital Interface AD 6 Loopback Switch\00", [57 x i8] zeroinitializer }, align 32
@.compoundliteral.150 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 56, i32 56, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Digital Interface AD 7 Loopback Switch\00", [57 x i8] zeroinitializer }, align 32
@.compoundliteral.152 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 57, i32 57, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Digital Interface AD 8 Loopback Switch\00", [57 x i8] zeroinitializer }, align 32
@.compoundliteral.154 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 58, i32 58, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Digital Interface 0 FIFO Enable Switch\00", [57 x i8] zeroinitializer }, align 32
@.compoundliteral.156 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 29, i32 29, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Burst FIFO Mask\00", [16 x i8] zeroinitializer }, align 32
@soc_enum_bfifomask = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 105, i8 -128, i8 -128, i32 2, i32 1, ptr @enum_mask, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Burst FIFO Bit-clock Frequency\00", [33 x i8] zeroinitializer }, align 32
@soc_enum_bfifo19m2 = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 105, i8 64, i8 64, i32 2, i32 1, ptr @enum_bitclk0, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Burst FIFO Threshold\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.160 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 63, i32 63, i32 105, i32 105, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Burst FIFO Length\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.162 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 106, i32 106, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Burst FIFO EOS Extra Slots\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.164 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 5, i32 5, i32 107, i32 107, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Burst FIFO FS Extra Bit-clocks\00", [33 x i8] zeroinitializer }, align 32
@.compoundliteral.166 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 107, i32 107, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Burst FIFO Interface Mode\00", [38 x i8] zeroinitializer }, align 32
@soc_enum_bfifomast = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 107, i8 1, i8 1, i32 2, i32 1, ptr @enum_slavemaster, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Burst FIFO Interface Switch\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.169 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 107, i32 107, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Burst FIFO Switch Frame Number\00", [33 x i8] zeroinitializer }, align 32
@.compoundliteral.171 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 108, i32 108, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Burst FIFO Wake Up Delay\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.173 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 109, i32 109, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Burst FIFO Samples In FIFO\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.175 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 110, i32 110, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ANC Status\00", [21 x i8] zeroinitializer }, align 32
@soc_enum_ancstate = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 0, i8 0, i8 0, i32 7, i32 0, ptr @enum_anc_state, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ANC Warp Delay Shift\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.178 = internal global { %struct.soc_mreg_control, [40 x i8] } { %struct.soc_mreg_control { i32 -16, i32 15, i32 84, i32 1, i32 5, i32 0 }, [40 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ANC FIR Output Shift\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.180 = internal global { %struct.soc_mreg_control, [40 x i8] } { %struct.soc_mreg_control { i32 -16, i32 15, i32 85, i32 1, i32 5, i32 0 }, [40 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ANC IIR Output Shift\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.182 = internal global { %struct.soc_mreg_control, [40 x i8] } { %struct.soc_mreg_control { i32 -16, i32 15, i32 86, i32 1, i32 5, i32 0 }, [40 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ANC Warp Delay\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.184 = internal global { %struct.soc_mreg_control, [40 x i8] } { %struct.soc_mreg_control { i32 0, i32 65535, i32 91, i32 2, i32 16, i32 0 }, [40 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Sidetone Status\00", [16 x i8] zeroinitializer }, align 32
@soc_enum_sidstate = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 0, i8 0, i8 0, i32 3, i32 0, ptr @enum_sid_state, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Sidetone Reset\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.187 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 97, i32 97, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@enum_envdetthre = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203], [32 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"250mV\00", [26 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"300mV\00", [26 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"350mV\00", [26 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"400mV\00", [26 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"450mV\00", [26 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"500mV\00", [26 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"550mV\00", [26 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"600mV\00", [26 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"650mV\00", [26 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"700mV\00", [26 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"750mV\00", [26 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"800mV\00", [26 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"850mV\00", [26 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"900mV\00", [26 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"950mV\00", [26 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1.00V\00", [26 x i8] zeroinitializer }, align 32
@enum_envdettime = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219], [32 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"26.6us\00", [25 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"53.2us\00", [25 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"106us\00", [26 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"213us\00", [26 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"426us\00", [26 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"851us\00", [26 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"1.70ms\00", [25 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"3.40ms\00", [25 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"6.81ms\00", [25 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"13.6ms\00", [25 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"27.2ms\00", [25 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"54.5ms\00", [25 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"109ms\00", [26 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"218ms\00", [26 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"436ms\00", [26 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"872ms\00", [26 x i8] zeroinitializer }, align 32
@enum_av_mode = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.220, ptr @.str.221], [24 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Audio\00", [26 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Voice\00", [26 x i8] zeroinitializer }, align 32
@enum_hsfadspeed = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225], [16 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"2ms\00", [28 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0.5ms\00", [26 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"10.6ms\00", [25 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"5ms\00", [28 x i8] zeroinitializer }, align 32
@enum_da2hslr = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.226, ptr @.str.227], [24 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Sidetone\00", [23 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Audio Path\00", [21 x i8] zeroinitializer }, align 32
@enum_sinc31 = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.228, ptr @.str.229], [24 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Sinc 3\00", [25 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Sinc 1\00", [25 x i8] zeroinitializer }, align 32
@enum_lowpow = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.230, ptr @.str.231], [24 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Normal\00", [25 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Low Power\00", [22 x i8] zeroinitializer }, align 32
@enum_sinc53 = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.232, ptr @.str.228], [24 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Sinc 5\00", [25 x i8] zeroinitializer }, align 32
@enum_fadespeed = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236], [16 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1ms\00", [28 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"4ms\00", [28 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"8ms\00", [28 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"16ms\00", [27 x i8] zeroinitializer }, align 32
@enum_da_from_slot_map = internal constant { [32 x ptr], [32 x i8] } { [32 x ptr] [ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @.str.244, ptr @.str.245, ptr @.str.246, ptr @.str.247, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @.str.252, ptr @.str.253, ptr @.str.254, ptr @.str.255, ptr @.str.256, ptr @.str.257, ptr @.str.258, ptr @.str.259, ptr @.str.260, ptr @.str.261, ptr @.str.262, ptr @.str.263, ptr @.str.264, ptr @.str.265, ptr @.str.266, ptr @.str.267, ptr @.str.268], [32 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SLOT0\00", [26 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SLOT1\00", [26 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SLOT2\00", [26 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SLOT3\00", [26 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SLOT4\00", [26 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SLOT5\00", [26 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SLOT6\00", [26 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SLOT7\00", [26 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SLOT8\00", [26 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SLOT9\00", [26 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SLOT10\00", [25 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SLOT11\00", [25 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SLOT12\00", [25 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SLOT13\00", [25 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SLOT14\00", [25 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SLOT15\00", [25 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SLOT16\00", [25 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SLOT17\00", [25 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SLOT18\00", [25 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SLOT19\00", [25 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SLOT20\00", [25 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SLOT21\00", [25 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SLOT22\00", [25 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SLOT23\00", [25 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SLOT24\00", [25 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SLOT25\00", [25 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SLOT26\00", [25 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SLOT27\00", [25 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SLOT28\00", [25 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SLOT29\00", [25 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SLOT30\00", [25 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SLOT31\00", [25 x i8] zeroinitializer }, align 32
@enum_ad_to_slot_map = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.269, ptr @.str.270, ptr @.str.271, ptr @.str.272, ptr @.str.273, ptr @.str.274, ptr @.str.275, ptr @.str.276, ptr @.str.277, ptr @.str.277, ptr @.str.277, ptr @.str.277, ptr @.str.278, ptr @.str.278, ptr @.str.278, ptr @.str.278], [32 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AD_OUT1\00", [24 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AD_OUT2\00", [24 x i8] zeroinitializer }, align 32
@.str.271 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AD_OUT3\00", [24 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AD_OUT4\00", [24 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AD_OUT5\00", [24 x i8] zeroinitializer }, align 32
@.str.274 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AD_OUT6\00", [24 x i8] zeroinitializer }, align 32
@.str.275 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AD_OUT7\00", [24 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AD_OUT8\00", [24 x i8] zeroinitializer }, align 32
@.str.277 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"zeroes\00", [25 x i8] zeroinitializer }, align 32
@.str.278 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tristate\00", [23 x i8] zeroinitializer }, align 32
@enum_mask = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.279, ptr @.str.280], [24 x i8] zeroinitializer }, align 32
@.str.279 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Unmasked\00", [23 x i8] zeroinitializer }, align 32
@.str.280 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Masked\00", [25 x i8] zeroinitializer }, align 32
@enum_bitclk0 = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.281, ptr @.str.282], [24 x i8] zeroinitializer }, align 32
@.str.281 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"19_2_MHz\00", [23 x i8] zeroinitializer }, align 32
@.str.282 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"38_4_MHz\00", [23 x i8] zeroinitializer }, align 32
@enum_slavemaster = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.283, ptr @.str.284], [24 x i8] zeroinitializer }, align 32
@.str.283 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Slave\00", [26 x i8] zeroinitializer }, align 32
@.str.284 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Master\00", [25 x i8] zeroinitializer }, align 32
@anc_status_control_put.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.285, ptr @.str.3, ptr @.str.4, i8 1, i8 46, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.285 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"anc_status_control_put\00", [41 x i8] zeroinitializer }, align 32
@anc_status_control_put._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.286, ptr @.str.285, ptr @.str.3, i32 1221, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.286 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: ERROR: Unsupported status to set '%s'!\0A\00", [52 x i8] zeroinitializer }, align 32
@anc_status_control_put._entry_ptr = internal global ptr @anc_status_control_put._entry, section ".printk_index", align 4
@enum_anc_state = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.295, ptr @.str.296, ptr @.str.297, ptr @.str.298, ptr @.str.299, ptr @.str.300, ptr @.str.301], [36 x i8] zeroinitializer }, align 32
@.str.287 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ANC Configure Input\00", [44 x i8] zeroinitializer }, align 32
@anc_status_control_put._entry.288 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.289, ptr @.str.285, ptr @.str.3, i32 1232, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.289 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: ERROR: Failed to enable power (status = %d)!\0A\00", [46 x i8] zeroinitializer }, align 32
@anc_status_control_put._entry_ptr.290 = internal global ptr @anc_status_control_put._entry.288, section ".printk_index", align 4
@anc_status_control_put._entry.291 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.292, ptr @.str.285, ptr @.str.3, i32 1260, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.292 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: Unable to configure ANC! (status = %d)\0A\00", [52 x i8] zeroinitializer }, align 32
@anc_status_control_put._entry_ptr.293 = internal global ptr @anc_status_control_put._entry.291, section ".printk_index", align 4
@anc_status_control_put.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.285, ptr @.str.3, ptr @.str.294, i8 1, i8 59, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.294 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s: Exit.\0A\00", [21 x i8] zeroinitializer }, align 32
@.str.295 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Unconfigured\00", [19 x i8] zeroinitializer }, align 32
@.str.296 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Apply FIR and IIR\00", [46 x i8] zeroinitializer }, align 32
@.str.297 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"FIR and IIR are configured\00", [37 x i8] zeroinitializer }, align 32
@.str.298 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Apply FIR\00", [22 x i8] zeroinitializer }, align 32
@.str.299 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"FIR is configured\00", [46 x i8] zeroinitializer }, align 32
@.str.300 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Apply IIR\00", [22 x i8] zeroinitializer }, align 32
@.str.301 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"IIR is configured\00", [46 x i8] zeroinitializer }, align 32
@anc_configure.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.302, ptr @.str.3, ptr @.str.4, i8 1, i8 15, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.302 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"anc_configure\00", [18 x i8] zeroinitializer }, align 32
@anc_configure.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.302, ptr @.str.3, ptr @.str.294, i8 1, i8 21, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@sid_status_control_put.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.303, ptr @.str.3, ptr @.str.304, i8 1, i8 28, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.303 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sid_status_control_put\00", [41 x i8] zeroinitializer }, align 32
@.str.304 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s: Enter\0A\00", [21 x i8] zeroinitializer }, align 32
@sid_status_control_put._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.305, ptr @.str.303, ptr @.str.3, i32 1143, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.305 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: ERROR: This control supports '%s' only!\0A\00", [51 x i8] zeroinitializer }, align 32
@sid_status_control_put._entry_ptr = internal global ptr @sid_status_control_put._entry, section ".printk_index", align 4
@enum_sid_state = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.295, ptr @.str.298, ptr @.str.299], [20 x i8] zeroinitializer }, align 32
@sid_status_control_put._entry.306 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.307, ptr @.str.303, ptr @.str.3, i32 1153, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.307 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: Sidetone busy while off!\0A\00", [34 x i8] zeroinitializer }, align 32
@sid_status_control_put._entry_ptr.308 = internal global ptr @sid_status_control_put._entry.306, section ".printk_index", align 4
@sid_status_control_put.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.303, ptr @.str.3, ptr @.str.309, i8 1, i8 39, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.309 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s: Exit\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.310 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"audioclk\00", [23 x i8] zeroinitializer }, align 32
@.str.311 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"V-AUD\00", [26 x i8] zeroinitializer }, align 32
@.str.312 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"V-AMIC1\00", [24 x i8] zeroinitializer }, align 32
@.str.313 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"V-AMIC2\00", [24 x i8] zeroinitializer }, align 32
@.str.314 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"V-DMIC\00", [25 x i8] zeroinitializer }, align 32
@.str.315 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Audio Power\00", [20 x i8] zeroinitializer }, align 32
@.str.316 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Audio Analog Power\00", [45 x i8] zeroinitializer }, align 32
@.str.317 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Main Supply\00", [20 x i8] zeroinitializer }, align 32
@.str.318 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ADC Input\00", [22 x i8] zeroinitializer }, align 32
@.str.319 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ADC\00", [28 x i8] zeroinitializer }, align 32
@.str.320 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ab8500_0c\00", [22 x i8] zeroinitializer }, align 32
@.str.321 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DAC\00", [28 x i8] zeroinitializer }, align 32
@.str.322 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DAC Output\00", [21 x i8] zeroinitializer }, align 32
@.str.323 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DA_IN1\00", [25 x i8] zeroinitializer }, align 32
@.str.324 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DA_IN2\00", [25 x i8] zeroinitializer }, align 32
@.str.325 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DA_IN3\00", [25 x i8] zeroinitializer }, align 32
@.str.326 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DA_IN4\00", [25 x i8] zeroinitializer }, align 32
@.str.327 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DA_IN5\00", [25 x i8] zeroinitializer }, align 32
@.str.328 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DA_IN6\00", [25 x i8] zeroinitializer }, align 32
@.str.329 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"AD_OUT57\00", [23 x i8] zeroinitializer }, align 32
@.str.330 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"AD_OUT68\00", [23 x i8] zeroinitializer }, align 32
@.str.331 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Charge Pump\00", [20 x i8] zeroinitializer }, align 32
@.str.332 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DA1 Enable\00", [21 x i8] zeroinitializer }, align 32
@.str.333 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ab8500_0p\00", [22 x i8] zeroinitializer }, align 32
@.str.334 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DA2 Enable\00", [21 x i8] zeroinitializer }, align 32
@.str.335 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"HSL Digital Volume\00", [45 x i8] zeroinitializer }, align 32
@.str.336 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"HSR Digital Volume\00", [45 x i8] zeroinitializer }, align 32
@.str.337 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HSL DAC\00", [24 x i8] zeroinitializer }, align 32
@.str.338 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HSR DAC\00", [24 x i8] zeroinitializer }, align 32
@.str.339 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HSL DAC Mute\00", [19 x i8] zeroinitializer }, align 32
@.str.340 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HSR DAC Mute\00", [19 x i8] zeroinitializer }, align 32
@.str.341 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"HSL DAC Driver\00", [17 x i8] zeroinitializer }, align 32
@.str.342 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"HSR DAC Driver\00", [17 x i8] zeroinitializer }, align 32
@.str.343 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"HSL Mute\00", [23 x i8] zeroinitializer }, align 32
@.str.344 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"HSR Mute\00", [23 x i8] zeroinitializer }, align 32
@.str.345 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"HSL Enable\00", [21 x i8] zeroinitializer }, align 32
@.str.346 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"HSR Enable\00", [21 x i8] zeroinitializer }, align 32
@.str.347 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"HSL Volume\00", [21 x i8] zeroinitializer }, align 32
@.str.348 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"HSR Volume\00", [21 x i8] zeroinitializer }, align 32
@.str.349 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Headset Left\00", [19 x i8] zeroinitializer }, align 32
@.str.350 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Headset Right\00", [18 x i8] zeroinitializer }, align 32
@.str.351 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"LineOut Source\00", [17 x i8] zeroinitializer }, align 32
@dapm_lineout_source = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.351, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @dapm_enum_lineout_source to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.352 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"LOL Disable HFL\00", [16 x i8] zeroinitializer }, align 32
@.str.353 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"LOR Disable HFR\00", [16 x i8] zeroinitializer }, align 32
@.str.354 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"LOL Enable\00", [21 x i8] zeroinitializer }, align 32
@.str.355 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"LOR Enable\00", [21 x i8] zeroinitializer }, align 32
@.str.356 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"LineOut Left\00", [19 x i8] zeroinitializer }, align 32
@.str.357 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"LineOut Right\00", [18 x i8] zeroinitializer }, align 32
@.str.358 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Earpiece or LineOut Mono Source\00", [32 x i8] zeroinitializer }, align 32
@dapm_ear_lineout_source = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.358, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @dapm_enum_ear_lineout_source to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.359 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"EAR DAC\00", [24 x i8] zeroinitializer }, align 32
@.str.360 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"EAR Mute\00", [23 x i8] zeroinitializer }, align 32
@.str.361 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"EAR Enable\00", [21 x i8] zeroinitializer }, align 32
@.str.362 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Earpiece\00", [23 x i8] zeroinitializer }, align 32
@.str.363 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DA3 Channel Volume\00", [45 x i8] zeroinitializer }, align 32
@.str.364 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DA4 Channel Volume\00", [45 x i8] zeroinitializer }, align 32
@.str.365 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Speaker Left Source\00", [44 x i8] zeroinitializer }, align 32
@dapm_HFl_select = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.365, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @dapm_enum_HFl_sel to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.366 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Speaker Right Source\00", [43 x i8] zeroinitializer }, align 32
@dapm_HFr_select = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.366, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @dapm_enum_HFr_sel to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.367 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HFL DAC\00", [24 x i8] zeroinitializer }, align 32
@.str.368 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HFR DAC\00", [24 x i8] zeroinitializer }, align 32
@.str.369 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DA4 or ANC path to HfR\00", [41 x i8] zeroinitializer }, align 32
@.str.370 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DA3 or ANC path to HfL\00", [41 x i8] zeroinitializer }, align 32
@.str.371 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"HFL Enable\00", [21 x i8] zeroinitializer }, align 32
@.str.372 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"HFR Enable\00", [21 x i8] zeroinitializer }, align 32
@.str.373 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Speaker Left\00", [19 x i8] zeroinitializer }, align 32
@.str.374 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Speaker Right\00", [18 x i8] zeroinitializer }, align 32
@.str.375 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PWMGEN1\00", [24 x i8] zeroinitializer }, align 32
@.str.376 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PWMGEN2\00", [24 x i8] zeroinitializer }, align 32
@.str.377 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DA5 Channel Volume\00", [45 x i8] zeroinitializer }, align 32
@.str.378 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DA6 Channel Volume\00", [45 x i8] zeroinitializer }, align 32
@.str.379 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"VIB1 DAC\00", [23 x i8] zeroinitializer }, align 32
@.str.380 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"VIB2 DAC\00", [23 x i8] zeroinitializer }, align 32
@.str.381 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Vibra 1 Controller\00", [45 x i8] zeroinitializer }, align 32
@dapm_pwm2vib1 = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.381, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @dapm_enum_pwm2vib1 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.382 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Vibra 2 Controller\00", [45 x i8] zeroinitializer }, align 32
@dapm_pwm2vib2 = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.382, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @dapm_enum_pwm2vib2 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.383 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"VIB1 Enable\00", [20 x i8] zeroinitializer }, align 32
@.str.384 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"VIB2 Enable\00", [20 x i8] zeroinitializer }, align 32
@.str.385 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Vibra 1\00", [24 x i8] zeroinitializer }, align 32
@.str.386 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Vibra 2\00", [24 x i8] zeroinitializer }, align 32
@.str.387 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Mic 1a or 1b Select\00", [44 x i8] zeroinitializer }, align 32
@dapm_mic1ab_mux = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.387, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @dapm_enum_mic1ab_sel to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.388 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"MIC1 Mute\00", [22 x i8] zeroinitializer }, align 32
@.str.389 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MIC1A V-AMICx Enable\00", [43 x i8] zeroinitializer }, align 32
@.str.390 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"MIC1B V-AMICx Enable\00", [43 x i8] zeroinitializer }, align 32
@.str.391 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MIC1 ADC\00", [23 x i8] zeroinitializer }, align 32
@.str.392 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"AD3 Source Select\00", [46 x i8] zeroinitializer }, align 32
@dapm_ad3_select = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.392, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @dapm_enum_ad3_sel to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.393 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"AD3 Channel Volume\00", [45 x i8] zeroinitializer }, align 32
@.str.394 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"AD3 Enable\00", [21 x i8] zeroinitializer }, align 32
@.str.395 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"MIC2 Mute\00", [22 x i8] zeroinitializer }, align 32
@.str.396 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"MIC2 V-AMICx Enable\00", [44 x i8] zeroinitializer }, align 32
@.str.397 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LineIn Left\00", [20 x i8] zeroinitializer }, align 32
@.str.398 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"LineIn Right\00", [19 x i8] zeroinitializer }, align 32
@.str.399 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"LINL Mute\00", [22 x i8] zeroinitializer }, align 32
@.str.400 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"LINR Mute\00", [22 x i8] zeroinitializer }, align 32
@.str.401 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LINL Enable\00", [20 x i8] zeroinitializer }, align 32
@.str.402 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LINR Enable\00", [20 x i8] zeroinitializer }, align 32
@.str.403 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"LINL to HSL Volume\00", [45 x i8] zeroinitializer }, align 32
@.str.404 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"LINR to HSR Volume\00", [45 x i8] zeroinitializer }, align 32
@.str.405 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Mic 2 or LINR Select\00", [43 x i8] zeroinitializer }, align 32
@dapm_mic2lr_select = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.405, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @dapm_enum_mic2lr_sel to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.406 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LINL ADC\00", [23 x i8] zeroinitializer }, align 32
@.str.407 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LINR ADC\00", [23 x i8] zeroinitializer }, align 32
@.str.408 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"AD1 Source Select\00", [46 x i8] zeroinitializer }, align 32
@dapm_ad1_select = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.408, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @dapm_enum_ad1_sel to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.409 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"AD2 Source Select\00", [46 x i8] zeroinitializer }, align 32
@dapm_ad2_select = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.409, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @dapm_enum_ad2_sel to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.410 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"AD1 Channel Volume\00", [45 x i8] zeroinitializer }, align 32
@.str.411 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"AD2 Channel Volume\00", [45 x i8] zeroinitializer }, align 32
@.str.412 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"AD12 Enable\00", [20 x i8] zeroinitializer }, align 32
@.str.413 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"AD5 Source Select\00", [46 x i8] zeroinitializer }, align 32
@dapm_ad5_select = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.413, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @dapm_enum_ad5_sel to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.414 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"AD6 Source Select\00", [46 x i8] zeroinitializer }, align 32
@dapm_ad6_select = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.414, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @dapm_enum_ad6_sel to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.415 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"AD5 Channel Volume\00", [45 x i8] zeroinitializer }, align 32
@.str.416 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"AD6 Channel Volume\00", [45 x i8] zeroinitializer }, align 32
@.str.417 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"AD57 Enable\00", [20 x i8] zeroinitializer }, align 32
@.str.418 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"AD68 Enable\00", [20 x i8] zeroinitializer }, align 32
@.str.419 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DMic 1\00", [25 x i8] zeroinitializer }, align 32
@.str.420 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DMic 2\00", [25 x i8] zeroinitializer }, align 32
@.str.421 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DMic 3\00", [25 x i8] zeroinitializer }, align 32
@.str.422 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DMic 4\00", [25 x i8] zeroinitializer }, align 32
@.str.423 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DMic 5\00", [25 x i8] zeroinitializer }, align 32
@.str.424 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DMic 6\00", [25 x i8] zeroinitializer }, align 32
@.str.425 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DMIC1\00", [26 x i8] zeroinitializer }, align 32
@.str.426 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DMIC2\00", [26 x i8] zeroinitializer }, align 32
@.str.427 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DMIC3\00", [26 x i8] zeroinitializer }, align 32
@.str.428 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DMIC4\00", [26 x i8] zeroinitializer }, align 32
@.str.429 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DMIC5\00", [26 x i8] zeroinitializer }, align 32
@.str.430 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DMIC6\00", [26 x i8] zeroinitializer }, align 32
@.str.431 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"AD4 Channel Volume\00", [45 x i8] zeroinitializer }, align 32
@.str.432 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"AD4 Enable\00", [21 x i8] zeroinitializer }, align 32
@.str.433 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ANC Configure Output\00", [43 x i8] zeroinitializer }, align 32
@.str.434 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ANC Source\00", [21 x i8] zeroinitializer }, align 32
@dapm_anc_in_select = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.434, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @dapm_enum_anc_in_sel to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.435 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ANC\00", [28 x i8] zeroinitializer }, align 32
@dapm_anc_enable = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.451, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.452 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.436 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ANC to Earpiece\00", [16 x i8] zeroinitializer }, align 32
@dapm_anc_ear_mute = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.451, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.453 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.437 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Sidetone Left Source\00", [43 x i8] zeroinitializer }, align 32
@dapm_stfir1_in_select = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.437, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @dapm_enum_stfir1_in_sel to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.438 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Sidetone Right Source\00", [42 x i8] zeroinitializer }, align 32
@dapm_stfir2_in_select = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.438, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @dapm_enum_stfir2_in_sel to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.439 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"STFIR1 Control\00", [17 x i8] zeroinitializer }, align 32
@.str.440 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"STFIR2 Control\00", [17 x i8] zeroinitializer }, align 32
@.str.441 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"STFIR1 Volume\00", [18 x i8] zeroinitializer }, align 32
@.str.442 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"STFIR2 Volume\00", [18 x i8] zeroinitializer }, align 32
@ab8500_dapm_widgets = internal constant { [138 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [6232 x i8] } { [138 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 22, ptr @.str.310, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @dapm_clock_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 21, ptr @.str.311, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @dapm_regulator_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 21, ptr @.str.312, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @dapm_regulator_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 21, ptr @.str.313, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @dapm_regulator_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 21, ptr @.str.314, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @dapm_regulator_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.315, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 0, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.316, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 0, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.317, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.318, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.319, ptr @.str.320, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.321, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.322, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.323, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.324, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.325, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.326, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.327, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.328, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.269, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.270, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.271, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.272, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.329, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.330, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.331, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 12, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.332, ptr @.str.333, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.334, ptr @.str.333, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.335, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.336, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.337, ptr @.str.333, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 9, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.338, ptr @.str.333, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 9, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.339, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 10, i8 1, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.340, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 10, i8 0, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.341, ptr @.str.333, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 7, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.342, ptr @.str.333, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 7, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.343, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 10, i8 5, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.344, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 10, i8 4, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.345, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.346, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.347, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.348, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.349, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.350, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.351, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @dapm_lineout_source, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.352, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8, i8 3, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.353, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8, i8 2, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.354, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 12, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.355, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 12, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.356, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.357, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.358, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @dapm_ear_lineout_source, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.359, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 9, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.360, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 10, i8 6, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.361, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.362, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.363, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.364, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.365, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @dapm_HFl_select, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.366, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @dapm_HFr_select, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.367, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 9, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.368, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 9, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.369, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 64, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.370, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 64, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.371, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.372, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.373, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.374, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.375, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.376, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.377, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.378, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.379, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 9, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.380, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 9, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.381, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @dapm_pwm2vib1, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.382, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @dapm_pwm2vib2, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.383, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.384, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.385, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.386, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.71, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.387, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @dapm_mic1ab_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.388, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 5, i8 3, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.389, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 5, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.390, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 5, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.391, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 7, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.392, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @dapm_ad3_select, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.393, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.394, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.79, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.395, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 5, i8 2, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.396, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 5, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.397, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.398, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.399, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 5, i8 1, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.400, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 5, i8 0, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.401, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 5, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.402, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 5, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.403, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.404, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.405, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @dapm_mic2lr_select, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.406, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 7, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.407, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 7, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.408, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @dapm_ad1_select, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.409, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @dapm_ad2_select, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.410, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.411, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.412, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.413, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @dapm_ad5_select, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.414, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @dapm_ad6_select, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.415, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.416, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.417, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.418, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.419, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.420, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.421, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.422, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.423, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.424, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.425, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 6, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.426, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 6, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.427, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 6, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.428, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 6, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.429, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 6, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.430, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 6, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.431, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.432, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.287, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.433, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.434, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @dapm_anc_in_select, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.435, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @dapm_anc_enable, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.436, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @dapm_anc_ear_mute, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.437, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @dapm_stfir1_in_select, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.438, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @dapm_stfir2_in_select, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.439, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.440, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.441, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.442, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [6232 x i8] zeroinitializer }, align 32
@dapm_enum_lineout_source = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 12, i8 5, i8 4, i32 2, i32 1, ptr @enum_lineout_source, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@enum_lineout_source = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.444, ptr @.str.445], [24 x i8] zeroinitializer }, align 32
@.str.444 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Mono Path\00", [22 x i8] zeroinitializer }, align 32
@.str.445 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Stereo Path\00", [20 x i8] zeroinitializer }, align 32
@dapm_enum_ear_lineout_source = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 62, i8 6, i8 6, i32 2, i32 1, ptr @enum_ear_lineout_source, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@enum_ear_lineout_source = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.349, ptr @.str.373], [24 x i8] zeroinitializer }, align 32
@dapm_enum_HFl_sel = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 64, i8 4, i8 4, i32 2, i32 1, ptr @enum_HFx_sel, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@enum_HFx_sel = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.227, ptr @.str.435], [24 x i8] zeroinitializer }, align 32
@dapm_enum_HFr_sel = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 64, i8 5, i8 5, i32 2, i32 1, ptr @enum_HFx_sel, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@dapm_enum_pwm2vib1 = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 15, i8 7, i8 7, i32 2, i32 1, ptr @enum_pwm2vibx, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@enum_pwm2vibx = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.227, ptr @.str.446], [24 x i8] zeroinitializer }, align 32
@.str.446 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"PWM Generator\00", [18 x i8] zeroinitializer }, align 32
@dapm_enum_pwm2vib2 = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 15, i8 6, i8 6, i32 2, i32 1, ptr @enum_pwm2vibx, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@dapm_enum_mic1ab_sel = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 7, i8 7, i8 7, i32 2, i32 1, ptr @enum_mic1ab_sel, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@enum_mic1ab_sel = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.447, ptr @.str.448], [24 x i8] zeroinitializer }, align 32
@.str.447 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Mic 1b\00", [25 x i8] zeroinitializer }, align 32
@.str.448 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Mic 1a\00", [25 x i8] zeroinitializer }, align 32
@dapm_enum_ad3_sel = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 63, i8 3, i8 3, i32 2, i32 1, ptr @enum_ad3_sel, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@enum_ad3_sel = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.71, ptr @.str.421], [24 x i8] zeroinitializer }, align 32
@dapm_enum_mic2lr_sel = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 7, i8 6, i8 6, i32 2, i32 1, ptr @enum_mic2lr_sel, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@enum_mic2lr_sel = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.79, ptr @.str.398], [24 x i8] zeroinitializer }, align 32
@dapm_enum_ad1_sel = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 63, i8 5, i8 5, i32 2, i32 1, ptr @enum_ad1_sel, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@enum_ad1_sel = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.397, ptr @.str.419], [24 x i8] zeroinitializer }, align 32
@dapm_enum_ad2_sel = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 63, i8 4, i8 4, i32 2, i32 1, ptr @enum_ad2_sel, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@enum_ad2_sel = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.398, ptr @.str.420], [24 x i8] zeroinitializer }, align 32
@dapm_enum_ad5_sel = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 63, i8 2, i8 2, i32 2, i32 1, ptr @enum_ad5_sel, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@enum_ad5_sel = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.79, ptr @.str.423], [24 x i8] zeroinitializer }, align 32
@dapm_enum_ad6_sel = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 63, i8 1, i8 1, i32 2, i32 1, ptr @enum_ad6_sel, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@enum_ad6_sel = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.71, ptr @.str.424], [24 x i8] zeroinitializer }, align 32
@dapm_enum_anc_in_sel = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 62, i8 7, i8 7, i32 2, i32 1, ptr @enum_anc_in_sel, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@enum_anc_in_sel = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.449, ptr @.str.450], [24 x i8] zeroinitializer }, align 32
@.str.449 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Mic 1 / DMic 6\00", [17 x i8] zeroinitializer }, align 32
@.str.450 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Mic 2 / DMic 5\00", [17 x i8] zeroinitializer }, align 32
@.str.451 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Switch\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.452 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 0, i32 0, i32 83, i32 83, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.453 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 63, i32 63, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@dapm_enum_stfir1_in_sel = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 64, i8 2, i8 2, i32 4, i32 3, ptr @enum_stfir1_in_sel, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@enum_stfir1_in_sel = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.397, ptr @.str.398, ptr @.str.71, ptr @.str.349], [16 x i8] zeroinitializer }, align 32
@dapm_enum_stfir2_in_sel = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 64, i8 0, i8 0, i32 4, i32 3, ptr @enum_stfir2_in_sel, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@enum_stfir2_in_sel = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.398, ptr @.str.71, ptr @.str.422, ptr @.str.350], [16 x i8] zeroinitializer }, align 32
@ab8500_codec_probe.__UNIQUE_ID_ddebug327 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.454, ptr @.str.3, ptr @.str.4, i8 2, i8 103, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.454 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ab8500_codec_probe\00", [45 x i8] zeroinitializer }, align 32
@ab8500_codec_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.455, ptr @.str.454, ptr @.str.3, i32 2468, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.455 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s: Failed to setup mics (%d)!\0A\00", [62 x i8] zeroinitializer }, align 32
@ab8500_codec_probe._entry_ptr = internal global ptr @ab8500_codec_probe._entry, section ".printk_index", align 4
@ab8500_codec_probe._entry.456 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.457, ptr @.str.454, ptr @.str.3, i32 2474, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.457 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s: Failed to set earpiece CM-voltage (%d)!\0A\00", [49 x i8] zeroinitializer }, align 32
@ab8500_codec_probe._entry_ptr.458 = internal global ptr @ab8500_codec_probe._entry.456, section ".printk_index", align 4
@ab8500_codec_probe._entry.459 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.460, ptr @.str.454, ptr @.str.3, i32 2481, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.460 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: failed to init audio-block (%d)!\0A\00", [58 x i8] zeroinitializer }, align 32
@ab8500_codec_probe._entry_ptr.461 = internal global ptr @ab8500_codec_probe._entry.459, section ".printk_index", align 4
@ab8500_filter_controls = internal global { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.498, i32 0, i32 0, i32 0, ptr @filter_control_info, ptr @filter_control_get, ptr @filter_control_put, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.499 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.500, i32 0, i32 0, i32 0, ptr @filter_control_info, ptr @filter_control_get, ptr @filter_control_put, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.501 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.502, i32 0, i32 0, i32 0, ptr @filter_control_info, ptr @filter_control_get, ptr @filter_control_put, %union.anon.97 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.503 to i32) }], [48 x i8] zeroinitializer }, align 32
@ab8500_codec_probe._entry.462 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.463, ptr @.str.454, ptr @.str.3, i32 2497, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.463 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: failed to add ab8500 filter controls (%d).\0A\00", [48 x i8] zeroinitializer }, align 32
@ab8500_codec_probe._entry_ptr.464 = internal global ptr @ab8500_codec_probe._entry.462, section ".printk_index", align 4
@ab8500_codec_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.465 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&drvdata->ctrl_lock\00", [44 x i8] zeroinitializer }, align 32
@.str.466 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"stericsson,amic1-type-single-ended\00", [61 x i8] zeroinitializer }, align 32
@.str.467 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"stericsson,amic2-type-single-ended\00", [61 x i8] zeroinitializer }, align 32
@.str.468 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"stericsson,amic1a-bias-vamic2\00", [34 x i8] zeroinitializer }, align 32
@.str.469 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"stericsson,amic1b-bias-vamic2\00", [34 x i8] zeroinitializer }, align 32
@.str.470 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"stericsson,amic2-bias-vamic1\00", [35 x i8] zeroinitializer }, align 32
@.str.471 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"stericsson,earpeice-cmv\00", [40 x i8] zeroinitializer }, align 32
@ab8500_codec_of_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.472, ptr @.str.473, ptr @.str.3, i32 2444, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.472 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Unsuitable earpiece voltage found in DT\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.473 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ab8500_codec_of_probe\00", [42 x i8] zeroinitializer }, align 32
@ab8500_codec_of_probe._entry_ptr = internal global ptr @ab8500_codec_of_probe._entry, section ".printk_index", align 4
@ab8500_codec_of_probe._entry.474 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.475, ptr @.str.473, ptr @.str.3, i32 2447, ptr @.str.476, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.475 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"No earpiece voltage found in DT - using default\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.476 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ab8500_codec_of_probe._entry_ptr.477 = internal global ptr @ab8500_codec_of_probe._entry.474, section ".printk_index", align 4
@ab8500_audio_setup_mics.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.478, ptr @.str.3, ptr @.str.4, i8 1, i8 -26, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.478 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ab8500_audio_setup_mics\00", [40 x i8] zeroinitializer }, align 32
@ab8500_audio_setup_mics.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.478, ptr @.str.3, ptr @.str.479, i8 1, i8 -21, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.479 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: Mic 1a regulator: %s\0A\00", [38 x i8] zeroinitializer }, align 32
@ab8500_dapm_routes_mic1a_vamicx = internal constant { [2 x %struct.snd_soc_dapm_route], [56 x i8] } { [2 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.389, ptr null, ptr @.str.312, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.389, ptr null, ptr @.str.313, ptr null, %struct.snd_soc_dobj zeroinitializer }], [56 x i8] zeroinitializer }, align 32
@ab8500_audio_setup_mics.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.478, ptr @.str.3, ptr @.str.480, i8 1, i8 -20, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.480 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: Mic 1b regulator: %s\0A\00", [38 x i8] zeroinitializer }, align 32
@ab8500_dapm_routes_mic1b_vamicx = internal constant { [2 x %struct.snd_soc_dapm_route], [56 x i8] } { [2 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.390, ptr null, ptr @.str.312, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.390, ptr null, ptr @.str.313, ptr null, %struct.snd_soc_dobj zeroinitializer }], [56 x i8] zeroinitializer }, align 32
@ab8500_audio_setup_mics.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.478, ptr @.str.3, ptr @.str.481, i8 1, i8 -19, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.481 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: Mic 2 regulator: %s\0A\00", [39 x i8] zeroinitializer }, align 32
@ab8500_dapm_routes_mic2_vamicx = internal constant { [2 x %struct.snd_soc_dapm_route], [56 x i8] } { [2 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.396, ptr null, ptr @.str.312, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.396, ptr null, ptr @.str.313, ptr null, %struct.snd_soc_dobj zeroinitializer }], [56 x i8] zeroinitializer }, align 32
@ab8500_audio_setup_mics._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.482, ptr @.str.478, ptr @.str.3, i32 1978, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.482 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"%s: Failed to add AMic-regulator DAPM-routes (%d).\0A\00", [44 x i8] zeroinitializer }, align 32
@ab8500_audio_setup_mics._entry_ptr = internal global ptr @ab8500_audio_setup_mics._entry, section ".printk_index", align 4
@ab8500_audio_setup_mics.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.478, ptr @.str.3, ptr @.str.483, i8 1, i8 -16, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.483 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: Mic 1 mic-type: %s\0A\00", [40 x i8] zeroinitializer }, align 32
@ab8500_audio_setup_mics.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.478, ptr @.str.3, ptr @.str.484, i8 1, i8 -15, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.484 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: Mic 2 mic-type: %s\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.485 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VAMIC1\00", [25 x i8] zeroinitializer }, align 32
@.str.486 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VAMIC2\00", [25 x i8] zeroinitializer }, align 32
@.str.487 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.488 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DIFFERENTIAL\00", [19 x i8] zeroinitializer }, align 32
@.str.489 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SINGLE ENDED\00", [19 x i8] zeroinitializer }, align 32
@.str.490 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0.95V\00", [26 x i8] zeroinitializer }, align 32
@.str.491 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1.10V\00", [26 x i8] zeroinitializer }, align 32
@.str.492 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1.27V\00", [26 x i8] zeroinitializer }, align 32
@.str.493 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1.58V\00", [26 x i8] zeroinitializer }, align 32
@ab8500_audio_set_ear_cmv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.494, ptr @.str.495, ptr @.str.3, i32 2018, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.494 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: Unknown earpiece CM-voltage (%d)!\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.495 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ab8500_audio_set_ear_cmv\00", [39 x i8] zeroinitializer }, align 32
@ab8500_audio_set_ear_cmv._entry_ptr = internal global ptr @ab8500_audio_set_ear_cmv._entry, section ".printk_index", align 4
@ab8500_audio_set_ear_cmv.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.495, ptr @.str.3, ptr @.str.496, i8 1, i8 -7, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.496 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: Earpiece CM-voltage: %s\0A\00", [35 x i8] zeroinitializer }, align 32
@ab8500_audio_init_audioblock.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.497, ptr @.str.3, ptr @.str.4, i8 1, i8 -32, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.497 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ab8500_audio_init_audioblock\00", [35 x i8] zeroinitializer }, align 32
@.str.498 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ANC FIR Coefficients\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.499 = internal global { %struct.filter_control, [148 x i8] } { %struct.filter_control { i32 -32768, i32 32767, i32 15, [128 x i32] zeroinitializer }, [148 x i8] zeroinitializer }, align 32
@.str.500 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ANC IIR Coefficients\00", [43 x i8] zeroinitializer }, align 32
@.compoundliteral.501 = internal global { %struct.filter_control, [148 x i8] } { %struct.filter_control { i32 -8388608, i32 8388607, i32 24, [128 x i32] zeroinitializer }, [148 x i8] zeroinitializer }, align 32
@.str.502 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Sidetone FIR Coefficients\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.503 = internal global { %struct.filter_control, [148 x i8] } { %struct.filter_control { i32 0, i32 65535, i32 128, [128 x i32] zeroinitializer }, [148 x i8] zeroinitializer }, align 32
@.str.504 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ab8500-codec-dai.0\00", [45 x i8] zeroinitializer }, align 32
@ab8500_codec_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr @ab8500_codec_set_dai_fmt, ptr null, ptr @ab8500_codec_set_dai_tdm_slot, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.505 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ab8500-codec-dai.1\00", [45 x i8] zeroinitializer }, align 32
@ab8500_codec_set_dai_fmt.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.506, ptr @.str.3, ptr @.str.507, i8 2, i8 12, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.506 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ab8500_codec_set_dai_fmt\00", [39 x i8] zeroinitializer }, align 32
@.str.507 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: Enter (fmt = 0x%x)\0A\00", [40 x i8] zeroinitializer }, align 32
@ab8500_codec_set_dai_fmt.__UNIQUE_ID_ddebug312 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.506, ptr @.str.3, ptr @.str.508, i8 2, i8 15, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.508 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: IF0 Master-mode: AB8500 provider.\0A\00", [57 x i8] zeroinitializer }, align 32
@ab8500_codec_set_dai_fmt.__UNIQUE_ID_ddebug313 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.506, ptr @.str.3, ptr @.str.509, i8 2, i8 16, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.509 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: IF0 Master-mode: AB8500 consumer.\0A\00", [57 x i8] zeroinitializer }, align 32
@ab8500_codec_set_dai_fmt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.510, ptr @.str.506, ptr @.str.3, i32 2121, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.510 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%s: ERROR: The device is either a provider or a consumer.\0A\00", [37 x i8] zeroinitializer }, align 32
@ab8500_codec_set_dai_fmt._entry_ptr = internal global ptr @ab8500_codec_set_dai_fmt._entry, section ".printk_index", align 4
@ab8500_codec_set_dai_fmt._entry.511 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.512, ptr @.str.506, ptr @.str.3, i32 2126, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.512 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: ERROR: Unsupporter clocking mask 0x%x\0A\00", [53 x i8] zeroinitializer }, align 32
@ab8500_codec_set_dai_fmt._entry_ptr.513 = internal global ptr @ab8500_codec_set_dai_fmt._entry.511, section ".printk_index", align 4
@ab8500_codec_set_dai_fmt._entry.514 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.515, ptr @.str.506, ptr @.str.3, i32 2137, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.515 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: ERROR: Failed to set clock gate (%d).\0A\00", [53 x i8] zeroinitializer }, align 32
@ab8500_codec_set_dai_fmt._entry_ptr.516 = internal global ptr @ab8500_codec_set_dai_fmt._entry.514, section ".printk_index", align 4
@ab8500_codec_set_dai_fmt.__UNIQUE_ID_ddebug314 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.506, ptr @.str.3, ptr @.str.517, i8 2, i8 25, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.517 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: IF0 Protocol: I2S\0A\00", [41 x i8] zeroinitializer }, align 32
@ab8500_codec_set_dai_fmt.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.506, ptr @.str.3, ptr @.str.518, i8 2, i8 27, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.518 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: IF0 Protocol: DSP A (TDM)\0A\00", [33 x i8] zeroinitializer }, align 32
@ab8500_codec_set_dai_fmt.__UNIQUE_ID_ddebug316 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.506, ptr @.str.3, ptr @.str.519, i8 2, i8 29, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.519 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: IF0 Protocol: DSP B (TDM)\0A\00", [33 x i8] zeroinitializer }, align 32
@ab8500_codec_set_dai_fmt._entry.520 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.521, ptr @.str.506, ptr @.str.3, i32 2173, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.521 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: ERROR: Unsupported format (0x%x)!\0A\00", [57 x i8] zeroinitializer }, align 32
@ab8500_codec_set_dai_fmt._entry_ptr.522 = internal global ptr @ab8500_codec_set_dai_fmt._entry.520, section ".printk_index", align 4
@ab8500_codec_set_dai_fmt.__UNIQUE_ID_ddebug317 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.506, ptr @.str.3, ptr @.str.523, i8 2, i8 33, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.523 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: IF0: Normal bit clock, normal frame\0A\00", [55 x i8] zeroinitializer }, align 32
@ab8500_codec_set_dai_fmt.__UNIQUE_ID_ddebug318 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.506, ptr @.str.3, ptr @.str.524, i8 2, i8 34, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.524 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: IF0: Normal bit clock, inverted frame\0A\00", [53 x i8] zeroinitializer }, align 32
@ab8500_codec_set_dai_fmt.__UNIQUE_ID_ddebug319 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.506, ptr @.str.3, ptr @.str.525, i8 2, i8 36, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.525 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: IF0: Inverted bit clock, normal frame\0A\00", [53 x i8] zeroinitializer }, align 32
@ab8500_codec_set_dai_fmt.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.506, ptr @.str.3, ptr @.str.526, i8 2, i8 37, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.526 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: IF0: Inverted bit clock, inverted frame\0A\00", [51 x i8] zeroinitializer }, align 32
@ab8500_codec_set_dai_fmt._entry.527 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.528, ptr @.str.506, ptr @.str.3, i32 2205, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.528 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: ERROR: Unsupported INV mask 0x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@ab8500_codec_set_dai_fmt._entry_ptr.529 = internal global ptr @ab8500_codec_set_dai_fmt._entry.527, section ".printk_index", align 4
@ab8500_codec_set_dai_clock_gate.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.530, ptr @.str.3, ptr @.str.531, i8 2, i8 6, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.530 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ab8500_codec_set_dai_clock_gate\00", [32 x i8] zeroinitializer }, align 32
@.str.531 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: IF0 Clock is continuous.\0A\00", [34 x i8] zeroinitializer }, align 32
@ab8500_codec_set_dai_clock_gate.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.530, ptr @.str.3, ptr @.str.532, i8 2, i8 7, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.532 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: IF0 Clock is gated.\0A\00", [39 x i8] zeroinitializer }, align 32
@ab8500_codec_set_dai_clock_gate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.533, ptr @.str.530, ptr @.str.3, i32 2083, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.533 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: ERROR: Unsupported clock mask (0x%x)!\0A\00", [53 x i8] zeroinitializer }, align 32
@ab8500_codec_set_dai_clock_gate._entry_ptr = internal global ptr @ab8500_codec_set_dai_clock_gate._entry, section ".printk_index", align 4
@ab8500_audio_set_bit_delay._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.534, ptr @.str.535, ptr @.str.3, i32 2047, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.534 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: ERROR: Unsupported bit-delay (0x%x)!\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.535 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ab8500_audio_set_bit_delay\00", [37 x i8] zeroinitializer }, align 32
@ab8500_audio_set_bit_delay._entry_ptr = internal global ptr @ab8500_audio_set_bit_delay._entry, section ".printk_index", align 4
@ab8500_audio_set_bit_delay.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.535, ptr @.str.3, ptr @.str.536, i8 2, i8 1, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.536 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: IF0 Bit-delay: %d bits.\0A\00", [35 x i8] zeroinitializer }, align 32
@ab8500_codec_set_dai_tdm_slot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.537, ptr @.str.538, ptr @.str.3, i32 2240, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.537 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: Unsupported slot-width 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.538 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ab8500_codec_set_dai_tdm_slot\00", [34 x i8] zeroinitializer }, align 32
@ab8500_codec_set_dai_tdm_slot._entry_ptr = internal global ptr @ab8500_codec_set_dai_tdm_slot._entry, section ".printk_index", align 4
@ab8500_codec_set_dai_tdm_slot.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.538, ptr @.str.3, ptr @.str.539, i8 2, i8 49, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.539 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: IF0 slot-width: %d bits.\0A\00", [34 x i8] zeroinitializer }, align 32
@ab8500_codec_set_dai_tdm_slot.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.538, ptr @.str.3, ptr @.str.540, i8 2, i8 50, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.540 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: Slots, total: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@ab8500_codec_set_dai_tdm_slot._entry.541 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.542, ptr @.str.538, ptr @.str.3, i32 2269, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.542 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: ERROR: Unsupported number of slots (%d)!\0A\00", [50 x i8] zeroinitializer }, align 32
@ab8500_codec_set_dai_tdm_slot._entry_ptr.543 = internal global ptr @ab8500_codec_set_dai_tdm_slot._entry.541, section ".printk_index", align 4
@ab8500_codec_set_dai_tdm_slot.__UNIQUE_ID_ddebug323 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.538, ptr @.str.3, ptr @.str.544, i8 2, i8 59, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.544 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: Slots, active, TX: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@ab8500_codec_set_dai_tdm_slot.__UNIQUE_ID_ddebug324 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.538, ptr @.str.3, ptr @.str.545, i8 2, i8 64, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.545 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"%s: In 8-channel mode DA-from-slot mapping is set manually.\00", [36 x i8] zeroinitializer }, align 32
@ab8500_codec_set_dai_tdm_slot._entry.546 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.547, ptr @.str.538, ptr @.str.3, i32 2312, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.547 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: Unsupported number of active TX-slots (%d)!\0A\00", [47 x i8] zeroinitializer }, align 32
@ab8500_codec_set_dai_tdm_slot._entry_ptr.548 = internal global ptr @ab8500_codec_set_dai_tdm_slot._entry.546, section ".printk_index", align 4
@ab8500_codec_set_dai_tdm_slot.__UNIQUE_ID_ddebug325 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.538, ptr @.str.3, ptr @.str.549, i8 2, i8 69, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.549 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: Slots, active, RX: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@ab8500_codec_set_dai_tdm_slot.__UNIQUE_ID_ddebug326 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.538, ptr @.str.3, ptr @.str.550, i8 2, i8 75, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.550 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%s: In 8-channel mode AD-to-slot mapping is set manually.\00", [38 x i8] zeroinitializer }, align 32
@ab8500_codec_set_dai_tdm_slot._entry.551 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.552, ptr @.str.538, ptr @.str.3, i32 2356, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.552 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: Unsupported number of active RX-slots (%d)!\0A\00", [47 x i8] zeroinitializer }, align 32
@ab8500_codec_set_dai_tdm_slot._entry_ptr.553 = internal global ptr @ab8500_codec_set_dai_tdm_slot._entry.551, section ".printk_index", align 4
@switch.table.ab8500_codec_probe = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.490, ptr @.str.491, ptr @.str.492, ptr @.str.493], [16 x i8] zeroinitializer }, align 32
@switch.table.ab8500_codec_set_dai_tdm_slot = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 1, i32 2, i32 0, i32 3], [44 x i8] zeroinitializer }, align 32
@switch.table.ab8500_codec_set_dai_tdm_slot.554 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 2, i32 0, i32 4, i32 0, i32 0, i32 0, i32 6], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 950, i64 1100, i64 1270, i64 1580]
@__sancov_gen_cov_switch_values.555 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 3, i64 5]
@__sancov_gen_cov_switch_values.556 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 6]
@__sancov_gen_cov_switch_values.557 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 5]
@__sancov_gen_cov_switch_values.558 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.559 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.560 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 4, i64 5]
@__sancov_gen_cov_switch_values.561 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.562 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 8]
@__sancov_gen_cov_switch_values.563 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 8]
@__sancov_gen_cov_switch_values.564 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 16]
@___asan_gen_.565 = private unnamed_addr constant [29 x i8] c"ab8500_codec_platform_driver\00", align 1
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 2569, i32 31 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 2571, i32 11 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 2536, i32 2 }
@___asan_gen_.583 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.586 = private unnamed_addr constant [20 x i8] c"ab8500_codec_regmap\00", align 1
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 184, i32 35 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 2547, i32 20 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 2551, i32 3 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 2556, i32 2 }
@___asan_gen_.607 = private unnamed_addr constant [24 x i8] c"ab8500_component_driver\00", align 1
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 2517, i32 46 }
@___asan_gen_.610 = private unnamed_addr constant [17 x i8] c"ab8500_codec_dai\00", align 1
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 2368, i32 34 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 2562, i32 3 }
@___asan_gen_.619 = private unnamed_addr constant [13 x i8] c"ab8500_ctrls\00", align 1
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1604, i32 32 }
@___asan_gen_.622 = private unnamed_addr constant [19 x i8] c"ab8500_dapm_routes\00", align 1
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 745, i32 40 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1606, i32 2 }
@___asan_gen_.628 = private unnamed_addr constant [21 x i8] c"soc_enum_envdeththre\00", align 1
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1350, i32 8 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1608, i32 2 }
@___asan_gen_.634 = private unnamed_addr constant [21 x i8] c"soc_enum_envdetlthre\00", align 1
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1352, i32 8 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1610, i32 2 }
@___asan_gen_.640 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1613, i32 2 }
@___asan_gen_.644 = private unnamed_addr constant [20 x i8] c"soc_enum_envdettime\00", align 1
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1359, i32 8 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1617, i32 2 }
@___asan_gen_.650 = private unnamed_addr constant [19 x i8] c"soc_enum_da12voice\00", align 1
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1386, i32 8 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1618, i32 2 }
@___asan_gen_.656 = private unnamed_addr constant [20 x i8] c".compoundliteral.19\00", align 1
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1621, i32 2 }
@___asan_gen_.660 = private unnamed_addr constant [20 x i8] c".compoundliteral.21\00", align 1
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1624, i32 2 }
@___asan_gen_.664 = private unnamed_addr constant [20 x i8] c".compoundliteral.23\00", align 1
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1627, i32 2 }
@___asan_gen_.668 = private unnamed_addr constant [20 x i8] c".compoundliteral.25\00", align 1
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1630, i32 2 }
@___asan_gen_.672 = private unnamed_addr constant [20 x i8] c"soc_enum_hsfadspeed\00", align 1
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1342, i32 8 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1631, i32 2 }
@___asan_gen_.678 = private unnamed_addr constant [17 x i8] c"soc_enum_da2hslr\00", align 1
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1397, i32 8 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1632, i32 2 }
@___asan_gen_.684 = private unnamed_addr constant [17 x i8] c"soc_enum_hsesinc\00", align 1
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1363, i32 8 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1633, i32 2 }
@___asan_gen_.690 = private unnamed_addr constant [17 x i8] c"dax_dig_gain_tlv\00", align 1
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1322, i32 8 }
@___asan_gen_.693 = private unnamed_addr constant [20 x i8] c".compoundliteral.30\00", align 1
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1636, i32 2 }
@___asan_gen_.697 = private unnamed_addr constant [20 x i8] c"hs_ear_dig_gain_tlv\00", align 1
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1325, i32 8 }
@___asan_gen_.700 = private unnamed_addr constant [20 x i8] c".compoundliteral.32\00", align 1
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1639, i32 2 }
@___asan_gen_.704 = private unnamed_addr constant [12 x i8] c"hs_gain_tlv\00", align 1
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1328, i32 14 }
@___asan_gen_.707 = private unnamed_addr constant [20 x i8] c".compoundliteral.34\00", align 1
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1645, i32 2 }
@___asan_gen_.711 = private unnamed_addr constant [22 x i8] c"soc_enum_eardaclowpow\00", align 1
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1373, i32 8 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1647, i32 2 }
@___asan_gen_.717 = private unnamed_addr constant [22 x i8] c"soc_enum_eardrvlowpow\00", align 1
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1375, i32 8 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1651, i32 2 }
@___asan_gen_.723 = private unnamed_addr constant [19 x i8] c"soc_enum_da34voice\00", align 1
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1389, i32 8 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1652, i32 2 }
@___asan_gen_.729 = private unnamed_addr constant [20 x i8] c".compoundliteral.39\00", align 1
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1655, i32 2 }
@___asan_gen_.733 = private unnamed_addr constant [20 x i8] c".compoundliteral.41\00", align 1
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1659, i32 2 }
@___asan_gen_.737 = private unnamed_addr constant [20 x i8] c".compoundliteral.43\00", align 1
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1663, i32 2 }
@___asan_gen_.741 = private unnamed_addr constant [20 x i8] c".compoundliteral.45\00", align 1
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1667, i32 2 }
@___asan_gen_.745 = private unnamed_addr constant [20 x i8] c".compoundliteral.47\00", align 1
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1670, i32 2 }
@___asan_gen_.749 = private unnamed_addr constant [20 x i8] c".compoundliteral.49\00", align 1
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1675, i32 2 }
@___asan_gen_.753 = private unnamed_addr constant [20 x i8] c".compoundliteral.51\00", align 1
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1679, i32 2 }
@___asan_gen_.757 = private unnamed_addr constant [20 x i8] c".compoundliteral.53\00", align 1
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1683, i32 2 }
@___asan_gen_.761 = private unnamed_addr constant [20 x i8] c".compoundliteral.55\00", align 1
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1687, i32 2 }
@___asan_gen_.765 = private unnamed_addr constant [19 x i8] c"soc_enum_da56voice\00", align 1
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1392, i32 8 }
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1688, i32 2 }
@___asan_gen_.771 = private unnamed_addr constant [20 x i8] c".compoundliteral.58\00", align 1
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1692, i32 2 }
@___asan_gen_.775 = private unnamed_addr constant [20 x i8] c".compoundliteral.60\00", align 1
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1696, i32 2 }
@___asan_gen_.779 = private unnamed_addr constant [20 x i8] c".compoundliteral.62\00", align 1
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1699, i32 2 }
@___asan_gen_.783 = private unnamed_addr constant [20 x i8] c".compoundliteral.64\00", align 1
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1704, i32 2 }
@___asan_gen_.787 = private unnamed_addr constant [20 x i8] c".compoundliteral.66\00", align 1
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1707, i32 2 }
@___asan_gen_.791 = private unnamed_addr constant [20 x i8] c".compoundliteral.68\00", align 1
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1712, i32 2 }
@___asan_gen_.795 = private unnamed_addr constant [17 x i8] c"adx_dig_gain_tlv\00", align 1
@___asan_gen_.797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1319, i32 8 }
@___asan_gen_.798 = private unnamed_addr constant [20 x i8] c".compoundliteral.70\00", align 1
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1717, i32 2 }
@___asan_gen_.802 = private unnamed_addr constant [13 x i8] c"mic_gain_tlv\00", align 1
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1333, i32 8 }
@___asan_gen_.805 = private unnamed_addr constant [20 x i8] c".compoundliteral.72\00", align 1
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1721, i32 2 }
@___asan_gen_.809 = private unnamed_addr constant [20 x i8] c".compoundliteral.74\00", align 1
@___asan_gen_.812 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1726, i32 2 }
@___asan_gen_.813 = private unnamed_addr constant [20 x i8] c".compoundliteral.76\00", align 1
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1730, i32 2 }
@___asan_gen_.817 = private unnamed_addr constant [19 x i8] c"soc_enum_ad34voice\00", align 1
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1381, i32 8 }
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1731, i32 2 }
@___asan_gen_.823 = private unnamed_addr constant [20 x i8] c"soc_enum_dmic34sinc\00", align 1
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1405, i32 8 }
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1732, i32 2 }
@___asan_gen_.829 = private unnamed_addr constant [20 x i8] c".compoundliteral.80\00", align 1
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1736, i32 2 }
@___asan_gen_.833 = private unnamed_addr constant [20 x i8] c".compoundliteral.82\00", align 1
@___asan_gen_.836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1741, i32 2 }
@___asan_gen_.837 = private unnamed_addr constant [20 x i8] c".compoundliteral.84\00", align 1
@___asan_gen_.840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1745, i32 2 }
@___asan_gen_.841 = private unnamed_addr constant [20 x i8] c"soc_enum_dmic12sinc\00", align 1
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1402, i32 8 }
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1746, i32 2 }
@___asan_gen_.847 = private unnamed_addr constant [19 x i8] c"soc_enum_ad12voice\00", align 1
@___asan_gen_.849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1379, i32 8 }
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1747, i32 2 }
@___asan_gen_.853 = private unnamed_addr constant [20 x i8] c".compoundliteral.88\00", align 1
@___asan_gen_.856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1750, i32 2 }
@___asan_gen_.857 = private unnamed_addr constant [13 x i8] c"lin_gain_tlv\00", align 1
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1335, i32 8 }
@___asan_gen_.860 = private unnamed_addr constant [20 x i8] c".compoundliteral.90\00", align 1
@___asan_gen_.863 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1754, i32 2 }
@___asan_gen_.864 = private unnamed_addr constant [16 x i8] c"lin2hs_gain_tlv\00", align 1
@___asan_gen_.866 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1337, i32 8 }
@___asan_gen_.867 = private unnamed_addr constant [20 x i8] c".compoundliteral.92\00", align 1
@___asan_gen_.870 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1761, i32 2 }
@___asan_gen_.871 = private unnamed_addr constant [20 x i8] c"soc_enum_dmic56sinc\00", align 1
@___asan_gen_.873 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1408, i32 8 }
@___asan_gen_.876 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1762, i32 2 }
@___asan_gen_.877 = private unnamed_addr constant [20 x i8] c".compoundliteral.95\00", align 1
@___asan_gen_.880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1767, i32 2 }
@___asan_gen_.881 = private unnamed_addr constant [19 x i8] c"soc_enum_fadespeed\00", align 1
@___asan_gen_.883 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1367, i32 8 }
@___asan_gen_.886 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1770, i32 2 }
@___asan_gen_.887 = private unnamed_addr constant [20 x i8] c".compoundliteral.98\00", align 1
@___asan_gen_.890 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1775, i32 2 }
@___asan_gen_.891 = private unnamed_addr constant [20 x i8] c"soc_enum_da1slotmap\00", align 1
@___asan_gen_.893 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1445, i32 8 }
@___asan_gen_.896 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1776, i32 2 }
@___asan_gen_.897 = private unnamed_addr constant [20 x i8] c"soc_enum_da2slotmap\00", align 1
@___asan_gen_.899 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1448, i32 8 }
@___asan_gen_.902 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1777, i32 2 }
@___asan_gen_.903 = private unnamed_addr constant [20 x i8] c"soc_enum_da3slotmap\00", align 1
@___asan_gen_.905 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1451, i32 8 }
@___asan_gen_.908 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1778, i32 2 }
@___asan_gen_.909 = private unnamed_addr constant [20 x i8] c"soc_enum_da4slotmap\00", align 1
@___asan_gen_.911 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1454, i32 8 }
@___asan_gen_.914 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1779, i32 2 }
@___asan_gen_.915 = private unnamed_addr constant [20 x i8] c"soc_enum_da5slotmap\00", align 1
@___asan_gen_.917 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1457, i32 8 }
@___asan_gen_.920 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1780, i32 2 }
@___asan_gen_.921 = private unnamed_addr constant [20 x i8] c"soc_enum_da6slotmap\00", align 1
@___asan_gen_.923 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1460, i32 8 }
@___asan_gen_.926 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1781, i32 2 }
@___asan_gen_.927 = private unnamed_addr constant [20 x i8] c"soc_enum_da7slotmap\00", align 1
@___asan_gen_.929 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1463, i32 8 }
@___asan_gen_.932 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1782, i32 2 }
@___asan_gen_.933 = private unnamed_addr constant [20 x i8] c"soc_enum_da8slotmap\00", align 1
@___asan_gen_.935 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1466, i32 8 }
@___asan_gen_.938 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1785, i32 2 }
@___asan_gen_.939 = private unnamed_addr constant [20 x i8] c"soc_enum_adslot0map\00", align 1
@___asan_gen_.941 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1487, i32 8 }
@___asan_gen_.944 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1786, i32 2 }
@___asan_gen_.945 = private unnamed_addr constant [20 x i8] c"soc_enum_adslot1map\00", align 1
@___asan_gen_.947 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1490, i32 8 }
@___asan_gen_.950 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1787, i32 2 }
@___asan_gen_.951 = private unnamed_addr constant [20 x i8] c"soc_enum_adslot2map\00", align 1
@___asan_gen_.953 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1493, i32 8 }
@___asan_gen_.956 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1788, i32 2 }
@___asan_gen_.957 = private unnamed_addr constant [20 x i8] c"soc_enum_adslot3map\00", align 1
@___asan_gen_.959 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1496, i32 8 }
@___asan_gen_.962 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1789, i32 2 }
@___asan_gen_.963 = private unnamed_addr constant [20 x i8] c"soc_enum_adslot4map\00", align 1
@___asan_gen_.965 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1499, i32 8 }
@___asan_gen_.968 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1790, i32 2 }
@___asan_gen_.969 = private unnamed_addr constant [20 x i8] c"soc_enum_adslot5map\00", align 1
@___asan_gen_.971 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1502, i32 8 }
@___asan_gen_.974 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1791, i32 2 }
@___asan_gen_.975 = private unnamed_addr constant [20 x i8] c"soc_enum_adslot6map\00", align 1
@___asan_gen_.977 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1505, i32 8 }
@___asan_gen_.980 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1792, i32 2 }
@___asan_gen_.981 = private unnamed_addr constant [20 x i8] c"soc_enum_adslot7map\00", align 1
@___asan_gen_.983 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1508, i32 8 }
@___asan_gen_.986 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1793, i32 2 }
@___asan_gen_.987 = private unnamed_addr constant [20 x i8] c"soc_enum_adslot8map\00", align 1
@___asan_gen_.989 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1511, i32 8 }
@___asan_gen_.992 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1794, i32 2 }
@___asan_gen_.993 = private unnamed_addr constant [20 x i8] c"soc_enum_adslot9map\00", align 1
@___asan_gen_.995 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1514, i32 8 }
@___asan_gen_.998 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1795, i32 2 }
@___asan_gen_.999 = private unnamed_addr constant [21 x i8] c"soc_enum_adslot10map\00", align 1
@___asan_gen_.1001 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1517, i32 8 }
@___asan_gen_.1004 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1796, i32 2 }
@___asan_gen_.1005 = private unnamed_addr constant [21 x i8] c"soc_enum_adslot11map\00", align 1
@___asan_gen_.1007 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1520, i32 8 }
@___asan_gen_.1010 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1797, i32 2 }
@___asan_gen_.1011 = private unnamed_addr constant [21 x i8] c"soc_enum_adslot12map\00", align 1
@___asan_gen_.1013 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1523, i32 8 }
@___asan_gen_.1016 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1798, i32 2 }
@___asan_gen_.1017 = private unnamed_addr constant [21 x i8] c"soc_enum_adslot13map\00", align 1
@___asan_gen_.1019 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1526, i32 8 }
@___asan_gen_.1022 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1799, i32 2 }
@___asan_gen_.1023 = private unnamed_addr constant [21 x i8] c"soc_enum_adslot14map\00", align 1
@___asan_gen_.1025 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1529, i32 8 }
@___asan_gen_.1028 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1800, i32 2 }
@___asan_gen_.1029 = private unnamed_addr constant [21 x i8] c"soc_enum_adslot15map\00", align 1
@___asan_gen_.1031 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1532, i32 8 }
@___asan_gen_.1034 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1801, i32 2 }
@___asan_gen_.1035 = private unnamed_addr constant [21 x i8] c"soc_enum_adslot16map\00", align 1
@___asan_gen_.1037 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1535, i32 8 }
@___asan_gen_.1040 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1802, i32 2 }
@___asan_gen_.1041 = private unnamed_addr constant [21 x i8] c"soc_enum_adslot17map\00", align 1
@___asan_gen_.1043 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1538, i32 8 }
@___asan_gen_.1046 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1803, i32 2 }
@___asan_gen_.1047 = private unnamed_addr constant [21 x i8] c"soc_enum_adslot18map\00", align 1
@___asan_gen_.1049 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1541, i32 8 }
@___asan_gen_.1052 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1804, i32 2 }
@___asan_gen_.1053 = private unnamed_addr constant [21 x i8] c"soc_enum_adslot19map\00", align 1
@___asan_gen_.1055 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1544, i32 8 }
@___asan_gen_.1058 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1805, i32 2 }
@___asan_gen_.1059 = private unnamed_addr constant [21 x i8] c"soc_enum_adslot20map\00", align 1
@___asan_gen_.1061 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1547, i32 8 }
@___asan_gen_.1064 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1806, i32 2 }
@___asan_gen_.1065 = private unnamed_addr constant [21 x i8] c"soc_enum_adslot21map\00", align 1
@___asan_gen_.1067 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1550, i32 8 }
@___asan_gen_.1070 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1807, i32 2 }
@___asan_gen_.1071 = private unnamed_addr constant [21 x i8] c"soc_enum_adslot22map\00", align 1
@___asan_gen_.1073 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1553, i32 8 }
@___asan_gen_.1076 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1808, i32 2 }
@___asan_gen_.1077 = private unnamed_addr constant [21 x i8] c"soc_enum_adslot23map\00", align 1
@___asan_gen_.1079 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1556, i32 8 }
@___asan_gen_.1082 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1809, i32 2 }
@___asan_gen_.1083 = private unnamed_addr constant [21 x i8] c"soc_enum_adslot24map\00", align 1
@___asan_gen_.1085 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1559, i32 8 }
@___asan_gen_.1088 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1810, i32 2 }
@___asan_gen_.1089 = private unnamed_addr constant [21 x i8] c"soc_enum_adslot25map\00", align 1
@___asan_gen_.1091 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1562, i32 8 }
@___asan_gen_.1094 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1811, i32 2 }
@___asan_gen_.1095 = private unnamed_addr constant [21 x i8] c"soc_enum_adslot26map\00", align 1
@___asan_gen_.1097 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1565, i32 8 }
@___asan_gen_.1100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1812, i32 2 }
@___asan_gen_.1101 = private unnamed_addr constant [21 x i8] c"soc_enum_adslot27map\00", align 1
@___asan_gen_.1103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1568, i32 8 }
@___asan_gen_.1106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1813, i32 2 }
@___asan_gen_.1107 = private unnamed_addr constant [21 x i8] c"soc_enum_adslot28map\00", align 1
@___asan_gen_.1109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1571, i32 8 }
@___asan_gen_.1112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1814, i32 2 }
@___asan_gen_.1113 = private unnamed_addr constant [21 x i8] c"soc_enum_adslot29map\00", align 1
@___asan_gen_.1115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1574, i32 8 }
@___asan_gen_.1118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1815, i32 2 }
@___asan_gen_.1119 = private unnamed_addr constant [21 x i8] c"soc_enum_adslot30map\00", align 1
@___asan_gen_.1121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1577, i32 8 }
@___asan_gen_.1124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1816, i32 2 }
@___asan_gen_.1125 = private unnamed_addr constant [21 x i8] c"soc_enum_adslot31map\00", align 1
@___asan_gen_.1127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1580, i32 8 }
@___asan_gen_.1130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1819, i32 2 }
@___asan_gen_.1131 = private unnamed_addr constant [21 x i8] c".compoundliteral.140\00", align 1
@___asan_gen_.1134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1822, i32 2 }
@___asan_gen_.1135 = private unnamed_addr constant [21 x i8] c".compoundliteral.142\00", align 1
@___asan_gen_.1138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1825, i32 2 }
@___asan_gen_.1139 = private unnamed_addr constant [21 x i8] c".compoundliteral.144\00", align 1
@___asan_gen_.1142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1828, i32 2 }
@___asan_gen_.1143 = private unnamed_addr constant [21 x i8] c".compoundliteral.146\00", align 1
@___asan_gen_.1146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1831, i32 2 }
@___asan_gen_.1147 = private unnamed_addr constant [21 x i8] c".compoundliteral.148\00", align 1
@___asan_gen_.1150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1834, i32 2 }
@___asan_gen_.1151 = private unnamed_addr constant [21 x i8] c".compoundliteral.150\00", align 1
@___asan_gen_.1154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1837, i32 2 }
@___asan_gen_.1155 = private unnamed_addr constant [21 x i8] c".compoundliteral.152\00", align 1
@___asan_gen_.1158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1840, i32 2 }
@___asan_gen_.1159 = private unnamed_addr constant [21 x i8] c".compoundliteral.154\00", align 1
@___asan_gen_.1162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1845, i32 2 }
@___asan_gen_.1163 = private unnamed_addr constant [21 x i8] c".compoundliteral.156\00", align 1
@___asan_gen_.1166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1848, i32 2 }
@___asan_gen_.1167 = private unnamed_addr constant [19 x i8] c"soc_enum_bfifomask\00", align 1
@___asan_gen_.1169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1586, i32 8 }
@___asan_gen_.1172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1849, i32 2 }
@___asan_gen_.1173 = private unnamed_addr constant [19 x i8] c"soc_enum_bfifo19m2\00", align 1
@___asan_gen_.1175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1590, i32 8 }
@___asan_gen_.1178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1850, i32 2 }
@___asan_gen_.1179 = private unnamed_addr constant [21 x i8] c".compoundliteral.160\00", align 1
@___asan_gen_.1182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1853, i32 2 }
@___asan_gen_.1183 = private unnamed_addr constant [21 x i8] c".compoundliteral.162\00", align 1
@___asan_gen_.1186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1856, i32 2 }
@___asan_gen_.1187 = private unnamed_addr constant [21 x i8] c".compoundliteral.164\00", align 1
@___asan_gen_.1190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1859, i32 2 }
@___asan_gen_.1191 = private unnamed_addr constant [21 x i8] c".compoundliteral.166\00", align 1
@___asan_gen_.1194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1862, i32 2 }
@___asan_gen_.1195 = private unnamed_addr constant [19 x i8] c"soc_enum_bfifomast\00", align 1
@___asan_gen_.1197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1594, i32 8 }
@___asan_gen_.1200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1864, i32 2 }
@___asan_gen_.1201 = private unnamed_addr constant [21 x i8] c".compoundliteral.169\00", align 1
@___asan_gen_.1204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1867, i32 2 }
@___asan_gen_.1205 = private unnamed_addr constant [21 x i8] c".compoundliteral.171\00", align 1
@___asan_gen_.1208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1870, i32 2 }
@___asan_gen_.1209 = private unnamed_addr constant [21 x i8] c".compoundliteral.173\00", align 1
@___asan_gen_.1212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1873, i32 2 }
@___asan_gen_.1213 = private unnamed_addr constant [21 x i8] c".compoundliteral.175\00", align 1
@___asan_gen_.1216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1878, i32 2 }
@___asan_gen_.1217 = private unnamed_addr constant [18 x i8] c"soc_enum_ancstate\00", align 1
@___asan_gen_.1219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1602, i32 8 }
@___asan_gen_.1222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1880, i32 2 }
@___asan_gen_.1223 = private unnamed_addr constant [21 x i8] c".compoundliteral.178\00", align 1
@___asan_gen_.1226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1883, i32 2 }
@___asan_gen_.1227 = private unnamed_addr constant [21 x i8] c".compoundliteral.180\00", align 1
@___asan_gen_.1230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1886, i32 2 }
@___asan_gen_.1231 = private unnamed_addr constant [21 x i8] c".compoundliteral.182\00", align 1
@___asan_gen_.1234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1889, i32 2 }
@___asan_gen_.1235 = private unnamed_addr constant [21 x i8] c".compoundliteral.184\00", align 1
@___asan_gen_.1238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1894, i32 2 }
@___asan_gen_.1239 = private unnamed_addr constant [18 x i8] c"soc_enum_sidstate\00", align 1
@___asan_gen_.1241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1599, i32 8 }
@___asan_gen_.1244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1896, i32 2 }
@___asan_gen_.1245 = private unnamed_addr constant [21 x i8] c".compoundliteral.187\00", align 1
@___asan_gen_.1246 = private unnamed_addr constant [16 x i8] c"enum_envdetthre\00", align 1
@___asan_gen_.1248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1345, i32 27 }
@___asan_gen_.1251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1346, i32 2 }
@___asan_gen_.1254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1346, i32 11 }
@___asan_gen_.1257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1346, i32 20 }
@___asan_gen_.1260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1346, i32 29 }
@___asan_gen_.1263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1347, i32 2 }
@___asan_gen_.1266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1347, i32 11 }
@___asan_gen_.1269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1347, i32 20 }
@___asan_gen_.1272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1347, i32 29 }
@___asan_gen_.1275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1348, i32 2 }
@___asan_gen_.1278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1348, i32 11 }
@___asan_gen_.1281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1348, i32 20 }
@___asan_gen_.1284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1348, i32 29 }
@___asan_gen_.1287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1349, i32 2 }
@___asan_gen_.1290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1349, i32 11 }
@___asan_gen_.1293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1349, i32 20 }
@___asan_gen_.1296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1349, i32 29 }
@___asan_gen_.1297 = private unnamed_addr constant [16 x i8] c"enum_envdettime\00", align 1
@___asan_gen_.1299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1354, i32 27 }
@___asan_gen_.1302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1355, i32 2 }
@___asan_gen_.1305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1355, i32 12 }
@___asan_gen_.1308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1355, i32 22 }
@___asan_gen_.1311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1355, i32 32 }
@___asan_gen_.1314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1356, i32 2 }
@___asan_gen_.1317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1356, i32 12 }
@___asan_gen_.1320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1356, i32 22 }
@___asan_gen_.1323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1356, i32 32 }
@___asan_gen_.1326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1357, i32 2 }
@___asan_gen_.1329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1357, i32 12 }
@___asan_gen_.1332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1357, i32 22 }
@___asan_gen_.1335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1357, i32 32 }
@___asan_gen_.1338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1358, i32 2 }
@___asan_gen_.1341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1358, i32 12 }
@___asan_gen_.1344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1358, i32 22 }
@___asan_gen_.1347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1358, i32 32 }
@___asan_gen_.1348 = private unnamed_addr constant [13 x i8] c"enum_av_mode\00", align 1
@___asan_gen_.1350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1378, i32 27 }
@___asan_gen_.1353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1378, i32 45 }
@___asan_gen_.1356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1378, i32 54 }
@___asan_gen_.1357 = private unnamed_addr constant [16 x i8] c"enum_hsfadspeed\00", align 1
@___asan_gen_.1359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1340, i32 27 }
@___asan_gen_.1362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1340, i32 48 }
@___asan_gen_.1365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1340, i32 55 }
@___asan_gen_.1368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1340, i32 64 }
@___asan_gen_.1371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1341, i32 6 }
@___asan_gen_.1372 = private unnamed_addr constant [13 x i8] c"enum_da2hslr\00", align 1
@___asan_gen_.1374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1396, i32 27 }
@___asan_gen_.1377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1396, i32 45 }
@___asan_gen_.1380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1396, i32 57 }
@___asan_gen_.1381 = private unnamed_addr constant [12 x i8] c"enum_sinc31\00", align 1
@___asan_gen_.1383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1362, i32 27 }
@___asan_gen_.1386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1362, i32 44 }
@___asan_gen_.1389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1362, i32 54 }
@___asan_gen_.1390 = private unnamed_addr constant [12 x i8] c"enum_lowpow\00", align 1
@___asan_gen_.1392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1372, i32 27 }
@___asan_gen_.1395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1372, i32 44 }
@___asan_gen_.1398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1372, i32 54 }
@___asan_gen_.1399 = private unnamed_addr constant [12 x i8] c"enum_sinc53\00", align 1
@___asan_gen_.1401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1401, i32 27 }
@___asan_gen_.1404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1401, i32 44 }
@___asan_gen_.1405 = private unnamed_addr constant [15 x i8] c"enum_fadespeed\00", align 1
@___asan_gen_.1407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1366, i32 27 }
@___asan_gen_.1410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1366, i32 47 }
@___asan_gen_.1413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1366, i32 54 }
@___asan_gen_.1416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1366, i32 61 }
@___asan_gen_.1419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1366, i32 68 }
@___asan_gen_.1420 = private unnamed_addr constant [22 x i8] c"enum_da_from_slot_map\00", align 1
@___asan_gen_.1422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1413, i32 27 }
@___asan_gen_.1425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1413, i32 54 }
@___asan_gen_.1428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1414, i32 6 }
@___asan_gen_.1431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1415, i32 6 }
@___asan_gen_.1434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1416, i32 6 }
@___asan_gen_.1437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1417, i32 6 }
@___asan_gen_.1440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1418, i32 6 }
@___asan_gen_.1443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1419, i32 6 }
@___asan_gen_.1446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1420, i32 6 }
@___asan_gen_.1449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1421, i32 6 }
@___asan_gen_.1452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1422, i32 6 }
@___asan_gen_.1455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1423, i32 6 }
@___asan_gen_.1458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1424, i32 6 }
@___asan_gen_.1461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1425, i32 6 }
@___asan_gen_.1464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1426, i32 6 }
@___asan_gen_.1467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1427, i32 6 }
@___asan_gen_.1470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1428, i32 6 }
@___asan_gen_.1473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1429, i32 6 }
@___asan_gen_.1476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1430, i32 6 }
@___asan_gen_.1479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1431, i32 6 }
@___asan_gen_.1482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1432, i32 6 }
@___asan_gen_.1485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1433, i32 6 }
@___asan_gen_.1488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1434, i32 6 }
@___asan_gen_.1491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1435, i32 6 }
@___asan_gen_.1494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1436, i32 6 }
@___asan_gen_.1497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1437, i32 6 }
@___asan_gen_.1500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1438, i32 6 }
@___asan_gen_.1503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1439, i32 6 }
@___asan_gen_.1506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1440, i32 6 }
@___asan_gen_.1509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1441, i32 6 }
@___asan_gen_.1512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1442, i32 6 }
@___asan_gen_.1515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1443, i32 6 }
@___asan_gen_.1518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1444, i32 6 }
@___asan_gen_.1519 = private unnamed_addr constant [20 x i8] c"enum_ad_to_slot_map\00", align 1
@___asan_gen_.1521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1471, i32 27 }
@___asan_gen_.1524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1471, i32 52 }
@___asan_gen_.1527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1472, i32 6 }
@___asan_gen_.1530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1473, i32 6 }
@___asan_gen_.1533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1474, i32 6 }
@___asan_gen_.1536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1475, i32 6 }
@___asan_gen_.1539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1476, i32 6 }
@___asan_gen_.1542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1477, i32 6 }
@___asan_gen_.1545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1478, i32 6 }
@___asan_gen_.1548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1479, i32 6 }
@___asan_gen_.1551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1483, i32 6 }
@___asan_gen_.1552 = private unnamed_addr constant [10 x i8] c"enum_mask\00", align 1
@___asan_gen_.1554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1585, i32 27 }
@___asan_gen_.1557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1585, i32 42 }
@___asan_gen_.1560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1585, i32 54 }
@___asan_gen_.1561 = private unnamed_addr constant [13 x i8] c"enum_bitclk0\00", align 1
@___asan_gen_.1563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1589, i32 27 }
@___asan_gen_.1566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1589, i32 45 }
@___asan_gen_.1569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1589, i32 57 }
@___asan_gen_.1570 = private unnamed_addr constant [17 x i8] c"enum_slavemaster\00", align 1
@___asan_gen_.1572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1593, i32 27 }
@___asan_gen_.1575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1593, i32 49 }
@___asan_gen_.1578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1593, i32 58 }
@___asan_gen_.1581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1209, i32 2 }
@___asan_gen_.1587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1220, i32 3 }
@___asan_gen_.1588 = private unnamed_addr constant [15 x i8] c"enum_anc_state\00", align 1
@___asan_gen_.1590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 90, i32 27 }
@___asan_gen_.1593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1228, i32 47 }
@___asan_gen_.1599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1230, i32 3 }
@___asan_gen_.1605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1259, i32 3 }
@___asan_gen_.1608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1262, i32 2 }
@___asan_gen_.1611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 91, i32 2 }
@___asan_gen_.1614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 92, i32 2 }
@___asan_gen_.1617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 93, i32 2 }
@___asan_gen_.1620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 94, i32 2 }
@___asan_gen_.1623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 95, i32 2 }
@___asan_gen_.1626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 96, i32 2 }
@___asan_gen_.1629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 97, i32 2 }
@___asan_gen_.1632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1084, i32 2 }
@___asan_gen_.1638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1138, i32 2 }
@___asan_gen_.1644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1141, i32 3 }
@___asan_gen_.1645 = private unnamed_addr constant [15 x i8] c"enum_sid_state\00", align 1
@___asan_gen_.1647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 79, i32 27 }
@___asan_gen_.1653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1152, i32 4 }
@___asan_gen_.1656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1180, i32 2 }
@___asan_gen_.1659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 368, i32 2 }
@___asan_gen_.1662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 371, i32 2 }
@___asan_gen_.1665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 372, i32 2 }
@___asan_gen_.1668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 373, i32 2 }
@___asan_gen_.1671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 374, i32 2 }
@___asan_gen_.1674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 377, i32 2 }
@___asan_gen_.1677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 380, i32 2 }
@___asan_gen_.1680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 385, i32 2 }
@___asan_gen_.1683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 390, i32 2 }
@___asan_gen_.1689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 391, i32 2 }
@___asan_gen_.1692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 393, i32 2 }
@___asan_gen_.1695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 394, i32 2 }
@___asan_gen_.1698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 396, i32 2 }
@___asan_gen_.1701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 397, i32 2 }
@___asan_gen_.1704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 398, i32 2 }
@___asan_gen_.1707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 399, i32 2 }
@___asan_gen_.1710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 400, i32 2 }
@___asan_gen_.1713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 401, i32 2 }
@___asan_gen_.1716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 406, i32 2 }
@___asan_gen_.1719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 407, i32 2 }
@___asan_gen_.1722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 411, i32 2 }
@___asan_gen_.1728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 414, i32 2 }
@___asan_gen_.1731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 416, i32 2 }
@___asan_gen_.1734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 419, i32 2 }
@___asan_gen_.1737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 421, i32 2 }
@___asan_gen_.1740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 424, i32 2 }
@___asan_gen_.1743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 426, i32 2 }
@___asan_gen_.1746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 428, i32 2 }
@___asan_gen_.1749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 431, i32 2 }
@___asan_gen_.1752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 434, i32 2 }
@___asan_gen_.1755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 436, i32 2 }
@___asan_gen_.1758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 439, i32 2 }
@___asan_gen_.1761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 442, i32 2 }
@___asan_gen_.1764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 445, i32 2 }
@___asan_gen_.1767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 448, i32 2 }
@___asan_gen_.1770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 451, i32 2 }
@___asan_gen_.1773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 454, i32 2 }
@___asan_gen_.1776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 458, i32 2 }
@___asan_gen_.1779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 459, i32 2 }
@___asan_gen_.1782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 463, i32 2 }
@___asan_gen_.1783 = private unnamed_addr constant [20 x i8] c"dapm_lineout_source\00", align 1
@___asan_gen_.1785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 211, i32 38 }
@___asan_gen_.1788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 466, i32 2 }
@___asan_gen_.1791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 469, i32 2 }
@___asan_gen_.1794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 473, i32 2 }
@___asan_gen_.1797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 476, i32 2 }
@___asan_gen_.1800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 480, i32 2 }
@___asan_gen_.1803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 481, i32 2 }
@___asan_gen_.1806 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 485, i32 2 }
@___asan_gen_.1807 = private unnamed_addr constant [24 x i8] c"dapm_ear_lineout_source\00", align 1
@___asan_gen_.1809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 200, i32 38 }
@___asan_gen_.1812 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 487, i32 2 }
@___asan_gen_.1815 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 490, i32 2 }
@___asan_gen_.1818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 493, i32 2 }
@___asan_gen_.1821 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 497, i32 2 }
@___asan_gen_.1824 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 501, i32 2 }
@___asan_gen_.1827 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 504, i32 2 }
@___asan_gen_.1830 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 507, i32 2 }
@___asan_gen_.1831 = private unnamed_addr constant [16 x i8] c"dapm_HFl_select\00", align 1
@___asan_gen_.1833 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 221, i32 38 }
@___asan_gen_.1836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 509, i32 2 }
@___asan_gen_.1837 = private unnamed_addr constant [16 x i8] c"dapm_HFr_select\00", align 1
@___asan_gen_.1839 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 228, i32 38 }
@___asan_gen_.1842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 511, i32 2 }
@___asan_gen_.1845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 514, i32 2 }
@___asan_gen_.1848 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 517, i32 2 }
@___asan_gen_.1851 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 520, i32 2 }
@___asan_gen_.1854 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 523, i32 2 }
@___asan_gen_.1857 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 526, i32 2 }
@___asan_gen_.1860 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 530, i32 2 }
@___asan_gen_.1863 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 531, i32 2 }
@___asan_gen_.1866 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 535, i32 2 }
@___asan_gen_.1869 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 536, i32 2 }
@___asan_gen_.1872 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 538, i32 2 }
@___asan_gen_.1875 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 541, i32 2 }
@___asan_gen_.1878 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 544, i32 2 }
@___asan_gen_.1881 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 547, i32 2 }
@___asan_gen_.1884 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 550, i32 2 }
@___asan_gen_.1885 = private unnamed_addr constant [14 x i8] c"dapm_pwm2vib1\00", align 1
@___asan_gen_.1887 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 350, i32 38 }
@___asan_gen_.1890 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 552, i32 2 }
@___asan_gen_.1891 = private unnamed_addr constant [14 x i8] c"dapm_pwm2vib2\00", align 1
@___asan_gen_.1893 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 357, i32 38 }
@___asan_gen_.1896 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 554, i32 2 }
@___asan_gen_.1899 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 557, i32 2 }
@___asan_gen_.1902 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 561, i32 2 }
@___asan_gen_.1905 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 562, i32 2 }
@___asan_gen_.1908 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 568, i32 2 }
@___asan_gen_.1909 = private unnamed_addr constant [16 x i8] c"dapm_mic1ab_mux\00", align 1
@___asan_gen_.1911 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 238, i32 38 }
@___asan_gen_.1914 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 570, i32 2 }
@___asan_gen_.1917 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 573, i32 2 }
@___asan_gen_.1920 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 576, i32 2 }
@___asan_gen_.1923 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 579, i32 2 }
@___asan_gen_.1926 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 582, i32 2 }
@___asan_gen_.1927 = private unnamed_addr constant [16 x i8] c"dapm_ad3_select\00", align 1
@___asan_gen_.1929 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 246, i32 38 }
@___asan_gen_.1932 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 584, i32 2 }
@___asan_gen_.1935 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 587, i32 2 }
@___asan_gen_.1938 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 595, i32 2 }
@___asan_gen_.1941 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 598, i32 2 }
@___asan_gen_.1944 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 604, i32 2 }
@___asan_gen_.1947 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 605, i32 2 }
@___asan_gen_.1950 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 607, i32 2 }
@___asan_gen_.1953 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 610, i32 2 }
@___asan_gen_.1956 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 613, i32 2 }
@___asan_gen_.1959 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 616, i32 2 }
@___asan_gen_.1962 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 621, i32 2 }
@___asan_gen_.1965 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 624, i32 2 }
@___asan_gen_.1968 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 629, i32 2 }
@___asan_gen_.1969 = private unnamed_addr constant [19 x i8] c"dapm_mic2lr_select\00", align 1
@___asan_gen_.1971 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 282, i32 38 }
@___asan_gen_.1974 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 631, i32 2 }
@___asan_gen_.1977 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 634, i32 2 }
@___asan_gen_.1980 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 637, i32 2 }
@___asan_gen_.1981 = private unnamed_addr constant [16 x i8] c"dapm_ad1_select\00", align 1
@___asan_gen_.1983 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 274, i32 38 }
@___asan_gen_.1986 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 639, i32 2 }
@___asan_gen_.1987 = private unnamed_addr constant [16 x i8] c"dapm_ad2_select\00", align 1
@___asan_gen_.1989 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 290, i32 38 }
@___asan_gen_.1992 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 641, i32 2 }
@___asan_gen_.1995 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 644, i32 2 }
@___asan_gen_.1998 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 648, i32 2 }
@___asan_gen_.2001 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 654, i32 2 }
@___asan_gen_.2002 = private unnamed_addr constant [16 x i8] c"dapm_ad5_select\00", align 1
@___asan_gen_.2004 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 264, i32 38 }
@___asan_gen_.2007 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 656, i32 2 }
@___asan_gen_.2008 = private unnamed_addr constant [16 x i8] c"dapm_ad6_select\00", align 1
@___asan_gen_.2010 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 254, i32 38 }
@___asan_gen_.2013 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 658, i32 2 }
@___asan_gen_.2016 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 661, i32 2 }
@___asan_gen_.2019 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 664, i32 2 }
@___asan_gen_.2022 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 667, i32 2 }
@___asan_gen_.2025 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 673, i32 2 }
@___asan_gen_.2028 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 674, i32 2 }
@___asan_gen_.2031 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 675, i32 2 }
@___asan_gen_.2034 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 676, i32 2 }
@___asan_gen_.2037 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 677, i32 2 }
@___asan_gen_.2040 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 678, i32 2 }
@___asan_gen_.2043 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 680, i32 2 }
@___asan_gen_.2046 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 683, i32 2 }
@___asan_gen_.2049 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 686, i32 2 }
@___asan_gen_.2052 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 689, i32 2 }
@___asan_gen_.2055 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 692, i32 2 }
@___asan_gen_.2058 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 695, i32 2 }
@___asan_gen_.2061 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 698, i32 2 }
@___asan_gen_.2064 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 701, i32 2 }
@___asan_gen_.2067 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 708, i32 2 }
@___asan_gen_.2070 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 710, i32 2 }
@___asan_gen_.2071 = private unnamed_addr constant [19 x i8] c"dapm_anc_in_select\00", align 1
@___asan_gen_.2073 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 301, i32 38 }
@___asan_gen_.2076 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 713, i32 2 }
@___asan_gen_.2077 = private unnamed_addr constant [16 x i8] c"dapm_anc_enable\00", align 1
@___asan_gen_.2079 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 306, i32 38 }
@___asan_gen_.2082 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 716, i32 2 }
@___asan_gen_.2083 = private unnamed_addr constant [18 x i8] c"dapm_anc_ear_mute\00", align 1
@___asan_gen_.2085 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 312, i32 38 }
@___asan_gen_.2088 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 722, i32 2 }
@___asan_gen_.2089 = private unnamed_addr constant [22 x i8] c"dapm_stfir1_in_select\00", align 1
@___asan_gen_.2091 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 327, i32 38 }
@___asan_gen_.2094 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 725, i32 2 }
@___asan_gen_.2095 = private unnamed_addr constant [22 x i8] c"dapm_stfir2_in_select\00", align 1
@___asan_gen_.2097 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 339, i32 38 }
@___asan_gen_.2100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 728, i32 2 }
@___asan_gen_.2103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 731, i32 2 }
@___asan_gen_.2106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 734, i32 2 }
@___asan_gen_.2109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 737, i32 2 }
@___asan_gen_.2110 = private unnamed_addr constant [20 x i8] c"ab8500_dapm_widgets\00", align 1
@___asan_gen_.2112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 365, i32 41 }
@___asan_gen_.2113 = private unnamed_addr constant [25 x i8] c"dapm_enum_lineout_source\00", align 1
@___asan_gen_.2115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 208, i32 8 }
@___asan_gen_.2116 = private unnamed_addr constant [20 x i8] c"enum_lineout_source\00", align 1
@___asan_gen_.2118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 207, i32 27 }
@___asan_gen_.2121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 207, i32 52 }
@___asan_gen_.2124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 207, i32 65 }
@___asan_gen_.2125 = private unnamed_addr constant [29 x i8] c"dapm_enum_ear_lineout_source\00", align 1
@___asan_gen_.2127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 198, i32 8 }
@___asan_gen_.2128 = private unnamed_addr constant [24 x i8] c"enum_ear_lineout_source\00", align 1
@___asan_gen_.2130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 196, i32 27 }
@___asan_gen_.2131 = private unnamed_addr constant [18 x i8] c"dapm_enum_HFl_sel\00", align 1
@___asan_gen_.2133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 219, i32 8 }
@___asan_gen_.2134 = private unnamed_addr constant [13 x i8] c"enum_HFx_sel\00", align 1
@___asan_gen_.2136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 218, i32 27 }
@___asan_gen_.2137 = private unnamed_addr constant [18 x i8] c"dapm_enum_HFr_sel\00", align 1
@___asan_gen_.2139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 226, i32 8 }
@___asan_gen_.2140 = private unnamed_addr constant [19 x i8] c"dapm_enum_pwm2vib1\00", align 1
@___asan_gen_.2142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 347, i32 8 }
@___asan_gen_.2143 = private unnamed_addr constant [14 x i8] c"enum_pwm2vibx\00", align 1
@___asan_gen_.2145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 345, i32 27 }
@___asan_gen_.2148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 345, i32 60 }
@___asan_gen_.2149 = private unnamed_addr constant [19 x i8] c"dapm_enum_pwm2vib2\00", align 1
@___asan_gen_.2151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 354, i32 8 }
@___asan_gen_.2152 = private unnamed_addr constant [21 x i8] c"dapm_enum_mic1ab_sel\00", align 1
@___asan_gen_.2154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 236, i32 8 }
@___asan_gen_.2155 = private unnamed_addr constant [16 x i8] c"enum_mic1ab_sel\00", align 1
@___asan_gen_.2157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 235, i32 27 }
@___asan_gen_.2160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 235, i32 48 }
@___asan_gen_.2163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 235, i32 58 }
@___asan_gen_.2164 = private unnamed_addr constant [18 x i8] c"dapm_enum_ad3_sel\00", align 1
@___asan_gen_.2166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 244, i32 8 }
@___asan_gen_.2167 = private unnamed_addr constant [13 x i8] c"enum_ad3_sel\00", align 1
@___asan_gen_.2169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 243, i32 27 }
@___asan_gen_.2170 = private unnamed_addr constant [21 x i8] c"dapm_enum_mic2lr_sel\00", align 1
@___asan_gen_.2172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 280, i32 8 }
@___asan_gen_.2173 = private unnamed_addr constant [16 x i8] c"enum_mic2lr_sel\00", align 1
@___asan_gen_.2175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 279, i32 27 }
@___asan_gen_.2176 = private unnamed_addr constant [18 x i8] c"dapm_enum_ad1_sel\00", align 1
@___asan_gen_.2178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 272, i32 8 }
@___asan_gen_.2179 = private unnamed_addr constant [13 x i8] c"enum_ad1_sel\00", align 1
@___asan_gen_.2181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 271, i32 27 }
@___asan_gen_.2182 = private unnamed_addr constant [18 x i8] c"dapm_enum_ad2_sel\00", align 1
@___asan_gen_.2184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 288, i32 8 }
@___asan_gen_.2185 = private unnamed_addr constant [13 x i8] c"enum_ad2_sel\00", align 1
@___asan_gen_.2187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 287, i32 27 }
@___asan_gen_.2188 = private unnamed_addr constant [18 x i8] c"dapm_enum_ad5_sel\00", align 1
@___asan_gen_.2190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 262, i32 8 }
@___asan_gen_.2191 = private unnamed_addr constant [13 x i8] c"enum_ad5_sel\00", align 1
@___asan_gen_.2193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 261, i32 27 }
@___asan_gen_.2194 = private unnamed_addr constant [18 x i8] c"dapm_enum_ad6_sel\00", align 1
@___asan_gen_.2196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 252, i32 8 }
@___asan_gen_.2197 = private unnamed_addr constant [13 x i8] c"enum_ad6_sel\00", align 1
@___asan_gen_.2199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 251, i32 27 }
@___asan_gen_.2200 = private unnamed_addr constant [21 x i8] c"dapm_enum_anc_in_sel\00", align 1
@___asan_gen_.2202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 299, i32 8 }
@___asan_gen_.2203 = private unnamed_addr constant [16 x i8] c"enum_anc_in_sel\00", align 1
@___asan_gen_.2205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 297, i32 27 }
@___asan_gen_.2208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 297, i32 48 }
@___asan_gen_.2211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 298, i32 6 }
@___asan_gen_.2214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 307, i32 2 }
@___asan_gen_.2215 = private unnamed_addr constant [21 x i8] c".compoundliteral.452\00", align 1
@___asan_gen_.2216 = private unnamed_addr constant [21 x i8] c".compoundliteral.453\00", align 1
@___asan_gen_.2217 = private unnamed_addr constant [24 x i8] c"dapm_enum_stfir1_in_sel\00", align 1
@___asan_gen_.2219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 325, i32 8 }
@___asan_gen_.2220 = private unnamed_addr constant [19 x i8] c"enum_stfir1_in_sel\00", align 1
@___asan_gen_.2222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 322, i32 27 }
@___asan_gen_.2223 = private unnamed_addr constant [24 x i8] c"dapm_enum_stfir2_in_sel\00", align 1
@___asan_gen_.2225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 337, i32 8 }
@___asan_gen_.2226 = private unnamed_addr constant [19 x i8] c"enum_stfir2_in_sel\00", align 1
@___asan_gen_.2228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 334, i32 27 }
@___asan_gen_.2231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 2462, i32 2 }
@___asan_gen_.2237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 2468, i32 3 }
@___asan_gen_.2243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 2473, i32 3 }
@___asan_gen_.2249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 2480, i32 3 }
@___asan_gen_.2250 = private unnamed_addr constant [23 x i8] c"ab8500_filter_controls\00", align 1
@___asan_gen_.2252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1900, i32 32 }
@___asan_gen_.2258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 2495, i32 3 }
@___asan_gen_.2259 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.2264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 2512, i32 2 }
@___asan_gen_.2267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 2402, i32 32 }
@___asan_gen_.2270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 2407, i32 32 }
@___asan_gen_.2273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 2413, i32 32 }
@___asan_gen_.2276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 2418, i32 32 }
@___asan_gen_.2279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 2423, i32 32 }
@___asan_gen_.2282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 2428, i32 32 }
@___asan_gen_.2291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 2444, i32 4 }
@___asan_gen_.2300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 2447, i32 3 }
@___asan_gen_.2303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1945, i32 2 }
@___asan_gen_.2306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1963, i32 2 }
@___asan_gen_.2307 = private unnamed_addr constant [32 x i8] c"ab8500_dapm_routes_mic1a_vamicx\00", align 1
@___asan_gen_.2309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1014, i32 40 }
@___asan_gen_.2312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1967, i32 2 }
@___asan_gen_.2313 = private unnamed_addr constant [32 x i8] c"ab8500_dapm_routes_mic1b_vamicx\00", align 1
@___asan_gen_.2315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1019, i32 40 }
@___asan_gen_.2318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1971, i32 2 }
@___asan_gen_.2319 = private unnamed_addr constant [31 x i8] c"ab8500_dapm_routes_mic2_vamicx\00", align 1
@___asan_gen_.2321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1024, i32 40 }
@___asan_gen_.2327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1976, i32 3 }
@___asan_gen_.2330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1983, i32 2 }
@___asan_gen_.2333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1988, i32 2 }
@___asan_gen_.2336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 135, i32 10 }
@___asan_gen_.2339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 137, i32 10 }
@___asan_gen_.2342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 139, i32 10 }
@___asan_gen_.2345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 147, i32 10 }
@___asan_gen_.2348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 149, i32 10 }
@___asan_gen_.2351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 2004, i32 13 }
@___asan_gen_.2354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 2007, i32 13 }
@___asan_gen_.2357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 2010, i32 13 }
@___asan_gen_.2360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 2013, i32 13 }
@___asan_gen_.2369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 2016, i32 3 }
@___asan_gen_.2372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 2021, i32 2 }
@___asan_gen_.2375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1923, i32 2 }
@___asan_gen_.2378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1901, i32 2 }
@___asan_gen_.2379 = private unnamed_addr constant [21 x i8] c".compoundliteral.499\00", align 1
@___asan_gen_.2382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1903, i32 2 }
@___asan_gen_.2383 = private unnamed_addr constant [21 x i8] c".compoundliteral.501\00", align 1
@___asan_gen_.2386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 1905, i32 2 }
@___asan_gen_.2387 = private unnamed_addr constant [21 x i8] c".compoundliteral.503\00", align 1
@___asan_gen_.2390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 2370, i32 11 }
@___asan_gen_.2391 = private unnamed_addr constant [17 x i8] c"ab8500_codec_ops\00", align 1
@___asan_gen_.2393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 2363, i32 37 }
@___asan_gen_.2396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 2383, i32 11 }
@___asan_gen_.2402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 2099, i32 2 }
@___asan_gen_.2405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 2109, i32 3 }
@___asan_gen_.2408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 2114, i32 3 }
@___asan_gen_.2414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 2119, i32 3 }
@___asan_gen_.2420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 2124, i32 3 }
@___asan_gen_.2426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 2135, i32 3 }
@___asan_gen_.2429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 2151, i32 3 }
@___asan_gen_.2432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 2157, i32 3 }
@___asan_gen_.2435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 2164, i32 3 }
@___asan_gen_.2441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 2171, i32 3 }
@___asan_gen_.2444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 2179, i32 3 }
@___asan_gen_.2447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 2184, i32 3 }
@___asan_gen_.2450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 2190, i32 3 }
@___asan_gen_.2453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 2196, i32 3 }
@___asan_gen_.2459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 2203, i32 3 }
@___asan_gen_.2465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 2072, i32 3 }
@___asan_gen_.2468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 2077, i32 3 }
@___asan_gen_.2474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 2081, i32 3 }
@___asan_gen_.2483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 2045, i32 3 }
@___asan_gen_.2486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 2051, i32 2 }
@___asan_gen_.2495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 2239, i32 3 }
@___asan_gen_.2498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 2244, i32 2 }
@___asan_gen_.2501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 2249, i32 2 }
@___asan_gen_.2507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 2267, i32 3 }
@___asan_gen_.2510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 2283, i32 2 }
@___asan_gen_.2513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 2305, i32 3 }
@___asan_gen_.2519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 2310, i32 3 }
@___asan_gen_.2522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 2324, i32 2 }
@___asan_gen_.2525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 2349, i32 3 }
@___asan_gen_.2526 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.2529 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2530 = private constant [35 x i8] c"../sound/soc/codecs/ab8500-codec.c\00", align 1
@___asan_gen_.2531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2530, i32 2354, i32 3 }
@___asan_gen_.2532 = private unnamed_addr constant [32 x i8] c"switch.table.ab8500_codec_probe\00", align 1
@___asan_gen_.2533 = private unnamed_addr constant [43 x i8] c"switch.table.ab8500_codec_set_dai_tdm_slot\00", align 1
@___asan_gen_.2534 = private unnamed_addr constant [47 x i8] c"switch.table.ab8500_codec_set_dai_tdm_slot.554\00", align 1
@llvm.compiler.used = appending global [731 x ptr] [ptr @__UNIQUE_ID_file331, ptr @__UNIQUE_ID_license332, ptr @__exitcall_ab8500_codec_platform_driver_exit, ptr @__initcall__kmod_snd_soc_ab8500_codec__330_2575_ab8500_codec_platform_driver_init6, ptr @ab8500_audio_set_bit_delay._entry, ptr @ab8500_audio_set_bit_delay._entry_ptr, ptr @ab8500_audio_set_ear_cmv._entry, ptr @ab8500_audio_set_ear_cmv._entry_ptr, ptr @ab8500_audio_setup_mics._entry, ptr @ab8500_audio_setup_mics._entry_ptr, ptr @ab8500_codec_driver_probe._entry, ptr @ab8500_codec_driver_probe._entry.10, ptr @ab8500_codec_driver_probe._entry_ptr, ptr @ab8500_codec_driver_probe._entry_ptr.12, ptr @ab8500_codec_of_probe._entry, ptr @ab8500_codec_of_probe._entry.474, ptr @ab8500_codec_of_probe._entry_ptr, ptr @ab8500_codec_of_probe._entry_ptr.477, ptr @ab8500_codec_platform_driver_exit, ptr @ab8500_codec_probe._entry, ptr @ab8500_codec_probe._entry.456, ptr @ab8500_codec_probe._entry.459, ptr @ab8500_codec_probe._entry.462, ptr @ab8500_codec_probe._entry_ptr, ptr @ab8500_codec_probe._entry_ptr.458, ptr @ab8500_codec_probe._entry_ptr.461, ptr @ab8500_codec_probe._entry_ptr.464, ptr @ab8500_codec_set_dai_clock_gate._entry, ptr @ab8500_codec_set_dai_clock_gate._entry_ptr, ptr @ab8500_codec_set_dai_fmt._entry, ptr @ab8500_codec_set_dai_fmt._entry.511, ptr @ab8500_codec_set_dai_fmt._entry.514, ptr @ab8500_codec_set_dai_fmt._entry.520, ptr @ab8500_codec_set_dai_fmt._entry.527, ptr @ab8500_codec_set_dai_fmt._entry_ptr, ptr @ab8500_codec_set_dai_fmt._entry_ptr.513, ptr @ab8500_codec_set_dai_fmt._entry_ptr.516, ptr @ab8500_codec_set_dai_fmt._entry_ptr.522, ptr @ab8500_codec_set_dai_fmt._entry_ptr.529, ptr @ab8500_codec_set_dai_tdm_slot._entry, ptr @ab8500_codec_set_dai_tdm_slot._entry.541, ptr @ab8500_codec_set_dai_tdm_slot._entry.546, ptr @ab8500_codec_set_dai_tdm_slot._entry.551, ptr @ab8500_codec_set_dai_tdm_slot._entry_ptr, ptr @ab8500_codec_set_dai_tdm_slot._entry_ptr.543, ptr @ab8500_codec_set_dai_tdm_slot._entry_ptr.548, ptr @ab8500_codec_set_dai_tdm_slot._entry_ptr.553, ptr @anc_status_control_put._entry, ptr @anc_status_control_put._entry.288, ptr @anc_status_control_put._entry.291, ptr @anc_status_control_put._entry_ptr, ptr @anc_status_control_put._entry_ptr.290, ptr @anc_status_control_put._entry_ptr.293, ptr @sid_status_control_put._entry, ptr @sid_status_control_put._entry.306, ptr @sid_status_control_put._entry_ptr, ptr @sid_status_control_put._entry_ptr.308, ptr @ab8500_codec_platform_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @ab8500_codec_driver_probe._key, ptr @ab8500_codec_regmap, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @ab8500_component_driver, ptr @ab8500_codec_dai, ptr @.str.11, ptr @ab8500_ctrls, ptr @ab8500_dapm_routes, ptr @.str.13, ptr @soc_enum_envdeththre, ptr @.str.14, ptr @soc_enum_envdetlthre, ptr @.str.15, ptr @.compoundliteral, ptr @.str.16, ptr @soc_enum_envdettime, ptr @.str.17, ptr @soc_enum_da12voice, ptr @.str.18, ptr @.compoundliteral.19, ptr @.str.20, ptr @.compoundliteral.21, ptr @.str.22, ptr @.compoundliteral.23, ptr @.str.24, ptr @.compoundliteral.25, ptr @.str.26, ptr @soc_enum_hsfadspeed, ptr @.str.27, ptr @soc_enum_da2hslr, ptr @.str.28, ptr @soc_enum_hsesinc, ptr @.str.29, ptr @dax_dig_gain_tlv, ptr @.compoundliteral.30, ptr @.str.31, ptr @hs_ear_dig_gain_tlv, ptr @.compoundliteral.32, ptr @.str.33, ptr @hs_gain_tlv, ptr @.compoundliteral.34, ptr @.str.35, ptr @soc_enum_eardaclowpow, ptr @.str.36, ptr @soc_enum_eardrvlowpow, ptr @.str.37, ptr @soc_enum_da34voice, ptr @.str.38, ptr @.compoundliteral.39, ptr @.str.40, ptr @.compoundliteral.41, ptr @.str.42, ptr @.compoundliteral.43, ptr @.str.44, ptr @.compoundliteral.45, ptr @.str.46, ptr @.compoundliteral.47, ptr @.str.48, ptr @.compoundliteral.49, ptr @.str.50, ptr @.compoundliteral.51, ptr @.str.52, ptr @.compoundliteral.53, ptr @.str.54, ptr @.compoundliteral.55, ptr @.str.56, ptr @soc_enum_da56voice, ptr @.str.57, ptr @.compoundliteral.58, ptr @.str.59, ptr @.compoundliteral.60, ptr @.str.61, ptr @.compoundliteral.62, ptr @.str.63, ptr @.compoundliteral.64, ptr @.str.65, ptr @.compoundliteral.66, ptr @.str.67, ptr @.compoundliteral.68, ptr @.str.69, ptr @adx_dig_gain_tlv, ptr @.compoundliteral.70, ptr @.str.71, ptr @mic_gain_tlv, ptr @.compoundliteral.72, ptr @.str.73, ptr @.compoundliteral.74, ptr @.str.75, ptr @.compoundliteral.76, ptr @.str.77, ptr @soc_enum_ad34voice, ptr @.str.78, ptr @soc_enum_dmic34sinc, ptr @.str.79, ptr @.compoundliteral.80, ptr @.str.81, ptr @.compoundliteral.82, ptr @.str.83, ptr @.compoundliteral.84, ptr @.str.85, ptr @soc_enum_dmic12sinc, ptr @.str.86, ptr @soc_enum_ad12voice, ptr @.str.87, ptr @.compoundliteral.88, ptr @.str.89, ptr @lin_gain_tlv, ptr @.compoundliteral.90, ptr @.str.91, ptr @lin2hs_gain_tlv, ptr @.compoundliteral.92, ptr @.str.93, ptr @soc_enum_dmic56sinc, ptr @.str.94, ptr @.compoundliteral.95, ptr @.str.96, ptr @soc_enum_fadespeed, ptr @.str.97, ptr @.compoundliteral.98, ptr @.str.99, ptr @soc_enum_da1slotmap, ptr @.str.100, ptr @soc_enum_da2slotmap, ptr @.str.101, ptr @soc_enum_da3slotmap, ptr @.str.102, ptr @soc_enum_da4slotmap, ptr @.str.103, ptr @soc_enum_da5slotmap, ptr @.str.104, ptr @soc_enum_da6slotmap, ptr @.str.105, ptr @soc_enum_da7slotmap, ptr @.str.106, ptr @soc_enum_da8slotmap, ptr @.str.107, ptr @soc_enum_adslot0map, ptr @.str.108, ptr @soc_enum_adslot1map, ptr @.str.109, ptr @soc_enum_adslot2map, ptr @.str.110, ptr @soc_enum_adslot3map, ptr @.str.111, ptr @soc_enum_adslot4map, ptr @.str.112, ptr @soc_enum_adslot5map, ptr @.str.113, ptr @soc_enum_adslot6map, ptr @.str.114, ptr @soc_enum_adslot7map, ptr @.str.115, ptr @soc_enum_adslot8map, ptr @.str.116, ptr @soc_enum_adslot9map, ptr @.str.117, ptr @soc_enum_adslot10map, ptr @.str.118, ptr @soc_enum_adslot11map, ptr @.str.119, ptr @soc_enum_adslot12map, ptr @.str.120, ptr @soc_enum_adslot13map, ptr @.str.121, ptr @soc_enum_adslot14map, ptr @.str.122, ptr @soc_enum_adslot15map, ptr @.str.123, ptr @soc_enum_adslot16map, ptr @.str.124, ptr @soc_enum_adslot17map, ptr @.str.125, ptr @soc_enum_adslot18map, ptr @.str.126, ptr @soc_enum_adslot19map, ptr @.str.127, ptr @soc_enum_adslot20map, ptr @.str.128, ptr @soc_enum_adslot21map, ptr @.str.129, ptr @soc_enum_adslot22map, ptr @.str.130, ptr @soc_enum_adslot23map, ptr @.str.131, ptr @soc_enum_adslot24map, ptr @.str.132, ptr @soc_enum_adslot25map, ptr @.str.133, ptr @soc_enum_adslot26map, ptr @.str.134, ptr @soc_enum_adslot27map, ptr @.str.135, ptr @soc_enum_adslot28map, ptr @.str.136, ptr @soc_enum_adslot29map, ptr @.str.137, ptr @soc_enum_adslot30map, ptr @.str.138, ptr @soc_enum_adslot31map, ptr @.str.139, ptr @.compoundliteral.140, ptr @.str.141, ptr @.compoundliteral.142, ptr @.str.143, ptr @.compoundliteral.144, ptr @.str.145, ptr @.compoundliteral.146, ptr @.str.147, ptr @.compoundliteral.148, ptr @.str.149, ptr @.compoundliteral.150, ptr @.str.151, ptr @.compoundliteral.152, ptr @.str.153, ptr @.compoundliteral.154, ptr @.str.155, ptr @.compoundliteral.156, ptr @.str.157, ptr @soc_enum_bfifomask, ptr @.str.158, ptr @soc_enum_bfifo19m2, ptr @.str.159, ptr @.compoundliteral.160, ptr @.str.161, ptr @.compoundliteral.162, ptr @.str.163, ptr @.compoundliteral.164, ptr @.str.165, ptr @.compoundliteral.166, ptr @.str.167, ptr @soc_enum_bfifomast, ptr @.str.168, ptr @.compoundliteral.169, ptr @.str.170, ptr @.compoundliteral.171, ptr @.str.172, ptr @.compoundliteral.173, ptr @.str.174, ptr @.compoundliteral.175, ptr @.str.176, ptr @soc_enum_ancstate, ptr @.str.177, ptr @.compoundliteral.178, ptr @.str.179, ptr @.compoundliteral.180, ptr @.str.181, ptr @.compoundliteral.182, ptr @.str.183, ptr @.compoundliteral.184, ptr @.str.185, ptr @soc_enum_sidstate, ptr @.str.186, ptr @.compoundliteral.187, ptr @enum_envdetthre, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @enum_envdettime, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @enum_av_mode, ptr @.str.220, ptr @.str.221, ptr @enum_hsfadspeed, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @enum_da2hslr, ptr @.str.226, ptr @.str.227, ptr @enum_sinc31, ptr @.str.228, ptr @.str.229, ptr @enum_lowpow, ptr @.str.230, ptr @.str.231, ptr @enum_sinc53, ptr @.str.232, ptr @enum_fadespeed, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @enum_da_from_slot_map, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @.str.244, ptr @.str.245, ptr @.str.246, ptr @.str.247, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @.str.252, ptr @.str.253, ptr @.str.254, ptr @.str.255, ptr @.str.256, ptr @.str.257, ptr @.str.258, ptr @.str.259, ptr @.str.260, ptr @.str.261, ptr @.str.262, ptr @.str.263, ptr @.str.264, ptr @.str.265, ptr @.str.266, ptr @.str.267, ptr @.str.268, ptr @enum_ad_to_slot_map, ptr @.str.269, ptr @.str.270, ptr @.str.271, ptr @.str.272, ptr @.str.273, ptr @.str.274, ptr @.str.275, ptr @.str.276, ptr @.str.277, ptr @.str.278, ptr @enum_mask, ptr @.str.279, ptr @.str.280, ptr @enum_bitclk0, ptr @.str.281, ptr @.str.282, ptr @enum_slavemaster, ptr @.str.283, ptr @.str.284, ptr @.str.285, ptr @.str.286, ptr @enum_anc_state, ptr @.str.287, ptr @.str.289, ptr @.str.292, ptr @.str.294, ptr @.str.295, ptr @.str.296, ptr @.str.297, ptr @.str.298, ptr @.str.299, ptr @.str.300, ptr @.str.301, ptr @.str.302, ptr @.str.303, ptr @.str.304, ptr @.str.305, ptr @enum_sid_state, ptr @.str.307, ptr @.str.309, ptr @.str.310, ptr @.str.311, ptr @.str.312, ptr @.str.313, ptr @.str.314, ptr @.str.315, ptr @.str.316, ptr @.str.317, ptr @.str.318, ptr @.str.319, ptr @.str.320, ptr @.str.321, ptr @.str.322, ptr @.str.323, ptr @.str.324, ptr @.str.325, ptr @.str.326, ptr @.str.327, ptr @.str.328, ptr @.str.329, ptr @.str.330, ptr @.str.331, ptr @.str.332, ptr @.str.333, ptr @.str.334, ptr @.str.335, ptr @.str.336, ptr @.str.337, ptr @.str.338, ptr @.str.339, ptr @.str.340, ptr @.str.341, ptr @.str.342, ptr @.str.343, ptr @.str.344, ptr @.str.345, ptr @.str.346, ptr @.str.347, ptr @.str.348, ptr @.str.349, ptr @.str.350, ptr @.str.351, ptr @dapm_lineout_source, ptr @.str.352, ptr @.str.353, ptr @.str.354, ptr @.str.355, ptr @.str.356, ptr @.str.357, ptr @.str.358, ptr @dapm_ear_lineout_source, ptr @.str.359, ptr @.str.360, ptr @.str.361, ptr @.str.362, ptr @.str.363, ptr @.str.364, ptr @.str.365, ptr @dapm_HFl_select, ptr @.str.366, ptr @dapm_HFr_select, ptr @.str.367, ptr @.str.368, ptr @.str.369, ptr @.str.370, ptr @.str.371, ptr @.str.372, ptr @.str.373, ptr @.str.374, ptr @.str.375, ptr @.str.376, ptr @.str.377, ptr @.str.378, ptr @.str.379, ptr @.str.380, ptr @.str.381, ptr @dapm_pwm2vib1, ptr @.str.382, ptr @dapm_pwm2vib2, ptr @.str.383, ptr @.str.384, ptr @.str.385, ptr @.str.386, ptr @.str.387, ptr @dapm_mic1ab_mux, ptr @.str.388, ptr @.str.389, ptr @.str.390, ptr @.str.391, ptr @.str.392, ptr @dapm_ad3_select, ptr @.str.393, ptr @.str.394, ptr @.str.395, ptr @.str.396, ptr @.str.397, ptr @.str.398, ptr @.str.399, ptr @.str.400, ptr @.str.401, ptr @.str.402, ptr @.str.403, ptr @.str.404, ptr @.str.405, ptr @dapm_mic2lr_select, ptr @.str.406, ptr @.str.407, ptr @.str.408, ptr @dapm_ad1_select, ptr @.str.409, ptr @dapm_ad2_select, ptr @.str.410, ptr @.str.411, ptr @.str.412, ptr @.str.413, ptr @dapm_ad5_select, ptr @.str.414, ptr @dapm_ad6_select, ptr @.str.415, ptr @.str.416, ptr @.str.417, ptr @.str.418, ptr @.str.419, ptr @.str.420, ptr @.str.421, ptr @.str.422, ptr @.str.423, ptr @.str.424, ptr @.str.425, ptr @.str.426, ptr @.str.427, ptr @.str.428, ptr @.str.429, ptr @.str.430, ptr @.str.431, ptr @.str.432, ptr @.str.433, ptr @.str.434, ptr @dapm_anc_in_select, ptr @.str.435, ptr @dapm_anc_enable, ptr @.str.436, ptr @dapm_anc_ear_mute, ptr @.str.437, ptr @dapm_stfir1_in_select, ptr @.str.438, ptr @dapm_stfir2_in_select, ptr @.str.439, ptr @.str.440, ptr @.str.441, ptr @.str.442, ptr @ab8500_dapm_widgets, ptr @dapm_enum_lineout_source, ptr @enum_lineout_source, ptr @.str.444, ptr @.str.445, ptr @dapm_enum_ear_lineout_source, ptr @enum_ear_lineout_source, ptr @dapm_enum_HFl_sel, ptr @enum_HFx_sel, ptr @dapm_enum_HFr_sel, ptr @dapm_enum_pwm2vib1, ptr @enum_pwm2vibx, ptr @.str.446, ptr @dapm_enum_pwm2vib2, ptr @dapm_enum_mic1ab_sel, ptr @enum_mic1ab_sel, ptr @.str.447, ptr @.str.448, ptr @dapm_enum_ad3_sel, ptr @enum_ad3_sel, ptr @dapm_enum_mic2lr_sel, ptr @enum_mic2lr_sel, ptr @dapm_enum_ad1_sel, ptr @enum_ad1_sel, ptr @dapm_enum_ad2_sel, ptr @enum_ad2_sel, ptr @dapm_enum_ad5_sel, ptr @enum_ad5_sel, ptr @dapm_enum_ad6_sel, ptr @enum_ad6_sel, ptr @dapm_enum_anc_in_sel, ptr @enum_anc_in_sel, ptr @.str.449, ptr @.str.450, ptr @.str.451, ptr @.compoundliteral.452, ptr @.compoundliteral.453, ptr @dapm_enum_stfir1_in_sel, ptr @enum_stfir1_in_sel, ptr @dapm_enum_stfir2_in_sel, ptr @enum_stfir2_in_sel, ptr @.str.454, ptr @.str.455, ptr @.str.457, ptr @.str.460, ptr @ab8500_filter_controls, ptr @.str.463, ptr @ab8500_codec_probe.__key, ptr @.str.465, ptr @.str.466, ptr @.str.467, ptr @.str.468, ptr @.str.469, ptr @.str.470, ptr @.str.471, ptr @.str.472, ptr @.str.473, ptr @.str.475, ptr @.str.476, ptr @.str.478, ptr @.str.479, ptr @ab8500_dapm_routes_mic1a_vamicx, ptr @.str.480, ptr @ab8500_dapm_routes_mic1b_vamicx, ptr @.str.481, ptr @ab8500_dapm_routes_mic2_vamicx, ptr @.str.482, ptr @.str.483, ptr @.str.484, ptr @.str.485, ptr @.str.486, ptr @.str.487, ptr @.str.488, ptr @.str.489, ptr @.str.490, ptr @.str.491, ptr @.str.492, ptr @.str.493, ptr @.str.494, ptr @.str.495, ptr @.str.496, ptr @.str.497, ptr @.str.498, ptr @.compoundliteral.499, ptr @.str.500, ptr @.compoundliteral.501, ptr @.str.502, ptr @.compoundliteral.503, ptr @.str.504, ptr @ab8500_codec_ops, ptr @.str.505, ptr @.str.506, ptr @.str.507, ptr @.str.508, ptr @.str.509, ptr @.str.510, ptr @.str.512, ptr @.str.515, ptr @.str.517, ptr @.str.518, ptr @.str.519, ptr @.str.521, ptr @.str.523, ptr @.str.524, ptr @.str.525, ptr @.str.526, ptr @.str.528, ptr @.str.530, ptr @.str.531, ptr @.str.532, ptr @.str.533, ptr @.str.534, ptr @.str.535, ptr @.str.536, ptr @.str.537, ptr @.str.538, ptr @.str.539, ptr @.str.540, ptr @.str.542, ptr @.str.544, ptr @.str.545, ptr @.str.547, ptr @.str.549, ptr @.str.550, ptr @.str.552, ptr @switch.table.ab8500_codec_probe, ptr @switch.table.ab8500_codec_set_dai_tdm_slot, ptr @switch.table.ab8500_codec_set_dai_tdm_slot.554], section "llvm.metadata"
@0 = internal global [700 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_codec_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_codec_driver_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_codec_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_codec_driver_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2526 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_component_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_codec_dai to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_codec_driver_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2526 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_ctrls to i32), i32 5712, i32 7136, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_dapm_routes to i32), i32 8164, i32 10208, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_enum_envdeththre to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_enum_envdetlthre to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_enum_envdettime to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_enum_da12voice to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.19 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.21 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.23 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.25 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_enum_hsfadspeed to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_enum_da2hslr to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_enum_hsesinc to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dax_dig_gain_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.30 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hs_ear_dig_gain_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.32 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hs_gain_tlv to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.34 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_enum_eardaclowpow to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_enum_eardrvlowpow to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_enum_da34voice to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.39 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.41 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.43 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.45 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.47 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.49 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.51 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.53 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.55 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_enum_da56voice to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.58 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.60 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.62 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.64 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.66 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.68 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adx_dig_gain_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.70 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mic_gain_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.72 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.74 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.76 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_enum_ad34voice to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_enum_dmic34sinc to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.80 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.82 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.84 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_enum_dmic12sinc to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_enum_ad12voice to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.88 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lin_gain_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.90 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lin2hs_gain_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.92 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_enum_dmic56sinc to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.95 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_enum_fadespeed to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.98 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_enum_da1slotmap to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_enum_da2slotmap to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_enum_da3slotmap to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_enum_da4slotmap to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_enum_da5slotmap to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_enum_da6slotmap to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_enum_da7slotmap to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_enum_da8slotmap to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_enum_adslot0map to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_enum_adslot1map to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_enum_adslot2map to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_enum_adslot3map to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_enum_adslot4map to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_enum_adslot5map to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_enum_adslot6map to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_enum_adslot7map to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_enum_adslot8map to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_enum_adslot9map to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_enum_adslot10map to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_enum_adslot11map to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_enum_adslot12map to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_enum_adslot13map to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1019 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_enum_adslot14map to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_enum_adslot15map to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_enum_adslot16map to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1035 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_enum_adslot17map to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_enum_adslot18map to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_enum_adslot19map to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_enum_adslot20map to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_enum_adslot21map to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1070 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_enum_adslot22map to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_enum_adslot23map to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_enum_adslot24map to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_enum_adslot25map to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_enum_adslot26map to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1095 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_enum_adslot27map to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1101 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_enum_adslot28map to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1107 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_enum_adslot29map to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_enum_adslot30map to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_enum_adslot31map to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.140 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.142 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.144 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1139 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.146 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1143 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.148 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.150 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.152 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1155 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.154 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.156 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1163 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_enum_bfifomask to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_enum_bfifo19m2 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.160 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.162 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1183 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.164 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1187 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.166 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1191 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_enum_bfifomast to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1195 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.169 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1201 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.171 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.173 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.175 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_enum_ancstate to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1217 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.178 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.180 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1227 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.182 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1231 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.184 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1235 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_enum_sidstate to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.187 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1245 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enum_envdetthre to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1246 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enum_envdettime to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enum_av_mode to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1348 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enum_hsfadspeed to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1357 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enum_da2hslr to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1372 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enum_sinc31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1381 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enum_lowpow to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1390 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enum_sinc53 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enum_fadespeed to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enum_da_from_slot_map to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enum_ad_to_slot_map to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1519 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enum_mask to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1552 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.279 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.280 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enum_bitclk0 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1561 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.281 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.282 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enum_slavemaster to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1570 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.283 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.284 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.285 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anc_status_control_put._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2526 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.286 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enum_anc_state to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1588 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.287 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anc_status_control_put._entry.288 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2526 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.289 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anc_status_control_put._entry.291 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2526 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.292 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.294 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.295 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.296 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.297 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.298 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.299 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.300 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.301 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.302 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.303 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.304 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sid_status_control_put._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2526 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.305 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enum_sid_state to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1645 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sid_status_control_put._entry.306 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2526 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.307 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.309 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.310 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.311 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.312 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.313 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.314 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.315 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.316 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.317 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.318 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.319 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.320 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.321 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.322 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.323 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.324 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.325 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.326 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.327 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.328 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.329 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.330 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.331 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.332 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.333 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.334 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.335 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.336 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.337 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.338 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.339 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.340 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.341 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.342 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.343 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.344 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.345 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.346 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.347 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.348 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.349 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.350 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.351 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dapm_lineout_source to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1783 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.352 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.353 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.354 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.355 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.356 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.357 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.358 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dapm_ear_lineout_source to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1807 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.359 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.360 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.361 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.362 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.363 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.364 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.365 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dapm_HFl_select to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1831 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.366 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dapm_HFr_select to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1837 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.367 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.368 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.369 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.370 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.371 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.372 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.373 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.374 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.375 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.376 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.377 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1872 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.378 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.379 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.380 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.381 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dapm_pwm2vib1 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1885 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.382 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dapm_pwm2vib2 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1891 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.383 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1896 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.384 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.385 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.386 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1905 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.387 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dapm_mic1ab_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1909 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1911 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.388 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.389 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1917 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.390 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.391 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.392 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dapm_ad3_select to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1927 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.393 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.394 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1935 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.395 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.396 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1941 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.397 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.398 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.399 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.400 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.401 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1956 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.402 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.403 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.404 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1965 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.405 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dapm_mic2lr_select to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1969 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.406 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1974 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.407 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1977 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.408 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dapm_ad1_select to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1981 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1983 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.409 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1986 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dapm_ad2_select to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1987 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.410 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1992 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.411 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1995 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.412 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1998 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.413 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2001 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dapm_ad5_select to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.2002 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2004 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.414 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2007 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dapm_ad6_select to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.2008 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2010 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.415 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2013 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.416 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2016 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.417 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2019 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.418 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2022 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.419 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.420 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2028 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.421 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2031 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.422 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2034 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.423 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2037 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.424 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2040 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.425 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2043 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.426 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2046 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.427 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.428 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2052 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.429 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2055 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.430 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2058 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.431 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2061 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.432 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2064 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.433 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2067 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.434 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2070 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dapm_anc_in_select to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.2071 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2073 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.435 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2076 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dapm_anc_enable to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.2077 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2079 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.436 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2082 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dapm_anc_ear_mute to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.2083 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2085 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.437 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2088 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dapm_stfir1_in_select to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.2089 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2091 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.438 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2094 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dapm_stfir2_in_select to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.2095 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2097 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.439 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.440 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.441 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.442 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_dapm_widgets to i32), i32 24840, i32 31072, i32 ptrtoint (ptr @___asan_gen_.2110 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dapm_enum_lineout_source to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.2113 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enum_lineout_source to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2116 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.444 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.445 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dapm_enum_ear_lineout_source to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.2125 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enum_ear_lineout_source to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2128 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dapm_enum_HFl_sel to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.2131 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enum_HFx_sel to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2134 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dapm_enum_HFr_sel to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.2137 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dapm_enum_pwm2vib1 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.2140 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enum_pwm2vibx to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2143 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.446 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dapm_enum_pwm2vib2 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.2149 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dapm_enum_mic1ab_sel to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.2152 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enum_mic1ab_sel to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2155 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.447 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.448 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dapm_enum_ad3_sel to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.2164 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enum_ad3_sel to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2167 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dapm_enum_mic2lr_sel to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.2170 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enum_mic2lr_sel to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2173 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dapm_enum_ad1_sel to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.2176 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enum_ad1_sel to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2179 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dapm_enum_ad2_sel to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.2182 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enum_ad2_sel to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2185 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dapm_enum_ad5_sel to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.2188 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enum_ad5_sel to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2191 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dapm_enum_ad6_sel to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.2194 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enum_ad6_sel to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2197 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dapm_enum_anc_in_sel to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.2200 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enum_anc_in_sel to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2203 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.449 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.450 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.451 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.452 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.2215 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.453 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.2216 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dapm_enum_stfir1_in_sel to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.2217 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enum_stfir1_in_sel to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2220 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dapm_enum_stfir2_in_sel to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.2223 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enum_stfir2_in_sel to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2226 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.454 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_codec_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2526 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.455 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_codec_probe._entry.456 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2526 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.457 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_codec_probe._entry.459 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2526 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.460 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_filter_controls to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.2250 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_codec_probe._entry.462 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2526 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.463 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_codec_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2259 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.465 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.466 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.467 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.468 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.469 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.470 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.471 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_codec_of_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2526 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.472 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.473 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_codec_of_probe._entry.474 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2526 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.475 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.476 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.478 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.479 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_dapm_routes_mic1a_vamicx to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.2307 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.480 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_dapm_routes_mic1b_vamicx to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.2313 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.481 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_dapm_routes_mic2_vamicx to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.2319 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_audio_setup_mics._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2526 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.482 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.483 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.484 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.485 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.486 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.487 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.488 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.489 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.490 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.491 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.492 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.493 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_audio_set_ear_cmv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2526 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.494 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.495 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.496 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.497 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.498 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.499 to i32), i32 524, i32 672, i32 ptrtoint (ptr @___asan_gen_.2379 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.500 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.501 to i32), i32 524, i32 672, i32 ptrtoint (ptr @___asan_gen_.2383 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.502 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.503 to i32), i32 524, i32 672, i32 ptrtoint (ptr @___asan_gen_.2387 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.504 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_codec_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.2391 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.505 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.506 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.507 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.508 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.509 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_codec_set_dai_fmt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2526 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.510 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_codec_set_dai_fmt._entry.511 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2526 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.512 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_codec_set_dai_fmt._entry.514 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2526 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.515 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.517 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.518 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.519 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_codec_set_dai_fmt._entry.520 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2526 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.521 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.523 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.524 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.525 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.526 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_codec_set_dai_fmt._entry.527 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2526 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.528 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.530 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.531 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.532 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_codec_set_dai_clock_gate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2526 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.533 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_audio_set_bit_delay._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2526 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.534 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.535 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.536 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_codec_set_dai_tdm_slot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2526 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.537 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.538 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.539 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.540 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_codec_set_dai_tdm_slot._entry.541 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2526 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.542 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.544 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.545 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_codec_set_dai_tdm_slot._entry.546 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2526 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.547 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.549 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.550 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ab8500_codec_set_dai_tdm_slot._entry.551 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2526 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.552 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.2529 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.2531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ab8500_codec_probe to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2532 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ab8500_codec_set_dai_tdm_slot to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.2533 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ab8500_codec_set_dai_tdm_slot.554 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.2534 to i32), i32 ptrtoint (ptr @___asan_gen_.2530 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_codec_platform_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ab8500_codec_platform_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ab8500_codec_platform_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @ab8500_codec_platform_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_codec_driver_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_codec_driver_probe.__UNIQUE_ID_ddebug328, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ab8500_codec_driver_probe, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !1305

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_codec_driver_probe.__UNIQUE_ID_ddebug328, ptr noundef %dev, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dev3 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev3, i32 noundef 116, i32 noundef 3520) #7
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %sid_status = getelementptr inbounds %struct.ab8500_codec_drvdata, ptr %call.i, i32 0, i32 3
  %0 = ptrtoint ptr %sid_status to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %sid_status, align 4
  %anc_status = getelementptr inbounds %struct.ab8500_codec_drvdata, ptr %call.i, i32 0, i32 6
  %1 = ptrtoint ptr %anc_status to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %anc_status, align 4
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i, align 4
  %call12 = tail call ptr @__devm_regmap_init(ptr noundef %dev3, ptr noundef null, ptr noundef %dev3, ptr noundef nonnull @ab8500_codec_regmap, ptr noundef nonnull @ab8500_codec_driver_probe._key, ptr noundef nonnull @.str.5) #7
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call12, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then15, label %do.body23

if.then15:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %call12 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2, i32 noundef %4) #10
  br label %cleanup

do.body23:                                        ; preds = %if.end7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_codec_driver_probe.__UNIQUE_ID_ddebug329, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ab8500_codec_driver_probe, %if.then35)) #7
          to label %do.end39 [label %if.then35], !srcloc !1305

if.then35:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_codec_driver_probe.__UNIQUE_ID_ddebug329, ptr noundef %dev3, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.2) #7
  br label %do.end39

do.end39:                                         ; preds = %if.then35, %do.body23
  %call41 = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev3, ptr noundef nonnull @ab8500_component_driver, ptr noundef nonnull @ab8500_codec_dai, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp = icmp slt i32 %call41, 0
  br i1 %cmp, label %do.end45, label %do.end39.cleanup_crit_edge

do.end39.cleanup_crit_edge:                       ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end45:                                         ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.2, i32 noundef %call41) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end45, %do.end39.cleanup_crit_edge, %if.then15, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then15 ], [ -12, %do.end.cleanup_crit_edge ], [ %call41, %do.end45 ], [ %call41, %do.end39.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_codec_read_reg(ptr noundef %context, i32 noundef %reg, ptr nocapture noundef writeonly %value) #2 align 64 {
entry:
  %value8 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value8) #7
  %0 = ptrtoint ptr %value8 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %value8, align 1, !annotation !1306
  %conv = trunc i32 %reg to i8
  %call = call i32 @abx500_get_register_interruptible(ptr noundef %context, i8 noundef zeroext 13, i8 noundef zeroext %conv, ptr noundef nonnull %value8) #7
  %1 = ptrtoint ptr %value8 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %value8, align 1
  %conv1 = zext i8 %2 to i32
  %3 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %conv1, ptr %value, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value8) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_codec_write_reg(ptr noundef %context, i32 noundef %reg, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %reg to i8
  %conv1 = trunc i32 %value to i8
  %call = tail call i32 @abx500_set_register_interruptible(ptr noundef %context, i8 noundef zeroext 13, i8 noundef zeroext %conv, i8 noundef zeroext %conv1) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @abx500_get_register_interruptible(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @abx500_set_register_interruptible(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_codec_probe(ptr noundef %component) #2 align 64 {
entry:
  %value.i = alloca i32, align 4
  %codec_pdata = alloca %struct.ab8500_codec_platform_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %dev1 = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %codec_pdata) #7
  %6 = getelementptr inbounds %struct.amic_settings, ptr %codec_pdata, i32 0, i32 1
  %7 = getelementptr inbounds %struct.amic_settings, ptr %codec_pdata, i32 0, i32 2
  %8 = getelementptr inbounds %struct.amic_settings, ptr %codec_pdata, i32 0, i32 3
  %9 = getelementptr inbounds %struct.amic_settings, ptr %codec_pdata, i32 0, i32 4
  %10 = getelementptr inbounds %struct.ab8500_codec_platform_data, ptr %codec_pdata, i32 0, i32 1
  %11 = getelementptr inbounds i8, ptr %codec_pdata, i32 20
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %11, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_codec_probe.__UNIQUE_ID_ddebug327, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ab8500_codec_probe, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !1305

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_codec_probe.__UNIQUE_ID_ddebug327, ptr noundef %1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.454) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value.i) #7
  %13 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %value.i, align 4, !annotation !1306
  %call.i.i = tail call ptr @of_find_property(ptr noundef %3, ptr noundef nonnull @.str.466, ptr noundef null) #7
  %tobool.i.not.i = icmp eq ptr %call.i.i, null
  %..i = zext i1 %tobool.i.not.i to i32
  %14 = ptrtoint ptr %codec_pdata to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %..i, ptr %codec_pdata, align 4
  %call.i67.i = tail call ptr @of_find_property(ptr noundef %3, ptr noundef nonnull @.str.467, ptr noundef null) #7
  %tobool.i68.not.i = icmp eq ptr %call.i67.i, null
  %spec.select.i = zext i1 %tobool.i68.not.i to i32
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %spec.select.i, ptr %6, align 4
  %call.i69.i = tail call ptr @of_find_property(ptr noundef %3, ptr noundef nonnull @.str.468, ptr noundef null) #7
  %tobool.i70.not.i = icmp ne ptr %call.i69.i, null
  %.sink75.i = zext i1 %tobool.i70.not.i to i32
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %.sink75.i, ptr %7, align 4
  %call.i71.i = tail call ptr @of_find_property(ptr noundef %3, ptr noundef nonnull @.str.469, ptr noundef null) #7
  %tobool.i72.not.i = icmp ne ptr %call.i71.i, null
  %.sink76.i = zext i1 %tobool.i72.not.i to i32
  %17 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %.sink76.i, ptr %8, align 4
  %call.i73.i = tail call ptr @of_find_property(ptr noundef %3, ptr noundef nonnull @.str.470, ptr noundef null) #7
  %tobool.i74.not.i = icmp eq ptr %call.i73.i, null
  %.sink77.i = zext i1 %tobool.i74.not.i to i32
  %18 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %.sink77.i, ptr %9, align 4
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %3, ptr noundef nonnull @.str.471, ptr noundef nonnull %value.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i, label %if.then32.i, label %do.end43.i

if.then32.i:                                      ; preds = %do.end
  %19 = ptrtoint ptr %value.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %value.i, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values)
  switch i32 %20, label %sw.default.i [
    i32 950, label %sw.bb.i
    i32 1100, label %sw.bb33.i
    i32 1270, label %sw.bb35.i
    i32 1580, label %sw.bb37.i
  ]

sw.bb.i:                                          ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %10, align 4
  br label %ab8500_codec_of_probe.exit

sw.bb33.i:                                        ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %10, align 4
  br label %ab8500_codec_of_probe.exit

sw.bb35.i:                                        ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2, ptr %10, align 4
  br label %ab8500_codec_of_probe.exit

sw.bb37.i:                                        ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 3, ptr %10, align 4
  br label %ab8500_codec_of_probe.exit

sw.default.i:                                     ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 4, ptr %10, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.472) #10
  br label %ab8500_codec_of_probe.exit

do.end43.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.475) #10
  %27 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %10, align 4
  br label %ab8500_codec_of_probe.exit

ab8500_codec_of_probe.exit:                       ; preds = %do.end43.i, %sw.default.i, %sw.bb37.i, %sw.bb35.i, %sw.bb33.i, %sw.bb.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value.i) #7
  %call6 = call fastcc i32 @ab8500_audio_setup_mics(ptr noundef %component, ptr noundef nonnull %codec_pdata)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %do.end10, label %if.end13

do.end10:                                         ; preds = %ab8500_codec_of_probe.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.455, ptr noundef nonnull @.str.454, i32 noundef %call6) #10
  br label %cleanup

if.end13:                                         ; preds = %ab8500_codec_of_probe.exit
  %28 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %29)
  %30 = icmp ult i32 %29, 4
  br i1 %30, label %switch.lookup, label %do.end19

switch.lookup:                                    ; preds = %if.end13
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.ab8500_codec_probe, i32 0, i32 %29
  %31 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %31)
  %switch.load = load ptr, ptr %switch.gep, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_audio_set_ear_cmv.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ab8500_codec_probe, %if.then.i)) #7
          to label %if.end22 [label %if.then.i], !srcloc !1305

if.then.i:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_audio_set_ear_cmv.__UNIQUE_ID_ddebug307, ptr noundef %33, ptr noundef nonnull @.str.496, ptr noundef nonnull @.str.495, ptr noundef nonnull %switch.load) #7
  br label %if.end22

do.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.494, ptr noundef nonnull @.str.495, i32 noundef %29) #10
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.457, ptr noundef nonnull @.str.454, i32 noundef -22) #10
  br label %cleanup

if.end22:                                         ; preds = %if.then.i, %switch.lookup
  %call10.i = call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 4, i32 noundef 2, i32 noundef %29) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_audio_init_audioblock.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ab8500_codec_probe, %if.then.i84)) #7
          to label %ab8500_audio_init_audioblock.exit [label %if.then.i84], !srcloc !1305

if.then.i84:                                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev1, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_audio_init_audioblock.__UNIQUE_ID_ddebug300, ptr noundef %37, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.497) #7
  br label %ab8500_audio_init_audioblock.exit

ab8500_audio_init_audioblock.exit:                ; preds = %if.then.i84, %if.end22
  %call3.i = call i32 @ab8500_sysctrl_write(i16 noundef zeroext 512, i8 noundef zeroext 3, i8 noundef zeroext 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp24 = icmp slt i32 %call3.i, 0
  br i1 %cmp24, label %do.end28, label %if.end29

do.end28:                                         ; preds = %ab8500_audio_init_audioblock.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.460, ptr noundef nonnull @.str.454, i32 noundef %call3.i) #10
  br label %cleanup

if.end29:                                         ; preds = %ab8500_audio_init_audioblock.exit
  %call30 = call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 12, i32 noundef 1) #7
  %call31 = call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 11, i32 noundef 1) #7
  %call32 = call i32 @snd_soc_add_component_controls(ptr noundef %component, ptr noundef nonnull @ab8500_filter_controls, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %do.end37, label %if.end38

do.end37:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.463, ptr noundef nonnull @.str.454, i32 noundef %call32) #10
  br label %cleanup

if.end38:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %anc_fir_values = getelementptr inbounds %struct.ab8500_codec_drvdata, ptr %5, i32 0, i32 4
  %38 = ptrtoint ptr %anc_fir_values to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr getelementptr inbounds ([3 x %struct.snd_kcontrol_new], ptr @ab8500_filter_controls, i32 0, i32 1, i32 2), ptr %anc_fir_values, align 4
  %anc_iir_values = getelementptr inbounds %struct.ab8500_codec_drvdata, ptr %5, i32 0, i32 5
  %39 = ptrtoint ptr %anc_iir_values to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr getelementptr inbounds ([3 x %struct.snd_kcontrol_new], ptr @ab8500_filter_controls, i32 0, i32 2, i32 2), ptr %anc_iir_values, align 4
  %sid_fir_values = getelementptr inbounds %struct.ab8500_codec_drvdata, ptr %5, i32 0, i32 2
  %40 = ptrtoint ptr %sid_fir_values to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr getelementptr inbounds ([3 x %struct.snd_kcontrol_new], ptr @ab8500_filter_controls, i32 1, i32 0, i32 2), ptr %sid_fir_values, align 4
  %call43 = call i32 @snd_soc_dapm_disable_pin(ptr noundef %dapm.i, ptr noundef nonnull @.str.287) #7
  %ctrl_lock = getelementptr inbounds %struct.ab8500_codec_drvdata, ptr %5, i32 0, i32 1
  call void @__mutex_init(ptr noundef %ctrl_lock, ptr noundef nonnull @.str.465, ptr noundef nonnull @ab8500_codec_probe.__key) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %do.end37, %do.end28, %do.end19, %do.end10
  %retval.0 = phi i32 [ %call6, %do.end10 ], [ -22, %do.end19 ], [ %call3.i, %do.end28 ], [ %call32, %do.end37 ], [ %call32, %if.end38 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %codec_pdata) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @anc_status_control_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %ctrl_lock = getelementptr inbounds %struct.ab8500_codec_drvdata, ptr %5, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %ctrl_lock, i32 noundef 0) #7
  %anc_status = getelementptr inbounds %struct.ab8500_codec_drvdata, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %anc_status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %anc_status, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %value, align 8
  tail call void @mutex_unlock(ptr noundef %ctrl_lock) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @anc_status_control_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %dapm.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 17
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @anc_status_control_put.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@anc_status_control_put, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !1305

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @anc_status_control_put.__UNIQUE_ID_ddebug298, ptr noundef %3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.285) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %ctrl_lock = getelementptr inbounds %struct.ab8500_codec_drvdata, ptr %5, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %ctrl_lock, i32 noundef 0) #7
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %7)
  %cmp = icmp ugt i32 %7, 6
  br i1 %cmp, label %do.end.cleanup.thread_crit_edge, label %if.end9

do.end.cleanup.thread_crit_edge:                  ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.end9:                                          ; preds = %do.end
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.555)
  switch i32 %7, label %do.end17 [
    i32 3, label %if.end9.lor.end_crit_edge
    i32 1, label %if.end9.lor.rhs_crit_edge
    i32 5, label %if.end9.lor.rhs_crit_edge147
  ]

if.end9.lor.rhs_crit_edge147:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs

if.end9.lor.rhs_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.rhs

if.end9.lor.end_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end

do.end17:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx18 = getelementptr [7 x ptr], ptr @enum_anc_state, i32 0, i32 %7
  %9 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx18, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.286, ptr noundef nonnull @.str.285, ptr noundef %10) #10
  br label %cleanup.thread

lor.rhs:                                          ; preds = %if.end9.lor.rhs_crit_edge, %if.end9.lor.rhs_crit_edge147
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp21 = icmp eq i32 %7, 1
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end9.lor.end_crit_edge
  %11 = phi i1 [ %cmp21, %lor.rhs ], [ true, %if.end9.lor.end_crit_edge ]
  %call28 = tail call i32 @snd_soc_dapm_force_enable_pin(ptr noundef %dapm.i, ptr noundef nonnull @.str.287) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp slt i32 %call28, 0
  br i1 %cmp29, label %do.end33, label %if.end34

do.end33:                                         ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.289, ptr noundef nonnull @.str.285, i32 noundef %call28) #10
  br label %cleanup.thread

if.end34:                                         ; preds = %lor.end
  %12 = and i32 %7, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %13 = icmp eq i32 %12, 1
  %call35 = tail call i32 @snd_soc_dapm_sync(ptr noundef %dapm.i) #7
  tail call fastcc void @anc_configure(ptr noundef %1, i1 noundef zeroext %11, i1 noundef zeroext %13)
  br i1 %11, label %if.then39, label %if.end34.if.end49_crit_edge

if.end34.if.end49_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

if.then39:                                        ; preds = %if.end34
  %anc_status = getelementptr inbounds %struct.ab8500_codec_drvdata, ptr %5, i32 0, i32 6
  %14 = ptrtoint ptr %anc_status to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %anc_status, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.556)
  switch i32 %15, label %if.then45 [
    i32 6, label %if.then39.if.end49.sink.split_crit_edge
    i32 2, label %if.then39.if.end49_crit_edge
  ]

if.then39.if.end49_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

if.then39.if.end49.sink.split_crit_edge:          ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49.sink.split

if.then45:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49.sink.split

if.end49.sink.split:                              ; preds = %if.then45, %if.then39.if.end49.sink.split_crit_edge
  %.sink = phi i32 [ 4, %if.then45 ], [ 2, %if.then39.if.end49.sink.split_crit_edge ]
  %17 = ptrtoint ptr %anc_status to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %.sink, ptr %anc_status, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.end49.sink.split, %if.then39.if.end49_crit_edge, %if.end34.if.end49_crit_edge
  %18 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.557)
  switch i32 %7, label %if.end49.cleanup_crit_edge [
    i32 5, label %if.end49.if.then51_crit_edge
    i32 1, label %if.end49.if.then51_crit_edge148
  ]

if.end49.if.then51_crit_edge148:                  ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then51

if.end49.if.then51_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then51

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then51:                                        ; preds = %if.end49.if.then51_crit_edge, %if.end49.if.then51_crit_edge148
  %anc_status52 = getelementptr inbounds %struct.ab8500_codec_drvdata, ptr %5, i32 0, i32 6
  %19 = ptrtoint ptr %anc_status52 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %anc_status52, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.558)
  switch i32 %20, label %if.then59 [
    i32 4, label %if.then51.cleanup.sink.split_crit_edge
    i32 2, label %if.then51.cleanup_crit_edge
  ]

if.then51.cleanup_crit_edge:                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then51.cleanup.sink.split_crit_edge:           ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then59:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

cleanup.thread:                                   ; preds = %do.end33, %do.end17, %do.end.cleanup.thread_crit_edge
  %status.0.ph = phi i32 [ -22, %do.end.cleanup.thread_crit_edge ], [ %call28, %do.end33 ], [ -22, %do.end17 ]
  tail call void @mutex_unlock(ptr noundef %ctrl_lock) #7
  br label %do.end71

cleanup.sink.split:                               ; preds = %if.then59, %if.then51.cleanup.sink.split_crit_edge
  %.sink146 = phi i32 [ 6, %if.then59 ], [ 2, %if.then51.cleanup.sink.split_crit_edge ]
  %22 = ptrtoint ptr %anc_status52 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %.sink146, ptr %anc_status52, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then51.cleanup_crit_edge, %if.end49.cleanup_crit_edge
  %call64 = tail call i32 @snd_soc_dapm_disable_pin(ptr noundef %dapm.i, ptr noundef nonnull @.str.287) #7
  %call65 = tail call i32 @snd_soc_dapm_sync(ptr noundef %dapm.i) #7
  tail call void @mutex_unlock(ptr noundef %ctrl_lock) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %cmp67 = icmp slt i32 %call64, 0
  br i1 %cmp67, label %cleanup.do.end71_crit_edge, label %cleanup.do.body73_crit_edge

cleanup.do.body73_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body73

cleanup.do.end71_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end71

do.end71:                                         ; preds = %cleanup.do.end71_crit_edge, %cleanup.thread
  %status.0141 = phi i32 [ %status.0.ph, %cleanup.thread ], [ %call64, %cleanup.do.end71_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.292, ptr noundef nonnull @.str.285, i32 noundef %status.0141) #10
  br label %do.body73

do.body73:                                        ; preds = %do.end71, %cleanup.do.body73_crit_edge
  %cmp67143 = phi i32 [ 1, %cleanup.do.body73_crit_edge ], [ %status.0141, %do.end71 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @anc_status_control_put.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@anc_status_control_put, %if.then85)) #7
          to label %do.end88 [label %if.then85], !srcloc !1305

if.then85:                                        ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @anc_status_control_put.__UNIQUE_ID_ddebug299, ptr noundef %3, ptr noundef nonnull @.str.294, ptr noundef nonnull @.str.285) #7
  br label %do.end88

do.end88:                                         ; preds = %if.then85, %do.body73
  ret i32 %cmp67143
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_xr_sx(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_xr_sx(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_xr_sx(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sid_status_control_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %ctrl_lock = getelementptr inbounds %struct.ab8500_codec_drvdata, ptr %5, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %ctrl_lock, i32 noundef 0) #7
  %sid_status = getelementptr inbounds %struct.ab8500_codec_drvdata, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %sid_status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sid_status, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %value, align 8
  tail call void @mutex_unlock(ptr noundef %ctrl_lock) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sid_status_control_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sid_status_control_put.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sid_status_control_put, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !1305

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sid_status_control_put.__UNIQUE_ID_ddebug296, ptr noundef %7, ptr noundef nonnull @.str.304, ptr noundef nonnull @.str.303) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.not = icmp eq i32 %9, 1
  br i1 %cmp.not, label %if.end11, label %do.end9

do.end9:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.305, ptr noundef nonnull @.str.303, ptr noundef nonnull @.str.298) #10
  br label %cleanup

if.end11:                                         ; preds = %do.end
  %ctrl_lock = getelementptr inbounds %struct.ab8500_codec_drvdata, ptr %5, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %ctrl_lock, i32 noundef 0) #7
  %call12 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 100) #7
  %and = and i32 %call12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp13.not = icmp eq i32 %and, 0
  br i1 %cmp13.not, label %if.end23, label %if.then14

if.then14:                                        ; preds = %if.end11
  %and15 = and i32 %call12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %cmp16 = icmp eq i32 %and15, 0
  br i1 %cmp16, label %do.end20, label %if.then14.out_crit_edge

if.then14.out_crit_edge:                          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

do.end20:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.307, ptr noundef nonnull @.str.303) #10
  br label %out

if.end23:                                         ; preds = %if.end11
  %call24 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 97, i32 noundef 0) #7
  %sid_fir_values = getelementptr inbounds %struct.ab8500_codec_drvdata, ptr %5, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end23
  %param.080 = phi i32 [ 0, %if.end23 ], [ %inc, %for.body.for.body_crit_edge ]
  %14 = ptrtoint ptr %sid_fir_values to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sid_fir_values, align 4
  %arrayidx26 = getelementptr i32, ptr %15, i32 %param.080
  %16 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx26, align 4
  %call27 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef %17) #7
  %shr = lshr i32 %call27, 8
  %and28 = and i32 %shr, 255
  %call29 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 98, i32 noundef %and28) #7
  %and30 = and i32 %call27, 255
  %call31 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 99, i32 noundef %and30) #7
  %inc = add nuw nsw i32 %param.080, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %call32 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 97, i32 noundef 128, i32 noundef 128) #7
  %call33 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 97, i32 noundef 128, i32 noundef 0) #7
  %sid_status = getelementptr inbounds %struct.ab8500_codec_drvdata, ptr %5, i32 0, i32 3
  %18 = ptrtoint ptr %sid_status to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %sid_status, align 4
  br label %out

out:                                              ; preds = %for.end, %do.end20, %if.then14.out_crit_edge
  %status.0 = phi i32 [ -1, %do.end20 ], [ 1, %for.end ], [ -16, %if.then14.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %ctrl_lock) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sid_status_control_put.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sid_status_control_put, %if.then47)) #7
          to label %cleanup [label %if.then47], !srcloc !1305

if.then47:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sid_status_control_put.__UNIQUE_ID_ddebug297, ptr noundef %20, ptr noundef nonnull @.str.309, ptr noundef nonnull @.str.303) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then47, %out, %do.end9
  %retval.0 = phi i32 [ -5, %do.end9 ], [ %status.0, %if.then47 ], [ %status.0, %out ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_strobe(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_strobe(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_force_enable_pin(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @anc_configure(ptr noundef %component, i1 noundef zeroext %apply_fir, i1 noundef zeroext %apply_iir) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @anc_configure.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@anc_configure, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !1305

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @anc_configure.__UNIQUE_ID_ddebug294, ptr noundef %5, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.302) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  br i1 %apply_fir, label %for.body16.peel.next, label %if.end21.critedge

for.body16.peel.next:                             ; preds = %do.end
  %call9 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 83, i32 noundef 4, i32 noundef 0) #7
  %call11.c = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 83, i32 noundef 4, i32 noundef 4) #7
  %anc_fir_values = getelementptr inbounds %struct.ab8500_codec_drvdata, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %anc_fir_values to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %anc_fir_values, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %call17.peel = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef %9) #7
  %call.i.peel = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 83, i32 noundef 1, i32 noundef 1) #7
  %shr.i.peel = lshr i32 %call17.peel, 8
  %and.i.peel = and i32 %shr.i.peel, 255
  %call2.i.peel = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 87, i32 noundef %and.i.peel) #7
  %and3.i.peel = and i32 %call17.peel, 255
  %call4.i.peel = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 88, i32 noundef %and3.i.peel) #7
  br label %anc_fir.exit

anc_fir.exit:                                     ; preds = %anc_fir.exit.anc_fir.exit_crit_edge, %for.body16.peel.next
  %par.091 = phi i32 [ 1, %for.body16.peel.next ], [ %inc, %anc_fir.exit.anc_fir.exit_crit_edge ]
  %10 = ptrtoint ptr %anc_fir_values to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %anc_fir_values, align 4
  %arrayidx = getelementptr i32, ptr %11, i32 %par.091
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %call17 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef %13) #7
  %shr.i = lshr i32 %call17, 8
  %and.i = and i32 %shr.i, 255
  %call2.i = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 87, i32 noundef %and.i) #7
  %and3.i = and i32 %call17, 255
  %call4.i = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 88, i32 noundef %and3.i) #7
  %inc = add nuw nsw i32 %par.091, 1
  %exitcond.not = icmp eq i32 %inc, 15
  br i1 %exitcond.not, label %anc_fir.exit.if.end.i.1_crit_edge, label %anc_fir.exit.anc_fir.exit_crit_edge, !llvm.loop !1307

anc_fir.exit.anc_fir.exit_crit_edge:              ; preds = %anc_fir.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %anc_fir.exit

anc_fir.exit.if.end.i.1_crit_edge:                ; preds = %anc_fir.exit
  br label %if.end.i.1

if.end.i.1:                                       ; preds = %if.end.i.1.if.end.i.1_crit_edge, %anc_fir.exit.if.end.i.1_crit_edge
  %par.091.1 = phi i32 [ %inc.1, %if.end.i.1.if.end.i.1_crit_edge ], [ 0, %anc_fir.exit.if.end.i.1_crit_edge ]
  %14 = ptrtoint ptr %anc_fir_values to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %anc_fir_values, align 4
  %arrayidx.1 = getelementptr i32, ptr %15, i32 %par.091.1
  %16 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.1, align 4
  %call17.1 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef %17) #7
  %shr.i.1 = lshr i32 %call17.1, 8
  %and.i.1 = and i32 %shr.i.1, 255
  %call2.i.1 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 87, i32 noundef %and.i.1) #7
  %and3.i.1 = and i32 %call17.1, 255
  %call4.i.1 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 88, i32 noundef %and3.i.1) #7
  %cmp5.i.1 = icmp eq i32 %par.091.1, 14
  %inc.1 = add nuw nsw i32 %par.091.1, 1
  br i1 %cmp5.i.1, label %for.inc18.1, label %if.end.i.1.if.end.i.1_crit_edge

if.end.i.1.if.end.i.1_crit_edge:                  ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.1

for.inc18.1:                                      ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #9
  %call9.i.1 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 83, i32 noundef 1, i32 noundef 0) #7
  br label %if.end21

if.end21.critedge:                                ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %call11.c79 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 83, i32 noundef 4, i32 noundef 4) #7
  br label %if.end21

if.end21:                                         ; preds = %if.end21.critedge, %for.inc18.1
  br i1 %apply_iir, label %for.cond24.preheader, label %if.end21.do.body39_crit_edge

if.end21.do.body39_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body39

for.cond24.preheader:                             ; preds = %if.end21
  %anc_iir_values = getelementptr inbounds %struct.ab8500_codec_drvdata, ptr %3, i32 0, i32 5
  br label %if.then.i83.peel

if.then.i83.peel:                                 ; preds = %for.inc35.if.then.i83.peel_crit_edge, %for.cond24.preheader
  %bnk.194 = phi i32 [ 0, %for.cond24.preheader ], [ %inc36, %for.inc35.if.then.i83.peel_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bnk.194)
  %cmp1.i = icmp eq i32 %bnk.194, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %bnk.194)
  %cmp18.i = icmp eq i32 %bnk.194, 1
  %18 = ptrtoint ptr %anc_iir_values to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %anc_iir_values, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %call31.peel = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef %21) #7
  br i1 %cmp1.i, label %if.then2.i.peel, label %if.else.i.peel

if.else.i.peel:                                   ; preds = %if.then.i83.peel
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i85.peel = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 83, i32 noundef 8, i32 noundef 8) #7
  br label %for.body29.peel.next

if.then2.i.peel:                                  ; preds = %if.then.i83.peel
  call void @__sanitizer_cov_trace_pc() #9
  %call.i84.peel = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 83, i32 noundef 2, i32 noundef 2) #7
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 4000, i32 noundef 2) #7
  %call3.i.peel = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 83, i32 noundef 2, i32 noundef 0) #7
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 4000, i32 noundef 2) #7
  br label %for.body29.peel.next

for.body29.peel.next:                             ; preds = %if.then2.i.peel, %if.else.i.peel
  %shr12.i.peel = lshr i32 %call31.peel, 8
  %and13.i.peel = and i32 %shr12.i.peel, 255
  %call14.i.peel = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 89, i32 noundef %and13.i.peel) #7
  %and15.i.peel = and i32 %call31.peel, 255
  %call16.i.peel = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 90, i32 noundef %and15.i.peel) #7
  br label %if.else5.i

if.else5.i:                                       ; preds = %anc_iir.exit.if.else5.i_crit_edge, %for.body29.peel.next
  %par.193 = phi i32 [ 1, %for.body29.peel.next ], [ %inc33, %anc_iir.exit.if.else5.i_crit_edge ]
  %22 = ptrtoint ptr %anc_iir_values to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %anc_iir_values, align 4
  %arrayidx30 = getelementptr i32, ptr %23, i32 %par.193
  %24 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx30, align 4
  %call31 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef %25) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %par.193)
  %cmp6.i = icmp ugt i32 %par.193, 3
  br i1 %cmp6.i, label %if.then7.i, label %if.else5.i.if.end11.i_crit_edge

if.else5.i.if.end11.i_crit_edge:                  ; preds = %if.else5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

if.then7.i:                                       ; preds = %if.else5.i
  call void @__sanitizer_cov_trace_pc() #9
  %call8.i = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 89, i32 noundef 0) #7
  %shr.i86 = lshr i32 %call31, 16
  %and.i87 = and i32 %shr.i86, 255
  %call9.i88 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 90, i32 noundef %and.i87) #7
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then7.i, %if.else5.i.if.end11.i_crit_edge
  %shr12.i = lshr i32 %call31, 8
  %and13.i = and i32 %shr12.i, 255
  %call14.i = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 89, i32 noundef %and13.i) #7
  %and15.i = and i32 %call31, 255
  %call16.i = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 90, i32 noundef %and15.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 23, i32 %par.193)
  %cmp17.i = icmp eq i32 %par.193, 23
  %or.cond.i = and i1 %cmp18.i, %cmp17.i
  br i1 %or.cond.i, label %for.inc35.thread, label %anc_iir.exit

for.inc35.thread:                                 ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  %call20.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 83, i32 noundef 8, i32 noundef 0) #7
  br label %do.body39

anc_iir.exit:                                     ; preds = %if.end11.i
  %inc33 = add nuw nsw i32 %par.193, 1
  %exitcond97.not = icmp eq i32 %inc33, 24
  br i1 %exitcond97.not, label %for.inc35, label %anc_iir.exit.if.else5.i_crit_edge, !llvm.loop !1309

anc_iir.exit.if.else5.i_crit_edge:                ; preds = %anc_iir.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else5.i

for.inc35:                                        ; preds = %anc_iir.exit
  %inc36 = add nuw nsw i32 %bnk.194, 1
  %exitcond99.not = icmp eq i32 %inc36, 2
  br i1 %exitcond99.not, label %for.inc35.do.body39_crit_edge, label %for.inc35.if.then.i83.peel_crit_edge

for.inc35.if.then.i83.peel_crit_edge:             ; preds = %for.inc35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i83.peel

for.inc35.do.body39_crit_edge:                    ; preds = %for.inc35
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body39

do.body39:                                        ; preds = %for.inc35.do.body39_crit_edge, %for.inc35.thread, %if.end21.do.body39_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @anc_configure.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@anc_configure, %if.then51)) #7
          to label %do.end55 [label %if.then51], !srcloc !1305

if.then51:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @anc_configure.__UNIQUE_ID_ddebug295, ptr noundef %27, ptr noundef nonnull @.str.294, ptr noundef nonnull @.str.302) #7
  br label %do.end55

do.end55:                                         ; preds = %if.then51, %do.body39
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_disable_pin(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dapm_clock_event(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dapm_regulator_event(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ab8500_audio_setup_mics(ptr noundef %component, ptr nocapture noundef readonly %amics) unnamed_addr #2 align 64 {
entry:
  %value8 = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %value8) #7
  %0 = ptrtoint ptr %value8 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %value8, align 1, !annotation !1306
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_audio_setup_mics.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ab8500_audio_setup_mics, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !1305

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_audio_setup_mics.__UNIQUE_ID_ddebug301, ptr noundef %2, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.478) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %dev4 = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %3 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev4, align 4
  %call5 = call i32 @abx500_get_register_interruptible(ptr noundef %4, i8 noundef zeroext 16, i8 noundef zeroext 19, ptr noundef nonnull %value8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %5 = ptrtoint ptr %value8 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %value8, align 1
  %7 = or i8 %6, 84
  %8 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev4, align 4
  %call12 = call i32 @abx500_set_register_interruptible(ptr noundef %9, i8 noundef zeroext 16, i8 noundef zeroext 19, i8 noundef zeroext %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.end7.cleanup_crit_edge, label %do.body17

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body17:                                        ; preds = %if.end7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_audio_setup_mics.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ab8500_audio_setup_mics, %if.then29)) #7
          to label %do.end34 [label %if.then29], !srcloc !1305

if.then29:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev4, align 4
  %mic1a_micbias = getelementptr inbounds %struct.amic_settings, ptr %amics, i32 0, i32 2
  %12 = ptrtoint ptr %mic1a_micbias to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mic1a_micbias, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %switch.selectcmp.i = icmp eq i32 %13, 1
  %switch.select.i = select i1 %switch.selectcmp.i, ptr @.str.486, ptr @.str.487
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %switch.selectcmp2.i = icmp eq i32 %13, 0
  %switch.select3.i = select i1 %switch.selectcmp2.i, ptr @.str.485, ptr %switch.select.i
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_audio_setup_mics.__UNIQUE_ID_ddebug302, ptr noundef %11, ptr noundef nonnull @.str.479, ptr noundef nonnull @.str.478, ptr noundef nonnull %switch.select3.i) #7
  br label %do.end34

do.end34:                                         ; preds = %if.then29, %do.body17
  %mic1a_micbias35 = getelementptr inbounds %struct.amic_settings, ptr %amics, i32 0, i32 2
  %14 = ptrtoint ptr %mic1a_micbias35 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mic1a_micbias35, align 4
  %arrayidx = getelementptr [2 x %struct.snd_soc_dapm_route], ptr @ab8500_dapm_routes_mic1a_vamicx, i32 0, i32 %15
  %call36 = call i32 @snd_soc_dapm_add_routes(ptr noundef %dapm.i, ptr noundef %arrayidx, i32 noundef 1) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_audio_setup_mics.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ab8500_audio_setup_mics, %if.then49)) #7
          to label %do.end54 [label %if.then49], !srcloc !1305

if.then49:                                        ; preds = %do.end34
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev4, align 4
  %mic1b_micbias = getelementptr inbounds %struct.amic_settings, ptr %amics, i32 0, i32 3
  %18 = ptrtoint ptr %mic1b_micbias to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mic1b_micbias, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %switch.selectcmp.i185 = icmp eq i32 %19, 1
  %switch.select.i186 = select i1 %switch.selectcmp.i185, ptr @.str.486, ptr @.str.487
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %switch.selectcmp2.i187 = icmp eq i32 %19, 0
  %switch.select3.i188 = select i1 %switch.selectcmp2.i187, ptr @.str.485, ptr %switch.select.i186
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_audio_setup_mics.__UNIQUE_ID_ddebug303, ptr noundef %17, ptr noundef nonnull @.str.480, ptr noundef nonnull @.str.478, ptr noundef nonnull %switch.select3.i188) #7
  br label %do.end54

do.end54:                                         ; preds = %if.then49, %do.end34
  %mic1b_micbias55 = getelementptr inbounds %struct.amic_settings, ptr %amics, i32 0, i32 3
  %20 = ptrtoint ptr %mic1b_micbias55 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mic1b_micbias55, align 4
  %arrayidx56 = getelementptr [2 x %struct.snd_soc_dapm_route], ptr @ab8500_dapm_routes_mic1b_vamicx, i32 0, i32 %21
  %call57 = call i32 @snd_soc_dapm_add_routes(ptr noundef %dapm.i, ptr noundef %arrayidx56, i32 noundef 1) #7
  %or58 = or i32 %call57, %call36
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_audio_setup_mics.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ab8500_audio_setup_mics, %if.then71)) #7
          to label %do.end76 [label %if.then71], !srcloc !1305

if.then71:                                        ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev4, align 4
  %mic2_micbias = getelementptr inbounds %struct.amic_settings, ptr %amics, i32 0, i32 4
  %24 = ptrtoint ptr %mic2_micbias to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mic2_micbias, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %switch.selectcmp.i189 = icmp eq i32 %25, 1
  %switch.select.i190 = select i1 %switch.selectcmp.i189, ptr @.str.486, ptr @.str.487
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %switch.selectcmp2.i191 = icmp eq i32 %25, 0
  %switch.select3.i192 = select i1 %switch.selectcmp2.i191, ptr @.str.485, ptr %switch.select.i190
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_audio_setup_mics.__UNIQUE_ID_ddebug304, ptr noundef %23, ptr noundef nonnull @.str.481, ptr noundef nonnull @.str.478, ptr noundef nonnull %switch.select3.i192) #7
  br label %do.end76

do.end76:                                         ; preds = %if.then71, %do.end54
  %mic2_micbias77 = getelementptr inbounds %struct.amic_settings, ptr %amics, i32 0, i32 4
  %26 = ptrtoint ptr %mic2_micbias77 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mic2_micbias77, align 4
  %arrayidx78 = getelementptr [2 x %struct.snd_soc_dapm_route], ptr @ab8500_dapm_routes_mic2_vamicx, i32 0, i32 %27
  %call79 = call i32 @snd_soc_dapm_add_routes(ptr noundef %dapm.i, ptr noundef %arrayidx78, i32 noundef 1) #7
  %or80 = or i32 %or58, %call79
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or80)
  %cmp81 = icmp slt i32 %or80, 0
  br i1 %cmp81, label %do.end86, label %do.body89

do.end86:                                         ; preds = %do.end76
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev4, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.482, ptr noundef nonnull @.str.478, i32 noundef %or80) #10
  br label %cleanup

do.body89:                                        ; preds = %do.end76
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_audio_setup_mics.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ab8500_audio_setup_mics, %if.then101)) #7
          to label %do.end106 [label %if.then101], !srcloc !1305

if.then101:                                       ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev4, align 4
  %32 = ptrtoint ptr %amics to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %amics, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %switch.selectcmp.i193 = icmp eq i32 %33, 0
  %switch.select.i194 = select i1 %switch.selectcmp.i193, ptr @.str.489, ptr @.str.487
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %switch.selectcmp2.i195 = icmp eq i32 %33, 1
  %switch.select3.i196 = select i1 %switch.selectcmp2.i195, ptr @.str.488, ptr %switch.select.i194
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_audio_setup_mics.__UNIQUE_ID_ddebug305, ptr noundef %31, ptr noundef nonnull @.str.483, ptr noundef nonnull @.str.478, ptr noundef nonnull %switch.select3.i196) #7
  br label %do.end106

do.end106:                                        ; preds = %if.then101, %do.body89
  %34 = ptrtoint ptr %amics to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %amics, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp108 = icmp eq i32 %35, 1
  %cond = select i1 %cmp108, i32 0, i32 7
  %call110 = call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 20, i32 noundef 7, i32 noundef %cond) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_audio_setup_mics.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ab8500_audio_setup_mics, %if.then123)) #7
          to label %do.end128 [label %if.then123], !srcloc !1305

if.then123:                                       ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev4, align 4
  %mic2_type = getelementptr inbounds %struct.amic_settings, ptr %amics, i32 0, i32 1
  %38 = ptrtoint ptr %mic2_type to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mic2_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %switch.selectcmp.i197 = icmp eq i32 %39, 0
  %switch.select.i198 = select i1 %switch.selectcmp.i197, ptr @.str.489, ptr @.str.487
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %39)
  %switch.selectcmp2.i199 = icmp eq i32 %39, 1
  %switch.select3.i200 = select i1 %switch.selectcmp2.i199, ptr @.str.488, ptr %switch.select.i198
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_audio_setup_mics.__UNIQUE_ID_ddebug306, ptr noundef %37, ptr noundef nonnull @.str.484, ptr noundef nonnull @.str.478, ptr noundef nonnull %switch.select3.i200) #7
  br label %do.end128

do.end128:                                        ; preds = %if.then123, %do.end106
  %mic2_type129 = getelementptr inbounds %struct.amic_settings, ptr %amics, i32 0, i32 1
  %40 = ptrtoint ptr %mic2_type129 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %mic2_type129, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %41)
  %cmp130 = icmp eq i32 %41, 1
  %cond132 = select i1 %cmp130, i32 0, i32 7
  %call133 = call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 21, i32 noundef 7, i32 noundef %cond132) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end128, %do.end86, %if.end7.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %or80, %do.end86 ], [ 0, %do.end128 ], [ %call5, %do.end.cleanup_crit_edge ], [ %call12, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %value8) #7
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_add_component_controls(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_add_routes(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ab8500_sysctrl_write(i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @filter_control_info(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %uinfo) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %2 = inttoptr i32 %1 to ptr
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %3 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %type, align 8
  %count = getelementptr inbounds %struct.filter_control, ptr %2, i32 0, i32 2
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count, align 4
  %count1 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %6 = ptrtoint ptr %count1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %count1, align 8
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %2, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %9 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %value, align 8
  %max = getelementptr inbounds %struct.filter_control, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max, align 4
  %max4 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %12 = ptrtoint ptr %max4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %max4, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @filter_control_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
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
  %ctrl_lock = getelementptr inbounds %struct.ab8500_codec_drvdata, ptr %5, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %ctrl_lock, i32 noundef 0) #7
  %count = getelementptr inbounds %struct.filter_control, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp11.not = icmp eq i32 %10, 0
  br i1 %cmp11.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %value2 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.012 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.filter_control, ptr %8, i32 0, i32 3, i32 %i.012
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %arrayidx3 = getelementptr [128 x i32], ptr %value2, i32 0, i32 %i.012
  %13 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %arrayidx3, align 4
  %inc = add nuw i32 %i.012, 1
  %14 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %count, align 4
  %cmp = icmp ult i32 %inc, %15
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %ctrl_lock) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @filter_control_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
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
  %ctrl_lock = getelementptr inbounds %struct.ab8500_codec_drvdata, ptr %5, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %ctrl_lock, i32 noundef 0) #7
  %count = getelementptr inbounds %struct.filter_control, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp11.not = icmp eq i32 %10, 0
  br i1 %cmp11.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.012 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [128 x i32], ptr %value, i32 0, i32 %i.012
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %arrayidx3 = getelementptr %struct.filter_control, ptr %8, i32 0, i32 3, i32 %i.012
  %13 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %arrayidx3, align 4
  %inc = add nuw i32 %i.012, 1
  %14 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %count, align 4
  %cmp = icmp ult i32 %inc, %15
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %ctrl_lock) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_codec_set_dai_fmt(ptr nocapture noundef readonly %dai, i32 noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_codec_set_dai_fmt.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ab8500_codec_set_dai_fmt, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !1305

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_codec_set_dai_fmt.__UNIQUE_ID_ddebug311, ptr noundef %3, ptr noundef nonnull @.str.507, ptr noundef nonnull @.str.506, i32 noundef %fmt) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %and = and i32 %fmt, 61440
  %4 = add nsw i32 %and, -4096
  %5 = lshr exact i32 %4, 12
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.559)
  switch i32 %5, label %do.end.do.end49_crit_edge [
    i32 0, label %do.body4
    i32 3, label %do.body23
    i32 1, label %do.end.do.end44_crit_edge
    i32 2, label %do.end.do.end44_crit_edge314
  ]

do.end.do.end44_crit_edge314:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end44

do.end.do.end44_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end44

do.end.do.end49_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end49

do.body4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_codec_set_dai_fmt.__UNIQUE_ID_ddebug312, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ab8500_codec_set_dai_fmt, %if.then16)) #7
          to label %sw.epilog [label %if.then16], !srcloc !1305

if.then16:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %component1, align 4
  %dev18 = getelementptr inbounds %struct.snd_soc_component, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev18, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_codec_set_dai_fmt.__UNIQUE_ID_ddebug312, ptr noundef %10, ptr noundef nonnull @.str.508, ptr noundef nonnull @.str.506) #7
  br label %sw.epilog

do.body23:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_codec_set_dai_fmt.__UNIQUE_ID_ddebug313, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ab8500_codec_set_dai_fmt, %if.then35)) #7
          to label %sw.epilog [label %if.then35], !srcloc !1305

if.then35:                                        ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %component1, align 4
  %dev37 = getelementptr inbounds %struct.snd_soc_component, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev37, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_codec_set_dai_fmt.__UNIQUE_ID_ddebug313, ptr noundef %14, ptr noundef nonnull @.str.509, ptr noundef nonnull @.str.506) #7
  br label %sw.epilog

do.end44:                                         ; preds = %do.end.do.end44_crit_edge, %do.end.do.end44_crit_edge314
  %15 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %component1, align 4
  %dev46 = getelementptr inbounds %struct.snd_soc_component, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %dev46 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev46, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.510, ptr noundef nonnull @.str.506) #10
  br label %do.end49

do.end49:                                         ; preds = %do.end44, %do.end.do.end49_crit_edge
  %19 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %component1, align 4
  %dev51 = getelementptr inbounds %struct.snd_soc_component, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %dev51 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev51, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.512, ptr noundef nonnull @.str.506, i32 noundef %and) #10
  br label %cleanup

sw.epilog:                                        ; preds = %if.then35, %do.body23, %if.then16, %do.body4
  %val.0 = phi i32 [ 0, %if.then35 ], [ 2, %if.then16 ], [ 2, %do.body4 ], [ 0, %do.body23 ]
  %call53 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 29, i32 noundef 15, i32 noundef %val.0) #7
  %call54 = tail call fastcc i32 @ab8500_codec_set_dai_clock_gate(ptr noundef %1, i32 noundef %fmt)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end62, label %do.end59

do.end59:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %component1, align 4
  %dev61 = getelementptr inbounds %struct.snd_soc_component, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %dev61 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev61, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.515, ptr noundef nonnull @.str.506, i32 noundef %call54) #10
  br label %cleanup

if.end62:                                         ; preds = %sw.epilog
  %and63 = and i32 %fmt, 15
  %27 = zext i32 %and63 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.560)
  switch i32 %and63, label %do.end130 [
    i32 1, label %do.body65
    i32 4, label %do.body86
    i32 5, label %do.body107
  ]

do.body65:                                        ; preds = %if.end62
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_codec_set_dai_fmt.__UNIQUE_ID_ddebug314, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ab8500_codec_set_dai_fmt, %if.then77)) #7
          to label %do.end82 [label %if.then77], !srcloc !1305

if.then77:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %component1, align 4
  %dev79 = getelementptr inbounds %struct.snd_soc_component, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %dev79 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev79, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_codec_set_dai_fmt.__UNIQUE_ID_ddebug314, ptr noundef %31, ptr noundef nonnull @.str.517, ptr noundef nonnull @.str.506) #7
  br label %do.end82

do.end82:                                         ; preds = %if.then77, %do.body65
  %32 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %component1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_audio_set_bit_delay.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ab8500_codec_set_dai_fmt, %if.then.i)) #7
          to label %ab8500_audio_set_bit_delay.exit [label %if.then.i], !srcloc !1305

if.then.i:                                        ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %component1, align 4
  %dev7.i = getelementptr inbounds %struct.snd_soc_component, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %dev7.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev7.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_audio_set_bit_delay.__UNIQUE_ID_ddebug308, ptr noundef %37, ptr noundef nonnull @.str.536, ptr noundef nonnull @.str.535, i32 noundef 0) #7
  br label %ab8500_audio_set_bit_delay.exit

ab8500_audio_set_bit_delay.exit:                  ; preds = %if.then.i, %do.end82
  %call10.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %33, i32 noundef 28, i32 noundef 16, i32 noundef 0) #7
  br label %sw.epilog134

do.body86:                                        ; preds = %if.end62
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_codec_set_dai_fmt.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ab8500_codec_set_dai_fmt, %if.then98)) #7
          to label %do.end103 [label %if.then98], !srcloc !1305

if.then98:                                        ; preds = %do.body86
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %component1, align 4
  %dev100 = getelementptr inbounds %struct.snd_soc_component, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %dev100 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev100, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_codec_set_dai_fmt.__UNIQUE_ID_ddebug315, ptr noundef %41, ptr noundef nonnull @.str.518, ptr noundef nonnull @.str.506) #7
  br label %do.end103

do.end103:                                        ; preds = %if.then98, %do.body86
  %42 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %component1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_audio_set_bit_delay.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ab8500_codec_set_dai_fmt, %if.then.i296)) #7
          to label %ab8500_audio_set_bit_delay.exit298 [label %if.then.i296], !srcloc !1305

if.then.i296:                                     ; preds = %do.end103
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %component1, align 4
  %dev7.i295 = getelementptr inbounds %struct.snd_soc_component, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %dev7.i295 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev7.i295, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_audio_set_bit_delay.__UNIQUE_ID_ddebug308, ptr noundef %47, ptr noundef nonnull @.str.536, ptr noundef nonnull @.str.535, i32 noundef 1) #7
  br label %ab8500_audio_set_bit_delay.exit298

ab8500_audio_set_bit_delay.exit298:               ; preds = %if.then.i296, %do.end103
  %call10.i297 = tail call i32 @snd_soc_component_update_bits(ptr noundef %43, i32 noundef 28, i32 noundef 16, i32 noundef 16) #7
  br label %sw.epilog134

do.body107:                                       ; preds = %if.end62
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_codec_set_dai_fmt.__UNIQUE_ID_ddebug316, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ab8500_codec_set_dai_fmt, %if.then119)) #7
          to label %do.end124 [label %if.then119], !srcloc !1305

if.then119:                                       ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %component1, align 4
  %dev121 = getelementptr inbounds %struct.snd_soc_component, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %dev121 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev121, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_codec_set_dai_fmt.__UNIQUE_ID_ddebug316, ptr noundef %51, ptr noundef nonnull @.str.519, ptr noundef nonnull @.str.506) #7
  br label %do.end124

do.end124:                                        ; preds = %if.then119, %do.body107
  %52 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %component1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_audio_set_bit_delay.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ab8500_codec_set_dai_fmt, %if.then.i301)) #7
          to label %ab8500_audio_set_bit_delay.exit303 [label %if.then.i301], !srcloc !1305

if.then.i301:                                     ; preds = %do.end124
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %component1, align 4
  %dev7.i300 = getelementptr inbounds %struct.snd_soc_component, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %dev7.i300 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev7.i300, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_audio_set_bit_delay.__UNIQUE_ID_ddebug308, ptr noundef %57, ptr noundef nonnull @.str.536, ptr noundef nonnull @.str.535, i32 noundef 0) #7
  br label %ab8500_audio_set_bit_delay.exit303

ab8500_audio_set_bit_delay.exit303:               ; preds = %if.then.i301, %do.end124
  %call10.i302 = tail call i32 @snd_soc_component_update_bits(ptr noundef %53, i32 noundef 28, i32 noundef 16, i32 noundef 0) #7
  br label %sw.epilog134

do.end130:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %component1, align 4
  %dev132 = getelementptr inbounds %struct.snd_soc_component, ptr %59, i32 0, i32 3
  %60 = ptrtoint ptr %dev132 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev132, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.521, ptr noundef nonnull @.str.506, i32 noundef %and63) #10
  br label %cleanup

sw.epilog134:                                     ; preds = %ab8500_audio_set_bit_delay.exit303, %ab8500_audio_set_bit_delay.exit298, %ab8500_audio_set_bit_delay.exit
  %val.1 = phi i32 [ 4, %ab8500_audio_set_bit_delay.exit303 ], [ 4, %ab8500_audio_set_bit_delay.exit298 ], [ 8, %ab8500_audio_set_bit_delay.exit ]
  %and135 = and i32 %fmt, 3840
  %62 = lshr exact i32 %and135, 8
  %63 = zext i32 %62 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.561)
  switch i32 %62, label %do.end219 [
    i32 0, label %do.body137
    i32 2, label %do.body156
    i32 3, label %do.body176
    i32 4, label %do.body196
  ]

do.body137:                                       ; preds = %sw.epilog134
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_codec_set_dai_fmt.__UNIQUE_ID_ddebug317, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ab8500_codec_set_dai_fmt, %if.then149)) #7
          to label %sw.epilog223 [label %if.then149], !srcloc !1305

if.then149:                                       ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #9
  %64 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %component1, align 4
  %dev151 = getelementptr inbounds %struct.snd_soc_component, ptr %65, i32 0, i32 3
  %66 = ptrtoint ptr %dev151 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev151, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_codec_set_dai_fmt.__UNIQUE_ID_ddebug317, ptr noundef %67, ptr noundef nonnull @.str.523, ptr noundef nonnull @.str.506) #7
  br label %sw.epilog223

do.body156:                                       ; preds = %sw.epilog134
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_codec_set_dai_fmt.__UNIQUE_ID_ddebug318, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ab8500_codec_set_dai_fmt, %if.then168)) #7
          to label %do.end173 [label %if.then168], !srcloc !1305

if.then168:                                       ; preds = %do.body156
  call void @__sanitizer_cov_trace_pc() #9
  %68 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %component1, align 4
  %dev170 = getelementptr inbounds %struct.snd_soc_component, ptr %69, i32 0, i32 3
  %70 = ptrtoint ptr %dev170 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev170, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_codec_set_dai_fmt.__UNIQUE_ID_ddebug318, ptr noundef %71, ptr noundef nonnull @.str.524, ptr noundef nonnull @.str.506) #7
  br label %do.end173

do.end173:                                        ; preds = %if.then168, %do.body156
  %or174 = or i32 %val.1, 64
  br label %sw.epilog223

do.body176:                                       ; preds = %sw.epilog134
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_codec_set_dai_fmt.__UNIQUE_ID_ddebug319, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ab8500_codec_set_dai_fmt, %if.then188)) #7
          to label %do.end193 [label %if.then188], !srcloc !1305

if.then188:                                       ; preds = %do.body176
  call void @__sanitizer_cov_trace_pc() #9
  %72 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %component1, align 4
  %dev190 = getelementptr inbounds %struct.snd_soc_component, ptr %73, i32 0, i32 3
  %74 = ptrtoint ptr %dev190 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev190, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_codec_set_dai_fmt.__UNIQUE_ID_ddebug319, ptr noundef %75, ptr noundef nonnull @.str.525, ptr noundef nonnull @.str.506) #7
  br label %do.end193

do.end193:                                        ; preds = %if.then188, %do.body176
  %or194 = or i32 %val.1, 32
  br label %sw.epilog223

do.body196:                                       ; preds = %sw.epilog134
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_codec_set_dai_fmt.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ab8500_codec_set_dai_fmt, %if.then208)) #7
          to label %do.end213 [label %if.then208], !srcloc !1305

if.then208:                                       ; preds = %do.body196
  call void @__sanitizer_cov_trace_pc() #9
  %76 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %component1, align 4
  %dev210 = getelementptr inbounds %struct.snd_soc_component, ptr %77, i32 0, i32 3
  %78 = ptrtoint ptr %dev210 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev210, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_codec_set_dai_fmt.__UNIQUE_ID_ddebug320, ptr noundef %79, ptr noundef nonnull @.str.526, ptr noundef nonnull @.str.506) #7
  br label %do.end213

do.end213:                                        ; preds = %if.then208, %do.body196
  %or215 = or i32 %val.1, 96
  br label %sw.epilog223

do.end219:                                        ; preds = %sw.epilog134
  call void @__sanitizer_cov_trace_pc() #9
  %80 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %component1, align 4
  %dev221 = getelementptr inbounds %struct.snd_soc_component, ptr %81, i32 0, i32 3
  %82 = ptrtoint ptr %dev221 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev221, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %83, ptr noundef nonnull @.str.528, ptr noundef nonnull @.str.506, i32 noundef %and135) #10
  br label %cleanup

sw.epilog223:                                     ; preds = %do.end213, %do.end193, %do.end173, %if.then149, %do.body137
  %val.2 = phi i32 [ %or215, %do.end213 ], [ %or194, %do.end193 ], [ %or174, %do.end173 ], [ %val.1, %if.then149 ], [ %val.1, %do.body137 ]
  %call224 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 28, i32 noundef 108, i32 noundef %val.2) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog223, %do.end219, %do.end130, %do.end59, %do.end49
  %retval.0 = phi i32 [ -22, %do.end49 ], [ %call54, %do.end59 ], [ -22, %do.end130 ], [ -22, %do.end219 ], [ 0, %sw.epilog223 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ab8500_codec_set_dai_tdm_slot(ptr nocapture noundef readonly %dai, i32 noundef %tx_mask, i32 noundef %rx_mask, i32 noundef %slots, i32 noundef %slot_width) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %2 = add i32 %slot_width, -16
  %3 = tail call i32 @llvm.fshl.i32(i32 %2, i32 %2, i32 30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %3)
  %4 = icmp ult i32 %3, 5
  br i1 %4, label %switch.hole_check, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %switch.hole_check.do.end_crit_edge, %entry.do.end_crit_edge
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.537, ptr noundef nonnull @.str.538, i32 noundef %slot_width) #10
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %3 to i8
  %switch.shifted = lshr i8 23, %switch.maskindex
  %7 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %switch.lobit.not = icmp eq i8 %7, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end_crit_edge, label %switch.lookup

switch.hole_check.do.end_crit_edge:               ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.ab8500_codec_set_dai_tdm_slot, i32 0, i32 %3
  %8 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load = load i32, ptr %switch.gep, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_codec_set_dai_tdm_slot.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ab8500_codec_set_dai_tdm_slot, %if.then)) #7
          to label %do.end13 [label %if.then], !srcloc !1305

if.then:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %component1, align 4
  %dev11 = getelementptr inbounds %struct.snd_soc_component, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev11, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_codec_set_dai_tdm_slot.__UNIQUE_ID_ddebug321, ptr noundef %12, ptr noundef nonnull @.str.539, ptr noundef nonnull @.str.538, i32 noundef %slot_width) #7
  br label %do.end13

do.end13:                                         ; preds = %if.then, %switch.lookup
  %call14 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 28, i32 noundef 3, i32 noundef %switch.load) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_codec_set_dai_tdm_slot.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ab8500_codec_set_dai_tdm_slot, %if.then27)) #7
          to label %do.end32 [label %if.then27], !srcloc !1305

if.then27:                                        ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %component1, align 4
  %dev29 = getelementptr inbounds %struct.snd_soc_component, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev29, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_codec_set_dai_tdm_slot.__UNIQUE_ID_ddebug322, ptr noundef %16, ptr noundef nonnull @.str.540, ptr noundef nonnull @.str.538, i32 noundef %slots) #7
  br label %do.end32

do.end32:                                         ; preds = %if.then27, %do.end13
  %17 = add i32 %slots, -2
  %18 = tail call i32 @llvm.fshl.i32(i32 %17, i32 %17, i32 31)
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %18)
  %19 = icmp ult i32 %18, 8
  br i1 %19, label %switch.hole_check938, label %do.end32.do.end40_crit_edge

do.end32.do.end40_crit_edge:                      ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end40

do.end40:                                         ; preds = %switch.hole_check938.do.end40_crit_edge, %do.end32.do.end40_crit_edge
  %20 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %component1, align 4
  %dev42 = getelementptr inbounds %struct.snd_soc_component, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %dev42 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev42, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.542, ptr noundef nonnull @.str.538, i32 noundef %slots) #10
  br label %cleanup

switch.hole_check938:                             ; preds = %do.end32
  %switch.maskindex940 = trunc i32 %18 to i8
  %switch.shifted941 = lshr i8 -117, %switch.maskindex940
  %24 = and i8 %switch.shifted941, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %switch.lobit942.not = icmp eq i8 %24, 0
  br i1 %switch.lobit942.not, label %switch.hole_check938.do.end40_crit_edge, label %switch.lookup939

switch.hole_check938.do.end40_crit_edge:          ; preds = %switch.hole_check938
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end40

switch.lookup939:                                 ; preds = %switch.hole_check938
  %switch.gep943 = getelementptr inbounds [8 x i32], ptr @switch.table.ab8500_codec_set_dai_tdm_slot.554, i32 0, i32 %18
  %25 = ptrtoint ptr %switch.gep943 to i32
  call void @__asan_load4_noabort(i32 %25)
  %switch.load944 = load i32, ptr %switch.gep943, align 4
  %call44 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 27, i32 noundef 6, i32 noundef %switch.load944) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %tx_mask)
  %tobool45.not = icmp ult i32 %tx_mask, 256
  br i1 %tobool45.not, label %if.end47, label %switch.lookup939.cleanup_crit_edge

switch.lookup939.cleanup_crit_edge:               ; preds = %switch.lookup939
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end47:                                         ; preds = %switch.lookup939
  %shl = shl nuw nsw i32 %tx_mask, 8
  %call.i = tail call i32 @__sw_hweight32(i32 noundef %shl) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_codec_set_dai_tdm_slot.__UNIQUE_ID_ddebug323, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ab8500_codec_set_dai_tdm_slot, %if.then345)) #7
          to label %do.end350 [label %if.then345], !srcloc !1305

if.then345:                                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %component1, align 4
  %dev347 = getelementptr inbounds %struct.snd_soc_component, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %dev347 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev347, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_codec_set_dai_tdm_slot.__UNIQUE_ID_ddebug323, ptr noundef %29, ptr noundef nonnull @.str.544, ptr noundef nonnull @.str.538, i32 noundef %call.i) #7
  br label %do.end350

do.end350:                                        ; preds = %if.then345, %if.end47
  %30 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.562)
  switch i32 %call.i, label %do.end386 [
    i32 0, label %do.end350.sw.epilog389_crit_edge
    i32 1, label %sw.bb351
    i32 2, label %sw.bb356
    i32 8, label %do.body365
  ]

do.end350.sw.epilog389_crit_edge:                 ; preds = %do.end350
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog389

sw.bb351:                                         ; preds = %do.end350
  call void @__sanitizer_cov_trace_pc() #9
  %31 = tail call i32 @llvm.cttz.i32(i32 %shl, i1 true), !range !1310
  %32 = add nuw nsw i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tx_mask)
  %iszero = icmp eq i32 %tx_mask, 0
  %ffs = select i1 %iszero, i32 0, i32 %32
  %call352 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 51, i32 noundef 31, i32 noundef %ffs) #7
  %call353 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 53, i32 noundef 31, i32 noundef %ffs) #7
  %call354 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 52, i32 noundef 31, i32 noundef %ffs) #7
  %call355 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 54, i32 noundef 31, i32 noundef %ffs) #7
  br label %sw.epilog389

sw.bb356:                                         ; preds = %do.end350
  call void @__sanitizer_cov_trace_pc() #9
  %33 = tail call i32 @llvm.cttz.i32(i32 %shl, i1 true), !range !1310
  %34 = add nuw nsw i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tx_mask)
  %iszero357 = icmp eq i32 %tx_mask, 0
  %ffs358 = select i1 %iszero357, i32 0, i32 %34
  %call359 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 51, i32 noundef 31, i32 noundef %ffs358) #7
  %call360 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 53, i32 noundef 31, i32 noundef %ffs358) #7
  %35 = tail call i32 @llvm.ctlz.i32(i32 %shl, i1 true) #7, !range !1311
  %sub.i = sub nuw nsw i32 32, %35
  %cond.i = select i1 %iszero357, i32 0, i32 %sub.i
  %call362 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 52, i32 noundef 31, i32 noundef %cond.i) #7
  %call363 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 54, i32 noundef 31, i32 noundef %cond.i) #7
  br label %sw.epilog389

do.body365:                                       ; preds = %do.end350
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_codec_set_dai_tdm_slot.__UNIQUE_ID_ddebug324, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ab8500_codec_set_dai_tdm_slot, %if.then377)) #7
          to label %sw.epilog389 [label %if.then377], !srcloc !1305

if.then377:                                       ; preds = %do.body365
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %component1, align 4
  %dev379 = getelementptr inbounds %struct.snd_soc_component, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %dev379 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev379, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_codec_set_dai_tdm_slot.__UNIQUE_ID_ddebug324, ptr noundef %39, ptr noundef nonnull @.str.545, ptr noundef nonnull @.str.538) #7
  br label %sw.epilog389

do.end386:                                        ; preds = %do.end350
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %component1, align 4
  %dev388 = getelementptr inbounds %struct.snd_soc_component, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %dev388 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev388, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.547, ptr noundef nonnull @.str.538, i32 noundef %call.i) #10
  br label %cleanup

sw.epilog389:                                     ; preds = %if.then377, %do.body365, %sw.bb356, %sw.bb351, %do.end350.sw.epilog389_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %rx_mask)
  %tobool391.not = icmp ult i32 %rx_mask, 256
  br i1 %tobool391.not, label %cond.false683, label %sw.epilog389.cleanup_crit_edge

sw.epilog389.cleanup_crit_edge:                   ; preds = %sw.epilog389
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cond.false683:                                    ; preds = %sw.epilog389
  %call.i930 = tail call i32 @__sw_hweight32(i32 noundef %rx_mask) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_codec_set_dai_tdm_slot.__UNIQUE_ID_ddebug325, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ab8500_codec_set_dai_tdm_slot, %if.then699)) #7
          to label %do.end704 [label %if.then699], !srcloc !1305

if.then699:                                       ; preds = %cond.false683
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %component1, align 4
  %dev701 = getelementptr inbounds %struct.snd_soc_component, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %dev701 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev701, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_codec_set_dai_tdm_slot.__UNIQUE_ID_ddebug325, ptr noundef %47, ptr noundef nonnull @.str.549, ptr noundef nonnull @.str.538, i32 noundef %call.i930) #7
  br label %do.end704

do.end704:                                        ; preds = %if.then699, %cond.false683
  %48 = zext i32 %call.i930 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.563)
  switch i32 %call.i930, label %do.end764 [
    i32 0, label %do.end704.cleanup_crit_edge
    i32 1, label %sw.bb705
    i32 2, label %sw.bb718
    i32 8, label %do.body743
  ]

do.end704.cleanup_crit_edge:                      ; preds = %do.end704
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb705:                                         ; preds = %do.end704
  call void @__sanitizer_cov_trace_pc() #9
  %49 = tail call i32 @llvm.cttz.i32(i32 %rx_mask, i1 true), !range !1311
  %50 = add nuw nsw i32 %49, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rx_mask)
  %iszero706 = icmp eq i32 %rx_mask, 0
  %ffs707 = select i1 %iszero706, i32 0, i32 %50
  %shr708 = lshr i32 %ffs707, 1
  %add709 = add nuw nsw i32 %shr708, 31
  %and710 = and i32 %ffs707, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and710)
  %tobool711.not = icmp eq i32 %and710, 0
  %cond712 = select i1 %tobool711.not, i32 15, i32 240
  %51 = shl nuw nsw i32 %and710, 2
  %shl716 = shl nuw nsw i32 2, %51
  %call717 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef %add709, i32 noundef %cond712, i32 noundef %shl716) #7
  br label %cleanup

sw.bb718:                                         ; preds = %do.end704
  call void @__sanitizer_cov_trace_pc() #9
  %52 = tail call i32 @llvm.cttz.i32(i32 %rx_mask, i1 true), !range !1311
  %53 = add nuw nsw i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rx_mask)
  %iszero719 = icmp eq i32 %rx_mask, 0
  %ffs720 = select i1 %iszero719, i32 0, i32 %53
  %shr721 = lshr i32 %ffs720, 1
  %add722 = add nuw nsw i32 %shr721, 31
  %and723 = and i32 %ffs720, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and723)
  %tobool724.not = icmp eq i32 %and723, 0
  %cond725 = select i1 %tobool724.not, i32 15, i32 240
  %54 = shl nuw nsw i32 %and723, 2
  %shl729 = shl nuw nsw i32 2, %54
  %call730 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef %add722, i32 noundef %cond725, i32 noundef %shl729) #7
  %55 = tail call i32 @llvm.ctlz.i32(i32 %rx_mask, i1 true) #7, !range !1311
  %sub.i925 = sub nuw nsw i32 32, %55
  %cond.i926 = select i1 %iszero719, i32 0, i32 %sub.i925
  %shr732 = lshr i32 %cond.i926, 1
  %add733 = add nuw nsw i32 %shr732, 31
  %and734 = and i32 %cond.i926, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and734)
  %tobool735.not = icmp eq i32 %and734, 0
  %cond736 = select i1 %tobool735.not, i32 15, i32 240
  %56 = shl nuw nsw i32 %and734, 2
  %shl740 = shl nuw nsw i32 1, %56
  %call741 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef %add733, i32 noundef %cond736, i32 noundef %shl740) #7
  br label %cleanup

do.body743:                                       ; preds = %do.end704
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_codec_set_dai_tdm_slot.__UNIQUE_ID_ddebug326, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ab8500_codec_set_dai_tdm_slot, %if.then755)) #7
          to label %cleanup [label %if.then755], !srcloc !1305

if.then755:                                       ; preds = %do.body743
  call void @__sanitizer_cov_trace_pc() #9
  %57 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %component1, align 4
  %dev757 = getelementptr inbounds %struct.snd_soc_component, ptr %58, i32 0, i32 3
  %59 = ptrtoint ptr %dev757 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev757, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_codec_set_dai_tdm_slot.__UNIQUE_ID_ddebug326, ptr noundef %60, ptr noundef nonnull @.str.550, ptr noundef nonnull @.str.538) #7
  br label %cleanup

do.end764:                                        ; preds = %do.end704
  call void @__sanitizer_cov_trace_pc() #9
  %61 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %component1, align 4
  %dev766 = getelementptr inbounds %struct.snd_soc_component, ptr %62, i32 0, i32 3
  %63 = ptrtoint ptr %dev766 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev766, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.552, ptr noundef nonnull @.str.538, i32 noundef %call.i930) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end764, %if.then755, %do.body743, %sw.bb718, %sw.bb705, %do.end704.cleanup_crit_edge, %sw.epilog389.cleanup_crit_edge, %do.end386, %switch.lookup939.cleanup_crit_edge, %do.end40, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end40 ], [ -22, %do.end386 ], [ -22, %do.end764 ], [ -22, %switch.lookup939.cleanup_crit_edge ], [ -22, %sw.epilog389.cleanup_crit_edge ], [ 0, %if.then755 ], [ 0, %sw.bb718 ], [ 0, %sw.bb705 ], [ %call.i930, %do.end704.cleanup_crit_edge ], [ 0, %do.body743 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ab8500_codec_set_dai_clock_gate(ptr noundef %component, i32 noundef %fmt) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %fmt, 240
  %trunc = trunc i32 %and to i8
  %0 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.564)
  switch i8 %trunc, label %do.end23 [
    i8 16, label %do.body
    i8 0, label %do.body4
  ]

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_codec_set_dai_clock_gate.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ab8500_codec_set_dai_clock_gate, %if.then)) #7
          to label %sw.epilog [label %if.then], !srcloc !1305

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_codec_set_dai_clock_gate.__UNIQUE_ID_ddebug309, ptr noundef %2, ptr noundef nonnull @.str.531, ptr noundef nonnull @.str.530) #7
  br label %sw.epilog

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ab8500_codec_set_dai_clock_gate.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ab8500_codec_set_dai_clock_gate, %if.then16)) #7
          to label %sw.epilog [label %if.then16], !srcloc !1305

if.then16:                                        ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #9
  %dev17 = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %3 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev17, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ab8500_codec_set_dai_clock_gate.__UNIQUE_ID_ddebug310, ptr noundef %4, ptr noundef nonnull @.str.532, ptr noundef nonnull @.str.530) #7
  br label %sw.epilog

do.end23:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev24 = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %5 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev24, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.533, ptr noundef nonnull @.str.530, i32 noundef %and) #10
  br label %cleanup

sw.epilog:                                        ; preds = %if.then16, %do.body4, %if.then, %do.body
  %val.0 = phi i32 [ 128, %if.then16 ], [ 129, %if.then ], [ 129, %do.body ], [ 128, %do.body4 ]
  %call26 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 27, i32 noundef 129, i32 noundef %val.0) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end23
  %retval.0 = phi i32 [ -22, %do.end23 ], [ 0, %sw.epilog ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 700)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 700)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !13, !14, !15, !16, !18, !19, !21, !22, !23, !24, !25, !27, !28, !30, !31, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !396, !398, !400, !402, !404, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !426, !428, !430, !432, !434, !436, !438, !440, !442, !444, !446, !448, !450, !452, !454, !456, !458, !460, !462, !464, !466, !468, !470, !472, !474, !476, !478, !480, !482, !484, !486, !488, !490, !492, !494, !496, !498, !500, !502, !504, !506, !508, !510, !512, !514, !516, !518, !520, !522, !524, !526, !528, !530, !532, !534, !536, !538, !540, !542, !544, !546, !548, !550, !552, !554, !556, !558, !560, !562, !564, !566, !568, !570, !572, !574, !576, !578, !580, !582, !584, !586, !588, !590, !592, !594, !596, !598, !600, !602, !604, !606, !608, !610, !612, !614, !616, !618, !620, !622, !624, !626, !628, !630, !632, !634, !635, !637, !638, !639, !641, !643, !644, !645, !647, !648, !649, !651, !652, !654, !656, !658, !660, !662, !664, !666, !668, !670, !671, !673, !675, !677, !678, !679, !681, !682, !683, !685, !686, !687, !689, !690, !692, !694, !696, !698, !700, !702, !704, !706, !708, !710, !712, !714, !715, !717, !719, !721, !723, !725, !727, !729, !731, !733, !735, !737, !739, !740, !742, !744, !746, !748, !750, !752, !754, !756, !758, !760, !762, !764, !766, !768, !770, !772, !774, !776, !778, !780, !782, !784, !786, !788, !790, !792, !794, !796, !798, !800, !802, !804, !806, !808, !810, !812, !814, !816, !818, !820, !822, !824, !826, !828, !830, !832, !834, !836, !838, !840, !842, !844, !846, !848, !850, !852, !854, !856, !858, !860, !862, !864, !866, !868, !870, !872, !874, !876, !878, !880, !882, !884, !886, !888, !890, !892, !894, !896, !898, !900, !902, !904, !906, !908, !910, !912, !914, !916, !918, !920, !922, !924, !926, !928, !930, !932, !934, !936, !938, !940, !942, !944, !946, !948, !950, !952, !954, !956, !958, !960, !962, !964, !966, !968, !970, !972, !974, !976, !978, !980, !982, !984, !986, !988, !990, !992, !994, !996, !998, !1000, !1002, !1004, !1006, !1008, !1010, !1012, !1014, !1016, !1018, !1020, !1022, !1024, !1026, !1028, !1030, !1032, !1034, !1036, !1038, !1040, !1042, !1044, !1046, !1048, !1050, !1052, !1054, !1056, !1058, !1060, !1062, !1064, !1066, !1068, !1070, !1072, !1074, !1076, !1077, !1079, !1080, !1081, !1083, !1084, !1085, !1087, !1088, !1089, !1091, !1092, !1093, !1095, !1096, !1098, !1100, !1102, !1104, !1106, !1108, !1110, !1111, !1112, !1113, !1115, !1116, !1117, !1118, !1120, !1121, !1123, !1124, !1126, !1127, !1129, !1130, !1132, !1133, !1134, !1136, !1137, !1139, !1140, !1142, !1144, !1146, !1148, !1150, !1152, !1154, !1156, !1158, !1160, !1162, !1164, !1166, !1167, !1168, !1169, !1171, !1172, !1174, !1175, !1177, !1179, !1181, !1183, !1185, !1187, !1189, !1191, !1193, !1194, !1195, !1197, !1198, !1200, !1201, !1203, !1204, !1205, !1207, !1208, !1209, !1211, !1212, !1213, !1215, !1216, !1218, !1219, !1221, !1222, !1224, !1225, !1226, !1228, !1229, !1231, !1232, !1234, !1235, !1237, !1238, !1240, !1241, !1242, !1244, !1245, !1246, !1248, !1249, !1251, !1252, !1253, !1255, !1256, !1257, !1258, !1260, !1261, !1263, !1264, !1265, !1266, !1268, !1269, !1271, !1272, !1274, !1275, !1276, !1278, !1279, !1281, !1282, !1284, !1285, !1286, !1288, !1289, !1291, !1292, !1294, !1295}
!llvm.module.flags = !{!1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303}
!llvm.ident = !{!1304}

!0 = !{ptr @__initcall__kmod_snd_soc_ab8500_codec__330_2575_ab8500_codec_platform_driver_init6, !1, !"__initcall__kmod_snd_soc_ab8500_codec__330_2575_ab8500_codec_platform_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 2575, i32 1}
!2 = !{ptr @__exitcall_ab8500_codec_platform_driver_exit, !1, !"__exitcall_ab8500_codec_platform_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file331, !4, !"__UNIQUE_ID_file331", i1 false, i1 false}
!4 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 2577, i32 1}
!5 = !{ptr @__UNIQUE_ID_license332, !4, !"__UNIQUE_ID_license332", i1 false, i1 false}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 2571, i32 11}
!8 = !{ptr @ab8500_codec_platform_driver, !9, !"ab8500_codec_platform_driver", i1 false, i1 false}
!9 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 2569, i32 31}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 2536, i32 2}
!12 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @ab8500_codec_driver_probe.__UNIQUE_ID_ddebug328, !11, !"__UNIQUE_ID_ddebug328", i1 false, i1 false}
!16 = !{ptr @ab8500_codec_driver_probe._key, !17, !"_key", i1 false, i1 false}
!17 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 2547, i32 20}
!18 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 2551, i32 3}
!21 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @ab8500_codec_driver_probe._entry, !20, !"_entry", i1 false, i1 false}
!24 = !{ptr @ab8500_codec_driver_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 2556, i32 2}
!27 = !{ptr @ab8500_codec_driver_probe.__UNIQUE_ID_ddebug329, !26, !"__UNIQUE_ID_ddebug329", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 2562, i32 3}
!30 = !{ptr @ab8500_codec_driver_probe._entry.10, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @ab8500_codec_driver_probe._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @ab8500_codec_regmap, !33, !"ab8500_codec_regmap", i1 false, i1 false}
!33 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 184, i32 35}
!34 = !{ptr @ab8500_component_driver, !35, !"ab8500_component_driver", i1 false, i1 false}
!35 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 2517, i32 46}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1606, i32 2}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1608, i32 2}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1610, i32 2}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1613, i32 2}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1617, i32 2}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1618, i32 2}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1621, i32 2}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1624, i32 2}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1627, i32 2}
!54 = !{ptr @.str.26, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1630, i32 2}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1631, i32 2}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1632, i32 2}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1633, i32 2}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1636, i32 2}
!64 = !{ptr @.str.33, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1639, i32 2}
!66 = !{ptr @.str.35, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1645, i32 2}
!68 = !{ptr @.str.36, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1647, i32 2}
!70 = !{ptr @.str.37, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1651, i32 2}
!72 = !{ptr @.str.38, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1652, i32 2}
!74 = !{ptr @.str.40, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1655, i32 2}
!76 = !{ptr @.str.42, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1659, i32 2}
!78 = !{ptr @.str.44, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1663, i32 2}
!80 = !{ptr @.str.46, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1667, i32 2}
!82 = !{ptr @.str.48, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1670, i32 2}
!84 = !{ptr @.str.50, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1675, i32 2}
!86 = !{ptr @.str.52, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1679, i32 2}
!88 = !{ptr @.str.54, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1683, i32 2}
!90 = !{ptr @.str.56, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1687, i32 2}
!92 = !{ptr @.str.57, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1688, i32 2}
!94 = !{ptr @.str.59, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1692, i32 2}
!96 = !{ptr @.str.61, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1696, i32 2}
!98 = !{ptr @.str.63, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1699, i32 2}
!100 = !{ptr @.str.65, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1704, i32 2}
!102 = !{ptr @.str.67, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1707, i32 2}
!104 = !{ptr @.str.69, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1712, i32 2}
!106 = !{ptr @.str.71, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1717, i32 2}
!108 = !{ptr @.str.73, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1721, i32 2}
!110 = !{ptr @.str.75, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1726, i32 2}
!112 = !{ptr @.str.77, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1730, i32 2}
!114 = !{ptr @.str.78, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1731, i32 2}
!116 = !{ptr @.str.79, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1732, i32 2}
!118 = !{ptr @.str.81, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1736, i32 2}
!120 = !{ptr @.str.83, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1741, i32 2}
!122 = !{ptr @.str.85, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1745, i32 2}
!124 = !{ptr @.str.86, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1746, i32 2}
!126 = !{ptr @.str.87, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1747, i32 2}
!128 = !{ptr @.str.89, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1750, i32 2}
!130 = !{ptr @.str.91, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1754, i32 2}
!132 = !{ptr @.str.93, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1761, i32 2}
!134 = !{ptr @.str.94, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1762, i32 2}
!136 = !{ptr @.str.96, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1767, i32 2}
!138 = !{ptr @.str.97, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1770, i32 2}
!140 = !{ptr @.str.99, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1775, i32 2}
!142 = !{ptr @.str.100, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1776, i32 2}
!144 = !{ptr @.str.101, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1777, i32 2}
!146 = !{ptr @.str.102, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1778, i32 2}
!148 = !{ptr @.str.103, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1779, i32 2}
!150 = !{ptr @.str.104, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1780, i32 2}
!152 = !{ptr @.str.105, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1781, i32 2}
!154 = !{ptr @.str.106, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1782, i32 2}
!156 = !{ptr @.str.107, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1785, i32 2}
!158 = !{ptr @.str.108, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1786, i32 2}
!160 = !{ptr @.str.109, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1787, i32 2}
!162 = !{ptr @.str.110, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1788, i32 2}
!164 = !{ptr @.str.111, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1789, i32 2}
!166 = !{ptr @.str.112, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1790, i32 2}
!168 = !{ptr @.str.113, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1791, i32 2}
!170 = !{ptr @.str.114, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1792, i32 2}
!172 = !{ptr @.str.115, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1793, i32 2}
!174 = !{ptr @.str.116, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1794, i32 2}
!176 = !{ptr @.str.117, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1795, i32 2}
!178 = !{ptr @.str.118, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1796, i32 2}
!180 = !{ptr @.str.119, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1797, i32 2}
!182 = !{ptr @.str.120, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1798, i32 2}
!184 = !{ptr @.str.121, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1799, i32 2}
!186 = !{ptr @.str.122, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1800, i32 2}
!188 = !{ptr @.str.123, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1801, i32 2}
!190 = !{ptr @.str.124, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1802, i32 2}
!192 = !{ptr @.str.125, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1803, i32 2}
!194 = !{ptr @.str.126, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1804, i32 2}
!196 = !{ptr @.str.127, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1805, i32 2}
!198 = !{ptr @.str.128, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1806, i32 2}
!200 = !{ptr @.str.129, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1807, i32 2}
!202 = !{ptr @.str.130, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1808, i32 2}
!204 = !{ptr @.str.131, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1809, i32 2}
!206 = !{ptr @.str.132, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1810, i32 2}
!208 = !{ptr @.str.133, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1811, i32 2}
!210 = !{ptr @.str.134, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1812, i32 2}
!212 = !{ptr @.str.135, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1813, i32 2}
!214 = !{ptr @.str.136, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1814, i32 2}
!216 = !{ptr @.str.137, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1815, i32 2}
!218 = !{ptr @.str.138, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1816, i32 2}
!220 = !{ptr @.str.139, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1819, i32 2}
!222 = !{ptr @.str.141, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1822, i32 2}
!224 = !{ptr @.str.143, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1825, i32 2}
!226 = !{ptr @.str.145, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1828, i32 2}
!228 = !{ptr @.str.147, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1831, i32 2}
!230 = !{ptr @.str.149, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1834, i32 2}
!232 = !{ptr @.str.151, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1837, i32 2}
!234 = !{ptr @.str.153, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1840, i32 2}
!236 = !{ptr @.str.155, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1845, i32 2}
!238 = !{ptr @.str.157, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1848, i32 2}
!240 = !{ptr @.str.158, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1849, i32 2}
!242 = !{ptr @.str.159, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1850, i32 2}
!244 = !{ptr @.str.161, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1853, i32 2}
!246 = !{ptr @.str.163, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1856, i32 2}
!248 = !{ptr @.str.165, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1859, i32 2}
!250 = !{ptr @.str.167, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1862, i32 2}
!252 = !{ptr @.str.168, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1864, i32 2}
!254 = !{ptr @.str.170, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1867, i32 2}
!256 = !{ptr @.str.172, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1870, i32 2}
!258 = !{ptr @.str.174, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1873, i32 2}
!260 = !{ptr @.str.176, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1878, i32 2}
!262 = !{ptr @.str.177, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1880, i32 2}
!264 = !{ptr @.str.179, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1883, i32 2}
!266 = !{ptr @.str.181, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1886, i32 2}
!268 = !{ptr @.str.183, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1889, i32 2}
!270 = !{ptr @.str.185, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1894, i32 2}
!272 = !{ptr @.str.186, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1896, i32 2}
!274 = !{ptr @ab8500_ctrls, !275, !"ab8500_ctrls", i1 false, i1 false}
!275 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1604, i32 32}
!276 = !{ptr @soc_enum_envdeththre, !277, !"soc_enum_envdeththre", i1 false, i1 false}
!277 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1350, i32 8}
!278 = !{ptr @.str.188, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1346, i32 2}
!280 = !{ptr @.str.189, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1346, i32 11}
!282 = !{ptr @.str.190, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1346, i32 20}
!284 = !{ptr @.str.191, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1346, i32 29}
!286 = !{ptr @.str.192, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1347, i32 2}
!288 = !{ptr @.str.193, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1347, i32 11}
!290 = !{ptr @.str.194, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1347, i32 20}
!292 = !{ptr @.str.195, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1347, i32 29}
!294 = !{ptr @.str.196, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1348, i32 2}
!296 = !{ptr @.str.197, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1348, i32 11}
!298 = !{ptr @.str.198, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1348, i32 20}
!300 = !{ptr @.str.199, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1348, i32 29}
!302 = !{ptr @.str.200, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1349, i32 2}
!304 = !{ptr @.str.201, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1349, i32 11}
!306 = !{ptr @.str.202, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1349, i32 20}
!308 = !{ptr @.str.203, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1349, i32 29}
!310 = !{ptr @enum_envdetthre, !311, !"enum_envdetthre", i1 false, i1 false}
!311 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1345, i32 27}
!312 = !{ptr @soc_enum_envdetlthre, !313, !"soc_enum_envdetlthre", i1 false, i1 false}
!313 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1352, i32 8}
!314 = !{ptr @soc_enum_envdettime, !315, !"soc_enum_envdettime", i1 false, i1 false}
!315 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1359, i32 8}
!316 = !{ptr @.str.204, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1355, i32 2}
!318 = !{ptr @.str.205, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1355, i32 12}
!320 = !{ptr @.str.206, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1355, i32 22}
!322 = !{ptr @.str.207, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1355, i32 32}
!324 = !{ptr @.str.208, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1356, i32 2}
!326 = !{ptr @.str.209, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1356, i32 12}
!328 = !{ptr @.str.210, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1356, i32 22}
!330 = !{ptr @.str.211, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1356, i32 32}
!332 = !{ptr @.str.212, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1357, i32 2}
!334 = !{ptr @.str.213, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1357, i32 12}
!336 = !{ptr @.str.214, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1357, i32 22}
!338 = !{ptr @.str.215, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1357, i32 32}
!340 = !{ptr @.str.216, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1358, i32 2}
!342 = !{ptr @.str.217, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1358, i32 12}
!344 = !{ptr @.str.218, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1358, i32 22}
!346 = !{ptr @.str.219, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1358, i32 32}
!348 = !{ptr @enum_envdettime, !349, !"enum_envdettime", i1 false, i1 false}
!349 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1354, i32 27}
!350 = !{ptr @soc_enum_da12voice, !351, !"soc_enum_da12voice", i1 false, i1 false}
!351 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1386, i32 8}
!352 = !{ptr @.str.220, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1378, i32 45}
!354 = !{ptr @.str.221, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1378, i32 54}
!356 = !{ptr @enum_av_mode, !357, !"enum_av_mode", i1 false, i1 false}
!357 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1378, i32 27}
!358 = !{ptr @soc_enum_hsfadspeed, !359, !"soc_enum_hsfadspeed", i1 false, i1 false}
!359 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1342, i32 8}
!360 = !{ptr @.str.222, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1340, i32 48}
!362 = !{ptr @.str.223, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1340, i32 55}
!364 = !{ptr @.str.224, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1340, i32 64}
!366 = !{ptr @.str.225, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1341, i32 6}
!368 = !{ptr @enum_hsfadspeed, !369, !"enum_hsfadspeed", i1 false, i1 false}
!369 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1340, i32 27}
!370 = !{ptr @soc_enum_da2hslr, !371, !"soc_enum_da2hslr", i1 false, i1 false}
!371 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1397, i32 8}
!372 = !{ptr @.str.226, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1396, i32 45}
!374 = !{ptr @.str.227, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1396, i32 57}
!376 = !{ptr @enum_da2hslr, !377, !"enum_da2hslr", i1 false, i1 false}
!377 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1396, i32 27}
!378 = !{ptr @soc_enum_hsesinc, !379, !"soc_enum_hsesinc", i1 false, i1 false}
!379 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1363, i32 8}
!380 = !{ptr @.str.228, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1362, i32 44}
!382 = !{ptr @.str.229, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1362, i32 54}
!384 = !{ptr @enum_sinc31, !385, !"enum_sinc31", i1 false, i1 false}
!385 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1362, i32 27}
!386 = !{ptr @dax_dig_gain_tlv, !387, !"dax_dig_gain_tlv", i1 false, i1 false}
!387 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1322, i32 8}
!388 = !{ptr @hs_ear_dig_gain_tlv, !389, !"hs_ear_dig_gain_tlv", i1 false, i1 false}
!389 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1325, i32 8}
!390 = !{ptr @hs_gain_tlv, !391, !"hs_gain_tlv", i1 false, i1 false}
!391 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1328, i32 14}
!392 = !{ptr @soc_enum_eardaclowpow, !393, !"soc_enum_eardaclowpow", i1 false, i1 false}
!393 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1373, i32 8}
!394 = !{ptr @.str.230, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1372, i32 44}
!396 = !{ptr @.str.231, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1372, i32 54}
!398 = !{ptr @enum_lowpow, !399, !"enum_lowpow", i1 false, i1 false}
!399 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1372, i32 27}
!400 = !{ptr @soc_enum_eardrvlowpow, !401, !"soc_enum_eardrvlowpow", i1 false, i1 false}
!401 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1375, i32 8}
!402 = !{ptr @soc_enum_da34voice, !403, !"soc_enum_da34voice", i1 false, i1 false}
!403 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1389, i32 8}
!404 = !{ptr @soc_enum_da56voice, !405, !"soc_enum_da56voice", i1 false, i1 false}
!405 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1392, i32 8}
!406 = !{ptr @adx_dig_gain_tlv, !407, !"adx_dig_gain_tlv", i1 false, i1 false}
!407 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1319, i32 8}
!408 = !{ptr @mic_gain_tlv, !409, !"mic_gain_tlv", i1 false, i1 false}
!409 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1333, i32 8}
!410 = !{ptr @soc_enum_ad34voice, !411, !"soc_enum_ad34voice", i1 false, i1 false}
!411 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1381, i32 8}
!412 = !{ptr @soc_enum_dmic34sinc, !413, !"soc_enum_dmic34sinc", i1 false, i1 false}
!413 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1405, i32 8}
!414 = !{ptr @.str.232, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1401, i32 44}
!416 = !{ptr @enum_sinc53, !417, !"enum_sinc53", i1 false, i1 false}
!417 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1401, i32 27}
!418 = !{ptr @soc_enum_dmic12sinc, !419, !"soc_enum_dmic12sinc", i1 false, i1 false}
!419 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1402, i32 8}
!420 = !{ptr @soc_enum_ad12voice, !421, !"soc_enum_ad12voice", i1 false, i1 false}
!421 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1379, i32 8}
!422 = !{ptr @lin_gain_tlv, !423, !"lin_gain_tlv", i1 false, i1 false}
!423 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1335, i32 8}
!424 = !{ptr @lin2hs_gain_tlv, !425, !"lin2hs_gain_tlv", i1 false, i1 false}
!425 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1337, i32 8}
!426 = !{ptr @soc_enum_dmic56sinc, !427, !"soc_enum_dmic56sinc", i1 false, i1 false}
!427 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1408, i32 8}
!428 = !{ptr @soc_enum_fadespeed, !429, !"soc_enum_fadespeed", i1 false, i1 false}
!429 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1367, i32 8}
!430 = !{ptr @.str.233, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1366, i32 47}
!432 = !{ptr @.str.234, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1366, i32 54}
!434 = !{ptr @.str.235, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1366, i32 61}
!436 = !{ptr @.str.236, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1366, i32 68}
!438 = !{ptr @enum_fadespeed, !439, !"enum_fadespeed", i1 false, i1 false}
!439 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1366, i32 27}
!440 = !{ptr @soc_enum_da1slotmap, !441, !"soc_enum_da1slotmap", i1 false, i1 false}
!441 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1445, i32 8}
!442 = !{ptr @.str.237, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1413, i32 54}
!444 = !{ptr @.str.238, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1414, i32 6}
!446 = !{ptr @.str.239, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1415, i32 6}
!448 = !{ptr @.str.240, !449, !"<string literal>", i1 false, i1 false}
!449 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1416, i32 6}
!450 = !{ptr @.str.241, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1417, i32 6}
!452 = !{ptr @.str.242, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1418, i32 6}
!454 = !{ptr @.str.243, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1419, i32 6}
!456 = !{ptr @.str.244, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1420, i32 6}
!458 = !{ptr @.str.245, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1421, i32 6}
!460 = !{ptr @.str.246, !461, !"<string literal>", i1 false, i1 false}
!461 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1422, i32 6}
!462 = !{ptr @.str.247, !463, !"<string literal>", i1 false, i1 false}
!463 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1423, i32 6}
!464 = !{ptr @.str.248, !465, !"<string literal>", i1 false, i1 false}
!465 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1424, i32 6}
!466 = !{ptr @.str.249, !467, !"<string literal>", i1 false, i1 false}
!467 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1425, i32 6}
!468 = !{ptr @.str.250, !469, !"<string literal>", i1 false, i1 false}
!469 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1426, i32 6}
!470 = !{ptr @.str.251, !471, !"<string literal>", i1 false, i1 false}
!471 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1427, i32 6}
!472 = !{ptr @.str.252, !473, !"<string literal>", i1 false, i1 false}
!473 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1428, i32 6}
!474 = !{ptr @.str.253, !475, !"<string literal>", i1 false, i1 false}
!475 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1429, i32 6}
!476 = !{ptr @.str.254, !477, !"<string literal>", i1 false, i1 false}
!477 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1430, i32 6}
!478 = !{ptr @.str.255, !479, !"<string literal>", i1 false, i1 false}
!479 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1431, i32 6}
!480 = !{ptr @.str.256, !481, !"<string literal>", i1 false, i1 false}
!481 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1432, i32 6}
!482 = !{ptr @.str.257, !483, !"<string literal>", i1 false, i1 false}
!483 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1433, i32 6}
!484 = !{ptr @.str.258, !485, !"<string literal>", i1 false, i1 false}
!485 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1434, i32 6}
!486 = !{ptr @.str.259, !487, !"<string literal>", i1 false, i1 false}
!487 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1435, i32 6}
!488 = !{ptr @.str.260, !489, !"<string literal>", i1 false, i1 false}
!489 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1436, i32 6}
!490 = !{ptr @.str.261, !491, !"<string literal>", i1 false, i1 false}
!491 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1437, i32 6}
!492 = !{ptr @.str.262, !493, !"<string literal>", i1 false, i1 false}
!493 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1438, i32 6}
!494 = !{ptr @.str.263, !495, !"<string literal>", i1 false, i1 false}
!495 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1439, i32 6}
!496 = !{ptr @.str.264, !497, !"<string literal>", i1 false, i1 false}
!497 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1440, i32 6}
!498 = !{ptr @.str.265, !499, !"<string literal>", i1 false, i1 false}
!499 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1441, i32 6}
!500 = !{ptr @.str.266, !501, !"<string literal>", i1 false, i1 false}
!501 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1442, i32 6}
!502 = !{ptr @.str.267, !503, !"<string literal>", i1 false, i1 false}
!503 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1443, i32 6}
!504 = !{ptr @.str.268, !505, !"<string literal>", i1 false, i1 false}
!505 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1444, i32 6}
!506 = !{ptr @enum_da_from_slot_map, !507, !"enum_da_from_slot_map", i1 false, i1 false}
!507 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1413, i32 27}
!508 = !{ptr @soc_enum_da2slotmap, !509, !"soc_enum_da2slotmap", i1 false, i1 false}
!509 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1448, i32 8}
!510 = !{ptr @soc_enum_da3slotmap, !511, !"soc_enum_da3slotmap", i1 false, i1 false}
!511 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1451, i32 8}
!512 = !{ptr @soc_enum_da4slotmap, !513, !"soc_enum_da4slotmap", i1 false, i1 false}
!513 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1454, i32 8}
!514 = !{ptr @soc_enum_da5slotmap, !515, !"soc_enum_da5slotmap", i1 false, i1 false}
!515 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1457, i32 8}
!516 = !{ptr @soc_enum_da6slotmap, !517, !"soc_enum_da6slotmap", i1 false, i1 false}
!517 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1460, i32 8}
!518 = !{ptr @soc_enum_da7slotmap, !519, !"soc_enum_da7slotmap", i1 false, i1 false}
!519 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1463, i32 8}
!520 = !{ptr @soc_enum_da8slotmap, !521, !"soc_enum_da8slotmap", i1 false, i1 false}
!521 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1466, i32 8}
!522 = !{ptr @soc_enum_adslot0map, !523, !"soc_enum_adslot0map", i1 false, i1 false}
!523 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1487, i32 8}
!524 = !{ptr @.str.269, !525, !"<string literal>", i1 false, i1 false}
!525 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1471, i32 52}
!526 = !{ptr @.str.270, !527, !"<string literal>", i1 false, i1 false}
!527 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1472, i32 6}
!528 = !{ptr @.str.271, !529, !"<string literal>", i1 false, i1 false}
!529 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1473, i32 6}
!530 = !{ptr @.str.272, !531, !"<string literal>", i1 false, i1 false}
!531 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1474, i32 6}
!532 = !{ptr @.str.273, !533, !"<string literal>", i1 false, i1 false}
!533 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1475, i32 6}
!534 = !{ptr @.str.274, !535, !"<string literal>", i1 false, i1 false}
!535 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1476, i32 6}
!536 = !{ptr @.str.275, !537, !"<string literal>", i1 false, i1 false}
!537 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1477, i32 6}
!538 = !{ptr @.str.276, !539, !"<string literal>", i1 false, i1 false}
!539 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1478, i32 6}
!540 = !{ptr @.str.277, !541, !"<string literal>", i1 false, i1 false}
!541 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1479, i32 6}
!542 = !{ptr @.str.278, !543, !"<string literal>", i1 false, i1 false}
!543 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1483, i32 6}
!544 = !{ptr @enum_ad_to_slot_map, !545, !"enum_ad_to_slot_map", i1 false, i1 false}
!545 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1471, i32 27}
!546 = !{ptr @soc_enum_adslot1map, !547, !"soc_enum_adslot1map", i1 false, i1 false}
!547 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1490, i32 8}
!548 = !{ptr @soc_enum_adslot2map, !549, !"soc_enum_adslot2map", i1 false, i1 false}
!549 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1493, i32 8}
!550 = !{ptr @soc_enum_adslot3map, !551, !"soc_enum_adslot3map", i1 false, i1 false}
!551 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1496, i32 8}
!552 = !{ptr @soc_enum_adslot4map, !553, !"soc_enum_adslot4map", i1 false, i1 false}
!553 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1499, i32 8}
!554 = !{ptr @soc_enum_adslot5map, !555, !"soc_enum_adslot5map", i1 false, i1 false}
!555 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1502, i32 8}
!556 = !{ptr @soc_enum_adslot6map, !557, !"soc_enum_adslot6map", i1 false, i1 false}
!557 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1505, i32 8}
!558 = !{ptr @soc_enum_adslot7map, !559, !"soc_enum_adslot7map", i1 false, i1 false}
!559 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1508, i32 8}
!560 = !{ptr @soc_enum_adslot8map, !561, !"soc_enum_adslot8map", i1 false, i1 false}
!561 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1511, i32 8}
!562 = !{ptr @soc_enum_adslot9map, !563, !"soc_enum_adslot9map", i1 false, i1 false}
!563 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1514, i32 8}
!564 = !{ptr @soc_enum_adslot10map, !565, !"soc_enum_adslot10map", i1 false, i1 false}
!565 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1517, i32 8}
!566 = !{ptr @soc_enum_adslot11map, !567, !"soc_enum_adslot11map", i1 false, i1 false}
!567 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1520, i32 8}
!568 = !{ptr @soc_enum_adslot12map, !569, !"soc_enum_adslot12map", i1 false, i1 false}
!569 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1523, i32 8}
!570 = !{ptr @soc_enum_adslot13map, !571, !"soc_enum_adslot13map", i1 false, i1 false}
!571 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1526, i32 8}
!572 = !{ptr @soc_enum_adslot14map, !573, !"soc_enum_adslot14map", i1 false, i1 false}
!573 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1529, i32 8}
!574 = !{ptr @soc_enum_adslot15map, !575, !"soc_enum_adslot15map", i1 false, i1 false}
!575 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1532, i32 8}
!576 = !{ptr @soc_enum_adslot16map, !577, !"soc_enum_adslot16map", i1 false, i1 false}
!577 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1535, i32 8}
!578 = !{ptr @soc_enum_adslot17map, !579, !"soc_enum_adslot17map", i1 false, i1 false}
!579 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1538, i32 8}
!580 = !{ptr @soc_enum_adslot18map, !581, !"soc_enum_adslot18map", i1 false, i1 false}
!581 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1541, i32 8}
!582 = !{ptr @soc_enum_adslot19map, !583, !"soc_enum_adslot19map", i1 false, i1 false}
!583 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1544, i32 8}
!584 = !{ptr @soc_enum_adslot20map, !585, !"soc_enum_adslot20map", i1 false, i1 false}
!585 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1547, i32 8}
!586 = !{ptr @soc_enum_adslot21map, !587, !"soc_enum_adslot21map", i1 false, i1 false}
!587 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1550, i32 8}
!588 = !{ptr @soc_enum_adslot22map, !589, !"soc_enum_adslot22map", i1 false, i1 false}
!589 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1553, i32 8}
!590 = !{ptr @soc_enum_adslot23map, !591, !"soc_enum_adslot23map", i1 false, i1 false}
!591 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1556, i32 8}
!592 = !{ptr @soc_enum_adslot24map, !593, !"soc_enum_adslot24map", i1 false, i1 false}
!593 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1559, i32 8}
!594 = !{ptr @soc_enum_adslot25map, !595, !"soc_enum_adslot25map", i1 false, i1 false}
!595 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1562, i32 8}
!596 = !{ptr @soc_enum_adslot26map, !597, !"soc_enum_adslot26map", i1 false, i1 false}
!597 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1565, i32 8}
!598 = !{ptr @soc_enum_adslot27map, !599, !"soc_enum_adslot27map", i1 false, i1 false}
!599 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1568, i32 8}
!600 = !{ptr @soc_enum_adslot28map, !601, !"soc_enum_adslot28map", i1 false, i1 false}
!601 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1571, i32 8}
!602 = !{ptr @soc_enum_adslot29map, !603, !"soc_enum_adslot29map", i1 false, i1 false}
!603 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1574, i32 8}
!604 = !{ptr @soc_enum_adslot30map, !605, !"soc_enum_adslot30map", i1 false, i1 false}
!605 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1577, i32 8}
!606 = !{ptr @soc_enum_adslot31map, !607, !"soc_enum_adslot31map", i1 false, i1 false}
!607 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1580, i32 8}
!608 = !{ptr @soc_enum_bfifomask, !609, !"soc_enum_bfifomask", i1 false, i1 false}
!609 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1586, i32 8}
!610 = !{ptr @.str.279, !611, !"<string literal>", i1 false, i1 false}
!611 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1585, i32 42}
!612 = !{ptr @.str.280, !613, !"<string literal>", i1 false, i1 false}
!613 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1585, i32 54}
!614 = !{ptr @enum_mask, !615, !"enum_mask", i1 false, i1 false}
!615 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1585, i32 27}
!616 = !{ptr @soc_enum_bfifo19m2, !617, !"soc_enum_bfifo19m2", i1 false, i1 false}
!617 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1590, i32 8}
!618 = !{ptr @.str.281, !619, !"<string literal>", i1 false, i1 false}
!619 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1589, i32 45}
!620 = !{ptr @.str.282, !621, !"<string literal>", i1 false, i1 false}
!621 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1589, i32 57}
!622 = !{ptr @enum_bitclk0, !623, !"enum_bitclk0", i1 false, i1 false}
!623 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1589, i32 27}
!624 = !{ptr @soc_enum_bfifomast, !625, !"soc_enum_bfifomast", i1 false, i1 false}
!625 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1594, i32 8}
!626 = !{ptr @.str.283, !627, !"<string literal>", i1 false, i1 false}
!627 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1593, i32 49}
!628 = !{ptr @.str.284, !629, !"<string literal>", i1 false, i1 false}
!629 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1593, i32 58}
!630 = !{ptr @enum_slavemaster, !631, !"enum_slavemaster", i1 false, i1 false}
!631 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1593, i32 27}
!632 = !{ptr @.str.285, !633, !"<string literal>", i1 false, i1 false}
!633 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1209, i32 2}
!634 = !{ptr @anc_status_control_put.__UNIQUE_ID_ddebug298, !633, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!635 = !{ptr @.str.286, !636, !"<string literal>", i1 false, i1 false}
!636 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1220, i32 3}
!637 = !{ptr @anc_status_control_put._entry, !636, !"_entry", i1 false, i1 false}
!638 = !{ptr @anc_status_control_put._entry_ptr, !636, !"_entry_ptr", i1 false, i1 false}
!639 = !{ptr @.str.287, !640, !"<string literal>", i1 false, i1 false}
!640 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1228, i32 47}
!641 = !{ptr @.str.289, !642, !"<string literal>", i1 false, i1 false}
!642 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1230, i32 3}
!643 = !{ptr @anc_status_control_put._entry.288, !642, !"_entry", i1 false, i1 false}
!644 = !{ptr @anc_status_control_put._entry_ptr.290, !642, !"_entry_ptr", i1 false, i1 false}
!645 = !{ptr @.str.292, !646, !"<string literal>", i1 false, i1 false}
!646 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1259, i32 3}
!647 = !{ptr @anc_status_control_put._entry.291, !646, !"_entry", i1 false, i1 false}
!648 = !{ptr @anc_status_control_put._entry_ptr.293, !646, !"_entry_ptr", i1 false, i1 false}
!649 = !{ptr @.str.294, !650, !"<string literal>", i1 false, i1 false}
!650 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1262, i32 2}
!651 = !{ptr @anc_status_control_put.__UNIQUE_ID_ddebug299, !650, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!652 = !{ptr @.str.295, !653, !"<string literal>", i1 false, i1 false}
!653 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 91, i32 2}
!654 = !{ptr @.str.296, !655, !"<string literal>", i1 false, i1 false}
!655 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 92, i32 2}
!656 = !{ptr @.str.297, !657, !"<string literal>", i1 false, i1 false}
!657 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 93, i32 2}
!658 = !{ptr @.str.298, !659, !"<string literal>", i1 false, i1 false}
!659 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 94, i32 2}
!660 = !{ptr @.str.299, !661, !"<string literal>", i1 false, i1 false}
!661 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 95, i32 2}
!662 = !{ptr @.str.300, !663, !"<string literal>", i1 false, i1 false}
!663 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 96, i32 2}
!664 = !{ptr @.str.301, !665, !"<string literal>", i1 false, i1 false}
!665 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 97, i32 2}
!666 = !{ptr @enum_anc_state, !667, !"enum_anc_state", i1 false, i1 false}
!667 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 90, i32 27}
!668 = !{ptr @.str.302, !669, !"<string literal>", i1 false, i1 false}
!669 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1084, i32 2}
!670 = !{ptr @anc_configure.__UNIQUE_ID_ddebug294, !669, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!671 = !{ptr @anc_configure.__UNIQUE_ID_ddebug295, !672, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!672 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1109, i32 2}
!673 = !{ptr @soc_enum_ancstate, !674, !"soc_enum_ancstate", i1 false, i1 false}
!674 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1602, i32 8}
!675 = !{ptr @.str.303, !676, !"<string literal>", i1 false, i1 false}
!676 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1138, i32 2}
!677 = !{ptr @.str.304, !676, !"<string literal>", i1 false, i1 false}
!678 = !{ptr @sid_status_control_put.__UNIQUE_ID_ddebug296, !676, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!679 = !{ptr @.str.305, !680, !"<string literal>", i1 false, i1 false}
!680 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1141, i32 3}
!681 = !{ptr @sid_status_control_put._entry, !680, !"_entry", i1 false, i1 false}
!682 = !{ptr @sid_status_control_put._entry_ptr, !680, !"_entry_ptr", i1 false, i1 false}
!683 = !{ptr @.str.307, !684, !"<string literal>", i1 false, i1 false}
!684 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1152, i32 4}
!685 = !{ptr @sid_status_control_put._entry.306, !684, !"_entry", i1 false, i1 false}
!686 = !{ptr @sid_status_control_put._entry_ptr.308, !684, !"_entry_ptr", i1 false, i1 false}
!687 = !{ptr @.str.309, !688, !"<string literal>", i1 false, i1 false}
!688 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1180, i32 2}
!689 = !{ptr @sid_status_control_put.__UNIQUE_ID_ddebug297, !688, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!690 = !{ptr @enum_sid_state, !691, !"enum_sid_state", i1 false, i1 false}
!691 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 79, i32 27}
!692 = !{ptr @soc_enum_sidstate, !693, !"soc_enum_sidstate", i1 false, i1 false}
!693 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1599, i32 8}
!694 = !{ptr @.str.310, !695, !"<string literal>", i1 false, i1 false}
!695 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 368, i32 2}
!696 = !{ptr @.str.311, !697, !"<string literal>", i1 false, i1 false}
!697 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 371, i32 2}
!698 = !{ptr @.str.312, !699, !"<string literal>", i1 false, i1 false}
!699 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 372, i32 2}
!700 = !{ptr @.str.313, !701, !"<string literal>", i1 false, i1 false}
!701 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 373, i32 2}
!702 = !{ptr @.str.314, !703, !"<string literal>", i1 false, i1 false}
!703 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 374, i32 2}
!704 = !{ptr @.str.315, !705, !"<string literal>", i1 false, i1 false}
!705 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 377, i32 2}
!706 = !{ptr @.str.316, !707, !"<string literal>", i1 false, i1 false}
!707 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 380, i32 2}
!708 = !{ptr @.str.317, !709, !"<string literal>", i1 false, i1 false}
!709 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 385, i32 2}
!710 = !{ptr @.str.318, !711, !"<string literal>", i1 false, i1 false}
!711 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 390, i32 2}
!712 = !{ptr @.str.319, !713, !"<string literal>", i1 false, i1 false}
!713 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 391, i32 2}
!714 = !{ptr @.str.320, !713, !"<string literal>", i1 false, i1 false}
!715 = !{ptr @.str.321, !716, !"<string literal>", i1 false, i1 false}
!716 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 393, i32 2}
!717 = !{ptr @.str.322, !718, !"<string literal>", i1 false, i1 false}
!718 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 394, i32 2}
!719 = !{ptr @.str.323, !720, !"<string literal>", i1 false, i1 false}
!720 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 396, i32 2}
!721 = !{ptr @.str.324, !722, !"<string literal>", i1 false, i1 false}
!722 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 397, i32 2}
!723 = !{ptr @.str.325, !724, !"<string literal>", i1 false, i1 false}
!724 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 398, i32 2}
!725 = !{ptr @.str.326, !726, !"<string literal>", i1 false, i1 false}
!726 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 399, i32 2}
!727 = !{ptr @.str.327, !728, !"<string literal>", i1 false, i1 false}
!728 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 400, i32 2}
!729 = !{ptr @.str.328, !730, !"<string literal>", i1 false, i1 false}
!730 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 401, i32 2}
!731 = !{ptr @.str.329, !732, !"<string literal>", i1 false, i1 false}
!732 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 406, i32 2}
!733 = !{ptr @.str.330, !734, !"<string literal>", i1 false, i1 false}
!734 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 407, i32 2}
!735 = !{ptr @.str.331, !736, !"<string literal>", i1 false, i1 false}
!736 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 411, i32 2}
!737 = !{ptr @.str.332, !738, !"<string literal>", i1 false, i1 false}
!738 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 414, i32 2}
!739 = !{ptr @.str.333, !738, !"<string literal>", i1 false, i1 false}
!740 = !{ptr @.str.334, !741, !"<string literal>", i1 false, i1 false}
!741 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 416, i32 2}
!742 = !{ptr @.str.335, !743, !"<string literal>", i1 false, i1 false}
!743 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 419, i32 2}
!744 = !{ptr @.str.336, !745, !"<string literal>", i1 false, i1 false}
!745 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 421, i32 2}
!746 = !{ptr @.str.337, !747, !"<string literal>", i1 false, i1 false}
!747 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 424, i32 2}
!748 = !{ptr @.str.338, !749, !"<string literal>", i1 false, i1 false}
!749 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 426, i32 2}
!750 = !{ptr @.str.339, !751, !"<string literal>", i1 false, i1 false}
!751 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 428, i32 2}
!752 = !{ptr @.str.340, !753, !"<string literal>", i1 false, i1 false}
!753 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 431, i32 2}
!754 = !{ptr @.str.341, !755, !"<string literal>", i1 false, i1 false}
!755 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 434, i32 2}
!756 = !{ptr @.str.342, !757, !"<string literal>", i1 false, i1 false}
!757 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 436, i32 2}
!758 = !{ptr @.str.343, !759, !"<string literal>", i1 false, i1 false}
!759 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 439, i32 2}
!760 = !{ptr @.str.344, !761, !"<string literal>", i1 false, i1 false}
!761 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 442, i32 2}
!762 = !{ptr @.str.345, !763, !"<string literal>", i1 false, i1 false}
!763 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 445, i32 2}
!764 = !{ptr @.str.346, !765, !"<string literal>", i1 false, i1 false}
!765 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 448, i32 2}
!766 = !{ptr @.str.347, !767, !"<string literal>", i1 false, i1 false}
!767 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 451, i32 2}
!768 = !{ptr @.str.348, !769, !"<string literal>", i1 false, i1 false}
!769 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 454, i32 2}
!770 = !{ptr @.str.349, !771, !"<string literal>", i1 false, i1 false}
!771 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 458, i32 2}
!772 = !{ptr @.str.350, !773, !"<string literal>", i1 false, i1 false}
!773 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 459, i32 2}
!774 = !{ptr @.str.351, !775, !"<string literal>", i1 false, i1 false}
!775 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 463, i32 2}
!776 = !{ptr @.str.352, !777, !"<string literal>", i1 false, i1 false}
!777 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 466, i32 2}
!778 = !{ptr @.str.353, !779, !"<string literal>", i1 false, i1 false}
!779 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 469, i32 2}
!780 = !{ptr @.str.354, !781, !"<string literal>", i1 false, i1 false}
!781 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 473, i32 2}
!782 = !{ptr @.str.355, !783, !"<string literal>", i1 false, i1 false}
!783 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 476, i32 2}
!784 = !{ptr @.str.356, !785, !"<string literal>", i1 false, i1 false}
!785 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 480, i32 2}
!786 = !{ptr @.str.357, !787, !"<string literal>", i1 false, i1 false}
!787 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 481, i32 2}
!788 = !{ptr @.str.358, !789, !"<string literal>", i1 false, i1 false}
!789 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 485, i32 2}
!790 = !{ptr @.str.359, !791, !"<string literal>", i1 false, i1 false}
!791 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 487, i32 2}
!792 = !{ptr @.str.360, !793, !"<string literal>", i1 false, i1 false}
!793 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 490, i32 2}
!794 = !{ptr @.str.361, !795, !"<string literal>", i1 false, i1 false}
!795 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 493, i32 2}
!796 = !{ptr @.str.362, !797, !"<string literal>", i1 false, i1 false}
!797 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 497, i32 2}
!798 = !{ptr @.str.363, !799, !"<string literal>", i1 false, i1 false}
!799 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 501, i32 2}
!800 = !{ptr @.str.364, !801, !"<string literal>", i1 false, i1 false}
!801 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 504, i32 2}
!802 = !{ptr @.str.365, !803, !"<string literal>", i1 false, i1 false}
!803 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 507, i32 2}
!804 = !{ptr @.str.366, !805, !"<string literal>", i1 false, i1 false}
!805 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 509, i32 2}
!806 = !{ptr @.str.367, !807, !"<string literal>", i1 false, i1 false}
!807 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 511, i32 2}
!808 = !{ptr @.str.368, !809, !"<string literal>", i1 false, i1 false}
!809 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 514, i32 2}
!810 = !{ptr @.str.369, !811, !"<string literal>", i1 false, i1 false}
!811 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 517, i32 2}
!812 = !{ptr @.str.370, !813, !"<string literal>", i1 false, i1 false}
!813 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 520, i32 2}
!814 = !{ptr @.str.371, !815, !"<string literal>", i1 false, i1 false}
!815 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 523, i32 2}
!816 = !{ptr @.str.372, !817, !"<string literal>", i1 false, i1 false}
!817 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 526, i32 2}
!818 = !{ptr @.str.373, !819, !"<string literal>", i1 false, i1 false}
!819 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 530, i32 2}
!820 = !{ptr @.str.374, !821, !"<string literal>", i1 false, i1 false}
!821 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 531, i32 2}
!822 = !{ptr @.str.375, !823, !"<string literal>", i1 false, i1 false}
!823 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 535, i32 2}
!824 = !{ptr @.str.376, !825, !"<string literal>", i1 false, i1 false}
!825 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 536, i32 2}
!826 = !{ptr @.str.377, !827, !"<string literal>", i1 false, i1 false}
!827 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 538, i32 2}
!828 = !{ptr @.str.378, !829, !"<string literal>", i1 false, i1 false}
!829 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 541, i32 2}
!830 = !{ptr @.str.379, !831, !"<string literal>", i1 false, i1 false}
!831 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 544, i32 2}
!832 = !{ptr @.str.380, !833, !"<string literal>", i1 false, i1 false}
!833 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 547, i32 2}
!834 = !{ptr @.str.381, !835, !"<string literal>", i1 false, i1 false}
!835 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 550, i32 2}
!836 = !{ptr @.str.382, !837, !"<string literal>", i1 false, i1 false}
!837 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 552, i32 2}
!838 = !{ptr @.str.383, !839, !"<string literal>", i1 false, i1 false}
!839 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 554, i32 2}
!840 = !{ptr @.str.384, !841, !"<string literal>", i1 false, i1 false}
!841 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 557, i32 2}
!842 = !{ptr @.str.385, !843, !"<string literal>", i1 false, i1 false}
!843 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 561, i32 2}
!844 = !{ptr @.str.386, !845, !"<string literal>", i1 false, i1 false}
!845 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 562, i32 2}
!846 = !{ptr @.str.387, !847, !"<string literal>", i1 false, i1 false}
!847 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 568, i32 2}
!848 = !{ptr @.str.388, !849, !"<string literal>", i1 false, i1 false}
!849 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 570, i32 2}
!850 = !{ptr @.str.389, !851, !"<string literal>", i1 false, i1 false}
!851 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 573, i32 2}
!852 = !{ptr @.str.390, !853, !"<string literal>", i1 false, i1 false}
!853 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 576, i32 2}
!854 = !{ptr @.str.391, !855, !"<string literal>", i1 false, i1 false}
!855 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 579, i32 2}
!856 = !{ptr @.str.392, !857, !"<string literal>", i1 false, i1 false}
!857 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 582, i32 2}
!858 = !{ptr @.str.393, !859, !"<string literal>", i1 false, i1 false}
!859 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 584, i32 2}
!860 = !{ptr @.str.394, !861, !"<string literal>", i1 false, i1 false}
!861 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 587, i32 2}
!862 = !{ptr @.str.395, !863, !"<string literal>", i1 false, i1 false}
!863 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 595, i32 2}
!864 = !{ptr @.str.396, !865, !"<string literal>", i1 false, i1 false}
!865 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 598, i32 2}
!866 = !{ptr @.str.397, !867, !"<string literal>", i1 false, i1 false}
!867 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 604, i32 2}
!868 = !{ptr @.str.398, !869, !"<string literal>", i1 false, i1 false}
!869 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 605, i32 2}
!870 = !{ptr @.str.399, !871, !"<string literal>", i1 false, i1 false}
!871 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 607, i32 2}
!872 = !{ptr @.str.400, !873, !"<string literal>", i1 false, i1 false}
!873 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 610, i32 2}
!874 = !{ptr @.str.401, !875, !"<string literal>", i1 false, i1 false}
!875 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 613, i32 2}
!876 = !{ptr @.str.402, !877, !"<string literal>", i1 false, i1 false}
!877 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 616, i32 2}
!878 = !{ptr @.str.403, !879, !"<string literal>", i1 false, i1 false}
!879 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 621, i32 2}
!880 = !{ptr @.str.404, !881, !"<string literal>", i1 false, i1 false}
!881 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 624, i32 2}
!882 = !{ptr @.str.405, !883, !"<string literal>", i1 false, i1 false}
!883 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 629, i32 2}
!884 = !{ptr @.str.406, !885, !"<string literal>", i1 false, i1 false}
!885 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 631, i32 2}
!886 = !{ptr @.str.407, !887, !"<string literal>", i1 false, i1 false}
!887 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 634, i32 2}
!888 = !{ptr @.str.408, !889, !"<string literal>", i1 false, i1 false}
!889 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 637, i32 2}
!890 = !{ptr @.str.409, !891, !"<string literal>", i1 false, i1 false}
!891 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 639, i32 2}
!892 = !{ptr @.str.410, !893, !"<string literal>", i1 false, i1 false}
!893 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 641, i32 2}
!894 = !{ptr @.str.411, !895, !"<string literal>", i1 false, i1 false}
!895 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 644, i32 2}
!896 = !{ptr @.str.412, !897, !"<string literal>", i1 false, i1 false}
!897 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 648, i32 2}
!898 = !{ptr @.str.413, !899, !"<string literal>", i1 false, i1 false}
!899 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 654, i32 2}
!900 = !{ptr @.str.414, !901, !"<string literal>", i1 false, i1 false}
!901 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 656, i32 2}
!902 = !{ptr @.str.415, !903, !"<string literal>", i1 false, i1 false}
!903 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 658, i32 2}
!904 = !{ptr @.str.416, !905, !"<string literal>", i1 false, i1 false}
!905 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 661, i32 2}
!906 = !{ptr @.str.417, !907, !"<string literal>", i1 false, i1 false}
!907 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 664, i32 2}
!908 = !{ptr @.str.418, !909, !"<string literal>", i1 false, i1 false}
!909 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 667, i32 2}
!910 = !{ptr @.str.419, !911, !"<string literal>", i1 false, i1 false}
!911 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 673, i32 2}
!912 = !{ptr @.str.420, !913, !"<string literal>", i1 false, i1 false}
!913 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 674, i32 2}
!914 = !{ptr @.str.421, !915, !"<string literal>", i1 false, i1 false}
!915 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 675, i32 2}
!916 = !{ptr @.str.422, !917, !"<string literal>", i1 false, i1 false}
!917 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 676, i32 2}
!918 = !{ptr @.str.423, !919, !"<string literal>", i1 false, i1 false}
!919 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 677, i32 2}
!920 = !{ptr @.str.424, !921, !"<string literal>", i1 false, i1 false}
!921 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 678, i32 2}
!922 = !{ptr @.str.425, !923, !"<string literal>", i1 false, i1 false}
!923 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 680, i32 2}
!924 = !{ptr @.str.426, !925, !"<string literal>", i1 false, i1 false}
!925 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 683, i32 2}
!926 = !{ptr @.str.427, !927, !"<string literal>", i1 false, i1 false}
!927 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 686, i32 2}
!928 = !{ptr @.str.428, !929, !"<string literal>", i1 false, i1 false}
!929 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 689, i32 2}
!930 = !{ptr @.str.429, !931, !"<string literal>", i1 false, i1 false}
!931 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 692, i32 2}
!932 = !{ptr @.str.430, !933, !"<string literal>", i1 false, i1 false}
!933 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 695, i32 2}
!934 = !{ptr @.str.431, !935, !"<string literal>", i1 false, i1 false}
!935 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 698, i32 2}
!936 = !{ptr @.str.432, !937, !"<string literal>", i1 false, i1 false}
!937 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 701, i32 2}
!938 = !{ptr @.str.433, !939, !"<string literal>", i1 false, i1 false}
!939 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 708, i32 2}
!940 = !{ptr @.str.434, !941, !"<string literal>", i1 false, i1 false}
!941 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 710, i32 2}
!942 = !{ptr @.str.435, !943, !"<string literal>", i1 false, i1 false}
!943 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 713, i32 2}
!944 = !{ptr @.str.436, !945, !"<string literal>", i1 false, i1 false}
!945 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 716, i32 2}
!946 = !{ptr @.str.437, !947, !"<string literal>", i1 false, i1 false}
!947 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 722, i32 2}
!948 = !{ptr @.str.438, !949, !"<string literal>", i1 false, i1 false}
!949 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 725, i32 2}
!950 = !{ptr @.str.439, !951, !"<string literal>", i1 false, i1 false}
!951 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 728, i32 2}
!952 = !{ptr @.str.440, !953, !"<string literal>", i1 false, i1 false}
!953 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 731, i32 2}
!954 = !{ptr @.str.441, !955, !"<string literal>", i1 false, i1 false}
!955 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 734, i32 2}
!956 = !{ptr @.str.442, !957, !"<string literal>", i1 false, i1 false}
!957 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 737, i32 2}
!958 = !{ptr @ab8500_dapm_widgets, !959, !"ab8500_dapm_widgets", i1 false, i1 false}
!959 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 365, i32 41}
!960 = !{ptr @dapm_lineout_source, !961, !"dapm_lineout_source", i1 false, i1 false}
!961 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 211, i32 38}
!962 = !{ptr @dapm_enum_lineout_source, !963, !"dapm_enum_lineout_source", i1 false, i1 false}
!963 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 208, i32 8}
!964 = !{ptr @.str.444, !965, !"<string literal>", i1 false, i1 false}
!965 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 207, i32 52}
!966 = !{ptr @.str.445, !967, !"<string literal>", i1 false, i1 false}
!967 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 207, i32 65}
!968 = !{ptr @enum_lineout_source, !969, !"enum_lineout_source", i1 false, i1 false}
!969 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 207, i32 27}
!970 = !{ptr @dapm_ear_lineout_source, !971, !"dapm_ear_lineout_source", i1 false, i1 false}
!971 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 200, i32 38}
!972 = !{ptr @dapm_enum_ear_lineout_source, !973, !"dapm_enum_ear_lineout_source", i1 false, i1 false}
!973 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 198, i32 8}
!974 = !{ptr @enum_ear_lineout_source, !975, !"enum_ear_lineout_source", i1 false, i1 false}
!975 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 196, i32 27}
!976 = !{ptr @dapm_HFl_select, !977, !"dapm_HFl_select", i1 false, i1 false}
!977 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 221, i32 38}
!978 = !{ptr @dapm_enum_HFl_sel, !979, !"dapm_enum_HFl_sel", i1 false, i1 false}
!979 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 219, i32 8}
!980 = !{ptr @enum_HFx_sel, !981, !"enum_HFx_sel", i1 false, i1 false}
!981 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 218, i32 27}
!982 = !{ptr @dapm_HFr_select, !983, !"dapm_HFr_select", i1 false, i1 false}
!983 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 228, i32 38}
!984 = !{ptr @dapm_enum_HFr_sel, !985, !"dapm_enum_HFr_sel", i1 false, i1 false}
!985 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 226, i32 8}
!986 = !{ptr @dapm_pwm2vib1, !987, !"dapm_pwm2vib1", i1 false, i1 false}
!987 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 350, i32 38}
!988 = !{ptr @dapm_enum_pwm2vib1, !989, !"dapm_enum_pwm2vib1", i1 false, i1 false}
!989 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 347, i32 8}
!990 = !{ptr @.str.446, !991, !"<string literal>", i1 false, i1 false}
!991 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 345, i32 60}
!992 = !{ptr @enum_pwm2vibx, !993, !"enum_pwm2vibx", i1 false, i1 false}
!993 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 345, i32 27}
!994 = !{ptr @dapm_pwm2vib2, !995, !"dapm_pwm2vib2", i1 false, i1 false}
!995 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 357, i32 38}
!996 = !{ptr @dapm_enum_pwm2vib2, !997, !"dapm_enum_pwm2vib2", i1 false, i1 false}
!997 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 354, i32 8}
!998 = !{ptr @dapm_mic1ab_mux, !999, !"dapm_mic1ab_mux", i1 false, i1 false}
!999 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 238, i32 38}
!1000 = !{ptr @dapm_enum_mic1ab_sel, !1001, !"dapm_enum_mic1ab_sel", i1 false, i1 false}
!1001 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 236, i32 8}
!1002 = !{ptr @.str.447, !1003, !"<string literal>", i1 false, i1 false}
!1003 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 235, i32 48}
!1004 = !{ptr @.str.448, !1005, !"<string literal>", i1 false, i1 false}
!1005 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 235, i32 58}
!1006 = !{ptr @enum_mic1ab_sel, !1007, !"enum_mic1ab_sel", i1 false, i1 false}
!1007 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 235, i32 27}
!1008 = !{ptr @dapm_ad3_select, !1009, !"dapm_ad3_select", i1 false, i1 false}
!1009 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 246, i32 38}
!1010 = !{ptr @dapm_enum_ad3_sel, !1011, !"dapm_enum_ad3_sel", i1 false, i1 false}
!1011 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 244, i32 8}
!1012 = !{ptr @enum_ad3_sel, !1013, !"enum_ad3_sel", i1 false, i1 false}
!1013 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 243, i32 27}
!1014 = !{ptr @dapm_mic2lr_select, !1015, !"dapm_mic2lr_select", i1 false, i1 false}
!1015 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 282, i32 38}
!1016 = !{ptr @dapm_enum_mic2lr_sel, !1017, !"dapm_enum_mic2lr_sel", i1 false, i1 false}
!1017 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 280, i32 8}
!1018 = !{ptr @enum_mic2lr_sel, !1019, !"enum_mic2lr_sel", i1 false, i1 false}
!1019 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 279, i32 27}
!1020 = !{ptr @dapm_ad1_select, !1021, !"dapm_ad1_select", i1 false, i1 false}
!1021 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 274, i32 38}
!1022 = !{ptr @dapm_enum_ad1_sel, !1023, !"dapm_enum_ad1_sel", i1 false, i1 false}
!1023 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 272, i32 8}
!1024 = !{ptr @enum_ad1_sel, !1025, !"enum_ad1_sel", i1 false, i1 false}
!1025 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 271, i32 27}
!1026 = !{ptr @dapm_ad2_select, !1027, !"dapm_ad2_select", i1 false, i1 false}
!1027 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 290, i32 38}
!1028 = !{ptr @dapm_enum_ad2_sel, !1029, !"dapm_enum_ad2_sel", i1 false, i1 false}
!1029 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 288, i32 8}
!1030 = !{ptr @enum_ad2_sel, !1031, !"enum_ad2_sel", i1 false, i1 false}
!1031 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 287, i32 27}
!1032 = !{ptr @dapm_ad5_select, !1033, !"dapm_ad5_select", i1 false, i1 false}
!1033 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 264, i32 38}
!1034 = !{ptr @dapm_enum_ad5_sel, !1035, !"dapm_enum_ad5_sel", i1 false, i1 false}
!1035 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 262, i32 8}
!1036 = !{ptr @enum_ad5_sel, !1037, !"enum_ad5_sel", i1 false, i1 false}
!1037 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 261, i32 27}
!1038 = !{ptr @dapm_ad6_select, !1039, !"dapm_ad6_select", i1 false, i1 false}
!1039 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 254, i32 38}
!1040 = !{ptr @dapm_enum_ad6_sel, !1041, !"dapm_enum_ad6_sel", i1 false, i1 false}
!1041 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 252, i32 8}
!1042 = !{ptr @enum_ad6_sel, !1043, !"enum_ad6_sel", i1 false, i1 false}
!1043 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 251, i32 27}
!1044 = !{ptr @dapm_anc_in_select, !1045, !"dapm_anc_in_select", i1 false, i1 false}
!1045 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 301, i32 38}
!1046 = !{ptr @dapm_enum_anc_in_sel, !1047, !"dapm_enum_anc_in_sel", i1 false, i1 false}
!1047 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 299, i32 8}
!1048 = !{ptr @.str.449, !1049, !"<string literal>", i1 false, i1 false}
!1049 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 297, i32 48}
!1050 = !{ptr @.str.450, !1051, !"<string literal>", i1 false, i1 false}
!1051 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 298, i32 6}
!1052 = !{ptr @enum_anc_in_sel, !1053, !"enum_anc_in_sel", i1 false, i1 false}
!1053 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 297, i32 27}
!1054 = !{ptr @.str.451, !1055, !"<string literal>", i1 false, i1 false}
!1055 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 307, i32 2}
!1056 = !{ptr @dapm_anc_enable, !1057, !"dapm_anc_enable", i1 false, i1 false}
!1057 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 306, i32 38}
!1058 = !{ptr @dapm_anc_ear_mute, !1059, !"dapm_anc_ear_mute", i1 false, i1 false}
!1059 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 312, i32 38}
!1060 = !{ptr @dapm_stfir1_in_select, !1061, !"dapm_stfir1_in_select", i1 false, i1 false}
!1061 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 327, i32 38}
!1062 = !{ptr @dapm_enum_stfir1_in_sel, !1063, !"dapm_enum_stfir1_in_sel", i1 false, i1 false}
!1063 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 325, i32 8}
!1064 = !{ptr @enum_stfir1_in_sel, !1065, !"enum_stfir1_in_sel", i1 false, i1 false}
!1065 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 322, i32 27}
!1066 = !{ptr @dapm_stfir2_in_select, !1067, !"dapm_stfir2_in_select", i1 false, i1 false}
!1067 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 339, i32 38}
!1068 = !{ptr @dapm_enum_stfir2_in_sel, !1069, !"dapm_enum_stfir2_in_sel", i1 false, i1 false}
!1069 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 337, i32 8}
!1070 = !{ptr @enum_stfir2_in_sel, !1071, !"enum_stfir2_in_sel", i1 false, i1 false}
!1071 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 334, i32 27}
!1072 = !{ptr @ab8500_dapm_routes, !1073, !"ab8500_dapm_routes", i1 false, i1 false}
!1073 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 745, i32 40}
!1074 = !{ptr @.str.454, !1075, !"<string literal>", i1 false, i1 false}
!1075 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 2462, i32 2}
!1076 = !{ptr @ab8500_codec_probe.__UNIQUE_ID_ddebug327, !1075, !"__UNIQUE_ID_ddebug327", i1 false, i1 false}
!1077 = !{ptr @.str.455, !1078, !"<string literal>", i1 false, i1 false}
!1078 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 2468, i32 3}
!1079 = !{ptr @ab8500_codec_probe._entry, !1078, !"_entry", i1 false, i1 false}
!1080 = !{ptr @ab8500_codec_probe._entry_ptr, !1078, !"_entry_ptr", i1 false, i1 false}
!1081 = !{ptr @.str.457, !1082, !"<string literal>", i1 false, i1 false}
!1082 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 2473, i32 3}
!1083 = !{ptr @ab8500_codec_probe._entry.456, !1082, !"_entry", i1 false, i1 false}
!1084 = !{ptr @ab8500_codec_probe._entry_ptr.458, !1082, !"_entry_ptr", i1 false, i1 false}
!1085 = !{ptr @.str.460, !1086, !"<string literal>", i1 false, i1 false}
!1086 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 2480, i32 3}
!1087 = !{ptr @ab8500_codec_probe._entry.459, !1086, !"_entry", i1 false, i1 false}
!1088 = !{ptr @ab8500_codec_probe._entry_ptr.461, !1086, !"_entry_ptr", i1 false, i1 false}
!1089 = !{ptr @.str.463, !1090, !"<string literal>", i1 false, i1 false}
!1090 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 2495, i32 3}
!1091 = !{ptr @ab8500_codec_probe._entry.462, !1090, !"_entry", i1 false, i1 false}
!1092 = !{ptr @ab8500_codec_probe._entry_ptr.464, !1090, !"_entry_ptr", i1 false, i1 false}
!1093 = !{ptr @ab8500_codec_probe.__key, !1094, !"__key", i1 false, i1 false}
!1094 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 2512, i32 2}
!1095 = !{ptr @.str.465, !1094, !"<string literal>", i1 false, i1 false}
!1096 = !{ptr @.str.466, !1097, !"<string literal>", i1 false, i1 false}
!1097 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 2402, i32 32}
!1098 = !{ptr @.str.467, !1099, !"<string literal>", i1 false, i1 false}
!1099 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 2407, i32 32}
!1100 = !{ptr @.str.468, !1101, !"<string literal>", i1 false, i1 false}
!1101 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 2413, i32 32}
!1102 = !{ptr @.str.469, !1103, !"<string literal>", i1 false, i1 false}
!1103 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 2418, i32 32}
!1104 = !{ptr @.str.470, !1105, !"<string literal>", i1 false, i1 false}
!1105 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 2423, i32 32}
!1106 = !{ptr @.str.471, !1107, !"<string literal>", i1 false, i1 false}
!1107 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 2428, i32 32}
!1108 = !{ptr @.str.472, !1109, !"<string literal>", i1 false, i1 false}
!1109 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 2444, i32 4}
!1110 = !{ptr @.str.473, !1109, !"<string literal>", i1 false, i1 false}
!1111 = !{ptr @ab8500_codec_of_probe._entry, !1109, !"_entry", i1 false, i1 false}
!1112 = !{ptr @ab8500_codec_of_probe._entry_ptr, !1109, !"_entry_ptr", i1 false, i1 false}
!1113 = !{ptr @.str.475, !1114, !"<string literal>", i1 false, i1 false}
!1114 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 2447, i32 3}
!1115 = !{ptr @.str.476, !1114, !"<string literal>", i1 false, i1 false}
!1116 = !{ptr @ab8500_codec_of_probe._entry.474, !1114, !"_entry", i1 false, i1 false}
!1117 = !{ptr @ab8500_codec_of_probe._entry_ptr.477, !1114, !"_entry_ptr", i1 false, i1 false}
!1118 = !{ptr @.str.478, !1119, !"<string literal>", i1 false, i1 false}
!1119 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1945, i32 2}
!1120 = !{ptr @ab8500_audio_setup_mics.__UNIQUE_ID_ddebug301, !1119, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!1121 = !{ptr @.str.479, !1122, !"<string literal>", i1 false, i1 false}
!1122 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1963, i32 2}
!1123 = !{ptr @ab8500_audio_setup_mics.__UNIQUE_ID_ddebug302, !1122, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!1124 = !{ptr @.str.480, !1125, !"<string literal>", i1 false, i1 false}
!1125 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1967, i32 2}
!1126 = !{ptr @ab8500_audio_setup_mics.__UNIQUE_ID_ddebug303, !1125, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!1127 = !{ptr @.str.481, !1128, !"<string literal>", i1 false, i1 false}
!1128 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1971, i32 2}
!1129 = !{ptr @ab8500_audio_setup_mics.__UNIQUE_ID_ddebug304, !1128, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!1130 = !{ptr @.str.482, !1131, !"<string literal>", i1 false, i1 false}
!1131 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1976, i32 3}
!1132 = !{ptr @ab8500_audio_setup_mics._entry, !1131, !"_entry", i1 false, i1 false}
!1133 = !{ptr @ab8500_audio_setup_mics._entry_ptr, !1131, !"_entry_ptr", i1 false, i1 false}
!1134 = !{ptr @.str.483, !1135, !"<string literal>", i1 false, i1 false}
!1135 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1983, i32 2}
!1136 = !{ptr @ab8500_audio_setup_mics.__UNIQUE_ID_ddebug305, !1135, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!1137 = !{ptr @.str.484, !1138, !"<string literal>", i1 false, i1 false}
!1138 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1988, i32 2}
!1139 = !{ptr @ab8500_audio_setup_mics.__UNIQUE_ID_ddebug306, !1138, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!1140 = !{ptr @.str.485, !1141, !"<string literal>", i1 false, i1 false}
!1141 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 135, i32 10}
!1142 = !{ptr @.str.486, !1143, !"<string literal>", i1 false, i1 false}
!1143 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 137, i32 10}
!1144 = !{ptr @.str.487, !1145, !"<string literal>", i1 false, i1 false}
!1145 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 139, i32 10}
!1146 = !{ptr @ab8500_dapm_routes_mic1a_vamicx, !1147, !"ab8500_dapm_routes_mic1a_vamicx", i1 false, i1 false}
!1147 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1014, i32 40}
!1148 = !{ptr @ab8500_dapm_routes_mic1b_vamicx, !1149, !"ab8500_dapm_routes_mic1b_vamicx", i1 false, i1 false}
!1149 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1019, i32 40}
!1150 = !{ptr @ab8500_dapm_routes_mic2_vamicx, !1151, !"ab8500_dapm_routes_mic2_vamicx", i1 false, i1 false}
!1151 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1024, i32 40}
!1152 = !{ptr @.str.488, !1153, !"<string literal>", i1 false, i1 false}
!1153 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 147, i32 10}
!1154 = !{ptr @.str.489, !1155, !"<string literal>", i1 false, i1 false}
!1155 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 149, i32 10}
!1156 = !{ptr @.str.490, !1157, !"<string literal>", i1 false, i1 false}
!1157 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 2004, i32 13}
!1158 = !{ptr @.str.491, !1159, !"<string literal>", i1 false, i1 false}
!1159 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 2007, i32 13}
!1160 = !{ptr @.str.492, !1161, !"<string literal>", i1 false, i1 false}
!1161 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 2010, i32 13}
!1162 = !{ptr @.str.493, !1163, !"<string literal>", i1 false, i1 false}
!1163 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 2013, i32 13}
!1164 = !{ptr @.str.494, !1165, !"<string literal>", i1 false, i1 false}
!1165 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 2016, i32 3}
!1166 = !{ptr @.str.495, !1165, !"<string literal>", i1 false, i1 false}
!1167 = !{ptr @ab8500_audio_set_ear_cmv._entry, !1165, !"_entry", i1 false, i1 false}
!1168 = !{ptr @ab8500_audio_set_ear_cmv._entry_ptr, !1165, !"_entry_ptr", i1 false, i1 false}
!1169 = !{ptr @.str.496, !1170, !"<string literal>", i1 false, i1 false}
!1170 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 2021, i32 2}
!1171 = !{ptr @ab8500_audio_set_ear_cmv.__UNIQUE_ID_ddebug307, !1170, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!1172 = !{ptr @.str.497, !1173, !"<string literal>", i1 false, i1 false}
!1173 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1923, i32 2}
!1174 = !{ptr @ab8500_audio_init_audioblock.__UNIQUE_ID_ddebug300, !1173, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!1175 = !{ptr @.str.498, !1176, !"<string literal>", i1 false, i1 false}
!1176 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1901, i32 2}
!1177 = !{ptr @.str.500, !1178, !"<string literal>", i1 false, i1 false}
!1178 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1903, i32 2}
!1179 = !{ptr @.str.502, !1180, !"<string literal>", i1 false, i1 false}
!1180 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1905, i32 2}
!1181 = !{ptr @ab8500_filter_controls, !1182, !"ab8500_filter_controls", i1 false, i1 false}
!1182 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 1900, i32 32}
!1183 = !{ptr @.str.504, !1184, !"<string literal>", i1 false, i1 false}
!1184 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 2370, i32 11}
!1185 = !{ptr @.str.505, !1186, !"<string literal>", i1 false, i1 false}
!1186 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 2383, i32 11}
!1187 = !{ptr @ab8500_codec_dai, !1188, !"ab8500_codec_dai", i1 false, i1 false}
!1188 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 2368, i32 34}
!1189 = !{ptr @ab8500_codec_ops, !1190, !"ab8500_codec_ops", i1 false, i1 false}
!1190 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 2363, i32 37}
!1191 = !{ptr @.str.506, !1192, !"<string literal>", i1 false, i1 false}
!1192 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 2099, i32 2}
!1193 = !{ptr @.str.507, !1192, !"<string literal>", i1 false, i1 false}
!1194 = !{ptr @ab8500_codec_set_dai_fmt.__UNIQUE_ID_ddebug311, !1192, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!1195 = !{ptr @.str.508, !1196, !"<string literal>", i1 false, i1 false}
!1196 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 2109, i32 3}
!1197 = !{ptr @ab8500_codec_set_dai_fmt.__UNIQUE_ID_ddebug312, !1196, !"__UNIQUE_ID_ddebug312", i1 false, i1 false}
!1198 = !{ptr @.str.509, !1199, !"<string literal>", i1 false, i1 false}
!1199 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 2114, i32 3}
!1200 = !{ptr @ab8500_codec_set_dai_fmt.__UNIQUE_ID_ddebug313, !1199, !"__UNIQUE_ID_ddebug313", i1 false, i1 false}
!1201 = !{ptr @.str.510, !1202, !"<string literal>", i1 false, i1 false}
!1202 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 2119, i32 3}
!1203 = !{ptr @ab8500_codec_set_dai_fmt._entry, !1202, !"_entry", i1 false, i1 false}
!1204 = !{ptr @ab8500_codec_set_dai_fmt._entry_ptr, !1202, !"_entry_ptr", i1 false, i1 false}
!1205 = !{ptr @.str.512, !1206, !"<string literal>", i1 false, i1 false}
!1206 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 2124, i32 3}
!1207 = !{ptr @ab8500_codec_set_dai_fmt._entry.511, !1206, !"_entry", i1 false, i1 false}
!1208 = !{ptr @ab8500_codec_set_dai_fmt._entry_ptr.513, !1206, !"_entry_ptr", i1 false, i1 false}
!1209 = !{ptr @.str.515, !1210, !"<string literal>", i1 false, i1 false}
!1210 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 2135, i32 3}
!1211 = !{ptr @ab8500_codec_set_dai_fmt._entry.514, !1210, !"_entry", i1 false, i1 false}
!1212 = !{ptr @ab8500_codec_set_dai_fmt._entry_ptr.516, !1210, !"_entry_ptr", i1 false, i1 false}
!1213 = !{ptr @.str.517, !1214, !"<string literal>", i1 false, i1 false}
!1214 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 2151, i32 3}
!1215 = !{ptr @ab8500_codec_set_dai_fmt.__UNIQUE_ID_ddebug314, !1214, !"__UNIQUE_ID_ddebug314", i1 false, i1 false}
!1216 = !{ptr @.str.518, !1217, !"<string literal>", i1 false, i1 false}
!1217 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 2157, i32 3}
!1218 = !{ptr @ab8500_codec_set_dai_fmt.__UNIQUE_ID_ddebug315, !1217, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!1219 = !{ptr @.str.519, !1220, !"<string literal>", i1 false, i1 false}
!1220 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 2164, i32 3}
!1221 = !{ptr @ab8500_codec_set_dai_fmt.__UNIQUE_ID_ddebug316, !1220, !"__UNIQUE_ID_ddebug316", i1 false, i1 false}
!1222 = !{ptr @.str.521, !1223, !"<string literal>", i1 false, i1 false}
!1223 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 2171, i32 3}
!1224 = !{ptr @ab8500_codec_set_dai_fmt._entry.520, !1223, !"_entry", i1 false, i1 false}
!1225 = !{ptr @ab8500_codec_set_dai_fmt._entry_ptr.522, !1223, !"_entry_ptr", i1 false, i1 false}
!1226 = !{ptr @.str.523, !1227, !"<string literal>", i1 false, i1 false}
!1227 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 2179, i32 3}
!1228 = !{ptr @ab8500_codec_set_dai_fmt.__UNIQUE_ID_ddebug317, !1227, !"__UNIQUE_ID_ddebug317", i1 false, i1 false}
!1229 = !{ptr @.str.524, !1230, !"<string literal>", i1 false, i1 false}
!1230 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 2184, i32 3}
!1231 = !{ptr @ab8500_codec_set_dai_fmt.__UNIQUE_ID_ddebug318, !1230, !"__UNIQUE_ID_ddebug318", i1 false, i1 false}
!1232 = !{ptr @.str.525, !1233, !"<string literal>", i1 false, i1 false}
!1233 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 2190, i32 3}
!1234 = !{ptr @ab8500_codec_set_dai_fmt.__UNIQUE_ID_ddebug319, !1233, !"__UNIQUE_ID_ddebug319", i1 false, i1 false}
!1235 = !{ptr @.str.526, !1236, !"<string literal>", i1 false, i1 false}
!1236 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 2196, i32 3}
!1237 = !{ptr @ab8500_codec_set_dai_fmt.__UNIQUE_ID_ddebug320, !1236, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!1238 = !{ptr @.str.528, !1239, !"<string literal>", i1 false, i1 false}
!1239 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 2203, i32 3}
!1240 = !{ptr @ab8500_codec_set_dai_fmt._entry.527, !1239, !"_entry", i1 false, i1 false}
!1241 = !{ptr @ab8500_codec_set_dai_fmt._entry_ptr.529, !1239, !"_entry_ptr", i1 false, i1 false}
!1242 = !{ptr @.str.530, !1243, !"<string literal>", i1 false, i1 false}
!1243 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 2072, i32 3}
!1244 = !{ptr @.str.531, !1243, !"<string literal>", i1 false, i1 false}
!1245 = !{ptr @ab8500_codec_set_dai_clock_gate.__UNIQUE_ID_ddebug309, !1243, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!1246 = !{ptr @.str.532, !1247, !"<string literal>", i1 false, i1 false}
!1247 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 2077, i32 3}
!1248 = !{ptr @ab8500_codec_set_dai_clock_gate.__UNIQUE_ID_ddebug310, !1247, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!1249 = !{ptr @.str.533, !1250, !"<string literal>", i1 false, i1 false}
!1250 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 2081, i32 3}
!1251 = !{ptr @ab8500_codec_set_dai_clock_gate._entry, !1250, !"_entry", i1 false, i1 false}
!1252 = !{ptr @ab8500_codec_set_dai_clock_gate._entry_ptr, !1250, !"_entry_ptr", i1 false, i1 false}
!1253 = !{ptr @.str.534, !1254, !"<string literal>", i1 false, i1 false}
!1254 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 2045, i32 3}
!1255 = !{ptr @.str.535, !1254, !"<string literal>", i1 false, i1 false}
!1256 = !{ptr @ab8500_audio_set_bit_delay._entry, !1254, !"_entry", i1 false, i1 false}
!1257 = !{ptr @ab8500_audio_set_bit_delay._entry_ptr, !1254, !"_entry_ptr", i1 false, i1 false}
!1258 = !{ptr @.str.536, !1259, !"<string literal>", i1 false, i1 false}
!1259 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 2051, i32 2}
!1260 = !{ptr @ab8500_audio_set_bit_delay.__UNIQUE_ID_ddebug308, !1259, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!1261 = !{ptr @.str.537, !1262, !"<string literal>", i1 false, i1 false}
!1262 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 2239, i32 3}
!1263 = !{ptr @.str.538, !1262, !"<string literal>", i1 false, i1 false}
!1264 = !{ptr @ab8500_codec_set_dai_tdm_slot._entry, !1262, !"_entry", i1 false, i1 false}
!1265 = !{ptr @ab8500_codec_set_dai_tdm_slot._entry_ptr, !1262, !"_entry_ptr", i1 false, i1 false}
!1266 = !{ptr @.str.539, !1267, !"<string literal>", i1 false, i1 false}
!1267 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 2244, i32 2}
!1268 = !{ptr @ab8500_codec_set_dai_tdm_slot.__UNIQUE_ID_ddebug321, !1267, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!1269 = !{ptr @.str.540, !1270, !"<string literal>", i1 false, i1 false}
!1270 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 2249, i32 2}
!1271 = !{ptr @ab8500_codec_set_dai_tdm_slot.__UNIQUE_ID_ddebug322, !1270, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!1272 = !{ptr @.str.542, !1273, !"<string literal>", i1 false, i1 false}
!1273 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 2267, i32 3}
!1274 = !{ptr @ab8500_codec_set_dai_tdm_slot._entry.541, !1273, !"_entry", i1 false, i1 false}
!1275 = !{ptr @ab8500_codec_set_dai_tdm_slot._entry_ptr.543, !1273, !"_entry_ptr", i1 false, i1 false}
!1276 = !{ptr @.str.544, !1277, !"<string literal>", i1 false, i1 false}
!1277 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 2283, i32 2}
!1278 = !{ptr @ab8500_codec_set_dai_tdm_slot.__UNIQUE_ID_ddebug323, !1277, !"__UNIQUE_ID_ddebug323", i1 false, i1 false}
!1279 = !{ptr @.str.545, !1280, !"<string literal>", i1 false, i1 false}
!1280 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 2305, i32 3}
!1281 = !{ptr @ab8500_codec_set_dai_tdm_slot.__UNIQUE_ID_ddebug324, !1280, !"__UNIQUE_ID_ddebug324", i1 false, i1 false}
!1282 = !{ptr @.str.547, !1283, !"<string literal>", i1 false, i1 false}
!1283 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 2310, i32 3}
!1284 = !{ptr @ab8500_codec_set_dai_tdm_slot._entry.546, !1283, !"_entry", i1 false, i1 false}
!1285 = !{ptr @ab8500_codec_set_dai_tdm_slot._entry_ptr.548, !1283, !"_entry_ptr", i1 false, i1 false}
!1286 = !{ptr @.str.549, !1287, !"<string literal>", i1 false, i1 false}
!1287 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 2324, i32 2}
!1288 = !{ptr @ab8500_codec_set_dai_tdm_slot.__UNIQUE_ID_ddebug325, !1287, !"__UNIQUE_ID_ddebug325", i1 false, i1 false}
!1289 = !{ptr @.str.550, !1290, !"<string literal>", i1 false, i1 false}
!1290 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 2349, i32 3}
!1291 = !{ptr @ab8500_codec_set_dai_tdm_slot.__UNIQUE_ID_ddebug326, !1290, !"__UNIQUE_ID_ddebug326", i1 false, i1 false}
!1292 = !{ptr @.str.552, !1293, !"<string literal>", i1 false, i1 false}
!1293 = !{!"../sound/soc/codecs/ab8500-codec.c", i32 2354, i32 3}
!1294 = !{ptr @ab8500_codec_set_dai_tdm_slot._entry.551, !1293, !"_entry", i1 false, i1 false}
!1295 = !{ptr @ab8500_codec_set_dai_tdm_slot._entry_ptr.553, !1293, !"_entry_ptr", i1 false, i1 false}
!1296 = !{i32 1, !"wchar_size", i32 2}
!1297 = !{i32 1, !"min_enum_size", i32 4}
!1298 = !{i32 8, !"branch-target-enforcement", i32 0}
!1299 = !{i32 8, !"sign-return-address", i32 0}
!1300 = !{i32 8, !"sign-return-address-all", i32 0}
!1301 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!1302 = !{i32 7, !"uwtable", i32 1}
!1303 = !{i32 7, !"frame-pointer", i32 2}
!1304 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!1305 = !{i64 2148769698, i64 2148769703, i64 2148769716, i64 2148769760, i64 2148769794, i64 2148769815}
!1306 = !{!"auto-init"}
!1307 = distinct !{!1307, !1308}
!1308 = !{!"llvm.loop.peeled.count", i32 1}
!1309 = distinct !{!1309, !1308}
!1310 = !{i32 8, i32 33}
!1311 = !{i32 0, i32 33}
