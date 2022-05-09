; ModuleID = '/llk/IR_all_yes/sound/soc/kirkwood/armada-370-db.c_pt.bc'
source_filename = "../sound/soc/kirkwood/armada-370-db.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.91, ptr }
%union.anon.91 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_dai_link_component = type { ptr, ptr, ptr }
%struct.snd_soc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@__initcall__kmod_snd_soc_armada_370_db__238_151_a370db_driver_init6 = internal global ptr @a370db_driver_init, section ".initcall6.init", align 4
@a370db_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @a370db_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @a370db_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_a370db_driver_exit = internal global ptr @a370db_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author239 = internal constant [84 x i8] c"snd_soc_armada_370_db.author=Thomas Petazzoni <thomas.petazzoni@free-electrons.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description240 = internal constant [63 x i8] c"snd_soc_armada_370_db.description=ALSA SoC a370db audio client\00", section ".modinfo", align 1
@__UNIQUE_ID_file241 = internal constant [68 x i8] c"snd_soc_armada_370_db.file=sound/soc/kirkwood/snd-soc-armada-370-db\00", section ".modinfo", align 1
@__UNIQUE_ID_license242 = internal constant [34 x i8] c"snd_soc_armada_370_db.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias243 = internal constant [50 x i8] c"snd_soc_armada_370_db.alias=platform:a370db-audio\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"a370db-audio\00", [19 x i8] zeroinitializer }, align 32
@a370db_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,a370db-audio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@a370db = internal global { %struct.snd_soc_card, [184 x i8] } { %struct.snd_soc_card { ptr @.str.3, ptr null, ptr null, ptr null, [32 x i8] zeroinitializer, ptr null, ptr null, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @a370db_dai, i32 3, %struct.list_head zeroinitializer, i32 0, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, ptr null, i32 0, ptr @a370db_dapm_widgets, i32 2, ptr @a370db_route, i32 4, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.snd_soc_dapm_context zeroinitializer, %struct.snd_soc_dapm_stats zeroinitializer, ptr null, ptr null, %struct.work_struct zeroinitializer, i32 0, i8 0, ptr null }, [184 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"marvell,audio-controller\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"marvell,audio-codec\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"a370db\00", [25 x i8] zeroinitializer }, align 32
@a370db_route = internal constant { [4 x %struct.snd_soc_dapm_route], [48 x i8] } { [4 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.4, ptr null, ptr @.str.7, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.4, ptr null, ptr @.str.8, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.9, ptr null, ptr @.str.5, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.9, ptr null, ptr @.str.5, ptr null, %struct.snd_soc_dobj zeroinitializer }], [48 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Out Jack\00", [23 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"In Jack\00", [24 x i8] zeroinitializer }, align 32
@a370db_dapm_widgets = internal constant { [2 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [88 x i8] } { [2 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 12, ptr @.str.4, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 14, ptr @.str.5, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [88 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"HPL\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"HPR\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AIN1L\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"CS42L51\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"analog\00", [25 x i8] zeroinitializer }, align 32
@analog_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.17 }], [20 x i8] zeroinitializer }, align 32
@analog_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.18 }], [20 x i8] zeroinitializer }, align 32
@analog_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@a370db_ops = internal constant { %struct.snd_soc_ops, [40 x i8] } { %struct.snd_soc_ops { ptr null, ptr null, ptr @a370db_hw_params, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"S/PDIF out\00", [21 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"spdif-out\00", [22 x i8] zeroinitializer }, align 32
@spdif_out_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.19 }], [20 x i8] zeroinitializer }, align 32
@spdif_out_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.20 }], [20 x i8] zeroinitializer }, align 32
@spdif_out_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"S/PDIF in\00", [22 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"spdif-in\00", [23 x i8] zeroinitializer }, align 32
@spdif_in_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.19 }], [20 x i8] zeroinitializer }, align 32
@spdif_in_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.21 }], [20 x i8] zeroinitializer }, align 32
@spdif_in_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } zeroinitializer, align 32
@a370db_dai = internal global { [3 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }], [68 x i8] } { [3 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }] [{ ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.10, ptr @.str.11, ptr @analog_cpus, i32 1, ptr @analog_codecs, i32 1, ptr @analog_platforms, i32 1, i32 0, ptr null, i32 0, i32 16385, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr @a370db_ops, ptr null, i8 0, i8 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.12, ptr @.str.13, ptr @spdif_out_cpus, i32 1, ptr @spdif_out_codecs, i32 1, ptr @spdif_out_platforms, i32 1, i32 0, ptr null, i32 0, i32 16385, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i8 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.14, ptr @.str.15, ptr @spdif_in_cpus, i32 1, ptr @spdif_in_codecs, i32 1, ptr @spdif_in_platforms, i32 1, i32 0, ptr null, i32 0, i32 16385, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i8 0, i8 0, %struct.snd_soc_dobj zeroinitializer }], [68 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"i2s\00", [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cs42l51-hifi\00", [19 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"spdif\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dit-hifi\00", [23 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dir-hifi\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.22 = private unnamed_addr constant [14 x i8] c"a370db_driver\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 143, i32 31 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 145, i32 11 }
@___asan_gen_.28 = private unnamed_addr constant [14 x i8] c"a370db_dt_ids\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 137, i32 34 }
@___asan_gen_.31 = private unnamed_addr constant [7 x i8] c"a370db\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 94, i32 28 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 113, i32 6 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 118, i32 6 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 95, i32 10 }
@___asan_gen_.43 = private unnamed_addr constant [13 x i8] c"a370db_route\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 50, i32 40 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 46, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 47, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant [20 x i8] c"a370db_dapm_widgets\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 45, i32 41 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 51, i32 22 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 52, i32 22 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 53, i32 4 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 74, i32 10 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 75, i32 17 }
@___asan_gen_.70 = private unnamed_addr constant [12 x i8] c"analog_cpus\00", align 1
@___asan_gen_.73 = private unnamed_addr constant [14 x i8] c"analog_codecs\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [17 x i8] c"analog_platforms\00", align 1
@___asan_gen_.79 = private unnamed_addr constant [11 x i8] c"a370db_ops\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 41, i32 33 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 81, i32 10 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 82, i32 17 }
@___asan_gen_.88 = private unnamed_addr constant [15 x i8] c"spdif_out_cpus\00", align 1
@___asan_gen_.91 = private unnamed_addr constant [17 x i8] c"spdif_out_codecs\00", align 1
@___asan_gen_.94 = private unnamed_addr constant [20 x i8] c"spdif_out_platforms\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 87, i32 10 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 88, i32 17 }
@___asan_gen_.103 = private unnamed_addr constant [14 x i8] c"spdif_in_cpus\00", align 1
@___asan_gen_.106 = private unnamed_addr constant [16 x i8] c"spdif_in_codecs\00", align 1
@___asan_gen_.109 = private unnamed_addr constant [19 x i8] c"spdif_in_platforms\00", align 1
@___asan_gen_.112 = private unnamed_addr constant [11 x i8] c"a370db_dai\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 72, i32 32 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 57, i32 1 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 62, i32 1 }
@___asan_gen_.127 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.128 = private constant [38 x i8] c"../sound/soc/kirkwood/armada-370-db.c\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.128, i32 67, i32 1 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @__UNIQUE_ID_alias243, ptr @__UNIQUE_ID_author239, ptr @__UNIQUE_ID_description240, ptr @__UNIQUE_ID_file241, ptr @__UNIQUE_ID_license242, ptr @__exitcall_a370db_driver_exit, ptr @__initcall__kmod_snd_soc_armada_370_db__238_151_a370db_driver_init6, ptr @a370db_driver_exit, ptr @a370db_driver, ptr @.str, ptr @a370db_dt_ids, ptr @a370db, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @a370db_route, ptr @.str.4, ptr @.str.5, ptr @a370db_dapm_widgets, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @analog_cpus, ptr @analog_codecs, ptr @analog_platforms, ptr @a370db_ops, ptr @.str.12, ptr @.str.13, ptr @spdif_out_cpus, ptr @spdif_out_codecs, ptr @spdif_out_platforms, ptr @.str.14, ptr @.str.15, ptr @spdif_in_cpus, ptr @spdif_in_codecs, ptr @spdif_in_platforms, ptr @a370db_dai, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a370db_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a370db_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a370db to i32), i32 648, i32 832, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a370db_route to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a370db_dapm_widgets to i32), i32 360, i32 448, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @analog_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @analog_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @analog_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a370db_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spdif_out_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spdif_out_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spdif_out_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spdif_in_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spdif_in_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spdif_in_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a370db_dai to i32), i32 348, i32 416, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @a370db_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @a370db_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @a370db_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @a370db_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @a370db_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %args.i46 = alloca %struct.of_phandle_args, align 4
  %args.i40 = alloca %struct.of_phandle_args, align 4
  %args.i34 = alloca %struct.of_phandle_args, align 4
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  store ptr %dev, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @a370db, i32 0, i32 5), align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #4
  %2 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.of_parse_phandle.exit_crit_edge

