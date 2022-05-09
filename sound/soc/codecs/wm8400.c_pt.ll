; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/wm8400.c_pt.bc'
source_filename = "../sound/soc/codecs/wm8400.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.106, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.106 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.98, i32 }
%union.anon.98 = type { ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8, %struct.snd_soc_dobj }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.atomic_t = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.wm8400 = type { ptr, ptr, [6 x %struct.platform_device] }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.92, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.92 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.wm8400_priv = type { ptr, i16, i32, i32, i32, i32 }
%struct.fll_factors = type { i16, i16, i16, i16, i16 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@__initcall__kmod_snd_soc_wm8400__295_1342_wm8400_codec_driver_init6 = internal global ptr @wm8400_codec_driver_init, section ".initcall6.init", align 4
@wm8400_codec_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @wm8400_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_wm8400_codec_driver_exit = internal global ptr @wm8400_codec_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description296 = internal constant [46 x i8] c"snd_soc_wm8400.description=ASoC WM8400 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author297 = internal constant [33 x i8] c"snd_soc_wm8400.author=Mark Brown\00", section ".modinfo", align 1
@__UNIQUE_ID_file298 = internal constant [52 x i8] c"snd_soc_wm8400.file=sound/soc/codecs/snd-soc-wm8400\00", section ".modinfo", align 1
@__UNIQUE_ID_license299 = internal constant [27 x i8] c"snd_soc_wm8400.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias300 = internal constant [43 x i8] c"snd_soc_wm8400.alias=platform:wm8400-codec\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wm8400-codec\00", [19 x i8] zeroinitializer }, align 32
@soc_component_dev_wm8400 = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @wm8400_snd_controls, i32 60, ptr @wm8400_dapm_widgets, i32 48, ptr @wm8400_dapm_routes, i32 87, ptr @wm8400_component_probe, ptr @wm8400_component_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm8400_set_bias_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 124, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@wm8400_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr @.str.315, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @wm8400_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.316, i64 68719476804, i32 2046, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.317, i64 68719476804, i32 2046, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@wm8400_snd_controls = internal constant { [60 x %struct.snd_kcontrol_new], [704 x i8] } { [60 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.1, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.2, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.3 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.4, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.5 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.6, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.7 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.8, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @out_mix_tlv }, i32 ptrtoint (ptr @.compoundliteral.9 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.10, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @out_mix_tlv }, i32 ptrtoint (ptr @.compoundliteral.11 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.12, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @out_mix_tlv }, i32 ptrtoint (ptr @.compoundliteral.13 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.14, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @out_mix_tlv }, i32 ptrtoint (ptr @.compoundliteral.15 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.16, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @out_mix_tlv }, i32 ptrtoint (ptr @.compoundliteral.17 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.18, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @out_mix_tlv }, i32 ptrtoint (ptr @.compoundliteral.19 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.20, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @out_mix_tlv }, i32 ptrtoint (ptr @.compoundliteral.21 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.22, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @out_mix_tlv }, i32 ptrtoint (ptr @.compoundliteral.23 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.24, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @out_mix_tlv }, i32 ptrtoint (ptr @.compoundliteral.25 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.26, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @out_mix_tlv }, i32 ptrtoint (ptr @.compoundliteral.27 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.28, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @out_mix_tlv }, i32 ptrtoint (ptr @.compoundliteral.29 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.30, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @out_mix_tlv }, i32 ptrtoint (ptr @.compoundliteral.31 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.32, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @wm8400_outpga_put_volsw_vu, %union.anon.98 { ptr @out_pga_tlv }, i32 ptrtoint (ptr @.compoundliteral.33 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.34, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.35 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.36, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @wm8400_outpga_put_volsw_vu, %union.anon.98 { ptr @out_pga_tlv }, i32 ptrtoint (ptr @.compoundliteral.37 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.38, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.39 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.40, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @wm8400_outpga_put_volsw_vu, %union.anon.98 { ptr @out_pga_tlv }, i32 ptrtoint (ptr @.compoundliteral.41 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.42, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.43 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.44, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @wm8400_outpga_put_volsw_vu, %union.anon.98 { ptr @out_pga_tlv }, i32 ptrtoint (ptr @.compoundliteral.45 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.46, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.47 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.48, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.49 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.50, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.51 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.52, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.53 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.54, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.55 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.56, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.57 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.58, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.59 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.60, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.61 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.62, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.63 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.64, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.65 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.66, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.67 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.68, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.69 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.70, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.71 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.72, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.73 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.74, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.75 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.76, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @wm8400_outpga_put_volsw_vu, %union.anon.98 { ptr @out_dac_tlv }, i32 ptrtoint (ptr @.compoundliteral.77 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.78, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @wm8400_outpga_put_volsw_vu, %union.anon.98 { ptr @out_dac_tlv }, i32 ptrtoint (ptr @.compoundliteral.79 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.80, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @wm8400_left_digital_sidetone_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.81, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @wm8400_right_digital_sidetone_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.82, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @out_sidetone_tlv }, i32 ptrtoint (ptr @.compoundliteral.83 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.84, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @out_sidetone_tlv }, i32 ptrtoint (ptr @.compoundliteral.85 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.86, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.87 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.88, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @wm8400_right_adcmode_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.89, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @wm8400_outpga_put_volsw_vu, %union.anon.98 { ptr @in_adc_tlv }, i32 ptrtoint (ptr @.compoundliteral.90 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.91, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @wm8400_outpga_put_volsw_vu, %union.anon.98 { ptr @in_adc_tlv }, i32 ptrtoint (ptr @.compoundliteral.92 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.93, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @wm8400_outpga_put_volsw_vu, %union.anon.98 { ptr @in_pga_tlv }, i32 ptrtoint (ptr @.compoundliteral.94 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.95, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.96 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.97, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.98 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.99, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @wm8400_outpga_put_volsw_vu, %union.anon.98 { ptr @in_pga_tlv }, i32 ptrtoint (ptr @.compoundliteral.100 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.101, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.102 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.103, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.104 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.105, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @wm8400_outpga_put_volsw_vu, %union.anon.98 { ptr @in_pga_tlv }, i32 ptrtoint (ptr @.compoundliteral.106 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.107, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.108 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.109, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.110 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.111, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @wm8400_outpga_put_volsw_vu, %union.anon.98 { ptr @in_pga_tlv }, i32 ptrtoint (ptr @.compoundliteral.112 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.113, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.114 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.115, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.116 to i32) }], [704 x i8] zeroinitializer }, align 32
@wm8400_dapm_routes = internal constant { [87 x %struct.snd_soc_dapm_route], [1140 x i8] } { [87 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.174, ptr null, ptr @.str.146, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.174, ptr null, ptr @.str.148, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.118, ptr null, ptr @.str.133, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.119, ptr null, ptr @.str.133, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.136, ptr @.str.176, ptr @.str.125, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.136, ptr @.str.178, ptr @.str.126, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.137, ptr @.str.180, ptr @.str.127, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.137, ptr @.str.182, ptr @.str.128, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.142, ptr null, ptr @.str.140, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.142, ptr @.str.192, ptr @.str.150, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.142, ptr @.str.194, ptr @.str.126, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.142, ptr @.str.196, ptr @.str.136, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.142, ptr @.str.198, ptr @.str.137, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.143, ptr null, ptr @.str.140, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.143, ptr @.str.201, ptr @.str.142, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.143, ptr @.str.203, ptr @.str.136, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.143, ptr @.str.203, ptr @.str.137, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.143, ptr @.str.202, ptr @.str.128, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.143, ptr @.str.202, ptr @.str.130, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.118, ptr null, ptr @.str.143, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.138, ptr @.str.184, ptr @.str.131, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.138, ptr @.str.186, ptr @.str.132, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.139, ptr @.str.188, ptr @.str.129, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.139, ptr @.str.190, ptr @.str.130, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.144, ptr null, ptr @.str.141, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.144, ptr @.str.204, ptr @.str.158, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.144, ptr @.str.206, ptr @.str.132, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.144, ptr @.str.208, ptr @.str.138, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.144, ptr @.str.210, ptr @.str.139, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.145, ptr null, ptr @.str.141, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.145, ptr @.str.212, ptr @.str.144, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.145, ptr @.str.213, ptr @.str.138, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.145, ptr @.str.213, ptr @.str.139, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.145, ptr @.str.202, ptr @.str.128, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.145, ptr @.str.202, ptr @.str.130, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.119, ptr null, ptr @.str.145, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.150, ptr @.str.230, ptr @.str.129, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.150, ptr @.str.232, ptr @.str.127, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.150, ptr @.str.236, ptr @.str.136, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.150, ptr @.str.234, ptr @.str.138, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.150, ptr @.str.226, ptr @.str.145, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.150, ptr @.str.228, ptr @.str.143, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.150, ptr @.str.238, ptr @.str.146, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.158, ptr @.str.294, ptr @.str.129, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.158, ptr @.str.292, ptr @.str.127, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.158, ptr @.str.296, ptr @.str.136, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.158, ptr @.str.298, ptr @.str.138, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.158, ptr @.str.290, ptr @.str.145, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.158, ptr @.str.288, ptr @.str.143, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.158, ptr @.str.300, ptr @.str.148, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.154, ptr @.str.256, ptr @.str.126, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.154, ptr @.str.270, ptr @.str.132, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.154, ptr @.str.258, ptr @.str.143, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.154, ptr @.str.268, ptr @.str.145, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.154, ptr @.str.260, ptr @.str.161, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.154, ptr @.str.266, ptr @.str.162, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.154, ptr @.str.264, ptr @.str.148, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.154, ptr @.str.262, ptr @.str.148, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.151, ptr @.str.240, ptr @.str.161, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.151, ptr @.str.242, ptr @.str.162, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.151, ptr @.str.244, ptr @.str.152, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.152, ptr @.str.246, ptr @.str.138, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.152, ptr @.str.248, ptr @.str.136, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.152, ptr @.str.250, ptr @.str.161, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.153, ptr @.str.252, ptr @.str.128, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.153, ptr @.str.254, ptr @.str.161, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.155, ptr @.str.272, ptr @.str.162, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.155, ptr @.str.274, ptr @.str.130, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.157, ptr @.str.282, ptr @.str.162, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.157, ptr @.str.284, ptr @.str.161, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.157, ptr @.str.286, ptr @.str.156, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.156, ptr @.str.276, ptr @.str.136, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.156, ptr @.str.278, ptr @.str.138, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.156, ptr @.str.280, ptr @.str.162, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.161, ptr null, ptr @.str.150, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.162, ptr null, ptr @.str.158, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.159, ptr null, ptr @.str.150, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.160, ptr null, ptr @.str.158, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.164, ptr null, ptr @.str.151, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.165, ptr null, ptr @.str.152, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.166, ptr null, ptr @.str.153, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.167, ptr null, ptr @.str.159, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.168, ptr null, ptr @.str.154, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.170, ptr null, ptr @.str.160, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.171, ptr null, ptr @.str.155, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.172, ptr null, ptr @.str.156, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.173, ptr null, ptr @.str.157, ptr null, %struct.snd_soc_dobj zeroinitializer }], [1140 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"LIN12 PGA Boost\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 41, i32 41, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"LIN34 PGA Boost\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.3 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 41, i32 41, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RIN12 PGA Boost\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.5 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 41, i32 41, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RIN34 PGA Boost\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.7 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 41, i32 41, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"LOMIX LIN3 Bypass Volume\00", [39 x i8] zeroinitializer }, align 32
@out_mix_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -2100, i32 0], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.9 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 47, i32 47, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"LOMIX RIN12 PGA Bypass Volume\00", [34 x i8] zeroinitializer }, align 32
@.compoundliteral.11 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 47, i32 47, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"LOMIX LIN12 PGA Bypass Volume\00", [34 x i8] zeroinitializer }, align 32
@.compoundliteral.13 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 47, i32 47, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"LOMIX RIN3 Bypass Volume\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.15 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 49, i32 49, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"LOMIX AINRMUX Bypass Volume\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.17 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 49, i32 49, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"LOMIX AINLMUX Bypass Volume\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.19 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 49, i32 49, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ROMIX RIN3 Bypass Volume\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.21 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 48, i32 48, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ROMIX LIN12 PGA Bypass Volume\00", [34 x i8] zeroinitializer }, align 32
@.compoundliteral.23 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 48, i32 48, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ROMIX RIN12 PGA Bypass Volume\00", [34 x i8] zeroinitializer }, align 32
@.compoundliteral.25 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 48, i32 48, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ROMIX LIN3 Bypass Volume\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.27 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 50, i32 50, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ROMIX AINLMUX Bypass Volume\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.29 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 50, i32 50, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ROMIX AINRMUX Bypass Volume\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.31 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 50, i32 50, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LOUT Volume\00", [20 x i8] zeroinitializer }, align 32
@out_pga_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -7300, i32 600], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.33 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 127, i32 127, i32 28, i32 28, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LOUT ZC\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.35 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 28, i32 28, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ROUT Volume\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.37 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 127, i32 127, i32 29, i32 29, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ROUT ZC\00", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.39 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 29, i32 29, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"LOPGA Volume\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.41 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 127, i32 127, i32 32, i32 32, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"LOPGA ZC Switch\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.43 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 32, i32 32, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ROPGA Volume\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.45 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 127, i32 127, i32 33, i32 33, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ROPGA ZC Switch\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.47 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 33, i32 33, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"LON Mute Switch\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.49 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 30, i32 30, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"LOP Mute Switch\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.51 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 30, i32 30, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"LOP Attenuation Switch\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.53 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 30, i32 30, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RON Mute Switch\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.55 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 30, i32 30, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ROP Mute Switch\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.57 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 30, i32 30, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ROP Attenuation Switch\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.59 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 30, i32 30, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"OUT3 Mute Switch\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.61 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 31, i32 31, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"OUT3 Attenuation Switch\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.63 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 31, i32 31, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"OUT4 Mute Switch\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.65 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 31, i32 31, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"OUT4 Attenuation Switch\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.67 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 31, i32 31, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Speaker Mode Switch\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.69 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 35, i32 35, i32 8, i32 8, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Speaker Output Attenuation Volume\00", [62 x i8] zeroinitializer }, align 32
@.compoundliteral.71 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 34, i32 34, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Speaker DC Boost Volume\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.73 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 6, i32 6, i32 37, i32 37, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Speaker AC Boost Volume\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.75 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 6, i32 6, i32 37, i32 37, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Left DAC Digital Volume\00", [40 x i8] zeroinitializer }, align 32
@out_dac_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -7163, i32 0], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.77 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 127, i32 127, i32 12, i32 12, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Right DAC Digital Volume\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.79 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 127, i32 127, i32 13, i32 13, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Left Digital Sidetone\00", [42 x i8] zeroinitializer }, align 32
@wm8400_left_digital_sidetone_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 14, i8 2, i8 2, i32 4, i32 3, ptr @wm8400_digital_sidetone, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Right Digital Sidetone\00", [41 x i8] zeroinitializer }, align 32
@wm8400_right_digital_sidetone_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 14, i8 0, i8 0, i32 4, i32 3, ptr @wm8400_digital_sidetone, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Left Digital Sidetone Volume\00", [35 x i8] zeroinitializer }, align 32
@out_sidetone_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -3600, i32 0], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.83 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 14, i32 14, i32 9, i32 9, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Right Digital Sidetone Volume\00", [34 x i8] zeroinitializer }, align 32
@.compoundliteral.85 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 14, i32 14, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ADC Digital High Pass Filter Switch\00", [60 x i8] zeroinitializer }, align 32
@.compoundliteral.87 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 15, i32 15, i32 8, i32 8, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ADC HPF Mode\00", [19 x i8] zeroinitializer }, align 32
@wm8400_right_adcmode_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 15, i8 5, i8 5, i32 4, i32 3, ptr @wm8400_adcmode, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Left ADC Digital Volume\00", [40 x i8] zeroinitializer }, align 32
@in_adc_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -7163, i32 1763], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.90 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 16, i32 16, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Right ADC Digital Volume\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.92 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 17, i32 17, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"LIN12 Volume\00", [19 x i8] zeroinitializer }, align 32
@in_pga_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -1650, i32 3000], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.94 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 24, i32 24, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"LIN12 ZC Switch\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.96 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 24, i32 24, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"LIN12 Mute Switch\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.98 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 24, i32 24, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"LIN34 Volume\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.100 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 25, i32 25, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"LIN34 ZC Switch\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.102 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 25, i32 25, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"LIN34 Mute Switch\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.104 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 25, i32 25, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"RIN12 Volume\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.106 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 26, i32 26, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RIN12 ZC Switch\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.108 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 26, i32 26, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"RIN12 Mute Switch\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.110 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 26, i32 26, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"RIN34 Volume\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.112 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 27, i32 27, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RIN34 ZC Switch\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.114 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 27, i32 27, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"RIN34 Mute Switch\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.116 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 27, i32 27, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@wm8400_digital_sidetone = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120], [16 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"None\00", [27 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Left ADC\00", [23 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Right ADC\00", [22 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Reserved\00", [23 x i8] zeroinitializer }, align 32
@wm8400_adcmode = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124], [16 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Hi-fi mode\00", [21 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Voice mode 1\00", [19 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Voice mode 2\00", [19 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Voice mode 3\00", [19 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LIN1\00", [27 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LIN2\00", [27 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LIN3\00", [27 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LIN4/RXN\00", [23 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RIN3\00", [27 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"RIN4/RXP\00", [23 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RIN1\00", [27 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"RIN2\00", [27 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Internal ADC Source\00", [44 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Left Capture\00", [19 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Right Capture\00", [18 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"LIN12 PGA\00", [22 x i8] zeroinitializer }, align 32
@wm8400_dapm_lin12_pga_controls = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.176, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.177 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.178, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.179 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"LIN34 PGA\00", [22 x i8] zeroinitializer }, align 32
@wm8400_dapm_lin34_pga_controls = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.180, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.181 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.182, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.183 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"RIN12 PGA\00", [22 x i8] zeroinitializer }, align 32
@wm8400_dapm_rin12_pga_controls = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.184, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.185 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.186, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.187 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"RIN34 PGA\00", [22 x i8] zeroinitializer }, align 32
@wm8400_dapm_rin34_pga_controls = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.188, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.189 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.190, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.191 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"INL\00", [28 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"INR\00", [28 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"INMIXL\00", [25 x i8] zeroinitializer }, align 32
@wm8400_dapm_inmixl_controls = internal constant { [4 x %struct.snd_kcontrol_new], [32 x i8] } { [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.192, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 { ptr @in_mix_tlv }, i32 ptrtoint (ptr @.compoundliteral.193 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.194, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 { ptr @in_mix_tlv }, i32 ptrtoint (ptr @.compoundliteral.195 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.196, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.197 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.198, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.199 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AILNMUX\00", [24 x i8] zeroinitializer }, align 32
@wm8400_dapm_ainlmux_controls = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.200, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @wm8400_ainlmux_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"INMIXR\00", [25 x i8] zeroinitializer }, align 32
@wm8400_dapm_inmixr_controls = internal constant { [4 x %struct.snd_kcontrol_new], [32 x i8] } { [4 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.204, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 { ptr @in_mix_tlv }, i32 ptrtoint (ptr @.compoundliteral.205 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.206, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 { ptr @in_mix_tlv }, i32 ptrtoint (ptr @.compoundliteral.207 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.208, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.209 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.210, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.211 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AIRNMUX\00", [24 x i8] zeroinitializer }, align 32
@wm8400_dapm_ainrmux_controls = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.200, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @wm8400_ainrmux_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Left DAC\00", [23 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Left Playback\00", [18 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Right DAC\00", [22 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Right Playback\00", [17 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LOMIX\00", [26 x i8] zeroinitializer }, align 32
@wm8400_dapm_lomix_controls = internal constant { [7 x %struct.snd_kcontrol_new], [80 x i8] } { [7 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.226, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.227 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.228, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.229 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.230, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.231 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.232, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.233 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.234, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.235 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.236, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.237 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.238, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.239 to i32) }], [80 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"LONMIX\00", [25 x i8] zeroinitializer }, align 32
@wm8400_dapm_lonmix_controls = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.240, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.241 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.242, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.243 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.244, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.245 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"LOPMIX\00", [25 x i8] zeroinitializer }, align 32
@wm8400_dapm_lopmix_controls = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.246, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.247 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.248, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.249 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.250, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.251 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"OUT3MIX\00", [24 x i8] zeroinitializer }, align 32
@wm8400_dapm_out3mix_controls = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.252, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.253 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.254, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.255 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SPKMIX\00", [25 x i8] zeroinitializer }, align 32
@wm8400_dapm_spkmix_controls = internal constant { [8 x %struct.snd_kcontrol_new], [96 x i8] } { [8 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.256, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.257 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.258, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.259 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.260, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.261 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.262, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.263 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.264, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.265 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.266, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.267 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.268, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.269 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.270, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.271 to i32) }], [96 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"OUT4MIX\00", [24 x i8] zeroinitializer }, align 32
@wm8400_dapm_out4mix_controls = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.272, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.273 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.274, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.275 to i32) }], [32 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ROPMIX\00", [25 x i8] zeroinitializer }, align 32
@wm8400_dapm_ropmix_controls = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.276, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.277 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.278, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.279 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.280, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.281 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"RONMIX\00", [25 x i8] zeroinitializer }, align 32
@wm8400_dapm_ronmix_controls = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.282, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.283 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.284, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.285 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.286, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.287 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ROMIX\00", [26 x i8] zeroinitializer }, align 32
@wm8400_dapm_romix_controls = internal constant { [7 x %struct.snd_kcontrol_new], [80 x i8] } { [7 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.288, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.289 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.290, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.291 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.292, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.293 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.294, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.295 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.296, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.297 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.298, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.299 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.300, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.301 to i32) }], [80 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LOUT PGA\00", [23 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ROUT PGA\00", [23 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LOPGA\00", [26 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ROPGA\00", [26 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MICBIAS\00", [24 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"LON\00", [28 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"LOP\00", [28 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"OUT3\00", [27 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LOUT\00", [27 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SPKN\00", [27 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"SPKP\00", [27 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ROUT\00", [27 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"OUT4\00", [27 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ROP\00", [28 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RON\00", [28 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Internal DAC Sink\00", [46 x i8] zeroinitializer }, align 32
@wm8400_dapm_widgets = internal constant { [48 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [2144 x i8] } { [48 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.125, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.126, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.127, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.128, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.129, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.130, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.131, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.132, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.133, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.118, ptr @.str.134, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.119, ptr @.str.135, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.136, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @wm8400_dapm_lin12_pga_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.137, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @wm8400_dapm_lin34_pga_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.138, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @wm8400_dapm_rin12_pga_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.139, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @wm8400_dapm_rin34_pga_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.140, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 9, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.141, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 3, i8 8, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.142, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @wm8400_dapm_inmixl_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.143, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @wm8400_dapm_ainlmux_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.144, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 4, ptr @wm8400_dapm_inmixr_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.145, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @wm8400_dapm_ainrmux_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.146, ptr @.str.147, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 4, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.148, ptr @.str.149, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 4, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.150, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 4, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 16, ptr @outmixer_event, i32 7, ptr @wm8400_dapm_lomix_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.151, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 4, i8 13, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 3, ptr @wm8400_dapm_lonmix_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.152, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 4, i8 12, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 3, ptr @wm8400_dapm_lopmix_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.153, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2, i8 11, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @wm8400_dapm_out3mix_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.154, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2, i8 12, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 16, ptr @outmixer_event, i32 8, ptr @wm8400_dapm_spkmix_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.155, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2, i8 10, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 2, ptr @wm8400_dapm_out4mix_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.156, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 4, i8 10, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 3, ptr @wm8400_dapm_ropmix_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.157, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 4, i8 11, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 3, ptr @wm8400_dapm_ronmix_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.158, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 4, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 16, ptr @outmixer_event, i32 7, ptr @wm8400_dapm_romix_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.159, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2, i8 9, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.160, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2, i8 8, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.161, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 4, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.162, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 4, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.163, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.164, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.165, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.166, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.167, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.168, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.169, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.170, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.171, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.172, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.173, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.174, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [2144 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LIN1 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.177 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 40, i32 40, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LIN2 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.179 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 40, i32 40, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LIN3 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.181 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 40, i32 40, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LIN4 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.183 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 40, i32 40, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RIN1 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.185 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 40, i32 40, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RIN2 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.187 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 40, i32 40, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RIN3 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.189 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 40, i32 40, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RIN4 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.191 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 40, i32 40, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Record Left Volume\00", [45 x i8] zeroinitializer }, align 32
@in_mix_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -1200, i32 600], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.193 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 41, i32 41, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"LIN2 Volume\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.195 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 43, i32 43, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"LINPGA12 Switch\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.197 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 41, i32 41, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"LINPGA34 Switch\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.199 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 41, i32 41, i32 8, i32 8, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Route\00", [26 x i8] zeroinitializer }, align 32
@wm8400_ainlmux_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 39, i8 2, i8 2, i32 3, i32 3, ptr @wm8400_ainlmux, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@wm8400_ainlmux = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.201, ptr @.str.202, ptr @.str.203], [20 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"INMIXL Mix\00", [21 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RXVOICE Mix\00", [20 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DIFFINL Mix\00", [20 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Record Right Volume\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.205 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 42, i32 42, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RIN2 Volume\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.207 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 7, i32 7, i32 44, i32 44, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RINPGA12 Switch\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.209 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 41, i32 41, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"RINPGA34 Switch\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.211 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 41, i32 41, i32 8, i32 8, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@wm8400_ainrmux_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 39, i8 0, i8 0, i32 3, i32 3, ptr @wm8400_ainrmux, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@wm8400_ainrmux = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.212, ptr @.str.202, ptr @.str.213], [20 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"INMIXR Mix\00", [21 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DIFFINR Mix\00", [20 x i8] zeroinitializer }, align 32
@outmixer_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.214, ptr @.str.215, ptr @.str.216, i32 330, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014Cannot set as Output Mixer 1 LDLO Set\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"outmixer_event\00", [17 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sound/soc/codecs/wm8400.c\00", [38 x i8] zeroinitializer }, align 32
@outmixer_event._entry_ptr = internal global ptr @outmixer_event._entry, section ".printk_index", align 4
@outmixer_event._entry.217 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.218, ptr @.str.215, ptr @.str.216, i32 338, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014Cannot set as Output Mixer 2 RDRO Set\0A\00", [55 x i8] zeroinitializer }, align 32
@outmixer_event._entry_ptr.219 = internal global ptr @outmixer_event._entry.217, section ".printk_index", align 4
@outmixer_event._entry.220 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.221, ptr @.str.215, ptr @.str.216, i32 346, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014Cannot set as Speaker Mixer LDSPK Set\0A\00", [55 x i8] zeroinitializer }, align 32
@outmixer_event._entry_ptr.222 = internal global ptr @outmixer_event._entry.220, section ".printk_index", align 4
@outmixer_event._entry.223 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.224, ptr @.str.215, ptr @.str.216, i32 354, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\014Cannot set as Speaker Mixer RDSPK Set\0A\00", [55 x i8] zeroinitializer }, align 32
@outmixer_event._entry_ptr.225 = internal global ptr @outmixer_event._entry.223, section ".printk_index", align 4
@.str.226 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"LOMIX Right ADC Bypass Switch\00", [34 x i8] zeroinitializer }, align 32
@.compoundliteral.227 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 45, i32 45, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"LOMIX Left ADC Bypass Switch\00", [35 x i8] zeroinitializer }, align 32
@.compoundliteral.229 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 45, i32 45, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"LOMIX RIN3 Bypass Switch\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.231 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 45, i32 45, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"LOMIX LIN3 Bypass Switch\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.233 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 45, i32 45, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"LOMIX RIN12 PGA Bypass Switch\00", [34 x i8] zeroinitializer }, align 32
@.compoundliteral.235 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 45, i32 45, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"LOMIX LIN12 PGA Bypass Switch\00", [34 x i8] zeroinitializer }, align 32
@.compoundliteral.237 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 45, i32 45, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"LOMIX Left DAC Switch\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.239 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 45, i32 45, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"LONMIX Left Mixer PGA Switch\00", [35 x i8] zeroinitializer }, align 32
@.compoundliteral.241 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 52, i32 52, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"LONMIX Right Mixer PGA Switch\00", [34 x i8] zeroinitializer }, align 32
@.compoundliteral.243 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 52, i32 52, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"LONMIX Inverted LOP Switch\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.245 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 52, i32 52, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"LOPMIX Right Mic Bypass Switch\00", [33 x i8] zeroinitializer }, align 32
@.compoundliteral.247 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 52, i32 52, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"LOPMIX Left Mic Bypass Switch\00", [34 x i8] zeroinitializer }, align 32
@.compoundliteral.249 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 52, i32 52, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"LOPMIX Left Mixer PGA Switch\00", [35 x i8] zeroinitializer }, align 32
@.compoundliteral.251 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 52, i32 52, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"OUT3MIX LIN4/RXP Bypass Switch\00", [33 x i8] zeroinitializer }, align 32
@.compoundliteral.253 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 51, i32 51, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"OUT3MIX Left Out PGA Switch\00", [36 x i8] zeroinitializer }, align 32
@.compoundliteral.255 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 51, i32 51, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"SPKMIX LIN2 Bypass Switch\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.257 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 54, i32 54, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"SPKMIX LADC Bypass Switch\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.259 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 54, i32 54, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"SPKMIX Left Mixer PGA Switch\00", [35 x i8] zeroinitializer }, align 32
@.compoundliteral.261 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 54, i32 54, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SPKMIX Left DAC Switch\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.263 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 54, i32 54, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SPKMIX Right DAC Switch\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.265 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 54, i32 54, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"SPKMIX Right Mixer PGA Switch\00", [34 x i8] zeroinitializer }, align 32
@.compoundliteral.267 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 54, i32 54, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"SPKMIX RADC Bypass Switch\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.269 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 54, i32 54, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"SPKMIX RIN2 Bypass Switch\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.271 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 54, i32 54, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"OUT4MIX Right Out PGA Switch\00", [35 x i8] zeroinitializer }, align 32
@.compoundliteral.273 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 51, i32 51, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.274 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"OUT4MIX RIN4/RXP Bypass Switch\00", [33 x i8] zeroinitializer }, align 32
@.compoundliteral.275 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 51, i32 51, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ROPMIX Left Mic Bypass Switch\00", [34 x i8] zeroinitializer }, align 32
@.compoundliteral.277 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 53, i32 53, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.278 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ROPMIX Right Mic Bypass Switch\00", [33 x i8] zeroinitializer }, align 32
@.compoundliteral.279 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 53, i32 53, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.280 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ROPMIX Right Mixer PGA Switch\00", [34 x i8] zeroinitializer }, align 32
@.compoundliteral.281 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 53, i32 53, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.282 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"RONMIX Right Mixer PGA Switch\00", [34 x i8] zeroinitializer }, align 32
@.compoundliteral.283 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 53, i32 53, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.284 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"RONMIX Left Mixer PGA Switch\00", [35 x i8] zeroinitializer }, align 32
@.compoundliteral.285 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 53, i32 53, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.286 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"RONMIX Inverted ROP Switch\00", [37 x i8] zeroinitializer }, align 32
@.compoundliteral.287 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 53, i32 53, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.288 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ROMIX Left ADC Bypass Switch\00", [35 x i8] zeroinitializer }, align 32
@.compoundliteral.289 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 46, i32 46, i32 7, i32 7, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.290 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ROMIX Right ADC Bypass Switch\00", [34 x i8] zeroinitializer }, align 32
@.compoundliteral.291 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 46, i32 46, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.292 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ROMIX LIN3 Bypass Switch\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.293 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 46, i32 46, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.294 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ROMIX RIN3 Bypass Switch\00", [39 x i8] zeroinitializer }, align 32
@.compoundliteral.295 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 46, i32 46, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.296 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ROMIX LIN12 PGA Bypass Switch\00", [34 x i8] zeroinitializer }, align 32
@.compoundliteral.297 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 46, i32 46, i32 3, i32 3, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.298 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ROMIX RIN12 PGA Bypass Switch\00", [34 x i8] zeroinitializer }, align 32
@.compoundliteral.299 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 46, i32 46, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.300 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ROMIX Right DAC Switch\00", [41 x i8] zeroinitializer }, align 32
@.compoundliteral.301 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 46, i32 46, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@power = internal global { [7 x %struct.regulator_bulk_data], [44 x i8] } { [7 x %struct.regulator_bulk_data] [%struct.regulator_bulk_data { ptr @.str.306, ptr null, i32 0 }, %struct.regulator_bulk_data { ptr @.str.307, ptr null, i32 0 }, %struct.regulator_bulk_data { ptr @.str.308, ptr null, i32 0 }, %struct.regulator_bulk_data { ptr @.str.309, ptr null, i32 0 }, %struct.regulator_bulk_data { ptr @.str.310, ptr null, i32 0 }, %struct.regulator_bulk_data { ptr @.str.311, ptr null, i32 0 }, %struct.regulator_bulk_data { ptr @.str.312, ptr null, i32 0 }], [44 x i8] zeroinitializer }, align 32
@wm8400_component_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.302, ptr @.str.303, ptr @.str.216, i32 1279, ptr @.str.304, ptr @.str.305 }, [40 x i8] zeroinitializer }, align 32
@.str.302 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to get regulators: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.303 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wm8400_component_probe\00", [41 x i8] zeroinitializer }, align 32
@.str.304 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.305 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wm8400_component_probe._entry_ptr = internal global ptr @wm8400_component_probe._entry, section ".printk_index", align 4
@.str.306 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"I2S1VDD\00", [24 x i8] zeroinitializer }, align 32
@.str.307 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"I2S2VDD\00", [24 x i8] zeroinitializer }, align 32
@.str.308 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DCVDD\00", [26 x i8] zeroinitializer }, align 32
@.str.309 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AVDD\00", [27 x i8] zeroinitializer }, align 32
@.str.310 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"FLLVDD\00", [25 x i8] zeroinitializer }, align 32
@.str.311 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"HPVDD\00", [26 x i8] zeroinitializer }, align 32
@.str.312 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SPKVDD\00", [25 x i8] zeroinitializer }, align 32
@wm8400_set_bias_level._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.313, ptr @.str.314, ptr @.str.216, i32 1134, ptr @.str.304, ptr @.str.305 }, [40 x i8] zeroinitializer }, align 32
@.str.313 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to enable regulators: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.314 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wm8400_set_bias_level\00", [42 x i8] zeroinitializer }, align 32
@wm8400_set_bias_level._entry_ptr = internal global ptr @wm8400_set_bias_level._entry, section ".printk_index", align 4
@.str.315 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wm8400-hifi\00", [20 x i8] zeroinitializer }, align 32
@wm8400_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @wm8400_set_dai_sysclk, ptr @wm8400_set_dai_pll, ptr @wm8400_set_dai_clkdiv, ptr null, ptr @wm8400_set_dai_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm8400_mute, ptr null, ptr null, ptr @wm8400_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 -128 }, [32 x i8] zeroinitializer }, align 32
@.str.316 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Capture\00", [24 x i8] zeroinitializer }, align 32
@.str.317 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Playback\00", [23 x i8] zeroinitializer }, align 32
@fll_factors._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.318, ptr @.str.319, ptr @.str.216, i32 865, ptr @.str.304, ptr @.str.305 }, [40 x i8] zeroinitializer }, align 32
@.str.318 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Unsupported FLL output frequency %uHz\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.319 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fll_factors\00", [20 x i8] zeroinitializer }, align 32
@fll_factors._entry_ptr = internal global ptr @fll_factors._entry, section ".printk_index", align 4
@fll_factors._entry.320 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.321, ptr @.str.319, ptr @.str.216, i32 891, ptr @.str.304, ptr @.str.305 }, [40 x i8] zeroinitializer }, align 32
@.str.321 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unable to calculate FRATIO\0A\00", [36 x i8] zeroinitializer }, align 32
@fll_factors._entry_ptr.322 = internal global ptr @fll_factors._entry.320, section ".printk_index", align 4
@fll_factors.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.323, ptr @.str.319, ptr @.str.216, ptr @.str.324, i8 0, i8 -28, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.323 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"snd_soc_wm8400\00", [17 x i8] zeroinitializer }, align 32
@.str.324 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"FLL: Fref=%u Fout=%u N=%x K=%x, FRATIO=%x OUTDIV=%x\0A\00", [43 x i8] zeroinitializer }, align 32
@switch.table.wm8400_set_dai_clkdiv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 8, i32 8, i32 8, i32 7], [16 x i8] zeroinitializer }, align 32
@switch.table.wm8400_set_dai_clkdiv.325 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 59391, i32 65507, i32 65311, i32 65505], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.326 = internal global [6 x i64] [i64 4, i64 32, i64 301, i64 302, i64 310, i64 566]
@__sancov_gen_cov_switch_values.327 = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.328 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.329 = internal global [5 x i64] [i64 3, i64 32, i64 20, i64 24, i64 32]
@___asan_gen_.330 = private unnamed_addr constant [20 x i8] c"wm8400_codec_driver\00", align 1
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 1335, i32 31 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 1337, i32 14 }
@___asan_gen_.336 = private unnamed_addr constant [25 x i8] c"soc_component_dev_wm8400\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 1311, i32 46 }
@___asan_gen_.339 = private unnamed_addr constant [11 x i8] c"wm8400_dai\00", align 1
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 1240, i32 34 }
@___asan_gen_.342 = private unnamed_addr constant [20 x i8] c"wm8400_snd_controls\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 127, i32 38 }
@___asan_gen_.345 = private unnamed_addr constant [19 x i8] c"wm8400_dapm_routes\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 699, i32 40 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 129, i32 1 }
@___asan_gen_.351 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 131, i32 1 }
@___asan_gen_.355 = private unnamed_addr constant [19 x i8] c".compoundliteral.3\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 134, i32 1 }
@___asan_gen_.359 = private unnamed_addr constant [19 x i8] c".compoundliteral.5\00", align 1
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 136, i32 1 }
@___asan_gen_.363 = private unnamed_addr constant [19 x i8] c".compoundliteral.7\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 140, i32 1 }
@___asan_gen_.367 = private unnamed_addr constant [12 x i8] c"out_mix_tlv\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 72, i32 14 }
@___asan_gen_.370 = private unnamed_addr constant [19 x i8] c".compoundliteral.9\00", align 1
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 142, i32 1 }
@___asan_gen_.374 = private unnamed_addr constant [20 x i8] c".compoundliteral.11\00", align 1
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 144, i32 1 }
@___asan_gen_.378 = private unnamed_addr constant [20 x i8] c".compoundliteral.13\00", align 1
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 146, i32 1 }
@___asan_gen_.382 = private unnamed_addr constant [20 x i8] c".compoundliteral.15\00", align 1
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 148, i32 1 }
@___asan_gen_.386 = private unnamed_addr constant [20 x i8] c".compoundliteral.17\00", align 1
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 150, i32 1 }
@___asan_gen_.390 = private unnamed_addr constant [20 x i8] c".compoundliteral.19\00", align 1
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 154, i32 1 }
@___asan_gen_.394 = private unnamed_addr constant [20 x i8] c".compoundliteral.21\00", align 1
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 156, i32 1 }
@___asan_gen_.398 = private unnamed_addr constant [20 x i8] c".compoundliteral.23\00", align 1
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 158, i32 1 }
@___asan_gen_.402 = private unnamed_addr constant [20 x i8] c".compoundliteral.25\00", align 1
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 160, i32 1 }
@___asan_gen_.406 = private unnamed_addr constant [20 x i8] c".compoundliteral.27\00", align 1
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 162, i32 1 }
@___asan_gen_.410 = private unnamed_addr constant [20 x i8] c".compoundliteral.29\00", align 1
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 164, i32 1 }
@___asan_gen_.414 = private unnamed_addr constant [20 x i8] c".compoundliteral.31\00", align 1
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 168, i32 1 }
@___asan_gen_.418 = private unnamed_addr constant [12 x i8] c"out_pga_tlv\00", align 1
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 74, i32 14 }
@___asan_gen_.421 = private unnamed_addr constant [20 x i8] c".compoundliteral.33\00", align 1
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 170, i32 1 }
@___asan_gen_.425 = private unnamed_addr constant [20 x i8] c".compoundliteral.35\00", align 1
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 173, i32 1 }
@___asan_gen_.429 = private unnamed_addr constant [20 x i8] c".compoundliteral.37\00", align 1
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 175, i32 1 }
@___asan_gen_.433 = private unnamed_addr constant [20 x i8] c".compoundliteral.39\00", align 1
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 178, i32 1 }
@___asan_gen_.437 = private unnamed_addr constant [20 x i8] c".compoundliteral.41\00", align 1
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 180, i32 1 }
@___asan_gen_.441 = private unnamed_addr constant [20 x i8] c".compoundliteral.43\00", align 1
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 184, i32 1 }
@___asan_gen_.445 = private unnamed_addr constant [20 x i8] c".compoundliteral.45\00", align 1
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 186, i32 1 }
@___asan_gen_.449 = private unnamed_addr constant [20 x i8] c".compoundliteral.47\00", align 1
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 189, i32 1 }
@___asan_gen_.453 = private unnamed_addr constant [20 x i8] c".compoundliteral.49\00", align 1
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 191, i32 1 }
@___asan_gen_.457 = private unnamed_addr constant [20 x i8] c".compoundliteral.51\00", align 1
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 193, i32 1 }
@___asan_gen_.461 = private unnamed_addr constant [20 x i8] c".compoundliteral.53\00", align 1
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 195, i32 1 }
@___asan_gen_.465 = private unnamed_addr constant [20 x i8] c".compoundliteral.55\00", align 1
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 197, i32 1 }
@___asan_gen_.469 = private unnamed_addr constant [20 x i8] c".compoundliteral.57\00", align 1
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 199, i32 1 }
@___asan_gen_.473 = private unnamed_addr constant [20 x i8] c".compoundliteral.59\00", align 1
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 202, i32 1 }
@___asan_gen_.477 = private unnamed_addr constant [20 x i8] c".compoundliteral.61\00", align 1
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 204, i32 1 }
@___asan_gen_.481 = private unnamed_addr constant [20 x i8] c".compoundliteral.63\00", align 1
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 207, i32 1 }
@___asan_gen_.485 = private unnamed_addr constant [20 x i8] c".compoundliteral.65\00", align 1
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 209, i32 1 }
@___asan_gen_.489 = private unnamed_addr constant [20 x i8] c".compoundliteral.67\00", align 1
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 212, i32 1 }
@___asan_gen_.493 = private unnamed_addr constant [20 x i8] c".compoundliteral.69\00", align 1
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 215, i32 1 }
@___asan_gen_.497 = private unnamed_addr constant [20 x i8] c".compoundliteral.71\00", align 1
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 217, i32 1 }
@___asan_gen_.501 = private unnamed_addr constant [20 x i8] c".compoundliteral.73\00", align 1
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 219, i32 1 }
@___asan_gen_.505 = private unnamed_addr constant [20 x i8] c".compoundliteral.75\00", align 1
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 222, i32 1 }
@___asan_gen_.509 = private unnamed_addr constant [12 x i8] c"out_dac_tlv\00", align 1
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 76, i32 14 }
@___asan_gen_.512 = private unnamed_addr constant [20 x i8] c".compoundliteral.77\00", align 1
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 226, i32 1 }
@___asan_gen_.516 = private unnamed_addr constant [20 x i8] c".compoundliteral.79\00", align 1
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 230, i32 1 }
@___asan_gen_.520 = private unnamed_addr constant [34 x i8] c"wm8400_left_digital_sidetone_enum\00", align 1
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 109, i32 8 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 231, i32 1 }
@___asan_gen_.526 = private unnamed_addr constant [35 x i8] c"wm8400_right_digital_sidetone_enum\00", align 1
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 114, i32 8 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 233, i32 1 }
@___asan_gen_.532 = private unnamed_addr constant [17 x i8] c"out_sidetone_tlv\00", align 1
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 80, i32 14 }
@___asan_gen_.535 = private unnamed_addr constant [20 x i8] c".compoundliteral.83\00", align 1
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 235, i32 1 }
@___asan_gen_.539 = private unnamed_addr constant [20 x i8] c".compoundliteral.85\00", align 1
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 238, i32 1 }
@___asan_gen_.543 = private unnamed_addr constant [20 x i8] c".compoundliteral.87\00", align 1
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 241, i32 1 }
@___asan_gen_.547 = private unnamed_addr constant [26 x i8] c"wm8400_right_adcmode_enum\00", align 1
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 122, i32 8 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 243, i32 1 }
@___asan_gen_.553 = private unnamed_addr constant [11 x i8] c"in_adc_tlv\00", align 1
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 78, i32 14 }
@___asan_gen_.556 = private unnamed_addr constant [20 x i8] c".compoundliteral.90\00", align 1
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 250, i32 1 }
@___asan_gen_.560 = private unnamed_addr constant [20 x i8] c".compoundliteral.92\00", align 1
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 257, i32 1 }
@___asan_gen_.564 = private unnamed_addr constant [11 x i8] c"in_pga_tlv\00", align 1
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 70, i32 14 }
@___asan_gen_.567 = private unnamed_addr constant [20 x i8] c".compoundliteral.94\00", align 1
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 264, i32 1 }
@___asan_gen_.571 = private unnamed_addr constant [20 x i8] c".compoundliteral.96\00", align 1
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 267, i32 1 }
@___asan_gen_.575 = private unnamed_addr constant [20 x i8] c".compoundliteral.98\00", align 1
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 270, i32 1 }
@___asan_gen_.579 = private unnamed_addr constant [21 x i8] c".compoundliteral.100\00", align 1
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 277, i32 1 }
@___asan_gen_.583 = private unnamed_addr constant [21 x i8] c".compoundliteral.102\00", align 1
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 280, i32 1 }
@___asan_gen_.587 = private unnamed_addr constant [21 x i8] c".compoundliteral.104\00", align 1
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 283, i32 1 }
@___asan_gen_.591 = private unnamed_addr constant [21 x i8] c".compoundliteral.106\00", align 1
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 290, i32 1 }
@___asan_gen_.595 = private unnamed_addr constant [21 x i8] c".compoundliteral.108\00", align 1
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 293, i32 1 }
@___asan_gen_.599 = private unnamed_addr constant [21 x i8] c".compoundliteral.110\00", align 1
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 296, i32 1 }
@___asan_gen_.603 = private unnamed_addr constant [21 x i8] c".compoundliteral.112\00", align 1
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 303, i32 1 }
@___asan_gen_.607 = private unnamed_addr constant [21 x i8] c".compoundliteral.114\00", align 1
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 306, i32 1 }
@___asan_gen_.611 = private unnamed_addr constant [21 x i8] c".compoundliteral.116\00", align 1
@___asan_gen_.612 = private unnamed_addr constant [24 x i8] c"wm8400_digital_sidetone\00", align 1
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 106, i32 20 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 107, i32 3 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 107, i32 11 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 107, i32 23 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 107, i32 36 }
@___asan_gen_.627 = private unnamed_addr constant [15 x i8] c"wm8400_adcmode\00", align 1
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 119, i32 20 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 120, i32 3 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 120, i32 17 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 120, i32 33 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 120, i32 49 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 553, i32 1 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 554, i32 1 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 555, i32 1 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 556, i32 1 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 557, i32 1 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 558, i32 1 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 559, i32 1 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 560, i32 1 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 561, i32 1 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 564, i32 1 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 566, i32 1 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 570, i32 1 }
@___asan_gen_.678 = private unnamed_addr constant [31 x i8] c"wm8400_dapm_lin12_pga_controls\00", align 1
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 367, i32 38 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 574, i32 1 }
@___asan_gen_.684 = private unnamed_addr constant [31 x i8] c"wm8400_dapm_lin34_pga_controls\00", align 1
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 372, i32 38 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 578, i32 1 }
@___asan_gen_.690 = private unnamed_addr constant [31 x i8] c"wm8400_dapm_rin12_pga_controls\00", align 1
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 378, i32 38 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 582, i32 1 }
@___asan_gen_.696 = private unnamed_addr constant [31 x i8] c"wm8400_dapm_rin34_pga_controls\00", align 1
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 383, i32 38 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 587, i32 1 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 589, i32 1 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 593, i32 1 }
@___asan_gen_.708 = private unnamed_addr constant [28 x i8] c"wm8400_dapm_inmixl_controls\00", align 1
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 389, i32 38 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 598, i32 1 }
@___asan_gen_.714 = private unnamed_addr constant [29 x i8] c"wm8400_dapm_ainlmux_controls\00", align 1
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 421, i32 38 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 601, i32 1 }
@___asan_gen_.720 = private unnamed_addr constant [28 x i8] c"wm8400_dapm_inmixr_controls\00", align 1
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 401, i32 38 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 606, i32 1 }
@___asan_gen_.726 = private unnamed_addr constant [29 x i8] c"wm8400_dapm_ainrmux_controls\00", align 1
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 435, i32 38 }
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 610, i32 1 }
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 612, i32 1 }
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 616, i32 1 }
@___asan_gen_.744 = private unnamed_addr constant [27 x i8] c"wm8400_dapm_lomix_controls\00", align 1
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 439, i32 38 }
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 623, i32 1 }
@___asan_gen_.750 = private unnamed_addr constant [28 x i8] c"wm8400_dapm_lonmix_controls\00", align 1
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 475, i32 38 }
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 628, i32 1 }
@___asan_gen_.756 = private unnamed_addr constant [28 x i8] c"wm8400_dapm_lopmix_controls\00", align 1
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 485, i32 38 }
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 633, i32 1 }
@___asan_gen_.762 = private unnamed_addr constant [29 x i8] c"wm8400_dapm_out3mix_controls\00", align 1
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 515, i32 38 }
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 638, i32 1 }
@___asan_gen_.768 = private unnamed_addr constant [28 x i8] c"wm8400_dapm_spkmix_controls\00", align 1
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 531, i32 38 }
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 644, i32 1 }
@___asan_gen_.774 = private unnamed_addr constant [29 x i8] c"wm8400_dapm_out4mix_controls\00", align 1
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 523, i32 38 }
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 649, i32 1 }
@___asan_gen_.780 = private unnamed_addr constant [28 x i8] c"wm8400_dapm_ropmix_controls\00", align 1
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 505, i32 38 }
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 654, i32 1 }
@___asan_gen_.786 = private unnamed_addr constant [28 x i8] c"wm8400_dapm_ronmix_controls\00", align 1
@___asan_gen_.788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 495, i32 38 }
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 659, i32 1 }
@___asan_gen_.792 = private unnamed_addr constant [27 x i8] c"wm8400_dapm_romix_controls\00", align 1
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 457, i32 38 }
@___asan_gen_.797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 666, i32 1 }
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 670, i32 1 }
@___asan_gen_.803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 674, i32 1 }
@___asan_gen_.806 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 678, i32 1 }
@___asan_gen_.809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 682, i32 1 }
@___asan_gen_.812 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 685, i32 1 }
@___asan_gen_.815 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 686, i32 1 }
@___asan_gen_.818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 687, i32 1 }
@___asan_gen_.821 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 688, i32 1 }
@___asan_gen_.824 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 689, i32 1 }
@___asan_gen_.827 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 690, i32 1 }
@___asan_gen_.830 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 691, i32 1 }
@___asan_gen_.833 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 692, i32 1 }
@___asan_gen_.836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 693, i32 1 }
@___asan_gen_.839 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 694, i32 1 }
@___asan_gen_.842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 696, i32 1 }
@___asan_gen_.843 = private unnamed_addr constant [20 x i8] c"wm8400_dapm_widgets\00", align 1
@___asan_gen_.845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 550, i32 41 }
@___asan_gen_.848 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 368, i32 1 }
@___asan_gen_.849 = private unnamed_addr constant [21 x i8] c".compoundliteral.177\00", align 1
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 369, i32 1 }
@___asan_gen_.853 = private unnamed_addr constant [21 x i8] c".compoundliteral.179\00", align 1
@___asan_gen_.856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 373, i32 1 }
@___asan_gen_.857 = private unnamed_addr constant [21 x i8] c".compoundliteral.181\00", align 1
@___asan_gen_.860 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 374, i32 1 }
@___asan_gen_.861 = private unnamed_addr constant [21 x i8] c".compoundliteral.183\00", align 1
@___asan_gen_.864 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 379, i32 1 }
@___asan_gen_.865 = private unnamed_addr constant [21 x i8] c".compoundliteral.185\00", align 1
@___asan_gen_.868 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 380, i32 1 }
@___asan_gen_.869 = private unnamed_addr constant [21 x i8] c".compoundliteral.187\00", align 1
@___asan_gen_.872 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 384, i32 1 }
@___asan_gen_.873 = private unnamed_addr constant [21 x i8] c".compoundliteral.189\00", align 1
@___asan_gen_.876 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 385, i32 1 }
@___asan_gen_.877 = private unnamed_addr constant [21 x i8] c".compoundliteral.191\00", align 1
@___asan_gen_.880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 390, i32 1 }
@___asan_gen_.881 = private unnamed_addr constant [11 x i8] c"in_mix_tlv\00", align 1
@___asan_gen_.883 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 364, i32 14 }
@___asan_gen_.884 = private unnamed_addr constant [21 x i8] c".compoundliteral.193\00", align 1
@___asan_gen_.887 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 392, i32 1 }
@___asan_gen_.888 = private unnamed_addr constant [21 x i8] c".compoundliteral.195\00", align 1
@___asan_gen_.891 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 394, i32 1 }
@___asan_gen_.892 = private unnamed_addr constant [21 x i8] c".compoundliteral.197\00", align 1
@___asan_gen_.895 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 396, i32 1 }
@___asan_gen_.896 = private unnamed_addr constant [21 x i8] c".compoundliteral.199\00", align 1
@___asan_gen_.899 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 422, i32 1 }
@___asan_gen_.900 = private unnamed_addr constant [20 x i8] c"wm8400_ainlmux_enum\00", align 1
@___asan_gen_.902 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 416, i32 8 }
@___asan_gen_.903 = private unnamed_addr constant [15 x i8] c"wm8400_ainlmux\00", align 1
@___asan_gen_.905 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 413, i32 20 }
@___asan_gen_.908 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 414, i32 3 }
@___asan_gen_.911 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 414, i32 17 }
@___asan_gen_.914 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 414, i32 32 }
@___asan_gen_.917 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 402, i32 1 }
@___asan_gen_.918 = private unnamed_addr constant [21 x i8] c".compoundliteral.205\00", align 1
@___asan_gen_.921 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 404, i32 1 }
@___asan_gen_.922 = private unnamed_addr constant [21 x i8] c".compoundliteral.207\00", align 1
@___asan_gen_.925 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 406, i32 1 }
@___asan_gen_.926 = private unnamed_addr constant [21 x i8] c".compoundliteral.209\00", align 1
@___asan_gen_.929 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 408, i32 1 }
@___asan_gen_.930 = private unnamed_addr constant [21 x i8] c".compoundliteral.211\00", align 1
@___asan_gen_.931 = private unnamed_addr constant [20 x i8] c"wm8400_ainrmux_enum\00", align 1
@___asan_gen_.933 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 430, i32 8 }
@___asan_gen_.934 = private unnamed_addr constant [15 x i8] c"wm8400_ainrmux\00", align 1
@___asan_gen_.936 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 427, i32 20 }
@___asan_gen_.939 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 428, i32 3 }
@___asan_gen_.942 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 428, i32 32 }
@___asan_gen_.954 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 329, i32 4 }
@___asan_gen_.960 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 337, i32 4 }
@___asan_gen_.966 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 345, i32 4 }
@___asan_gen_.972 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 353, i32 4 }
@___asan_gen_.975 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 440, i32 1 }
@___asan_gen_.976 = private unnamed_addr constant [21 x i8] c".compoundliteral.227\00", align 1
@___asan_gen_.979 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 442, i32 1 }
@___asan_gen_.980 = private unnamed_addr constant [21 x i8] c".compoundliteral.229\00", align 1
@___asan_gen_.983 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 444, i32 1 }
@___asan_gen_.984 = private unnamed_addr constant [21 x i8] c".compoundliteral.231\00", align 1
@___asan_gen_.987 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 446, i32 1 }
@___asan_gen_.988 = private unnamed_addr constant [21 x i8] c".compoundliteral.233\00", align 1
@___asan_gen_.991 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 448, i32 1 }
@___asan_gen_.992 = private unnamed_addr constant [21 x i8] c".compoundliteral.235\00", align 1
@___asan_gen_.995 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 450, i32 1 }
@___asan_gen_.996 = private unnamed_addr constant [21 x i8] c".compoundliteral.237\00", align 1
@___asan_gen_.999 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 452, i32 1 }
@___asan_gen_.1000 = private unnamed_addr constant [21 x i8] c".compoundliteral.239\00", align 1
@___asan_gen_.1003 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 476, i32 1 }
@___asan_gen_.1004 = private unnamed_addr constant [21 x i8] c".compoundliteral.241\00", align 1
@___asan_gen_.1007 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 478, i32 1 }
@___asan_gen_.1008 = private unnamed_addr constant [21 x i8] c".compoundliteral.243\00", align 1
@___asan_gen_.1011 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 480, i32 1 }
@___asan_gen_.1012 = private unnamed_addr constant [21 x i8] c".compoundliteral.245\00", align 1
@___asan_gen_.1015 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 486, i32 1 }
@___asan_gen_.1016 = private unnamed_addr constant [21 x i8] c".compoundliteral.247\00", align 1
@___asan_gen_.1019 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 488, i32 1 }
@___asan_gen_.1020 = private unnamed_addr constant [21 x i8] c".compoundliteral.249\00", align 1
@___asan_gen_.1023 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 490, i32 1 }
@___asan_gen_.1024 = private unnamed_addr constant [21 x i8] c".compoundliteral.251\00", align 1
@___asan_gen_.1027 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 516, i32 1 }
@___asan_gen_.1028 = private unnamed_addr constant [21 x i8] c".compoundliteral.253\00", align 1
@___asan_gen_.1031 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 518, i32 1 }
@___asan_gen_.1032 = private unnamed_addr constant [21 x i8] c".compoundliteral.255\00", align 1
@___asan_gen_.1035 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 532, i32 1 }
@___asan_gen_.1036 = private unnamed_addr constant [21 x i8] c".compoundliteral.257\00", align 1
@___asan_gen_.1039 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 534, i32 1 }
@___asan_gen_.1040 = private unnamed_addr constant [21 x i8] c".compoundliteral.259\00", align 1
@___asan_gen_.1043 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 536, i32 1 }
@___asan_gen_.1044 = private unnamed_addr constant [21 x i8] c".compoundliteral.261\00", align 1
@___asan_gen_.1047 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 538, i32 1 }
@___asan_gen_.1048 = private unnamed_addr constant [21 x i8] c".compoundliteral.263\00", align 1
@___asan_gen_.1051 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 540, i32 1 }
@___asan_gen_.1052 = private unnamed_addr constant [21 x i8] c".compoundliteral.265\00", align 1
@___asan_gen_.1055 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 542, i32 1 }
@___asan_gen_.1056 = private unnamed_addr constant [21 x i8] c".compoundliteral.267\00", align 1
@___asan_gen_.1059 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 544, i32 1 }
@___asan_gen_.1060 = private unnamed_addr constant [21 x i8] c".compoundliteral.269\00", align 1
@___asan_gen_.1063 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 546, i32 1 }
@___asan_gen_.1064 = private unnamed_addr constant [21 x i8] c".compoundliteral.271\00", align 1
@___asan_gen_.1067 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 524, i32 1 }
@___asan_gen_.1068 = private unnamed_addr constant [21 x i8] c".compoundliteral.273\00", align 1
@___asan_gen_.1071 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 526, i32 1 }
@___asan_gen_.1072 = private unnamed_addr constant [21 x i8] c".compoundliteral.275\00", align 1
@___asan_gen_.1075 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 506, i32 1 }
@___asan_gen_.1076 = private unnamed_addr constant [21 x i8] c".compoundliteral.277\00", align 1
@___asan_gen_.1079 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 508, i32 1 }
@___asan_gen_.1080 = private unnamed_addr constant [21 x i8] c".compoundliteral.279\00", align 1
@___asan_gen_.1083 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 510, i32 1 }
@___asan_gen_.1084 = private unnamed_addr constant [21 x i8] c".compoundliteral.281\00", align 1
@___asan_gen_.1087 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 496, i32 1 }
@___asan_gen_.1088 = private unnamed_addr constant [21 x i8] c".compoundliteral.283\00", align 1
@___asan_gen_.1091 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 498, i32 1 }
@___asan_gen_.1092 = private unnamed_addr constant [21 x i8] c".compoundliteral.285\00", align 1
@___asan_gen_.1095 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 500, i32 1 }
@___asan_gen_.1096 = private unnamed_addr constant [21 x i8] c".compoundliteral.287\00", align 1
@___asan_gen_.1099 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 458, i32 1 }
@___asan_gen_.1100 = private unnamed_addr constant [21 x i8] c".compoundliteral.289\00", align 1
@___asan_gen_.1103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 460, i32 1 }
@___asan_gen_.1104 = private unnamed_addr constant [21 x i8] c".compoundliteral.291\00", align 1
@___asan_gen_.1107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 462, i32 1 }
@___asan_gen_.1108 = private unnamed_addr constant [21 x i8] c".compoundliteral.293\00", align 1
@___asan_gen_.1111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 464, i32 1 }
@___asan_gen_.1112 = private unnamed_addr constant [21 x i8] c".compoundliteral.295\00", align 1
@___asan_gen_.1115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 466, i32 1 }
@___asan_gen_.1116 = private unnamed_addr constant [21 x i8] c".compoundliteral.297\00", align 1
@___asan_gen_.1119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 468, i32 1 }
@___asan_gen_.1120 = private unnamed_addr constant [21 x i8] c".compoundliteral.299\00", align 1
@___asan_gen_.1123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 470, i32 1 }
@___asan_gen_.1124 = private unnamed_addr constant [21 x i8] c".compoundliteral.301\00", align 1
@___asan_gen_.1125 = private unnamed_addr constant [6 x i8] c"power\00", align 1
@___asan_gen_.1127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 30, i32 35 }
@___asan_gen_.1142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 1279, i32 3 }
@___asan_gen_.1145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 32, i32 13 }
@___asan_gen_.1148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 35, i32 13 }
@___asan_gen_.1151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 38, i32 13 }
@___asan_gen_.1154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 41, i32 13 }
@___asan_gen_.1157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 44, i32 13 }
@___asan_gen_.1160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 47, i32 13 }
@___asan_gen_.1163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 50, i32 13 }
@___asan_gen_.1172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 1132, i32 5 }
@___asan_gen_.1175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 1242, i32 10 }
@___asan_gen_.1176 = private unnamed_addr constant [15 x i8] c"wm8400_dai_ops\00", align 1
@___asan_gen_.1178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 1223, i32 37 }
@___asan_gen_.1181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 1251, i32 18 }
@___asan_gen_.1184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 1244, i32 18 }
@___asan_gen_.1193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 863, i32 4 }
@___asan_gen_.1194 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 890, i32 4 }
@___asan_gen_.1203 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1204 = private constant [29 x i8] c"../sound/soc/codecs/wm8400.c\00", align 1
@___asan_gen_.1205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1204, i32 912, i32 2 }
@___asan_gen_.1206 = private unnamed_addr constant [35 x i8] c"switch.table.wm8400_set_dai_clkdiv\00", align 1
@___asan_gen_.1207 = private unnamed_addr constant [39 x i8] c"switch.table.wm8400_set_dai_clkdiv.325\00", align 1
@llvm.compiler.used = appending global [384 x ptr] [ptr @__UNIQUE_ID_alias300, ptr @__UNIQUE_ID_author297, ptr @__UNIQUE_ID_description296, ptr @__UNIQUE_ID_file298, ptr @__UNIQUE_ID_license299, ptr @__exitcall_wm8400_codec_driver_exit, ptr @__initcall__kmod_snd_soc_wm8400__295_1342_wm8400_codec_driver_init6, ptr @fll_factors._entry, ptr @fll_factors._entry.320, ptr @fll_factors._entry_ptr, ptr @fll_factors._entry_ptr.322, ptr @outmixer_event._entry, ptr @outmixer_event._entry.217, ptr @outmixer_event._entry.220, ptr @outmixer_event._entry.223, ptr @outmixer_event._entry_ptr, ptr @outmixer_event._entry_ptr.219, ptr @outmixer_event._entry_ptr.222, ptr @outmixer_event._entry_ptr.225, ptr @wm8400_codec_driver_exit, ptr @wm8400_component_probe._entry, ptr @wm8400_component_probe._entry_ptr, ptr @wm8400_set_bias_level._entry, ptr @wm8400_set_bias_level._entry_ptr, ptr @wm8400_codec_driver, ptr @.str, ptr @soc_component_dev_wm8400, ptr @wm8400_dai, ptr @wm8400_snd_controls, ptr @wm8400_dapm_routes, ptr @.str.1, ptr @.compoundliteral, ptr @.str.2, ptr @.compoundliteral.3, ptr @.str.4, ptr @.compoundliteral.5, ptr @.str.6, ptr @.compoundliteral.7, ptr @.str.8, ptr @out_mix_tlv, ptr @.compoundliteral.9, ptr @.str.10, ptr @.compoundliteral.11, ptr @.str.12, ptr @.compoundliteral.13, ptr @.str.14, ptr @.compoundliteral.15, ptr @.str.16, ptr @.compoundliteral.17, ptr @.str.18, ptr @.compoundliteral.19, ptr @.str.20, ptr @.compoundliteral.21, ptr @.str.22, ptr @.compoundliteral.23, ptr @.str.24, ptr @.compoundliteral.25, ptr @.str.26, ptr @.compoundliteral.27, ptr @.str.28, ptr @.compoundliteral.29, ptr @.str.30, ptr @.compoundliteral.31, ptr @.str.32, ptr @out_pga_tlv, ptr @.compoundliteral.33, ptr @.str.34, ptr @.compoundliteral.35, ptr @.str.36, ptr @.compoundliteral.37, ptr @.str.38, ptr @.compoundliteral.39, ptr @.str.40, ptr @.compoundliteral.41, ptr @.str.42, ptr @.compoundliteral.43, ptr @.str.44, ptr @.compoundliteral.45, ptr @.str.46, ptr @.compoundliteral.47, ptr @.str.48, ptr @.compoundliteral.49, ptr @.str.50, ptr @.compoundliteral.51, ptr @.str.52, ptr @.compoundliteral.53, ptr @.str.54, ptr @.compoundliteral.55, ptr @.str.56, ptr @.compoundliteral.57, ptr @.str.58, ptr @.compoundliteral.59, ptr @.str.60, ptr @.compoundliteral.61, ptr @.str.62, ptr @.compoundliteral.63, ptr @.str.64, ptr @.compoundliteral.65, ptr @.str.66, ptr @.compoundliteral.67, ptr @.str.68, ptr @.compoundliteral.69, ptr @.str.70, ptr @.compoundliteral.71, ptr @.str.72, ptr @.compoundliteral.73, ptr @.str.74, ptr @.compoundliteral.75, ptr @.str.76, ptr @out_dac_tlv, ptr @.compoundliteral.77, ptr @.str.78, ptr @.compoundliteral.79, ptr @.str.80, ptr @wm8400_left_digital_sidetone_enum, ptr @.str.81, ptr @wm8400_right_digital_sidetone_enum, ptr @.str.82, ptr @out_sidetone_tlv, ptr @.compoundliteral.83, ptr @.str.84, ptr @.compoundliteral.85, ptr @.str.86, ptr @.compoundliteral.87, ptr @.str.88, ptr @wm8400_right_adcmode_enum, ptr @.str.89, ptr @in_adc_tlv, ptr @.compoundliteral.90, ptr @.str.91, ptr @.compoundliteral.92, ptr @.str.93, ptr @in_pga_tlv, ptr @.compoundliteral.94, ptr @.str.95, ptr @.compoundliteral.96, ptr @.str.97, ptr @.compoundliteral.98, ptr @.str.99, ptr @.compoundliteral.100, ptr @.str.101, ptr @.compoundliteral.102, ptr @.str.103, ptr @.compoundliteral.104, ptr @.str.105, ptr @.compoundliteral.106, ptr @.str.107, ptr @.compoundliteral.108, ptr @.str.109, ptr @.compoundliteral.110, ptr @.str.111, ptr @.compoundliteral.112, ptr @.str.113, ptr @.compoundliteral.114, ptr @.str.115, ptr @.compoundliteral.116, ptr @wm8400_digital_sidetone, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @wm8400_adcmode, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @wm8400_dapm_lin12_pga_controls, ptr @.str.137, ptr @wm8400_dapm_lin34_pga_controls, ptr @.str.138, ptr @wm8400_dapm_rin12_pga_controls, ptr @.str.139, ptr @wm8400_dapm_rin34_pga_controls, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @wm8400_dapm_inmixl_controls, ptr @.str.143, ptr @wm8400_dapm_ainlmux_controls, ptr @.str.144, ptr @wm8400_dapm_inmixr_controls, ptr @.str.145, ptr @wm8400_dapm_ainrmux_controls, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @wm8400_dapm_lomix_controls, ptr @.str.151, ptr @wm8400_dapm_lonmix_controls, ptr @.str.152, ptr @wm8400_dapm_lopmix_controls, ptr @.str.153, ptr @wm8400_dapm_out3mix_controls, ptr @.str.154, ptr @wm8400_dapm_spkmix_controls, ptr @.str.155, ptr @wm8400_dapm_out4mix_controls, ptr @.str.156, ptr @wm8400_dapm_ropmix_controls, ptr @.str.157, ptr @wm8400_dapm_ronmix_controls, ptr @.str.158, ptr @wm8400_dapm_romix_controls, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @wm8400_dapm_widgets, ptr @.str.176, ptr @.compoundliteral.177, ptr @.str.178, ptr @.compoundliteral.179, ptr @.str.180, ptr @.compoundliteral.181, ptr @.str.182, ptr @.compoundliteral.183, ptr @.str.184, ptr @.compoundliteral.185, ptr @.str.186, ptr @.compoundliteral.187, ptr @.str.188, ptr @.compoundliteral.189, ptr @.str.190, ptr @.compoundliteral.191, ptr @.str.192, ptr @in_mix_tlv, ptr @.compoundliteral.193, ptr @.str.194, ptr @.compoundliteral.195, ptr @.str.196, ptr @.compoundliteral.197, ptr @.str.198, ptr @.compoundliteral.199, ptr @.str.200, ptr @wm8400_ainlmux_enum, ptr @wm8400_ainlmux, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.compoundliteral.205, ptr @.str.206, ptr @.compoundliteral.207, ptr @.str.208, ptr @.compoundliteral.209, ptr @.str.210, ptr @.compoundliteral.211, ptr @wm8400_ainrmux_enum, ptr @wm8400_ainrmux, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.218, ptr @.str.221, ptr @.str.224, ptr @.str.226, ptr @.compoundliteral.227, ptr @.str.228, ptr @.compoundliteral.229, ptr @.str.230, ptr @.compoundliteral.231, ptr @.str.232, ptr @.compoundliteral.233, ptr @.str.234, ptr @.compoundliteral.235, ptr @.str.236, ptr @.compoundliteral.237, ptr @.str.238, ptr @.compoundliteral.239, ptr @.str.240, ptr @.compoundliteral.241, ptr @.str.242, ptr @.compoundliteral.243, ptr @.str.244, ptr @.compoundliteral.245, ptr @.str.246, ptr @.compoundliteral.247, ptr @.str.248, ptr @.compoundliteral.249, ptr @.str.250, ptr @.compoundliteral.251, ptr @.str.252, ptr @.compoundliteral.253, ptr @.str.254, ptr @.compoundliteral.255, ptr @.str.256, ptr @.compoundliteral.257, ptr @.str.258, ptr @.compoundliteral.259, ptr @.str.260, ptr @.compoundliteral.261, ptr @.str.262, ptr @.compoundliteral.263, ptr @.str.264, ptr @.compoundliteral.265, ptr @.str.266, ptr @.compoundliteral.267, ptr @.str.268, ptr @.compoundliteral.269, ptr @.str.270, ptr @.compoundliteral.271, ptr @.str.272, ptr @.compoundliteral.273, ptr @.str.274, ptr @.compoundliteral.275, ptr @.str.276, ptr @.compoundliteral.277, ptr @.str.278, ptr @.compoundliteral.279, ptr @.str.280, ptr @.compoundliteral.281, ptr @.str.282, ptr @.compoundliteral.283, ptr @.str.284, ptr @.compoundliteral.285, ptr @.str.286, ptr @.compoundliteral.287, ptr @.str.288, ptr @.compoundliteral.289, ptr @.str.290, ptr @.compoundliteral.291, ptr @.str.292, ptr @.compoundliteral.293, ptr @.str.294, ptr @.compoundliteral.295, ptr @.str.296, ptr @.compoundliteral.297, ptr @.str.298, ptr @.compoundliteral.299, ptr @.str.300, ptr @.compoundliteral.301, ptr @power, ptr @.str.302, ptr @.str.303, ptr @.str.304, ptr @.str.305, ptr @.str.306, ptr @.str.307, ptr @.str.308, ptr @.str.309, ptr @.str.310, ptr @.str.311, ptr @.str.312, ptr @.str.313, ptr @.str.314, ptr @.str.315, ptr @wm8400_dai_ops, ptr @.str.316, ptr @.str.317, ptr @.str.318, ptr @.str.319, ptr @.str.321, ptr @.str.323, ptr @.str.324, ptr @switch.table.wm8400_set_dai_clkdiv, ptr @switch.table.wm8400_set_dai_clkdiv.325], section "llvm.metadata"
@0 = internal global [368 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8400_codec_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_component_dev_wm8400 to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8400_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8400_snd_controls to i32), i32 2880, i32 3584, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8400_dapm_routes to i32), i32 4524, i32 5664, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.3 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.5 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.7 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @out_mix_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.9 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.11 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.13 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.15 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.17 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.19 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.21 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.23 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.25 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.27 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.29 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.31 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @out_pga_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.33 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.35 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.37 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.39 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.41 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.43 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.45 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.47 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.49 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.51 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.53 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.55 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.57 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.59 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.61 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.63 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.65 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.67 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.69 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.71 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.73 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.75 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @out_dac_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.77 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.79 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8400_left_digital_sidetone_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8400_right_digital_sidetone_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @out_sidetone_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.83 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.85 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.87 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8400_right_adcmode_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in_adc_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.90 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.92 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in_pga_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.94 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.96 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.98 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.100 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.102 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.104 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.106 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.108 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.110 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.112 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.114 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.116 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8400_digital_sidetone to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8400_adcmode to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8400_dapm_lin12_pga_controls to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8400_dapm_lin34_pga_controls to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8400_dapm_rin12_pga_controls to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8400_dapm_rin34_pga_controls to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8400_dapm_inmixl_controls to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8400_dapm_ainlmux_controls to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8400_dapm_inmixr_controls to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8400_dapm_ainrmux_controls to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8400_dapm_lomix_controls to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8400_dapm_lonmix_controls to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8400_dapm_lopmix_controls to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8400_dapm_out3mix_controls to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8400_dapm_spkmix_controls to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8400_dapm_out4mix_controls to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8400_dapm_ropmix_controls to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8400_dapm_ronmix_controls to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8400_dapm_romix_controls to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8400_dapm_widgets to i32), i32 8640, i32 10784, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.177 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.179 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.181 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.183 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.185 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.187 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.189 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.191 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @in_mix_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.193 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.195 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.197 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.199 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8400_ainlmux_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8400_ainlmux to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.205 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.207 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.209 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.211 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8400_ainrmux_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8400_ainrmux to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @outmixer_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1194 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @outmixer_event._entry.217 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1194 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @outmixer_event._entry.220 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1194 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @outmixer_event._entry.223 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1194 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.227 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.229 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.231 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.233 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.235 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.237 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.239 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.241 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.243 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.245 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.247 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1019 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.249 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.251 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.253 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.255 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1035 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.257 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1036 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.259 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.261 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.263 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.265 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.267 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.269 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1060 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.271 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.273 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.275 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.277 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.279 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.280 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.281 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.282 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.283 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.284 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.285 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.286 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1095 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.287 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.288 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.289 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1100 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.290 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.291 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.292 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.293 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1108 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.294 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.295 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.296 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.297 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.298 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.299 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1120 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.300 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.301 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1124 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @power to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8400_component_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1194 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.302 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.303 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.304 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.305 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.306 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.307 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.308 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.309 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.310 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.311 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.312 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8400_set_bias_level._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1194 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.313 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.314 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.315 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8400_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.316 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.317 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fll_factors._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1194 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.318 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.319 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fll_factors._entry.320 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1194 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.321 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.323 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.324 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wm8400_set_dai_clkdiv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wm8400_set_dai_clkdiv.325 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8400_codec_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @wm8400_codec_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @wm8400_codec_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @wm8400_codec_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8400_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @soc_component_dev_wm8400, ptr noundef nonnull @wm8400_dai, i32 noundef 1) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8400_component_probe(ptr noundef %component) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %platform_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 24, i32 noundef 3520) #7
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %regmap = getelementptr inbounds %struct.wm8400, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  tail call void @snd_soc_component_init_regmap(ptr noundef %component, ptr noundef %5) #7
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %3, ptr %call.i, align 4
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 8
  %call5 = tail call i32 @devm_regulator_bulk_get(ptr noundef %11, i32 noundef 7, ptr noundef nonnull @power) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6.not = icmp eq i32 %call5, 0
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  br i1 %cmp6.not, label %if.end9, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.302, i32 noundef %call5) #10
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %driver_data.i.i.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  tail call void @wm8400_reset_codec_reg_cache(ptr noundef %17) #7
  %call10 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 2) #7
  %conv11 = and i32 %call10, 32767
  %or = or i32 %conv11, 32768
  %call12 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 2, i32 noundef %or) #7
  %call13 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 24) #7
  %and = and i32 %call13, 256
  %call16 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 24, i32 noundef %and) #7
  %call17 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 26) #7
  %and20 = and i32 %call17, 256
  %call21 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 26, i32 noundef %and20) #7
  %call22 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 28, i32 noundef 336) #7
  %call23 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 29, i32 noundef 336) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %do.end ], [ 0, %if.end9 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wm8400_component_remove(ptr noundef %component) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 2) #7
  %and = and i32 %call, 32767
  %call2 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 2, i32 noundef %and) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8400_set_bias_level(ptr noundef %component, i32 noundef %level) #2 align 64 {
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
  switch i32 %level, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb30
    i32 2, label %entry.sw.epilog.sink.split_crit_edge
    i32 1, label %sw.bb4
  ]

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %dapm.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %5 = ptrtoint ptr %dapm.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dapm.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp eq i32 %6, 0
  br i1 %cmp, label %if.then, label %sw.bb4.sw.epilog.sink.split_crit_edge

