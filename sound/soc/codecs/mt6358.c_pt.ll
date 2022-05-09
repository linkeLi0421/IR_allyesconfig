; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/mt6358.c_pt.bc'
source_filename = "../sound/soc/codecs/mt6358.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.102, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.102 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.94, i32 }
%union.anon.94 = type { ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.atomic_t = type { i32 }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8, %struct.snd_soc_dobj }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.mt6358_priv = type { ptr, ptr, i32, i32, [8 x i32], [7 x i32], [5 x i32], i32, ptr, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.mt6397_chip = type { ptr, ptr, %struct.notifier_block, i32, ptr, %struct.mutex, [2 x i16], [2 x i16], [2 x i16], [2 x i16], [2 x i16], i16, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.93, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.93 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.88, [128 x i8] }
%union.anon.88 = type { %union.anon.90 }
%union.anon.90 = type { [64 x i64] }
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
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

@__initcall__kmod_snd_soc_mt6358__303_2492_mt6358_platform_driver_init6 = internal global ptr @mt6358_platform_driver_init, section ".initcall6.init", align 4
@mt6358_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mt6358_platform_driver_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mt6358_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mt6358_platform_driver_exit = internal global ptr @mt6358_platform_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description304 = internal constant [56 x i8] c"snd_soc_mt6358.description=MT6358 ALSA SoC codec driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author305 = internal constant [69 x i8] c"snd_soc_mt6358.author=KaiChieh Chuang <kaichieh.chuang@mediatek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file306 = internal constant [52 x i8] c"snd_soc_mt6358.file=sound/soc/codecs/snd-soc-mt6358\00", section ".modinfo", align 1
@__UNIQUE_ID_license307 = internal constant [30 x i8] c"snd_soc_mt6358.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mt6358-sound\00", [19 x i8] zeroinitializer }, align 32
@mt6358_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt6358-sound\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@mt6358_platform_driver_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 2470, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s(), dev name %s\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mt6358_platform_driver_probe\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sound/soc/codecs/mt6358.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mt6358_platform_driver_probe._entry_ptr = internal global ptr @mt6358_platform_driver_probe._entry, section ".printk_index", align 4
@mt6358_soc_component_driver = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @mt6358_snd_controls, i32 5, ptr @mt6358_dapm_widgets, i32 53, ptr @mt6358_dapm_routes, i32 77, ptr @mt6358_codec_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@mt6358_dai_driver = internal global { [1 x %struct.snd_soc_dai_driver], [56 x i8] } { [1 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.148, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @mt6358_codec_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.58, i64 16380, i32 170, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.35, i64 16380, i32 5374, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }], [56 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mediatek,dmic-mode\00", [45 x i8] zeroinitializer }, align 32
@mt6358_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 2443, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s() failed to read dmic-mode\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mt6358_parse_dt\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@mt6358_parse_dt._entry_ptr = internal global ptr @mt6358_parse_dt._entry, section ".printk_index", align 4
@mt6358_snd_controls = internal constant { [5 x %struct.snd_kcontrol_new], [48 x i8] } { [5 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.10, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @mt6358_put_volsw, %union.anon.94 { ptr @playback_tlv }, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.11, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @mt6358_put_volsw, %union.anon.94 { ptr @playback_tlv }, i32 ptrtoint (ptr @.compoundliteral.12 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.13, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @mt6358_put_volsw, %union.anon.94 { ptr @playback_tlv }, i32 ptrtoint (ptr @.compoundliteral.14 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.15, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @mt6358_put_volsw, %union.anon.94 { ptr @pga_tlv }, i32 ptrtoint (ptr @.compoundliteral.16 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.17, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @mt6358_get_wov, ptr @mt6358_put_wov, %union.anon.94 zeroinitializer, i32 0 }], [48 x i8] zeroinitializer }, align 32
@mt6358_dapm_routes = internal constant { [77 x %struct.snd_soc_dapm_route], [1020 x i8] } { [77 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.57, ptr null, ptr @.str.60, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.57, ptr null, ptr @.str.18, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.57, ptr null, ptr @.str.19, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.57, ptr null, ptr @.str.20, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.57, ptr null, ptr @.str.23, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.57, ptr null, ptr @.str.24, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.57, ptr null, ptr @.str.25, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.57, ptr null, ptr @.str.27, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.57, ptr null, ptr @.str.29, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.57, ptr null, ptr @.str.31, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.57, ptr null, ptr @.str.28, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.57, ptr null, ptr @.str.33, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.60, ptr null, ptr @.str.61, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.61, ptr @.str.126, ptr @.str.64, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.61, ptr @.str.126, ptr @.str.65, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.61, ptr @.str.128, ptr @.str.64, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.61, ptr @.str.128, ptr @.str.65, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.61, ptr @.str.129, ptr @.str.64, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.61, ptr @.str.129, ptr @.str.65, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.61, ptr @.str.130, ptr @.str.64, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.61, ptr @.str.130, ptr @.str.65, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.61, ptr @.str.127, ptr @.str.70, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.61, ptr @.str.127, ptr @.str.72, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.64, ptr null, ptr @.str.62, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.64, ptr null, ptr @.str.59, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.65, ptr null, ptr @.str.63, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.65, ptr null, ptr @.str.59, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.62, ptr @.str.134, ptr @.str.68, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.63, ptr @.str.138, ptr @.str.69, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.68, ptr null, ptr @.str.66, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.69, ptr null, ptr @.str.67, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.70, ptr @.str.70, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.71, ptr @.str.71, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.66, ptr @.str.72, ptr @.str.72, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.70, ptr @.str.70, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.71, ptr @.str.71, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.67, ptr @.str.72, ptr @.str.72, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.36, ptr null, ptr @.str.18, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.36, ptr null, ptr @.str.19, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.36, ptr null, ptr @.str.20, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.36, ptr null, ptr @.str.21, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.36, ptr null, ptr @.str.22, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.36, ptr null, ptr @.str.23, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.36, ptr null, ptr @.str.24, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.32, ptr null, ptr @.str.25, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.32, ptr null, ptr @.str.26, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.32, ptr null, ptr @.str.29, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.32, ptr null, ptr @.str.33, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.34, ptr null, ptr @.str.32, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.37, ptr @.str.80, ptr @.str.34, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.37, ptr @.str.81, ptr @.str.56, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.56, ptr null, ptr @.str.55, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.56, ptr null, ptr @.str.54, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.56, ptr null, ptr @.str.53, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.56, ptr null, ptr @.str.32, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.56, ptr null, ptr @.str.30, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.38, ptr null, ptr @.str.37, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.38, ptr null, ptr @.str.36, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.39, ptr null, ptr @.str.37, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.39, ptr null, ptr @.str.36, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.40, ptr @.str.85, ptr @.str.38, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.42, ptr null, ptr @.str.40, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.42, ptr null, ptr @.str.41, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.51, ptr null, ptr @.str.42, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.43, ptr @.str.102, ptr @.str.38, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.44, ptr @.str.102, ptr @.str.39, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.43, ptr @.str.103, ptr @.str.38, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.44, ptr @.str.103, ptr @.str.39, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.43, ptr @.str.101, ptr @.str.38, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.44, ptr @.str.101, ptr @.str.39, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.47, ptr null, ptr @.str.43, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.48, ptr null, ptr @.str.44, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.49, ptr null, ptr @.str.43, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.50, ptr null, ptr @.str.44, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.52, ptr null, ptr @.str.43, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.45, ptr @.str.111, ptr @.str.38, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.46, ptr null, ptr @.str.45, ptr null, %struct.snd_soc_dobj zeroinitializer }], [1020 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Headphone Volume\00", [47 x i8] zeroinitializer }, align 32
@playback_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -1000, i32 100], [16 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 18, i32 18, i32 9356, i32 9356, i32 0, i32 7, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Lineout Volume\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.12 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 18, i32 18, i32 9354, i32 9354, i32 0, i32 7, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Handset Volume\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.14 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 18, i32 18, i32 9358, i32 9358, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PGA Volume\00", [21 x i8] zeroinitializer }, align 32
@pga_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 0, i32 600], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.16 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 4, i32 4, i32 9096, i32 9098, i32 8, i32 8, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Wake-on-Voice Phase2 Switch\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CLK_BUF\00", [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AUDGLB\00", [25 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CLKSQ Audio\00", [20 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"AUDNCP_CK\00", [22 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ZCD13M_CK\00", [22 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AUD_CK\00", [25 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"AUDIF_CK\00", [23 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"AUDIO_TOP_AFE_CTL\00", [46 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"AUDIO_TOP_DAC_CTL\00", [46 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"AUDIO_TOP_ADC_CTL\00", [46 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"AUDIO_TOP_I2S_DL\00", [47 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"AUDIO_TOP_PWR_CLK\00", [46 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"AUDIO_TOP_PDN_AFE_TESTMODEL\00", [36 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"AUDIO_TOP_PDN_RESERVED\00", [41 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DL Digital Clock\00", [47 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AFE_ON\00", [25 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AIF_RX\00", [25 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"AIF1 Playback\00", [18 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DL Power Supply\00", [16 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DAC In Mux\00", [21 x i8] zeroinitializer }, align 32
@dac_in_mux_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.79, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @dac_in_mux_map_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DACL\00", [27 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DACR\00", [27 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LOL Mux\00", [24 x i8] zeroinitializer }, align 32
@lo_in_mux_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.82, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @lo_in_mux_map_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"LO Stability Enh\00", [47 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"LOL Buffer\00", [21 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HPL Mux\00", [24 x i8] zeroinitializer }, align 32
@hpl_in_mux_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.100, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @hpl_in_mux_map_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HPR Mux\00", [24 x i8] zeroinitializer }, align 32
@hpr_in_mux_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.107, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @hpr_in_mux_map_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"RCV Mux\00", [24 x i8] zeroinitializer }, align 32
@rcv_in_mux_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.110, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @rcv_in_mux_map_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Receiver\00", [23 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Headphone L\00", [20 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Headphone R\00", [20 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Headphone L Ext Spk Amp\00", [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Headphone R Ext Spk Amp\00", [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"LINEOUT L\00", [22 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"LINEOUT L HSSPK\00", [16 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"SGEN DL Enable\00", [17 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"SGEN MUTE\00", [22 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SGEN DL SRC\00", [20 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SGEN DL\00", [24 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AIF1TX\00", [25 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"AIF1 Capture\00", [19 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ADC Supply\00", [21 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"AIF Out Mux\00", [20 x i8] zeroinitializer }, align 32
@aif_out_mux_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.116, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @aif_out_mux_map_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Mic Type Mux\00", [19 x i8] zeroinitializer }, align 32
@mic_type_mux_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.124, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @mic_type_mux_map_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ADC L Mux\00", [22 x i8] zeroinitializer }, align 32
@adc_left_mux_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.133, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @adc_left_mux_map_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ADC R Mux\00", [22 x i8] zeroinitializer }, align 32
@adc_right_mux_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.137, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @adc_right_mux_map_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ADC L\00", [26 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ADC R\00", [26 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"PGA L Mux\00", [22 x i8] zeroinitializer }, align 32
@pga_left_mux_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.140, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @pga_left_mux_map_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"PGA R Mux\00", [22 x i8] zeroinitializer }, align 32
@pga_right_mux_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.143, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.94 zeroinitializer, i32 ptrtoint (ptr @pga_right_mux_map_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PGA L\00", [26 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PGA R\00", [26 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AIN0\00", [27 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AIN1\00", [27 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AIN2\00", [27 x i8] zeroinitializer }, align 32
@mt6358_dapm_widgets = internal constant { [53 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [2396 x i8] } { [53 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.18, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 1964, i8 13, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.19, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 9250, i8 4, i32 1, i32 0, i32 1, i8 0, i8 0, i32 1, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.20, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 9108, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 2, ptr null, i16 1, ptr @mt_clksq_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.21, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8716, i8 6, i32 1, i32 0, i32 1, i8 0, i8 0, i32 7, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.22, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8716, i8 5, i32 1, i32 0, i32 1, i8 0, i8 0, i32 7, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.23, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8716, i8 1, i32 1, i32 0, i32 1, i8 0, i8 0, i32 8, ptr null, i16 6, ptr @mt_delay_250_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.24, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8716, i8 2, i32 1, i32 0, i32 1, i8 0, i8 0, i32 7, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.25, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8850, i8 7, i32 1, i32 0, i32 1, i8 0, i8 0, i32 10, ptr null, i16 6, ptr @mt_delay_250_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.26, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8850, i8 6, i32 1, i32 0, i32 1, i8 0, i8 0, i32 9, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.27, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8850, i8 5, i32 1, i32 0, i32 1, i8 0, i8 0, i32 9, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.28, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8850, i8 3, i32 1, i32 0, i32 1, i8 0, i8 0, i32 9, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.29, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8850, i8 2, i32 1, i32 0, i32 1, i8 0, i8 0, i32 9, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.30, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8850, i8 1, i32 1, i32 0, i32 1, i8 0, i8 0, i32 9, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.31, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8850, i8 0, i32 1, i32 0, i32 1, i8 0, i8 0, i32 9, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.32, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.33, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8840, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 11, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.34, ptr @.str.35, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8842, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @mt_aif_in_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.36, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.37, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @dac_in_mux_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.38, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.39, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.40, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @lo_in_mux_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.41, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 9238, i8 8, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 7, ptr @.str.42, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 9238, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.43, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 5, ptr @mt_hp_event, i32 1, ptr @hpl_in_mux_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.44, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 5, ptr @mt_hp_event, i32 1, ptr @hpr_in_mux_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.45, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 5, ptr @mt_rcv_event, i32 1, ptr @rcv_in_mux_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.46, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.47, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.48, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.49, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.50, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.51, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.52, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.53, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8896, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.54, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8896, i8 6, i32 1, i32 0, i32 1, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @mt_sgen_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.55, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 8842, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.56, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.57, ptr @.str.58, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @mt_aif_out_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.59, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 12, ptr null, i16 9, ptr @mt_adc_supply_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.60, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @aif_out_mux_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.61, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 73, ptr @mt_mic_type_event, i32 1, ptr @mic_type_mux_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.62, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 64, ptr @mt_adc_l_event, i32 1, ptr @adc_left_mux_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.63, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 64, ptr @mt_adc_r_event, i32 1, ptr @adc_right_mux_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.64, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.65, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.66, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 64, ptr @mt_pga_left_event, i32 1, ptr @pga_left_mux_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.67, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 64, ptr @mt_pga_right_event, i32 1, ptr @pga_right_mux_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.68, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.69, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.70, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.71, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.72, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [2396 x i8] zeroinitializer }, align 32
@mt_clksq_event.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.74, ptr @.str.75, ptr @.str.3, ptr @.str.76, i8 0, i8 -41, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"snd_soc_mt6358\00", [17 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mt_clksq_event\00", [17 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s(), event = 0x%x\0A\00", [44 x i8] zeroinitializer }, align 32
@mt_aif_in_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.3, i32 926, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s(), event 0x%x, rate %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mt_aif_in_event\00", [16 x i8] zeroinitializer }, align 32
@mt_aif_in_event._entry_ptr = internal global ptr @mt_aif_in_event._entry, section ".printk_index", align 4
@.str.79 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DAC Select\00", [21 x i8] zeroinitializer }, align 32
@dac_in_mux_map_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 8848, i8 0, i8 0, i32 2, i32 1, ptr @dac_in_mux_map, ptr @dac_in_mux_map_value, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@dac_in_mux_map = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.80, ptr @.str.81], [24 x i8] zeroinitializer }, align 32
@dac_in_mux_map_value = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 0, i32 1], [24 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Normal Path\00", [20 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Sgen\00", [27 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"In Select\00", [22 x i8] zeroinitializer }, align 32
@lo_in_mux_map_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 9238, i8 2, i8 2, i32 4, i32 3, ptr @lo_in_mux_map, ptr @lo_in_mux_map_value, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@lo_in_mux_map = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86], [16 x i8] zeroinitializer }, align 32
@lo_in_mux_map_value = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 1, i32 2, i32 3], [16 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Open\00", [27 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Mute\00", [27 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Playback\00", [23 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Test Mode\00", [22 x i8] zeroinitializer }, align 32
@mt_hp_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.3, i32 1363, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s(), event 0x%x, dev_counter[DEV_HP] %d, mux %u\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mt_hp_event\00", [20 x i8] zeroinitializer }, align 32
@mt_hp_event._entry_ptr = internal global ptr @mt_hp_event._entry, section ".printk_index", align 4
@mt_hp_event._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.88, ptr @.str.3, i32 1373, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s(), dev_counter[DEV_HP] %d <= 0\0A\00", [61 x i8] zeroinitializer }, align 32
@mt_hp_event._entry_ptr.91 = internal global ptr @mt_hp_event._entry.89, section ".printk_index", align 4
@mt_hp_event._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.88, ptr @.str.3, i32 1389, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s(), dev_counter[DEV_HP] %d < 0\0A\00", [62 x i8] zeroinitializer }, align 32
@mt_hp_event._entry_ptr.94 = internal global ptr @mt_hp_event._entry.92, section ".printk_index", align 4
@headset_volume_ramp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.96, ptr @.str.3, i32 392, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s(), volume index is not valid, from %d, to %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"headset_volume_ramp\00", [44 x i8] zeroinitializer }, align 32
@headset_volume_ramp._entry_ptr = internal global ptr @headset_volume_ramp._entry, section ".printk_index", align 4
@headset_volume_ramp._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.96, ptr @.str.3, i32 395, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s(), from %d, to %d\0A\00", [42 x i8] zeroinitializer }, align 32
@headset_volume_ramp._entry_ptr.99 = internal global ptr @headset_volume_ramp._entry.97, section ".printk_index", align 4
@.str.100 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"HPL Select\00", [21 x i8] zeroinitializer }, align 32
@hpl_in_mux_map_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 -1, i8 0, i8 0, i32 8, i32 7, ptr @hp_in_mux_map, ptr @hp_in_mux_map_value, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@hp_in_mux_map = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.83, ptr @.str.101, ptr @.str.102, ptr @.str.86, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106], [32 x i8] zeroinitializer }, align 32
@hp_in_mux_map_value = internal global { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 0, i32 0, i32 0], [32 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"LoudSPK Playback\00", [47 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Audio Playback\00", [17 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HP Impedance\00", [19 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"undefined1\00", [21 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"undefined2\00", [21 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"undefined3\00", [21 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"HPR Select\00", [21 x i8] zeroinitializer }, align 32
@hpr_in_mux_map_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 -1, i8 0, i8 0, i32 8, i32 7, ptr @hp_in_mux_map, ptr @hp_in_mux_map_value, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@mt_rcv_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.109, ptr @.str.3, i32 1418, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s(), event 0x%x, mux %u\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mt_rcv_event\00", [19 x i8] zeroinitializer }, align 32
@mt_rcv_event._entry_ptr = internal global ptr @mt_rcv_event._entry, section ".printk_index", align 4
@.str.110 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"RCV Select\00", [21 x i8] zeroinitializer }, align 32
@rcv_in_mux_map_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 -1, i8 0, i8 0, i32 4, i32 3, ptr @rcv_in_mux_map, ptr @rcv_in_mux_map_value, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rcv_in_mux_map = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.83, ptr @.str.84, ptr @.str.111, ptr @.str.86], [16 x i8] zeroinitializer }, align 32
@rcv_in_mux_map_value = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 1, i32 2, i32 3], [16 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Voice Playback\00", [17 x i8] zeroinitializer }, align 32
@mt_sgen_event.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.74, ptr @.str.112, ptr @.str.3, ptr @.str.76, i8 0, i8 -35, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.112 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mt_sgen_event\00", [18 x i8] zeroinitializer }, align 32
@mt_aif_out_event.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.74, ptr @.str.113, ptr @.str.3, ptr @.str.77, i8 1, i8 -126, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.113 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mt_aif_out_event\00", [47 x i8] zeroinitializer }, align 32
@mt_adc_supply_event.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.74, ptr @.str.114, ptr @.str.3, ptr @.str.115, i8 1, i8 -120, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.114 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mt_adc_supply_event\00", [44 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s(), event 0x%x\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"AIF Out Select\00", [17 x i8] zeroinitializer }, align 32
@aif_out_mux_map_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 8848, i8 1, i8 1, i32 2, i32 1, ptr @dac_in_mux_map, ptr @dac_in_mux_map_value, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@mt_mic_type_event.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.74, ptr @.str.117, ptr @.str.3, ptr @.str.108, i8 1, i8 -37, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.117 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mt_mic_type_event\00", [46 x i8] zeroinitializer }, align 32
@mt6358_dmic_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.119, ptr @.str.3, i32 1819, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s()\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mt6358_dmic_enable\00", [45 x i8] zeroinitializer }, align 32
@mt6358_dmic_enable._entry_ptr = internal global ptr @mt6358_dmic_enable._entry, section ".printk_index", align 4
@mt6358_amic_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.121, ptr @.str.3, i32 1613, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s(), mux, mic %u, pga l %u, pga r %u\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mt6358_amic_enable\00", [45 x i8] zeroinitializer }, align 32
@mt6358_amic_enable._entry_ptr = internal global ptr @mt6358_amic_enable._entry, section ".printk_index", align 4
@mt6358_dmic_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.122, ptr @.str.3, i32 1852, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mt6358_dmic_disable\00", [44 x i8] zeroinitializer }, align 32
@mt6358_dmic_disable._entry_ptr = internal global ptr @mt6358_dmic_disable._entry, section ".printk_index", align 4
@mt6358_amic_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.123, ptr @.str.3, i32 1760, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mt6358_amic_disable\00", [44 x i8] zeroinitializer }, align 32
@mt6358_amic_disable._entry_ptr = internal global ptr @mt6358_amic_disable._entry, section ".printk_index", align 4
@.str.124 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Mic Type Select\00", [16 x i8] zeroinitializer }, align 32
@mic_type_mux_map_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 -1, i8 0, i8 0, i32 6, i32 7, ptr @mic_type_mux_map, ptr @mic_type_mux_map_value, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@mic_type_mux_map = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130], [40 x i8] zeroinitializer }, align 32
@mic_type_mux_map_value = internal global { [6 x i32], [40 x i8] } { [6 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5], [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Idle\00", [27 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ACC\00", [28 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DMIC\00", [27 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DCC\00", [28 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DCC_ECM_DIFF\00", [19 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"DCC_ECM_SINGLE\00", [17 x i8] zeroinitializer }, align 32
@mt_adc_l_event.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.74, ptr @.str.131, ptr @.str.3, ptr @.str.132, i8 1, i8 -26, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.131 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mt_adc_l_event\00", [17 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s(), event = 0x%x, mux %u\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ADC L Select\00", [19 x i8] zeroinitializer }, align 32
@adc_left_mux_map_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 -1, i8 0, i8 0, i32 4, i32 3, ptr @adc_left_mux_map, ptr @adc_mux_map_value, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@adc_left_mux_map = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.125, ptr @.str.70, ptr @.str.134, ptr @.str.135], [16 x i8] zeroinitializer }, align 32
@adc_mux_map_value = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 1, i32 2, i32 3], [16 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Left Preamplifier\00", [46 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Idle_1\00", [25 x i8] zeroinitializer }, align 32
@mt_adc_r_event.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.74, ptr @.str.136, ptr @.str.3, ptr @.str.132, i8 1, i8 -22, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.136 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mt_adc_r_event\00", [17 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ADC R Select\00", [19 x i8] zeroinitializer }, align 32
@adc_right_mux_map_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 -1, i8 0, i8 0, i32 4, i32 3, ptr @adc_right_mux_map, ptr @adc_mux_map_value, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@adc_right_mux_map = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.125, ptr @.str.70, ptr @.str.138, ptr @.str.135], [16 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Right Preamplifier\00", [45 x i8] zeroinitializer }, align 32
@mt_pga_left_event.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.74, ptr @.str.139, ptr @.str.3, ptr @.str.132, i8 1, i8 -18, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.139 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mt_pga_left_event\00", [46 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PGA L Select\00", [19 x i8] zeroinitializer }, align 32
@pga_left_mux_map_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 -1, i8 0, i8 0, i32 4, i32 3, ptr @pga_mux_map, ptr @pga_mux_map_value, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@pga_mux_map = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.141, ptr @.str.70, ptr @.str.71, ptr @.str.72], [16 x i8] zeroinitializer }, align 32
@pga_mux_map_value = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 1, i32 2, i32 3], [16 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"None\00", [27 x i8] zeroinitializer }, align 32
@mt_pga_right_event.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.74, ptr @.str.142, ptr @.str.3, ptr @.str.132, i8 1, i8 -14, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.142 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mt_pga_right_event\00", [45 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PGA R Select\00", [19 x i8] zeroinitializer }, align 32
@pga_right_mux_map_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 -1, i8 0, i8 0, i32 4, i32 3, ptr @pga_mux_map, ptr @pga_mux_map_value, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Avdd\00", [27 x i8] zeroinitializer }, align 32
@mt6358_codec_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.146, ptr @.str.3, i32 2413, ptr @.str.147, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s() have no Avdd supply\00", [39 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mt6358_codec_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@mt6358_codec_probe._entry_ptr = internal global ptr @mt6358_codec_probe._entry, section ".printk_index", align 4
@.str.148 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mt6358-snd-codec-aif1\00", [42 x i8] zeroinitializer }, align 32
@mt6358_codec_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mt6358_codec_dai_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@mt6358_codec_dai_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.150, ptr @.str.3, i32 2325, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s(), substream->stream %d, rate %d, number %d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mt6358_codec_dai_hw_params\00", [37 x i8] zeroinitializer }, align 32
@mt6358_codec_dai_hw_params._entry_ptr = internal global ptr @mt6358_codec_dai_hw_params._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.151 = internal global [7 x i64] [i64 5, i64 32, i64 9096, i64 9098, i64 9354, i64 9356, i64 9358]
@__sancov_gen_cov_switch_values.152 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.153 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 8]
@__sancov_gen_cov_switch_values.154 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.155 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.156 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.157 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.158 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 8]
@__sancov_gen_cov_switch_values.159 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 8]
@__sancov_gen_cov_switch_values.160 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 8]
@__sancov_gen_cov_switch_values.161 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 8, i64 64]
@__sancov_gen_cov_switch_values.162 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.163 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.164 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.165 = private unnamed_addr constant [23 x i8] c"mt6358_platform_driver\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2484, i32 31 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2486, i32 11 }
@___asan_gen_.171 = private unnamed_addr constant [16 x i8] c"mt6358_of_match\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2478, i32 34 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2469, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant [28 x i8] c"mt6358_soc_component_driver\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2424, i32 46 }
@___asan_gen_.195 = private unnamed_addr constant [18 x i8] c"mt6358_dai_driver\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2346, i32 34 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2439, i32 43 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2442, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant [20 x i8] c"mt6358_snd_controls\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 574, i32 38 }
@___asan_gen_.216 = private unnamed_addr constant [19 x i8] c"mt6358_dapm_routes\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2200, i32 40 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 576, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant [13 x i8] c"playback_tlv\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 571, i32 14 }
@___asan_gen_.225 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 579, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant [20 x i8] c".compoundliteral.12\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 582, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant [20 x i8] c".compoundliteral.14\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 586, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant [8 x i8] c"pga_tlv\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 572, i32 14 }
@___asan_gen_.240 = private unnamed_addr constant [20 x i8] c".compoundliteral.16\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 591, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2022, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2025, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2028, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2033, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2036, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2039, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2044, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2049, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2054, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2057, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2060, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2063, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2066, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2069, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2073, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2077, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2082, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2089, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2093, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant [19 x i8] c"dac_in_mux_control\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 713, i32 38 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2095, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2097, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2100, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant [18 x i8] c"lo_in_mux_control\00", align 1
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 612, i32 38 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2102, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2105, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2109, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant [19 x i8] c"hpl_in_mux_control\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 654, i32 38 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2115, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant [19 x i8] c"hpr_in_mux_control\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 664, i32 38 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2122, i32 2 }
@___asan_gen_.340 = private unnamed_addr constant [19 x i8] c"rcv_in_mux_control\00", align 1
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 694, i32 38 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2129, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2130, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2131, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2132, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2133, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2134, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2135, i32 2 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2138, i32 2 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2140, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2144, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2147, i32 2 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2150, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2155, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2161, i32 2 }
@___asan_gen_.388 = private unnamed_addr constant [20 x i8] c"aif_out_mux_control\00", align 1
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 724, i32 38 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2164, i32 2 }
@___asan_gen_.394 = private unnamed_addr constant [21 x i8] c"mic_type_mux_control\00", align 1
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 767, i32 38 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2170, i32 2 }
@___asan_gen_.400 = private unnamed_addr constant [21 x i8] c"adc_left_mux_control\00", align 1
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 797, i32 38 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2174, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant [22 x i8] c"adc_right_mux_control\00", align 1
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 812, i32 38 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2179, i32 2 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2180, i32 2 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2182, i32 2 }
@___asan_gen_.418 = private unnamed_addr constant [21 x i8] c"pga_left_mux_control\00", align 1
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 842, i32 38 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2186, i32 2 }
@___asan_gen_.424 = private unnamed_addr constant [22 x i8] c"pga_right_mux_control\00", align 1
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 853, i32 38 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2191, i32 2 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2192, i32 2 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2195, i32 2 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2196, i32 2 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2197, i32 2 }
@___asan_gen_.442 = private unnamed_addr constant [20 x i8] c"mt6358_dapm_widgets\00", align 1
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2020, i32 41 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 863, i32 2 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 925, i32 2 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 714, i32 2 }
@___asan_gen_.466 = private unnamed_addr constant [20 x i8] c"dac_in_mux_map_enum\00", align 1
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 706, i32 8 }
@___asan_gen_.469 = private unnamed_addr constant [15 x i8] c"dac_in_mux_map\00", align 1
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 698, i32 27 }
@___asan_gen_.472 = private unnamed_addr constant [21 x i8] c"dac_in_mux_map_value\00", align 1
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 702, i32 12 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 699, i32 2 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 699, i32 17 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 613, i32 2 }
@___asan_gen_.484 = private unnamed_addr constant [19 x i8] c"lo_in_mux_map_enum\00", align 1
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 605, i32 8 }
@___asan_gen_.487 = private unnamed_addr constant [14 x i8] c"lo_in_mux_map\00", align 1
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 597, i32 27 }
@___asan_gen_.490 = private unnamed_addr constant [20 x i8] c"lo_in_mux_map_value\00", align 1
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 601, i32 12 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 598, i32 2 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 598, i32 10 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 598, i32 18 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 598, i32 30 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 1359, i32 2 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 1371, i32 4 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 1387, i32 4 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 391, i32 3 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 394, i32 2 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 655, i32 2 }
@___asan_gen_.544 = private unnamed_addr constant [20 x i8] c"hpl_in_mux_map_enum\00", align 1
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 647, i32 8 }
@___asan_gen_.547 = private unnamed_addr constant [14 x i8] c"hp_in_mux_map\00", align 1
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 625, i32 27 }
@___asan_gen_.550 = private unnamed_addr constant [20 x i8] c"hp_in_mux_map_value\00", align 1
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 636, i32 12 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 627, i32 2 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 628, i32 2 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 630, i32 2 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 631, i32 2 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 632, i32 2 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 633, i32 2 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 665, i32 2 }
@___asan_gen_.574 = private unnamed_addr constant [20 x i8] c"hpr_in_mux_map_enum\00", align 1
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 657, i32 8 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 1415, i32 2 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 695, i32 2 }
@___asan_gen_.589 = private unnamed_addr constant [20 x i8] c"rcv_in_mux_map_enum\00", align 1
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 687, i32 8 }
@___asan_gen_.592 = private unnamed_addr constant [15 x i8] c"rcv_in_mux_map\00", align 1
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 676, i32 27 }
@___asan_gen_.595 = private unnamed_addr constant [21 x i8] c"rcv_in_mux_map_value\00", align 1
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 680, i32 12 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 677, i32 18 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 886, i32 2 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 1543, i32 2 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 1567, i32 2 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 725, i32 2 }
@___asan_gen_.616 = private unnamed_addr constant [21 x i8] c"aif_out_mux_map_enum\00", align 1
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 717, i32 8 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 1899, i32 2 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 1819, i32 2 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 1612, i32 2 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 1852, i32 2 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 1759, i32 2 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 768, i32 2 }
@___asan_gen_.655 = private unnamed_addr constant [22 x i8] c"mic_type_mux_map_enum\00", align 1
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 760, i32 8 }
@___asan_gen_.658 = private unnamed_addr constant [17 x i8] c"mic_type_mux_map\00", align 1
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 742, i32 27 }
@___asan_gen_.661 = private unnamed_addr constant [23 x i8] c"mic_type_mux_map_value\00", align 1
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 751, i32 12 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 743, i32 2 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 744, i32 2 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 745, i32 2 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 746, i32 2 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 747, i32 2 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 748, i32 2 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 1945, i32 2 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 798, i32 2 }
@___asan_gen_.691 = private unnamed_addr constant [22 x i8] c"adc_left_mux_map_enum\00", align 1
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 790, i32 8 }
@___asan_gen_.694 = private unnamed_addr constant [17 x i8] c"adc_left_mux_map\00", align 1
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 779, i32 27 }
@___asan_gen_.697 = private unnamed_addr constant [18 x i8] c"adc_mux_map_value\00", align 1
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 783, i32 12 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 780, i32 18 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 780, i32 39 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 1961, i32 2 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 813, i32 2 }
@___asan_gen_.712 = private unnamed_addr constant [23 x i8] c"adc_right_mux_map_enum\00", align 1
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 805, i32 8 }
@___asan_gen_.715 = private unnamed_addr constant [18 x i8] c"adc_right_mux_map\00", align 1
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 801, i32 27 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 802, i32 18 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 1977, i32 2 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 843, i32 2 }
@___asan_gen_.727 = private unnamed_addr constant [22 x i8] c"pga_left_mux_map_enum\00", align 1
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 835, i32 8 }
@___asan_gen_.730 = private unnamed_addr constant [12 x i8] c"pga_mux_map\00", align 1
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 824, i32 27 }
@___asan_gen_.733 = private unnamed_addr constant [18 x i8] c"pga_mux_map_value\00", align 1
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 828, i32 12 }
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 825, i32 2 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 1993, i32 2 }
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 854, i32 2 }
@___asan_gen_.745 = private unnamed_addr constant [23 x i8] c"pga_right_mux_map_enum\00", align 1
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 846, i32 8 }
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2411, i32 49 }
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2413, i32 3 }
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2348, i32 11 }
@___asan_gen_.766 = private unnamed_addr constant [21 x i8] c"mt6358_codec_dai_ops\00", align 1
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2335, i32 37 }
@___asan_gen_.769 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.775 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.776 = private constant [29 x i8] c"../sound/soc/codecs/mt6358.c\00", align 1
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.776, i32 2321, i32 2 }
@llvm.compiler.used = appending global [229 x ptr] [ptr @__UNIQUE_ID_author305, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file306, ptr @__UNIQUE_ID_license307, ptr @__exitcall_mt6358_platform_driver_exit, ptr @__initcall__kmod_snd_soc_mt6358__303_2492_mt6358_platform_driver_init6, ptr @headset_volume_ramp._entry, ptr @headset_volume_ramp._entry.97, ptr @headset_volume_ramp._entry_ptr, ptr @headset_volume_ramp._entry_ptr.99, ptr @mt6358_amic_disable._entry, ptr @mt6358_amic_disable._entry_ptr, ptr @mt6358_amic_enable._entry, ptr @mt6358_amic_enable._entry_ptr, ptr @mt6358_codec_dai_hw_params._entry, ptr @mt6358_codec_dai_hw_params._entry_ptr, ptr @mt6358_codec_probe._entry, ptr @mt6358_codec_probe._entry_ptr, ptr @mt6358_dmic_disable._entry, ptr @mt6358_dmic_disable._entry_ptr, ptr @mt6358_dmic_enable._entry, ptr @mt6358_dmic_enable._entry_ptr, ptr @mt6358_parse_dt._entry, ptr @mt6358_parse_dt._entry_ptr, ptr @mt6358_platform_driver_exit, ptr @mt6358_platform_driver_probe._entry, ptr @mt6358_platform_driver_probe._entry_ptr, ptr @mt_aif_in_event._entry, ptr @mt_aif_in_event._entry_ptr, ptr @mt_hp_event._entry, ptr @mt_hp_event._entry.89, ptr @mt_hp_event._entry.92, ptr @mt_hp_event._entry_ptr, ptr @mt_hp_event._entry_ptr.91, ptr @mt_hp_event._entry_ptr.94, ptr @mt_rcv_event._entry, ptr @mt_rcv_event._entry_ptr, ptr @mt6358_platform_driver, ptr @.str, ptr @mt6358_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @mt6358_soc_component_driver, ptr @mt6358_dai_driver, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @mt6358_snd_controls, ptr @mt6358_dapm_routes, ptr @.str.10, ptr @playback_tlv, ptr @.compoundliteral, ptr @.str.11, ptr @.compoundliteral.12, ptr @.str.13, ptr @.compoundliteral.14, ptr @.str.15, ptr @pga_tlv, ptr @.compoundliteral.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @dac_in_mux_control, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @lo_in_mux_control, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @hpl_in_mux_control, ptr @.str.44, ptr @hpr_in_mux_control, ptr @.str.45, ptr @rcv_in_mux_control, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @aif_out_mux_control, ptr @.str.61, ptr @mic_type_mux_control, ptr @.str.62, ptr @adc_left_mux_control, ptr @.str.63, ptr @adc_right_mux_control, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @pga_left_mux_control, ptr @.str.67, ptr @pga_right_mux_control, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @mt6358_dapm_widgets, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @dac_in_mux_map_enum, ptr @dac_in_mux_map, ptr @dac_in_mux_map_value, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @lo_in_mux_map_enum, ptr @lo_in_mux_map, ptr @lo_in_mux_map_value, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.90, ptr @.str.93, ptr @.str.95, ptr @.str.96, ptr @.str.98, ptr @.str.100, ptr @hpl_in_mux_map_enum, ptr @hp_in_mux_map, ptr @hp_in_mux_map_value, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @hpr_in_mux_map_enum, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @rcv_in_mux_map_enum, ptr @rcv_in_mux_map, ptr @rcv_in_mux_map_value, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @aif_out_mux_map_enum, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @mic_type_mux_map_enum, ptr @mic_type_mux_map, ptr @mic_type_mux_map_value, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @adc_left_mux_map_enum, ptr @adc_left_mux_map, ptr @adc_mux_map_value, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @adc_right_mux_map_enum, ptr @adc_right_mux_map, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @pga_left_mux_map_enum, ptr @pga_mux_map, ptr @pga_mux_map_value, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @pga_right_mux_map_enum, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @mt6358_codec_dai_ops, ptr @.str.149, ptr @.str.150], section "llvm.metadata"
@0 = internal global [207 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6358_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6358_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6358_platform_driver_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6358_soc_component_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6358_dai_driver to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6358_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6358_snd_controls to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6358_dapm_routes to i32), i32 4004, i32 5024, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @playback_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.12 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.14 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pga_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.16 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac_in_mux_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lo_in_mux_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpl_in_mux_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpr_in_mux_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcv_in_mux_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aif_out_mux_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mic_type_mux_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_left_mux_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_right_mux_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pga_left_mux_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pga_right_mux_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6358_dapm_widgets to i32), i32 9540, i32 11936, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt_aif_in_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac_in_mux_map_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac_in_mux_map to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac_in_mux_map_value to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lo_in_mux_map_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lo_in_mux_map to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lo_in_mux_map_value to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt_hp_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt_hp_event._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt_hp_event._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @headset_volume_ramp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @headset_volume_ramp._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpl_in_mux_map_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hp_in_mux_map to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hp_in_mux_map_value to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hpr_in_mux_map_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt_rcv_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcv_in_mux_map_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcv_in_mux_map to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcv_in_mux_map_value to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aif_out_mux_map_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6358_dmic_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6358_amic_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6358_dmic_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6358_amic_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mic_type_mux_map_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mic_type_mux_map to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mic_type_mux_map_value to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_left_mux_map_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_left_mux_map to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_mux_map_value to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_right_mux_map_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_right_mux_map to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pga_left_mux_map_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pga_mux_map to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pga_mux_map_value to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pga_right_mux_map_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6358_codec_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6358_codec_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6358_codec_dai_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @mt6358_set_mtkaif_protocol(ptr nocapture noundef readonly %cmpnt, i32 noundef %mtkaif_protocol) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %cmpnt, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %mtkaif_protocol1 = getelementptr inbounds %struct.mt6358_priv, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %mtkaif_protocol1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %mtkaif_protocol, ptr %mtkaif_protocol1, align 4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt6358_mtkaif_calibration_enable(ptr nocapture noundef readonly %cmpnt) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %cmpnt, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %regmap.i = getelementptr inbounds %struct.mt6358_priv, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 220, i32 noundef 504, i32 noundef 504, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %6 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap.i, align 4
  %call.i7.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 218, i32 noundef 65535, i32 noundef 585, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %8 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i, align 4
  %call.i8.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 216, i32 noundef 65535, i32 noundef 585, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %10 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i, align 4
  %call.i.i18 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 226, i32 noundef 65535, i32 noundef 65535, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %12 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap.i, align 4
  %call.i7.i19 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 224, i32 noundef 65535, i32 noundef 585, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %14 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap.i, align 4
  %call.i8.i20 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 222, i32 noundef 65535, i32 noundef 585, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  tail call fastcc void @mt6358_mtkaif_tx_enable(ptr noundef %3)
  %16 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap.i, align 4
  %call.i.i22 = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 1964, i32 noundef 8192, i32 noundef 8192, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %18 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap.i, align 4
  %call.i.i24 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 9250, i32 noundef 16, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %20 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap.i, align 4
  %call.i.i26 = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 9108, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %22 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap.i, align 4
  %call.i1.i = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 9108, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %24 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap.i, align 4
  %call.i.i28 = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 8716, i32 noundef 102, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %26 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap.i, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef 8906, i32 noundef 32768, i32 noundef 32768, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %28 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap.i, align 4
  %call.i29 = tail call i32 @regmap_update_bits_base(ptr noundef %29, i32 noundef 8906, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mt6358_mtkaif_tx_enable(ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mtkaif_protocol = getelementptr inbounds %struct.mt6358_priv, ptr %priv, i32 0, i32 7
  %0 = ptrtoint ptr %mtkaif_protocol to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mtkaif_protocol, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb5
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %regmap = getelementptr inbounds %struct.mt6358_priv, ptr %priv, i32 0, i32 1
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 8884, i32 noundef 65535, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call.i1 = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 8908, i32 noundef 65280, i32 noundef 14336, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %regmap6 = getelementptr inbounds %struct.mt6358_priv, ptr %priv, i32 0, i32 1
  %7 = ptrtoint ptr %regmap6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap6, align 4
  %call.i3 = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 8884, i32 noundef 65535, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %regmap11 = getelementptr inbounds %struct.mt6358_priv, ptr %priv, i32 0, i32 1
  %9 = ptrtoint ptr %regmap11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap11, align 4
  %call.i5 = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 8884, i32 noundef 65535, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb5, %sw.bb
  %regmap11.sink = phi ptr [ %regmap11, %sw.default ], [ %regmap6, %sw.bb5 ], [ %regmap, %sw.bb ]
  %.sink7 = phi i32 [ 12544, %sw.default ], [ 12544, %sw.bb5 ], [ 14592, %sw.bb ]
  %11 = ptrtoint ptr %regmap11.sink to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap11.sink, align 4
  %call.i6 = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 8908, i32 noundef 65280, i32 noundef %.sink7, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt6358_mtkaif_calibration_disable(ptr nocapture noundef readonly %cmpnt) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %cmpnt, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %regmap = getelementptr inbounds %struct.mt6358_priv, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 8906, i32 noundef 32768, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call.i17 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 8906, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 8716, i32 noundef 102, i32 noundef 102, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call.i.i19 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 9108, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %call.i1.i = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 9108, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %call.i.i21 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 9250, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %call.i.i23 = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 1964, i32 noundef 8192, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %call.i.i25 = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 8908, i32 noundef 65280, i32 noundef 12288, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %20 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap, align 4
  %call.i.i27 = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 220, i32 noundef 504, i32 noundef 504, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %22 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap, align 4
  %call.i7.i = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 216, i32 noundef 504, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %24 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap, align 4
  %call.i8.i = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 136, i32 noundef 3840, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %26 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap, align 4
  %call.i.i29 = tail call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef 226, i32 noundef 65535, i32 noundef 65535, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %28 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap, align 4
  %call.i7.i30 = tail call i32 @regmap_update_bits_base(ptr noundef %29, i32 noundef 222, i32 noundef 65535, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %30 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap, align 4
  %call.i8.i31 = tail call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef 136, i32 noundef 61440, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mt6358_set_mtkaif_calibration_phase(ptr nocapture noundef readonly %cmpnt, i32 noundef %phase_1, i32 noundef %phase_2) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %cmpnt, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %regmap = getelementptr inbounds %struct.mt6358_priv, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 8906, i32 noundef 127, i32 noundef %phase_1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %shl3 = shl i32 %phase_2, 8
  %call.i6 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 8906, i32 noundef 32512, i32 noundef %shl3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6358_platform_driver_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mt6358_platform_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mt6358_platform_driver_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @mt6358_platform_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6358_platform_driver_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 112, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i31 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %driver_data.i31 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %driver_data.i31, align 4
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %call.i, align 4
  %regmap = getelementptr inbounds %struct.mt6397_chip, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %regmap6 = getelementptr inbounds %struct.mt6358_priv, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %regmap6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %regmap6, align 4
  %cmp.i = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %7 to i32
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %10 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %of_node.i, align 8
  %dmic_one_wire_mode.i = getelementptr inbounds %struct.mt6358_priv, ptr %call.i, i32 0, i32 10
  %call.i.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %11, ptr noundef nonnull @.str.6, ptr noundef %dmic_one_wire_mode.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i, label %if.end12.mt6358_parse_dt.exit_crit_edge, label %do.end.i

if.end12.mt6358_parse_dt.exit_crit_edge:          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt6358_parse_dt.exit

do.end.i:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8) #9
  %14 = ptrtoint ptr %dmic_one_wire_mode.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %dmic_one_wire_mode.i, align 4
  br label %mt6358_parse_dt.exit

mt6358_parse_dt.exit:                             ; preds = %do.end.i, %if.end12.mt6358_parse_dt.exit_crit_edge
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call.i, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %17 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i32 = icmp eq ptr %18, null
  br i1 %tobool.not.i32, label %if.end.i, label %mt6358_parse_dt.exit.dev_name.exit_crit_edge

mt6358_parse_dt.exit.dev_name.exit_crit_edge:     ; preds = %mt6358_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %mt6358_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %mt6358_parse_dt.exit.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %20, %if.end.i ], [ %18, %mt6358_parse_dt.exit.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %16, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef %retval.0.i) #9
  %call17 = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @mt6358_soc_component_driver, ptr noundef nonnull @mt6358_dai_driver, i32 noundef 1) #6
  br label %cleanup

