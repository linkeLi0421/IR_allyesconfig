; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/ak4642.c_pt.bc'
source_filename = "../sound/soc/codecs/ak4642.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.106, ptr }
%union.anon.106 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.98, i32 }
%union.anon.98 = type { ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.ak4642_drvdata = type { ptr, i32 }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.reg_default = type { i32, i32 }
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
%struct.ak4642_priv = type { ptr, ptr }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }
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

@__initcall__kmod_snd_soc_ak4642__294_704_ak4642_i2c_driver_init6 = internal global ptr @ak4642_i2c_driver_init, section ".initcall6.init", align 4
@ak4642_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @ak4642_i2c_probe, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ak4642_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ak4642_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ak4642_i2c_driver_exit = internal global ptr @ak4642_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description295 = internal constant [45 x i8] c"snd_soc_ak4642.description=Soc AK4642 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author296 = internal constant [72 x i8] c"snd_soc_ak4642.author=Kuninori Morimoto <morimoto.kuninori@renesas.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file297 = internal constant [52 x i8] c"snd_soc_ak4642.file=sound/soc/codecs/snd-soc-ak4642\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [30 x i8] c"snd_soc_ak4642.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ak4642-codec\00", [19 x i8] zeroinitializer }, align 32
@ak4642_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"asahi-kasei,ak4642\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ak4642_drvdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"asahi-kasei,ak4643\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ak4643_drvdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"asahi-kasei,ak4648\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ak4648_drvdata }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@ak4642_i2c_id = internal constant { [4 x %struct.i2c_device_id], [32 x i8] } { [4 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ak4642\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @ak4642_drvdata to i32) }, %struct.i2c_device_id { [20 x i8] c"ak4643\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @ak4643_drvdata to i32) }, %struct.i2c_device_id { [20 x i8] c"ak4648\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @ak4648_drvdata to i32) }, %struct.i2c_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@ak4642_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 658, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Unknown device type\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ak4642_i2c_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sound/soc/codecs/ak4642.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ak4642_i2c_probe._entry_ptr = internal global ptr @ak4642_i2c_probe._entry, section ".printk_index", align 4
@ak4642_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"ak4642:671:(drvdata->regmap_config)->lock\00", [54 x i8] zeroinitializer }, align 32
@soc_component_dev_ak4642 = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @ak4642_snd_controls, i32 3, ptr @ak4642_dapm_widgets, i32 9, ptr @ak4642_intercon, i32 9, ptr @ak4642_probe, ptr null, ptr @ak4642_suspend, ptr @ak4642_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ak4642_set_bias_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 76, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@ak4642_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr @.str.30, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @ak4642_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.31, i64 4, i32 254, i32 0, i32 0, i32 2, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.29, i64 4, i32 254, i32 0, i32 0, i32 2, i32 2, i32 0 }, i8 -128, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"clocks\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clock-output-names\00", [45 x i8] zeroinitializer }, align 32
@ak4642_snd_controls = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.10, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 { ptr @out_tlv }, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.11, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.12 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.13, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.14 to i32) }], [48 x i8] zeroinitializer }, align 32
@ak4642_intercon = internal constant { [9 x %struct.snd_soc_dapm_route], [108 x i8] } { [9 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.15, ptr null, ptr @.str.18, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.16, ptr null, ptr @.str.19, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.17, ptr null, ptr @.str.22, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.18, ptr null, ptr @.str.20, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.19, ptr null, ptr @.str.20, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.20, ptr @.str.25, ptr @.str.21, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.21, ptr null, ptr @.str.23, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.22, ptr @.str.27, ptr @.str.23, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.23, ptr null, ptr @.str.29, ptr null, %struct.snd_soc_dobj zeroinitializer }], [108 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Digital Playback Volume\00", [40 x i8] zeroinitializer }, align 32
@out_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -11550, i32 65586], [16 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 255, i32 255, i32 10, i32 13, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ALC Capture Switch\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.12 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 7, i32 7, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ALC Capture ZC Switch\00", [42 x i8] zeroinitializer }, align 32
@.compoundliteral.14 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 7, i32 7, i32 4, i32 4, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HPOUTL\00", [25 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HPOUTR\00", [25 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LINEOUT\00", [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HPL Out\00", [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"HPR Out\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Headphone Enable\00", [47 x i8] zeroinitializer }, align 32
@ak4642_headphone_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.25, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.26 to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DACH\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"LINEOUT Mixer\00", [18 x i8] zeroinitializer }, align 32
@ak4642_lout_mixer_controls = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.27, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.98 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.28 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DAC\00", [28 x i8] zeroinitializer }, align 32
@ak4642_dapm_widgets = internal constant { [9 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [396 x i8] } { [9 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.15, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.16, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.17, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.18, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 1, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.19, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 1, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 15, ptr @.str.20, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @ak4642_headphone_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.21, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 15, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.22, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 0, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 15, ptr @ak4642_lout_event, i32 1, ptr @ak4642_lout_mixer_controls, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.23, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 0, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [396 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Switch\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.26 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1, i32 1, i32 6, i32 6, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DACL\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.28 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2, i32 2, i32 4, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Playback\00", [23 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ak4642-hifi\00", [20 x i8] zeroinitializer }, align 32
@ak4642_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @ak4642_dai_set_sysclk, ptr null, ptr null, ptr null, ptr @ak4642_dai_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ak4642_dai_startup, ptr @ak4642_dai_shutdown, ptr @ak4642_dai_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Capture\00", [24 x i8] zeroinitializer }, align 32
@ak4642_drvdata = internal constant { %struct.ak4642_drvdata, [24 x i8] } { %struct.ak4642_drvdata { ptr @ak4642_regmap, i32 0 }, [24 x i8] zeroinitializer }, align 32
@ak4643_drvdata = internal constant { %struct.ak4642_drvdata, [24 x i8] } { %struct.ak4642_drvdata { ptr @ak4643_regmap, i32 0 }, [24 x i8] zeroinitializer }, align 32
@ak4648_drvdata = internal constant { %struct.ak4642_drvdata, [24 x i8] } { %struct.ak4642_drvdata { ptr @ak4648_regmap, i32 1 }, [24 x i8] zeroinitializer }, align 32
@ak4642_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 31, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ak4643_reg, i32 32, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@ak4643_reg = internal constant { [37 x %struct.reg_default], [88 x i8] } { [37 x %struct.reg_default] [%struct.reg_default zeroinitializer, %struct.reg_default { i32 1, i32 0 }, %struct.reg_default { i32 2, i32 1 }, %struct.reg_default { i32 3, i32 0 }, %struct.reg_default { i32 4, i32 2 }, %struct.reg_default { i32 5, i32 0 }, %struct.reg_default { i32 6, i32 0 }, %struct.reg_default { i32 7, i32 0 }, %struct.reg_default { i32 8, i32 225 }, %struct.reg_default { i32 9, i32 225 }, %struct.reg_default { i32 10, i32 24 }, %struct.reg_default { i32 11, i32 0 }, %struct.reg_default { i32 12, i32 225 }, %struct.reg_default { i32 13, i32 24 }, %struct.reg_default { i32 14, i32 17 }, %struct.reg_default { i32 15, i32 8 }, %struct.reg_default { i32 16, i32 0 }, %struct.reg_default { i32 17, i32 0 }, %struct.reg_default { i32 18, i32 0 }, %struct.reg_default { i32 19, i32 0 }, %struct.reg_default { i32 20, i32 0 }, %struct.reg_default { i32 21, i32 0 }, %struct.reg_default { i32 22, i32 0 }, %struct.reg_default { i32 23, i32 0 }, %struct.reg_default { i32 24, i32 0 }, %struct.reg_default { i32 25, i32 0 }, %struct.reg_default { i32 26, i32 0 }, %struct.reg_default { i32 27, i32 0 }, %struct.reg_default { i32 28, i32 0 }, %struct.reg_default { i32 29, i32 0 }, %struct.reg_default { i32 30, i32 0 }, %struct.reg_default { i32 31, i32 0 }, %struct.reg_default { i32 32, i32 0 }, %struct.reg_default { i32 33, i32 0 }, %struct.reg_default { i32 34, i32 0 }, %struct.reg_default { i32 35, i32 0 }, %struct.reg_default { i32 36, i32 0 }], [88 x i8] zeroinitializer }, align 32
@ak4643_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 36, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ak4643_reg, i32 37, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@ak4648_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 8, i32 0, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 39, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ak4648_reg, i32 40, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@ak4648_reg = internal constant { [40 x %struct.reg_default], [64 x i8] } { [40 x %struct.reg_default] [%struct.reg_default zeroinitializer, %struct.reg_default { i32 1, i32 0 }, %struct.reg_default { i32 2, i32 1 }, %struct.reg_default { i32 3, i32 0 }, %struct.reg_default { i32 4, i32 2 }, %struct.reg_default { i32 5, i32 0 }, %struct.reg_default { i32 6, i32 0 }, %struct.reg_default { i32 7, i32 0 }, %struct.reg_default { i32 8, i32 225 }, %struct.reg_default { i32 9, i32 225 }, %struct.reg_default { i32 10, i32 24 }, %struct.reg_default { i32 11, i32 0 }, %struct.reg_default { i32 12, i32 225 }, %struct.reg_default { i32 13, i32 24 }, %struct.reg_default { i32 14, i32 17 }, %struct.reg_default { i32 15, i32 184 }, %struct.reg_default { i32 16, i32 0 }, %struct.reg_default { i32 17, i32 0 }, %struct.reg_default { i32 18, i32 0 }, %struct.reg_default { i32 19, i32 0 }, %struct.reg_default { i32 20, i32 0 }, %struct.reg_default { i32 21, i32 0 }, %struct.reg_default { i32 22, i32 0 }, %struct.reg_default { i32 23, i32 0 }, %struct.reg_default { i32 24, i32 0 }, %struct.reg_default { i32 25, i32 0 }, %struct.reg_default { i32 26, i32 0 }, %struct.reg_default { i32 27, i32 0 }, %struct.reg_default { i32 28, i32 0 }, %struct.reg_default { i32 29, i32 0 }, %struct.reg_default { i32 30, i32 0 }, %struct.reg_default { i32 31, i32 0 }, %struct.reg_default { i32 32, i32 0 }, %struct.reg_default { i32 33, i32 0 }, %struct.reg_default { i32 34, i32 0 }, %struct.reg_default { i32 35, i32 0 }, %struct.reg_default { i32 36, i32 0 }, %struct.reg_default { i32 37, i32 136 }, %struct.reg_default { i32 38, i32 136 }, %struct.reg_default { i32 39, i32 8 }], [64 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.32 = internal global [27 x i64] [i64 25, i64 32, i64 0, i64 235200, i64 256000, i64 352800, i64 384000, i64 470400, i64 512000, i64 705600, i64 768000, i64 940800, i64 1024000, i64 1411200, i64 1536000, i64 1881600, i64 2048000, i64 2822400, i64 3072000, i64 3763200, i64 4096000, i64 5644800, i64 6144000, i64 7526400, i64 8192000, i64 11289600, i64 12288000]
@__sancov_gen_cov_switch_values.33 = internal global [11 x i64] [i64 9, i64 32, i64 11289600, i64 12000000, i64 12288000, i64 13000000, i64 13500000, i64 19200000, i64 24000000, i64 26000000, i64 27000000]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@___asan_gen_.36 = private unnamed_addr constant [18 x i8] c"ak4642_i2c_driver\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 695, i32 26 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 697, i32 11 }
@___asan_gen_.42 = private unnamed_addr constant [16 x i8] c"ak4642_of_match\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 679, i32 34 }
@___asan_gen_.45 = private unnamed_addr constant [14 x i8] c"ak4642_i2c_id\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 687, i32 35 }
@___asan_gen_.48 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 658, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 671, i32 11 }
@___asan_gen_.72 = private unnamed_addr constant [25 x i8] c"soc_component_dev_ak4642\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 549, i32 46 }
@___asan_gen_.75 = private unnamed_addr constant [11 x i8] c"ak4642_dai\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 504, i32 34 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 614, i32 31 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 617, i32 32 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 620, i32 30 }
@___asan_gen_.87 = private unnamed_addr constant [20 x i8] c"ak4642_snd_controls\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 158, i32 38 }
@___asan_gen_.90 = private unnamed_addr constant [16 x i8] c"ak4642_intercon\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 221, i32 40 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 160, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant [8 x i8] c"out_tlv\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 156, i32 14 }
@___asan_gen_.99 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 162, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant [20 x i8] c".compoundliteral.12\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 163, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant [20 x i8] c".compoundliteral.14\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 199, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 200, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 201, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 203, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 204, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 205, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant [25 x i8] c"ak4642_headphone_control\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 166, i32 38 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 208, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 210, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant [27 x i8] c"ak4642_lout_mixer_controls\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 169, i32 38 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 218, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant [20 x i8] c"ak4642_dapm_widgets\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 196, i32 41 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 167, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant [20 x i8] c".compoundliteral.26\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 170, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant [20 x i8] c".compoundliteral.28\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 237, i32 17 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 505, i32 10 }
@___asan_gen_.158 = private unnamed_addr constant [15 x i8] c"ak4642_dai_ops\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 496, i32 37 }
@___asan_gen_.161 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 513, i32 18 }
@___asan_gen_.164 = private unnamed_addr constant [15 x i8] c"ak4642_drvdata\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 592, i32 36 }
@___asan_gen_.167 = private unnamed_addr constant [15 x i8] c"ak4643_drvdata\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 596, i32 36 }
@___asan_gen_.170 = private unnamed_addr constant [15 x i8] c"ak4648_drvdata\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 600, i32 36 }
@___asan_gen_.173 = private unnamed_addr constant [14 x i8] c"ak4642_regmap\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 565, i32 35 }
@___asan_gen_.176 = private unnamed_addr constant [11 x i8] c"ak4643_reg\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 243, i32 33 }
@___asan_gen_.179 = private unnamed_addr constant [14 x i8] c"ak4643_regmap\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 574, i32 35 }
@___asan_gen_.182 = private unnamed_addr constant [14 x i8] c"ak4648_regmap\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 583, i32 35 }
@___asan_gen_.185 = private unnamed_addr constant [11 x i8] c"ak4648_reg\00", align 1
@___asan_gen_.186 = private constant [29 x i8] c"../sound/soc/codecs/ak4642.c\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 264, i32 33 }
@llvm.compiler.used = appending global [62 x ptr] [ptr @__UNIQUE_ID_author296, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_license298, ptr @__exitcall_ak4642_i2c_driver_exit, ptr @__initcall__kmod_snd_soc_ak4642__294_704_ak4642_i2c_driver_init6, ptr @ak4642_i2c_driver_exit, ptr @ak4642_i2c_probe._entry, ptr @ak4642_i2c_probe._entry_ptr, ptr @ak4642_i2c_driver, ptr @.str, ptr @ak4642_of_match, ptr @ak4642_i2c_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @ak4642_i2c_probe._key, ptr @.str.6, ptr @soc_component_dev_ak4642, ptr @ak4642_dai, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @ak4642_snd_controls, ptr @ak4642_intercon, ptr @.str.10, ptr @out_tlv, ptr @.compoundliteral, ptr @.str.11, ptr @.compoundliteral.12, ptr @.str.13, ptr @.compoundliteral.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @ak4642_headphone_control, ptr @.str.21, ptr @.str.22, ptr @ak4642_lout_mixer_controls, ptr @.str.23, ptr @ak4642_dapm_widgets, ptr @.str.25, ptr @.compoundliteral.26, ptr @.str.27, ptr @.compoundliteral.28, ptr @.str.29, ptr @.str.30, ptr @ak4642_dai_ops, ptr @.str.31, ptr @ak4642_drvdata, ptr @ak4643_drvdata, ptr @ak4648_drvdata, ptr @ak4642_regmap, ptr @ak4643_reg, ptr @ak4643_regmap, ptr @ak4648_regmap, ptr @ak4648_reg], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4642_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4642_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4642_i2c_id to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4642_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4642_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_component_dev_ak4642 to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4642_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4642_snd_controls to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4642_intercon to i32), i32 468, i32 576, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @out_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.12 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.14 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4642_headphone_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4642_lout_mixer_controls to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4642_dapm_widgets to i32), i32 1620, i32 2016, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.26 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.28 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4642_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4642_drvdata to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4643_drvdata to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4648_drvdata to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4642_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4643_reg to i32), i32 296, i32 384, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4643_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4648_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4648_reg to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ak4642_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ak4642_i2c_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ak4642_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @i2c_del_driver(ptr noundef nonnull @ak4642_i2c_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ak4642_i2c_probe(ptr noundef %i2c, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %clk_name.i = alloca ptr, align 4
  %rate.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clk_name.i) #5
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = ptrtoint ptr %clk_name.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %clk_name.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rate.i) #5
  %7 = ptrtoint ptr %rate.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %rate.i, align 4, !annotation !116
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %3, ptr noundef nonnull @.str.7, ptr noundef nonnull %rate.i, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i, label %if.end.i, label %if.then.ak4642_of_parse_mcko.exit_crit_edge