sw.bb4.sw.epilog.sink.split_crit_edge:            ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

if.then:                                          ; preds = %sw.bb4
  %call7 = tail call i32 @regulator_bulk_enable(i32 noundef 7, ptr noundef nonnull @power) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8.not = icmp eq i32 %call7, 0
  br i1 %cmp8.not, label %if.end, label %do.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %3, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.313, i32 noundef %call7) #10
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call12 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 2, i32 noundef 49152) #7
  %call13 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 57, i32 noundef 70) #7
  tail call void @msleep(i32 noundef 50) #7
  %call14 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 2) #7
  %conv18 = and i32 %call14, 65532
  %conv19 = or i32 %conv18, 3
  %call20 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 2, i32 noundef %conv19) #7
  %call21 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 57, i32 noundef 78) #7
  %call22 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 57, i32 noundef 8) #7
  br label %sw.epilog.sink.split

sw.bb30:                                          ; preds = %entry
  %call31 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 57, i32 noundef 74) #7
  %call32 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 57, i32 noundef 78) #7
  %call33 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 11) #7
  %conv35 = and i32 %call33, 65531
  %or36 = or i32 %conv35, 4
  %call37 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 11, i32 noundef %or36) #7
  %call38 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 2) #7
  %conv42 = and i32 %call38, 57599
  %conv43 = or i32 %conv42, 7936
  %call44 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 2, i32 noundef %conv43) #7
  %conv47 = and i32 %conv43, 65529
  %call49 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 2, i32 noundef %conv47) #7
  tail call void @msleep(i32 noundef 300) #7
  %call50 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 56, i32 noundef 63) #7
  %conv53 = and i32 %conv43, 65528
  %call55 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 2, i32 noundef %conv53) #7
  %call56 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 57, i32 noundef 0) #7
  %call57 = tail call i32 @regulator_bulk_disable(i32 noundef 7, ptr noundef nonnull @power) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %cmp58.not = icmp eq i32 %call57, 0
  br i1 %cmp58.not, label %sw.bb30.sw.epilog_crit_edge, label %sw.bb30.cleanup_crit_edge

