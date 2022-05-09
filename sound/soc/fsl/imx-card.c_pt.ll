; ModuleID = '/llk/IR_all_yes/sound/soc/fsl/imx-card.c_pt.bc'
source_filename = "../sound/soc/fsl/imx-card.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.imx_akcodec_fs_mul = type { i32, i32, i32, i32 }
%struct.imx_akcodec_tdm_fs_mul = type { i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_soc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_pcm_hw_constraint_list = type { ptr, i32, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.imx_card_data = type { ptr, ptr, ptr, %struct.snd_soc_card, i32, i32, i32 }
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }
%struct.imx_card_plat_data = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_dai_link = type { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i24, %struct.snd_soc_dobj }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.104, ptr }
%union.anon.104 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_dai_link_component = type { ptr, ptr, ptr }
%struct.dai_link_data = type { i32, i32, i32, i8 }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
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
%struct.snd_pcm_hw_rule = type { i32, i32, [5 x i32], ptr, ptr }

@__initcall__kmod_snd_soc_imx_card__298_851_imx_card_driver_init6 = internal global ptr @imx_card_driver_init, section ".initcall6.init", align 4
@imx_card_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @imx_card_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @imx_card_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snd_soc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_imx_card_driver_exit = internal global ptr @imx_card_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description299 = internal constant [64 x i8] c"snd_soc_imx_card.description=Freescale i.MX ASoC Machine Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file300 = internal constant [53 x i8] c"snd_soc_imx_card.file=sound/soc/fsl/snd-soc-imx-card\00", section ".modinfo", align 1
@__UNIQUE_ID_license301 = internal constant [32 x i8] c"snd_soc_imx_card.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias302 = internal constant [41 x i8] c"snd_soc_imx_card.alias=platform:imx-card\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"imx-card\00", [23 x i8] zeroinitializer }, align 32
@imx_card_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx-audio-card\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@snd_soc_pm_ops = external dso_local constant %struct.dev_pm_ops, align 4
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Playback\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"CPU-Playback\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%d %s\00", [26 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ASRC-Playback\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CPU-Capture\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Capture\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ASRC-Capture\00", [19 x i8] zeroinitializer }, align 32
@akcodec_rates = internal constant { [15 x i32], [36 x i8] } { [15 x i32] [i32 8000, i32 11025, i32 16000, i32 22050, i32 32000, i32 44100, i32 48000, i32 88200, i32 96000, i32 176400, i32 192000, i32 352800, i32 384000, i32 705600, i32 768000], [36 x i8] zeroinitializer }, align 32
@akcodec_tdm_rates = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 8000, i32 16000, i32 32000, i32 48000, i32 96000], [44 x i8] zeroinitializer }, align 32
@ak4458_fs_mul = internal global { [7 x %struct.imx_akcodec_fs_mul], [48 x i8] } { [7 x %struct.imx_akcodec_fs_mul] [%struct.imx_akcodec_fs_mul { i32 8000, i32 24000, i32 256, i32 1024 }, %struct.imx_akcodec_fs_mul { i32 32000, i32 32000, i32 256, i32 1024 }, %struct.imx_akcodec_fs_mul { i32 44100, i32 48000, i32 256, i32 768 }, %struct.imx_akcodec_fs_mul { i32 88200, i32 96000, i32 256, i32 512 }, %struct.imx_akcodec_fs_mul { i32 176400, i32 192000, i32 128, i32 256 }, %struct.imx_akcodec_fs_mul { i32 352800, i32 384000, i32 32, i32 128 }, %struct.imx_akcodec_fs_mul { i32 705600, i32 768000, i32 16, i32 64 }], [48 x i8] zeroinitializer }, align 32
@ak4458_tdm_fs_mul = internal global { [3 x %struct.imx_akcodec_tdm_fs_mul], [60 x i8] } { [3 x %struct.imx_akcodec_tdm_fs_mul] [%struct.imx_akcodec_tdm_fs_mul { i32 128, i32 128, i32 256 }, %struct.imx_akcodec_tdm_fs_mul { i32 256, i32 256, i32 512 }, %struct.imx_akcodec_tdm_fs_mul { i32 512, i32 512, i32 1024 }], [60 x i8] zeroinitializer }, align 32
@ak4458_channels = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 1, i32 2, i32 4, i32 6, i32 8, i32 10, i32 12, i32 14, i32 16], [60 x i8] zeroinitializer }, align 32
@ak4458_tdm_channels = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 16], [60 x i8] zeroinitializer }, align 32
@ak4497_fs_mul = internal global { [6 x %struct.imx_akcodec_fs_mul], [32 x i8] } { [6 x %struct.imx_akcodec_fs_mul] [%struct.imx_akcodec_fs_mul { i32 8000, i32 32000, i32 256, i32 1024 }, %struct.imx_akcodec_fs_mul { i32 44100, i32 48000, i32 256, i32 512 }, %struct.imx_akcodec_fs_mul { i32 88200, i32 96000, i32 256, i32 256 }, %struct.imx_akcodec_fs_mul { i32 176400, i32 192000, i32 128, i32 128 }, %struct.imx_akcodec_fs_mul { i32 352800, i32 384000, i32 128, i32 128 }, %struct.imx_akcodec_fs_mul { i32 705600, i32 768000, i32 64, i32 64 }], [32 x i8] zeroinitializer }, align 32
@ak5558_fs_mul = internal global { [6 x %struct.imx_akcodec_fs_mul], [32 x i8] } { [6 x %struct.imx_akcodec_fs_mul] [%struct.imx_akcodec_fs_mul { i32 8000, i32 32000, i32 512, i32 1024 }, %struct.imx_akcodec_fs_mul { i32 44100, i32 48000, i32 512, i32 512 }, %struct.imx_akcodec_fs_mul { i32 88200, i32 96000, i32 256, i32 256 }, %struct.imx_akcodec_fs_mul { i32 176400, i32 192000, i32 128, i32 128 }, %struct.imx_akcodec_fs_mul { i32 352800, i32 384000, i32 64, i32 64 }, %struct.imx_akcodec_fs_mul { i32 705600, i32 768000, i32 32, i32 32 }], [32 x i8] zeroinitializer }, align 32
@ak5558_tdm_fs_mul = internal global { [3 x %struct.imx_akcodec_tdm_fs_mul], [60 x i8] } { [3 x %struct.imx_akcodec_tdm_fs_mul] [%struct.imx_akcodec_tdm_fs_mul { i32 128, i32 128, i32 256 }, %struct.imx_akcodec_tdm_fs_mul { i32 256, i32 256, i32 512 }, %struct.imx_akcodec_tdm_fs_mul { i32 512, i32 512, i32 1024 }], [60 x i8] zeroinitializer }, align 32
@ak5558_channels = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1, i32 2, i32 4, i32 6, i32 8], [44 x i8] zeroinitializer }, align 32
@ak5558_tdm_channels = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8], [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"snd_soc_register_card failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"model\00", [26 x i8] zeroinitializer }, align 32
@imx_card_parse_of._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.12, i32 492, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Error parsing card name: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"imx_card_parse_of\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sound/soc/fsl/imx-card.c\00", [39 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@imx_card_parse_of._entry_ptr = internal global ptr @imx_card_parse_of._entry, section ".printk_index", align 4
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"audio-routing\00", [18 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"link-name\00", [22 x i8] zeroinitializer }, align 32
@imx_card_parse_of._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.11, ptr @.str.12, i32 534, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"error getting codec dai_link name\0A\00", [61 x i8] zeroinitializer }, align 32
@imx_card_parse_of._entry_ptr.19 = internal global ptr @imx_card_parse_of._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cpu\00", [28 x i8] zeroinitializer }, align 32
@imx_card_parse_of._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.11, ptr @.str.12, i32 540, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: Can't find cpu DT node\0A\00", [36 x i8] zeroinitializer }, align 32
@imx_card_parse_of._entry_ptr.23 = internal global ptr @imx_card_parse_of._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sound-dai\00", [22 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"#sound-dai-cells\00", [47 x i8] zeroinitializer }, align 32
@imx_card_parse_of._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.11, ptr @.str.12, i32 548, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: error getting cpu phandle\0A\00", [33 x i8] zeroinitializer }, align 32
@imx_card_parse_of._entry_ptr.28 = internal global ptr @imx_card_parse_of._entry.26, section ".printk_index", align 4
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sai\00", [28 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"fsl,mclk-equal-bclk\00", [44 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: error getting cpu dai name\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"codec\00", [26 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: codec dai not found\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ak4458-aif\00", [21 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ak4497-aif\00", [21 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ak5558-aif\00", [21 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ak5552-aif\00", [21 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"snd-soc-dummy-dai\00", [46 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"snd-soc-dummy\00", [18 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HiFi-ASRC-FE\00", [19 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fsl,asrc-rate\00", [18 x i8] zeroinitializer }, align 32
@imx_card_parse_of._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.11, ptr @.str.12, i32 629, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to get output rate\0A\00", [37 x i8] zeroinitializer }, align 32
@imx_card_parse_of._entry_ptr.44 = internal global ptr @imx_card_parse_of._entry.42, section ".printk_index", align 4
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"fsl,asrc-format\00", [16 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fsl,asrc-width\00", [17 x i8] zeroinitializer }, align 32
@imx_card_parse_of._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.11, ptr @.str.12, i32 640, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to decide output format\0A\00", [32 x i8] zeroinitializer }, align 32
@imx_card_parse_of._entry_ptr.49 = internal global ptr @imx_card_parse_of._entry.47, section ".printk_index", align 4
@.str.50 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HiFi-ASRC-BE\00", [19 x i8] zeroinitializer }, align 32
@imx_aif_ops_be = internal constant { %struct.snd_soc_ops, [40 x i8] } { %struct.snd_soc_ops { ptr null, ptr null, ptr @imx_aif_hw_params, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@imx_aif_ops = internal constant { %struct.snd_soc_ops, [40 x i8] } { %struct.snd_soc_ops { ptr @imx_aif_startup, ptr null, ptr @imx_aif_hw_params, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@imx_aif_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.12, i32 322, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to set cpu dai fmt: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"imx_aif_hw_params\00", [46 x i8] zeroinitializer }, align 32
@imx_aif_hw_params._entry_ptr = internal global ptr @imx_aif_hw_params._entry, section ".printk_index", align 4
@imx_aif_hw_params._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.52, ptr @.str.12, i32 330, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to set cpu dai tdm slot: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@imx_aif_hw_params._entry_ptr.55 = internal global ptr @imx_aif_hw_params._entry.53, section ".printk_index", align 4
@imx_aif_hw_params._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.52, ptr @.str.12, i32 337, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to set codec dai[%d] fmt: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@imx_aif_hw_params._entry_ptr.58 = internal global ptr @imx_aif_hw_params._entry.56, section ".printk_index", align 4
@imx_aif_hw_params._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.52, ptr @.str.12, i32 346, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to set codec dai[%d] tdm slot: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@imx_aif_hw_params._entry_ptr.61 = internal global ptr @imx_aif_hw_params._entry.59, section ".printk_index", align 4
@imx_aif_hw_params._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.52, ptr @.str.12, i32 363, ptr @.str.13, ptr @.str.14 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"failed to set cpui dai mclk1 rate (%lu): %d\0A\00", [51 x i8] zeroinitializer }, align 32
@imx_aif_hw_params._entry_ptr.64 = internal global ptr @imx_aif_hw_params._entry.62, section ".printk_index", align 4
@imx_aif_startup.constraint_rates = internal global { %struct.snd_pcm_hw_constraint_list, [20 x i8] } zeroinitializer, align 32
@imx_aif_startup.constraint_channels = internal global { %struct.snd_pcm_hw_constraint_list, [20 x i8] } zeroinitializer, align 32
@__const.ak5558_hw_rule_rate.t = private unnamed_addr constant { i32, i32, i8, [3 x i8] } { i32 8000, i32 8000, i8 0, [3 x i8] zeroinitializer }, align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.65 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.66 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966772]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966772]
@__sancov_gen_cov_switch_values.68 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966772]
@__sancov_gen_cov_switch_values.69 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966772]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966772]
@___asan_gen_.71 = private unnamed_addr constant [16 x i8] c"imx_card_driver\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 843, i32 31 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 845, i32 11 }
@___asan_gen_.77 = private unnamed_addr constant [16 x i8] c"imx_card_dt_ids\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 837, i32 34 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 739, i32 32 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 740, i32 34 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 745, i32 45 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 751, i32 33 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 756, i32 32 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 757, i32 34 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 767, i32 31 }
@___asan_gen_.101 = private unnamed_addr constant [14 x i8] c"akcodec_rates\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 186, i32 18 }
@___asan_gen_.104 = private unnamed_addr constant [18 x i8] c"akcodec_tdm_rates\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 191, i32 18 }
@___asan_gen_.107 = private unnamed_addr constant [14 x i8] c"ak4458_fs_mul\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 121, i32 34 }
@___asan_gen_.110 = private unnamed_addr constant [18 x i8] c"ak4458_tdm_fs_mul\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 138, i32 38 }
@___asan_gen_.113 = private unnamed_addr constant [16 x i8] c"ak4458_channels\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 195, i32 18 }
@___asan_gen_.116 = private unnamed_addr constant [20 x i8] c"ak4458_tdm_channels\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 199, i32 18 }
@___asan_gen_.119 = private unnamed_addr constant [14 x i8] c"ak4497_fs_mul\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 149, i32 34 }
@___asan_gen_.122 = private unnamed_addr constant [14 x i8] c"ak5558_fs_mul\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 166, i32 34 }
@___asan_gen_.125 = private unnamed_addr constant [18 x i8] c"ak5558_tdm_fs_mul\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 180, i32 38 }
@___asan_gen_.128 = private unnamed_addr constant [16 x i8] c"ak5558_channels\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 203, i32 18 }
@___asan_gen_.131 = private unnamed_addr constant [20 x i8] c"ak5558_tdm_channels\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 207, i32 18 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 832, i32 41 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 490, i32 41 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 492, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 497, i32 42 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 532, i32 37 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 534, i32 4 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 538, i32 34 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 540, i32 4 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 545, i32 41 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 546, i32 8 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 548, i32 4 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 552, i32 32 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 557, i32 29 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 583, i32 11 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 587, i32 36 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 591, i32 29 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 599, i32 40 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 601, i32 45 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 603, i32 45 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 605, i32 45 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 618, i32 29 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 619, i32 25 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 622, i32 28 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 627, i32 40 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 629, i32 5 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 634, i32 40 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 637, i32 41 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 639, i32 6 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 649, i32 35 }
@___asan_gen_.251 = private unnamed_addr constant [15 x i8] c"imx_aif_ops_be\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 451, i32 33 }
@___asan_gen_.254 = private unnamed_addr constant [12 x i8] c"imx_aif_ops\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 446, i32 33 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 322, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 330, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 337, i32 4 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 346, i32 4 }
@___asan_gen_.284 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.287 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 363, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant [17 x i8] c"constraint_rates\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 405, i32 43 }
@___asan_gen_.293 = private unnamed_addr constant [20 x i8] c"constraint_channels\00", align 1
@___asan_gen_.294 = private constant [28 x i8] c"../sound/soc/fsl/imx-card.c\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 406, i32 43 }
@llvm.compiler.used = appending global [93 x ptr] [ptr @__UNIQUE_ID_alias302, ptr @__UNIQUE_ID_description299, ptr @__UNIQUE_ID_file300, ptr @__UNIQUE_ID_license301, ptr @__exitcall_imx_card_driver_exit, ptr @__initcall__kmod_snd_soc_imx_card__298_851_imx_card_driver_init6, ptr @imx_aif_hw_params._entry, ptr @imx_aif_hw_params._entry.53, ptr @imx_aif_hw_params._entry.56, ptr @imx_aif_hw_params._entry.59, ptr @imx_aif_hw_params._entry.62, ptr @imx_aif_hw_params._entry_ptr, ptr @imx_aif_hw_params._entry_ptr.55, ptr @imx_aif_hw_params._entry_ptr.58, ptr @imx_aif_hw_params._entry_ptr.61, ptr @imx_aif_hw_params._entry_ptr.64, ptr @imx_card_driver_exit, ptr @imx_card_parse_of._entry, ptr @imx_card_parse_of._entry.17, ptr @imx_card_parse_of._entry.21, ptr @imx_card_parse_of._entry.26, ptr @imx_card_parse_of._entry.42, ptr @imx_card_parse_of._entry.47, ptr @imx_card_parse_of._entry_ptr, ptr @imx_card_parse_of._entry_ptr.19, ptr @imx_card_parse_of._entry_ptr.23, ptr @imx_card_parse_of._entry_ptr.28, ptr @imx_card_parse_of._entry_ptr.44, ptr @imx_card_parse_of._entry_ptr.49, ptr @imx_card_driver, ptr @.str, ptr @imx_card_dt_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @akcodec_rates, ptr @akcodec_tdm_rates, ptr @ak4458_fs_mul, ptr @ak4458_tdm_fs_mul, ptr @ak4458_channels, ptr @ak4458_tdm_channels, ptr @ak4497_fs_mul, ptr @ak5558_fs_mul, ptr @ak5558_tdm_fs_mul, ptr @ak5558_channels, ptr @ak5558_tdm_channels, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @imx_aif_ops_be, ptr @imx_aif_ops, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @imx_aif_startup.constraint_rates, ptr @imx_aif_startup.constraint_channels], section "llvm.metadata"
@0 = internal global [75 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_card_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_card_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @akcodec_rates to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @akcodec_tdm_rates to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4458_fs_mul to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4458_tdm_fs_mul to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4458_channels to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4458_tdm_channels to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak4497_fs_mul to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak5558_fs_mul to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak5558_tdm_fs_mul to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak5558_channels to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ak5558_tdm_channels to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_card_parse_of._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_card_parse_of._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_card_parse_of._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_card_parse_of._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_card_parse_of._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_card_parse_of._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_aif_ops_be to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_aif_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_aif_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_aif_hw_params._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_aif_hw_params._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_aif_hw_params._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_aif_hw_params._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_aif_startup.constraint_rates to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_aif_startup.constraint_channels to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_card_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @imx_card_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @imx_card_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @imx_card_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_card_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  %width.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 672, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i276 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 56, i32 noundef 3520) #8
  %tobool3.not = icmp eq ptr %call.i276, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i276, ptr %call.i, align 4
  %card = getelementptr inbounds %struct.imx_card_data, ptr %call.i, i32 0, i32 3
  %dev8 = getelementptr inbounds %struct.imx_card_data, ptr %call.i, i32 0, i32 3, i32 5
  %1 = ptrtoint ptr %dev8 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev, ptr %dev8, align 4
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %card, ptr %driver_data.i, align 4
  %drvdata.i = getelementptr inbounds %struct.imx_card_data, ptr %call.i, i32 0, i32 3, i32 57
  %3 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %drvdata.i, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #8
  %4 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %width.i) #8
  %5 = ptrtoint ptr %width.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %width.i, align 4, !annotation !164
  %call.i277 = tail call i32 @snd_soc_of_parse_card_name(ptr noundef %card, ptr noundef nonnull @.str.9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i277)
  %tobool.not.i = icmp eq i32 %call.i277, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %call.i277) #11
  br label %imx_card_parse_of.exit.thread