if.then.ak4642_of_parse_mcko.exit_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %ak4642_of_parse_mcko.exit

if.end.i:                                         ; preds = %if.then
  %call.i.i = call ptr @of_find_property(ptr noundef %3, ptr noundef nonnull @.str.8, ptr noundef null) #5
  %tobool.i.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.i.not.i, label %if.end.i.if.end4.i_crit_edge, label %if.then2.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %call3.i = call ptr @of_clk_get_parent_name(ptr noundef %3, i32 noundef 0) #5
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then2.i, %if.end.i.if.end4.i_crit_edge
  %parent_clk_name.0.i = phi ptr [ %call3.i, %if.then2.i ], [ null, %if.end.i.if.end4.i_crit_edge ]
  %call5.i = call i32 @of_property_read_string(ptr noundef %3, ptr noundef nonnull @.str.9, ptr noundef nonnull %clk_name.i) #5
  %8 = ptrtoint ptr %clk_name.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk_name.i, align 4
  %10 = ptrtoint ptr %rate.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rate.i, align 4
  %call6.i = call ptr @clk_register_fixed_rate(ptr noundef %dev1, ptr noundef %9, ptr noundef %parent_clk_name.0.i, i32 noundef 0, i32 noundef %11) #5
  %cmp.i.i = icmp ugt ptr %call6.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end4.i.ak4642_of_parse_mcko.exit_crit_edge, label %if.then8.i