entry.of_parse_phandle.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %of_parse_phandle.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %args.i, align 4
  br label %of_parse_phandle.exit

of_parse_phandle.exit:                            ; preds = %if.end.i, %entry.of_parse_phandle.exit_crit_edge
  %retval.0.i = phi ptr [ %4, %if.end.i ], [ null, %entry.of_parse_phandle.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #4
  %5 = load ptr, ptr getelementptr inbounds ([3 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }], ptr @a370db_dai, i32 0, i32 0, i32 2), align 4
  %of_node3 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %of_node3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %retval.0.i, ptr %of_node3, align 4
  %7 = load ptr, ptr getelementptr inbounds ([3 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }], ptr @a370db_dai, i32 0, i32 0, i32 2), align 4
  %of_node4 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %of_node4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node4, align 4
  %10 = load ptr, ptr getelementptr inbounds ([3 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }], ptr @a370db_dai, i32 0, i32 0, i32 6), align 4
  %of_node5 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %of_node5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %9, ptr %of_node5, align 4
  %12 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i34) #4
  %14 = call ptr @memset(ptr %args.i34, i32 255, i32 72)
  %call.i35 = call i32 @__of_parse_phandle_with_args(ptr noundef %13, ptr noundef nonnull @.str.2, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i34) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i35)
  %tobool.not.i36 = icmp eq i32 %call.i35, 0
  br i1 %tobool.not.i36, label %if.end.i37, label %of_parse_phandle.exit.of_parse_phandle.exit39_crit_edge