if.end.i:                                         ; preds = %if.end5
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %6 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node.i, align 8
  %call.i.i = tail call ptr @of_find_property(ptr noundef %7, ptr noundef nonnull @.str.15, ptr noundef null) #8
  %tobool.i.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.i.not.i, label %if.end.i.if.end10.i_crit_edge, label %if.then5.i

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i

if.then5.i:                                       ; preds = %if.end.i
  %call6.i = tail call i32 @snd_soc_of_parse_audio_routing(ptr noundef %card, ptr noundef nonnull @.str.15) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.then5.i.if.end10.i_crit_edge, label %if.then5.i.imx_card_parse_of.exit.thread_crit_edge

if.then5.i.imx_card_parse_of.exit.thread_crit_edge: ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %imx_card_parse_of.exit.thread

if.then5.i.if.end10.i_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then5.i.if.end10.i_crit_edge, %if.end.i.if.end10.i_crit_edge
  %8 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node.i, align 8
  %call.i373.i = tail call ptr @of_get_next_child(ptr noundef %9, ptr noundef null) #8
  %cmp.not5.i.i = icmp eq ptr %call.i373.i, null
  br i1 %cmp.not5.i.i, label %if.end10.i.of_get_child_count.exit.i_crit_edge, label %if.end10.i.for.body.i.i_crit_edge

if.end10.i.for.body.i.i_crit_edge:                ; preds = %if.end10.i
  br label %for.body.i.i

if.end10.i.of_get_child_count.exit.i_crit_edge:   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %of_get_child_count.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end10.i.for.body.i.i_crit_edge
  %num.07.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end10.i.for.body.i.i_crit_edge ]
  %child.06.i.i = phi ptr [ %call1.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %call.i373.i, %if.end10.i.for.body.i.i_crit_edge ]
  %inc.i.i = add i32 %num.07.i.i, 1
  %call1.i.i = tail call ptr @of_get_next_child(ptr noundef %9, ptr noundef nonnull %child.06.i.i) #8
  %cmp.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %cmp.not.i.i, label %for.body.i.i.of_get_child_count.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.body.i.i.of_get_child_count.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %of_get_child_count.exit.i

of_get_child_count.exit.i:                        ; preds = %for.body.i.i.of_get_child_count.exit.i_crit_edge, %if.end10.i.of_get_child_count.exit.i_crit_edge
  %num.0.lcssa.i.i = phi i32 [ 0, %if.end10.i.of_get_child_count.exit.i_crit_edge ], [ %inc.i.i, %for.body.i.i.of_get_child_count.exit.i_crit_edge ]
  %10 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num.0.lcssa.i.i, i32 116) #8
  %11 = extractvalue { i32, i1 } %10, 1
  br i1 %11, label %devm_kcalloc.exit.thread.i, label %devm_kcalloc.exit.i, !prof !165

devm_kcalloc.exit.thread.i:                       ; preds = %of_get_child_count.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %dai_link384.i = getelementptr inbounds %struct.imx_card_data, ptr %call.i, i32 0, i32 3, i32 24
  %12 = ptrtoint ptr %dai_link384.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %dai_link384.i, align 4
  br label %imx_card_parse_of.exit.thread

devm_kcalloc.exit.i:                              ; preds = %of_get_child_count.exit.i
  %13 = extractvalue { i32, i1 } %10, 0
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %13, i32 noundef 3520) #8
  %dai_link.i = getelementptr inbounds %struct.imx_card_data, ptr %call.i, i32 0, i32 3, i32 24
  %14 = ptrtoint ptr %dai_link.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call5.i.i.i, ptr %dai_link.i, align 4
  %tobool15.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool15.not.i, label %devm_kcalloc.exit.i.imx_card_parse_of.exit.thread_crit_edge, label %devm_kcalloc.exit377.i

devm_kcalloc.exit.i.imx_card_parse_of.exit.thread_crit_edge: ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %imx_card_parse_of.exit.thread

devm_kcalloc.exit377.i:                           ; preds = %devm_kcalloc.exit.i
  %call5.i.i374.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %13, i32 noundef 3520) #8
  %link_data19.i = getelementptr inbounds %struct.imx_card_data, ptr %call.i, i32 0, i32 2
  %15 = ptrtoint ptr %link_data19.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call5.i.i374.i, ptr %link_data19.i, align 4
  %tobool21.not.i = icmp eq ptr %call5.i.i374.i, null
  br i1 %tobool21.not.i, label %devm_kcalloc.exit377.i.imx_card_parse_of.exit.thread_crit_edge, label %if.end23.i

devm_kcalloc.exit377.i.imx_card_parse_of.exit.thread_crit_edge: ; preds = %devm_kcalloc.exit377.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %imx_card_parse_of.exit.thread

if.end23.i:                                       ; preds = %devm_kcalloc.exit377.i
  %num_links24.i = getelementptr inbounds %struct.imx_card_data, ptr %call.i, i32 0, i32 3, i32 25
  %16 = ptrtoint ptr %num_links24.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %num.0.lcssa.i.i, ptr %num_links24.i, align 4
  %17 = ptrtoint ptr %dai_link.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dai_link.i, align 4
  %19 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %of_node.i, align 8
  %call28.i = tail call ptr @of_get_next_child(ptr noundef %20, ptr noundef null) #8
  %cmp.not443.i = icmp eq ptr %call28.i, null
  br i1 %cmp.not443.i, label %if.end23.i.if.end15_crit_edge, label %for.body.lr.ph.i

if.end23.i.if.end15_crit_edge:                    ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

for.body.lr.ph.i:                                 ; preds = %if.end23.i
  %args85.i = getelementptr inbounds %struct.of_phandle_args, ptr %args.i, i32 0, i32 2
  %num_codecs104.i = getelementptr inbounds %struct.imx_card_plat_data, ptr %call.i276, i32 0, i32 12
  %type129.i = getelementptr inbounds %struct.imx_card_plat_data, ptr %call.i276, i32 0, i32 13
  %asrc_rate.i = getelementptr inbounds %struct.imx_card_data, ptr %call.i, i32 0, i32 5
  %asrc_format.i = getelementptr inbounds %struct.imx_card_data, ptr %call.i, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %if.end222.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %link_data.0449.i = phi ptr [ %call5.i.i374.i, %for.body.lr.ph.i ], [ %incdec.ptr227.i, %if.end222.i.for.body.i_crit_edge ]
  %link.0447.i = phi ptr [ %18, %for.body.lr.ph.i ], [ %incdec.ptr.i, %if.end222.i.for.body.i_crit_edge ]
  %np.0445.i = phi ptr [ %call28.i, %for.body.lr.ph.i ], [ %call230.i, %if.end222.i.for.body.i_crit_edge ]
  %codec.0444.i = phi ptr [ null, %for.body.lr.ph.i ], [ %call95.i, %if.end222.i.for.body.i_crit_edge ]
  %call.i378.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 24, i32 noundef 3520) #8
  %tobool30.not.i = icmp eq ptr %call.i378.i, null
  br i1 %tobool30.not.i, label %for.body.i.err_put_np.i_crit_edge, label %if.end32.i

for.body.i.err_put_np.i_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_put_np.i

if.end32.i:                                       ; preds = %for.body.i
  %cpus.i = getelementptr inbounds %struct.snd_soc_dai_link, ptr %link.0447.i, i32 0, i32 2
  %21 = ptrtoint ptr %cpus.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i378.i, ptr %cpus.i, align 4
  %arrayidx33.i = getelementptr %struct.snd_soc_dai_link_component, ptr %call.i378.i, i32 1
  %platforms.i = getelementptr inbounds %struct.snd_soc_dai_link, ptr %link.0447.i, i32 0, i32 6
  %22 = ptrtoint ptr %platforms.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %arrayidx33.i, ptr %platforms.i, align 4
  %num_cpus.i = getelementptr inbounds %struct.snd_soc_dai_link, ptr %link.0447.i, i32 0, i32 3
  %23 = ptrtoint ptr %num_cpus.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %num_cpus.i, align 4
  %num_platforms.i = getelementptr inbounds %struct.snd_soc_dai_link, ptr %link.0447.i, i32 0, i32 7
  %24 = ptrtoint ptr %num_platforms.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %num_platforms.i, align 4
  %call34.i = call i32 @of_property_read_string(ptr noundef nonnull %np.0445.i, ptr noundef nonnull @.str.16, ptr noundef %link.0447.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %if.end41.i, label %do.end39.i

do.end39.i:                                       ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev8, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.18) #11
  br label %err_put_np.i

if.end41.i:                                       ; preds = %if.end32.i
  %call42.i = call ptr @of_get_child_by_name(ptr noundef nonnull %np.0445.i, ptr noundef nonnull @.str.20) #8
  %tobool43.not.i = icmp eq ptr %call42.i, null
  br i1 %tobool43.not.i, label %do.end47.i, label %if.end49.i

do.end47.i:                                       ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %link.0447.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %link.0447.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22, ptr noundef %28) #11
  br label %err.i

if.end49.i:                                       ; preds = %if.end41.i
  %call.i379.i = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %call42.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, i32 noundef -1, i32 noundef 0, ptr noundef nonnull %args.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i379.i)
  %tobool51.not.i = icmp eq i32 %call.i379.i, 0
  br i1 %tobool51.not.i, label %if.end58.i, label %do.end55.i

do.end55.i:                                       ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev8, align 4
  %31 = ptrtoint ptr %link.0447.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %link.0447.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.27, ptr noundef %32) #11
  br label %err.i

if.end58.i:                                       ; preds = %if.end49.i
  %33 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %args.i, align 4
  %call60.i = call zeroext i1 @of_node_name_eq(ptr noundef %34, ptr noundef nonnull @.str.29) #8
  br i1 %call60.i, label %if.then61.i, label %if.end58.i.if.end77.i_crit_edge

if.end58.i.if.end77.i_crit_edge:                  ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77.i

if.then61.i:                                      ; preds = %if.end58.i
  %cpu_sysclk_id.i = getelementptr inbounds %struct.dai_link_data, ptr %link_data.0449.i, i32 0, i32 2
  %35 = ptrtoint ptr %cpu_sysclk_id.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %cpu_sysclk_id.i, align 4
  %call62.i = call ptr @of_find_property(ptr noundef nonnull %np.0445.i, ptr noundef nonnull @.str.30, ptr noundef null) #8
  %tobool63.not.i = icmp eq ptr %call62.i, null
  br i1 %tobool63.not.i, label %for.body67.preheader.i, label %if.then64.i

for.body67.preheader.i:                           ; preds = %if.then61.i
  %36 = load i32, ptr @ak4497_fs_mul, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 705600, i32 %36)
  %cmp69.i = icmp eq i32 %36, 705600
  br i1 %cmp69.i, label %land.lhs.true.i, label %for.body67.preheader.i.for.inc.i_crit_edge

for.body67.preheader.i.for.inc.i_crit_edge:       ; preds = %for.body67.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then64.i:                                      ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #10
  %one2one_ratio.i = getelementptr inbounds %struct.dai_link_data, ptr %link_data.0449.i, i32 0, i32 3
  %37 = ptrtoint ptr %one2one_ratio.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %one2one_ratio.i, align 4
  br label %if.end77.i

land.lhs.true.i:                                  ; preds = %for.body67.preheader.i
  %38 = load i32, ptr getelementptr inbounds ([6 x %struct.imx_akcodec_fs_mul], ptr @ak4497_fs_mul, i32 0, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 768000, i32 %38)
  %cmp71.i = icmp eq i32 %38, 768000
  br i1 %cmp71.i, label %if.then72.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then72.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  store i32 32, ptr getelementptr inbounds ([6 x %struct.imx_akcodec_fs_mul], ptr @ak4497_fs_mul, i32 0, i32 0, i32 2), align 4
  store i32 32, ptr getelementptr inbounds ([6 x %struct.imx_akcodec_fs_mul], ptr @ak4497_fs_mul, i32 0, i32 0, i32 3), align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then72.i, %land.lhs.true.i.for.inc.i_crit_edge, %for.body67.preheader.i.for.inc.i_crit_edge
  %39 = load i32, ptr getelementptr inbounds ([6 x %struct.imx_akcodec_fs_mul], ptr @ak4497_fs_mul, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 705600, i32 %39)
  %cmp69.1.i = icmp eq i32 %39, 705600
  br i1 %cmp69.1.i, label %land.lhs.true.1.i, label %for.inc.i.for.inc.1.i_crit_edge

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1.i

land.lhs.true.1.i:                                ; preds = %for.inc.i
  %40 = load i32, ptr getelementptr inbounds ([6 x %struct.imx_akcodec_fs_mul], ptr @ak4497_fs_mul, i32 0, i32 1, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 768000, i32 %40)
  %cmp71.1.i = icmp eq i32 %40, 768000
  br i1 %cmp71.1.i, label %if.then72.1.i, label %land.lhs.true.1.i.for.inc.1.i_crit_edge

land.lhs.true.1.i.for.inc.1.i_crit_edge:          ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1.i