if.end4.i.ak4642_of_parse_mcko.exit_crit_edge:    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %ak4642_of_parse_mcko.exit

if.then8.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  %call9.i = call i32 @of_clk_add_provider(ptr noundef %3, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef %call6.i) #5
  br label %ak4642_of_parse_mcko.exit

ak4642_of_parse_mcko.exit:                        ; preds = %if.then8.i, %if.end4.i.ak4642_of_parse_mcko.exit_crit_edge, %if.then.ak4642_of_parse_mcko.exit_crit_edge
  %retval.0.i = phi ptr [ null, %if.then.ak4642_of_parse_mcko.exit_crit_edge ], [ %call6.i, %if.then8.i ], [ %call6.i, %if.end4.i.ak4642_of_parse_mcko.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rate.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_name.i) #5
  %call4 = call ptr @of_match_device(ptr noundef nonnull @ak4642_of_match, ptr noundef %dev1) #5
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %ak4642_of_parse_mcko.exit.do.end_crit_edge, label %if.then6

ak4642_of_parse_mcko.exit.do.end_crit_edge:       ; preds = %ak4642_of_parse_mcko.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.then6:                                         ; preds = %ak4642_of_parse_mcko.exit
  call void @__sanitizer_cov_trace_pc() #7
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  %spec.select = select i1 %cmp.i, ptr null, ptr %retval.0.i
  %data = getelementptr inbounds %struct.of_device_id, ptr %call4, i32 0, i32 3
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  br label %if.end8

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data = getelementptr inbounds %struct.i2c_device_id, ptr %id, i32 0, i32 1
  %14 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %driver_data, align 4
  %16 = inttoptr i32 %15 to ptr
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then6
  %drvdata.1 = phi ptr [ %16, %if.else ], [ %13, %if.then6 ]
  %mcko.1 = phi ptr [ null, %if.else ], [ %spec.select, %if.then6 ]
  %tobool9.not = icmp eq ptr %drvdata.1, null
  br i1 %tobool9.not, label %if.end8.do.end_crit_edge, label %if.end11