of_parse_phandle.exit.of_parse_phandle.exit39_crit_edge: ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %of_parse_phandle.exit39

if.end.i37:                                       ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #6
  %15 = ptrtoint ptr %args.i34 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %args.i34, align 4
  br label %of_parse_phandle.exit39

of_parse_phandle.exit39:                          ; preds = %if.end.i37, %of_parse_phandle.exit.of_parse_phandle.exit39_crit_edge
  %retval.0.i38 = phi ptr [ %16, %if.end.i37 ], [ null, %of_parse_phandle.exit.of_parse_phandle.exit39_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i34) #4
  %17 = load ptr, ptr getelementptr inbounds ([3 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }], ptr @a370db_dai, i32 0, i32 0, i32 4), align 4
  %of_node9 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %of_node9 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %retval.0.i38, ptr %of_node9, align 4
  %19 = load ptr, ptr getelementptr inbounds ([3 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }], ptr @a370db_dai, i32 0, i32 0, i32 2), align 4
  %of_node10 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %of_node10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %of_node10, align 4
  %22 = load ptr, ptr getelementptr inbounds ([3 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }], ptr @a370db_dai, i32 0, i32 1, i32 2), align 4
  %of_node11 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %of_node11 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %21, ptr %of_node11, align 4
  %24 = load ptr, ptr getelementptr inbounds ([3 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }], ptr @a370db_dai, i32 0, i32 0, i32 2), align 4
  %of_node12 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %of_node12 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %of_node12, align 4
  %27 = load ptr, ptr getelementptr inbounds ([3 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }], ptr @a370db_dai, i32 0, i32 1, i32 6), align 4
  %of_node13 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %of_node13 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %26, ptr %of_node13, align 4
  %29 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i40) #4
  %31 = call ptr @memset(ptr %args.i40, i32 255, i32 72)
  %call.i41 = call i32 @__of_parse_phandle_with_args(ptr noundef %30, ptr noundef nonnull @.str.2, ptr noundef null, i32 noundef 0, i32 noundef 1, ptr noundef nonnull %args.i40) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41)
  %tobool.not.i42 = icmp eq i32 %call.i41, 0
  br i1 %tobool.not.i42, label %if.end.i43, label %of_parse_phandle.exit39.of_parse_phandle.exit45_crit_edge