if.then72.1.i:                                    ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #10
  store i32 32, ptr getelementptr inbounds ([6 x %struct.imx_akcodec_fs_mul], ptr @ak4497_fs_mul, i32 0, i32 1, i32 2), align 4
  store i32 32, ptr getelementptr inbounds ([6 x %struct.imx_akcodec_fs_mul], ptr @ak4497_fs_mul, i32 0, i32 1, i32 3), align 4
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then72.1.i, %land.lhs.true.1.i.for.inc.1.i_crit_edge, %for.inc.i.for.inc.1.i_crit_edge
  %41 = load i32, ptr getelementptr inbounds ([6 x %struct.imx_akcodec_fs_mul], ptr @ak4497_fs_mul, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 705600, i32 %41)
  %cmp69.2.i = icmp eq i32 %41, 705600
  br i1 %cmp69.2.i, label %land.lhs.true.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2.i

land.lhs.true.2.i:                                ; preds = %for.inc.1.i
  %42 = load i32, ptr getelementptr inbounds ([6 x %struct.imx_akcodec_fs_mul], ptr @ak4497_fs_mul, i32 0, i32 2, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 768000, i32 %42)
  %cmp71.2.i = icmp eq i32 %42, 768000
  br i1 %cmp71.2.i, label %if.then72.2.i, label %land.lhs.true.2.i.for.inc.2.i_crit_edge

land.lhs.true.2.i.for.inc.2.i_crit_edge:          ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2.i

if.then72.2.i:                                    ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i32 32, ptr getelementptr inbounds ([6 x %struct.imx_akcodec_fs_mul], ptr @ak4497_fs_mul, i32 0, i32 2, i32 2), align 4
  store i32 32, ptr getelementptr inbounds ([6 x %struct.imx_akcodec_fs_mul], ptr @ak4497_fs_mul, i32 0, i32 2, i32 3), align 4
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.then72.2.i, %land.lhs.true.2.i.for.inc.2.i_crit_edge, %for.inc.1.i.for.inc.2.i_crit_edge
  %43 = load i32, ptr getelementptr inbounds ([6 x %struct.imx_akcodec_fs_mul], ptr @ak4497_fs_mul, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 705600, i32 %43)
  %cmp69.3.i = icmp eq i32 %43, 705600
  br i1 %cmp69.3.i, label %land.lhs.true.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3.i

land.lhs.true.3.i:                                ; preds = %for.inc.2.i
  %44 = load i32, ptr getelementptr inbounds ([6 x %struct.imx_akcodec_fs_mul], ptr @ak4497_fs_mul, i32 0, i32 3, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 768000, i32 %44)
  %cmp71.3.i = icmp eq i32 %44, 768000
  br i1 %cmp71.3.i, label %if.then72.3.i, label %land.lhs.true.3.i.for.inc.3.i_crit_edge

land.lhs.true.3.i.for.inc.3.i_crit_edge:          ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3.i

if.then72.3.i:                                    ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #10
  store i32 32, ptr getelementptr inbounds ([6 x %struct.imx_akcodec_fs_mul], ptr @ak4497_fs_mul, i32 0, i32 3, i32 2), align 4
  store i32 32, ptr getelementptr inbounds ([6 x %struct.imx_akcodec_fs_mul], ptr @ak4497_fs_mul, i32 0, i32 3, i32 3), align 4
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %if.then72.3.i, %land.lhs.true.3.i.for.inc.3.i_crit_edge, %for.inc.2.i.for.inc.3.i_crit_edge
  %45 = load i32, ptr getelementptr inbounds ([6 x %struct.imx_akcodec_fs_mul], ptr @ak4497_fs_mul, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 705600, i32 %45)
  %cmp69.4.i = icmp eq i32 %45, 705600
  br i1 %cmp69.4.i, label %land.lhs.true.4.i, label %for.inc.3.i.for.inc.4.i_crit_edge

for.inc.3.i.for.inc.4.i_crit_edge:                ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.4.i

land.lhs.true.4.i:                                ; preds = %for.inc.3.i
  %46 = load i32, ptr getelementptr inbounds ([6 x %struct.imx_akcodec_fs_mul], ptr @ak4497_fs_mul, i32 0, i32 4, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 768000, i32 %46)
  %cmp71.4.i = icmp eq i32 %46, 768000
  br i1 %cmp71.4.i, label %if.then72.4.i, label %land.lhs.true.4.i.for.inc.4.i_crit_edge

land.lhs.true.4.i.for.inc.4.i_crit_edge:          ; preds = %land.lhs.true.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.4.i

if.then72.4.i:                                    ; preds = %land.lhs.true.4.i
  call void @__sanitizer_cov_trace_pc() #10
  store i32 32, ptr getelementptr inbounds ([6 x %struct.imx_akcodec_fs_mul], ptr @ak4497_fs_mul, i32 0, i32 4, i32 2), align 4
  store i32 32, ptr getelementptr inbounds ([6 x %struct.imx_akcodec_fs_mul], ptr @ak4497_fs_mul, i32 0, i32 4, i32 3), align 4
  br label %for.inc.4.i

for.inc.4.i:                                      ; preds = %if.then72.4.i, %land.lhs.true.4.i.for.inc.4.i_crit_edge, %for.inc.3.i.for.inc.4.i_crit_edge
  %47 = load i32, ptr getelementptr inbounds ([6 x %struct.imx_akcodec_fs_mul], ptr @ak4497_fs_mul, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 705600, i32 %47)
  %cmp69.5.i = icmp eq i32 %47, 705600
  br i1 %cmp69.5.i, label %land.lhs.true.5.i, label %for.inc.4.i.if.end77.i_crit_edge

for.inc.4.i.if.end77.i_crit_edge:                 ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77.i

land.lhs.true.5.i:                                ; preds = %for.inc.4.i
  %48 = load i32, ptr getelementptr inbounds ([6 x %struct.imx_akcodec_fs_mul], ptr @ak4497_fs_mul, i32 0, i32 5, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 768000, i32 %48)
  %cmp71.5.i = icmp eq i32 %48, 768000
  br i1 %cmp71.5.i, label %if.then72.5.i, label %land.lhs.true.5.i.if.end77.i_crit_edge

land.lhs.true.5.i.if.end77.i_crit_edge:           ; preds = %land.lhs.true.5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77.i

if.then72.5.i:                                    ; preds = %land.lhs.true.5.i
  call void @__sanitizer_cov_trace_pc() #10
  store i32 32, ptr getelementptr inbounds ([6 x %struct.imx_akcodec_fs_mul], ptr @ak4497_fs_mul, i32 0, i32 5, i32 2), align 4
  store i32 32, ptr getelementptr inbounds ([6 x %struct.imx_akcodec_fs_mul], ptr @ak4497_fs_mul, i32 0, i32 5, i32 3), align 4
  br label %if.end77.i

if.end77.i:                                       ; preds = %if.then72.5.i, %land.lhs.true.5.i.if.end77.i_crit_edge, %for.inc.4.i.if.end77.i_crit_edge, %if.then64.i, %if.end58.i.if.end77.i_crit_edge
  %49 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %args.i, align 4
  %51 = ptrtoint ptr %cpus.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %cpus.i, align 4
  %of_node80.i = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %of_node80.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %50, ptr %of_node80.i, align 4
  %54 = load ptr, ptr %cpus.i, align 4
  %of_node82.i = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %of_node82.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %of_node82.i, align 4
  %57 = ptrtoint ptr %platforms.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %platforms.i, align 4
  %of_node84.i = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %of_node84.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %56, ptr %of_node84.i, align 4
  %60 = ptrtoint ptr %args85.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %args85.i, align 4
  %id.i = getelementptr inbounds %struct.snd_soc_dai_link, ptr %link.0447.i, i32 0, i32 8
  %62 = ptrtoint ptr %id.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %id.i, align 4
  %63 = load ptr, ptr %cpus.i, align 4
  %dai_name.i = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %63, i32 0, i32 2
  %call88.i = call i32 @snd_soc_of_get_dai_name(ptr noundef nonnull %call42.i, ptr noundef %dai_name.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88.i)
  %tobool89.not.i = icmp eq i32 %call88.i, 0
  br i1 %tobool89.not.i, label %if.end94.i, label %if.then90.i

if.then90.i:                                      ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #10
  %64 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev8, align 4
  %66 = ptrtoint ptr %link.0447.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %link.0447.i, align 4
  %call93.i = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %65, i32 noundef %call88.i, ptr noundef nonnull @.str.31, ptr noundef %67) #8
  br label %err.i

if.end94.i:                                       ; preds = %if.end77.i
  %call95.i = call ptr @of_get_child_by_name(ptr noundef nonnull %np.0445.i, ptr noundef nonnull @.str.32) #8
  %tobool96.not.i = icmp eq ptr %call95.i, null
  br i1 %tobool96.not.i, label %if.else134.i, label %if.then97.i

if.then97.i:                                      ; preds = %if.end94.i
  %call98.i = call i32 @snd_soc_of_get_dai_link_codecs(ptr noundef %dev, ptr noundef nonnull %call95.i, ptr noundef %link.0447.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98.i)
  %cmp99.i = icmp slt i32 %call98.i, 0
  br i1 %cmp99.i, label %if.then100.i, label %if.end103.i

if.then100.i:                                     ; preds = %if.then97.i
  call void @__sanitizer_cov_trace_pc() #10
  %68 = ptrtoint ptr %link.0447.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %link.0447.i, align 4
  %call102.i = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %call98.i, ptr noundef nonnull @.str.33, ptr noundef %69) #8
  br label %err.i

if.end103.i:                                      ; preds = %if.then97.i
  %num_codecs.i = getelementptr inbounds %struct.snd_soc_dai_link, ptr %link.0447.i, i32 0, i32 5
  %70 = ptrtoint ptr %num_codecs.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %num_codecs.i, align 4
  %72 = ptrtoint ptr %num_codecs104.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %num_codecs104.i, align 4
  %codecs.i = getelementptr inbounds %struct.snd_soc_dai_link, ptr %link.0447.i, i32 0, i32 4
  %73 = ptrtoint ptr %codecs.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %codecs.i, align 4
  %dai_name105.i = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %74, i32 0, i32 2
  %75 = ptrtoint ptr %dai_name105.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dai_name105.i, align 4
  %call106.i = call i32 @strcmp(ptr noundef %76, ptr noundef nonnull dereferenceable(11) @.str.34) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106.i)
  %tobool107.not.i = icmp eq i32 %call106.i, 0
  br i1 %tobool107.not.i, label %if.then108.i, label %if.else109.i

if.then108.i:                                     ; preds = %if.end103.i
  call void @__sanitizer_cov_trace_pc() #10
  %77 = ptrtoint ptr %type129.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 2, ptr %type129.i, align 4
  br label %if.end145.i

if.else109.i:                                     ; preds = %if.end103.i
  %call112.i = call i32 @strcmp(ptr noundef %76, ptr noundef nonnull dereferenceable(11) @.str.35) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112.i)
  %tobool113.not.i = icmp eq i32 %call112.i, 0
  br i1 %tobool113.not.i, label %if.then114.i, label %if.else116.i

if.then114.i:                                     ; preds = %if.else109.i
  call void @__sanitizer_cov_trace_pc() #10
  %78 = ptrtoint ptr %type129.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 3, ptr %type129.i, align 4
  br label %if.end145.i

if.else116.i:                                     ; preds = %if.else109.i
  %call119.i = call i32 @strcmp(ptr noundef %76, ptr noundef nonnull dereferenceable(11) @.str.36) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call119.i)
  %tobool120.not.i = icmp eq i32 %call119.i, 0
  br i1 %tobool120.not.i, label %if.then121.i, label %if.else123.i

if.then121.i:                                     ; preds = %if.else116.i
  call void @__sanitizer_cov_trace_pc() #10
  %79 = ptrtoint ptr %type129.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 1, ptr %type129.i, align 4
  br label %if.end145.i

if.else123.i:                                     ; preds = %if.else116.i
  %call126.i = call i32 @strcmp(ptr noundef %76, ptr noundef nonnull dereferenceable(11) @.str.37) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126.i)
  %tobool127.not.i = icmp eq i32 %call126.i, 0
  br i1 %tobool127.not.i, label %if.then128.i, label %if.else123.i.if.end145.i_crit_edge

if.else123.i.if.end145.i_crit_edge:               ; preds = %if.else123.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end145.i

if.then128.i:                                     ; preds = %if.else123.i
  call void @__sanitizer_cov_trace_pc() #10
  %80 = ptrtoint ptr %type129.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 4, ptr %type129.i, align 4
  br label %if.end145.i

if.else134.i:                                     ; preds = %if.end94.i
  %call.i380.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 12, i32 noundef 3520) #8
  %tobool136.not.i = icmp eq ptr %call.i380.i, null
  br i1 %tobool136.not.i, label %if.else134.i.err.i_crit_edge, label %if.end138.i

if.else134.i.err.i_crit_edge:                     ; preds = %if.else134.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err.i

if.end138.i:                                      ; preds = %if.else134.i
  call void @__sanitizer_cov_trace_pc() #10
  %codecs139.i = getelementptr inbounds %struct.snd_soc_dai_link, ptr %link.0447.i, i32 0, i32 4
  %81 = ptrtoint ptr %codecs139.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call.i380.i, ptr %codecs139.i, align 4
  %num_codecs140.i = getelementptr inbounds %struct.snd_soc_dai_link, ptr %link.0447.i, i32 0, i32 5
  %82 = ptrtoint ptr %num_codecs140.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 1, ptr %num_codecs140.i, align 4
  %dai_name142.i = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %call.i380.i, i32 0, i32 2
  %83 = ptrtoint ptr %dai_name142.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @.str.38, ptr %dai_name142.i, align 4
  %84 = load ptr, ptr %codecs139.i, align 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @.str.39, ptr %84, align 4
  br label %if.end145.i

if.end145.i:                                      ; preds = %if.end138.i, %if.then128.i, %if.else123.i.if.end145.i_crit_edge, %if.then121.i, %if.then114.i, %if.then108.i
  %86 = ptrtoint ptr %link.0447.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %link.0447.i, align 4
  %call147.i = call i32 @strncmp(ptr noundef %87, ptr noundef nonnull dereferenceable(13) @.str.40, i32 noundef 12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147.i)
  %tobool148.not.i = icmp eq i32 %call147.i, 0
  br i1 %tobool148.not.i, label %if.then149.i, label %if.else180.i

if.then149.i:                                     ; preds = %if.end145.i
  %dynamic.i = getelementptr inbounds %struct.snd_soc_dai_link, ptr %link.0447.i, i32 0, i32 18
  %88 = ptrtoint ptr %dynamic.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %bf.load.i = load i32, ptr %dynamic.i, align 4
  %bf.set152.i = or i32 %bf.load.i, 8912896
  store i32 %bf.set152.i, ptr %dynamic.i, align 4
  %89 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %args.i, align 4
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %90, ptr noundef nonnull @.str.41, ptr noundef %asrc_rate.i, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool155.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool155.not.i, label %if.end160.i, label %do.end159.i

do.end159.i:                                      ; preds = %if.then149.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.43) #11
  br label %err.i

if.end160.i:                                      ; preds = %if.then149.i
  %91 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %args.i, align 4
  %call.i.i381.i = call i32 @of_property_read_variable_u32_array(ptr noundef %92, ptr noundef nonnull @.str.45, ptr noundef %asrc_format.i, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i381.i)
  %tobool163.not.i = icmp sgt i32 %call.i.i381.i, -1
  br i1 %tobool163.not.i, label %if.end160.i.if.end195.i_crit_edge, label %if.then164.i

if.end160.i.if.end195.i_crit_edge:                ; preds = %if.end160.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end195.i

if.then164.i:                                     ; preds = %if.end160.i
  %93 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %args.i, align 4
  %call.i.i382.i = call i32 @of_property_read_variable_u32_array(ptr noundef %94, ptr noundef nonnull @.str.46, ptr noundef nonnull %width.i, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i382.i)
  %tobool167.not.i = icmp sgt i32 %call.i.i382.i, -1
  br i1 %tobool167.not.i, label %if.end172.i, label %do.end171.i

do.end171.i:                                      ; preds = %if.then164.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.48) #11
  br label %err.i

if.end172.i:                                      ; preds = %if.then164.i
  %95 = ptrtoint ptr %width.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %width.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %96)
  %cmp173.i = icmp eq i32 %96, 24
  br i1 %cmp173.i, label %if.then174.i, label %if.else176.i

if.then174.i:                                     ; preds = %if.end172.i
  call void @__sanitizer_cov_trace_pc() #10
  %97 = ptrtoint ptr %asrc_format.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 6, ptr %asrc_format.i, align 4
  br label %if.end195.i