sw.bb30.cleanup_crit_edge:                        ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb30.sw.epilog_crit_edge:                      ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %if.end, %sw.bb4.sw.epilog.sink.split_crit_edge, %entry.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ %level, %entry.sw.epilog.sink.split_crit_edge ], [ 4, %if.end ], [ 4, %sw.bb4.sw.epilog.sink.split_crit_edge ]
  %call24 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 2) #7
  %conv26 = and i32 %call24, 65529
  %or28 = or i32 %conv26, %.sink
  %call29 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 2, i32 noundef %or28) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb30.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb30.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ %call7, %do.end ], [ %call57, %sw.bb30.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8400_outpga_put_volsw_vu(ptr noundef %kcontrol, ptr noundef %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %4 = inttoptr i32 %3 to ptr
  %reg1 = getelementptr inbounds %struct.soc_mixer_control, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %reg1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg1, align 4
  %call2 = tail call i32 @snd_soc_put_volsw(ptr noundef %kcontrol, ptr noundef %ucontrol) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef %6) #7
  %conv4 = and i32 %call3, 65279
  %or = or i32 %conv4, 256
  %call5 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef %6, i32 noundef %or) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @outmixer_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readonly %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %4 = inttoptr i32 %3 to ptr
  %shift = getelementptr inbounds %struct.soc_mixer_control, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %shift, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.326)
  switch i32 %6, label %entry.sw.epilog_crit_edge [
    i32 566, label %sw.bb
    i32 310, label %sw.bb4
    i32 301, label %sw.bb17
    i32 302, label %sw.bb30
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %call1 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef 45) #7
  %and = and i32 %call1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.sw.epilog.sink.split_crit_edge