of_parse_phandle.exit39.of_parse_phandle.exit45_crit_edge: ; preds = %of_parse_phandle.exit39
  call void @__sanitizer_cov_trace_pc() #6
  br label %of_parse_phandle.exit45

if.end.i43:                                       ; preds = %of_parse_phandle.exit39
  call void @__sanitizer_cov_trace_pc() #6
  %32 = ptrtoint ptr %args.i40 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %args.i40, align 4
  br label %of_parse_phandle.exit45

of_parse_phandle.exit45:                          ; preds = %if.end.i43, %of_parse_phandle.exit39.of_parse_phandle.exit45_crit_edge
  %retval.0.i44 = phi ptr [ %33, %if.end.i43 ], [ null, %of_parse_phandle.exit39.of_parse_phandle.exit45_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i40) #4
  %34 = load ptr, ptr getelementptr inbounds ([3 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }], ptr @a370db_dai, i32 0, i32 1, i32 4), align 4
  %of_node17 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %of_node17 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %retval.0.i44, ptr %of_node17, align 4
  %36 = load ptr, ptr getelementptr inbounds ([3 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }], ptr @a370db_dai, i32 0, i32 0, i32 2), align 4
  %of_node18 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %of_node18 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %of_node18, align 4
  %39 = load ptr, ptr getelementptr inbounds ([3 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }], ptr @a370db_dai, i32 0, i32 2, i32 2), align 4
  %of_node19 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %of_node19 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %38, ptr %of_node19, align 4
  %41 = load ptr, ptr getelementptr inbounds ([3 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }], ptr @a370db_dai, i32 0, i32 0, i32 2), align 4
  %of_node20 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %of_node20 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %of_node20, align 4
  %44 = load ptr, ptr getelementptr inbounds ([3 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }], ptr @a370db_dai, i32 0, i32 2, i32 6), align 4
  %of_node21 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %of_node21 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %43, ptr %of_node21, align 4
  %46 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i46) #4
  %48 = call ptr @memset(ptr %args.i46, i32 255, i32 72)
  %call.i47 = call i32 @__of_parse_phandle_with_args(ptr noundef %47, ptr noundef nonnull @.str.2, ptr noundef null, i32 noundef 0, i32 noundef 2, ptr noundef nonnull %args.i46) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47)
  %tobool.not.i48 = icmp eq i32 %call.i47, 0
  br i1 %tobool.not.i48, label %if.end.i49, label %of_parse_phandle.exit45.of_parse_phandle.exit51_crit_edge

of_parse_phandle.exit45.of_parse_phandle.exit51_crit_edge: ; preds = %of_parse_phandle.exit45
  call void @__sanitizer_cov_trace_pc() #6
  br label %of_parse_phandle.exit51