if.else176.i:                                     ; preds = %if.end172.i
  call void @__sanitizer_cov_trace_pc() #10
  %98 = ptrtoint ptr %asrc_format.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 2, ptr %asrc_format.i, align 4
  br label %if.end195.i

if.else180.i:                                     ; preds = %if.end145.i
  %call182.i = call i32 @strncmp(ptr noundef %87, ptr noundef nonnull dereferenceable(13) @.str.50, i32 noundef 12) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call182.i)
  %tobool183.not.i = icmp eq i32 %call182.i, 0
  br i1 %tobool183.not.i, label %if.then184.i, label %if.else192.i

if.then184.i:                                     ; preds = %if.else180.i
  call void @__sanitizer_cov_trace_pc() #10
  %no_pcm.i = getelementptr inbounds %struct.snd_soc_dai_link, ptr %link.0447.i, i32 0, i32 18
  %99 = ptrtoint ptr %no_pcm.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %bf.load185.i = load i32, ptr %no_pcm.i, align 4
  %bf.set187.i = or i32 %bf.load185.i, 16777216
  store i32 %bf.set187.i, ptr %no_pcm.i, align 4
  %100 = ptrtoint ptr %platforms.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %platforms.i, align 4
  %of_node189.i = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %101, i32 0, i32 1
  %102 = ptrtoint ptr %of_node189.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr null, ptr %of_node189.i, align 4
  %103 = load ptr, ptr %platforms.i, align 4
  %104 = ptrtoint ptr %103 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr @.str.39, ptr %103, align 4
  %be_hw_params_fixup.i = getelementptr inbounds %struct.snd_soc_dai_link, ptr %link.0447.i, i32 0, i32 15
  %105 = ptrtoint ptr %be_hw_params_fixup.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr @be_hw_params_fixup, ptr %be_hw_params_fixup.i, align 4
  %ops.i = getelementptr inbounds %struct.snd_soc_dai_link, ptr %link.0447.i, i32 0, i32 16
  %106 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr @imx_aif_ops_be, ptr %ops.i, align 4
  br label %if.end195.i

if.else192.i:                                     ; preds = %if.else180.i
  call void @__sanitizer_cov_trace_pc() #10
  %ops193.i = getelementptr inbounds %struct.snd_soc_dai_link, ptr %link.0447.i, i32 0, i32 16
  %107 = ptrtoint ptr %ops193.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr @imx_aif_ops, ptr %ops193.i, align 4
  br label %if.end195.i

if.end195.i:                                      ; preds = %if.else192.i, %if.then184.i, %if.else176.i, %if.then174.i, %if.end160.i.if.end195.i_crit_edge
  %no_pcm196.i = getelementptr inbounds %struct.snd_soc_dai_link, ptr %link.0447.i, i32 0, i32 18
  %108 = ptrtoint ptr %no_pcm196.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %bf.load197.i = load i32, ptr %no_pcm196.i, align 4
  %109 = and i32 %bf.load197.i, 25165824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %if.end195.i.if.end206.i_crit_edge, label %if.then205.i

if.end195.i.if.end206.i_crit_edge:                ; preds = %if.end195.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end206.i

if.then205.i:                                     ; preds = %if.end195.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @snd_soc_dai_link_set_capabilities(ptr noundef %link.0447.i) #8
  br label %if.end206.i

if.end206.i:                                      ; preds = %if.then205.i, %if.end195.i.if.end206.i_crit_edge
  %dai_fmt.i = getelementptr inbounds %struct.snd_soc_dai_link, ptr %link.0447.i, i32 0, i32 11
  %call207.i = call i32 @asoc_simple_parse_daifmt(ptr noundef %dev, ptr noundef nonnull %np.0445.i, ptr noundef %call95.i, ptr noundef null, ptr noundef %dai_fmt.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call207.i)
  %tobool208.not.i = icmp eq i32 %call207.i, 0
  br i1 %tobool208.not.i, label %if.end206.i.if.end211.i_crit_edge, label %if.then209.i

if.end206.i.if.end211.i_crit_edge:                ; preds = %if.end206.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end211.i

if.then209.i:                                     ; preds = %if.end206.i
  call void @__sanitizer_cov_trace_pc() #10
  %111 = ptrtoint ptr %dai_fmt.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 16385, ptr %dai_fmt.i, align 4
  br label %if.end211.i

if.end211.i:                                      ; preds = %if.then209.i, %if.end206.i.if.end211.i_crit_edge
  %slot_width.i = getelementptr inbounds %struct.dai_link_data, ptr %link_data.0449.i, i32 0, i32 1
  %call212.i = call i32 @snd_soc_of_parse_tdm_slot(ptr noundef nonnull %np.0445.i, ptr noundef null, ptr noundef null, ptr noundef %link_data.0449.i, ptr noundef %slot_width.i) #8
  %112 = ptrtoint ptr %link_data.0449.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %link_data.0449.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool214.not.i = icmp eq i32 %113, 0
  br i1 %tobool214.not.i, label %if.then215.i, label %if.end211.i.if.end217.i_crit_edge

if.end211.i.if.end217.i_crit_edge:                ; preds = %if.end211.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end217.i

if.then215.i:                                     ; preds = %if.end211.i
  call void @__sanitizer_cov_trace_pc() #10
  %114 = ptrtoint ptr %link_data.0449.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 2, ptr %link_data.0449.i, align 4
  br label %if.end217.i

if.end217.i:                                      ; preds = %if.then215.i, %if.end211.i.if.end217.i_crit_edge
  %115 = ptrtoint ptr %slot_width.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %slot_width.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %tobool219.not.i = icmp eq i32 %116, 0
  br i1 %tobool219.not.i, label %if.then220.i, label %if.end217.i.if.end222.i_crit_edge

if.end217.i.if.end222.i_crit_edge:                ; preds = %if.end217.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end222.i

if.then220.i:                                     ; preds = %if.end217.i
  call void @__sanitizer_cov_trace_pc() #10
  %117 = ptrtoint ptr %slot_width.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 32, ptr %slot_width.i, align 4
  br label %if.end222.i

if.end222.i:                                      ; preds = %if.then220.i, %if.end217.i.if.end222.i_crit_edge
  %118 = ptrtoint ptr %no_pcm196.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %bf.load223.i = load i32, ptr %no_pcm196.i, align 4
  %bf.set225.i = or i32 %bf.load223.i, 131072
  store i32 %bf.set225.i, ptr %no_pcm196.i, align 4
  %119 = ptrtoint ptr %link.0447.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %link.0447.i, align 4
  %stream_name.i = getelementptr inbounds %struct.snd_soc_dai_link, ptr %link.0447.i, i32 0, i32 1
  %121 = ptrtoint ptr %stream_name.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %120, ptr %stream_name.i, align 4
  %incdec.ptr.i = getelementptr %struct.snd_soc_dai_link, ptr %link.0447.i, i32 1
  %incdec.ptr227.i = getelementptr %struct.dai_link_data, ptr %link_data.0449.i, i32 1
  call void @of_node_put(ptr noundef nonnull %call42.i) #8
  call void @of_node_put(ptr noundef %call95.i) #8
  call void @of_node_put(ptr noundef null) #8
  %122 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %of_node.i, align 8
  %call230.i = call ptr @of_get_next_child(ptr noundef %123, ptr noundef nonnull %np.0445.i) #8
  %cmp.not.i = icmp eq ptr %call230.i, null
  br i1 %cmp.not.i, label %if.end222.i.if.end15_crit_edge, label %if.end222.i.for.body.i_crit_edge

if.end222.i.for.body.i_crit_edge:                 ; preds = %if.end222.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end222.i.if.end15_crit_edge:                   ; preds = %if.end222.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

err.i:                                            ; preds = %do.end171.i, %do.end159.i, %if.else134.i.err.i_crit_edge, %if.then100.i, %if.then90.i, %do.end55.i, %do.end47.i
  %codec.1.i = phi ptr [ %codec.0444.i, %do.end55.i ], [ %codec.0444.i, %if.then90.i ], [ %call95.i, %if.then100.i ], [ %call95.i, %do.end159.i ], [ %call95.i, %do.end171.i ], [ %codec.0444.i, %do.end47.i ], [ null, %if.else134.i.err.i_crit_edge ]
  %ret.0.i = phi i32 [ %call.i379.i, %do.end55.i ], [ %call88.i, %if.then90.i ], [ %call98.i, %if.then100.i ], [ -22, %do.end159.i ], [ %call.i.i382.i, %do.end171.i ], [ -22, %do.end47.i ], [ -12, %if.else134.i.err.i_crit_edge ]
  call void @of_node_put(ptr noundef %call42.i) #8
  call void @of_node_put(ptr noundef %codec.1.i) #8
  call void @of_node_put(ptr noundef null) #8
  br label %err_put_np.i

err_put_np.i:                                     ; preds = %err.i, %do.end39.i, %for.body.i.err_put_np.i_crit_edge
  %ret.1.i = phi i32 [ %call34.i, %do.end39.i ], [ %ret.0.i, %err.i ], [ -12, %for.body.i.err_put_np.i_crit_edge ]
  call void @of_node_put(ptr noundef nonnull %np.0445.i) #8
  br label %imx_card_parse_of.exit.thread

imx_card_parse_of.exit.thread:                    ; preds = %err_put_np.i, %devm_kcalloc.exit377.i.imx_card_parse_of.exit.thread_crit_edge, %devm_kcalloc.exit.i.imx_card_parse_of.exit.thread_crit_edge, %devm_kcalloc.exit.thread.i, %if.then5.i.imx_card_parse_of.exit.thread_crit_edge, %do.end.i
  %retval.0.i.ph = phi i32 [ -12, %devm_kcalloc.exit.thread.i ], [ -12, %devm_kcalloc.exit377.i.imx_card_parse_of.exit.thread_crit_edge ], [ -12, %devm_kcalloc.exit.i.imx_card_parse_of.exit.thread_crit_edge ], [ %call6.i, %if.then5.i.imx_card_parse_of.exit.thread_crit_edge ], [ %ret.1.i, %err_put_np.i ], [ %call.i277, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %width.i) #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #8
  br label %cleanup

if.end15:                                         ; preds = %if.end222.i.if.end15_crit_edge, %if.end23.i.if.end15_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %width.i) #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #8
  %num_codecs = getelementptr inbounds %struct.imx_card_plat_data, ptr %call.i276, i32 0, i32 12
  %124 = ptrtoint ptr %num_codecs to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %num_codecs, align 4
  %add = add i32 %125, 1
  %num_dapm_routes = getelementptr inbounds %struct.imx_card_data, ptr %call.i, i32 0, i32 4
  %126 = ptrtoint ptr %num_dapm_routes to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %add, ptr %num_dapm_routes, align 4
  %127 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 52) #8
  %128 = extractvalue { i32, i1 } %127, 1
  br i1 %128, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !165

devm_kcalloc.exit.thread:                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  %dapm_routes281 = getelementptr inbounds %struct.imx_card_data, ptr %call.i, i32 0, i32 1
  %129 = ptrtoint ptr %dapm_routes281 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr null, ptr %dapm_routes281, align 4
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.end15
  %130 = extractvalue { i32, i1 } %127, 0
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %130, i32 noundef 3520) #8
  %dapm_routes = getelementptr inbounds %struct.imx_card_data, ptr %call.i, i32 0, i32 1
  %131 = ptrtoint ptr %dapm_routes to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %call5.i.i, ptr %dapm_routes, align 4
  %tobool20.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool20.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end22

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end22:                                         ; preds = %devm_kcalloc.exit
  %type = getelementptr inbounds %struct.imx_card_plat_data, ptr %call.i276, i32 0, i32 13
  %132 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %type, align 4
  %134 = zext i32 %133 to i64
  call void @__sanitizer_cov_trace_switch(i64 %134, ptr @__sancov_gen_cov_switch_values)
  switch i32 %133, label %if.end22.sw.epilog_crit_edge [
    i32 2, label %if.end22.sw.bb_crit_edge
    i32 3, label %if.end22.sw.bb_crit_edge658
    i32 1, label %if.end22.sw.bb46_crit_edge
    i32 4, label %if.end22.sw.bb46_crit_edge659
  ]

if.end22.sw.bb46_crit_edge659:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb46

if.end22.sw.bb46_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb46

if.end22.sw.bb_crit_edge658:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end22.sw.bb_crit_edge:                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.end22.sw.epilog_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end22.sw.bb_crit_edge, %if.end22.sw.bb_crit_edge658
  %135 = ptrtoint ptr %num_codecs to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %num_codecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %136)
  %cmp = icmp eq i32 %136, 1
  br i1 %cmp, label %sw.bb.sw.epilogthread-pre-split.sink.split_crit_edge, label %for.cond.preheader

sw.bb.sw.epilogthread-pre-split.sink.split_crit_edge: ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilogthread-pre-split.sink.split

for.cond.preheader:                               ; preds = %sw.bb
  %137 = ptrtoint ptr %num_codecs to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %num_codecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %cmp29345.not = icmp eq i32 %138, 0
  br i1 %cmp29345.not, label %for.cond.preheader.sw.epilogthread-pre-split_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.sw.epilogthread-pre-split_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilogthread-pre-split

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0346 = phi i32 [ %add31, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %add31 = add nuw i32 %i.0346, 1
  %call32 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev, i32 noundef 3264, ptr noundef nonnull @.str.3, i32 noundef %add31, ptr noundef nonnull @.str.1) #8
  %139 = ptrtoint ptr %dapm_routes to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %dapm_routes, align 4
  %arrayidx34 = getelementptr %struct.snd_soc_dapm_route, ptr %140, i32 %i.0346
  %141 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %call32, ptr %arrayidx34, align 4
  %142 = load ptr, ptr %dapm_routes, align 4
  %source38 = getelementptr %struct.snd_soc_dapm_route, ptr %142, i32 %i.0346, i32 2
  %143 = ptrtoint ptr %source38 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr @.str.2, ptr %source38, align 4
  %144 = ptrtoint ptr %num_codecs to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %num_codecs, align 4
  %cmp29 = icmp ult i32 %add31, %145
  br i1 %cmp29, label %for.body.for.body_crit_edge, label %for.body.sw.epilogthread-pre-split_crit_edge

for.body.sw.epilogthread-pre-split_crit_edge:     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilogthread-pre-split

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

sw.bb46:                                          ; preds = %if.end22.sw.bb46_crit_edge, %if.end22.sw.bb46_crit_edge659
  %146 = ptrtoint ptr %num_codecs to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %num_codecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %147)
  %cmp48 = icmp eq i32 %147, 1
  br i1 %cmp48, label %sw.bb46.sw.epilogthread-pre-split.sink.split_crit_edge, label %for.cond57.preheader

sw.bb46.sw.epilogthread-pre-split.sink.split_crit_edge: ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilogthread-pre-split.sink.split

for.cond57.preheader:                             ; preds = %sw.bb46
  %148 = ptrtoint ptr %num_codecs to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %num_codecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %149)
  %cmp59343.not = icmp eq i32 %149, 0
  br i1 %cmp59343.not, label %for.cond57.preheader.sw.epilogthread-pre-split_crit_edge, label %for.cond57.preheader.for.body60_crit_edge

for.cond57.preheader.for.body60_crit_edge:        ; preds = %for.cond57.preheader
  br label %for.body60

for.cond57.preheader.sw.epilogthread-pre-split_crit_edge: ; preds = %for.cond57.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilogthread-pre-split

for.body60:                                       ; preds = %for.body60.for.body60_crit_edge, %for.cond57.preheader.for.body60_crit_edge
  %i.2344 = phi i32 [ %add62, %for.body60.for.body60_crit_edge ], [ 0, %for.cond57.preheader.for.body60_crit_edge ]
  %add62 = add nuw i32 %i.2344, 1
  %call63 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev, i32 noundef 3264, ptr noundef nonnull @.str.3, i32 noundef %add62, ptr noundef nonnull @.str.6) #8
  %150 = ptrtoint ptr %dapm_routes to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %dapm_routes, align 4
  %source66 = getelementptr %struct.snd_soc_dapm_route, ptr %151, i32 %i.2344, i32 2
  %152 = ptrtoint ptr %source66 to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %call63, ptr %source66, align 4
  %153 = load ptr, ptr %dapm_routes, align 4
  %arrayidx68 = getelementptr %struct.snd_soc_dapm_route, ptr %153, i32 %i.2344
  %154 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr @.str.5, ptr %arrayidx68, align 4
  %155 = ptrtoint ptr %num_codecs to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %num_codecs, align 4
  %cmp59 = icmp ult i32 %add62, %156
  br i1 %cmp59, label %for.body60.for.body60_crit_edge, label %for.body60.sw.epilogthread-pre-split_crit_edge