cleanup:                                          ; preds = %dev_name.exit, %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %9, %if.then9 ], [ %call17, %dev_name.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6358_codec_probe(ptr noundef %cmpnt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %cmpnt, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %regmap = getelementptr inbounds %struct.mt6358_priv, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  tail call void @snd_soc_component_init_regmap(ptr noundef %cmpnt, ptr noundef %5) #6
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 9224, i32 noundef 4096, i32 noundef 4096, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call.i18.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 9224, i32 noundef 8192, i32 noundef 8192, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call.i19.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 9236, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %call.i20.i = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 9238, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %14 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap, align 4
  %call.i21.i = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 9506, i32 noundef 65535, i32 noundef 28686, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %call10.i = tail call i32 @regmap_write(ptr noundef %17, i32 noundef 60, i32 noundef 34952) #6
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 220, i32 noundef 504, i32 noundef 504, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %20 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap, align 4
  %call.i7.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 216, i32 noundef 504, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %22 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap, align 4
  %call.i8.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 136, i32 noundef 3840, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %24 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap, align 4
  %call.i.i23.i = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 226, i32 noundef 65535, i32 noundef 65535, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %26 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap, align 4
  %call.i7.i24.i = tail call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef 222, i32 noundef 65535, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %28 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap, align 4
  %call.i8.i25.i = tail call i32 @regmap_update_bits_base(ptr noundef %29, i32 noundef 136, i32 noundef 61440, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %3, align 4
  %call1 = tail call ptr @devm_regulator_get(ptr noundef %31, ptr noundef nonnull @.str.144) #6
  %avdd_reg = getelementptr inbounds %struct.mt6358_priv, ptr %3, i32 0, i32 8
  %32 = ptrtoint ptr %avdd_reg to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call1, ptr %avdd_reg, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.145, ptr noundef nonnull @.str.146) #9
  %35 = ptrtoint ptr %avdd_reg to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %avdd_reg, align 4
  %37 = ptrtoint ptr %36 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = tail call i32 @regulator_enable(ptr noundef %call1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %37, %do.end ], [ %call8, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6358_put_volsw(ptr noundef %kcontrol, ptr noundef %ucontrol) #2 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #6
  %8 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %reg, align 4, !annotation !413
  %call2 = tail call i32 @snd_soc_put_volsw(ptr noundef %kcontrol, ptr noundef %ucontrol) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %9 = inttoptr i32 %7 to ptr
  %reg3 = getelementptr inbounds %struct.soc_mixer_control, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %reg3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reg3, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.151)
  switch i32 %11, label %if.end.cleanup_crit_edge [
    i32 9356, label %sw.bb
    i32 9354, label %sw.bb9
    i32 9358, label %sw.bb20
    i32 9096, label %if.end.sw.bb31_crit_edge
    i32 9098, label %if.end.sw.bb31_crit_edge64
  ]

if.end.sw.bb31_crit_edge64:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb31

if.end.sw.bb31_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb31

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %regmap = getelementptr inbounds %struct.mt6358_priv, ptr %5, i32 0, i32 1
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call4 = call i32 @regmap_read(ptr noundef %14, i32 noundef 9356, ptr noundef nonnull %reg) #6
  %15 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %reg, align 4
  %and = and i32 %16, 31
  %arrayidx = getelementptr %struct.mt6358_priv, ptr %5, i32 0, i32 4, i32 2
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %and, ptr %arrayidx, align 4
  %18 = load i32, ptr %reg, align 4
  %shr5 = lshr i32 %18, 7
  %and6 = and i32 %shr5, 31
  %arrayidx8 = getelementptr %struct.mt6358_priv, ptr %5, i32 0, i32 4, i32 3
  %19 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %and6, ptr %arrayidx8, align 4
  br label %cleanup

sw.bb9:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %regmap10 = getelementptr inbounds %struct.mt6358_priv, ptr %5, i32 0, i32 1
  %20 = ptrtoint ptr %regmap10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap10, align 4
  %call11 = call i32 @regmap_read(ptr noundef %21, i32 noundef 9354, ptr noundef nonnull %reg) #6
  %22 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %reg, align 4
  %and13 = and i32 %23, 31
  %arrayidx15 = getelementptr %struct.mt6358_priv, ptr %5, i32 0, i32 4, i32 4
  %24 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %and13, ptr %arrayidx15, align 4
  %25 = load i32, ptr %reg, align 4
  %shr16 = lshr i32 %25, 7
  %and17 = and i32 %shr16, 31
  %arrayidx19 = getelementptr %struct.mt6358_priv, ptr %5, i32 0, i32 4, i32 5
  %26 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %and17, ptr %arrayidx19, align 4
  br label %cleanup

sw.bb20:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %regmap21 = getelementptr inbounds %struct.mt6358_priv, ptr %5, i32 0, i32 1
  %27 = ptrtoint ptr %regmap21 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap21, align 4
  %call22 = call i32 @regmap_read(ptr noundef %28, i32 noundef 9358, ptr noundef nonnull %reg) #6
  %29 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %reg, align 4
  %and24 = and i32 %30, 31
  %ana_gain25 = getelementptr inbounds %struct.mt6358_priv, ptr %5, i32 0, i32 4
  %31 = ptrtoint ptr %ana_gain25 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %and24, ptr %ana_gain25, align 4
  %arrayidx30 = getelementptr %struct.mt6358_priv, ptr %5, i32 0, i32 4, i32 1
  %32 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %and24, ptr %arrayidx30, align 4
  br label %cleanup

sw.bb31:                                          ; preds = %if.end.sw.bb31_crit_edge, %if.end.sw.bb31_crit_edge64
  %regmap32 = getelementptr inbounds %struct.mt6358_priv, ptr %5, i32 0, i32 1
  %33 = ptrtoint ptr %regmap32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap32, align 4
  %call33 = call i32 @regmap_read(ptr noundef %34, i32 noundef 9096, ptr noundef nonnull %reg) #6
  %35 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %reg, align 4
  %shr34 = lshr i32 %36, 8
  %and35 = and i32 %shr34, 7
  %arrayidx37 = getelementptr %struct.mt6358_priv, ptr %5, i32 0, i32 4, i32 6
  %37 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %and35, ptr %arrayidx37, align 4
  %38 = ptrtoint ptr %regmap32 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap32, align 4
  %call39 = call i32 @regmap_read(ptr noundef %39, i32 noundef 9098, ptr noundef nonnull %reg) #6
  %40 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %reg, align 4
  %shr40 = lshr i32 %41, 8
  %and41 = and i32 %shr40, 7
  %arrayidx43 = getelementptr %struct.mt6358_priv, ptr %5, i32 0, i32 4, i32 7
  %42 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %and41, ptr %arrayidx43, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb31, %sw.bb20, %sw.bb9, %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #6
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_mono_info(ptr noundef, ptr noundef) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mt6358_get_wov(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %wov_enabled = getelementptr inbounds %struct.mt6358_priv, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %wov_enabled to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wov_enabled, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6358_put_wov(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value, align 8
  %wov_enabled = getelementptr inbounds %struct.mt6358_priv, ptr %5, i32 0, i32 9
  %8 = ptrtoint ptr %wov_enabled to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wov_enabled, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %7)
  %cmp.not = icmp eq i32 %9, %7
  br i1 %cmp.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  %regmap.i12 = getelementptr inbounds %struct.mt6358_priv, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %regmap.i12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i12, align 4
  br i1 %tobool.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 9250, i32 noundef 65535, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %12 = ptrtoint ptr %regmap.i12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap.i12, align 4
  %call.i1.i = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 1964, i32 noundef 65535, i32 noundef 41653, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %14 = ptrtoint ptr %regmap.i12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regmap.i12, align 4
  %call.i2.i = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 9098, i32 noundef 65535, i32 noundef 2048, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %arrayidx.i.i = getelementptr %struct.mt6358_priv, ptr %5, i32 0, i32 4, i32 6
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i.i, align 4
  %arrayidx2.i.i = getelementptr %struct.mt6358_priv, ptr %5, i32 0, i32 4, i32 7
  %18 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx2.i.i, align 4
  %20 = ptrtoint ptr %regmap.i12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap.i12, align 4
  %shl.i.i = shl i32 %17, 8
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 9096, i32 noundef 1792, i32 noundef %shl.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %22 = ptrtoint ptr %regmap.i12 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap.i12, align 4
  %shl4.i.i = shl i32 %19, 8
  %call.i9.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 9098, i32 noundef 1792, i32 noundef %shl4.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %24 = ptrtoint ptr %regmap.i12 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap.i12, align 4
  %call.i3.i = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 1962, i32 noundef 65535, i32 noundef 39209, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %26 = ptrtoint ptr %regmap.i12 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap.i12, align 4
  %call.i4.i = tail call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef 9114, i32 noundef 65535, i32 noundef 37, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %28 = ptrtoint ptr %regmap.i12 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap.i12, align 4
  %call.i5.i = tail call i32 @regmap_update_bits_base(ptr noundef %29, i32 noundef 9112, i32 noundef 65535, i32 noundef 5, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %30 = ptrtoint ptr %regmap.i12 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap.i12, align 4
  %call.i6.i = tail call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef 8716, i32 noundef 65535, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %32 = ptrtoint ptr %regmap.i12 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap.i12, align 4
  %call.i7.i = tail call i32 @regmap_update_bits_base(ptr noundef %33, i32 noundef 222, i32 noundef 65535, i32 noundef 288, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %34 = ptrtoint ptr %regmap.i12 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap.i12, align 4
  %call.i8.i = tail call i32 @regmap_update_bits_base(ptr noundef %35, i32 noundef 8972, i32 noundef 65535, i32 noundef 65535, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %36 = ptrtoint ptr %regmap.i12 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap.i12, align 4
  %call.i9.i = tail call i32 @regmap_update_bits_base(ptr noundef %37, i32 noundef 8974, i32 noundef 65535, i32 noundef 512, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %38 = ptrtoint ptr %regmap.i12 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap.i12, align 4
  %call.i10.i = tail call i32 @regmap_update_bits_base(ptr noundef %39, i32 noundef 8976, i32 noundef 65535, i32 noundef 9252, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %40 = ptrtoint ptr %regmap.i12 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap.i12, align 4
  %call.i11.i = tail call i32 @regmap_update_bits_base(ptr noundef %41, i32 noundef 8978, i32 noundef 65535, i32 noundef 56236, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %42 = ptrtoint ptr %regmap.i12 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regmap.i12, align 4
  %call.i12.i = tail call i32 @regmap_update_bits_base(ptr noundef %43, i32 noundef 8980, i32 noundef 65535, i32 noundef 670, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %44 = ptrtoint ptr %regmap.i12 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regmap.i12, align 4
  %call.i13.i = tail call i32 @regmap_update_bits_base(ptr noundef %45, i32 noundef 8982, i32 noundef 65535, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %46 = ptrtoint ptr %regmap.i12 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regmap.i12, align 4
  %call.i14.i = tail call i32 @regmap_update_bits_base(ptr noundef %47, i32 noundef 9002, i32 noundef 65535, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %48 = ptrtoint ptr %regmap.i12 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regmap.i12, align 4
  %call.i15.i = tail call i32 @regmap_update_bits_base(ptr noundef %49, i32 noundef 9004, i32 noundef 65535, i32 noundef 1105, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %50 = ptrtoint ptr %regmap.i12 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regmap.i12, align 4
  %call.i16.i = tail call i32 @regmap_update_bits_base(ptr noundef %51, i32 noundef 8970, i32 noundef 65535, i32 noundef 26833, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i13 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 8970, i32 noundef 65535, i32 noundef 49152, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %52 = ptrtoint ptr %regmap.i12 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regmap.i12, align 4
  %call.i1.i14 = tail call i32 @regmap_update_bits_base(ptr noundef %53, i32 noundef 9004, i32 noundef 65535, i32 noundef 1104, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %54 = ptrtoint ptr %regmap.i12 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regmap.i12, align 4
  %call.i2.i15 = tail call i32 @regmap_update_bits_base(ptr noundef %55, i32 noundef 9002, i32 noundef 65535, i32 noundef 3072, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %56 = ptrtoint ptr %regmap.i12 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regmap.i12, align 4
  %call.i3.i16 = tail call i32 @regmap_update_bits_base(ptr noundef %57, i32 noundef 8982, i32 noundef 65535, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %58 = ptrtoint ptr %regmap.i12 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regmap.i12, align 4
  %call.i4.i17 = tail call i32 @regmap_update_bits_base(ptr noundef %59, i32 noundef 8980, i32 noundef 65535, i32 noundef 108, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %60 = ptrtoint ptr %regmap.i12 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regmap.i12, align 4
  %call.i5.i18 = tail call i32 @regmap_update_bits_base(ptr noundef %61, i32 noundef 8978, i32 noundef 65535, i32 noundef 43129, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %62 = ptrtoint ptr %regmap.i12 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regmap.i12, align 4
  %call.i6.i19 = tail call i32 @regmap_update_bits_base(ptr noundef %63, i32 noundef 8976, i32 noundef 65535, i32 noundef 8995, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %64 = ptrtoint ptr %regmap.i12 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regmap.i12, align 4
  %call.i7.i20 = tail call i32 @regmap_update_bits_base(ptr noundef %65, i32 noundef 8974, i32 noundef 65535, i32 noundef 1024, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %66 = ptrtoint ptr %regmap.i12 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regmap.i12, align 4
  %call.i8.i21 = tail call i32 @regmap_update_bits_base(ptr noundef %67, i32 noundef 8972, i32 noundef 65535, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %68 = ptrtoint ptr %regmap.i12 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regmap.i12, align 4
  %call.i9.i22 = tail call i32 @regmap_update_bits_base(ptr noundef %69, i32 noundef 222, i32 noundef 65535, i32 noundef 728, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %70 = ptrtoint ptr %regmap.i12 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regmap.i12, align 4
  %call.i10.i23 = tail call i32 @regmap_update_bits_base(ptr noundef %71, i32 noundef 8716, i32 noundef 65535, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %72 = ptrtoint ptr %regmap.i12 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regmap.i12, align 4
  %call.i11.i24 = tail call i32 @regmap_update_bits_base(ptr noundef %73, i32 noundef 9112, i32 noundef 65535, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %74 = ptrtoint ptr %regmap.i12 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regmap.i12, align 4
  %call.i12.i25 = tail call i32 @regmap_update_bits_base(ptr noundef %75, i32 noundef 9114, i32 noundef 65535, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %76 = ptrtoint ptr %regmap.i12 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regmap.i12, align 4
  %call.i13.i26 = tail call i32 @regmap_update_bits_base(ptr noundef %77, i32 noundef 1962, i32 noundef 65535, i32 noundef 38953, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %78 = ptrtoint ptr %regmap.i12 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %regmap.i12, align 4
  %call.i14.i27 = tail call i32 @regmap_update_bits_base(ptr noundef %79, i32 noundef 9098, i32 noundef 65535, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %arrayidx.i.i28 = getelementptr %struct.mt6358_priv, ptr %5, i32 0, i32 4, i32 6
  %80 = ptrtoint ptr %arrayidx.i.i28 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx.i.i28, align 4
  %arrayidx2.i.i29 = getelementptr %struct.mt6358_priv, ptr %5, i32 0, i32 4, i32 7
  %82 = ptrtoint ptr %arrayidx2.i.i29 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx2.i.i29, align 4
  %84 = ptrtoint ptr %regmap.i12 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regmap.i12, align 4
  %shl.i.i30 = shl i32 %81, 8
  %call.i.i.i31 = tail call i32 @regmap_update_bits_base(ptr noundef %85, i32 noundef 9096, i32 noundef 1792, i32 noundef %shl.i.i30, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %86 = ptrtoint ptr %regmap.i12 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %regmap.i12, align 4
  %shl4.i.i32 = shl i32 %83, 8
  %call.i9.i.i33 = tail call i32 @regmap_update_bits_base(ptr noundef %87, i32 noundef 9098, i32 noundef 1792, i32 noundef %shl4.i.i32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %88 = ptrtoint ptr %regmap.i12 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %regmap.i12, align 4
  %call.i15.i34 = tail call i32 @regmap_update_bits_base(ptr noundef %89, i32 noundef 1964, i32 noundef 65535, i32 noundef 41653, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %90 = ptrtoint ptr %regmap.i12 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %regmap.i12, align 4
  %call.i16.i35 = tail call i32 @regmap_update_bits_base(ptr noundef %91, i32 noundef 9250, i32 noundef 65535, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  %92 = ptrtoint ptr %wov_enabled to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %7, ptr %wov_enabled, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry.if.end6_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt_clksq_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt_clksq_event.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt_clksq_event, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !414

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt_clksq_event.__UNIQUE_ID_ddebug294, ptr noundef %7, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.75, i32 noundef %event) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %event)
  %cond = icmp eq i32 %event, 1
  br i1 %cond, label %sw.bb, label %do.end.sw.epilog_crit_edge

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %regmap = getelementptr inbounds %struct.mt6358_priv, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 9108, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %do.end.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt_delay_250_event(ptr nocapture noundef readnone %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.152)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 2, label %entry.sw.epilog.sink.split_crit_edge
    i32 4, label %entry.sw.epilog.sink.split_crit_edge2
  ]

entry.sw.epilog.sink.split_crit_edge2:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %entry.sw.epilog.sink.split_crit_edge, %entry.sw.epilog.sink.split_crit_edge2
  tail call void @usleep_range_state(i32 noundef 250, i32 noundef 270, i32 noundef 2) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt_aif_in_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %dl_rate = getelementptr inbounds %struct.mt6358_priv, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %dl_rate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dl_rate, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.78, i32 noundef %event, i32 noundef %9) #9
  %10 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.153)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 8, label %sw.bb9
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %regmap.i = getelementptr inbounds %struct.mt6358_priv, ptr %5, i32 0, i32 1
  %11 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 220, i32 noundef 504, i32 noundef 504, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %13 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap.i, align 4
  %call.i7.i = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 218, i32 noundef 65535, i32 noundef 585, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %15 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap.i, align 4
  %call.i8.i = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 216, i32 noundef 65535, i32 noundef 585, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %17 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap.i, align 4
  %call2 = tail call i32 @regmap_write(ptr noundef %18, i32 noundef 8858, i32 noundef 6) #6
  %19 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap.i, align 4
  %call4 = tail call i32 @regmap_write(ptr noundef %20, i32 noundef 8854, i32 noundef 52129) #6
  %21 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap.i, align 4
  %call6 = tail call i32 @regmap_write(ptr noundef %22, i32 noundef 8858, i32 noundef 3) #6
  %23 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap.i, align 4
  %call8 = tail call i32 @regmap_write(ptr noundef %24, i32 noundef 8858, i32 noundef 11) #6
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %regmap10 = getelementptr inbounds %struct.mt6358_priv, ptr %5, i32 0, i32 1
  %25 = ptrtoint ptr %regmap10 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap10, align 4
  %call11 = tail call i32 @regmap_write(ptr noundef %26, i32 noundef 8858, i32 noundef 0) #6
  %27 = ptrtoint ptr %regmap10 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap10, align 4
  %call13 = tail call i32 @regmap_write(ptr noundef %28, i32 noundef 8854, i32 noundef 52128) #6
  %29 = ptrtoint ptr %regmap10 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap10, align 4
  %call.i.i25 = tail call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef 220, i32 noundef 504, i32 noundef 504, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %31 = ptrtoint ptr %regmap10 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap10, align 4
  %call.i7.i26 = tail call i32 @regmap_update_bits_base(ptr noundef %32, i32 noundef 216, i32 noundef 504, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %33 = ptrtoint ptr %regmap10 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap10, align 4
  %call.i8.i27 = tail call i32 @regmap_update_bits_base(ptr noundef %34, i32 noundef 136, i32 noundef 3840, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb9, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt_hp_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %kcontrols = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 20
  %6 = ptrtoint ptr %kcontrols to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %kcontrols, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %call2 = tail call i32 @dapm_kcontrol_get_value(ptr noundef %9) #6
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  %dev_counter = getelementptr inbounds %struct.mt6358_priv, ptr %5, i32 0, i32 6
  %12 = ptrtoint ptr %dev_counter to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dev_counter, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %11, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.88, i32 noundef %event, i32 noundef %13, i32 noundef %call2) #9
  %14 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.154)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 4, label %sw.bb29
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %15 = ptrtoint ptr %dev_counter to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dev_counter, align 4
  %inc = add i32 %16, 1
  store i32 %inc, ptr %dev_counter, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %inc)
  %cmp = icmp sgt i32 %inc, 1
  br i1 %cmp, label %sw.bb.sw.epilog_crit_edge, label %if.else

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp10.not = icmp eq i32 %16, 0
  br i1 %cmp10.not, label %if.else.if.end18_crit_edge, label %do.end14

if.else.if.end18_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

do.end14:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %18, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.88, i32 noundef %inc) #9
  br label %if.end18

if.end18:                                         ; preds = %do.end14, %if.else.if.end18_crit_edge
  %arrayidx19 = getelementptr %struct.mt6358_priv, ptr %5, i32 0, i32 5, i32 5
  %19 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call2, ptr %arrayidx19, align 4
  %20 = zext i32 %call2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.155)
  switch i32 %call2, label %if.end18.sw.epilog_crit_edge [
    i32 2, label %if.then21
    i32 1, label %if.then25
  ]

if.end18.sw.epilog_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then21:                                        ; preds = %if.end18
  tail call fastcc void @hp_pull_down(ptr noundef %5, i1 noundef zeroext true) #6
  %regmap.i = getelementptr inbounds %struct.mt6358_priv, ptr %5, i32 0, i32 1
  %21 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 9232, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %23 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap.i, align 4
  %call2.i = tail call i32 @regmap_write(ptr noundef %24, i32 noundef 9228, i32 noundef 16384) #6
  %25 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap.i, align 4
  %call4.i = tail call i32 @regmap_write(ptr noundef %26, i32 noundef 9356, i32 noundef 3999) #6
  %27 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap.i, align 4
  %call6.i = tail call i32 @regmap_write(ptr noundef %28, i32 noundef 8764, i32 noundef 1) #6
  %29 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap.i, align 4
  %call8.i = tail call i32 @regmap_write(ptr noundef %30, i32 noundef 8766, i32 noundef 44) #6
  %31 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap.i, align 4
  %call10.i = tail call i32 @regmap_write(ptr noundef %32, i32 noundef 8762, i32 noundef 1) #6
  %33 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap.i, align 4
  %call12.i = tail call i32 @regmap_write(ptr noundef %34, i32 noundef 8770, i32 noundef 3) #6
  %35 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap.i, align 4
  %call14.i = tail call i32 @regmap_write(ptr noundef %36, i32 noundef 8768, i32 noundef 0) #6
  tail call void @usleep_range_state(i32 noundef 250, i32 noundef 270, i32 noundef 2) #6
  %37 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap.i, align 4
  %call.i1.i = tail call i32 @regmap_update_bits_base(ptr noundef %38, i32 noundef 9252, i32 noundef 4181, i32 noundef 4181, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %39 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap.i, align 4
  %call18.i = tail call i32 @regmap_write(ptr noundef %40, i32 noundef 9254, i32 noundef 1) #6
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 120, i32 noundef 2) #6
  %41 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regmap.i, align 4
  %call.i2.i = tail call i32 @regmap_write(ptr noundef %42, i32 noundef 9352, i32 noundef 0) #6
  %43 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regmap.i, align 4
  %call20.i = tail call i32 @regmap_write(ptr noundef %44, i32 noundef 9224, i32 noundef 12288) #6
  %45 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regmap.i, align 4
  %call22.i = tail call i32 @regmap_write(ptr noundef %46, i32 noundef 9248, i32 noundef 85) #6
  %47 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regmap.i, align 4
  %call24.i = tail call i32 @regmap_write(ptr noundef %48, i32 noundef 9246, i32 noundef 18688) #6
  %49 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regmap.i, align 4
  %call26.i = tail call i32 @regmap_write(ptr noundef %50, i32 noundef 9248, i32 noundef 85) #6
  %51 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regmap.i, align 4
  %call28.i = tail call i32 @regmap_write(ptr noundef %52, i32 noundef 9228, i32 noundef 16435) #6
  %53 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regmap.i, align 4
  %call30.i = tail call i32 @regmap_write(ptr noundef %54, i32 noundef 9226, i32 noundef 12) #6
  %55 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regmap.i, align 4
  %call32.i = tail call i32 @regmap_write(ptr noundef %56, i32 noundef 9226, i32 noundef 60) #6
  %57 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regmap.i, align 4
  %call34.i = tail call i32 @regmap_write(ptr noundef %58, i32 noundef 9242, i32 noundef 3072) #6
  %59 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regmap.i, align 4
  %call36.i = tail call i32 @regmap_write(ptr noundef %60, i32 noundef 9224, i32 noundef 12480) #6
  %61 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regmap.i, align 4
  %call38.i = tail call i32 @regmap_write(ptr noundef %62, i32 noundef 9224, i32 noundef 12528) #6
  %63 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regmap.i, align 4
  %call40.i = tail call i32 @regmap_write(ptr noundef %64, i32 noundef 9226, i32 noundef 252) #6
  %65 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regmap.i, align 4
  %call42.i = tail call i32 @regmap_write(ptr noundef %66, i32 noundef 9242, i32 noundef 3584) #6
  %67 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regmap.i, align 4
  %call44.i = tail call i32 @regmap_write(ptr noundef %68, i32 noundef 9242, i32 noundef 512) #6
  %69 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regmap.i, align 4
  %call46.i = tail call i32 @regmap_write(ptr noundef %70, i32 noundef 9244, i32 noundef 0) #6
  %71 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %regmap.i, align 4
  %call48.i = tail call i32 @regmap_write(ptr noundef %72, i32 noundef 9226, i32 noundef 255) #6
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then21
  %i.011.i.i = phi i32 [ 0, %if.then21 ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %73 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regmap.i, align 4
  %shl.i.i = shl i32 %i.011.i.i, 8
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %74, i32 noundef 9226, i32 noundef 1792, i32 noundef %shl.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %75 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %regmap.i, align 4
  %shl2.i.i = shl i32 %i.011.i.i, 11
  %call.i10.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %76, i32 noundef 9226, i32 noundef 14336, i32 noundef %shl2.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 150, i32 noundef 2) #6
  %inc.i.i = add nuw nsw i32 %i.011.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 8
  br i1 %exitcond.not.i.i, label %for.body.i.i.for.body.i10.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.body.i.i.for.body.i10.i_crit_edge:            ; preds = %for.body.i.i
  br label %for.body.i10.i

for.body.i10.i:                                   ; preds = %for.body.i10.i.for.body.i10.i_crit_edge, %for.body.i.i.for.body.i10.i_crit_edge
  %i.04.i.i = phi i32 [ %inc.i8.i, %for.body.i10.i.for.body.i10.i_crit_edge ], [ 0, %for.body.i.i.for.body.i10.i_crit_edge ]
  %77 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %regmap.i, align 4
  %shl.i6.i = shl i32 %i.04.i.i, 12
  %call.i.i7.i = tail call i32 @regmap_update_bits_base(ptr noundef %78, i32 noundef 9242, i32 noundef 61440, i32 noundef %shl.i6.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 150, i32 noundef 2) #6
  %inc.i8.i = add nuw nsw i32 %i.04.i.i, 1
  %exitcond.not.i9.i = icmp eq i32 %inc.i8.i, 16
  br i1 %exitcond.not.i9.i, label %mtk_hp_enable.exit, label %for.body.i10.i.for.body.i10.i_crit_edge

for.body.i10.i.for.body.i10.i_crit_edge:          ; preds = %for.body.i10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i10.i

mtk_hp_enable.exit:                               ; preds = %for.body.i10.i
  call void @__sanitizer_cov_trace_pc() #8
  %79 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %regmap.i, align 4
  %call50.i = tail call i32 @regmap_write(ptr noundef %80, i32 noundef 9226, i32 noundef 16335) #6
  %arrayidx.i = getelementptr %struct.mt6358_priv, ptr %5, i32 0, i32 4, i32 2
  %81 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx.i, align 4
  tail call fastcc void @headset_volume_ramp(ptr noundef %5, i32 noundef 18, i32 noundef %82) #6
  %83 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %regmap.i, align 4
  %call52.i = tail call i32 @regmap_write(ptr noundef %84, i32 noundef 9226, i32 noundef 16323) #6
  %85 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %regmap.i, align 4
  %call54.i = tail call i32 @regmap_write(ptr noundef %86, i32 noundef 9226, i32 noundef 16131) #6
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 120, i32 noundef 2) #6
  %87 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %regmap.i, align 4
  %call.i11.i = tail call i32 @regmap_update_bits_base(ptr noundef %88, i32 noundef 9250, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %89 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %regmap.i, align 4
  %call58.i = tail call i32 @regmap_write(ptr noundef %90, i32 noundef 9224, i32 noundef 12543) #6
  %91 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %regmap.i, align 4
  %call60.i = tail call i32 @regmap_write(ptr noundef %92, i32 noundef 9242, i32 noundef 61953) #6
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 120, i32 noundef 2) #6
  %93 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %regmap.i, align 4
  %call62.i = tail call i32 @regmap_write(ptr noundef %94, i32 noundef 9224, i32 noundef 13055) #6
  %95 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %regmap.i, align 4
  %call64.i = tail call i32 @regmap_write(ptr noundef %96, i32 noundef 9224, i32 noundef 15103) #6
  tail call fastcc void @hp_pull_down(ptr noundef %5, i1 noundef zeroext false) #6
  br label %sw.epilog

if.then25:                                        ; preds = %if.end18
  tail call fastcc void @hp_pull_down(ptr noundef %5, i1 noundef zeroext true) #6
  %regmap.i101 = getelementptr inbounds %struct.mt6358_priv, ptr %5, i32 0, i32 1
  %97 = ptrtoint ptr %regmap.i101 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %regmap.i101, align 4
  %call.i.i102 = tail call i32 @regmap_update_bits_base(ptr noundef %98, i32 noundef 9232, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %99 = ptrtoint ptr %regmap.i101 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %regmap.i101, align 4
  %call2.i103 = tail call i32 @regmap_write(ptr noundef %100, i32 noundef 9228, i32 noundef 16384) #6
  %101 = ptrtoint ptr %regmap.i101 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %regmap.i101, align 4
  %call4.i104 = tail call i32 @regmap_write(ptr noundef %102, i32 noundef 9356, i32 noundef 2322) #6
  %103 = ptrtoint ptr %regmap.i101 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %regmap.i101, align 4
  %call6.i105 = tail call i32 @regmap_write(ptr noundef %104, i32 noundef 8764, i32 noundef 1) #6
  %105 = ptrtoint ptr %regmap.i101 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %regmap.i101, align 4
  %call8.i106 = tail call i32 @regmap_write(ptr noundef %106, i32 noundef 8766, i32 noundef 44) #6
  %107 = ptrtoint ptr %regmap.i101 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %regmap.i101, align 4
  %call10.i107 = tail call i32 @regmap_write(ptr noundef %108, i32 noundef 8762, i32 noundef 1) #6
  %109 = ptrtoint ptr %regmap.i101 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %regmap.i101, align 4
  %call12.i108 = tail call i32 @regmap_write(ptr noundef %110, i32 noundef 8770, i32 noundef 3) #6
  %111 = ptrtoint ptr %regmap.i101 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %regmap.i101, align 4
  %call14.i109 = tail call i32 @regmap_write(ptr noundef %112, i32 noundef 8768, i32 noundef 0) #6
  tail call void @usleep_range_state(i32 noundef 250, i32 noundef 270, i32 noundef 2) #6
  %113 = ptrtoint ptr %regmap.i101 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %regmap.i101, align 4
  %call.i1.i110 = tail call i32 @regmap_update_bits_base(ptr noundef %114, i32 noundef 9252, i32 noundef 4181, i32 noundef 4181, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %115 = ptrtoint ptr %regmap.i101 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %regmap.i101, align 4
  %call18.i111 = tail call i32 @regmap_write(ptr noundef %116, i32 noundef 9254, i32 noundef 1) #6
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 120, i32 noundef 2) #6
  %117 = ptrtoint ptr %regmap.i101 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %regmap.i101, align 4
  %call.i2.i112 = tail call i32 @regmap_write(ptr noundef %118, i32 noundef 9352, i32 noundef 0) #6
  %119 = ptrtoint ptr %regmap.i101 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %regmap.i101, align 4
  %call20.i113 = tail call i32 @regmap_write(ptr noundef %120, i32 noundef 9224, i32 noundef 12288) #6
  %121 = ptrtoint ptr %regmap.i101 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %regmap.i101, align 4
  %call22.i114 = tail call i32 @regmap_write(ptr noundef %122, i32 noundef 9248, i32 noundef 85) #6
  %123 = ptrtoint ptr %regmap.i101 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %regmap.i101, align 4
  %call24.i115 = tail call i32 @regmap_write(ptr noundef %124, i32 noundef 9246, i32 noundef 18688) #6
  %125 = ptrtoint ptr %regmap.i101 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %regmap.i101, align 4
  %call26.i116 = tail call i32 @regmap_write(ptr noundef %126, i32 noundef 9248, i32 noundef 85) #6
  %127 = ptrtoint ptr %regmap.i101 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %regmap.i101, align 4
  %call28.i117 = tail call i32 @regmap_write(ptr noundef %128, i32 noundef 9228, i32 noundef 16435) #6
  tail call fastcc void @hp_pull_down(ptr noundef %5, i1 noundef zeroext false) #6
  %129 = ptrtoint ptr %regmap.i101 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %regmap.i101, align 4
  %call30.i118 = tail call i32 @regmap_write(ptr noundef %130, i32 noundef 9224, i32 noundef 12480) #6
  %131 = ptrtoint ptr %regmap.i101 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %regmap.i101, align 4
  %call32.i119 = tail call i32 @regmap_write(ptr noundef %132, i32 noundef 9224, i32 noundef 12528) #6
  %133 = ptrtoint ptr %regmap.i101 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %regmap.i101, align 4
  %call34.i120 = tail call i32 @regmap_write(ptr noundef %134, i32 noundef 9242, i32 noundef 512) #6
  %135 = ptrtoint ptr %regmap.i101 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %regmap.i101, align 4
  %call36.i121 = tail call i32 @regmap_write(ptr noundef %136, i32 noundef 9244, i32 noundef 0) #6
  %137 = ptrtoint ptr %regmap.i101 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %regmap.i101, align 4
  %call38.i122 = tail call i32 @regmap_write(ptr noundef %138, i32 noundef 9226, i32 noundef 3) #6
  br label %for.body.i.i130

for.body.i.i130:                                  ; preds = %for.body.i.i130.for.body.i.i130_crit_edge, %if.then25
  %i.011.i.i123 = phi i32 [ 0, %if.then25 ], [ %inc.i.i128, %for.body.i.i130.for.body.i.i130_crit_edge ]
  %139 = ptrtoint ptr %regmap.i101 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %regmap.i101, align 4
  %shl.i.i124 = shl i32 %i.011.i.i123, 8
  %call.i.i.i125 = tail call i32 @regmap_update_bits_base(ptr noundef %140, i32 noundef 9226, i32 noundef 1792, i32 noundef %shl.i.i124, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %141 = ptrtoint ptr %regmap.i101 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %regmap.i101, align 4
  %shl2.i.i126 = shl i32 %i.011.i.i123, 11
  %call.i10.i.i127 = tail call i32 @regmap_update_bits_base(ptr noundef %142, i32 noundef 9226, i32 noundef 14336, i32 noundef %shl2.i.i126, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 150, i32 noundef 2) #6
  %inc.i.i128 = add nuw nsw i32 %i.011.i.i123, 1
  %exitcond.not.i.i129 = icmp eq i32 %inc.i.i128, 8
  br i1 %exitcond.not.i.i129, label %mtk_hp_spk_enable.exit, label %for.body.i.i130.for.body.i.i130_crit_edge

for.body.i.i130.for.body.i.i130_crit_edge:        ; preds = %for.body.i.i130
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i130

mtk_hp_spk_enable.exit:                           ; preds = %for.body.i.i130
  call void @__sanitizer_cov_trace_pc() #8
  %143 = ptrtoint ptr %regmap.i101 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %regmap.i101, align 4
  %call40.i131 = tail call i32 @regmap_write(ptr noundef %144, i32 noundef 9354, i32 noundef 3999) #6
  %arrayidx.i132 = getelementptr %struct.mt6358_priv, ptr %5, i32 0, i32 4, i32 2
  %145 = ptrtoint ptr %arrayidx.i132 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %arrayidx.i132, align 4
  tail call fastcc void @headset_volume_ramp(ptr noundef %5, i32 noundef 18, i32 noundef %146) #6
  %147 = ptrtoint ptr %regmap.i101 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %regmap.i101, align 4
  %call42.i133 = tail call i32 @regmap_write(ptr noundef %148, i32 noundef 9238, i32 noundef 272) #6
  %149 = ptrtoint ptr %regmap.i101 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %regmap.i101, align 4
  %call44.i134 = tail call i32 @regmap_write(ptr noundef %150, i32 noundef 9238, i32 noundef 274) #6
  %151 = ptrtoint ptr %regmap.i101 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %regmap.i101, align 4
  %call46.i135 = tail call i32 @regmap_write(ptr noundef %152, i32 noundef 9238, i32 noundef 275) #6
  %153 = ptrtoint ptr %regmap.i101 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %regmap.i101, align 4
  %arrayidx49.i = getelementptr %struct.mt6358_priv, ptr %5, i32 0, i32 4, i32 4
  %155 = ptrtoint ptr %arrayidx49.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %arrayidx49.i, align 4
  %call.i4.i = tail call i32 @regmap_update_bits_base(ptr noundef %154, i32 noundef 9354, i32 noundef 31, i32 noundef %156, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %157 = ptrtoint ptr %regmap.i101 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %regmap.i101, align 4
  %arrayidx53.i = getelementptr %struct.mt6358_priv, ptr %5, i32 0, i32 4, i32 5
  %159 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %arrayidx53.i, align 4
  %shl54.i = shl i32 %160, 7
  %call.i5.i = tail call i32 @regmap_update_bits_base(ptr noundef %158, i32 noundef 9354, i32 noundef 3968, i32 noundef %shl54.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %161 = ptrtoint ptr %regmap.i101 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %regmap.i101, align 4
  %call.i6.i = tail call i32 @regmap_update_bits_base(ptr noundef %162, i32 noundef 9250, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %163 = ptrtoint ptr %regmap.i101 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %regmap.i101, align 4
  %call59.i = tail call i32 @regmap_write(ptr noundef %164, i32 noundef 9224, i32 noundef 12537) #6
  %165 = ptrtoint ptr %regmap.i101 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %regmap.i101, align 4
  %call61.i = tail call i32 @regmap_write(ptr noundef %166, i32 noundef 9242, i32 noundef 513) #6
  %167 = ptrtoint ptr %regmap.i101 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %regmap.i101, align 4
  %call63.i = tail call i32 @regmap_write(ptr noundef %168, i32 noundef 9238, i32 noundef 283) #6
  %169 = ptrtoint ptr %regmap.i101 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %regmap.i101, align 4
  %call65.i = tail call i32 @regmap_write(ptr noundef %170, i32 noundef 9224, i32 noundef 13817) #6
  br label %sw.epilog

sw.bb29:                                          ; preds = %entry
  %171 = ptrtoint ptr %dev_counter to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %dev_counter, align 4
  %dec = add i32 %172, -1
  store i32 %dec, ptr %dev_counter, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp34 = icmp sgt i32 %dec, 0
  br i1 %cmp34, label %sw.bb29.sw.epilog_crit_edge, label %if.else36

sw.bb29.sw.epilog_crit_edge:                      ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.else36:                                        ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp39 = icmp slt i32 %dec, 0
  br i1 %cmp39, label %do.end43, label %if.end50

do.end43:                                         ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #8
  %173 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %174, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.88, i32 noundef %dec) #9
  %175 = ptrtoint ptr %dev_counter to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 0, ptr %dev_counter, align 4
  br label %sw.epilog

if.end50:                                         ; preds = %if.else36
  %arrayidx52 = getelementptr %struct.mt6358_priv, ptr %5, i32 0, i32 5, i32 5
  %176 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %arrayidx52, align 4
  %178 = zext i32 %177 to i64
  call void @__sanitizer_cov_trace_switch(i64 %178, ptr @__sancov_gen_cov_switch_values.156)
  switch i32 %177, label %if.end50.if.end63_crit_edge [
    i32 2, label %if.then54
    i32 1, label %if.then60
  ]

if.end50.if.end63_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63

if.then54:                                        ; preds = %if.end50
  tail call fastcc void @hp_pull_down(ptr noundef %5, i1 noundef zeroext true) #6
  %regmap.i136 = getelementptr inbounds %struct.mt6358_priv, ptr %5, i32 0, i32 1
  %179 = ptrtoint ptr %regmap.i136 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %regmap.i136, align 4
  %call.i.i137 = tail call i32 @regmap_update_bits_base(ptr noundef %180, i32 noundef 9224, i32 noundef 3840, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %181 = ptrtoint ptr %regmap.i136 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %regmap.i136, align 4
  %call.i1.i138 = tail call i32 @regmap_update_bits_base(ptr noundef %182, i32 noundef 9242, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %183 = ptrtoint ptr %regmap.i136 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %regmap.i136, align 4
  %call.i2.i139 = tail call i32 @regmap_update_bits_base(ptr noundef %184, i32 noundef 9224, i32 noundef 15, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %185 = ptrtoint ptr %regmap.i136 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %regmap.i136, align 4
  %call.i3.i = tail call i32 @regmap_update_bits_base(ptr noundef %186, i32 noundef 9250, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %187 = ptrtoint ptr %regmap.i136 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %regmap.i136, align 4
  %call8.i140 = tail call i32 @regmap_write(ptr noundef %188, i32 noundef 9226, i32 noundef 16323) #6
  %189 = ptrtoint ptr %regmap.i136 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %regmap.i136, align 4
  %call10.i141 = tail call i32 @regmap_write(ptr noundef %190, i32 noundef 9226, i32 noundef 16335) #6
  %arrayidx.i142 = getelementptr %struct.mt6358_priv, ptr %5, i32 0, i32 4, i32 2
  %191 = ptrtoint ptr %arrayidx.i142 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %arrayidx.i142, align 4
  tail call fastcc void @headset_volume_ramp(ptr noundef %5, i32 noundef %192, i32 noundef 31) #6
  %193 = ptrtoint ptr %regmap.i136 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %regmap.i136, align 4
  %call12.i143 = tail call i32 @regmap_write(ptr noundef %194, i32 noundef 9226, i32 noundef 16383) #6
  br label %for.body.i.i149

for.body.i.i149:                                  ; preds = %for.body.i.i149.for.body.i.i149_crit_edge, %if.then54
  %i.04.i.i144 = phi i32 [ 0, %if.then54 ], [ %inc.i.i147, %for.body.i.i149.for.body.i.i149_crit_edge ]
  %195 = ptrtoint ptr %regmap.i136 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %regmap.i136, align 4
  %.neg.i = mul nsw i32 %i.04.i.i144, -4096
  %shl.i.i145 = add nsw i32 %.neg.i, 61440
  %call.i.i.i146 = tail call i32 @regmap_update_bits_base(ptr noundef %196, i32 noundef 9242, i32 noundef 61440, i32 noundef %shl.i.i145, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 150, i32 noundef 2) #6
  %inc.i.i147 = add nuw nsw i32 %i.04.i.i144, 1
  %exitcond.not.i.i148 = icmp eq i32 %inc.i.i147, 16
  br i1 %exitcond.not.i.i148, label %for.body.i.i149.for.body.i10.i157_crit_edge, label %for.body.i.i149.for.body.i.i149_crit_edge

for.body.i.i149.for.body.i.i149_crit_edge:        ; preds = %for.body.i.i149
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i149

for.body.i.i149.for.body.i10.i157_crit_edge:      ; preds = %for.body.i.i149
  br label %for.body.i10.i157

for.body.i10.i157:                                ; preds = %for.body.i10.i157.for.body.i10.i157_crit_edge, %for.body.i.i149.for.body.i10.i157_crit_edge
  %i.011.i.i150 = phi i32 [ %inc.i8.i155, %for.body.i10.i157.for.body.i10.i157_crit_edge ], [ 0, %for.body.i.i149.for.body.i10.i157_crit_edge ]
  %sub.i5.i = sub nuw nsw i32 7, %i.011.i.i150
  %197 = ptrtoint ptr %regmap.i136 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %regmap.i136, align 4
  %shl.i6.i151 = shl nuw nsw i32 %sub.i5.i, 8
  %call.i.i7.i152 = tail call i32 @regmap_update_bits_base(ptr noundef %198, i32 noundef 9226, i32 noundef 1792, i32 noundef %shl.i6.i151, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %199 = ptrtoint ptr %regmap.i136 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %regmap.i136, align 4
  %shl2.i.i153 = shl nuw nsw i32 %sub.i5.i, 11
  %call.i10.i.i154 = tail call i32 @regmap_update_bits_base(ptr noundef %200, i32 noundef 9226, i32 noundef 14336, i32 noundef %shl2.i.i153, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 150, i32 noundef 2) #6
  %inc.i8.i155 = add nuw nsw i32 %i.011.i.i150, 1
  %exitcond.not.i9.i156 = icmp eq i32 %inc.i8.i155, 8
  br i1 %exitcond.not.i9.i156, label %mtk_hp_disable.exit, label %for.body.i10.i157.for.body.i10.i157_crit_edge

for.body.i10.i157.for.body.i10.i157_crit_edge:    ; preds = %for.body.i10.i157
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i10.i157

mtk_hp_disable.exit:                              ; preds = %for.body.i10.i157
  call void @__sanitizer_cov_trace_pc() #8
  %201 = ptrtoint ptr %regmap.i136 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %regmap.i136, align 4
  %call.i11.i158 = tail call i32 @regmap_update_bits_base(ptr noundef %202, i32 noundef 9226, i32 noundef 3, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %203 = ptrtoint ptr %regmap.i136 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %regmap.i136, align 4
  %call16.i = tail call i32 @regmap_write(ptr noundef %204, i32 noundef 9242, i32 noundef 3584) #6
  %205 = ptrtoint ptr %regmap.i136 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %regmap.i136, align 4
  %call18.i159 = tail call i32 @regmap_write(ptr noundef %206, i32 noundef 9242, i32 noundef 3072) #6
  %207 = ptrtoint ptr %regmap.i136 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %regmap.i136, align 4
  %call.i12.i = tail call i32 @regmap_update_bits_base(ptr noundef %208, i32 noundef 9226, i32 noundef 192, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %209 = ptrtoint ptr %regmap.i136 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %regmap.i136, align 4
  %call.i13.i = tail call i32 @regmap_update_bits_base(ptr noundef %210, i32 noundef 9224, i32 noundef 48, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %211 = ptrtoint ptr %regmap.i136 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %regmap.i136, align 4
  %call.i14.i = tail call i32 @regmap_update_bits_base(ptr noundef %212, i32 noundef 9224, i32 noundef 192, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %213 = ptrtoint ptr %regmap.i136 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %regmap.i136, align 4
  %call26.i160 = tail call i32 @regmap_write(ptr noundef %214, i32 noundef 9242, i32 noundef 0) #6
  %215 = ptrtoint ptr %regmap.i136 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %regmap.i136, align 4
  %call.i15.i = tail call i32 @regmap_update_bits_base(ptr noundef %216, i32 noundef 9226, i32 noundef 48, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %217 = ptrtoint ptr %regmap.i136 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %regmap.i136, align 4
  %call.i16.i = tail call i32 @regmap_update_bits_base(ptr noundef %218, i32 noundef 9226, i32 noundef 12, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %219 = ptrtoint ptr %regmap.i136 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %regmap.i136, align 4
  %call.i17.i = tail call i32 @regmap_update_bits_base(ptr noundef %220, i32 noundef 9248, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %221 = ptrtoint ptr %regmap.i136 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %regmap.i136, align 4
  %call.i18.i = tail call i32 @regmap_update_bits_base(ptr noundef %222, i32 noundef 9254, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %223 = ptrtoint ptr %regmap.i136 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %regmap.i136, align 4
  %call.i19.i = tail call i32 @regmap_update_bits_base(ptr noundef %224, i32 noundef 9252, i32 noundef 4181, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %225 = ptrtoint ptr %regmap.i136 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %regmap.i136, align 4
  %call.i20.i = tail call i32 @regmap_update_bits_base(ptr noundef %226, i32 noundef 8768, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %227 = ptrtoint ptr %regmap.i136 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %regmap.i136, align 4
  %call.i21.i = tail call i32 @regmap_update_bits_base(ptr noundef %228, i32 noundef 9228, i32 noundef 16384, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end63.sink.split

if.then60:                                        ; preds = %if.end50
  %regmap.i161 = getelementptr inbounds %struct.mt6358_priv, ptr %5, i32 0, i32 1
  %229 = ptrtoint ptr %regmap.i161 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %regmap.i161, align 4
  %call.i.i162 = tail call i32 @regmap_update_bits_base(ptr noundef %230, i32 noundef 9224, i32 noundef 3840, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %231 = ptrtoint ptr %regmap.i161 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %regmap.i161, align 4
  %call.i1.i163 = tail call i32 @regmap_update_bits_base(ptr noundef %232, i32 noundef 9238, i32 noundef 12, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %233 = ptrtoint ptr %regmap.i161 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %regmap.i161, align 4
  %call.i2.i164 = tail call i32 @regmap_update_bits_base(ptr noundef %234, i32 noundef 9224, i32 noundef 15, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %235 = ptrtoint ptr %regmap.i161 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %regmap.i161, align 4
  %call.i3.i165 = tail call i32 @regmap_update_bits_base(ptr noundef %236, i32 noundef 9250, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %arrayidx.i166 = getelementptr %struct.mt6358_priv, ptr %5, i32 0, i32 4, i32 2
  %237 = ptrtoint ptr %arrayidx.i166 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %arrayidx.i166, align 4
  tail call fastcc void @headset_volume_ramp(ptr noundef %5, i32 noundef %238, i32 noundef 31) #6
  %239 = ptrtoint ptr %regmap.i161 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %regmap.i161, align 4
  %call.i4.i167 = tail call i32 @regmap_update_bits_base(ptr noundef %240, i32 noundef 9354, i32 noundef 3999, i32 noundef 3999, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %for.body.i.i175

for.body.i.i175:                                  ; preds = %for.body.i.i175.for.body.i.i175_crit_edge, %if.then60
  %i.011.i.i168 = phi i32 [ 0, %if.then60 ], [ %inc.i.i173, %for.body.i.i175.for.body.i.i175_crit_edge ]
  %sub.i.i = sub nuw nsw i32 7, %i.011.i.i168
  %241 = ptrtoint ptr %regmap.i161 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %regmap.i161, align 4
  %shl.i.i169 = shl nuw nsw i32 %sub.i.i, 8
  %call.i.i.i170 = tail call i32 @regmap_update_bits_base(ptr noundef %242, i32 noundef 9226, i32 noundef 1792, i32 noundef %shl.i.i169, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %243 = ptrtoint ptr %regmap.i161 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %regmap.i161, align 4
  %shl2.i.i171 = shl nuw nsw i32 %sub.i.i, 11
  %call.i10.i.i172 = tail call i32 @regmap_update_bits_base(ptr noundef %244, i32 noundef 9226, i32 noundef 14336, i32 noundef %shl2.i.i171, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 150, i32 noundef 2) #6
  %inc.i.i173 = add nuw nsw i32 %i.011.i.i168, 1
  %exitcond.not.i.i174 = icmp eq i32 %inc.i.i173, 8
  br i1 %exitcond.not.i.i174, label %hp_main_output_ramp.exit.i, label %for.body.i.i175.for.body.i.i175_crit_edge

for.body.i.i175.for.body.i.i175_crit_edge:        ; preds = %for.body.i.i175
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i175

hp_main_output_ramp.exit.i:                       ; preds = %for.body.i.i175
  %245 = ptrtoint ptr %regmap.i161 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %regmap.i161, align 4
  %call.i5.i176 = tail call i32 @regmap_update_bits_base(ptr noundef %246, i32 noundef 9226, i32 noundef 3, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %247 = ptrtoint ptr %regmap.i161 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %regmap.i161, align 4
  %call12.i177 = tail call i32 @regmap_write(ptr noundef %248, i32 noundef 9226, i32 noundef 16323) #6
  %249 = ptrtoint ptr %regmap.i161 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %regmap.i161, align 4
  %call14.i178 = tail call i32 @regmap_write(ptr noundef %250, i32 noundef 9226, i32 noundef 16335) #6
  %251 = ptrtoint ptr %regmap.i161 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %regmap.i161, align 4
  %call16.i179 = tail call i32 @regmap_write(ptr noundef %252, i32 noundef 9226, i32 noundef 16383) #6
  br label %for.body.i12.i

for.body.i12.i:                                   ; preds = %for.body.i12.i.for.body.i12.i_crit_edge, %hp_main_output_ramp.exit.i
  %i.04.i.i180 = phi i32 [ 0, %hp_main_output_ramp.exit.i ], [ %inc.i10.i, %for.body.i12.i.for.body.i12.i_crit_edge ]
  %253 = ptrtoint ptr %regmap.i161 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %regmap.i161, align 4
  %.neg.i181 = mul nsw i32 %i.04.i.i180, -4096
  %shl.i8.i = add nsw i32 %.neg.i181, 61440
  %call.i.i9.i = tail call i32 @regmap_update_bits_base(ptr noundef %254, i32 noundef 9242, i32 noundef 61440, i32 noundef %shl.i8.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 150, i32 noundef 2) #6
  %inc.i10.i = add nuw nsw i32 %i.04.i.i180, 1
  %exitcond.not.i11.i = icmp eq i32 %inc.i10.i, 16
  br i1 %exitcond.not.i11.i, label %mtk_hp_spk_disable.exit, label %for.body.i12.i.for.body.i12.i_crit_edge

for.body.i12.i.for.body.i12.i_crit_edge:          ; preds = %for.body.i12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i12.i

mtk_hp_spk_disable.exit:                          ; preds = %for.body.i12.i
  call void @__sanitizer_cov_trace_pc() #8
  %255 = ptrtoint ptr %regmap.i161 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %regmap.i161, align 4
  %call.i13.i182 = tail call i32 @regmap_update_bits_base(ptr noundef %256, i32 noundef 9224, i32 noundef 48, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %257 = ptrtoint ptr %regmap.i161 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %regmap.i161, align 4
  %call.i14.i183 = tail call i32 @regmap_update_bits_base(ptr noundef %258, i32 noundef 9238, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %259 = ptrtoint ptr %regmap.i161 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %regmap.i161, align 4
  %call.i15.i184 = tail call i32 @regmap_update_bits_base(ptr noundef %260, i32 noundef 9224, i32 noundef 192, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %261 = ptrtoint ptr %regmap.i161 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %regmap.i161, align 4
  %call.i16.i185 = tail call i32 @regmap_update_bits_base(ptr noundef %262, i32 noundef 9238, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %263 = ptrtoint ptr %regmap.i161 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %regmap.i161, align 4
  %call.i17.i186 = tail call i32 @regmap_update_bits_base(ptr noundef %264, i32 noundef 9242, i32 noundef 65280, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %265 = ptrtoint ptr %regmap.i161 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %regmap.i161, align 4
  %call.i18.i187 = tail call i32 @regmap_update_bits_base(ptr noundef %266, i32 noundef 9248, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %267 = ptrtoint ptr %regmap.i161 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %regmap.i161, align 4
  %call.i19.i188 = tail call i32 @regmap_update_bits_base(ptr noundef %268, i32 noundef 9254, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %269 = ptrtoint ptr %regmap.i161 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %regmap.i161, align 4
  %call.i20.i189 = tail call i32 @regmap_update_bits_base(ptr noundef %270, i32 noundef 9252, i32 noundef 4181, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %271 = ptrtoint ptr %regmap.i161 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %regmap.i161, align 4
  %call.i21.i190 = tail call i32 @regmap_update_bits_base(ptr noundef %272, i32 noundef 8768, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end63.sink.split

if.end63.sink.split:                              ; preds = %mtk_hp_spk_disable.exit, %mtk_hp_disable.exit
  %regmap.i161.sink = phi ptr [ %regmap.i161, %mtk_hp_spk_disable.exit ], [ %regmap.i136, %mtk_hp_disable.exit ]
  %273 = ptrtoint ptr %regmap.i161.sink to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %regmap.i161.sink, align 4
  %call.i22.i191 = tail call i32 @regmap_update_bits_base(ptr noundef %274, i32 noundef 9232, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  tail call fastcc void @hp_pull_down(ptr noundef %5, i1 noundef zeroext false) #6
  br label %if.end63

if.end63:                                         ; preds = %if.end63.sink.split, %if.end50.if.end63_crit_edge
  %275 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store4_noabort(i32 %275)
  store i32 %call2, ptr %arrayidx52, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end63, %do.end43, %sw.bb29.sw.epilog_crit_edge, %mtk_hp_spk_enable.exit, %mtk_hp_enable.exit, %if.end18.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt_rcv_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %kcontrols = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 20
  %8 = ptrtoint ptr %kcontrols to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %kcontrols, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %call2 = tail call i32 @dapm_kcontrol_get_value(ptr noundef %11) #6
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %7, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.109, i32 noundef %event, i32 noundef %call2) #9
  %12 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.157)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 4, label %sw.bb44
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %regmap = getelementptr inbounds %struct.mt6358_priv, ptr %5, i32 0, i32 1
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call3 = tail call i32 @regmap_write(ptr noundef %14, i32 noundef 9228, i32 noundef 16384) #6
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %call5 = tail call i32 @regmap_write(ptr noundef %16, i32 noundef 8764, i32 noundef 1) #6
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  %call7 = tail call i32 @regmap_write(ptr noundef %18, i32 noundef 8766, i32 noundef 44) #6
  %19 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap, align 4
  %call9 = tail call i32 @regmap_write(ptr noundef %20, i32 noundef 8762, i32 noundef 1) #6
  %21 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap, align 4
  %call11 = tail call i32 @regmap_write(ptr noundef %22, i32 noundef 8770, i32 noundef 3) #6
  %23 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap, align 4
  %call13 = tail call i32 @regmap_write(ptr noundef %24, i32 noundef 8768, i32 noundef 0) #6
  tail call void @usleep_range_state(i32 noundef 250, i32 noundef 270, i32 noundef 2) #6
  %25 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef 9252, i32 noundef 4181, i32 noundef 4181, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %27 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regmap, align 4
  %call17 = tail call i32 @regmap_write(ptr noundef %28, i32 noundef 9254, i32 noundef 1) #6
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 120, i32 noundef 2) #6
  %29 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regmap, align 4
  %call.i105 = tail call i32 @regmap_write(ptr noundef %30, i32 noundef 9352, i32 noundef 0) #6
  %31 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regmap, align 4
  %call19 = tail call i32 @regmap_write(ptr noundef %32, i32 noundef 9236, i32 noundef 16) #6
  %33 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap, align 4
  %call21 = tail call i32 @regmap_write(ptr noundef %34, i32 noundef 9248, i32 noundef 85) #6
  %35 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regmap, align 4
  %call23 = tail call i32 @regmap_write(ptr noundef %36, i32 noundef 9246, i32 noundef 18688) #6
  %37 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regmap, align 4
  %call25 = tail call i32 @regmap_write(ptr noundef %38, i32 noundef 9248, i32 noundef 85) #6
  %39 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap, align 4
  %call27 = tail call i32 @regmap_write(ptr noundef %40, i32 noundef 9236, i32 noundef 144) #6
  %41 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regmap, align 4
  %call29 = tail call i32 @regmap_write(ptr noundef %42, i32 noundef 9242, i32 noundef 0) #6
  %43 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regmap, align 4
  %call31 = tail call i32 @regmap_write(ptr noundef %44, i32 noundef 9244, i32 noundef 0) #6
  %45 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regmap, align 4
  %call33 = tail call i32 @regmap_write(ptr noundef %46, i32 noundef 9236, i32 noundef 146) #6
  %47 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regmap, align 4
  %call35 = tail call i32 @regmap_write(ptr noundef %48, i32 noundef 9236, i32 noundef 147) #6
  %49 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regmap, align 4
  %call.i106 = tail call i32 @regmap_update_bits_base(ptr noundef %50, i32 noundef 9250, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %51 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %regmap, align 4
  %call39 = tail call i32 @regmap_write(ptr noundef %52, i32 noundef 9224, i32 noundef 9) #6
  %53 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regmap, align 4
  %call41 = tail call i32 @regmap_write(ptr noundef %54, i32 noundef 9242, i32 noundef 1) #6
  %55 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %regmap, align 4
  %call43 = tail call i32 @regmap_write(ptr noundef %56, i32 noundef 9236, i32 noundef 155) #6
  br label %sw.epilog

sw.bb44:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %regmap45 = getelementptr inbounds %struct.mt6358_priv, ptr %5, i32 0, i32 1
  %57 = ptrtoint ptr %regmap45 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regmap45, align 4
  %call.i107 = tail call i32 @regmap_update_bits_base(ptr noundef %58, i32 noundef 9236, i32 noundef 12, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %59 = ptrtoint ptr %regmap45 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regmap45, align 4
  %call.i108 = tail call i32 @regmap_update_bits_base(ptr noundef %60, i32 noundef 9224, i32 noundef 15, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %61 = ptrtoint ptr %regmap45 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %regmap45, align 4
  %call.i109 = tail call i32 @regmap_update_bits_base(ptr noundef %62, i32 noundef 9250, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %63 = ptrtoint ptr %regmap45 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regmap45, align 4
  %call52 = tail call i32 @regmap_write(ptr noundef %64, i32 noundef 9358, i32 noundef 31) #6
  %65 = ptrtoint ptr %regmap45 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regmap45, align 4
  %call.i110 = tail call i32 @regmap_update_bits_base(ptr noundef %66, i32 noundef 9236, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %67 = ptrtoint ptr %regmap45 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regmap45, align 4
  %call.i111 = tail call i32 @regmap_update_bits_base(ptr noundef %68, i32 noundef 9236, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %69 = ptrtoint ptr %regmap45 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regmap45, align 4
  %call.i112 = tail call i32 @regmap_update_bits_base(ptr noundef %70, i32 noundef 9242, i32 noundef 65280, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %71 = ptrtoint ptr %regmap45 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %regmap45, align 4
  %call.i113 = tail call i32 @regmap_update_bits_base(ptr noundef %72, i32 noundef 9242, i32 noundef 65280, i32 noundef 512, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %73 = ptrtoint ptr %regmap45 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regmap45, align 4
  %call.i114 = tail call i32 @regmap_update_bits_base(ptr noundef %74, i32 noundef 9248, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %75 = ptrtoint ptr %regmap45 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %regmap45, align 4
  %call.i115 = tail call i32 @regmap_update_bits_base(ptr noundef %76, i32 noundef 9254, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %77 = ptrtoint ptr %regmap45 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %regmap45, align 4
  %call.i116 = tail call i32 @regmap_update_bits_base(ptr noundef %78, i32 noundef 9252, i32 noundef 4181, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %79 = ptrtoint ptr %regmap45 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %regmap45, align 4
  %call.i117 = tail call i32 @regmap_update_bits_base(ptr noundef %80, i32 noundef 8768, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb44, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt_sgen_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt_sgen_event.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt_sgen_event, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !414

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt_sgen_event.__UNIQUE_ID_ddebug295, ptr noundef %7, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.112, i32 noundef %event) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %8 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.158)
  switch i32 %event, label %do.end.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 8, label %sw.bb16
  ]

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %regmap = getelementptr inbounds %struct.mt6358_priv, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call5 = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 8858, i32 noundef 6) #6
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %call7 = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 8854, i32 noundef 52129) #6
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call9 = tail call i32 @regmap_write(ptr noundef %14, i32 noundef 8858, i32 noundef 3) #6
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %call11 = tail call i32 @regmap_write(ptr noundef %16, i32 noundef 8858, i32 noundef 11) #6
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 8896, i32 noundef 65343, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %19 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap, align 4
  %call.i30 = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 8898, i32 noundef 65535, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %sw.epilog

sw.bb16:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %regmap17 = getelementptr inbounds %struct.mt6358_priv, ptr %5, i32 0, i32 1
  %21 = ptrtoint ptr %regmap17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap17, align 4
  %call18 = tail call i32 @regmap_write(ptr noundef %22, i32 noundef 8858, i32 noundef 0) #6
  %23 = ptrtoint ptr %regmap17 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap17, align 4
  %call20 = tail call i32 @regmap_write(ptr noundef %24, i32 noundef 8854, i32 noundef 52128) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb16, %sw.bb, %do.end.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt_aif_out_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt_aif_out_event.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt_aif_out_event, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !414

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %ul_rate = getelementptr inbounds %struct.mt6358_priv, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %ul_rate to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ul_rate, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt_aif_out_event.__UNIQUE_ID_ddebug296, ptr noundef %7, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.113, i32 noundef %event, i32 noundef %9) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %10 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.159)
  switch i32 %event, label %do.end.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 8, label %sw.bb5
  ]

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %regmap.i = getelementptr inbounds %struct.mt6358_priv, ptr %5, i32 0, i32 1
  %11 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 226, i32 noundef 65535, i32 noundef 65535, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %13 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap.i, align 4
  %call.i7.i = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 224, i32 noundef 65535, i32 noundef 585, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %15 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap.i, align 4
  %call.i8.i = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 222, i32 noundef 65535, i32 noundef 585, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %sw.epilog

sw.bb5:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %regmap.i10 = getelementptr inbounds %struct.mt6358_priv, ptr %5, i32 0, i32 1
  %17 = ptrtoint ptr %regmap.i10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap.i10, align 4
  %call.i.i11 = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 226, i32 noundef 65535, i32 noundef 65535, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %19 = ptrtoint ptr %regmap.i10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap.i10, align 4
  %call.i7.i12 = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 222, i32 noundef 65535, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %21 = ptrtoint ptr %regmap.i10 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap.i10, align 4
  %call.i8.i13 = tail call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 136, i32 noundef 61440, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb, %do.end.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt_adc_supply_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt_adc_supply_event.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt_adc_supply_event, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !414

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt_adc_supply_event.__UNIQUE_ID_ddebug297, ptr noundef %7, ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.114, i32 noundef %event) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %8 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.160)
  switch i32 %event, label %do.end.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 8, label %sw.bb12
  ]

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %regmap = getelementptr inbounds %struct.mt6358_priv, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 9250, i32 noundef 32, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %call7 = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 9102, i32 noundef 0) #6
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap, align 4
  %call.i30 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 9252, i32 noundef 9472, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %call.i31 = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 9252, i32 noundef 9472, i32 noundef 9472, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %sw.epilog

sw.bb12:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %regmap13 = getelementptr inbounds %struct.mt6358_priv, ptr %5, i32 0, i32 1
  %17 = ptrtoint ptr %regmap13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap13, align 4
  %call.i32 = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 9252, i32 noundef 9472, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %19 = ptrtoint ptr %regmap13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regmap13, align 4
  %call.i33 = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 9252, i32 noundef 9472, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %21 = ptrtoint ptr %regmap13 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap13, align 4
  %call18 = tail call i32 @regmap_write(ptr noundef %22, i32 noundef 9102, i32 noundef 0) #6
  %23 = ptrtoint ptr %regmap13 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap13, align 4
  %call.i34 = tail call i32 @regmap_update_bits_base(ptr noundef %24, i32 noundef 9250, i32 noundef 32, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb12, %sw.bb, %do.end.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt_mic_type_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %kcontrols = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 20
  %6 = ptrtoint ptr %kcontrols to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %kcontrols, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %call2 = tail call i32 @dapm_kcontrol_get_value(ptr noundef %9) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt_mic_type_event.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt_mic_type_event, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !414

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt_mic_type_event.__UNIQUE_ID_ddebug298, ptr noundef %11, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.117, i32 noundef %event, i32 noundef %call2) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %12 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.161)
  switch i32 %event, label %do.end.sw.epilog20_crit_edge [
    i32 64, label %sw.bb
    i32 1, label %sw.bb7
    i32 8, label %sw.bb11
  ]

do.end.sw.epilog20_crit_edge:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog20

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx6 = getelementptr %struct.mt6358_priv, ptr %5, i32 0, i32 5, i32 4
  %13 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call2, ptr %arrayidx6, align 4
  br label %sw.epilog20

sw.bb7:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call2)
  %cond21 = icmp eq i32 %call2, 2
  br i1 %cond21, label %sw.bb8, label %sw.default

sw.bb8:                                           ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %15, ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.119) #9
  %regmap.i = getelementptr inbounds %struct.mt6358_priv, ptr %5, i32 0, i32 1
  %16 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap.i, align 4
  %call.i = tail call i32 @regmap_write(ptr noundef %17, i32 noundef 9114, i32 noundef 33) #6
  %18 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %19, i32 noundef 9116, i32 noundef 4096, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %20 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap.i, align 4
  %call4.i = tail call i32 @regmap_write(ptr noundef %21, i32 noundef 9112, i32 noundef 5) #6
  tail call fastcc void @mt6358_mtkaif_tx_enable(ptr noundef %5) #6
  %dmic_one_wire_mode.i = getelementptr inbounds %struct.mt6358_priv, ptr %5, i32 0, i32 10
  %22 = ptrtoint ptr %dmic_one_wire_mode.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dmic_one_wire_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i = icmp eq i32 %23, 0
  %24 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap.i, align 4
  %..i = select i1 %tobool.not.i, i32 128, i32 1024
  %call9.i = tail call i32 @regmap_write(ptr noundef %25, i32 noundef 8844, i32 noundef %..i) #6
  %26 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap.i, align 4
  %call11.i = tail call i32 @regmap_write(ptr noundef %27, i32 noundef 8846, i32 noundef 3) #6
  tail call void @msleep(i32 noundef 100) #6
  br label %sw.epilog

sw.default:                                       ; preds = %sw.bb7
  %arrayidx.i = getelementptr %struct.mt6358_priv, ptr %5, i32 0, i32 5, i32 4
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i, align 4
  %arrayidx2.i = getelementptr %struct.mt6358_priv, ptr %5, i32 0, i32 5, i32 2
  %30 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx2.i, align 4
  %arrayidx4.i = getelementptr %struct.mt6358_priv, ptr %5, i32 0, i32 5, i32 3
  %32 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx4.i, align 4
  %34 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %35, ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.121, i32 noundef %29, i32 noundef %31, i32 noundef %33) #9
  %.off.i = add i32 %29, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 3
  br i1 %switch.i, label %if.then.i, label %sw.default.if.end.i_crit_edge

sw.default.if.end.i_crit_edge:                    ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #8
  %regmap.i35 = getelementptr inbounds %struct.mt6358_priv, ptr %5, i32 0, i32 1
  %36 = ptrtoint ptr %regmap.i35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap.i35, align 4
  %call.i36 = tail call i32 @regmap_write(ptr noundef %37, i32 noundef 8902, i32 noundef 8290) #6
  %38 = ptrtoint ptr %regmap.i35 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap.i35, align 4
  %call9.i37 = tail call i32 @regmap_write(ptr noundef %39, i32 noundef 8902, i32 noundef 8290) #6
  %40 = ptrtoint ptr %regmap.i35 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap.i35, align 4
  %call11.i38 = tail call i32 @regmap_write(ptr noundef %41, i32 noundef 8902, i32 noundef 8288) #6
  %42 = ptrtoint ptr %regmap.i35 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regmap.i35, align 4
  %call13.i = tail call i32 @regmap_write(ptr noundef %43, i32 noundef 8902, i32 noundef 8289) #6
  %44 = ptrtoint ptr %regmap.i35 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regmap.i35, align 4
  %call15.i = tail call i32 @regmap_write(ptr noundef %45, i32 noundef 8904, i32 noundef 256) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sw.default.if.end.i_crit_edge
  %46 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.162)
  switch i32 %31, label %lor.lhs.false19.i [
    i32 1, label %if.end.i.if.then23.i_crit_edge
    i32 3, label %if.end.i.if.then23.i_crit_edge59
  ]

if.end.i.if.then23.i_crit_edge59:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then23.i

if.end.i.if.then23.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then23.i

lor.lhs.false19.i:                                ; preds = %if.end.i
  %47 = zext i32 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.163)
  switch i32 %33, label %lor.lhs.false19.i.if.end33.i_crit_edge [
    i32 1, label %lor.lhs.false19.i.if.then23.i_crit_edge
    i32 3, label %lor.lhs.false19.i.if.then23.i_crit_edge60
  ]

lor.lhs.false19.i.if.then23.i_crit_edge60:        ; preds = %lor.lhs.false19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then23.i

lor.lhs.false19.i.if.then23.i_crit_edge:          ; preds = %lor.lhs.false19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then23.i

lor.lhs.false19.i.if.end33.i_crit_edge:           ; preds = %lor.lhs.false19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33.i

if.then23.i:                                      ; preds = %lor.lhs.false19.i.if.then23.i_crit_edge, %lor.lhs.false19.i.if.then23.i_crit_edge60, %if.end.i.if.then23.i_crit_edge, %if.end.i.if.then23.i_crit_edge59
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %29)
  %switch.selectcmp.i = icmp eq i32 %29, 5
  %switch.select.i = select i1 %switch.selectcmp.i, i32 4352, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %29)
  %switch.selectcmp45.i = icmp eq i32 %29, 4
  %switch.select46.i = select i1 %switch.selectcmp45.i, i32 30464, i32 %switch.select.i
  %regmap29.i = getelementptr inbounds %struct.mt6358_priv, ptr %5, i32 0, i32 1
  %48 = ptrtoint ptr %regmap29.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regmap29.i, align 4
  %call.i20.i = tail call i32 @regmap_update_bits_base(ptr noundef %49, i32 noundef 9114, i32 noundef 65280, i32 noundef %switch.select46.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %50 = ptrtoint ptr %regmap29.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regmap29.i, align 4
  %call.i21.i = tail call i32 @regmap_update_bits_base(ptr noundef %51, i32 noundef 9114, i32 noundef 255, i32 noundef 33, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end33.i

if.end33.i:                                       ; preds = %if.then23.i, %lor.lhs.false19.i.if.end33.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %31)
  %cmp34.i = icmp eq i32 %31, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %33)
  %cmp36.i = icmp eq i32 %33, 2
  %or.cond2.i = or i1 %cmp34.i, %cmp36.i
  br i1 %or.cond2.i, label %if.then37.i, label %if.end33.i.if.end45.i_crit_edge

if.end33.i.if.end45.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45.i

if.then37.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %29)
  %cmp38.i = icmp eq i32 %29, 5
  %regmap40.i = getelementptr inbounds %struct.mt6358_priv, ptr %5, i32 0, i32 1
  %52 = ptrtoint ptr %regmap40.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regmap40.i, align 4
  %..i39 = select i1 %cmp38.i, i32 353, i32 97
  %call41.i = tail call i32 @regmap_write(ptr noundef %53, i32 noundef 9116, i32 noundef %..i39) #6
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.then37.i, %if.end33.i.if.end45.i_crit_edge
  %regmap52.i = getelementptr inbounds %struct.mt6358_priv, ptr %5, i32 0, i32 1
  %.47.i = select i1 %switch.i, i32 4, i32 0
  %54 = ptrtoint ptr %regmap52.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regmap52.i, align 4
  %call.i24.i = tail call i32 @regmap_update_bits_base(ptr noundef %55, i32 noundef 9096, i32 noundef 63743, i32 noundef %.47.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %56 = ptrtoint ptr %regmap52.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %regmap52.i, align 4
  %call.i25.i = tail call i32 @regmap_update_bits_base(ptr noundef %57, i32 noundef 9098, i32 noundef 63743, i32 noundef %.47.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp62.not.i = icmp eq i32 %31, 0
  br i1 %cmp62.not.i, label %if.end45.i.if.end81.i_crit_edge, label %if.then63.i

if.end45.i.if.end81.i_crit_edge:                  ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end81.i

if.then63.i:                                      ; preds = %if.end45.i
  %58 = ptrtoint ptr %regmap52.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %regmap52.i, align 4
  %shl.i = shl i32 %31, 6
  %call.i26.i = tail call i32 @regmap_update_bits_base(ptr noundef %59, i32 noundef 9096, i32 noundef 192, i32 noundef %shl.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %60 = ptrtoint ptr %regmap52.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regmap52.i, align 4
  %call.i27.i = tail call i32 @regmap_update_bits_base(ptr noundef %61, i32 noundef 9096, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br i1 %switch.i, label %if.then73.i, label %if.then63.i.if.end76.i_crit_edge

if.then63.i.if.end76.i_crit_edge:                 ; preds = %if.then63.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end76.i

if.then73.i:                                      ; preds = %if.then63.i
  call void @__sanitizer_cov_trace_pc() #8
  %62 = ptrtoint ptr %regmap52.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regmap52.i, align 4
  %call.i28.i = tail call i32 @regmap_update_bits_base(ptr noundef %63, i32 noundef 9096, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end76.i

if.end76.i:                                       ; preds = %if.then73.i, %if.then63.i.if.end76.i_crit_edge
  %64 = ptrtoint ptr %regmap52.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %regmap52.i, align 4
  %call.i29.i = tail call i32 @regmap_update_bits_base(ptr noundef %65, i32 noundef 9096, i32 noundef 24576, i32 noundef 16384, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %66 = ptrtoint ptr %regmap52.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regmap52.i, align 4
  %call.i30.i = tail call i32 @regmap_update_bits_base(ptr noundef %67, i32 noundef 9096, i32 noundef 4096, i32 noundef 4096, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end81.i

if.end81.i:                                       ; preds = %if.end76.i, %if.end45.i.if.end81.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp82.not.i = icmp eq i32 %33, 0
  br i1 %cmp82.not.i, label %if.end81.i.if.end102.i_crit_edge, label %if.then83.i

if.end81.i.if.end102.i_crit_edge:                 ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end102.i

if.then83.i:                                      ; preds = %if.end81.i
  %68 = ptrtoint ptr %regmap52.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regmap52.i, align 4
  %shl85.i = shl i32 %33, 6
  %call.i31.i = tail call i32 @regmap_update_bits_base(ptr noundef %69, i32 noundef 9098, i32 noundef 192, i32 noundef %shl85.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %70 = ptrtoint ptr %regmap52.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regmap52.i, align 4
  %call.i32.i = tail call i32 @regmap_update_bits_base(ptr noundef %71, i32 noundef 9098, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br i1 %switch.i, label %if.then94.i, label %if.then83.i.if.end97.i_crit_edge

if.then83.i.if.end97.i_crit_edge:                 ; preds = %if.then83.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end97.i

if.then94.i:                                      ; preds = %if.then83.i
  call void @__sanitizer_cov_trace_pc() #8
  %72 = ptrtoint ptr %regmap52.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regmap52.i, align 4
  %call.i33.i = tail call i32 @regmap_update_bits_base(ptr noundef %73, i32 noundef 9098, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end97.i

if.end97.i:                                       ; preds = %if.then94.i, %if.then83.i.if.end97.i_crit_edge
  %74 = ptrtoint ptr %regmap52.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regmap52.i, align 4
  %call.i34.i = tail call i32 @regmap_update_bits_base(ptr noundef %75, i32 noundef 9098, i32 noundef 24576, i32 noundef 16384, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %76 = ptrtoint ptr %regmap52.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regmap52.i, align 4
  %call.i35.i = tail call i32 @regmap_update_bits_base(ptr noundef %77, i32 noundef 9098, i32 noundef 4096, i32 noundef 4096, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end102.i

if.end102.i:                                      ; preds = %if.end97.i, %if.end81.i.if.end102.i_crit_edge
  br i1 %switch.i, label %if.then108.i, label %if.end102.i.mt6358_amic_enable.exit_crit_edge

if.end102.i.mt6358_amic_enable.exit_crit_edge:    ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mt6358_amic_enable.exit

if.then108.i:                                     ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 150, i32 noundef 2) #6
  %78 = ptrtoint ptr %regmap52.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %regmap52.i, align 4
  %call.i36.i = tail call i32 @regmap_update_bits_base(ptr noundef %79, i32 noundef 9096, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %80 = ptrtoint ptr %regmap52.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %regmap52.i, align 4
  %call.i37.i = tail call i32 @regmap_update_bits_base(ptr noundef %81, i32 noundef 9098, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %82 = ptrtoint ptr %regmap52.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %regmap52.i, align 4
  %call.i38.i = tail call i32 @regmap_update_bits_base(ptr noundef %83, i32 noundef 9102, i32 noundef 4096, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %mt6358_amic_enable.exit

mt6358_amic_enable.exit:                          ; preds = %if.then108.i, %if.end102.i.mt6358_amic_enable.exit_crit_edge
  tail call fastcc void @mt6358_mtkaif_tx_enable(ptr noundef %5) #6
  %84 = ptrtoint ptr %regmap52.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regmap52.i, align 4
  %call118.i = tail call i32 @regmap_write(ptr noundef %85, i32 noundef 8844, i32 noundef 0) #6
  %86 = ptrtoint ptr %regmap52.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %regmap52.i, align 4
  %call120.i = tail call i32 @regmap_write(ptr noundef %87, i32 noundef 8846, i32 noundef 1) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %mt6358_amic_enable.exit, %sw.bb8
  %arrayidx.i40 = getelementptr %struct.mt6358_priv, ptr %5, i32 0, i32 4, i32 6
  %88 = ptrtoint ptr %arrayidx.i40 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx.i40, align 4
  %arrayidx2.i41 = getelementptr %struct.mt6358_priv, ptr %5, i32 0, i32 4, i32 7
  %90 = ptrtoint ptr %arrayidx2.i41 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx2.i41, align 4
  %regmap.i42 = getelementptr inbounds %struct.mt6358_priv, ptr %5, i32 0, i32 1
  %92 = ptrtoint ptr %regmap.i42 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %regmap.i42, align 4
  %shl.i43 = shl i32 %89, 8
  %call.i.i44 = tail call i32 @regmap_update_bits_base(ptr noundef %93, i32 noundef 9096, i32 noundef 1792, i32 noundef %shl.i43, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %94 = ptrtoint ptr %regmap.i42 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %regmap.i42, align 4
  %shl4.i = shl i32 %91, 8
  %call.i9.i = tail call i32 @regmap_update_bits_base(ptr noundef %95, i32 noundef 9098, i32 noundef 1792, i32 noundef %shl4.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %sw.epilog20

sw.bb11:                                          ; preds = %do.end
  %arrayidx13 = getelementptr %struct.mt6358_priv, ptr %5, i32 0, i32 5, i32 4
  %96 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %arrayidx13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %97)
  %cond = icmp eq i32 %97, 2
  br i1 %cond, label %sw.bb14, label %sw.default15

sw.bb14:                                          ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #8
  %98 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %99, ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.122) #9
  %regmap.i45 = getelementptr inbounds %struct.mt6358_priv, ptr %5, i32 0, i32 1
  %100 = ptrtoint ptr %regmap.i45 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %regmap.i45, align 4
  %call.i.i46 = tail call i32 @regmap_update_bits_base(ptr noundef %101, i32 noundef 8846, i32 noundef 3, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %102 = ptrtoint ptr %regmap.i45 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %regmap.i45, align 4
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %103, i32 noundef 8908, i32 noundef 65280, i32 noundef 12288, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %104 = ptrtoint ptr %regmap.i45 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %regmap.i45, align 4
  %call3.i = tail call i32 @regmap_write(ptr noundef %105, i32 noundef 9112, i32 noundef 0) #6
  %106 = ptrtoint ptr %regmap.i45 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %regmap.i45, align 4
  %call5.i = tail call i32 @regmap_write(ptr noundef %107, i32 noundef 9114, i32 noundef 1) #6
  %108 = ptrtoint ptr %regmap.i45 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %regmap.i45, align 4
  %call.i16.i = tail call i32 @regmap_update_bits_base(ptr noundef %109, i32 noundef 9116, i32 noundef 4096, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %110 = ptrtoint ptr %regmap.i45 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %regmap.i45, align 4
  %call9.i47 = tail call i32 @regmap_write(ptr noundef %111, i32 noundef 9114, i32 noundef 0) #6
  br label %sw.epilog16

sw.default15:                                     ; preds = %sw.bb11
  %arrayidx2.i49 = getelementptr %struct.mt6358_priv, ptr %5, i32 0, i32 5, i32 2
  %112 = ptrtoint ptr %arrayidx2.i49 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %arrayidx2.i49, align 4
  %arrayidx4.i50 = getelementptr %struct.mt6358_priv, ptr %5, i32 0, i32 5, i32 3
  %114 = ptrtoint ptr %arrayidx4.i50 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx4.i50, align 4
  %116 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %117, ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.123, i32 noundef %97, i32 noundef %113, i32 noundef %115) #9
  %regmap.i51 = getelementptr inbounds %struct.mt6358_priv, ptr %5, i32 0, i32 1
  %118 = ptrtoint ptr %regmap.i51 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %regmap.i51, align 4
  %call.i.i52 = tail call i32 @regmap_update_bits_base(ptr noundef %119, i32 noundef 8846, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %120 = ptrtoint ptr %regmap.i51 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %regmap.i51, align 4
  %call.i.i.i53 = tail call i32 @regmap_update_bits_base(ptr noundef %121, i32 noundef 8908, i32 noundef 65280, i32 noundef 12288, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %122 = ptrtoint ptr %regmap.i51 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %regmap.i51, align 4
  %call.i59.i = tail call i32 @regmap_update_bits_base(ptr noundef %123, i32 noundef 9096, i32 noundef 61440, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %124 = ptrtoint ptr %regmap.i51 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %regmap.i51, align 4
  %call.i60.i = tail call i32 @regmap_update_bits_base(ptr noundef %125, i32 noundef 9096, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %126 = ptrtoint ptr %regmap.i51 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %regmap.i51, align 4
  %call.i61.i = tail call i32 @regmap_update_bits_base(ptr noundef %127, i32 noundef 9096, i32 noundef 65531, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %128 = ptrtoint ptr %regmap.i51 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %regmap.i51, align 4
  %call.i62.i = tail call i32 @regmap_update_bits_base(ptr noundef %129, i32 noundef 9096, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %130 = ptrtoint ptr %regmap.i51 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %regmap.i51, align 4
  %call.i63.i = tail call i32 @regmap_update_bits_base(ptr noundef %131, i32 noundef 9098, i32 noundef 61440, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %132 = ptrtoint ptr %regmap.i51 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %regmap.i51, align 4
  %call.i64.i = tail call i32 @regmap_update_bits_base(ptr noundef %133, i32 noundef 9098, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %134 = ptrtoint ptr %regmap.i51 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %regmap.i51, align 4
  %call.i65.i = tail call i32 @regmap_update_bits_base(ptr noundef %135, i32 noundef 9098, i32 noundef 4091, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %136 = ptrtoint ptr %regmap.i51 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %regmap.i51, align 4
  %call.i66.i = tail call i32 @regmap_update_bits_base(ptr noundef %137, i32 noundef 9098, i32 noundef 4, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %138 = ptrtoint ptr %regmap.i51 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %regmap.i51, align 4
  %call23.i = tail call i32 @regmap_write(ptr noundef %139, i32 noundef 9114, i32 noundef 0) #6
  %140 = ptrtoint ptr %regmap.i51 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %regmap.i51, align 4
  %call.i67.i = tail call i32 @regmap_update_bits_base(ptr noundef %141, i32 noundef 9116, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %.off.i54 = add i32 %97, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off.i54)
  %switch.i55 = icmp ult i32 %.off.i54, 3
  br i1 %switch.i55, label %if.then.i56, label %sw.default15.sw.epilog16_crit_edge

sw.default15.sw.epilog16_crit_edge:               ; preds = %sw.default15
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog16

if.then.i56:                                      ; preds = %sw.default15
  call void @__sanitizer_cov_trace_pc() #8
  %142 = ptrtoint ptr %regmap.i51 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %regmap.i51, align 4
  %call30.i = tail call i32 @regmap_write(ptr noundef %143, i32 noundef 8902, i32 noundef 8288) #6
  %144 = ptrtoint ptr %regmap.i51 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %regmap.i51, align 4
  %call32.i = tail call i32 @regmap_write(ptr noundef %145, i32 noundef 8902, i32 noundef 8290) #6
  %146 = ptrtoint ptr %regmap.i51 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %regmap.i51, align 4
  %call34.i = tail call i32 @regmap_write(ptr noundef %147, i32 noundef 8902, i32 noundef 8290) #6
  %148 = ptrtoint ptr %regmap.i51 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %regmap.i51, align 4
  %call36.i = tail call i32 @regmap_write(ptr noundef %149, i32 noundef 8902, i32 noundef 8290) #6
  br label %sw.epilog16

sw.epilog16:                                      ; preds = %if.then.i56, %sw.default15.sw.epilog16_crit_edge, %sw.bb14
  %150 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %call2, ptr %arrayidx13, align 4
  br label %sw.epilog20

sw.epilog20:                                      ; preds = %sw.epilog16, %sw.epilog, %sw.bb, %do.end.sw.epilog20_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt_adc_l_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %kcontrols = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 20
  %6 = ptrtoint ptr %kcontrols to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %kcontrols, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %call2 = tail call i32 @dapm_kcontrol_get_value(ptr noundef %9) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt_adc_l_event.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt_adc_l_event, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !414

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt_adc_l_event.__UNIQUE_ID_ddebug299, ptr noundef %11, ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.131, i32 noundef %event, i32 noundef %call2) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %mux_select = getelementptr inbounds %struct.mt6358_priv, ptr %5, i32 0, i32 5
  %12 = ptrtoint ptr %mux_select to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call2, ptr %mux_select, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt_adc_r_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %kcontrols = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 20
  %6 = ptrtoint ptr %kcontrols to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %kcontrols, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %call2 = tail call i32 @dapm_kcontrol_get_value(ptr noundef %9) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt_adc_r_event.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt_adc_r_event, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !414

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt_adc_r_event.__UNIQUE_ID_ddebug300, ptr noundef %11, ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.136, i32 noundef %event, i32 noundef %call2) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %arrayidx6 = getelementptr %struct.mt6358_priv, ptr %5, i32 0, i32 5, i32 1
  %12 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call2, ptr %arrayidx6, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt_pga_left_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %kcontrols = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 20
  %6 = ptrtoint ptr %kcontrols to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %kcontrols, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %call2 = tail call i32 @dapm_kcontrol_get_value(ptr noundef %9) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt_pga_left_event.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt_pga_left_event, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !414

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt_pga_left_event.__UNIQUE_ID_ddebug301, ptr noundef %11, ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.139, i32 noundef %event, i32 noundef %call2) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %arrayidx6 = getelementptr %struct.mt6358_priv, ptr %5, i32 0, i32 5, i32 2
  %12 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call2, ptr %arrayidx6, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt_pga_right_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %kcontrols = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 20
  %6 = ptrtoint ptr %kcontrols to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %kcontrols, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %call2 = tail call i32 @dapm_kcontrol_get_value(ptr noundef %9) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mt_pga_right_event.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mt_pga_right_event, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !414

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mt_pga_right_event.__UNIQUE_ID_ddebug302, ptr noundef %11, ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.142, i32 noundef %event, i32 noundef %call2) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %arrayidx6 = getelementptr %struct.mt6358_priv, ptr %5, i32 0, i32 5, i32 3
  %12 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call2, ptr %arrayidx6, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_enum_double(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_enum_double(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dapm_kcontrol_get_value(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hp_pull_down(ptr nocapture noundef readonly %priv, i1 noundef zeroext %enable) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.mt6358_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  br i1 %enable, label %for.cond.preheader, label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i14 = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 9232, i32 noundef 7, i32 noundef 6, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 9232, i32 noundef 7, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  tail call void @usleep_range_state(i32 noundef 600, i32 noundef 700, i32 noundef 2) #6
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call.i.1 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 9232, i32 noundef 7, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end

if.end:                                           ; preds = %for.cond.preheader, %for.cond1.preheader
  %.sink23 = phi i32 [ 5, %for.cond1.preheader ], [ 2, %for.cond.preheader ]
  %.sink22 = phi i32 [ 4, %for.cond1.preheader ], [ 3, %for.cond.preheader ]
  %.sink21 = phi i32 [ 3, %for.cond1.preheader ], [ 4, %for.cond.preheader ]
  %.sink20 = phi i32 [ 2, %for.cond1.preheader ], [ 5, %for.cond.preheader ]
  %.sink19 = phi i32 [ 1, %for.cond1.preheader ], [ 6, %for.cond.preheader ]
  tail call void @usleep_range_state(i32 noundef 600, i32 noundef 700, i32 noundef 2) #6
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call.i14.1 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 9232, i32 noundef 7, i32 noundef %.sink23, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  tail call void @usleep_range_state(i32 noundef 600, i32 noundef 700, i32 noundef 2) #6
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call.i14.2 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 9232, i32 noundef 7, i32 noundef %.sink22, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  tail call void @usleep_range_state(i32 noundef 600, i32 noundef 700, i32 noundef 2) #6
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call.i14.3 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 9232, i32 noundef 7, i32 noundef %.sink21, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  tail call void @usleep_range_state(i32 noundef 600, i32 noundef 700, i32 noundef 2) #6
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call.i14.4 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 9232, i32 noundef 7, i32 noundef %.sink20, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  tail call void @usleep_range_state(i32 noundef 600, i32 noundef 700, i32 noundef 2) #6
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %call.i14.5 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 9232, i32 noundef 7, i32 noundef %.sink19, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  tail call void @usleep_range_state(i32 noundef 600, i32 noundef 700, i32 noundef 2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @headset_volume_ramp(ptr nocapture noundef readonly %priv, i32 noundef %from, i32 noundef %to) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %from)
  %0 = icmp ult i32 %from, 19
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %from)
  %cmp2.i = icmp eq i32 %from, 31
  %spec.select.i = or i1 %0, %cmp2.i
  br i1 %spec.select.i, label %lor.lhs.false, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %to)
  %1 = icmp ult i32 %to, 19
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %to)
  %cmp2.i40 = icmp eq i32 %to, 31
  %spec.select.i41 = or i1 %1, %cmp2.i40
  br i1 %spec.select.i41, label %lor.lhs.false.do.end4_crit_edge, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.lhs.false.do.end4_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end4

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %entry.do.end_crit_edge
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.96, i32 noundef %from, i32 noundef %to) #9
  br label %do.end4

do.end4:                                          ; preds = %do.end, %lor.lhs.false.do.end4_crit_edge
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.96, i32 noundef %from, i32 noundef %to) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %to, i32 %from)
  %cmp = icmp sgt i32 %to, %from
  %sub = sub i32 %to, %from
  %sub7 = sub i32 %from, %to
  %offset.0 = select i1 %cmp, i32 %sub, i32 %sub7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %offset.0)
  %cmp944 = icmp sgt i32 %offset.0, -1
  br i1 %cmp944, label %while.body.lr.ph, label %do.end4.while.end_crit_edge

do.end4.while.end_crit_edge:                      ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %do.end4
  %regmap = getelementptr inbounds %struct.mt6358_priv, ptr %priv, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end18.while.body_crit_edge, %while.body.lr.ph
  %count.046 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %if.end18.while.body_crit_edge ]
  %6 = sub nsw i32 0, %count.046
  %reg_idx.0.p = select i1 %cmp, i32 %count.046, i32 %6
  %reg_idx.0 = add i32 %reg_idx.0.p, %from
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %reg_idx.0)
  %7 = icmp ult i32 %reg_idx.0, 19
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %reg_idx.0)
  %cmp2.i42 = icmp eq i32 %reg_idx.0, 31
  %spec.select.i43 = or i1 %7, %cmp2.i42
  br i1 %spec.select.i43, label %if.then16, label %while.body.if.end18_crit_edge

while.body.if.end18_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then16:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %shl = shl nuw nsw i32 %reg_idx.0, 7
  %or = or i32 %shl, %reg_idx.0
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 9356, i32 noundef 3999, i32 noundef %or, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  tail call void @usleep_range_state(i32 noundef 200, i32 noundef 300, i32 noundef 2) #6
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %while.body.if.end18_crit_edge
  %inc = add nuw i32 %count.046, 1
  %exitcond.not = icmp eq i32 %count.046, %offset.0
  br i1 %exitcond.not, label %if.end18.while.end_crit_edge, label %if.end18.while.body_crit_edge

if.end18.while.body_crit_edge:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end18.while.end_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %if.end18.while.end_crit_edge, %do.end4.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_component_init_regmap(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mt6358_codec_dai_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
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
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %10 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %stream, align 4
  %number = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 3
  %12 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %number, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %9, ptr noundef nonnull @.str.149, ptr noundef nonnull @.str.150, i32 noundef %11, i32 noundef %7, i32 noundef %13) #9
  %14 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %stream, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.164)
  switch i32 %15, label %entry.if.end6_crit_edge [
    i32 0, label %if.then
    i32 1, label %if.then5
  ]

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dl_rate = getelementptr inbounds %struct.mt6358_priv, ptr %5, i32 0, i32 2
  br label %if.end6.sink.split

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ul_rate = getelementptr inbounds %struct.mt6358_priv, ptr %5, i32 0, i32 3
  br label %if.end6.sink.split

if.end6.sink.split:                               ; preds = %if.then5, %if.then
  %ul_rate.sink = phi ptr [ %ul_rate, %if.then5 ], [ %dl_rate, %if.then ]
  %17 = ptrtoint ptr %ul_rate.sink to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %7, ptr %ul_rate.sink, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.end6.sink.split, %entry.if.end6_crit_edge
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 207)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 207)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !29, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !161, !162, !163, !165, !166, !167, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !203, !204, !205, !207, !208, !209, !211, !212, !213, !215, !216, !217, !218, !220, !221, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !253, !254, !255, !257, !259, !261, !263, !265, !267, !269, !270, !272, !273, !275, !276, !277, !279, !281, !283, !285, !286, !288, !289, !290, !291, !293, !294, !295, !296, !298, !299, !300, !302, !303, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !329, !330, !332, !334, !336, !338, !340, !342, !344, !346, !347, !349, !351, !353, !355, !357, !359, !360, !362, !364, !366, !368, !370, !372, !374, !375, !377, !379, !381, !383, !385, !387, !388, !389, !390, !391, !393, !395, !397, !399, !400, !401, !402}
!llvm.module.flags = !{!404, !405, !406, !407, !408, !409, !410, !411}
!llvm.ident = !{!412}

!0 = !{ptr @__initcall__kmod_snd_soc_mt6358__303_2492_mt6358_platform_driver_init6, !1, !"__initcall__kmod_snd_soc_mt6358__303_2492_mt6358_platform_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/mt6358.c", i32 2492, i32 1}
!2 = !{ptr @__exitcall_mt6358_platform_driver_exit, !1, !"__exitcall_mt6358_platform_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description304, !4, !"__UNIQUE_ID_description304", i1 false, i1 false}
!4 = !{!"../sound/soc/codecs/mt6358.c", i32 2495, i32 1}
!5 = !{ptr @__UNIQUE_ID_author305, !6, !"__UNIQUE_ID_author305", i1 false, i1 false}
!6 = !{!"../sound/soc/codecs/mt6358.c", i32 2496, i32 1}
!7 = !{ptr @__UNIQUE_ID_file306, !8, !"__UNIQUE_ID_file306", i1 false, i1 false}
!8 = !{!"../sound/soc/codecs/mt6358.c", i32 2497, i32 1}
!9 = !{ptr @__UNIQUE_ID_license307, !8, !"__UNIQUE_ID_license307", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/codecs/mt6358.c", i32 2486, i32 11}
!12 = !{ptr @mt6358_platform_driver, !13, !"mt6358_platform_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/mt6358.c", i32 2484, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/mt6358.c", i32 2469, i32 2}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @mt6358_platform_driver_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @mt6358_platform_driver_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/soc/codecs/mt6358.c", i32 2439, i32 43}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/codecs/mt6358.c", i32 2442, i32 3}
!26 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @mt6358_parse_dt._entry, !25, !"_entry", i1 false, i1 false}
!29 = !{ptr @mt6358_parse_dt._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @mt6358_soc_component_driver, !31, !"mt6358_soc_component_driver", i1 false, i1 false}
!31 = !{!"../sound/soc/codecs/mt6358.c", i32 2424, i32 46}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/soc/codecs/mt6358.c", i32 576, i32 2}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/soc/codecs/mt6358.c", i32 579, i32 2}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/soc/codecs/mt6358.c", i32 582, i32 2}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/codecs/mt6358.c", i32 586, i32 2}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/codecs/mt6358.c", i32 591, i32 2}
!42 = !{ptr @mt6358_snd_controls, !43, !"mt6358_snd_controls", i1 false, i1 false}
!43 = !{!"../sound/soc/codecs/mt6358.c", i32 574, i32 38}
!44 = !{ptr @playback_tlv, !45, !"playback_tlv", i1 false, i1 false}
!45 = !{!"../sound/soc/codecs/mt6358.c", i32 571, i32 14}
!46 = !{ptr @pga_tlv, !47, !"pga_tlv", i1 false, i1 false}
!47 = !{!"../sound/soc/codecs/mt6358.c", i32 572, i32 14}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/soc/codecs/mt6358.c", i32 2022, i32 2}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/codecs/mt6358.c", i32 2025, i32 2}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/soc/codecs/mt6358.c", i32 2028, i32 2}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/codecs/mt6358.c", i32 2033, i32 2}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/codecs/mt6358.c", i32 2036, i32 2}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/soc/codecs/mt6358.c", i32 2039, i32 2}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/codecs/mt6358.c", i32 2044, i32 2}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/soc/codecs/mt6358.c", i32 2049, i32 2}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/codecs/mt6358.c", i32 2054, i32 2}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/soc/codecs/mt6358.c", i32 2057, i32 2}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/soc/codecs/mt6358.c", i32 2060, i32 2}
!70 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/soc/codecs/mt6358.c", i32 2063, i32 2}
!72 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/soc/codecs/mt6358.c", i32 2066, i32 2}
!74 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/soc/codecs/mt6358.c", i32 2069, i32 2}
!76 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/codecs/mt6358.c", i32 2073, i32 2}
!78 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/codecs/mt6358.c", i32 2077, i32 2}
!80 = !{ptr @.str.34, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/soc/codecs/mt6358.c", i32 2082, i32 2}
!82 = !{ptr @.str.35, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/soc/codecs/mt6358.c", i32 2089, i32 2}
!85 = !{ptr @.str.37, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../sound/soc/codecs/mt6358.c", i32 2093, i32 2}
!87 = !{ptr @.str.38, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../sound/soc/codecs/mt6358.c", i32 2095, i32 2}
!89 = !{ptr @.str.39, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/soc/codecs/mt6358.c", i32 2097, i32 2}
!91 = !{ptr @.str.40, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../sound/soc/codecs/mt6358.c", i32 2100, i32 2}
!93 = !{ptr @.str.41, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/soc/codecs/mt6358.c", i32 2102, i32 2}
!95 = !{ptr @.str.42, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/soc/codecs/mt6358.c", i32 2105, i32 2}
!97 = !{ptr @.str.43, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../sound/soc/codecs/mt6358.c", i32 2109, i32 2}
!99 = !{ptr @.str.44, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/soc/codecs/mt6358.c", i32 2115, i32 2}
!101 = !{ptr @.str.45, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../sound/soc/codecs/mt6358.c", i32 2122, i32 2}
!103 = !{ptr @.str.46, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../sound/soc/codecs/mt6358.c", i32 2129, i32 2}
!105 = !{ptr @.str.47, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../sound/soc/codecs/mt6358.c", i32 2130, i32 2}
!107 = !{ptr @.str.48, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../sound/soc/codecs/mt6358.c", i32 2131, i32 2}
!109 = !{ptr @.str.49, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../sound/soc/codecs/mt6358.c", i32 2132, i32 2}
!111 = !{ptr @.str.50, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../sound/soc/codecs/mt6358.c", i32 2133, i32 2}
!113 = !{ptr @.str.51, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../sound/soc/codecs/mt6358.c", i32 2134, i32 2}
!115 = !{ptr @.str.52, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../sound/soc/codecs/mt6358.c", i32 2135, i32 2}
!117 = !{ptr @.str.53, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../sound/soc/codecs/mt6358.c", i32 2138, i32 2}
!119 = !{ptr @.str.54, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../sound/soc/codecs/mt6358.c", i32 2140, i32 2}
!121 = !{ptr @.str.55, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../sound/soc/codecs/mt6358.c", i32 2144, i32 2}
!123 = !{ptr @.str.56, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../sound/soc/codecs/mt6358.c", i32 2147, i32 2}
!125 = !{ptr @.str.57, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../sound/soc/codecs/mt6358.c", i32 2150, i32 2}
!127 = !{ptr @.str.58, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @.str.59, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/soc/codecs/mt6358.c", i32 2155, i32 2}
!130 = !{ptr @.str.60, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/soc/codecs/mt6358.c", i32 2161, i32 2}
!132 = !{ptr @.str.61, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../sound/soc/codecs/mt6358.c", i32 2164, i32 2}
!134 = !{ptr @.str.62, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../sound/soc/codecs/mt6358.c", i32 2170, i32 2}
!136 = !{ptr @.str.63, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../sound/soc/codecs/mt6358.c", i32 2174, i32 2}
!138 = !{ptr @.str.64, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/soc/codecs/mt6358.c", i32 2179, i32 2}
!140 = !{ptr @.str.65, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../sound/soc/codecs/mt6358.c", i32 2180, i32 2}
!142 = !{ptr @.str.66, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../sound/soc/codecs/mt6358.c", i32 2182, i32 2}
!144 = !{ptr @.str.67, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../sound/soc/codecs/mt6358.c", i32 2186, i32 2}
!146 = !{ptr @.str.68, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../sound/soc/codecs/mt6358.c", i32 2191, i32 2}
!148 = !{ptr @.str.69, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../sound/soc/codecs/mt6358.c", i32 2192, i32 2}
!150 = !{ptr @.str.70, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../sound/soc/codecs/mt6358.c", i32 2195, i32 2}
!152 = !{ptr @.str.71, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../sound/soc/codecs/mt6358.c", i32 2196, i32 2}
!154 = !{ptr @.str.72, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../sound/soc/codecs/mt6358.c", i32 2197, i32 2}
!156 = !{ptr @mt6358_dapm_widgets, !157, !"mt6358_dapm_widgets", i1 false, i1 false}
!157 = !{!"../sound/soc/codecs/mt6358.c", i32 2020, i32 41}
!158 = !{ptr @.str.74, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../sound/soc/codecs/mt6358.c", i32 863, i32 2}
!160 = !{ptr @.str.75, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @.str.76, !159, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @mt_clksq_event.__UNIQUE_ID_ddebug294, !159, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!163 = !{ptr @.str.77, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../sound/soc/codecs/mt6358.c", i32 925, i32 2}
!165 = !{ptr @.str.78, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @mt_aif_in_event._entry, !164, !"_entry", i1 false, i1 false}
!167 = !{ptr @mt_aif_in_event._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.79, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../sound/soc/codecs/mt6358.c", i32 714, i32 2}
!170 = !{ptr @dac_in_mux_control, !171, !"dac_in_mux_control", i1 false, i1 false}
!171 = !{!"../sound/soc/codecs/mt6358.c", i32 713, i32 38}
!172 = !{ptr @dac_in_mux_map_enum, !173, !"dac_in_mux_map_enum", i1 false, i1 false}
!173 = !{!"../sound/soc/codecs/mt6358.c", i32 706, i32 8}
!174 = !{ptr @.str.80, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../sound/soc/codecs/mt6358.c", i32 699, i32 2}
!176 = !{ptr @.str.81, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../sound/soc/codecs/mt6358.c", i32 699, i32 17}
!178 = !{ptr @dac_in_mux_map, !179, !"dac_in_mux_map", i1 false, i1 false}
!179 = !{!"../sound/soc/codecs/mt6358.c", i32 698, i32 27}
!180 = !{ptr @dac_in_mux_map_value, !181, !"dac_in_mux_map_value", i1 false, i1 false}
!181 = !{!"../sound/soc/codecs/mt6358.c", i32 702, i32 12}
!182 = !{ptr @.str.82, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../sound/soc/codecs/mt6358.c", i32 613, i32 2}
!184 = !{ptr @lo_in_mux_control, !185, !"lo_in_mux_control", i1 false, i1 false}
!185 = !{!"../sound/soc/codecs/mt6358.c", i32 612, i32 38}
!186 = !{ptr @lo_in_mux_map_enum, !187, !"lo_in_mux_map_enum", i1 false, i1 false}
!187 = !{!"../sound/soc/codecs/mt6358.c", i32 605, i32 8}
!188 = !{ptr @.str.83, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../sound/soc/codecs/mt6358.c", i32 598, i32 2}
!190 = !{ptr @.str.84, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../sound/soc/codecs/mt6358.c", i32 598, i32 10}
!192 = !{ptr @.str.85, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../sound/soc/codecs/mt6358.c", i32 598, i32 18}
!194 = !{ptr @.str.86, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../sound/soc/codecs/mt6358.c", i32 598, i32 30}
!196 = !{ptr @lo_in_mux_map, !197, !"lo_in_mux_map", i1 false, i1 false}
!197 = !{!"../sound/soc/codecs/mt6358.c", i32 597, i32 27}
!198 = !{ptr @lo_in_mux_map_value, !199, !"lo_in_mux_map_value", i1 false, i1 false}
!199 = !{!"../sound/soc/codecs/mt6358.c", i32 601, i32 12}
!200 = !{ptr @.str.87, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../sound/soc/codecs/mt6358.c", i32 1359, i32 2}
!202 = !{ptr @.str.88, !201, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @mt_hp_event._entry, !201, !"_entry", i1 false, i1 false}
!204 = !{ptr @mt_hp_event._entry_ptr, !201, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.90, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../sound/soc/codecs/mt6358.c", i32 1371, i32 4}
!207 = !{ptr @mt_hp_event._entry.89, !206, !"_entry", i1 false, i1 false}
!208 = !{ptr @mt_hp_event._entry_ptr.91, !206, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.93, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../sound/soc/codecs/mt6358.c", i32 1387, i32 4}
!211 = !{ptr @mt_hp_event._entry.92, !210, !"_entry", i1 false, i1 false}
!212 = !{ptr @mt_hp_event._entry_ptr.94, !210, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.95, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../sound/soc/codecs/mt6358.c", i32 391, i32 3}
!215 = !{ptr @.str.96, !214, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @headset_volume_ramp._entry, !214, !"_entry", i1 false, i1 false}
!217 = !{ptr @headset_volume_ramp._entry_ptr, !214, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @.str.98, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../sound/soc/codecs/mt6358.c", i32 394, i32 2}
!220 = !{ptr @headset_volume_ramp._entry.97, !219, !"_entry", i1 false, i1 false}
!221 = !{ptr @headset_volume_ramp._entry_ptr.99, !219, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.100, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../sound/soc/codecs/mt6358.c", i32 655, i32 2}
!224 = !{ptr @hpl_in_mux_control, !225, !"hpl_in_mux_control", i1 false, i1 false}
!225 = !{!"../sound/soc/codecs/mt6358.c", i32 654, i32 38}
!226 = !{ptr @hpl_in_mux_map_enum, !227, !"hpl_in_mux_map_enum", i1 false, i1 false}
!227 = !{!"../sound/soc/codecs/mt6358.c", i32 647, i32 8}
!228 = !{ptr @.str.101, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../sound/soc/codecs/mt6358.c", i32 627, i32 2}
!230 = !{ptr @.str.102, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../sound/soc/codecs/mt6358.c", i32 628, i32 2}
!232 = !{ptr @.str.103, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../sound/soc/codecs/mt6358.c", i32 630, i32 2}
!234 = !{ptr @.str.104, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../sound/soc/codecs/mt6358.c", i32 631, i32 2}
!236 = !{ptr @.str.105, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../sound/soc/codecs/mt6358.c", i32 632, i32 2}
!238 = !{ptr @.str.106, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../sound/soc/codecs/mt6358.c", i32 633, i32 2}
!240 = !{ptr @hp_in_mux_map, !241, !"hp_in_mux_map", i1 false, i1 false}
!241 = !{!"../sound/soc/codecs/mt6358.c", i32 625, i32 27}
!242 = !{ptr @hp_in_mux_map_value, !243, !"hp_in_mux_map_value", i1 false, i1 false}
!243 = !{!"../sound/soc/codecs/mt6358.c", i32 636, i32 12}
!244 = !{ptr @.str.107, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../sound/soc/codecs/mt6358.c", i32 665, i32 2}
!246 = !{ptr @hpr_in_mux_control, !247, !"hpr_in_mux_control", i1 false, i1 false}
!247 = !{!"../sound/soc/codecs/mt6358.c", i32 664, i32 38}
!248 = !{ptr @hpr_in_mux_map_enum, !249, !"hpr_in_mux_map_enum", i1 false, i1 false}
!249 = !{!"../sound/soc/codecs/mt6358.c", i32 657, i32 8}
!250 = !{ptr @.str.108, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../sound/soc/codecs/mt6358.c", i32 1415, i32 2}
!252 = !{ptr @.str.109, !251, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @mt_rcv_event._entry, !251, !"_entry", i1 false, i1 false}
!254 = !{ptr @mt_rcv_event._entry_ptr, !251, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @.str.110, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../sound/soc/codecs/mt6358.c", i32 695, i32 2}
!257 = !{ptr @rcv_in_mux_control, !258, !"rcv_in_mux_control", i1 false, i1 false}
!258 = !{!"../sound/soc/codecs/mt6358.c", i32 694, i32 38}
!259 = !{ptr @rcv_in_mux_map_enum, !260, !"rcv_in_mux_map_enum", i1 false, i1 false}
!260 = !{!"../sound/soc/codecs/mt6358.c", i32 687, i32 8}
!261 = !{ptr @.str.111, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../sound/soc/codecs/mt6358.c", i32 677, i32 18}
!263 = !{ptr @rcv_in_mux_map, !264, !"rcv_in_mux_map", i1 false, i1 false}
!264 = !{!"../sound/soc/codecs/mt6358.c", i32 676, i32 27}
!265 = !{ptr @rcv_in_mux_map_value, !266, !"rcv_in_mux_map_value", i1 false, i1 false}
!266 = !{!"../sound/soc/codecs/mt6358.c", i32 680, i32 12}
!267 = !{ptr @.str.112, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../sound/soc/codecs/mt6358.c", i32 886, i32 2}
!269 = !{ptr @mt_sgen_event.__UNIQUE_ID_ddebug295, !268, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!270 = !{ptr @.str.113, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../sound/soc/codecs/mt6358.c", i32 1543, i32 2}
!272 = !{ptr @mt_aif_out_event.__UNIQUE_ID_ddebug296, !271, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!273 = !{ptr @.str.114, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../sound/soc/codecs/mt6358.c", i32 1567, i32 2}
!275 = !{ptr @.str.115, !274, !"<string literal>", i1 false, i1 false}
!276 = !{ptr @mt_adc_supply_event.__UNIQUE_ID_ddebug297, !274, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!277 = !{ptr @.str.116, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../sound/soc/codecs/mt6358.c", i32 725, i32 2}
!279 = !{ptr @aif_out_mux_control, !280, !"aif_out_mux_control", i1 false, i1 false}
!280 = !{!"../sound/soc/codecs/mt6358.c", i32 724, i32 38}
!281 = !{ptr @aif_out_mux_map_enum, !282, !"aif_out_mux_map_enum", i1 false, i1 false}
!282 = !{!"../sound/soc/codecs/mt6358.c", i32 717, i32 8}
!283 = !{ptr @.str.117, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../sound/soc/codecs/mt6358.c", i32 1899, i32 2}
!285 = !{ptr @mt_mic_type_event.__UNIQUE_ID_ddebug298, !284, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!286 = !{ptr @.str.118, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../sound/soc/codecs/mt6358.c", i32 1819, i32 2}
!288 = !{ptr @.str.119, !287, !"<string literal>", i1 false, i1 false}
!289 = !{ptr @mt6358_dmic_enable._entry, !287, !"_entry", i1 false, i1 false}
!290 = !{ptr @mt6358_dmic_enable._entry_ptr, !287, !"_entry_ptr", i1 false, i1 false}
!291 = !{ptr @.str.120, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../sound/soc/codecs/mt6358.c", i32 1612, i32 2}
!293 = !{ptr @.str.121, !292, !"<string literal>", i1 false, i1 false}
!294 = !{ptr @mt6358_amic_enable._entry, !292, !"_entry", i1 false, i1 false}
!295 = !{ptr @mt6358_amic_enable._entry_ptr, !292, !"_entry_ptr", i1 false, i1 false}
!296 = !{ptr @.str.122, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../sound/soc/codecs/mt6358.c", i32 1852, i32 2}
!298 = !{ptr @mt6358_dmic_disable._entry, !297, !"_entry", i1 false, i1 false}
!299 = !{ptr @mt6358_dmic_disable._entry_ptr, !297, !"_entry_ptr", i1 false, i1 false}
!300 = !{ptr @.str.123, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../sound/soc/codecs/mt6358.c", i32 1759, i32 2}
!302 = !{ptr @mt6358_amic_disable._entry, !301, !"_entry", i1 false, i1 false}
!303 = !{ptr @mt6358_amic_disable._entry_ptr, !301, !"_entry_ptr", i1 false, i1 false}
!304 = !{ptr @.str.124, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../sound/soc/codecs/mt6358.c", i32 768, i32 2}
!306 = !{ptr @mic_type_mux_control, !307, !"mic_type_mux_control", i1 false, i1 false}
!307 = !{!"../sound/soc/codecs/mt6358.c", i32 767, i32 38}
!308 = !{ptr @mic_type_mux_map_enum, !309, !"mic_type_mux_map_enum", i1 false, i1 false}
!309 = !{!"../sound/soc/codecs/mt6358.c", i32 760, i32 8}
!310 = !{ptr @.str.125, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../sound/soc/codecs/mt6358.c", i32 743, i32 2}
!312 = !{ptr @.str.126, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../sound/soc/codecs/mt6358.c", i32 744, i32 2}
!314 = !{ptr @.str.127, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../sound/soc/codecs/mt6358.c", i32 745, i32 2}
!316 = !{ptr @.str.128, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../sound/soc/codecs/mt6358.c", i32 746, i32 2}
!318 = !{ptr @.str.129, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../sound/soc/codecs/mt6358.c", i32 747, i32 2}
!320 = !{ptr @.str.130, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../sound/soc/codecs/mt6358.c", i32 748, i32 2}
!322 = !{ptr @mic_type_mux_map, !323, !"mic_type_mux_map", i1 false, i1 false}
!323 = !{!"../sound/soc/codecs/mt6358.c", i32 742, i32 27}
!324 = !{ptr @mic_type_mux_map_value, !325, !"mic_type_mux_map_value", i1 false, i1 false}
!325 = !{!"../sound/soc/codecs/mt6358.c", i32 751, i32 12}
!326 = !{ptr @.str.131, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../sound/soc/codecs/mt6358.c", i32 1945, i32 2}
!328 = !{ptr @.str.132, !327, !"<string literal>", i1 false, i1 false}
!329 = !{ptr @mt_adc_l_event.__UNIQUE_ID_ddebug299, !327, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!330 = !{ptr @.str.133, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../sound/soc/codecs/mt6358.c", i32 798, i32 2}
!332 = !{ptr @adc_left_mux_control, !333, !"adc_left_mux_control", i1 false, i1 false}
!333 = !{!"../sound/soc/codecs/mt6358.c", i32 797, i32 38}
!334 = !{ptr @adc_left_mux_map_enum, !335, !"adc_left_mux_map_enum", i1 false, i1 false}
!335 = !{!"../sound/soc/codecs/mt6358.c", i32 790, i32 8}
!336 = !{ptr @.str.134, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../sound/soc/codecs/mt6358.c", i32 780, i32 18}
!338 = !{ptr @.str.135, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../sound/soc/codecs/mt6358.c", i32 780, i32 39}
!340 = !{ptr @adc_left_mux_map, !341, !"adc_left_mux_map", i1 false, i1 false}
!341 = !{!"../sound/soc/codecs/mt6358.c", i32 779, i32 27}
!342 = !{ptr @adc_mux_map_value, !343, !"adc_mux_map_value", i1 false, i1 false}
!343 = !{!"../sound/soc/codecs/mt6358.c", i32 783, i32 12}
!344 = !{ptr @.str.136, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../sound/soc/codecs/mt6358.c", i32 1961, i32 2}
!346 = !{ptr @mt_adc_r_event.__UNIQUE_ID_ddebug300, !345, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!347 = !{ptr @.str.137, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../sound/soc/codecs/mt6358.c", i32 813, i32 2}
!349 = !{ptr @adc_right_mux_control, !350, !"adc_right_mux_control", i1 false, i1 false}
!350 = !{!"../sound/soc/codecs/mt6358.c", i32 812, i32 38}
!351 = !{ptr @adc_right_mux_map_enum, !352, !"adc_right_mux_map_enum", i1 false, i1 false}
!352 = !{!"../sound/soc/codecs/mt6358.c", i32 805, i32 8}
!353 = !{ptr @.str.138, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../sound/soc/codecs/mt6358.c", i32 802, i32 18}
!355 = !{ptr @adc_right_mux_map, !356, !"adc_right_mux_map", i1 false, i1 false}
!356 = !{!"../sound/soc/codecs/mt6358.c", i32 801, i32 27}
!357 = !{ptr @.str.139, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../sound/soc/codecs/mt6358.c", i32 1977, i32 2}
!359 = !{ptr @mt_pga_left_event.__UNIQUE_ID_ddebug301, !358, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!360 = !{ptr @.str.140, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../sound/soc/codecs/mt6358.c", i32 843, i32 2}
!362 = !{ptr @pga_left_mux_control, !363, !"pga_left_mux_control", i1 false, i1 false}
!363 = !{!"../sound/soc/codecs/mt6358.c", i32 842, i32 38}
!364 = !{ptr @pga_left_mux_map_enum, !365, !"pga_left_mux_map_enum", i1 false, i1 false}
!365 = !{!"../sound/soc/codecs/mt6358.c", i32 835, i32 8}
!366 = !{ptr @.str.141, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../sound/soc/codecs/mt6358.c", i32 825, i32 2}
!368 = !{ptr @pga_mux_map, !369, !"pga_mux_map", i1 false, i1 false}
!369 = !{!"../sound/soc/codecs/mt6358.c", i32 824, i32 27}
!370 = !{ptr @pga_mux_map_value, !371, !"pga_mux_map_value", i1 false, i1 false}
!371 = !{!"../sound/soc/codecs/mt6358.c", i32 828, i32 12}
!372 = !{ptr @.str.142, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../sound/soc/codecs/mt6358.c", i32 1993, i32 2}
!374 = !{ptr @mt_pga_right_event.__UNIQUE_ID_ddebug302, !373, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!375 = !{ptr @.str.143, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../sound/soc/codecs/mt6358.c", i32 854, i32 2}
!377 = !{ptr @pga_right_mux_control, !378, !"pga_right_mux_control", i1 false, i1 false}
!378 = !{!"../sound/soc/codecs/mt6358.c", i32 853, i32 38}
!379 = !{ptr @pga_right_mux_map_enum, !380, !"pga_right_mux_map_enum", i1 false, i1 false}
!380 = !{!"../sound/soc/codecs/mt6358.c", i32 846, i32 8}
!381 = !{ptr @mt6358_dapm_routes, !382, !"mt6358_dapm_routes", i1 false, i1 false}
!382 = !{!"../sound/soc/codecs/mt6358.c", i32 2200, i32 40}
!383 = !{ptr @.str.144, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../sound/soc/codecs/mt6358.c", i32 2411, i32 49}
!385 = !{ptr @.str.145, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../sound/soc/codecs/mt6358.c", i32 2413, i32 3}
!387 = !{ptr @.str.146, !386, !"<string literal>", i1 false, i1 false}
!388 = !{ptr @.str.147, !386, !"<string literal>", i1 false, i1 false}
!389 = !{ptr @mt6358_codec_probe._entry, !386, !"_entry", i1 false, i1 false}
!390 = !{ptr @mt6358_codec_probe._entry_ptr, !386, !"_entry_ptr", i1 false, i1 false}
!391 = !{ptr @.str.148, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../sound/soc/codecs/mt6358.c", i32 2348, i32 11}
!393 = !{ptr @mt6358_dai_driver, !394, !"mt6358_dai_driver", i1 false, i1 false}
!394 = !{!"../sound/soc/codecs/mt6358.c", i32 2346, i32 34}
!395 = !{ptr @mt6358_codec_dai_ops, !396, !"mt6358_codec_dai_ops", i1 false, i1 false}
!396 = !{!"../sound/soc/codecs/mt6358.c", i32 2335, i32 37}
!397 = !{ptr @.str.149, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../sound/soc/codecs/mt6358.c", i32 2321, i32 2}
!399 = !{ptr @.str.150, !398, !"<string literal>", i1 false, i1 false}
!400 = !{ptr @mt6358_codec_dai_hw_params._entry, !398, !"_entry", i1 false, i1 false}
!401 = !{ptr @mt6358_codec_dai_hw_params._entry_ptr, !398, !"_entry_ptr", i1 false, i1 false}
!402 = !{ptr @mt6358_of_match, !403, !"mt6358_of_match", i1 false, i1 false}
!403 = !{!"../sound/soc/codecs/mt6358.c", i32 2478, i32 34}
!404 = !{i32 1, !"wchar_size", i32 2}
!405 = !{i32 1, !"min_enum_size", i32 4}
!406 = !{i32 8, !"branch-target-enforcement", i32 0}
!407 = !{i32 8, !"sign-return-address", i32 0}
!408 = !{i32 8, !"sign-return-address-all", i32 0}
!409 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!410 = !{i32 7, !"uwtable", i32 1}
!411 = !{i32 7, !"frame-pointer", i32 2}
!412 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!413 = !{!"auto-init"}
!414 = !{i64 2148360452, i64 2148360457, i64 2148360470, i64 2148360514, i64 2148360548, i64 2148360569}