if.end.i49:                                       ; preds = %of_parse_phandle.exit45
  call void @__sanitizer_cov_trace_pc() #6
  %49 = ptrtoint ptr %args.i46 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %args.i46, align 4
  br label %of_parse_phandle.exit51

of_parse_phandle.exit51:                          ; preds = %if.end.i49, %of_parse_phandle.exit45.of_parse_phandle.exit51_crit_edge
  %retval.0.i50 = phi ptr [ %50, %if.end.i49 ], [ null, %of_parse_phandle.exit45.of_parse_phandle.exit51_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i46) #4
  %51 = load ptr, ptr getelementptr inbounds ([3 x { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }], ptr @a370db_dai, i32 0, i32 2, i32 4), align 4
  %of_node25 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %of_node25 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %retval.0.i50, ptr %of_node25, align 4
  %53 = load ptr, ptr getelementptr inbounds (%struct.snd_soc_card, ptr @a370db, i32 0, i32 5), align 4
  %call27 = call i32 @devm_snd_soc_register_card(ptr noundef %53, ptr noundef nonnull @a370db) #4
  ret i32 %call27
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_card(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @a370db_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dais, align 4
  %num_cpus = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %num_cpus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_cpus, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 48000, i32 %9)
  %switch.selectcmp = icmp eq i32 %9, 48000
  %switch.select = select i1 %switch.selectcmp, i32 12288000, i32 11289600
  call void @__sanitizer_cov_trace_const_cmp4(i32 96000, i32 %9)
  %switch.selectcmp5 = icmp eq i32 %9, 96000
  %switch.select6 = select i1 %switch.selectcmp5, i32 24576000, i32 %switch.select
  %call3 = tail call i32 @snd_soc_dai_set_sysclk(ptr noundef %7, i32 noundef 0, i32 noundef %switch.select6, i32 noundef 0) #4
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_set_sysclk(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !55, !56, !57, !58, !60, !62, !63, !64, !65, !66, !68, !69, !70, !71}
!llvm.module.flags = !{!73, !74, !75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !{ptr @__initcall__kmod_snd_soc_armada_370_db__238_151_a370db_driver_init6, !1, !"__initcall__kmod_snd_soc_armada_370_db__238_151_a370db_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/kirkwood/armada-370-db.c", i32 151, i32 1}
!2 = !{ptr @__exitcall_a370db_driver_exit, !1, !"__exitcall_a370db_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author239, !4, !"__UNIQUE_ID_author239", i1 false, i1 false}
!4 = !{!"../sound/soc/kirkwood/armada-370-db.c", i32 153, i32 1}
!5 = !{ptr @__UNIQUE_ID_description240, !6, !"__UNIQUE_ID_description240", i1 false, i1 false}
!6 = !{!"../sound/soc/kirkwood/armada-370-db.c", i32 154, i32 1}
!7 = !{ptr @__UNIQUE_ID_file241, !8, !"__UNIQUE_ID_file241", i1 false, i1 false}
!8 = !{!"../sound/soc/kirkwood/armada-370-db.c", i32 155, i32 1}
!9 = !{ptr @__UNIQUE_ID_license242, !8, !"__UNIQUE_ID_license242", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias243, !11, !"__UNIQUE_ID_alias243", i1 false, i1 false}
!11 = !{!"../sound/soc/kirkwood/armada-370-db.c", i32 156, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/kirkwood/armada-370-db.c", i32 145, i32 11}
!14 = !{ptr @a370db_driver, !15, !"a370db_driver", i1 false, i1 false}
!15 = !{!"../sound/soc/kirkwood/armada-370-db.c", i32 143, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/kirkwood/armada-370-db.c", i32 113, i32 6}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/kirkwood/armada-370-db.c", i32 118, i32 6}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/soc/kirkwood/armada-370-db.c", i32 95, i32 10}
!22 = !{ptr @a370db, !23, !"a370db", i1 false, i1 false}
!23 = !{!"../sound/soc/kirkwood/armada-370-db.c", i32 94, i32 28}
!24 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/kirkwood/armada-370-db.c", i32 46, i32 2}
!26 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/kirkwood/armada-370-db.c", i32 47, i32 2}
!28 = !{ptr @a370db_dapm_widgets, !29, !"a370db_dapm_widgets", i1 false, i1 false}
!29 = !{!"../sound/soc/kirkwood/armada-370-db.c", i32 45, i32 41}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/soc/kirkwood/armada-370-db.c", i32 51, i32 22}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/soc/kirkwood/armada-370-db.c", i32 52, i32 22}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/soc/kirkwood/armada-370-db.c", i32 53, i32 4}
!36 = !{ptr @a370db_route, !37, !"a370db_route", i1 false, i1 false}
!37 = !{!"../sound/soc/kirkwood/armada-370-db.c", i32 50, i32 40}
!38 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/kirkwood/armada-370-db.c", i32 74, i32 10}
!40 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/kirkwood/armada-370-db.c", i32 75, i32 17}
!42 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/soc/kirkwood/armada-370-db.c", i32 81, i32 10}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/kirkwood/armada-370-db.c", i32 82, i32 17}
!46 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/soc/kirkwood/armada-370-db.c", i32 87, i32 10}
!48 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/soc/kirkwood/armada-370-db.c", i32 88, i32 17}
!50 = !{ptr @a370db_dai, !51, !"a370db_dai", i1 false, i1 false}
!51 = !{!"../sound/soc/kirkwood/armada-370-db.c", i32 72, i32 32}
!52 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/soc/kirkwood/armada-370-db.c", i32 57, i32 1}
!54 = !{ptr @analog_cpus, !53, !"analog_cpus", i1 false, i1 false}
!55 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @analog_codecs, !53, !"analog_codecs", i1 false, i1 false}
!57 = !{ptr @analog_platforms, !53, !"analog_platforms", i1 false, i1 false}
!58 = !{ptr @a370db_ops, !59, !"a370db_ops", i1 false, i1 false}
!59 = !{!"../sound/soc/kirkwood/armada-370-db.c", i32 41, i32 33}
!60 = !{ptr @.str.19, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/kirkwood/armada-370-db.c", i32 62, i32 1}
!62 = !{ptr @spdif_out_cpus, !61, !"spdif_out_cpus", i1 false, i1 false}
!63 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @spdif_out_codecs, !61, !"spdif_out_codecs", i1 false, i1 false}
!65 = !{ptr @spdif_out_platforms, !61, !"spdif_out_platforms", i1 false, i1 false}
!66 = !{ptr @spdif_in_cpus, !67, !"spdif_in_cpus", i1 false, i1 false}
!67 = !{!"../sound/soc/kirkwood/armada-370-db.c", i32 67, i32 1}
!68 = !{ptr @.str.21, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @spdif_in_codecs, !67, !"spdif_in_codecs", i1 false, i1 false}
!70 = !{ptr @spdif_in_platforms, !67, !"spdif_in_platforms", i1 false, i1 false}
!71 = !{ptr @a370db_dt_ids, !72, !"a370db_dt_ids", i1 false, i1 false}
!72 = !{!"../sound/soc/kirkwood/armada-370-db.c", i32 137, i32 34}
!73 = !{i32 1, !"wchar_size", i32 2}
!74 = !{i32 1, !"min_enum_size", i32 4}
!75 = !{i32 8, !"branch-target-enforcement", i32 0}
!76 = !{i32 8, !"sign-return-address", i32 0}
!77 = !{i32 8, !"sign-return-address-all", i32 0}
!78 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!79 = !{i32 7, !"uwtable", i32 1}
!80 = !{i32 7, !"frame-pointer", i32 2}
!81 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