for.body60.sw.epilogthread-pre-split_crit_edge:   ; preds = %for.body60
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilogthread-pre-split

for.body60.for.body60_crit_edge:                  ; preds = %for.body60
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body60

sw.epilogthread-pre-split.sink.split:             ; preds = %sw.bb46.sw.epilogthread-pre-split.sink.split_crit_edge, %sw.bb.sw.epilogthread-pre-split.sink.split_crit_edge
  %.str.5.sink = phi ptr [ @.str.1, %sw.bb.sw.epilogthread-pre-split.sink.split_crit_edge ], [ @.str.5, %sw.bb46.sw.epilogthread-pre-split.sink.split_crit_edge ]
  %.str.6.sink = phi ptr [ @.str.2, %sw.bb.sw.epilogthread-pre-split.sink.split_crit_edge ], [ @.str.6, %sw.bb46.sw.epilogthread-pre-split.sink.split_crit_edge ]
  %.str.2.sink.ph = phi ptr [ @.str.2, %sw.bb.sw.epilogthread-pre-split.sink.split_crit_edge ], [ @.str.7, %sw.bb46.sw.epilogthread-pre-split.sink.split_crit_edge ]
  %.str.4.sink.ph = phi ptr [ @.str.4, %sw.bb.sw.epilogthread-pre-split.sink.split_crit_edge ], [ @.str.5, %sw.bb46.sw.epilogthread-pre-split.sink.split_crit_edge ]
  %157 = ptrtoint ptr %call5.i.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr %.str.5.sink, ptr %call5.i.i, align 4
  %source55 = getelementptr inbounds %struct.snd_soc_dapm_route, ptr %call5.i.i, i32 0, i32 2
  %158 = ptrtoint ptr %source55 to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %.str.6.sink, ptr %source55, align 4
  br label %sw.epilogthread-pre-split

sw.epilogthread-pre-split:                        ; preds = %sw.epilogthread-pre-split.sink.split, %for.body60.sw.epilogthread-pre-split_crit_edge, %for.cond57.preheader.sw.epilogthread-pre-split_crit_edge, %for.body.sw.epilogthread-pre-split_crit_edge, %for.cond.preheader.sw.epilogthread-pre-split_crit_edge
  %i.1.sink475 = phi i32 [ 0, %for.cond.preheader.sw.epilogthread-pre-split_crit_edge ], [ 0, %for.cond57.preheader.sw.epilogthread-pre-split_crit_edge ], [ 1, %sw.epilogthread-pre-split.sink.split ], [ %add31, %for.body.sw.epilogthread-pre-split_crit_edge ], [ %add62, %for.body60.sw.epilogthread-pre-split_crit_edge ]
  %.str.2.sink = phi ptr [ @.str.2, %for.cond.preheader.sw.epilogthread-pre-split_crit_edge ], [ @.str.7, %for.cond57.preheader.sw.epilogthread-pre-split_crit_edge ], [ %.str.2.sink.ph, %sw.epilogthread-pre-split.sink.split ], [ @.str.2, %for.body.sw.epilogthread-pre-split_crit_edge ], [ @.str.7, %for.body60.sw.epilogthread-pre-split_crit_edge ]
  %.str.4.sink = phi ptr [ @.str.4, %for.cond.preheader.sw.epilogthread-pre-split_crit_edge ], [ @.str.5, %for.cond57.preheader.sw.epilogthread-pre-split_crit_edge ], [ %.str.4.sink.ph, %sw.epilogthread-pre-split.sink.split ], [ @.str.4, %for.body.sw.epilogthread-pre-split_crit_edge ], [ @.str.5, %for.body60.sw.epilogthread-pre-split_crit_edge ]
  %159 = ptrtoint ptr %dapm_routes to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %dapm_routes, align 4
  %arrayidx41 = getelementptr %struct.snd_soc_dapm_route, ptr %160, i32 %i.1.sink475
  %161 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %.str.2.sink, ptr %arrayidx41, align 4
  %162 = load ptr, ptr %dapm_routes, align 4
  %source45 = getelementptr %struct.snd_soc_dapm_route, ptr %162, i32 %i.1.sink475, i32 2
  %163 = ptrtoint ptr %source45 to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %.str.4.sink, ptr %source45, align 4
  %164 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %164)
  %.pr = load i32, ptr %type, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilogthread-pre-split, %if.end22.sw.epilog_crit_edge
  %165 = phi i32 [ %.pr, %sw.epilogthread-pre-split ], [ %133, %if.end22.sw.epilog_crit_edge ]
  %type.off.i = add i32 %165, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %type.off.i)
  %switch.i = icmp ult i32 %type.off.i, 4
  br i1 %switch.i, label %if.then82, label %sw.epilog.if.end101_crit_edge

sw.epilog.if.end101_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end101

if.then82:                                        ; preds = %sw.epilog
  %support_rates = getelementptr inbounds %struct.imx_card_plat_data, ptr %call.i276, i32 0, i32 2
  %166 = ptrtoint ptr %support_rates to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr @akcodec_rates, ptr %support_rates, align 4
  %num_rates = getelementptr inbounds %struct.imx_card_plat_data, ptr %call.i276, i32 0, i32 8
  %167 = ptrtoint ptr %num_rates to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 15, ptr %num_rates, align 4
  %support_tdm_rates = getelementptr inbounds %struct.imx_card_plat_data, ptr %call.i276, i32 0, i32 3
  %168 = ptrtoint ptr %support_tdm_rates to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr @akcodec_tdm_rates, ptr %support_tdm_rates, align 4
  %num_tdm_rates = getelementptr inbounds %struct.imx_card_plat_data, ptr %call.i276, i32 0, i32 9
  %169 = ptrtoint ptr %num_tdm_rates to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 5, ptr %num_tdm_rates, align 4
  %170 = zext i32 %165 to i64
  call void @__sanitizer_cov_trace_switch(i64 %170, ptr @__sancov_gen_cov_switch_values.65)
  switch i32 %165, label %if.then82.if.end101_crit_edge [
    i32 2, label %sw.bb84
    i32 3, label %sw.bb85
    i32 1, label %if.then82.sw.bb90_crit_edge
    i32 4, label %if.then82.sw.bb90_crit_edge660
  ]

if.then82.sw.bb90_crit_edge660:                   ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb90

if.then82.sw.bb90_crit_edge:                      ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb90

if.then82.if.end101_crit_edge:                    ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end101

sw.bb84:                                          ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #10
  %171 = ptrtoint ptr %call.i276 to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr @ak4458_fs_mul, ptr %call.i276, align 4
  %num_fs_mul = getelementptr inbounds %struct.imx_card_plat_data, ptr %call.i276, i32 0, i32 6
  %172 = ptrtoint ptr %num_fs_mul to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 7, ptr %num_fs_mul, align 4
  %tdm_fs_mul = getelementptr inbounds %struct.imx_card_plat_data, ptr %call.i276, i32 0, i32 1
  %173 = ptrtoint ptr %tdm_fs_mul to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr @ak4458_tdm_fs_mul, ptr %tdm_fs_mul, align 4
  %num_tdm_fs_mul = getelementptr inbounds %struct.imx_card_plat_data, ptr %call.i276, i32 0, i32 7
  %174 = ptrtoint ptr %num_tdm_fs_mul to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 3, ptr %num_tdm_fs_mul, align 4
  %support_channels = getelementptr inbounds %struct.imx_card_plat_data, ptr %call.i276, i32 0, i32 4
  %175 = ptrtoint ptr %support_channels to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr @ak4458_channels, ptr %support_channels, align 4
  %num_channels = getelementptr inbounds %struct.imx_card_plat_data, ptr %call.i276, i32 0, i32 10
  %176 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 9, ptr %num_channels, align 4
  %support_tdm_channels = getelementptr inbounds %struct.imx_card_plat_data, ptr %call.i276, i32 0, i32 5
  %177 = ptrtoint ptr %support_tdm_channels to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr @ak4458_tdm_channels, ptr %support_tdm_channels, align 4
  %num_tdm_channels = getelementptr inbounds %struct.imx_card_plat_data, ptr %call.i276, i32 0, i32 11
  %178 = ptrtoint ptr %num_tdm_channels to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 9, ptr %num_tdm_channels, align 4
  br label %if.end101

sw.bb85:                                          ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #10
  %179 = ptrtoint ptr %call.i276 to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr @ak4497_fs_mul, ptr %call.i276, align 4
  %num_fs_mul87 = getelementptr inbounds %struct.imx_card_plat_data, ptr %call.i276, i32 0, i32 6
  %180 = ptrtoint ptr %num_fs_mul87 to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 6, ptr %num_fs_mul87, align 4
  %support_channels88 = getelementptr inbounds %struct.imx_card_plat_data, ptr %call.i276, i32 0, i32 4
  %181 = ptrtoint ptr %support_channels88 to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr @ak4458_channels, ptr %support_channels88, align 4
  %num_channels89 = getelementptr inbounds %struct.imx_card_plat_data, ptr %call.i276, i32 0, i32 10
  %182 = ptrtoint ptr %num_channels89 to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 9, ptr %num_channels89, align 4
  br label %if.end101

sw.bb90:                                          ; preds = %if.then82.sw.bb90_crit_edge, %if.then82.sw.bb90_crit_edge660
  %183 = ptrtoint ptr %call.i276 to i32
  call void @__asan_store4_noabort(i32 %183)
  store ptr @ak5558_fs_mul, ptr %call.i276, align 4
  %num_fs_mul92 = getelementptr inbounds %struct.imx_card_plat_data, ptr %call.i276, i32 0, i32 6
  %184 = ptrtoint ptr %num_fs_mul92 to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 6, ptr %num_fs_mul92, align 4
  %tdm_fs_mul93 = getelementptr inbounds %struct.imx_card_plat_data, ptr %call.i276, i32 0, i32 1
  %185 = ptrtoint ptr %tdm_fs_mul93 to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr @ak5558_tdm_fs_mul, ptr %tdm_fs_mul93, align 4
  %num_tdm_fs_mul94 = getelementptr inbounds %struct.imx_card_plat_data, ptr %call.i276, i32 0, i32 7
  %186 = ptrtoint ptr %num_tdm_fs_mul94 to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 3, ptr %num_tdm_fs_mul94, align 4
  %support_channels95 = getelementptr inbounds %struct.imx_card_plat_data, ptr %call.i276, i32 0, i32 4
  %187 = ptrtoint ptr %support_channels95 to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr @ak5558_channels, ptr %support_channels95, align 4
  %num_channels96 = getelementptr inbounds %struct.imx_card_plat_data, ptr %call.i276, i32 0, i32 10
  %188 = ptrtoint ptr %num_channels96 to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 5, ptr %num_channels96, align 4
  %support_tdm_channels97 = getelementptr inbounds %struct.imx_card_plat_data, ptr %call.i276, i32 0, i32 5
  %189 = ptrtoint ptr %support_tdm_channels97 to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr @ak5558_tdm_channels, ptr %support_tdm_channels97, align 4
  %num_tdm_channels98 = getelementptr inbounds %struct.imx_card_plat_data, ptr %call.i276, i32 0, i32 11
  %190 = ptrtoint ptr %num_tdm_channels98 to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 8, ptr %num_tdm_channels98, align 4
  br label %if.end101

if.end101:                                        ; preds = %sw.bb90, %sw.bb85, %sw.bb84, %if.then82.if.end101_crit_edge, %sw.epilog.if.end101_crit_edge
  %191 = ptrtoint ptr %num_links24.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %num_links24.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %192)
  %cmp103 = icmp eq i32 %192, 3
  br i1 %cmp103, label %land.rhs.lr.ph, label %if.end101.if.end161_crit_edge

if.end101.if.end161_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end161

land.rhs.lr.ph:                                   ; preds = %if.end101
  %193 = ptrtoint ptr %dapm_routes to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %dapm_routes, align 4
  %dapm_routes107 = getelementptr inbounds %struct.imx_card_data, ptr %call.i, i32 0, i32 3, i32 37
  %195 = ptrtoint ptr %dapm_routes107 to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr %194, ptr %dapm_routes107, align 4
  %196 = ptrtoint ptr %num_dapm_routes to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %num_dapm_routes, align 4
  %num_dapm_routes110 = getelementptr inbounds %struct.imx_card_data, ptr %call.i, i32 0, i32 3, i32 38
  %198 = ptrtoint ptr %num_dapm_routes110 to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %197, ptr %num_dapm_routes110, align 4
  %199 = ptrtoint ptr %dai_link.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %dai_link.i, align 4
  %tobool117.not = icmp eq ptr %200, null
  br i1 %tobool117.not, label %land.rhs.lr.ph.for.end124_crit_edge, label %for.body118

land.rhs.lr.ph.for.end124_crit_edge:              ; preds = %land.rhs.lr.ph
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end124

for.body118:                                      ; preds = %land.rhs.lr.ph
  %no_pcm = getelementptr %struct.snd_soc_dai_link, ptr %200, i32 0, i32 18
  %201 = ptrtoint ptr %no_pcm to i32
  call void @__asan_load4_noabort(i32 %201)
  %bf.load = load i32, ptr %no_pcm, align 4
  %202 = and i32 %bf.load, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %202)
  %cmp119.not = icmp eq i32 %202, 0
  %spec.select = select i1 %cmp119.not, ptr null, ptr %200
  %arrayidx116.1 = getelementptr %struct.snd_soc_dai_link, ptr %200, i32 1
  %tobool117.not.1 = icmp eq ptr %arrayidx116.1, null
  br i1 %tobool117.not.1, label %for.body118.for.end124_crit_edge, label %for.body118.1

for.body118.for.end124_crit_edge:                 ; preds = %for.body118
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end124

for.body118.1:                                    ; preds = %for.body118
  %no_pcm.1 = getelementptr %struct.snd_soc_dai_link, ptr %200, i32 1, i32 18
  %203 = ptrtoint ptr %no_pcm.1 to i32
  call void @__asan_load4_noabort(i32 %203)
  %bf.load.1 = load i32, ptr %no_pcm.1, align 4
  %204 = and i32 %bf.load.1, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %204)
  %cmp119.not.1 = icmp eq i32 %204, 0
  %spec.select.1 = select i1 %cmp119.not.1, ptr %spec.select, ptr %arrayidx116.1
  %arrayidx116.2 = getelementptr %struct.snd_soc_dai_link, ptr %200, i32 2
  %tobool117.not.2 = icmp eq ptr %arrayidx116.2, null
  br i1 %tobool117.not.2, label %for.body118.1.for.end124_crit_edge, label %for.body118.2

for.body118.1.for.end124_crit_edge:               ; preds = %for.body118.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end124

for.body118.2:                                    ; preds = %for.body118.1
  call void @__sanitizer_cov_trace_pc() #10
  %no_pcm.2 = getelementptr %struct.snd_soc_dai_link, ptr %200, i32 2, i32 18
  %205 = ptrtoint ptr %no_pcm.2 to i32
  call void @__asan_load4_noabort(i32 %205)
  %bf.load.2 = load i32, ptr %no_pcm.2, align 4
  %206 = and i32 %bf.load.2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %206)
  %cmp119.not.2 = icmp eq i32 %206, 0
  %spec.select.2 = select i1 %cmp119.not.2, ptr %spec.select.1, ptr %arrayidx116.2
  br label %for.end124

for.end124:                                       ; preds = %for.body118.2, %for.body118.1.for.end124_crit_edge, %for.body118.for.end124_crit_edge, %land.rhs.lr.ph.for.end124_crit_edge
  %link_be.0.lcssa.ph = phi ptr [ null, %land.rhs.lr.ph.for.end124_crit_edge ], [ %spec.select, %for.body118.for.end124_crit_edge ], [ %spec.select.1, %for.body118.1.for.end124_crit_edge ], [ %spec.select.2, %for.body118.2 ]
  %207 = ptrtoint ptr %num_links24.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %num_links24.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %208)
  %cmp128353 = icmp sgt i32 %208, 0
  br i1 %cmp128353, label %land.rhs129.lr.ph, label %for.end124.if.end161_crit_edge