sw.bb.sw.epilog.sink.split_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %call5 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef 46) #7
  %and8 = and i32 %call5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %sw.bb4.sw.epilog_crit_edge, label %sw.bb4.sw.epilog.sink.split_crit_edge

sw.bb4.sw.epilog.sink.split_crit_edge:            ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

sw.bb4.sw.epilog_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  %call18 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef 54) #7
  %and21 = and i32 %call18, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %sw.bb17.sw.epilog_crit_edge, label %sw.bb17.sw.epilog.sink.split_crit_edge

sw.bb17.sw.epilog.sink.split_crit_edge:           ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

sw.bb17.sw.epilog_crit_edge:                      ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb30:                                          ; preds = %entry
  %call31 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef 54) #7
  %and34 = and i32 %call31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  br i1 %tobool35.not, label %sw.bb30.sw.epilog_crit_edge, label %sw.bb30.sw.epilog.sink.split_crit_edge

sw.bb30.sw.epilog.sink.split_crit_edge:           ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.sink.split

sw.bb30.sw.epilog_crit_edge:                      ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %sw.bb30.sw.epilog.sink.split_crit_edge, %sw.bb17.sw.epilog.sink.split_crit_edge, %sw.bb4.sw.epilog.sink.split_crit_edge, %sw.bb.sw.epilog.sink.split_crit_edge
  %.str.224.sink = phi ptr [ @.str.214, %sw.bb.sw.epilog.sink.split_crit_edge ], [ @.str.218, %sw.bb4.sw.epilog.sink.split_crit_edge ], [ @.str.221, %sw.bb17.sw.epilog.sink.split_crit_edge ], [ @.str.224, %sw.bb30.sw.epilog.sink.split_crit_edge ]
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.224.sink) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb30.sw.epilog_crit_edge, %sw.bb17.sw.epilog_crit_edge, %sw.bb4.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %ret.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ 0, %sw.bb30.sw.epilog_crit_edge ], [ 0, %sw.bb17.sw.epilog_crit_edge ], [ 0, %sw.bb4.sw.epilog_crit_edge ], [ 0, %sw.bb.sw.epilog_crit_edge ], [ -1, %sw.epilog.sink.split ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_component_init_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wm8400_reset_codec_reg_cache(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wm8400_set_dai_sysclk(ptr nocapture noundef readonly %codec_dai, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #5 align 64 {
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
  %sysclk = getelementptr inbounds %struct.wm8400_priv, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %sysclk to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %freq, ptr %sysclk, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8400_set_dai_pll(ptr nocapture noundef readonly %codec_dai, i32 noundef %pll_id, i32 noundef %source, i32 noundef %freq_in, i32 noundef %freq_out) #2 align 64 {
entry:
  %factors = alloca %struct.fll_factors, align 2
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
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %factors) #7
  %6 = getelementptr inbounds %struct.fll_factors, ptr %factors, i32 0, i32 1
  %7 = getelementptr inbounds %struct.fll_factors, ptr %factors, i32 0, i32 2
  %8 = getelementptr inbounds %struct.fll_factors, ptr %factors, i32 0, i32 3
  %9 = getelementptr inbounds %struct.fll_factors, ptr %factors, i32 0, i32 4
  %fll_in = getelementptr inbounds %struct.wm8400_priv, ptr %5, i32 0, i32 4
  %10 = call ptr @memset(ptr %factors, i32 255, i32 10)
  %11 = ptrtoint ptr %fll_in to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fll_in, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %freq_in)
  %cmp = icmp eq i32 %12, %freq_in
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %fll_out = getelementptr inbounds %struct.wm8400_priv, ptr %5, i32 0, i32 5
  %13 = ptrtoint ptr %fll_out to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fll_out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %freq_out)
  %cmp2 = icmp eq i32 %14, %freq_out
  br i1 %cmp2, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %freq_out)
  %tobool.not = icmp eq i32 %freq_out, 0
  br i1 %tobool.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  %call4 = call fastcc i32 @fll_factors(ptr noundef %5, ptr noundef nonnull %factors, i32 noundef %freq_in, i32 noundef %freq_out)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5.not = icmp eq i32 %call4, 0
  br i1 %cmp5.not, label %if.then3.if.end8_crit_edge, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3.if.end8_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %15 = call ptr @memset(ptr %factors, i32 0, i32 10)
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then3.if.end8_crit_edge
  %fll_out9 = getelementptr inbounds %struct.wm8400_priv, ptr %5, i32 0, i32 5
  %16 = ptrtoint ptr %fll_out9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %freq_out, ptr %fll_out9, align 4
  %17 = ptrtoint ptr %fll_in to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %freq_in, ptr %fll_in, align 4
  %call11 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 3) #7
  %conv13 = and i32 %call11, 32767
  %call15 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 3, i32 noundef %conv13) #7
  %call16 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 60) #7
  %conv20 = and i32 %call16, 65279
  %call22 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 60, i32 noundef %conv20) #7
  br i1 %tobool.not, label %if.end8.cleanup_crit_edge, label %if.end25

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end25:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %8 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %8, align 2
  %20 = trunc i32 %call16 to i16
  %21 = and i16 %20, -4896
  %22 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %9, align 2
  %shl = shl i16 %23, 12
  %24 = or i16 %21, %19
  %conv32 = or i16 %24, %shl
  %or35 = or i16 %conv32, 512
  %conv37 = zext i16 %or35 to i32
  %call38 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 60, i32 noundef %conv37) #7
  %25 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %6, align 2
  %conv39 = zext i16 %26 to i32
  %call40 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 61, i32 noundef %conv39) #7
  %27 = ptrtoint ptr %factors to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %factors, align 2
  %conv41 = zext i16 %28 to i32
  %call42 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 62, i32 noundef %conv41) #7
  %call43 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 63) #7
  %29 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %7, align 2
  %31 = trunc i32 %call43 to i16
  %32 = and i16 %31, -8
  %conv51 = or i16 %32, %30
  %conv52 = zext i16 %conv51 to i32
  %call53 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 63, i32 noundef %conv52) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.end8.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end25 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ %call4, %if.then3.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %factors) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8400_set_dai_clkdiv(ptr nocapture noundef readonly %codec_dai, i32 noundef %div_id, i32 noundef %div) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %div_id)
  %0 = icmp ult i32 %div_id, 4
  br i1 %0, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %codec_dai, i32 0, i32 12
  %1 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %component1, align 4
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.wm8400_set_dai_clkdiv, i32 0, i32 %div_id
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep41 = getelementptr inbounds [4 x i32], ptr @switch.table.wm8400_set_dai_clkdiv.325, i32 0, i32 %div_id
  %4 = ptrtoint ptr %switch.gep41 to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load42 = load i32, ptr %switch.gep41, align 4
  %call = tail call i32 @snd_soc_component_read(ptr noundef %2, i32 noundef %switch.load) #7
  %conv = and i32 %call, %switch.load42
  %or = or i32 %conv, %div
  %call3 = tail call i32 @snd_soc_component_write(ptr noundef %2, i32 noundef %switch.load, i32 noundef %or) #7
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %switch.lookup ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8400_set_dai_fmt(ptr nocapture noundef readonly %codec_dai, i32 noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %codec_dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %call = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 5) #7
  %call2 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 9) #7
  %2 = trunc i32 %fmt to i16
  %trunc = and i16 %2, -4096
  %3 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.327)
  switch i16 %trunc, label %entry.cleanup_crit_edge [
    i16 16384, label %sw.bb
    i16 4096, label %sw.bb7
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and5 = and i32 %call2, 32767
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv9 = or i32 %call2, 32768
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb
  %audio3.0 = phi i32 [ %conv9, %sw.bb7 ], [ %and5, %sw.bb ]
  %and13 = and i32 %fmt, 15
  %4 = zext i32 %and13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.328)
  switch i32 %and13, label %sw.epilog.cleanup_crit_edge [
    i32 1, label %sw.bb14
    i32 2, label %sw.bb21
    i32 3, label %sw.bb28
    i32 4, label %sw.bb35
    i32 5, label %sw.bb42
  ]

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb14:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %5 = and i32 %call, 65383
  %conv17 = or i32 %5, 16
  br label %sw.epilog47