if.end8.do.end_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %if.end8.do.end_crit_edge, %ak4642_of_parse_mcko.exit.do.end_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end11:                                         ; preds = %if.end8
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 8, i32 noundef 3520) #5
  %tobool13.not = icmp eq ptr %call.i, null
  br i1 %tobool13.not, label %if.end11.cleanup_crit_edge, label %if.end15

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %drvdata.1, ptr %call.i, align 4
  %mcko17 = getelementptr inbounds %struct.ak4642_priv, ptr %call.i, i32 0, i32 1
  %18 = ptrtoint ptr %mcko17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %mcko.1, ptr %mcko17, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %19 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %20 = ptrtoint ptr %drvdata.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %drvdata.1, align 4
  %call18 = call ptr @__devm_regmap_init_i2c(ptr noundef %i2c, ptr noundef %21, ptr noundef nonnull @ak4642_i2c_probe._key, ptr noundef nonnull @.str.6) #5
  %cmp.i44 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i44, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %call18 to i32
  br label %cleanup

if.end22:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  %call23 = call i32 @devm_snd_soc_register_component(ptr noundef %dev1, ptr noundef nonnull @soc_component_dev_ak4642, ptr noundef nonnull @ak4642_dai, i32 noundef 1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then20, %if.end11.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %22, %if.then20 ], [ %call23, %if.end22 ], [ -22, %do.end ], [ -12, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_fixed_rate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_simple_get(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ak4642_probe(ptr noundef %component) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %mcko = getelementptr inbounds %struct.ak4642_priv, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %mcko to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mcko, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call2 = tail call i32 @clk_get_rate(ptr noundef nonnull %5) #5
  tail call fastcc void @ak4642_set_mcko(ptr noundef %component, i32 noundef %call2)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ak4642_suspend(ptr nocapture noundef readonly %component) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call = tail call ptr @dev_get_regmap(ptr noundef %1, ptr noundef null) #5
  tail call void @regcache_cache_only(ptr noundef %call, i1 noundef zeroext true) #5
  tail call void @regcache_mark_dirty(ptr noundef %call) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ak4642_resume(ptr nocapture noundef readonly %component) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call = tail call ptr @dev_get_regmap(ptr noundef %1, ptr noundef null) #5
  tail call void @regcache_cache_only(ptr noundef %call, i1 noundef zeroext false) #5
  %call1 = tail call i32 @regcache_sync(ptr noundef %call) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ak4642_set_bias_level(ptr noundef %component, i32 noundef %level) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %level)
  %cond = icmp eq i32 %level, 0
  br i1 %cond, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 0, i32 noundef 0) #5
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 0, i32 noundef 64, i32 noundef 64) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ak4642_lout_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 4, label %entry.sw.epilog.sink.split_crit_edge
    i32 1, label %entry.sw.epilog.sink.split_crit_edge5
    i32 2, label %entry.sw.bb2_crit_edge
    i32 8, label %entry.sw.bb2_crit_edge6
  ]