for.end124.if.end161_crit_edge:                   ; preds = %for.end124
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end161

land.rhs129.lr.ph:                                ; preds = %for.end124
  %tobool140.not = icmp eq ptr %link_be.0.lcssa.ph, null
  %dpcm_playback = getelementptr inbounds %struct.snd_soc_dai_link, ptr %link_be.0.lcssa.ph, i32 0, i32 18
  br label %land.rhs129

land.rhs129:                                      ; preds = %for.inc158.land.rhs129_crit_edge, %land.rhs129.lr.ph
  %i.5354 = phi i32 [ 0, %land.rhs129.lr.ph ], [ %inc159, %for.inc158.land.rhs129_crit_edge ]
  %209 = ptrtoint ptr %dai_link.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %dai_link.i, align 4
  %arrayidx132 = getelementptr %struct.snd_soc_dai_link, ptr %210, i32 %i.5354
  %tobool133.not = icmp eq ptr %arrayidx132, null
  br i1 %tobool133.not, label %land.rhs129.if.end161_crit_edge, label %for.body135

land.rhs129.if.end161_crit_edge:                  ; preds = %land.rhs129
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end161

for.body135:                                      ; preds = %land.rhs129
  %dynamic = getelementptr %struct.snd_soc_dai_link, ptr %210, i32 %i.5354, i32 18
  %211 = ptrtoint ptr %dynamic to i32
  call void @__asan_load4_noabort(i32 %211)
  %bf.load136 = load i32, ptr %dynamic, align 4
  %212 = and i32 %bf.load136, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %212)
  %cmp139.not = icmp eq i32 %212, 0
  %or.cond = select i1 %cmp139.not, i1 true, i1 %tobool140.not
  br i1 %or.cond, label %for.body135.for.inc158_crit_edge, label %if.then141

for.body135.for.inc158_crit_edge:                 ; preds = %for.body135
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc158

if.then141:                                       ; preds = %for.body135
  call void @__sanitizer_cov_trace_pc() #10
  %213 = ptrtoint ptr %dpcm_playback to i32
  call void @__asan_load4_noabort(i32 %213)
  %bf.load142 = load i32, ptr %dpcm_playback, align 4
  %bf.clear144 = and i32 %bf.load142, 2097152
  %bf.clear147 = and i32 %bf.load136, -2097153
  %bf.set = or i32 %bf.clear144, %bf.clear147
  %214 = ptrtoint ptr %dynamic to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 %bf.set, ptr %dynamic, align 4
  %bf.load148 = load i32, ptr %dpcm_playback, align 4
  %bf.clear150 = and i32 %bf.load148, 4194304
  %bf.clear155 = and i32 %bf.set, -4194305
  %bf.set156 = or i32 %bf.clear155, %bf.clear150
  store i32 %bf.set156, ptr %dynamic, align 4
  br label %for.inc158

for.inc158:                                       ; preds = %if.then141, %for.body135.for.inc158_crit_edge
  %inc159 = add nuw nsw i32 %i.5354, 1
  %215 = ptrtoint ptr %num_links24.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %num_links24.i, align 4
  %cmp128 = icmp slt i32 %inc159, %216
  br i1 %cmp128, label %for.inc158.land.rhs129_crit_edge, label %for.inc158.if.end161_crit_edge

for.inc158.if.end161_crit_edge:                   ; preds = %for.inc158
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end161

for.inc158.land.rhs129_crit_edge:                 ; preds = %for.inc158
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs129

if.end161:                                        ; preds = %for.inc158.if.end161_crit_edge, %land.rhs129.if.end161_crit_edge, %for.end124.if.end161_crit_edge, %if.end101.if.end161_crit_edge
  %call164 = call i32 @devm_snd_soc_register_card(ptr noundef %dev, ptr noundef %card) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call164)
  %tobool165.not = icmp eq i32 %call164, 0
  br i1 %tobool165.not, label %if.end161.cleanup_crit_edge, label %if.then166

if.end161.cleanup_crit_edge:                      ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then166:                                       ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #10
  %call168 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %call164, ptr noundef nonnull @.str.8) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then166, %if.end161.cleanup_crit_edge, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread, %imx_card_parse_of.exit.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call168, %if.then166 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ 0, %if.end161.cleanup_crit_edge ], [ %retval.0.i.ph, %imx_card_parse_of.exit.thread ], [ -12, %devm_kcalloc.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_card(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_of_parse_card_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_of_parse_audio_routing(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_node_name_eq(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_of_get_dai_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_of_get_dai_link_codecs(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @be_hw_params_fixup(ptr nocapture noundef readonly %rtd, ptr nocapture noundef %params) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %card1 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 1
  %0 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card1, align 4
  %drvdata.i = getelementptr inbounds %struct.snd_soc_card, ptr %1, i32 0, i32 57
  %2 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drvdata.i, align 4
  %arrayidx.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %asrc_rate = getelementptr inbounds %struct.imx_card_data, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %asrc_rate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %asrc_rate, align 4
  %max = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3, i32 1
  %6 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %max, align 4
  %7 = load i32, ptr %asrc_rate, align 4
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %arrayidx.i, align 4
  %arrayidx.i10 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %9 = call ptr @memset(ptr %arrayidx.i10, i32 0, i32 32)
  %asrc_format = getelementptr inbounds %struct.imx_card_data, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %asrc_format to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %asrc_format, align 4
  %and.i = and i32 %11, 31
  %shl.i = shl nuw i32 1, %and.i
  %shr.i = lshr i32 %11, 5
  %arrayidx.i11 = getelementptr [8 x i32], ptr %arrayidx.i10, i32 0, i32 %shr.i
  %12 = ptrtoint ptr %arrayidx.i11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i11, align 4
  %or.i = or i32 %shl.i, %13
  store i32 %or.i, ptr %arrayidx.i11, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_dai_link_set_capabilities(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @asoc_simple_parse_daifmt(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_of_parse_tdm_slot(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_aif_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dais, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %card1 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %card1, align 4
  %drvdata.i = getelementptr inbounds %struct.snd_soc_card, ptr %7, i32 0, i32 57
  %8 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %drvdata.i, align 4
  %link_data2 = getelementptr inbounds %struct.imx_card_data, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %link_data2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %link_data2, align 4
  %num = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 17
  %12 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num, align 4
  %arrayidx3 = getelementptr %struct.dai_link_data, ptr %11, i32 %13
  %14 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %9, align 4
  %dev5 = getelementptr inbounds %struct.snd_soc_card, ptr %7, i32 0, i32 5
  %16 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev5, align 4
  %dai_link = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %dai_link to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dai_link, align 4
  %dai_fmt = getelementptr inbounds %struct.snd_soc_dai_link, ptr %19, i32 0, i32 11
  %20 = ptrtoint ptr %dai_fmt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dai_fmt, align 4
  %22 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx3, align 4
  %slot_width7 = getelementptr %struct.dai_link_data, ptr %11, i32 %13, i32 1
  %24 = ptrtoint ptr %slot_width7 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %slot_width7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %23)
  %cmp.i = icmp ugt i32 %23, 2
  br i1 %cmp.i, label %entry.if.end19_crit_edge, label %if.then

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then:                                          ; preds = %entry
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %26 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i.i.i = icmp eq i32 %27, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %if.then.if.then.i.i.i167_crit_edge

if.then.if.then.i.i.i167_crit_edge:               ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i167

for.inc.i.i.i:                                    ; preds = %if.then
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %28 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.1.i.i.i = icmp eq i32 %29, 0
  br i1 %tobool.not.1.i.i.i, label %for.inc.i.i.i.params_physical_width.exit_crit_edge, label %format_is_dsd.exit

for.inc.i.i.i.params_physical_width.exit_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %params_physical_width.exit

format_is_dsd.exit:                               ; preds = %for.inc.i.i.i
  %30 = tail call i32 @llvm.cttz.i32(i32 %29, i1 true) #8, !range !166
  %phi.bo.i = add nsw i32 %30, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %phi.bo.i)
  %phi.cmp.i = icmp ult i32 %phi.bo.i, 5
  %31 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.1.i.i.i159 = icmp eq i32 %32, 0
  br i1 %phi.cmp.i, label %for.inc.i.i.i160, label %for.inc.i.i.i170

for.inc.i.i.i160:                                 ; preds = %format_is_dsd.exit
  call void @__sanitizer_cov_trace_pc() #10
  %33 = tail call i32 @llvm.cttz.i32(i32 %32, i1 true) #8, !range !166
  %add.i.i.i = or i32 %33, 32
  %retval.0.i.i.i161 = select i1 %tobool.not.1.i.i.i159, i32 0, i32 %add.i.i.i
  %call1.i = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i161) #8
  br label %if.end19.sink.split

if.then.i.i.i167:                                 ; preds = %for.inc.i.i.i170.if.then.i.i.i167_crit_edge, %if.then.if.then.i.i.i167_crit_edge
  %i.09.lcssa.i.i.i164 = phi i32 [ 32, %for.inc.i.i.i170.if.then.i.i.i167_crit_edge ], [ 0, %if.then.if.then.i.i.i167_crit_edge ]
  %.lcssa.i.i.i165 = phi i32 [ %32, %for.inc.i.i.i170.if.then.i.i.i167_crit_edge ], [ %27, %if.then.if.then.i.i.i167_crit_edge ]
  %34 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i165, i1 true) #8, !range !166
  %add.i.i.i166 = or i32 %34, %i.09.lcssa.i.i.i164
  br label %params_physical_width.exit

for.inc.i.i.i170:                                 ; preds = %format_is_dsd.exit
  br i1 %tobool.not.1.i.i.i159, label %for.inc.i.i.i170.params_physical_width.exit_crit_edge, label %for.inc.i.i.i170.if.then.i.i.i167_crit_edge

for.inc.i.i.i170.if.then.i.i.i167_crit_edge:      ; preds = %for.inc.i.i.i170
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i167

for.inc.i.i.i170.params_physical_width.exit_crit_edge: ; preds = %for.inc.i.i.i170
  call void @__sanitizer_cov_trace_pc() #10
  br label %params_physical_width.exit

params_physical_width.exit:                       ; preds = %for.inc.i.i.i170.params_physical_width.exit_crit_edge, %if.then.i.i.i167, %for.inc.i.i.i.params_physical_width.exit_crit_edge
  %retval.0.i.i.i171 = phi i32 [ %add.i.i.i166, %if.then.i.i.i167 ], [ 0, %for.inc.i.i.i170.params_physical_width.exit_crit_edge ], [ 0, %for.inc.i.i.i.params_physical_width.exit_crit_edge ]
  %call1.i172 = tail call i32 @snd_pcm_format_physical_width(i32 noundef %retval.0.i.i.i171) #8
  br label %if.end19.sink.split

if.end19.sink.split:                              ; preds = %params_physical_width.exit, %for.inc.i.i.i160
  %.sink = phi i32 [ 7, %for.inc.i.i.i160 ], [ 1, %params_physical_width.exit ]
  %slots.0.ph = phi i32 [ 1, %for.inc.i.i.i160 ], [ 2, %params_physical_width.exit ]
  %slot_width.0.ph = phi i32 [ %call1.i, %for.inc.i.i.i160 ], [ %call1.i172, %params_physical_width.exit ]
  %35 = ptrtoint ptr %dai_link to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dai_link, align 4
  %dai_fmt13 = getelementptr inbounds %struct.snd_soc_dai_link, ptr %36, i32 0, i32 11
  %37 = ptrtoint ptr %dai_fmt13 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dai_fmt13, align 4
  %and = and i32 %38, -16
  %or = or i32 %and, %.sink
  br label %if.end19

if.end19:                                         ; preds = %if.end19.sink.split, %entry.if.end19_crit_edge
  %fmt.0 = phi i32 [ %21, %entry.if.end19_crit_edge ], [ %or, %if.end19.sink.split ]
  %slots.0 = phi i32 [ %23, %entry.if.end19_crit_edge ], [ %slots.0.ph, %if.end19.sink.split ]
  %slot_width.0 = phi i32 [ %25, %entry.if.end19_crit_edge ], [ %slot_width.0.ph, %if.end19.sink.split ]
  %call20 = tail call i32 @snd_soc_dai_set_fmt(ptr noundef %5, i32 noundef %fmt.0) #8
  %39 = zext i32 %call20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.66)
  switch i32 %call20, label %do.end [
    i32 0, label %if.end19.if.end22_crit_edge
    i32 -524, label %if.end19.if.end22_crit_edge234
  ]

if.end19.if.end22_crit_edge234:                   ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.end19.if.end22_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

do.end:                                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.51, i32 noundef %call20) #11
  br label %cleanup

if.end22:                                         ; preds = %if.end19.if.end22_crit_edge, %if.end19.if.end22_crit_edge234
  %notmask = shl nsw i32 -1, %slots.0
  %sub = xor i32 %notmask, -1
  %call25 = tail call i32 @snd_soc_dai_set_tdm_slot(ptr noundef %5, i32 noundef %sub, i32 noundef %sub, i32 noundef %slots.0, i32 noundef %slot_width.0) #8
  %40 = zext i32 %call25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %call25, label %do.end32 [
    i32 0, label %if.end22.if.end33_crit_edge
    i32 -524, label %if.end22.if.end33_crit_edge235
  ]

if.end22.if.end33_crit_edge235:                   ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

if.end22.if.end33_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end33

do.end32:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.54, i32 noundef %call25) #11
  br label %cleanup

if.end33:                                         ; preds = %if.end22.if.end33_crit_edge, %if.end22.if.end33_crit_edge235
  %num_codecs = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 10
  %41 = ptrtoint ptr %num_codecs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %num_codecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp34200.not = icmp eq i32 %42, 0
  br i1 %cmp34200.not, label %if.end33.for.end_crit_edge, label %land.rhs.lr.ph

if.end33.for.end_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

land.rhs.lr.ph:                                   ; preds = %if.end33
  %num_cpus = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 11
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %land.rhs.lr.ph
  %i.0201 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %for.inc.land.rhs_crit_edge ]
  %43 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dais, align 4
  %45 = ptrtoint ptr %num_cpus to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %num_cpus, align 4
  %add = add i32 %46, %i.0201
  %arrayidx36 = getelementptr ptr, ptr %44, i32 %add
  %47 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx36, align 4
  %tobool37.not = icmp eq ptr %48, null
  br i1 %tobool37.not, label %land.rhs.for.end_crit_edge, label %for.body

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %land.rhs
  %call38 = tail call i32 @snd_soc_dai_set_fmt(ptr noundef nonnull %48, i32 noundef %fmt.0) #8
  %49 = zext i32 %call38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.68)
  switch i32 %call38, label %do.end45 [
    i32 0, label %for.body.if.end46_crit_edge
    i32 -524, label %for.body.if.end46_crit_edge236
  ]

for.body.if.end46_crit_edge236:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

for.body.if.end46_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

do.end45:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.57, i32 noundef %i.0201, i32 noundef %call38) #11
  br label %cleanup

if.end46:                                         ; preds = %for.body.if.end46_crit_edge, %for.body.if.end46_crit_edge236
  %call51 = tail call i32 @snd_soc_dai_set_tdm_slot(ptr noundef nonnull %48, i32 noundef %sub, i32 noundef %sub, i32 noundef %slots.0, i32 noundef %slot_width.0) #8
  %50 = zext i32 %call51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %call51, label %do.end58 [
    i32 0, label %if.end46.for.inc_crit_edge
    i32 -524, label %if.end46.for.inc_crit_edge237
  ]

if.end46.for.inc_crit_edge237:                    ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end46.for.inc_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.end58:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.60, i32 noundef %i.0201, i32 noundef %call51) #11
  br label %cleanup