sw.bb21:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %and26 = and i32 %call, 65383
  br label %sw.epilog47

sw.bb28:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %conv32 = and i32 %call, 65383
  %and33 = or i32 %conv32, 8
  br label %sw.epilog47

sw.bb35:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %conv38 = and i32 %call, 65383
  %conv39 = or i32 %conv38, 24
  br label %sw.epilog47

sw.bb42:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %conv45 = or i32 %call, 152
  br label %sw.epilog47

sw.epilog47:                                      ; preds = %sw.bb42, %sw.bb35, %sw.bb28, %sw.bb21, %sw.bb14
  %audio1.0 = phi i32 [ %conv45, %sw.bb42 ], [ %conv39, %sw.bb35 ], [ %and33, %sw.bb28 ], [ %and26, %sw.bb21 ], [ %conv17, %sw.bb14 ]
  %conv48 = and i32 %audio1.0, 65535
  %call49 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 5, i32 noundef %conv48) #7
  %conv50 = and i32 %audio3.0, 65535
  %call51 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 9, i32 noundef %conv50) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog47, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog47 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8400_mute(ptr nocapture noundef readonly %dai, i32 noundef %mute, i32 noundef %direction) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %call = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 11) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mute)
  %tobool.not = icmp eq i32 %mute, 0
  %conv = and i32 %call, 65531
  %or = or i32 %conv, 4
  %conv.sink = select i1 %tobool.not, i32 %conv, i32 %or
  %call5 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 11, i32 noundef %conv.sink) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8400_hw_params(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %call = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 5) #7
  %2 = trunc i32 %call to i16
  %conv3 = and i16 %2, -97
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i.i.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %entry.if.then.i.i.i_crit_edge