entry.sw.bb2_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb2

entry.sw.epilog.sink.split_crit_edge5:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge6
  tail call void @msleep(i32 noundef 300) #5
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb2, %entry.sw.epilog.sink.split_crit_edge, %entry.sw.epilog.sink.split_crit_edge5
  %.sink = phi i32 [ 0, %sw.bb2 ], [ 64, %entry.sw.epilog.sink.split_crit_edge ], [ 64, %entry.sw.epilog.sink.split_crit_edge5 ]
  %call3 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 3, i32 noundef 64, i32 noundef %.sink) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ak4642_set_mcko(ptr noundef %component, i32 noundef %frequency) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %frequency to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %frequency, label %entry.cleanup_crit_edge [
    i32 2048000, label %entry.if.then_crit_edge
    i32 3072000, label %if.then.fold.split
    i32 4096000, label %if.then.fold.split16
    i32 6144000, label %if.then.fold.split17
    i32 1881600, label %if.then.fold.split18
    i32 2822400, label %if.then.fold.split19
    i32 3763200, label %if.then.fold.split20
    i32 5644800, label %if.then.fold.split21
    i32 0, label %if.then.fold.split22
    i32 8192000, label %if.then.fold.split23
    i32 12288000, label %if.then.fold.split24
    i32 7526400, label %if.then.fold.split25
    i32 11289600, label %if.then.fold.split26
    i32 1024000, label %if.then.fold.split27
    i32 1536000, label %if.then.fold.split28
    i32 940800, label %if.then.fold.split29
    i32 1411200, label %if.then.fold.split30
    i32 512000, label %if.then.fold.split31
    i32 768000, label %if.then.fold.split32
    i32 470400, label %if.then.fold.split33
    i32 705600, label %if.then.fold.split34
    i32 256000, label %if.then.fold.split35
    i32 384000, label %if.then.fold.split36
    i32 235200, label %if.then.fold.split37
    i32 352800, label %if.then.fold.split38
  ]

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.fold.split:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then.fold.split16:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then.fold.split17:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then.fold.split18:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then.fold.split19:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then.fold.split20:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then.fold.split21:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then.fold.split22:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then.fold.split23:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then.fold.split24:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then.fold.split25:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then.fold.split26:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then.fold.split27:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then.fold.split28:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then.fold.split29:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then.fold.split30:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then.fold.split31:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then.fold.split32:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then.fold.split33:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then.fold.split34:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then.fold.split35:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then.fold.split36:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then.fold.split37:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then.fold.split38:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then