for.inc:                                          ; preds = %if.end46.for.inc_crit_edge, %if.end46.for.inc_crit_edge237
  %inc = add nuw i32 %i.0201, 1
  %51 = ptrtoint ptr %num_codecs to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %num_codecs, align 4
  %cmp34 = icmp ult i32 %inc, %52
  br i1 %cmp34, label %for.inc.land.rhs_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.rhs.for.end_crit_edge, %if.end33.for.end_crit_edge
  %type = getelementptr inbounds %struct.imx_card_plat_data, ptr %15, i32 0, i32 13
  %53 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %type, align 4
  %type.off.i = add i32 %54, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %type.off.i)
  %switch.i = icmp ult i32 %type.off.i, 4
  br i1 %switch.i, label %if.then61, label %if.else63

if.then61:                                        ; preds = %for.end
  %55 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %private_data, align 4
  %card.i = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %card.i, align 4
  %drvdata.i.i = getelementptr inbounds %struct.snd_soc_card, ptr %58, i32 0, i32 57
  %59 = ptrtoint ptr %drvdata.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %drvdata.i.i, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %60, align 4
  %link_data2.i = getelementptr inbounds %struct.imx_card_data, ptr %60, i32 0, i32 2
  %63 = ptrtoint ptr %link_data2.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %link_data2.i, align 4
  %num.i = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %56, i32 0, i32 17
  %65 = ptrtoint ptr %num.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %num.i, align 4
  %arrayidx.i = getelementptr %struct.dai_link_data, ptr %64, i32 %66
  %mul.i = mul i32 %slot_width.0, %slots.0
  %arrayidx.i.i.i173 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %67 = ptrtoint ptr %arrayidx.i.i.i173 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx.i.i.i173, align 4
  %69 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %70)
  %cmp.i.i = icmp ugt i32 %70, 2
  br i1 %cmp.i.i, label %for.cond.preheader.i, label %for.cond12.preheader.i

for.cond12.preheader.i:                           ; preds = %if.then61
  %num_fs_mul.i = getelementptr inbounds %struct.imx_card_plat_data, ptr %62, i32 0, i32 6
  %71 = ptrtoint ptr %num_fs_mul.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %num_fs_mul.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp1381.not.i = icmp eq i32 %72, 0
  br i1 %cmp1381.not.i, label %for.cond12.preheader.i.if.end66_crit_edge, label %for.body14.lr.ph.i

for.cond12.preheader.i.if.end66_crit_edge:        ; preds = %for.cond12.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

for.body14.lr.ph.i:                               ; preds = %for.cond12.preheader.i
  %73 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %62, align 4
  br label %for.body14.i

for.cond.preheader.i:                             ; preds = %if.then61
  %num_tdm_fs_mul.i = getelementptr inbounds %struct.imx_card_plat_data, ptr %62, i32 0, i32 7
  %75 = ptrtoint ptr %num_tdm_fs_mul.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %num_tdm_fs_mul.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp84.not.i = icmp eq i32 %76, 0
  br i1 %cmp84.not.i, label %for.cond.preheader.i.if.end66_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.if.end66_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %tdm_fs_mul.i = getelementptr inbounds %struct.imx_card_plat_data, ptr %62, i32 0, i32 1
  %77 = ptrtoint ptr %tdm_fs_mul.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %tdm_fs_mul.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.085.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx5.i = getelementptr %struct.imx_akcodec_tdm_fs_mul, ptr %78, i32 %i.085.i
  %79 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx5.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %80)
  %cmp6.not.i = icmp eq i32 %mul.i, %80
  br i1 %cmp6.not.i, label %if.end.i, label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %mul10.i = getelementptr %struct.imx_akcodec_tdm_fs_mul, ptr %78, i32 %i.085.i, i32 2
  %81 = ptrtoint ptr %mul10.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %mul10.i, align 4
  %mul11.i = mul i32 %82, %68
  br label %if.end66

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.085.i, 1
  %exitcond89.not.i = icmp eq i32 %inc.i, %76
  br i1 %exitcond89.not.i, label %for.inc.i.if.end66_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.if.end66_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

for.body14.i:                                     ; preds = %for.inc36.i.for.body14.i_crit_edge, %for.body14.lr.ph.i
  %i.182.i = phi i32 [ 0, %for.body14.lr.ph.i ], [ %inc37.i, %for.inc36.i.for.body14.i_crit_edge ]
  %arrayidx15.i = getelementptr %struct.imx_akcodec_fs_mul, ptr %74, i32 %i.182.i
  %83 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx15.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %84)
  %cmp16.not.i = icmp ult i32 %68, %84
  br i1 %cmp16.not.i, label %for.body14.i.for.inc36.i_crit_edge, label %land.lhs.true.i

for.body14.i.for.inc36.i_crit_edge:               ; preds = %for.body14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc36.i

land.lhs.true.i:                                  ; preds = %for.body14.i
  %rmax.i = getelementptr %struct.imx_akcodec_fs_mul, ptr %74, i32 %i.182.i, i32 1
  %85 = ptrtoint ptr %rmax.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %rmax.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %68, i32 %86)
  %cmp19.not.i = icmp ugt i32 %68, %86
  br i1 %cmp19.not.i, label %land.lhs.true.i.for.inc36.i_crit_edge, label %if.then20.i

land.lhs.true.i.for.inc36.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc36.i

if.then20.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %wmin.i = getelementptr %struct.imx_akcodec_fs_mul, ptr %74, i32 %i.182.i, i32 2
  %87 = ptrtoint ptr %wmin.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %wmin.i, align 4
  %89 = tail call i32 @llvm.umax.i32(i32 %mul.i, i32 %88) #8
  %wmax.i = getelementptr %struct.imx_akcodec_fs_mul, ptr %74, i32 %i.182.i, i32 3
  %90 = ptrtoint ptr %wmax.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %wmax.i, align 4
  %92 = tail call i32 @llvm.umin.i32(i32 %89, i32 %91) #8
  %one2one_ratio.i = getelementptr %struct.dai_link_data, ptr %64, i32 %66, i32 3
  %93 = ptrtoint ptr %one2one_ratio.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %one2one_ratio.i, align 4, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool.not.i = icmp eq i8 %94, 0
  %cond32.i = select i1 %tobool.not.i, i32 2, i32 1
  %mul33.i = mul i32 %92, %68
  %mul34.i = mul i32 %mul33.i, %cond32.i
  br label %if.end66

for.inc36.i:                                      ; preds = %land.lhs.true.i.for.inc36.i_crit_edge, %for.body14.i.for.inc36.i_crit_edge
  %inc37.i = add nuw i32 %i.182.i, 1
  %exitcond.not.i = icmp eq i32 %inc37.i, %72
  br i1 %exitcond.not.i, label %for.inc36.i.if.end66_crit_edge, label %for.inc36.i.for.body14.i_crit_edge

for.inc36.i.for.body14.i_crit_edge:               ; preds = %for.inc36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body14.i

for.inc36.i.if.end66_crit_edge:                   ; preds = %for.inc36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

if.else63:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %95 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx.i.i, align 4
  %mul = mul i32 %slot_width.0, %slots.0
  %mul65 = mul i32 %mul, %96
  br label %if.end66

if.end66:                                         ; preds = %if.else63, %for.inc36.i.if.end66_crit_edge, %if.then20.i, %for.inc.i.if.end66_crit_edge, %if.end.i, %for.cond.preheader.i.if.end66_crit_edge, %for.cond12.preheader.i.if.end66_crit_edge
  %mclk_freq.0 = phi i32 [ %mul65, %if.else63 ], [ %mul11.i, %if.end.i ], [ %mul34.i, %if.then20.i ], [ 0, %for.cond.preheader.i.if.end66_crit_edge ], [ 0, %for.cond12.preheader.i.if.end66_crit_edge ], [ 0, %for.inc.i.if.end66_crit_edge ], [ 0, %for.inc36.i.if.end66_crit_edge ]
  %arrayidx.i.i.i174 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %97 = ptrtoint ptr %arrayidx.i.i.i174 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx.i.i.i174, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool.not.i.i.i175 = icmp eq i32 %98, 0
  br i1 %tobool.not.i.i.i175, label %for.inc.i.i.i183, label %if.end66.format_is_dsd.exit185_crit_edge

if.end66.format_is_dsd.exit185_crit_edge:         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #10
  br label %format_is_dsd.exit185

for.inc.i.i.i183:                                 ; preds = %if.end66
  %arrayidx.1.i.i.i181 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %99 = ptrtoint ptr %arrayidx.1.i.i.i181 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx.1.i.i.i181, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool.not.1.i.i.i182 = icmp eq i32 %100, 0
  br i1 %tobool.not.1.i.i.i182, label %for.inc.i.i.i183.format_is_dsd.exit185.thread_crit_edge, label %for.inc.i.i.i183.format_is_dsd.exit185_crit_edge

for.inc.i.i.i183.format_is_dsd.exit185_crit_edge: ; preds = %for.inc.i.i.i183
  call void @__sanitizer_cov_trace_pc() #10
  br label %format_is_dsd.exit185

for.inc.i.i.i183.format_is_dsd.exit185.thread_crit_edge: ; preds = %for.inc.i.i.i183
  call void @__sanitizer_cov_trace_pc() #10
  br label %format_is_dsd.exit185.thread

format_is_dsd.exit185:                            ; preds = %for.inc.i.i.i183.format_is_dsd.exit185_crit_edge, %if.end66.format_is_dsd.exit185_crit_edge
  %i.09.lcssa.i.i.i176 = phi i32 [ -48, %if.end66.format_is_dsd.exit185_crit_edge ], [ -16, %for.inc.i.i.i183.format_is_dsd.exit185_crit_edge ]
  %.lcssa.i.i.i177 = phi i32 [ %98, %if.end66.format_is_dsd.exit185_crit_edge ], [ %100, %for.inc.i.i.i183.format_is_dsd.exit185_crit_edge ]
  %101 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i177, i1 true) #8, !range !166
  %phi.bo.i178 = add nsw i32 %101, %i.09.lcssa.i.i.i176
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %phi.bo.i178)
  %phi.cmp.i179 = icmp ult i32 %phi.bo.i178, 5
  %spec.select = select i1 %phi.cmp.i179, i32 22579200, i32 %mclk_freq.0
  br label %format_is_dsd.exit185.thread