entry.if.then.i.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %entry.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %entry.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %4, %entry.if.then.i.i.i_crit_edge ], [ %7, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %5 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #7, !range !522
  %add.i.i.i = or i32 %5, %i.09.lcssa.i.i.i
  br label %params_width.exit

for.inc.i.i.i:                                    ; preds = %entry
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.1.i.i.i = icmp eq i32 %7, 0
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
  %8 = zext i32 %call1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.329)
  switch i32 %call1.i, label %params_width.exit.sw.epilog_crit_edge [
    i32 32, label %sw.bb11
    i32 20, label %sw.bb
    i32 24, label %sw.bb7
  ]

params_width.exit.sw.epilog_crit_edge:            ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = or i16 %conv3, 32
  br label %sw.epilog

sw.bb7:                                           ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #9
  %10 = or i16 %conv3, 64
  br label %sw.epilog

sw.bb11:                                          ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #9
  %conv14 = or i16 %2, 96
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb11, %sw.bb7, %sw.bb, %params_width.exit.sw.epilog_crit_edge
  %audio1.0 = phi i16 [ %conv3, %params_width.exit.sw.epilog_crit_edge ], [ %10, %sw.bb7 ], [ %9, %sw.bb ], [ %conv14, %sw.bb11 ]
  %conv15 = zext i16 %audio1.0 to i32
  %call16 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 5, i32 noundef %conv15) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fll_factors(ptr nocapture noundef readonly %wm8400, ptr nocapture noundef %factors, i32 noundef %Fref, i32 noundef %Fout) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %outdiv = getelementptr inbounds %struct.fll_factors, ptr %factors, i32 0, i32 2
  %mul = shl i32 %Fout, 1
  %0 = add i32 %mul, -100000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10000001, i32 %0)
  %1 = icmp ult i32 %0, -10000001
  br i1 %1, label %while.body, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %entry
  %mul.1 = shl i32 %Fout, 2
  %2 = add i32 %mul.1, -100000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10000001, i32 %2)
  %3 = icmp ult i32 %2, -10000001
  br i1 %3, label %while.body.1, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.1:                                     ; preds = %while.body
  %mul.2 = shl i32 %Fout, 3
  %4 = add i32 %mul.2, -100000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10000001, i32 %4)
  %5 = icmp ult i32 %4, -10000001
  br i1 %5, label %while.body.2, label %while.body.1.while.end_crit_edge

while.body.1.while.end_crit_edge:                 ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.2:                                     ; preds = %while.body.1
  %mul.3 = shl i32 %Fout, 4
  %6 = add i32 %mul.3, -100000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10000001, i32 %6)
  %7 = icmp ult i32 %6, -10000001
  br i1 %7, label %while.body.3, label %while.body.2.while.end_crit_edge

while.body.2.while.end_crit_edge:                 ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.3:                                     ; preds = %while.body.2
  %mul.4 = shl i32 %Fout, 5
  %8 = add i32 %mul.4, -100000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10000001, i32 %8)
  %9 = icmp ult i32 %8, -10000001
  br i1 %9, label %while.body.4, label %while.body.3.while.end_crit_edge

while.body.3.while.end_crit_edge:                 ; preds = %while.body.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.4:                                     ; preds = %while.body.3
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %outdiv to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 64, ptr %outdiv, align 2
  %11 = ptrtoint ptr %wm8400 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wm8400, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.318, i32 noundef %Fout) #10
  br label %cleanup

while.end:                                        ; preds = %while.body.3.while.end_crit_edge, %while.body.2.while.end_crit_edge, %while.body.1.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %mul10455.lcssa = phi i16 [ 0, %entry.while.end_crit_edge ], [ 1, %while.body.while.end_crit_edge ], [ 2, %while.body.1.while.end_crit_edge ], [ 4, %while.body.2.while.end_crit_edge ], [ 8, %while.body.3.while.end_crit_edge ]
  %mul.lcssa = phi i32 [ %mul, %entry.while.end_crit_edge ], [ %mul.1, %while.body.while.end_crit_edge ], [ %mul.2, %while.body.1.while.end_crit_edge ], [ %mul.3, %while.body.2.while.end_crit_edge ], [ %mul.4, %while.body.3.while.end_crit_edge ]
  %15 = ptrtoint ptr %outdiv to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %mul10455.lcssa, ptr %outdiv, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 48000, i32 %Fref)
  %cmp24 = icmp ult i32 %Fref, 48000
  %freq_ref = getelementptr inbounds %struct.fll_factors, ptr %factors, i32 0, i32 4
  br i1 %cmp24, label %if.end28.thread, label %if.end28

if.end28.thread:                                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %freq_ref to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %freq_ref, align 2
  br label %if.end34

if.end28:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %freq_ref to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 0, ptr %freq_ref, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %Fref)
  %cmp29 = icmp ult i32 %Fref, 1000000
  %spec.select463 = select i1 %cmp29, i16 9, i16 0
  %phi.sel = select i1 %cmp29, i16 -1, i16 1
  br label %if.end34

if.end34:                                         ; preds = %if.end28, %if.end28.thread
  %.sink = phi i16 [ 9, %if.end28.thread ], [ %spec.select463, %if.end28 ]
  %cmp29427 = phi i16 [ -1, %if.end28.thread ], [ %phi.sel, %if.end28 ]
  %fratio33 = getelementptr inbounds %struct.fll_factors, ptr %factors, i32 0, i32 3
  %18 = ptrtoint ptr %fratio33 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %.sink, ptr %fratio33, align 2
  %fratio41 = getelementptr inbounds %struct.fll_factors, ptr %factors, i32 0, i32 3
  br label %do.body35

do.body35:                                        ; preds = %if.end57.do.body35_crit_edge, %if.end34
  %inc456 = phi i16 [ %inc, %if.end57.do.body35_crit_edge ], [ %.sink, %if.end34 ]
  %inc = add i16 %inc456, %cmp29427
  %19 = add i16 %inc, -9
  call void @__sanitizer_cov_trace_const_cmp2(i16 -8, i16 %19)
  %20 = icmp ult i16 %19, -8
  br i1 %20, label %do.end54, label %if.end57

do.end54:                                         ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %fratio41 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %inc, ptr %fratio41, align 2
  %22 = ptrtoint ptr %wm8400 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %wm8400, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.321) #10
  br label %cleanup

if.end57:                                         ; preds = %do.body35
  %conv44 = zext i16 %inc to i32
  %mul60 = mul i32 %conv44, %Fref
  %mul60.frozen = freeze i32 %mul60
  %div = udiv i32 %mul.lcssa, %mul60.frozen
  %conv61 = trunc i32 %div to i16
  %26 = ptrtoint ptr %factors to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv61, ptr %factors, align 2
  %27 = mul i32 %div, %mul60.frozen
  %rem.decomposed = sub i32 %mul.lcssa, %27
  %cmp66 = icmp eq i32 %rem.decomposed, 0
  br i1 %cmp66, label %if.end57.do.body35_crit_edge, label %do.end68

if.end57.do.body35_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body35

do.end68:                                         ; preds = %if.end57
  %28 = ptrtoint ptr %fratio41 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %inc, ptr %fratio41, align 2
  %conv69 = zext i32 %rem.decomposed to i64
  %mul70 = mul nuw nsw i64 %conv69, 655360
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul70)
  %cmp247 = icmp ult i64 %mul70, 4294967296
  br i1 %cmp247, label %if.then251, label %if.else257, !prof !523

if.then251:                                       ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #9
  %conv252 = trunc i64 %mul70 to i32
  %div255 = udiv i32 %conv252, %mul60
  br label %if.end261

if.else257:                                       ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #9
  %29 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul60, i64 %mul70) #11, !srcloc !524
  %asmresult1.i = extractvalue { i64, i64 } %29, 1
  %extract.t450 = trunc i64 %asmresult1.i to i32
  br label %if.end261

if.end261:                                        ; preds = %if.else257, %if.then251
  %Kpart.0.off0 = phi i32 [ %div255, %if.then251 ], [ %extract.t450, %if.else257 ]
  %rem265 = urem i32 %Kpart.0.off0, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %rem265)
  %cmp266 = icmp ugt i32 %rem265, 4
  %add269 = add i32 %Kpart.0.off0, 5
  %spec.select = select i1 %cmp266, i32 %add269, i32 %Kpart.0.off0
  %div271 = udiv i32 %spec.select, 10
  %conv272 = trunc i32 %div271 to i16
  %k = getelementptr inbounds %struct.fll_factors, ptr %factors, i32 0, i32 1
  %30 = ptrtoint ptr %k to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv272, ptr %k, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fll_factors.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@fll_factors, %if.then283)) #7
          to label %cleanup [label %if.then283], !srcloc !525

if.then283:                                       ; preds = %if.end261
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %wm8400 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %wm8400, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 8
  %35 = ptrtoint ptr %factors to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %factors, align 2
  %conv287 = zext i16 %36 to i32
  %37 = ptrtoint ptr %k to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %k, align 2
  %conv289 = zext i16 %38 to i32
  %39 = ptrtoint ptr %fratio41 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %fratio41, align 2
  %conv291 = zext i16 %40 to i32
  %41 = ptrtoint ptr %outdiv to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %outdiv, align 2
  %conv293 = zext i16 %42 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fll_factors.__UNIQUE_ID_ddebug294, ptr noundef %34, ptr noundef nonnull @.str.324, i32 noundef %Fref, i32 noundef %Fout, i32 noundef %conv287, i32 noundef %conv289, i32 noundef %conv291, i32 noundef %conv293) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then283, %if.end261, %do.end54, %while.body.4
  %retval.0 = phi i32 [ -22, %while.body.4 ], [ -22, %do.end54 ], [ 0, %if.then283 ], [ 0, %if.end261 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 368)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 368)
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
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !223, !225, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !351, !352, !353, !354, !356, !357, !358, !360, !361, !362, !364, !365, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !396, !398, !400, !402, !404, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !426, !428, !430, !432, !434, !436, !438, !440, !442, !444, !446, !448, !450, !452, !454, !456, !458, !460, !462, !464, !465, !466, !467, !468, !469, !471, !473, !475, !477, !479, !481, !483, !485, !487, !488, !489, !490, !492, !494, !496, !498, !500, !502, !503, !504, !505, !507, !508, !509, !511, !512}
!llvm.module.flags = !{!513, !514, !515, !516, !517, !518, !519, !520}
!llvm.ident = !{!521}