if.then:                                          ; preds = %if.then.fold.split38, %if.then.fold.split37, %if.then.fold.split36, %if.then.fold.split35, %if.then.fold.split34, %if.then.fold.split33, %if.then.fold.split32, %if.then.fold.split31, %if.then.fold.split30, %if.then.fold.split29, %if.then.fold.split28, %if.then.fold.split27, %if.then.fold.split26, %if.then.fold.split25, %if.then.fold.split24, %if.then.fold.split23, %if.then.fold.split22, %if.then.fold.split21, %if.then.fold.split20, %if.then.fold.split19, %if.then.fold.split18, %if.then.fold.split17, %if.then.fold.split16, %if.then.fold.split, %entry.if.then_crit_edge
  %ps.04.lcssa = phi i32 [ 0, %entry.if.then_crit_edge ], [ 0, %if.then.fold.split ], [ 0, %if.then.fold.split16 ], [ 0, %if.then.fold.split17 ], [ 0, %if.then.fold.split18 ], [ 0, %if.then.fold.split19 ], [ 0, %if.then.fold.split20 ], [ 0, %if.then.fold.split21 ], [ 0, %if.then.fold.split22 ], [ 0, %if.then.fold.split23 ], [ 0, %if.then.fold.split24 ], [ 0, %if.then.fold.split25 ], [ 0, %if.then.fold.split26 ], [ 64, %if.then.fold.split27 ], [ 64, %if.then.fold.split28 ], [ 64, %if.then.fold.split29 ], [ 64, %if.then.fold.split30 ], [ 128, %if.then.fold.split31 ], [ 128, %if.then.fold.split32 ], [ 128, %if.then.fold.split33 ], [ 128, %if.then.fold.split34 ], [ 192, %if.then.fold.split35 ], [ 192, %if.then.fold.split36 ], [ 192, %if.then.fold.split37 ], [ 192, %if.then.fold.split38 ]
  %fs.03.lcssa = phi i32 [ 0, %entry.if.then_crit_edge ], [ 1, %if.then.fold.split ], [ 2, %if.then.fold.split16 ], [ 3, %if.then.fold.split17 ], [ 4, %if.then.fold.split18 ], [ 5, %if.then.fold.split19 ], [ 6, %if.then.fold.split20 ], [ 7, %if.then.fold.split21 ], [ 8, %if.then.fold.split22 ], [ 10, %if.then.fold.split23 ], [ 11, %if.then.fold.split24 ], [ 14, %if.then.fold.split25 ], [ 15, %if.then.fold.split26 ], [ 0, %if.then.fold.split27 ], [ 1, %if.then.fold.split28 ], [ 4, %if.then.fold.split29 ], [ 5, %if.then.fold.split30 ], [ 0, %if.then.fold.split31 ], [ 1, %if.then.fold.split32 ], [ 4, %if.then.fold.split33 ], [ 5, %if.then.fold.split34 ], [ 0, %if.then.fold.split35 ], [ 1, %if.then.fold.split36 ], [ 4, %if.then.fold.split37 ], [ 5, %if.then.fold.split38 ]
  %and6 = and i32 %fs.03.lcssa, 7
  %and8 = shl nuw nsw i32 %fs.03.lcssa, 2
  %shl9 = and i32 %and8, 32
  %or = or i32 %and6, %ps.04.lcssa
  %or10 = or i32 %or, %shl9
  %call = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 5, i32 noundef %or10) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ak4642_dai_set_sysclk(ptr nocapture noundef readonly %codec_dai, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  %6 = zext i32 %freq to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %freq, label %entry.cleanup_crit_edge [
    i32 11289600, label %entry.if.end_crit_edge
    i32 12288000, label %sw.bb2
    i32 12000000, label %sw.bb3
    i32 24000000, label %sw.bb4
    i32 13500000, label %sw.bb5
    i32 27000000, label %sw.bb6
    i32 19200000, label %entry.land.lhs.true_crit_edge
    i32 13000000, label %sw.bb8
    i32 26000000, label %sw.bb9
  ]

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %sw.bb9, %sw.bb8, %entry.land.lhs.true_crit_edge
  %pll.0 = phi i32 [ 240, %sw.bb9 ], [ 224, %sw.bb8 ], [ 128, %entry.land.lhs.true_crit_edge ]
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %5, align 4
  %extended_frequencies = getelementptr inbounds %struct.ak4642_drvdata, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %extended_frequencies to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %extended_frequencies, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool10.not = icmp eq i32 %10, 0
  br i1 %tobool10.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %entry.if.end_crit_edge
  %pll.018 = phi i32 [ %pll.0, %land.lhs.true.if.end_crit_edge ], [ 64, %entry.if.end_crit_edge ], [ 80, %sw.bb2 ], [ 96, %sw.bb3 ], [ 112, %sw.bb4 ], [ 192, %sw.bb5 ], [ 208, %sw.bb6 ]
  %call11 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 4, i32 noundef 240, i32 noundef %pll.018) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ak4642_dai_set_fmt(ptr nocapture noundef readonly %dai, i32 noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %2 = trunc i32 %fmt to i16
  %trunc = and i16 %2, -4096
  %3 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.34)
  switch i16 %trunc, label %entry.cleanup_crit_edge [
    i16 4096, label %sw.bb
    i16 16384, label %entry.sw.epilog_crit_edge
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %data.0 = phi i32 [ 3, %entry.sw.epilog_crit_edge ], [ 11, %sw.bb ]
  %bcko.0 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ 8, %sw.bb ]
  %call = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 1, i32 noundef 11, i32 noundef %data.0) #5
  %call5 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 4, i32 noundef 8, i32 noundef %bcko.0) #5
  %and6 = and i32 %fmt, 15
  %4 = zext i32 %and6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %and6, label %sw.epilog.cleanup_crit_edge [
    i32 3, label %sw.epilog.sw.epilog10_crit_edge
    i32 1, label %sw.bb8
  ]