format_is_dsd.exit185.thread:                     ; preds = %format_is_dsd.exit185, %for.inc.i.i.i183.format_is_dsd.exit185.thread_crit_edge
  %102 = phi i32 [ %mclk_freq.0, %for.inc.i.i.i183.format_is_dsd.exit185.thread_crit_edge ], [ %spec.select, %format_is_dsd.exit185 ]
  %cpu_sysclk_id = getelementptr %struct.dai_link_data, ptr %11, i32 %13, i32 2
  %103 = ptrtoint ptr %cpu_sysclk_id to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %cpu_sysclk_id, align 4
  %call70 = tail call i32 @snd_soc_dai_set_sysclk(ptr noundef %5, i32 noundef %104, i32 noundef %102, i32 noundef 1) #8
  %105 = zext i32 %call70 to i64
  call void @__sanitizer_cov_trace_switch(i64 %105, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %call70, label %do.end77 [
    i32 0, label %format_is_dsd.exit185.thread.cleanup_crit_edge
    i32 -524, label %format_is_dsd.exit185.thread.cleanup_crit_edge238
  ]

format_is_dsd.exit185.thread.cleanup_crit_edge238: ; preds = %format_is_dsd.exit185.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

format_is_dsd.exit185.thread.cleanup_crit_edge:   ; preds = %format_is_dsd.exit185.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end77:                                         ; preds = %format_is_dsd.exit185.thread
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.63, i32 noundef %102, i32 noundef %call70) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end77, %format_is_dsd.exit185.thread.cleanup_crit_edge, %format_is_dsd.exit185.thread.cleanup_crit_edge238, %do.end58, %do.end45, %do.end32, %do.end
  %retval.0 = phi i32 [ %call20, %do.end ], [ %call25, %do.end32 ], [ %call38, %do.end45 ], [ %call51, %do.end58 ], [ %call70, %do.end77 ], [ 0, %format_is_dsd.exit185.thread.cleanup_crit_edge ], [ 0, %format_is_dsd.exit185.thread.cleanup_crit_edge238 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_set_fmt(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_set_tdm_slot(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_set_sysclk(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_physical_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_aif_startup(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %card2 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %card2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %card2, align 4
  %drvdata.i = getelementptr inbounds %struct.snd_soc_card, ptr %5, i32 0, i32 57
  %6 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %drvdata.i, align 4
  %link_data3 = getelementptr inbounds %struct.imx_card_data, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %link_data3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %link_data3, align 4
  %num = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %3, i32 0, i32 17
  %10 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num, align 4
  %arrayidx = getelementptr %struct.dai_link_data, ptr %9, i32 %11
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp.i = icmp ugt i32 %13, 2
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %7, align 4
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %support_tdm_channels = getelementptr inbounds %struct.imx_card_plat_data, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %support_tdm_channels to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %support_tdm_channels, align 4
  store ptr %17, ptr @imx_aif_startup.constraint_channels, align 4
  %18 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %7, align 4
  %num_tdm_channels = getelementptr inbounds %struct.imx_card_plat_data, ptr %19, i32 0, i32 11
  %20 = ptrtoint ptr %num_tdm_channels to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_tdm_channels, align 4
  store i32 %21, ptr getelementptr inbounds (%struct.snd_pcm_hw_constraint_list, ptr @imx_aif_startup.constraint_channels, i32 0, i32 1), align 4
  %22 = load ptr, ptr %7, align 4
  %support_tdm_rates = getelementptr inbounds %struct.imx_card_plat_data, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %support_tdm_rates to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %support_tdm_rates, align 4
  store ptr %24, ptr @imx_aif_startup.constraint_rates, align 4
  %25 = load ptr, ptr %7, align 4
  %num_tdm_rates = getelementptr inbounds %struct.imx_card_plat_data, ptr %25, i32 0, i32 9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %support_channels = getelementptr inbounds %struct.imx_card_plat_data, ptr %15, i32 0, i32 4
  %26 = ptrtoint ptr %support_channels to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %support_channels, align 4
  store ptr %27, ptr @imx_aif_startup.constraint_channels, align 4
  %28 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %7, align 4
  %num_channels = getelementptr inbounds %struct.imx_card_plat_data, ptr %29, i32 0, i32 10
  %30 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_channels, align 4
  store i32 %31, ptr getelementptr inbounds (%struct.snd_pcm_hw_constraint_list, ptr @imx_aif_startup.constraint_channels, i32 0, i32 1), align 4
  %32 = load ptr, ptr %7, align 4
  %support_rates = getelementptr inbounds %struct.imx_card_plat_data, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %support_rates to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %support_rates, align 4
  store ptr %34, ptr @imx_aif_startup.constraint_rates, align 4
  %35 = load ptr, ptr %7, align 4
  %num_rates = getelementptr inbounds %struct.imx_card_plat_data, ptr %35, i32 0, i32 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge.in = phi ptr [ %num_rates, %if.else ], [ %num_tdm_rates, %if.then ]
  %36 = ptrtoint ptr %storemerge.in to i32
  call void @__asan_load4_noabort(i32 %36)
  %storemerge = load i32, ptr %storemerge.in, align 4
  store i32 %storemerge, ptr getelementptr inbounds (%struct.snd_pcm_hw_constraint_list, ptr @imx_aif_startup.constraint_rates, i32 0, i32 1), align 4
  %37 = load i32, ptr getelementptr inbounds (%struct.snd_pcm_hw_constraint_list, ptr @imx_aif_startup.constraint_channels, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not = icmp eq i32 %37, 0
  br i1 %tobool.not, label %if.end.if.end17_crit_edge, label %if.then12

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then12:                                        ; preds = %if.end
  %call13 = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %1, i32 noundef 0, i32 noundef 10, ptr noundef nonnull @imx_aif_startup.constraint_channels) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end17thread-pre-split, label %if.then12.cleanup_crit_edge

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end17thread-pre-split:                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  %.pr = load i32, ptr getelementptr inbounds (%struct.snd_pcm_hw_constraint_list, ptr @imx_aif_startup.constraint_rates, i32 0, i32 1), align 4
  br label %if.end17

if.end17:                                         ; preds = %if.end17thread-pre-split, %if.end.if.end17_crit_edge
  %38 = phi i32 [ %.pr, %if.end17thread-pre-split ], [ %storemerge, %if.end.if.end17_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool18.not = icmp eq i32 %38, 0
  br i1 %tobool18.not, label %if.end17.if.end24_crit_edge, label %if.then19

if.end17.if.end24_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.then19:                                        ; preds = %if.end17
  %call20 = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %1, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @imx_aif_startup.constraint_rates) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then19.if.end24_crit_edge, label %if.then19.cleanup_crit_edge

if.then19.cleanup_crit_edge:                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then19.if.end24_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end24

if.end24:                                         ; preds = %if.then19.if.end24_crit_edge, %if.end17.if.end24_crit_edge
  %39 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %7, align 4
  %type = getelementptr inbounds %struct.imx_card_plat_data, ptr %40, i32 0, i32 13
  %41 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %42)
  %cmp = icmp eq i32 %42, 1
  br i1 %cmp, label %if.then26, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %runtime1, align 4
  %call28 = tail call i32 (ptr, i32, i32, ptr, ptr, i32, ...) @snd_pcm_hw_rule_add(ptr noundef %44, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @ak5558_hw_rule_rate, ptr noundef %arrayidx, i32 noundef 8, i32 noundef -1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %if.end24.cleanup_crit_edge, %if.then19.cleanup_crit_edge, %if.then12.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %if.then12.cleanup_crit_edge ], [ %call20, %if.then19.cleanup_crit_edge ], [ %call28, %if.then26 ], [ 0, %if.end24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_list(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_rule_add(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ak5558_hw_rule_rate(ptr noundef %p, ptr nocapture noundef readonly %r) #2 align 64 {
entry:
  %t = alloca %struct.snd_interval, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %r, i32 0, i32 4
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %t) #8
  %2 = call ptr @memcpy(ptr %t, ptr @__const.ak5558_hw_rule_rate.t, i32 12)
  %arrayidx.i = getelementptr %struct.snd_pcm_hw_params, ptr %p, i32 0, i32 3, i32 0
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 4
  %mul = mul i32 %6, %4
  %one2one_ratio = getelementptr inbounds %struct.dai_link_data, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %one2one_ratio to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %one2one_ratio, align 4, !range !167
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  %cond = select i1 %tobool.not, i32 2, i32 1
  %max = getelementptr inbounds %struct.snd_interval, ptr %t, i32 0, i32 1
  %mul1.1 = mul i32 %mul, 11025
  %mul2.1 = mul i32 %mul1.1, %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 36864001, i32 %mul2.1)
  %cmp3.1 = icmp ult i32 %mul2.1, 36864001
  %9 = select i1 %cmp3.1, i32 11025, i32 8000
  %mul1.2 = mul i32 %mul, 16000
  %mul2.2 = mul i32 %mul1.2, %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 36864001, i32 %mul2.2)
  %cmp3.2 = icmp ult i32 %mul2.2, 36864001
  %10 = select i1 %cmp3.2, i32 16000, i32 %9
  %mul1.3 = mul i32 %mul, 22050
  %mul2.3 = mul i32 %mul1.3, %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 36864001, i32 %mul2.3)
  %cmp3.3 = icmp ult i32 %mul2.3, 36864001
  %11 = select i1 %cmp3.3, i32 22050, i32 %10
  %mul1.4 = mul i32 %mul, 32000
  %mul2.4 = mul i32 %mul1.4, %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 36864001, i32 %mul2.4)
  %cmp3.4 = icmp ult i32 %mul2.4, 36864001
  %12 = select i1 %cmp3.4, i32 32000, i32 %11
  %mul1.5 = mul i32 %mul, 44100
  %mul2.5 = mul i32 %mul1.5, %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 36864001, i32 %mul2.5)
  %cmp3.5 = icmp ult i32 %mul2.5, 36864001
  %13 = select i1 %cmp3.5, i32 44100, i32 %12
  %mul1.6 = mul i32 %mul, 48000
  %mul2.6 = mul i32 %mul1.6, %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 36864001, i32 %mul2.6)
  %cmp3.6 = icmp ult i32 %mul2.6, 36864001
  %14 = select i1 %cmp3.6, i32 48000, i32 %13
  %mul1.7 = mul i32 %mul, 88200
  %mul2.7 = mul i32 %mul1.7, %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 36864001, i32 %mul2.7)
  %cmp3.7 = icmp ult i32 %mul2.7, 36864001
  %15 = select i1 %cmp3.7, i32 88200, i32 %14
  %mul1.8 = mul i32 %mul, 96000
  %mul2.8 = mul i32 %mul1.8, %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 36864001, i32 %mul2.8)
  %cmp3.8 = icmp ult i32 %mul2.8, 36864001
  %16 = select i1 %cmp3.8, i32 96000, i32 %15
  %mul1.9 = mul i32 %mul, 176400
  %mul2.9 = mul i32 %mul1.9, %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 36864001, i32 %mul2.9)
  %cmp3.9 = icmp ult i32 %mul2.9, 36864001
  %17 = select i1 %cmp3.9, i32 176400, i32 %16
  %mul1.10 = mul i32 %mul, 192000
  %mul2.10 = mul i32 %mul1.10, %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 36864001, i32 %mul2.10)
  %cmp3.10 = icmp ult i32 %mul2.10, 36864001
  %18 = select i1 %cmp3.10, i32 192000, i32 %17
  %mul1.11 = mul i32 %mul, 352800
  %mul2.11 = mul i32 %mul1.11, %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 36864001, i32 %mul2.11)
  %cmp3.11 = icmp ult i32 %mul2.11, 36864001
  %19 = select i1 %cmp3.11, i32 352800, i32 %18
  %mul1.12 = mul i32 %mul, 384000
  %mul2.12 = mul i32 %mul1.12, %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 36864001, i32 %mul2.12)
  %cmp3.12 = icmp ult i32 %mul2.12, 36864001
  %20 = select i1 %cmp3.12, i32 384000, i32 %19
  %mul1.13 = mul i32 %mul, 705600
  %mul2.13 = mul i32 %mul1.13, %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 36864001, i32 %mul2.13)
  %cmp3.13 = icmp ult i32 %mul2.13, 36864001
  %21 = select i1 %cmp3.13, i32 705600, i32 %20
  %mul1.14 = mul i32 %mul, 768000
  %mul2.14 = mul i32 %mul1.14, %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 36864001, i32 %mul2.14)
  %cmp3.14 = icmp ult i32 %mul2.14, 36864001
  %22 = select i1 %cmp3.14, i32 768000, i32 %21
  %23 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %max, align 4
  %var = getelementptr inbounds %struct.snd_pcm_hw_rule, ptr %r, i32 0, i32 1
  %24 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %var, align 4
  %sub.i = add i32 %25, -8
  %arrayidx.i21 = getelementptr %struct.snd_pcm_hw_params, ptr %p, i32 0, i32 3, i32 %sub.i
  %call11 = call i32 @snd_interval_refine(ptr noundef %arrayidx.i21, ptr noundef nonnull %t) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %t) #8
  ret i32 %call11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_interval_refine(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !35, !36, !37, !38, !39, !40, !42, !44, !46, !47, !48, !50, !52, !53, !54, !56, !58, !60, !61, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !91, !92, !94, !96, !98, !99, !100, !102, !104, !106, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !120, !121, !123, !124, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153}
!llvm.module.flags = !{!155, !156, !157, !158, !159, !160, !161, !162}
!llvm.ident = !{!163}

!0 = !{ptr @__initcall__kmod_snd_soc_imx_card__298_851_imx_card_driver_init6, !1, !"__initcall__kmod_snd_soc_imx_card__298_851_imx_card_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/fsl/imx-card.c", i32 851, i32 1}
!2 = !{ptr @__exitcall_imx_card_driver_exit, !1, !"__exitcall_imx_card_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description299, !4, !"__UNIQUE_ID_description299", i1 false, i1 false}
!4 = !{!"../sound/soc/fsl/imx-card.c", i32 853, i32 1}
!5 = !{ptr @__UNIQUE_ID_file300, !6, !"__UNIQUE_ID_file300", i1 false, i1 false}
!6 = !{!"../sound/soc/fsl/imx-card.c", i32 854, i32 1}
!7 = !{ptr @__UNIQUE_ID_license301, !6, !"__UNIQUE_ID_license301", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_alias302, !9, !"__UNIQUE_ID_alias302", i1 false, i1 false}
!9 = !{!"../sound/soc/fsl/imx-card.c", i32 855, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/fsl/imx-card.c", i32 845, i32 11}
!12 = !{ptr @imx_card_driver, !13, !"imx_card_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/fsl/imx-card.c", i32 843, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/fsl/imx-card.c", i32 739, i32 32}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/fsl/imx-card.c", i32 740, i32 34}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/fsl/imx-card.c", i32 745, i32 45}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/soc/fsl/imx-card.c", i32 751, i32 33}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/soc/fsl/imx-card.c", i32 756, i32 32}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/fsl/imx-card.c", i32 757, i32 34}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/fsl/imx-card.c", i32 767, i32 31}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/fsl/imx-card.c", i32 832, i32 41}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/soc/fsl/imx-card.c", i32 490, i32 41}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/soc/fsl/imx-card.c", i32 492, i32 3}
!34 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @imx_card_parse_of._entry, !33, !"_entry", i1 false, i1 false}
!39 = !{ptr @imx_card_parse_of._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/fsl/imx-card.c", i32 497, i32 42}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/soc/fsl/imx-card.c", i32 532, i32 37}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/fsl/imx-card.c", i32 534, i32 4}
!46 = !{ptr @imx_card_parse_of._entry.17, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @imx_card_parse_of._entry_ptr.19, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/soc/fsl/imx-card.c", i32 538, i32 34}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/fsl/imx-card.c", i32 540, i32 4}
!52 = !{ptr @imx_card_parse_of._entry.21, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @imx_card_parse_of._entry_ptr.23, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/fsl/imx-card.c", i32 545, i32 41}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/fsl/imx-card.c", i32 546, i32 8}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/soc/fsl/imx-card.c", i32 548, i32 4}
!60 = !{ptr @imx_card_parse_of._entry.26, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @imx_card_parse_of._entry_ptr.28, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/soc/fsl/imx-card.c", i32 552, i32 32}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/fsl/imx-card.c", i32 557, i32 29}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/soc/fsl/imx-card.c", i32 583, i32 11}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/soc/fsl/imx-card.c", i32 587, i32 36}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/soc/fsl/imx-card.c", i32 591, i32 29}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/soc/fsl/imx-card.c", i32 599, i32 40}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/soc/fsl/imx-card.c", i32 601, i32 45}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/fsl/imx-card.c", i32 603, i32 45}
!78 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/fsl/imx-card.c", i32 605, i32 45}
!80 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/soc/fsl/imx-card.c", i32 618, i32 29}
!82 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/fsl/imx-card.c", i32 619, i32 25}
!84 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/soc/fsl/imx-card.c", i32 622, i32 28}
!86 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/soc/fsl/imx-card.c", i32 627, i32 40}
!88 = !{ptr @.str.43, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/soc/fsl/imx-card.c", i32 629, i32 5}
!90 = !{ptr @imx_card_parse_of._entry.42, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @imx_card_parse_of._entry_ptr.44, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.45, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/soc/fsl/imx-card.c", i32 634, i32 40}
!94 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/soc/fsl/imx-card.c", i32 637, i32 41}
!96 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/soc/fsl/imx-card.c", i32 639, i32 6}
!98 = !{ptr @imx_card_parse_of._entry.47, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @imx_card_parse_of._entry_ptr.49, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.50, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/soc/fsl/imx-card.c", i32 649, i32 35}
!102 = !{ptr @imx_aif_ops_be, !103, !"imx_aif_ops_be", i1 false, i1 false}
!103 = !{!"../sound/soc/fsl/imx-card.c", i32 451, i32 33}
!104 = !{ptr @.str.51, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/soc/fsl/imx-card.c", i32 322, i32 3}
!106 = !{ptr @.str.52, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @imx_aif_hw_params._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @imx_aif_hw_params._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.54, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../sound/soc/fsl/imx-card.c", i32 330, i32 3}
!111 = !{ptr @imx_aif_hw_params._entry.53, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @imx_aif_hw_params._entry_ptr.55, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.57, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../sound/soc/fsl/imx-card.c", i32 337, i32 4}
!115 = !{ptr @imx_aif_hw_params._entry.56, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @imx_aif_hw_params._entry_ptr.58, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.60, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../sound/soc/fsl/imx-card.c", i32 346, i32 4}
!119 = !{ptr @imx_aif_hw_params._entry.59, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @imx_aif_hw_params._entry_ptr.61, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.63, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../sound/soc/fsl/imx-card.c", i32 363, i32 3}
!123 = !{ptr @imx_aif_hw_params._entry.62, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @imx_aif_hw_params._entry_ptr.64, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @imx_aif_ops, !126, !"imx_aif_ops", i1 false, i1 false}
!126 = !{!"../sound/soc/fsl/imx-card.c", i32 446, i32 33}
!127 = !{ptr @imx_aif_startup.constraint_rates, !128, !"constraint_rates", i1 false, i1 false}
!128 = !{!"../sound/soc/fsl/imx-card.c", i32 405, i32 43}
!129 = !{ptr @imx_aif_startup.constraint_channels, !130, !"constraint_channels", i1 false, i1 false}
!130 = !{!"../sound/soc/fsl/imx-card.c", i32 406, i32 43}
!131 = !{ptr @akcodec_rates, !132, !"akcodec_rates", i1 false, i1 false}
!132 = !{!"../sound/soc/fsl/imx-card.c", i32 186, i32 18}
!133 = !{ptr @akcodec_tdm_rates, !134, !"akcodec_tdm_rates", i1 false, i1 false}
!134 = !{!"../sound/soc/fsl/imx-card.c", i32 191, i32 18}
!135 = !{ptr @ak4458_fs_mul, !136, !"ak4458_fs_mul", i1 false, i1 false}
!136 = !{!"../sound/soc/fsl/imx-card.c", i32 121, i32 34}
!137 = !{ptr @ak4458_tdm_fs_mul, !138, !"ak4458_tdm_fs_mul", i1 false, i1 false}
!138 = !{!"../sound/soc/fsl/imx-card.c", i32 138, i32 38}
!139 = !{ptr @ak4458_channels, !140, !"ak4458_channels", i1 false, i1 false}
!140 = !{!"../sound/soc/fsl/imx-card.c", i32 195, i32 18}
!141 = !{ptr @ak4458_tdm_channels, !142, !"ak4458_tdm_channels", i1 false, i1 false}
!142 = !{!"../sound/soc/fsl/imx-card.c", i32 199, i32 18}
!143 = !{ptr @ak4497_fs_mul, !144, !"ak4497_fs_mul", i1 false, i1 false}
!144 = !{!"../sound/soc/fsl/imx-card.c", i32 149, i32 34}
!145 = !{ptr @ak5558_fs_mul, !146, !"ak5558_fs_mul", i1 false, i1 false}
!146 = !{!"../sound/soc/fsl/imx-card.c", i32 166, i32 34}
!147 = !{ptr @ak5558_tdm_fs_mul, !148, !"ak5558_tdm_fs_mul", i1 false, i1 false}
!148 = !{!"../sound/soc/fsl/imx-card.c", i32 180, i32 38}
!149 = !{ptr @ak5558_channels, !150, !"ak5558_channels", i1 false, i1 false}
!150 = !{!"../sound/soc/fsl/imx-card.c", i32 203, i32 18}
!151 = !{ptr @ak5558_tdm_channels, !152, !"ak5558_tdm_channels", i1 false, i1 false}
!152 = !{!"../sound/soc/fsl/imx-card.c", i32 207, i32 18}
!153 = !{ptr @imx_card_dt_ids, !154, !"imx_card_dt_ids", i1 false, i1 false}
!154 = !{!"../sound/soc/fsl/imx-card.c", i32 837, i32 34}
!155 = !{i32 1, !"wchar_size", i32 2}
!156 = !{i32 1, !"min_enum_size", i32 4}
!157 = !{i32 8, !"branch-target-enforcement", i32 0}
!158 = !{i32 8, !"sign-return-address", i32 0}
!159 = !{i32 8, !"sign-return-address-all", i32 0}
!160 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!161 = !{i32 7, !"uwtable", i32 1}
!162 = !{i32 7, !"frame-pointer", i32 2}
!163 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!164 = !{!"auto-init"}
!165 = !{!"branch_weights", i32 1, i32 2000}
!166 = !{i32 0, i32 33}
!167 = !{i8 0, i8 2}