!0 = !{ptr @__initcall__kmod_snd_soc_wm8400__295_1342_wm8400_codec_driver_init6, !1, !"__initcall__kmod_snd_soc_wm8400__295_1342_wm8400_codec_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/wm8400.c", i32 1342, i32 1}
!2 = !{ptr @__exitcall_wm8400_codec_driver_exit, !1, !"__exitcall_wm8400_codec_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description296, !4, !"__UNIQUE_ID_description296", i1 false, i1 false}
!4 = !{!"../sound/soc/codecs/wm8400.c", i32 1344, i32 1}
!5 = !{ptr @__UNIQUE_ID_author297, !6, !"__UNIQUE_ID_author297", i1 false, i1 false}
!6 = !{!"../sound/soc/codecs/wm8400.c", i32 1345, i32 1}
!7 = !{ptr @__UNIQUE_ID_file298, !8, !"__UNIQUE_ID_file298", i1 false, i1 false}
!8 = !{!"../sound/soc/codecs/wm8400.c", i32 1346, i32 1}
!9 = !{ptr @__UNIQUE_ID_license299, !8, !"__UNIQUE_ID_license299", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias300, !11, !"__UNIQUE_ID_alias300", i1 false, i1 false}
!11 = !{!"../sound/soc/codecs/wm8400.c", i32 1347, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/wm8400.c", i32 1337, i32 14}
!14 = !{ptr @wm8400_codec_driver, !15, !"wm8400_codec_driver", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/wm8400.c", i32 1335, i32 31}
!16 = !{ptr @soc_component_dev_wm8400, !17, !"soc_component_dev_wm8400", i1 false, i1 false}
!17 = !{!"../sound/soc/codecs/wm8400.c", i32 1311, i32 46}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/codecs/wm8400.c", i32 129, i32 1}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/soc/codecs/wm8400.c", i32 131, i32 1}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/soc/codecs/wm8400.c", i32 134, i32 1}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/codecs/wm8400.c", i32 136, i32 1}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/codecs/wm8400.c", i32 140, i32 1}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/codecs/wm8400.c", i32 142, i32 1}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/soc/codecs/wm8400.c", i32 144, i32 1}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/soc/codecs/wm8400.c", i32 146, i32 1}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/soc/codecs/wm8400.c", i32 148, i32 1}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/soc/codecs/wm8400.c", i32 150, i32 1}
!38 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/codecs/wm8400.c", i32 154, i32 1}
!40 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/codecs/wm8400.c", i32 156, i32 1}
!42 = !{ptr @.str.24, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/soc/codecs/wm8400.c", i32 158, i32 1}
!44 = !{ptr @.str.26, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/codecs/wm8400.c", i32 160, i32 1}
!46 = !{ptr @.str.28, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/soc/codecs/wm8400.c", i32 162, i32 1}
!48 = !{ptr @.str.30, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/soc/codecs/wm8400.c", i32 164, i32 1}
!50 = !{ptr @.str.32, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/codecs/wm8400.c", i32 168, i32 1}
!52 = !{ptr @.str.34, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/soc/codecs/wm8400.c", i32 170, i32 1}
!54 = !{ptr @.str.36, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/codecs/wm8400.c", i32 173, i32 1}
!56 = !{ptr @.str.38, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/codecs/wm8400.c", i32 175, i32 1}
!58 = !{ptr @.str.40, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/soc/codecs/wm8400.c", i32 178, i32 1}
!60 = !{ptr @.str.42, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/codecs/wm8400.c", i32 180, i32 1}
!62 = !{ptr @.str.44, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/soc/codecs/wm8400.c", i32 184, i32 1}
!64 = !{ptr @.str.46, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/codecs/wm8400.c", i32 186, i32 1}
!66 = !{ptr @.str.48, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/soc/codecs/wm8400.c", i32 189, i32 1}
!68 = !{ptr @.str.50, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/soc/codecs/wm8400.c", i32 191, i32 1}
!70 = !{ptr @.str.52, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/soc/codecs/wm8400.c", i32 193, i32 1}
!72 = !{ptr @.str.54, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/soc/codecs/wm8400.c", i32 195, i32 1}
!74 = !{ptr @.str.56, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/soc/codecs/wm8400.c", i32 197, i32 1}
!76 = !{ptr @.str.58, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/codecs/wm8400.c", i32 199, i32 1}
!78 = !{ptr @.str.60, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/codecs/wm8400.c", i32 202, i32 1}
!80 = !{ptr @.str.62, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/soc/codecs/wm8400.c", i32 204, i32 1}
!82 = !{ptr @.str.64, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/codecs/wm8400.c", i32 207, i32 1}
!84 = !{ptr @.str.66, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/soc/codecs/wm8400.c", i32 209, i32 1}
!86 = !{ptr @.str.68, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/soc/codecs/wm8400.c", i32 212, i32 1}
!88 = !{ptr @.str.70, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/soc/codecs/wm8400.c", i32 215, i32 1}
!90 = !{ptr @.str.72, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/soc/codecs/wm8400.c", i32 217, i32 1}
!92 = !{ptr @.str.74, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/soc/codecs/wm8400.c", i32 219, i32 1}
!94 = !{ptr @.str.76, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/soc/codecs/wm8400.c", i32 222, i32 1}
!96 = !{ptr @.str.78, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/soc/codecs/wm8400.c", i32 226, i32 1}
!98 = !{ptr @.str.80, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/soc/codecs/wm8400.c", i32 230, i32 1}
!100 = !{ptr @.str.81, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/soc/codecs/wm8400.c", i32 231, i32 1}
!102 = !{ptr @.str.82, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/soc/codecs/wm8400.c", i32 233, i32 1}
!104 = !{ptr @.str.84, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/soc/codecs/wm8400.c", i32 235, i32 1}
!106 = !{ptr @.str.86, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/soc/codecs/wm8400.c", i32 238, i32 1}
!108 = !{ptr @.str.88, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/soc/codecs/wm8400.c", i32 241, i32 1}
!110 = !{ptr @.str.89, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/soc/codecs/wm8400.c", i32 243, i32 1}
!112 = !{ptr @.str.91, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/soc/codecs/wm8400.c", i32 250, i32 1}
!114 = !{ptr @.str.93, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/soc/codecs/wm8400.c", i32 257, i32 1}
!116 = !{ptr @.str.95, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/soc/codecs/wm8400.c", i32 264, i32 1}
!118 = !{ptr @.str.97, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/soc/codecs/wm8400.c", i32 267, i32 1}
!120 = !{ptr @.str.99, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/soc/codecs/wm8400.c", i32 270, i32 1}
!122 = !{ptr @.str.101, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/soc/codecs/wm8400.c", i32 277, i32 1}
!124 = !{ptr @.str.103, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/soc/codecs/wm8400.c", i32 280, i32 1}
!126 = !{ptr @.str.105, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/soc/codecs/wm8400.c", i32 283, i32 1}
!128 = !{ptr @.str.107, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/soc/codecs/wm8400.c", i32 290, i32 1}
!130 = !{ptr @.str.109, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/soc/codecs/wm8400.c", i32 293, i32 1}
!132 = !{ptr @.str.111, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../sound/soc/codecs/wm8400.c", i32 296, i32 1}
!134 = !{ptr @.str.113, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../sound/soc/codecs/wm8400.c", i32 303, i32 1}
!136 = !{ptr @.str.115, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../sound/soc/codecs/wm8400.c", i32 306, i32 1}
!138 = !{ptr @wm8400_snd_controls, !139, !"wm8400_snd_controls", i1 false, i1 false}
!139 = !{!"../sound/soc/codecs/wm8400.c", i32 127, i32 38}
!140 = !{ptr @out_mix_tlv, !141, !"out_mix_tlv", i1 false, i1 false}
!141 = !{!"../sound/soc/codecs/wm8400.c", i32 72, i32 14}
!142 = !{ptr @out_pga_tlv, !143, !"out_pga_tlv", i1 false, i1 false}
!143 = !{!"../sound/soc/codecs/wm8400.c", i32 74, i32 14}
!144 = !{ptr @out_dac_tlv, !145, !"out_dac_tlv", i1 false, i1 false}
!145 = !{!"../sound/soc/codecs/wm8400.c", i32 76, i32 14}
!146 = !{ptr @wm8400_left_digital_sidetone_enum, !147, !"wm8400_left_digital_sidetone_enum", i1 false, i1 false}
!147 = !{!"../sound/soc/codecs/wm8400.c", i32 109, i32 8}
!148 = !{ptr @.str.117, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../sound/soc/codecs/wm8400.c", i32 107, i32 3}
!150 = !{ptr @.str.118, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../sound/soc/codecs/wm8400.c", i32 107, i32 11}
!152 = !{ptr @.str.119, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../sound/soc/codecs/wm8400.c", i32 107, i32 23}
!154 = !{ptr @.str.120, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../sound/soc/codecs/wm8400.c", i32 107, i32 36}
!156 = !{ptr @wm8400_digital_sidetone, !157, !"wm8400_digital_sidetone", i1 false, i1 false}
!157 = !{!"../sound/soc/codecs/wm8400.c", i32 106, i32 20}
!158 = !{ptr @wm8400_right_digital_sidetone_enum, !159, !"wm8400_right_digital_sidetone_enum", i1 false, i1 false}
!159 = !{!"../sound/soc/codecs/wm8400.c", i32 114, i32 8}
!160 = !{ptr @out_sidetone_tlv, !161, !"out_sidetone_tlv", i1 false, i1 false}
!161 = !{!"../sound/soc/codecs/wm8400.c", i32 80, i32 14}
!162 = !{ptr @wm8400_right_adcmode_enum, !163, !"wm8400_right_adcmode_enum", i1 false, i1 false}
!163 = !{!"../sound/soc/codecs/wm8400.c", i32 122, i32 8}
!164 = !{ptr @.str.121, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../sound/soc/codecs/wm8400.c", i32 120, i32 3}
!166 = !{ptr @.str.122, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../sound/soc/codecs/wm8400.c", i32 120, i32 17}
!168 = !{ptr @.str.123, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../sound/soc/codecs/wm8400.c", i32 120, i32 33}
!170 = !{ptr @.str.124, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../sound/soc/codecs/wm8400.c", i32 120, i32 49}
!172 = !{ptr @wm8400_adcmode, !173, !"wm8400_adcmode", i1 false, i1 false}
!173 = !{!"../sound/soc/codecs/wm8400.c", i32 119, i32 20}
!174 = !{ptr @in_adc_tlv, !175, !"in_adc_tlv", i1 false, i1 false}
!175 = !{!"../sound/soc/codecs/wm8400.c", i32 78, i32 14}
!176 = !{ptr @in_pga_tlv, !177, !"in_pga_tlv", i1 false, i1 false}
!177 = !{!"../sound/soc/codecs/wm8400.c", i32 70, i32 14}
!178 = !{ptr @.str.125, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../sound/soc/codecs/wm8400.c", i32 553, i32 1}
!180 = !{ptr @.str.126, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../sound/soc/codecs/wm8400.c", i32 554, i32 1}
!182 = !{ptr @.str.127, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../sound/soc/codecs/wm8400.c", i32 555, i32 1}
!184 = !{ptr @.str.128, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../sound/soc/codecs/wm8400.c", i32 556, i32 1}
!186 = !{ptr @.str.129, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../sound/soc/codecs/wm8400.c", i32 557, i32 1}
!188 = !{ptr @.str.130, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../sound/soc/codecs/wm8400.c", i32 558, i32 1}
!190 = !{ptr @.str.131, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../sound/soc/codecs/wm8400.c", i32 559, i32 1}
!192 = !{ptr @.str.132, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../sound/soc/codecs/wm8400.c", i32 560, i32 1}
!194 = !{ptr @.str.133, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../sound/soc/codecs/wm8400.c", i32 561, i32 1}
!196 = !{ptr @.str.134, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../sound/soc/codecs/wm8400.c", i32 564, i32 1}
!198 = !{ptr @.str.135, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../sound/soc/codecs/wm8400.c", i32 566, i32 1}
!200 = !{ptr @.str.136, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../sound/soc/codecs/wm8400.c", i32 570, i32 1}
!202 = !{ptr @.str.137, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../sound/soc/codecs/wm8400.c", i32 574, i32 1}
!204 = !{ptr @.str.138, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../sound/soc/codecs/wm8400.c", i32 578, i32 1}
!206 = !{ptr @.str.139, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../sound/soc/codecs/wm8400.c", i32 582, i32 1}
!208 = !{ptr @.str.140, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../sound/soc/codecs/wm8400.c", i32 587, i32 1}
!210 = !{ptr @.str.141, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../sound/soc/codecs/wm8400.c", i32 589, i32 1}
!212 = !{ptr @.str.142, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../sound/soc/codecs/wm8400.c", i32 593, i32 1}
!214 = !{ptr @.str.143, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../sound/soc/codecs/wm8400.c", i32 598, i32 1}
!216 = !{ptr @.str.144, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../sound/soc/codecs/wm8400.c", i32 601, i32 1}
!218 = !{ptr @.str.145, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../sound/soc/codecs/wm8400.c", i32 606, i32 1}
!220 = !{ptr @.str.146, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../sound/soc/codecs/wm8400.c", i32 610, i32 1}
!222 = !{ptr @.str.147, !221, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @.str.148, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../sound/soc/codecs/wm8400.c", i32 612, i32 1}
!225 = !{ptr @.str.149, !224, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @.str.150, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../sound/soc/codecs/wm8400.c", i32 616, i32 1}
!228 = !{ptr @.str.151, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../sound/soc/codecs/wm8400.c", i32 623, i32 1}
!230 = !{ptr @.str.152, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../sound/soc/codecs/wm8400.c", i32 628, i32 1}
!232 = !{ptr @.str.153, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../sound/soc/codecs/wm8400.c", i32 633, i32 1}
!234 = !{ptr @.str.154, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../sound/soc/codecs/wm8400.c", i32 638, i32 1}
!236 = !{ptr @.str.155, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../sound/soc/codecs/wm8400.c", i32 644, i32 1}
!238 = !{ptr @.str.156, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../sound/soc/codecs/wm8400.c", i32 649, i32 1}
!240 = !{ptr @.str.157, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../sound/soc/codecs/wm8400.c", i32 654, i32 1}
!242 = !{ptr @.str.158, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../sound/soc/codecs/wm8400.c", i32 659, i32 1}
!244 = !{ptr @.str.159, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../sound/soc/codecs/wm8400.c", i32 666, i32 1}
!246 = !{ptr @.str.160, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../sound/soc/codecs/wm8400.c", i32 670, i32 1}
!248 = !{ptr @.str.161, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../sound/soc/codecs/wm8400.c", i32 674, i32 1}
!250 = !{ptr @.str.162, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../sound/soc/codecs/wm8400.c", i32 678, i32 1}
!252 = !{ptr @.str.163, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../sound/soc/codecs/wm8400.c", i32 682, i32 1}
!254 = !{ptr @.str.164, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../sound/soc/codecs/wm8400.c", i32 685, i32 1}
!256 = !{ptr @.str.165, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../sound/soc/codecs/wm8400.c", i32 686, i32 1}
!258 = !{ptr @.str.166, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../sound/soc/codecs/wm8400.c", i32 687, i32 1}
!260 = !{ptr @.str.167, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../sound/soc/codecs/wm8400.c", i32 688, i32 1}
!262 = !{ptr @.str.168, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../sound/soc/codecs/wm8400.c", i32 689, i32 1}
!264 = !{ptr @.str.169, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../sound/soc/codecs/wm8400.c", i32 690, i32 1}
!266 = !{ptr @.str.170, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../sound/soc/codecs/wm8400.c", i32 691, i32 1}
!268 = !{ptr @.str.171, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../sound/soc/codecs/wm8400.c", i32 692, i32 1}
!270 = !{ptr @.str.172, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../sound/soc/codecs/wm8400.c", i32 693, i32 1}
!272 = !{ptr @.str.173, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../sound/soc/codecs/wm8400.c", i32 694, i32 1}
!274 = !{ptr @.str.174, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../sound/soc/codecs/wm8400.c", i32 696, i32 1}
!276 = !{ptr @wm8400_dapm_widgets, !277, !"wm8400_dapm_widgets", i1 false, i1 false}
!277 = !{!"../sound/soc/codecs/wm8400.c", i32 550, i32 41}
!278 = !{ptr @.str.176, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../sound/soc/codecs/wm8400.c", i32 368, i32 1}
!280 = !{ptr @.str.178, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../sound/soc/codecs/wm8400.c", i32 369, i32 1}
!282 = !{ptr @wm8400_dapm_lin12_pga_controls, !283, !"wm8400_dapm_lin12_pga_controls", i1 false, i1 false}
!283 = !{!"../sound/soc/codecs/wm8400.c", i32 367, i32 38}
!284 = !{ptr @.str.180, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../sound/soc/codecs/wm8400.c", i32 373, i32 1}
!286 = !{ptr @.str.182, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../sound/soc/codecs/wm8400.c", i32 374, i32 1}
!288 = !{ptr @wm8400_dapm_lin34_pga_controls, !289, !"wm8400_dapm_lin34_pga_controls", i1 false, i1 false}
!289 = !{!"../sound/soc/codecs/wm8400.c", i32 372, i32 38}
!290 = !{ptr @.str.184, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../sound/soc/codecs/wm8400.c", i32 379, i32 1}
!292 = !{ptr @.str.186, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../sound/soc/codecs/wm8400.c", i32 380, i32 1}
!294 = !{ptr @wm8400_dapm_rin12_pga_controls, !295, !"wm8400_dapm_rin12_pga_controls", i1 false, i1 false}
!295 = !{!"../sound/soc/codecs/wm8400.c", i32 378, i32 38}
!296 = !{ptr @.str.188, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../sound/soc/codecs/wm8400.c", i32 384, i32 1}
!298 = !{ptr @.str.190, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../sound/soc/codecs/wm8400.c", i32 385, i32 1}
!300 = !{ptr @wm8400_dapm_rin34_pga_controls, !301, !"wm8400_dapm_rin34_pga_controls", i1 false, i1 false}
!301 = !{!"../sound/soc/codecs/wm8400.c", i32 383, i32 38}
!302 = !{ptr @.str.192, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../sound/soc/codecs/wm8400.c", i32 390, i32 1}
!304 = !{ptr @.str.194, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../sound/soc/codecs/wm8400.c", i32 392, i32 1}
!306 = !{ptr @.str.196, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../sound/soc/codecs/wm8400.c", i32 394, i32 1}
!308 = !{ptr @.str.198, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../sound/soc/codecs/wm8400.c", i32 396, i32 1}
!310 = !{ptr @wm8400_dapm_inmixl_controls, !311, !"wm8400_dapm_inmixl_controls", i1 false, i1 false}
!311 = !{!"../sound/soc/codecs/wm8400.c", i32 389, i32 38}
!312 = !{ptr @in_mix_tlv, !313, !"in_mix_tlv", i1 false, i1 false}
!313 = !{!"../sound/soc/codecs/wm8400.c", i32 364, i32 14}
!314 = !{ptr @.str.200, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../sound/soc/codecs/wm8400.c", i32 422, i32 1}
!316 = !{ptr @wm8400_dapm_ainlmux_controls, !317, !"wm8400_dapm_ainlmux_controls", i1 false, i1 false}
!317 = !{!"../sound/soc/codecs/wm8400.c", i32 421, i32 38}
!318 = !{ptr @wm8400_ainlmux_enum, !319, !"wm8400_ainlmux_enum", i1 false, i1 false}
!319 = !{!"../sound/soc/codecs/wm8400.c", i32 416, i32 8}
!320 = !{ptr @.str.201, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../sound/soc/codecs/wm8400.c", i32 414, i32 3}
!322 = !{ptr @.str.202, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../sound/soc/codecs/wm8400.c", i32 414, i32 17}
!324 = !{ptr @.str.203, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../sound/soc/codecs/wm8400.c", i32 414, i32 32}
!326 = !{ptr @wm8400_ainlmux, !327, !"wm8400_ainlmux", i1 false, i1 false}
!327 = !{!"../sound/soc/codecs/wm8400.c", i32 413, i32 20}
!328 = !{ptr @.str.204, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../sound/soc/codecs/wm8400.c", i32 402, i32 1}
!330 = !{ptr @.str.206, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../sound/soc/codecs/wm8400.c", i32 404, i32 1}
!332 = !{ptr @.str.208, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../sound/soc/codecs/wm8400.c", i32 406, i32 1}
!334 = !{ptr @.str.210, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../sound/soc/codecs/wm8400.c", i32 408, i32 1}
!336 = !{ptr @wm8400_dapm_inmixr_controls, !337, !"wm8400_dapm_inmixr_controls", i1 false, i1 false}
!337 = !{!"../sound/soc/codecs/wm8400.c", i32 401, i32 38}
!338 = !{ptr @wm8400_dapm_ainrmux_controls, !339, !"wm8400_dapm_ainrmux_controls", i1 false, i1 false}
!339 = !{!"../sound/soc/codecs/wm8400.c", i32 435, i32 38}
!340 = !{ptr @wm8400_ainrmux_enum, !341, !"wm8400_ainrmux_enum", i1 false, i1 false}
!341 = !{!"../sound/soc/codecs/wm8400.c", i32 430, i32 8}
!342 = !{ptr @.str.212, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../sound/soc/codecs/wm8400.c", i32 428, i32 3}
!344 = !{ptr @.str.213, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../sound/soc/codecs/wm8400.c", i32 428, i32 32}
!346 = !{ptr @wm8400_ainrmux, !347, !"wm8400_ainrmux", i1 false, i1 false}
!347 = !{!"../sound/soc/codecs/wm8400.c", i32 427, i32 20}
!348 = !{ptr @.str.214, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../sound/soc/codecs/wm8400.c", i32 329, i32 4}
!350 = !{ptr @.str.215, !349, !"<string literal>", i1 false, i1 false}
!351 = !{ptr @.str.216, !349, !"<string literal>", i1 false, i1 false}
!352 = !{ptr @outmixer_event._entry, !349, !"_entry", i1 false, i1 false}
!353 = !{ptr @outmixer_event._entry_ptr, !349, !"_entry_ptr", i1 false, i1 false}
!354 = !{ptr @.str.218, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../sound/soc/codecs/wm8400.c", i32 337, i32 4}
!356 = !{ptr @outmixer_event._entry.217, !355, !"_entry", i1 false, i1 false}
!357 = !{ptr @outmixer_event._entry_ptr.219, !355, !"_entry_ptr", i1 false, i1 false}
!358 = !{ptr @.str.221, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../sound/soc/codecs/wm8400.c", i32 345, i32 4}
!360 = !{ptr @outmixer_event._entry.220, !359, !"_entry", i1 false, i1 false}
!361 = !{ptr @outmixer_event._entry_ptr.222, !359, !"_entry_ptr", i1 false, i1 false}
!362 = !{ptr @.str.224, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../sound/soc/codecs/wm8400.c", i32 353, i32 4}
!364 = !{ptr @outmixer_event._entry.223, !363, !"_entry", i1 false, i1 false}
!365 = !{ptr @outmixer_event._entry_ptr.225, !363, !"_entry_ptr", i1 false, i1 false}
!366 = !{ptr @.str.226, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../sound/soc/codecs/wm8400.c", i32 440, i32 1}
!368 = !{ptr @.str.228, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../sound/soc/codecs/wm8400.c", i32 442, i32 1}
!370 = !{ptr @.str.230, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../sound/soc/codecs/wm8400.c", i32 444, i32 1}
!372 = !{ptr @.str.232, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../sound/soc/codecs/wm8400.c", i32 446, i32 1}
!374 = !{ptr @.str.234, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../sound/soc/codecs/wm8400.c", i32 448, i32 1}
!376 = !{ptr @.str.236, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../sound/soc/codecs/wm8400.c", i32 450, i32 1}
!378 = !{ptr @.str.238, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../sound/soc/codecs/wm8400.c", i32 452, i32 1}
!380 = !{ptr @wm8400_dapm_lomix_controls, !381, !"wm8400_dapm_lomix_controls", i1 false, i1 false}
!381 = !{!"../sound/soc/codecs/wm8400.c", i32 439, i32 38}
!382 = !{ptr @.str.240, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../sound/soc/codecs/wm8400.c", i32 476, i32 1}
!384 = !{ptr @.str.242, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../sound/soc/codecs/wm8400.c", i32 478, i32 1}
!386 = !{ptr @.str.244, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../sound/soc/codecs/wm8400.c", i32 480, i32 1}
!388 = !{ptr @wm8400_dapm_lonmix_controls, !389, !"wm8400_dapm_lonmix_controls", i1 false, i1 false}
!389 = !{!"../sound/soc/codecs/wm8400.c", i32 475, i32 38}
!390 = !{ptr @.str.246, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../sound/soc/codecs/wm8400.c", i32 486, i32 1}
!392 = !{ptr @.str.248, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../sound/soc/codecs/wm8400.c", i32 488, i32 1}
!394 = !{ptr @.str.250, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../sound/soc/codecs/wm8400.c", i32 490, i32 1}
!396 = !{ptr @wm8400_dapm_lopmix_controls, !397, !"wm8400_dapm_lopmix_controls", i1 false, i1 false}
!397 = !{!"../sound/soc/codecs/wm8400.c", i32 485, i32 38}
!398 = !{ptr @.str.252, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../sound/soc/codecs/wm8400.c", i32 516, i32 1}
!400 = !{ptr @.str.254, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../sound/soc/codecs/wm8400.c", i32 518, i32 1}
!402 = !{ptr @wm8400_dapm_out3mix_controls, !403, !"wm8400_dapm_out3mix_controls", i1 false, i1 false}
!403 = !{!"../sound/soc/codecs/wm8400.c", i32 515, i32 38}
!404 = !{ptr @.str.256, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../sound/soc/codecs/wm8400.c", i32 532, i32 1}
!406 = !{ptr @.str.258, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../sound/soc/codecs/wm8400.c", i32 534, i32 1}
!408 = !{ptr @.str.260, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../sound/soc/codecs/wm8400.c", i32 536, i32 1}
!410 = !{ptr @.str.262, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../sound/soc/codecs/wm8400.c", i32 538, i32 1}
!412 = !{ptr @.str.264, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../sound/soc/codecs/wm8400.c", i32 540, i32 1}
!414 = !{ptr @.str.266, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../sound/soc/codecs/wm8400.c", i32 542, i32 1}
!416 = !{ptr @.str.268, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../sound/soc/codecs/wm8400.c", i32 544, i32 1}
!418 = !{ptr @.str.270, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../sound/soc/codecs/wm8400.c", i32 546, i32 1}
!420 = !{ptr @wm8400_dapm_spkmix_controls, !421, !"wm8400_dapm_spkmix_controls", i1 false, i1 false}
!421 = !{!"../sound/soc/codecs/wm8400.c", i32 531, i32 38}
!422 = !{ptr @.str.272, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../sound/soc/codecs/wm8400.c", i32 524, i32 1}
!424 = !{ptr @.str.274, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../sound/soc/codecs/wm8400.c", i32 526, i32 1}
!426 = !{ptr @wm8400_dapm_out4mix_controls, !427, !"wm8400_dapm_out4mix_controls", i1 false, i1 false}
!427 = !{!"../sound/soc/codecs/wm8400.c", i32 523, i32 38}
!428 = !{ptr @.str.276, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../sound/soc/codecs/wm8400.c", i32 506, i32 1}
!430 = !{ptr @.str.278, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../sound/soc/codecs/wm8400.c", i32 508, i32 1}
!432 = !{ptr @.str.280, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../sound/soc/codecs/wm8400.c", i32 510, i32 1}
!434 = !{ptr @wm8400_dapm_ropmix_controls, !435, !"wm8400_dapm_ropmix_controls", i1 false, i1 false}
!435 = !{!"../sound/soc/codecs/wm8400.c", i32 505, i32 38}
!436 = !{ptr @.str.282, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../sound/soc/codecs/wm8400.c", i32 496, i32 1}
!438 = !{ptr @.str.284, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../sound/soc/codecs/wm8400.c", i32 498, i32 1}
!440 = !{ptr @.str.286, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../sound/soc/codecs/wm8400.c", i32 500, i32 1}
!442 = !{ptr @wm8400_dapm_ronmix_controls, !443, !"wm8400_dapm_ronmix_controls", i1 false, i1 false}
!443 = !{!"../sound/soc/codecs/wm8400.c", i32 495, i32 38}
!444 = !{ptr @.str.288, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../sound/soc/codecs/wm8400.c", i32 458, i32 1}
!446 = !{ptr @.str.290, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../sound/soc/codecs/wm8400.c", i32 460, i32 1}
!448 = !{ptr @.str.292, !449, !"<string literal>", i1 false, i1 false}
!449 = !{!"../sound/soc/codecs/wm8400.c", i32 462, i32 1}
!450 = !{ptr @.str.294, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../sound/soc/codecs/wm8400.c", i32 464, i32 1}
!452 = !{ptr @.str.296, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../sound/soc/codecs/wm8400.c", i32 466, i32 1}
!454 = !{ptr @.str.298, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../sound/soc/codecs/wm8400.c", i32 468, i32 1}
!456 = !{ptr @.str.300, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../sound/soc/codecs/wm8400.c", i32 470, i32 1}
!458 = !{ptr @wm8400_dapm_romix_controls, !459, !"wm8400_dapm_romix_controls", i1 false, i1 false}
!459 = !{!"../sound/soc/codecs/wm8400.c", i32 457, i32 38}
!460 = !{ptr @wm8400_dapm_routes, !461, !"wm8400_dapm_routes", i1 false, i1 false}
!461 = !{!"../sound/soc/codecs/wm8400.c", i32 699, i32 40}
!462 = !{ptr @.str.302, !463, !"<string literal>", i1 false, i1 false}
!463 = !{!"../sound/soc/codecs/wm8400.c", i32 1279, i32 3}
!464 = !{ptr @.str.303, !463, !"<string literal>", i1 false, i1 false}
!465 = !{ptr @.str.304, !463, !"<string literal>", i1 false, i1 false}
!466 = !{ptr @.str.305, !463, !"<string literal>", i1 false, i1 false}
!467 = !{ptr @wm8400_component_probe._entry, !463, !"_entry", i1 false, i1 false}
!468 = !{ptr @wm8400_component_probe._entry_ptr, !463, !"_entry_ptr", i1 false, i1 false}
!469 = !{ptr @.str.306, !470, !"<string literal>", i1 false, i1 false}
!470 = !{!"../sound/soc/codecs/wm8400.c", i32 32, i32 13}
!471 = !{ptr @.str.307, !472, !"<string literal>", i1 false, i1 false}
!472 = !{!"../sound/soc/codecs/wm8400.c", i32 35, i32 13}
!473 = !{ptr @.str.308, !474, !"<string literal>", i1 false, i1 false}
!474 = !{!"../sound/soc/codecs/wm8400.c", i32 38, i32 13}
!475 = !{ptr @.str.309, !476, !"<string literal>", i1 false, i1 false}
!476 = !{!"../sound/soc/codecs/wm8400.c", i32 41, i32 13}
!477 = !{ptr @.str.310, !478, !"<string literal>", i1 false, i1 false}
!478 = !{!"../sound/soc/codecs/wm8400.c", i32 44, i32 13}
!479 = !{ptr @.str.311, !480, !"<string literal>", i1 false, i1 false}
!480 = !{!"../sound/soc/codecs/wm8400.c", i32 47, i32 13}
!481 = !{ptr @.str.312, !482, !"<string literal>", i1 false, i1 false}
!482 = !{!"../sound/soc/codecs/wm8400.c", i32 50, i32 13}
!483 = !{ptr @power, !484, !"power", i1 false, i1 false}
!484 = !{!"../sound/soc/codecs/wm8400.c", i32 30, i32 35}
!485 = !{ptr @.str.313, !486, !"<string literal>", i1 false, i1 false}
!486 = !{!"../sound/soc/codecs/wm8400.c", i32 1132, i32 5}
!487 = !{ptr @.str.314, !486, !"<string literal>", i1 false, i1 false}
!488 = !{ptr @wm8400_set_bias_level._entry, !486, !"_entry", i1 false, i1 false}
!489 = !{ptr @wm8400_set_bias_level._entry_ptr, !486, !"_entry_ptr", i1 false, i1 false}
!490 = !{ptr @.str.315, !491, !"<string literal>", i1 false, i1 false}
!491 = !{!"../sound/soc/codecs/wm8400.c", i32 1242, i32 10}
!492 = !{ptr @.str.316, !493, !"<string literal>", i1 false, i1 false}
!493 = !{!"../sound/soc/codecs/wm8400.c", i32 1251, i32 18}
!494 = !{ptr @.str.317, !495, !"<string literal>", i1 false, i1 false}
!495 = !{!"../sound/soc/codecs/wm8400.c", i32 1244, i32 18}
!496 = !{ptr @wm8400_dai, !497, !"wm8400_dai", i1 false, i1 false}
!497 = !{!"../sound/soc/codecs/wm8400.c", i32 1240, i32 34}
!498 = !{ptr @wm8400_dai_ops, !499, !"wm8400_dai_ops", i1 false, i1 false}
!499 = !{!"../sound/soc/codecs/wm8400.c", i32 1223, i32 37}
!500 = !{ptr @.str.318, !501, !"<string literal>", i1 false, i1 false}
!501 = !{!"../sound/soc/codecs/wm8400.c", i32 863, i32 4}
!502 = !{ptr @.str.319, !501, !"<string literal>", i1 false, i1 false}
!503 = !{ptr @fll_factors._entry, !501, !"_entry", i1 false, i1 false}
!504 = !{ptr @fll_factors._entry_ptr, !501, !"_entry_ptr", i1 false, i1 false}
!505 = !{ptr @.str.321, !506, !"<string literal>", i1 false, i1 false}
!506 = !{!"../sound/soc/codecs/wm8400.c", i32 890, i32 4}
!507 = !{ptr @fll_factors._entry.320, !506, !"_entry", i1 false, i1 false}
!508 = !{ptr @fll_factors._entry_ptr.322, !506, !"_entry_ptr", i1 false, i1 false}
!509 = !{ptr @.str.323, !510, !"<string literal>", i1 false, i1 false}
!510 = !{!"../sound/soc/codecs/wm8400.c", i32 912, i32 2}
!511 = !{ptr @.str.324, !510, !"<string literal>", i1 false, i1 false}
!512 = !{ptr @fll_factors.__UNIQUE_ID_ddebug294, !510, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!513 = !{i32 1, !"wchar_size", i32 2}
!514 = !{i32 1, !"min_enum_size", i32 4}
!515 = !{i32 8, !"branch-target-enforcement", i32 0}
!516 = !{i32 8, !"sign-return-address", i32 0}
!517 = !{i32 8, !"sign-return-address-all", i32 0}
!518 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!519 = !{i32 7, !"uwtable", i32 1}
!520 = !{i32 7, !"frame-pointer", i32 2}
!521 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!522 = !{i32 0, i32 33}
!523 = !{!"branch_weights", i32 2000, i32 1}
!524 = !{i64 2148226291, i64 2148226571, i64 2148226905, i64 2148227239}
!525 = !{i64 2148993244, i64 2148993249, i64 2148993262, i64 2148993306, i64 2148993340, i64 2148993361}