sw.epilog.sw.epilog10_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog10

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb8:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog10

sw.epilog10:                                      ; preds = %sw.bb8, %sw.epilog.sw.epilog10_crit_edge
  %data.1 = phi i32 [ 3, %sw.bb8 ], [ 2, %sw.epilog.sw.epilog10_crit_edge ]
  %call12 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 4, i32 noundef 3, i32 noundef %data.1) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog10, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog10 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ak4642_dai_startup(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %0 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %2 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %component1, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @snd_soc_component_write(ptr noundef %3, i32 noundef 9, i32 noundef 145) #5
  %call2 = tail call i32 @snd_soc_component_write(ptr noundef %3, i32 noundef 12, i32 noundef 145) #5
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call3 = tail call i32 @snd_soc_component_update_bits(ptr noundef %3, i32 noundef 2, i32 noundef 5, i32 noundef 5) #5
  %call4 = tail call i32 @snd_soc_component_write(ptr noundef %3, i32 noundef 6, i32 noundef 60) #5
  %call5 = tail call i32 @snd_soc_component_write(ptr noundef %3, i32 noundef 7, i32 noundef 33) #5
  %call6 = tail call i32 @snd_soc_component_update_bits(ptr noundef %3, i32 noundef 0, i32 noundef 1, i32 noundef 1) #5
  %call7 = tail call i32 @snd_soc_component_update_bits(ptr noundef %3, i32 noundef 16, i32 noundef 1, i32 noundef 1) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ak4642_dai_shutdown(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %0 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.if.end_crit_edge, label %if.else

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %2 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %component1, align 4
  %call = tail call i32 @snd_soc_component_update_bits(ptr noundef %3, i32 noundef 0, i32 noundef 1, i32 noundef 0) #5
  %call2 = tail call i32 @snd_soc_component_update_bits(ptr noundef %3, i32 noundef 16, i32 noundef 1, i32 noundef 0) #5
  %call3 = tail call i32 @snd_soc_component_update_bits(ptr noundef %3, i32 noundef 7, i32 noundef 32, i32 noundef 0) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ak4642_dai_hw_params(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  %mcko = getelementptr inbounds %struct.ak4642_priv, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %mcko to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mcko, align 4
  %call2 = tail call i32 @clk_get_rate(ptr noundef %7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i, align 4
  %mul = shl i32 %9, 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %rate.0 = phi i32 [ %call2, %entry.if.end_crit_edge ], [ %mul, %if.then ]
  tail call fastcc void @ak4642_set_mcko(ptr noundef %1, i32 noundef %rate.0)
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105}
!llvm.module.flags = !{!107, !108, !109, !110, !111, !112, !113, !114}
!llvm.ident = !{!115}

!0 = !{ptr @__initcall__kmod_snd_soc_ak4642__294_704_ak4642_i2c_driver_init6, !1, !"__initcall__kmod_snd_soc_ak4642__294_704_ak4642_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/ak4642.c", i32 704, i32 1}
!2 = !{ptr @__exitcall_ak4642_i2c_driver_exit, !1, !"__exitcall_ak4642_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description295, !4, !"__UNIQUE_ID_description295", i1 false, i1 false}
!4 = !{!"../sound/soc/codecs/ak4642.c", i32 706, i32 1}
!5 = !{ptr @__UNIQUE_ID_author296, !6, !"__UNIQUE_ID_author296", i1 false, i1 false}
!6 = !{!"../sound/soc/codecs/ak4642.c", i32 707, i32 1}
!7 = !{ptr @__UNIQUE_ID_file297, !8, !"__UNIQUE_ID_file297", i1 false, i1 false}
!8 = !{!"../sound/soc/codecs/ak4642.c", i32 708, i32 1}
!9 = !{ptr @__UNIQUE_ID_license298, !8, !"__UNIQUE_ID_license298", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/codecs/ak4642.c", i32 697, i32 11}
!12 = !{ptr @ak4642_i2c_driver, !13, !"ak4642_i2c_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/ak4642.c", i32 695, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/ak4642.c", i32 658, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ak4642_i2c_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @ak4642_i2c_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @ak4642_i2c_probe._key, !23, !"_key", i1 false, i1 false}
!23 = !{!"../sound/soc/codecs/ak4642.c", i32 671, i32 11}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../sound/soc/codecs/ak4642.c", i32 614, i32 31}
!27 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/soc/codecs/ak4642.c", i32 617, i32 32}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/soc/codecs/ak4642.c", i32 620, i32 30}
!31 = !{ptr @soc_component_dev_ak4642, !32, !"soc_component_dev_ak4642", i1 false, i1 false}
!32 = !{!"../sound/soc/codecs/ak4642.c", i32 549, i32 46}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/soc/codecs/ak4642.c", i32 160, i32 2}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/soc/codecs/ak4642.c", i32 162, i32 2}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/soc/codecs/ak4642.c", i32 163, i32 2}
!39 = !{ptr @ak4642_snd_controls, !40, !"ak4642_snd_controls", i1 false, i1 false}
!40 = !{!"../sound/soc/codecs/ak4642.c", i32 158, i32 38}
!41 = !{ptr @out_tlv, !42, !"out_tlv", i1 false, i1 false}
!42 = !{!"../sound/soc/codecs/ak4642.c", i32 156, i32 14}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/soc/codecs/ak4642.c", i32 199, i32 2}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/soc/codecs/ak4642.c", i32 200, i32 2}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/soc/codecs/ak4642.c", i32 201, i32 2}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/soc/codecs/ak4642.c", i32 203, i32 2}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/soc/codecs/ak4642.c", i32 204, i32 2}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/soc/codecs/ak4642.c", i32 205, i32 2}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/soc/codecs/ak4642.c", i32 208, i32 2}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/soc/codecs/ak4642.c", i32 210, i32 2}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/soc/codecs/ak4642.c", i32 218, i32 2}
!61 = !{ptr @ak4642_dapm_widgets, !62, !"ak4642_dapm_widgets", i1 false, i1 false}
!62 = !{!"../sound/soc/codecs/ak4642.c", i32 196, i32 41}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/soc/codecs/ak4642.c", i32 167, i32 2}
!65 = !{ptr @ak4642_headphone_control, !66, !"ak4642_headphone_control", i1 false, i1 false}
!66 = !{!"../sound/soc/codecs/ak4642.c", i32 166, i32 38}
!67 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/soc/codecs/ak4642.c", i32 170, i32 2}
!69 = !{ptr @ak4642_lout_mixer_controls, !70, !"ak4642_lout_mixer_controls", i1 false, i1 false}
!70 = !{!"../sound/soc/codecs/ak4642.c", i32 169, i32 38}
!71 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/soc/codecs/ak4642.c", i32 237, i32 17}
!73 = !{ptr @ak4642_intercon, !74, !"ak4642_intercon", i1 false, i1 false}
!74 = !{!"../sound/soc/codecs/ak4642.c", i32 221, i32 40}
!75 = distinct !{null, !76, !"fs_list", i1 false, i1 false}
!76 = !{!"../sound/soc/codecs/ak4642.c", i32 432, i32 19}
!77 = distinct !{null, !78, !"ps_list", i1 false, i1 false}
!78 = !{!"../sound/soc/codecs/ak4642.c", i32 446, i32 19}
!79 = !{ptr @.str.30, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/soc/codecs/ak4642.c", i32 505, i32 10}
!81 = !{ptr @.str.31, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/soc/codecs/ak4642.c", i32 513, i32 18}
!83 = !{ptr @ak4642_dai, !84, !"ak4642_dai", i1 false, i1 false}
!84 = !{!"../sound/soc/codecs/ak4642.c", i32 504, i32 34}
!85 = !{ptr @ak4642_dai_ops, !86, !"ak4642_dai_ops", i1 false, i1 false}
!86 = !{!"../sound/soc/codecs/ak4642.c", i32 496, i32 37}
!87 = !{ptr @ak4642_of_match, !88, !"ak4642_of_match", i1 false, i1 false}
!88 = !{!"../sound/soc/codecs/ak4642.c", i32 679, i32 34}
!89 = !{ptr @ak4642_drvdata, !90, !"ak4642_drvdata", i1 false, i1 false}
!90 = !{!"../sound/soc/codecs/ak4642.c", i32 592, i32 36}
!91 = !{ptr @ak4642_regmap, !92, !"ak4642_regmap", i1 false, i1 false}
!92 = !{!"../sound/soc/codecs/ak4642.c", i32 565, i32 35}
!93 = !{ptr @ak4643_reg, !94, !"ak4643_reg", i1 false, i1 false}
!94 = !{!"../sound/soc/codecs/ak4642.c", i32 243, i32 33}
!95 = !{ptr @ak4643_drvdata, !96, !"ak4643_drvdata", i1 false, i1 false}
!96 = !{!"../sound/soc/codecs/ak4642.c", i32 596, i32 36}
!97 = !{ptr @ak4643_regmap, !98, !"ak4643_regmap", i1 false, i1 false}
!98 = !{!"../sound/soc/codecs/ak4642.c", i32 574, i32 35}
!99 = !{ptr @ak4648_drvdata, !100, !"ak4648_drvdata", i1 false, i1 false}
!100 = !{!"../sound/soc/codecs/ak4642.c", i32 600, i32 36}
!101 = !{ptr @ak4648_regmap, !102, !"ak4648_regmap", i1 false, i1 false}
!102 = !{!"../sound/soc/codecs/ak4642.c", i32 583, i32 35}
!103 = !{ptr @ak4648_reg, !104, !"ak4648_reg", i1 false, i1 false}
!104 = !{!"../sound/soc/codecs/ak4642.c", i32 264, i32 33}
!105 = !{ptr @ak4642_i2c_id, !106, !"ak4642_i2c_id", i1 false, i1 false}
!106 = !{!"../sound/soc/codecs/ak4642.c", i32 687, i32 35}
!107 = !{i32 1, !"wchar_size", i32 2}
!108 = !{i32 1, !"min_enum_size", i32 4}
!109 = !{i32 8, !"branch-target-enforcement", i32 0}
!110 = !{i32 8, !"sign-return-address", i32 0}
!111 = !{i32 8, !"sign-return-address-all", i32 0}
!112 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!113 = !{i32 7, !"uwtable", i32 1}
!114 = !{i32 7, !"frame-pointer", i32 2}
!115 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!116 = !{!"auto-init"}
