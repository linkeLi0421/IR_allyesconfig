; ModuleID = '/llk/IR_all_yes/sound/soc/samsung/smdk_spdif.c_pt.bc'
source_filename = "../sound/soc/samsung/smdk_spdif.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.snd_soc_dai_link_component = type { ptr, ptr, ptr }
%struct.snd_soc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.91, ptr }
%union.anon.91 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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

@smdk_snd_spdif_device = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@smdk_snd_spdif_dit_device = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_snd_soc_smdk_spdif__238_214_smdk_init6 = internal global ptr @smdk_init, section ".initcall6.init", align 4
@__exitcall_smdk_exit = internal global ptr @smdk_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author239 = internal constant [64 x i8] c"snd_soc_smdk_spdif.author=Seungwhan Youn, <sw.youn@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description240 = internal constant [52 x i8] c"snd_soc_smdk_spdif.description=ALSA SoC SMDK+S/PDIF\00", section ".modinfo", align 1
@__UNIQUE_ID_file241 = internal constant [61 x i8] c"snd_soc_smdk_spdif.file=sound/soc/samsung/snd-soc-smdk-spdif\00", section ".modinfo", align 1
@__UNIQUE_ID_license242 = internal constant [31 x i8] c"snd_soc_smdk_spdif.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"spdif-dit\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"soc-audio\00", [22 x i8] zeroinitializer }, align 32
@smdk = internal global { %struct.snd_soc_card, [184 x i8] } { %struct.snd_soc_card { ptr @.str.2, ptr null, ptr null, ptr null, [32 x i8] zeroinitializer, ptr null, ptr null, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @smdk_dai, i32 1, %struct.list_head zeroinitializer, i32 0, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.snd_soc_dapm_context zeroinitializer, %struct.snd_soc_dapm_stats zeroinitializer, ptr null, ptr null, %struct.work_struct zeroinitializer, i32 0, i8 0, ptr null }, [184 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"SMDK-S/PDIF\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"S/PDIF\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"S/PDIF PCM Playback\00", [44 x i8] zeroinitializer }, align 32
@spdif_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.6 }], [20 x i8] zeroinitializer }, align 32
@spdif_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str, ptr null, ptr @.str.7 }], [20 x i8] zeroinitializer }, align 32
@spdif_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.6, ptr null, ptr null }], [20 x i8] zeroinitializer }, align 32
@smdk_spdif_ops = internal constant { %struct.snd_soc_ops, [40 x i8] } { %struct.snd_soc_ops { ptr null, ptr null, ptr @smdk_hw_params, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@smdk_dai = internal global { { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }, [44 x i8] } { { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.3, ptr @.str.4, ptr @spdif_cpus, i32 1, ptr @spdif_codecs, i32 1, ptr @spdif_platforms, i32 1, i32 0, ptr null, i32 0, i32 0, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr @smdk_spdif_ops, ptr null, i8 0, i8 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"samsung-spdif\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dit-hifi\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"fout_epll\00", [22 x i8] zeroinitializer }, align 32
@set_audio_clock_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.11, i32 81, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s: failed to get fout_epll\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"set_audio_clock_rate\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"sound/soc/samsung/smdk_spdif.c\00", [33 x i8] zeroinitializer }, align 32
@set_audio_clock_rate._entry_ptr = internal global ptr @set_audio_clock_rate._entry, section ".printk_index", align 4
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sclk_spdif\00", [21 x i8] zeroinitializer }, align 32
@set_audio_clock_rate._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.10, ptr @.str.11, i32 90, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013%s: failed to get sclk_spdif\0A\00", [32 x i8] zeroinitializer }, align 32
@set_audio_clock_rate._entry_ptr.15 = internal global ptr @set_audio_clock_rate._entry.13, section ".printk_index", align 4
@set_audio_clock_heirachy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.11, i32 26, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\014%s: Cannot find fout_epll.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"set_audio_clock_heirachy\00", [39 x i8] zeroinitializer }, align 32
@set_audio_clock_heirachy._entry_ptr = internal global ptr @set_audio_clock_heirachy._entry, section ".printk_index", align 4
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mout_epll\00", [22 x i8] zeroinitializer }, align 32
@set_audio_clock_heirachy._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.17, ptr @.str.11, i32 33, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\014%s: Cannot find mout_epll.\0A\00", [34 x i8] zeroinitializer }, align 32
@set_audio_clock_heirachy._entry_ptr.21 = internal global ptr @set_audio_clock_heirachy._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sclk_audio\00", [21 x i8] zeroinitializer }, align 32
@set_audio_clock_heirachy._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.17, ptr @.str.11, i32 41, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014%s: Cannot find sclk_audio.\0A\00", [33 x i8] zeroinitializer }, align 32
@set_audio_clock_heirachy._entry_ptr.25 = internal global ptr @set_audio_clock_heirachy._entry.23, section ".printk_index", align 4
@set_audio_clock_heirachy._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.17, ptr @.str.11, i32 49, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014%s: Cannot find sclk_spdif.\0A\00", [33 x i8] zeroinitializer }, align 32
@set_audio_clock_heirachy._entry_ptr.28 = internal global ptr @set_audio_clock_heirachy._entry.26, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 32000, i64 44100, i64 48000, i64 96000]
@___asan_gen_.29 = private unnamed_addr constant [22 x i8] c"smdk_snd_spdif_device\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 165, i32 32 }
@___asan_gen_.32 = private unnamed_addr constant [26 x i8] c"smdk_snd_spdif_dit_device\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 164, i32 32 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 171, i32 52 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 179, i32 48 }
@___asan_gen_.41 = private unnamed_addr constant [5 x i8] c"smdk\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 157, i32 28 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 158, i32 10 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 151, i32 10 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 152, i32 17 }
@___asan_gen_.53 = private unnamed_addr constant [11 x i8] c"spdif_cpus\00", align 1
@___asan_gen_.56 = private unnamed_addr constant [13 x i8] c"spdif_codecs\00", align 1
@___asan_gen_.59 = private unnamed_addr constant [16 x i8] c"spdif_platforms\00", align 1
@___asan_gen_.62 = private unnamed_addr constant [15 x i8] c"smdk_spdif_ops\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 141, i32 33 }
@___asan_gen_.65 = private unnamed_addr constant [9 x i8] c"smdk_dai\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 150, i32 32 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 145, i32 1 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 79, i32 28 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 81, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 88, i32 29 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 90, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 25, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 30, i32 28 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 32, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 38, i32 36 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 40, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.128 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.129 = private constant [34 x i8] c"../sound/soc/samsung/smdk_spdif.c\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 48, i32 3 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @__UNIQUE_ID_author239, ptr @__UNIQUE_ID_description240, ptr @__UNIQUE_ID_file241, ptr @__UNIQUE_ID_license242, ptr @__exitcall_smdk_exit, ptr @__initcall__kmod_snd_soc_smdk_spdif__238_214_smdk_init6, ptr @set_audio_clock_heirachy._entry, ptr @set_audio_clock_heirachy._entry.19, ptr @set_audio_clock_heirachy._entry.23, ptr @set_audio_clock_heirachy._entry.26, ptr @set_audio_clock_heirachy._entry_ptr, ptr @set_audio_clock_heirachy._entry_ptr.21, ptr @set_audio_clock_heirachy._entry_ptr.25, ptr @set_audio_clock_heirachy._entry_ptr.28, ptr @set_audio_clock_rate._entry, ptr @set_audio_clock_rate._entry.13, ptr @set_audio_clock_rate._entry_ptr, ptr @set_audio_clock_rate._entry_ptr.15, ptr @smdk_exit, ptr @smdk_snd_spdif_device, ptr @smdk_snd_spdif_dit_device, ptr @.str, ptr @.str.1, ptr @smdk, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @spdif_cpus, ptr @spdif_codecs, ptr @spdif_platforms, ptr @smdk_spdif_ops, ptr @smdk_dai, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.27], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smdk_snd_spdif_device to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smdk_snd_spdif_dit_device to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smdk to i32), i32 648, i32 832, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spdif_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spdif_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spdif_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smdk_spdif_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smdk_dai to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_audio_clock_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_audio_clock_rate._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_audio_clock_heirachy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_audio_clock_heirachy._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_audio_clock_heirachy._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_audio_clock_heirachy._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @smdk_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %0 = load ptr, ptr @smdk_snd_spdif_device, align 4
  tail call void @platform_device_unregister(ptr noundef %0) #4
  %1 = load ptr, ptr @smdk_snd_spdif_dit_device, align 4
  tail call void @platform_device_unregister(ptr noundef %1) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @smdk_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @platform_device_alloc(ptr noundef nonnull @.str, i32 noundef -1) #4
  store ptr %call, ptr @smdk_snd_spdif_dit_device, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @platform_device_add(ptr noundef nonnull %call) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.err1_crit_edge

if.end.err1_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %err1

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @platform_device_alloc(ptr noundef nonnull @.str.1, i32 noundef -1) #4
  store ptr %call5, ptr @smdk_snd_spdif_device, align 4
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end4.err2_crit_edge, label %if.end8

if.end4.err2_crit_edge:                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %err2

if.end8:                                          ; preds = %if.end4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %call5, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @smdk, ptr %driver_data.i.i, align 4
  %call9 = tail call i32 @platform_device_add(ptr noundef nonnull %call5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.err3_crit_edge

if.end8.err3_crit_edge:                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %err3

if.end12:                                         ; preds = %if.end8
  %1 = load ptr, ptr @smdk_snd_spdif_device, align 4
  %call.i = tail call ptr @clk_get(ptr noundef null, ptr noundef nonnull @.str.8) #4
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %set_audio_clock_heirachy.exit.thread, label %if.end.i

set_audio_clock_heirachy.exit.thread:             ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17) #7
  br label %err4

if.end.i:                                         ; preds = %if.end12
  %call3.i = tail call ptr @clk_get(ptr noundef null, ptr noundef nonnull @.str.18) #4
  %cmp.i47.i = icmp ugt ptr %call3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i47.i, label %set_audio_clock_heirachy.exit.thread23, label %if.end11.i

set_audio_clock_heirachy.exit.thread23:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.17) #7
  tail call void @clk_put(ptr noundef %call.i) #4
  br label %err4

if.end11.i:                                       ; preds = %if.end.i
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %call12.i = tail call ptr @clk_get(ptr noundef %dev.i, ptr noundef nonnull @.str.22) #4
  %cmp.i48.i = icmp ugt ptr %call12.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i48.i, label %do.end17.i, label %if.end20.i

do.end17.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #6
  %call19.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.17) #7
  br label %set_audio_clock_heirachy.exit

if.end20.i:                                       ; preds = %if.end11.i
  %call21.i = tail call ptr @clk_get(ptr noundef null, ptr noundef nonnull @.str.12) #4
  %cmp.i49.i = icmp ugt ptr %call21.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i49.i, label %do.end26.i, label %if.end29.i

do.end26.i:                                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #6
  %call28.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.17) #7
  br label %out3.i

if.end29.i:                                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #6
  %call30.i = tail call i32 @clk_set_parent(ptr noundef %call3.i, ptr noundef %call.i) #4
  %call31.i = tail call i32 @clk_set_parent(ptr noundef %call12.i, ptr noundef %call3.i) #4
  %call32.i = tail call i32 @clk_set_parent(ptr noundef %call21.i, ptr noundef %call12.i) #4
  tail call void @clk_put(ptr noundef %call21.i) #4
  br label %out3.i

out3.i:                                           ; preds = %if.end29.i, %do.end26.i
  %ret.0.i = phi i32 [ -22, %do.end26.i ], [ 0, %if.end29.i ]
  tail call void @clk_put(ptr noundef %call12.i) #4
  br label %set_audio_clock_heirachy.exit

set_audio_clock_heirachy.exit:                    ; preds = %out3.i, %do.end17.i
  %ret.1.i = phi i32 [ -22, %do.end17.i ], [ %ret.0.i, %out3.i ]
  tail call void @clk_put(ptr noundef %call3.i) #4
  tail call void @clk_put(ptr noundef %call.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %tobool14.not = icmp eq i32 %ret.1.i, 0
  br i1 %tobool14.not, label %set_audio_clock_heirachy.exit.cleanup_crit_edge, label %set_audio_clock_heirachy.exit.err4_crit_edge

set_audio_clock_heirachy.exit.err4_crit_edge:     ; preds = %set_audio_clock_heirachy.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %err4

set_audio_clock_heirachy.exit.cleanup_crit_edge:  ; preds = %set_audio_clock_heirachy.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

err4:                                             ; preds = %set_audio_clock_heirachy.exit.err4_crit_edge, %set_audio_clock_heirachy.exit.thread23, %set_audio_clock_heirachy.exit.thread
  %retval.0.i22 = phi i32 [ -22, %set_audio_clock_heirachy.exit.thread ], [ %ret.1.i, %set_audio_clock_heirachy.exit.err4_crit_edge ], [ -22, %set_audio_clock_heirachy.exit.thread23 ]
  %2 = load ptr, ptr @smdk_snd_spdif_device, align 4
  tail call void @platform_device_del(ptr noundef %2) #4
  br label %err3

err3:                                             ; preds = %err4, %if.end8.err3_crit_edge
  %ret.0 = phi i32 [ %call9, %if.end8.err3_crit_edge ], [ %retval.0.i22, %err4 ]
  %3 = load ptr, ptr @smdk_snd_spdif_device, align 4
  tail call void @platform_device_put(ptr noundef %3) #4
  br label %err2

err2:                                             ; preds = %err3, %if.end4.err2_crit_edge
  %ret.1 = phi i32 [ %ret.0, %err3 ], [ -12, %if.end4.err2_crit_edge ]
  %4 = load ptr, ptr @smdk_snd_spdif_dit_device, align 4
  tail call void @platform_device_del(ptr noundef %4) #4
  br label %err1

err1:                                             ; preds = %err2, %if.end.err1_crit_edge
  %ret.2 = phi i32 [ %call1, %if.end.err1_crit_edge ], [ %ret.1, %err2 ]
  %5 = load ptr, ptr @smdk_snd_spdif_dit_device, align 4
  tail call void @platform_device_put(ptr noundef %5) #4
  br label %cleanup

cleanup:                                          ; preds = %err1, %set_audio_clock_heirachy.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %err1 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %set_audio_clock_heirachy.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smdk_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params) #2 align 64 {
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
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %entry.cleanup_crit_edge [
    i32 44100, label %entry.sw.epilog_crit_edge
    i32 32000, label %entry.sw.bb1_crit_edge
    i32 48000, label %entry.sw.bb1_crit_edge22
    i32 96000, label %entry.sw.bb1_crit_edge23
  ]

entry.sw.bb1_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb1

entry.sw.bb1_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb1

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge22, %entry.sw.bb1_crit_edge23
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %entry.sw.epilog_crit_edge
  %pll_out.0 = phi i32 [ 49152000, %sw.bb1 ], [ 45158400, %entry.sw.epilog_crit_edge ]
  %mul = shl nuw nsw i32 %7, 9
  %call.i = tail call ptr @clk_get(ptr noundef null, ptr noundef nonnull @.str.8) #4
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #7
  br label %cleanup

if.end.i:                                         ; preds = %sw.epilog
  %call3.i = tail call i32 @clk_set_rate(ptr noundef %call.i, i32 noundef %pll_out.0) #4
  tail call void @clk_put(ptr noundef %call.i) #4
  %call4.i = tail call ptr @clk_get(ptr noundef null, ptr noundef nonnull @.str.12) #4
  %cmp.i19.i = icmp ugt ptr %call4.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i19.i, label %do.end9.i, label %if.end

do.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.10) #7
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %call13.i = tail call i32 @clk_set_rate(ptr noundef %call4.i, i32 noundef %mul) #4
  tail call void @clk_put(ptr noundef %call4.i) #4
  %call4 = tail call i32 @snd_soc_dai_set_sysclk(ptr noundef %5, i32 noundef 0, i32 noundef %mul, i32 noundef 0) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end9.i, %do.end.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call4, %if.end ], [ -2, %do.end.i ], [ -2, %do.end9.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_set_sysclk(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !32, !33, !34, !35, !37, !39, !41, !42, !43, !44, !45, !47, !49, !50, !51, !53, !54, !55, !56, !58, !60, !61, !62, !64, !66, !67, !68, !70, !71}
!llvm.module.flags = !{!72, !73, !74, !75, !76, !77, !78, !79}
!llvm.ident = !{!80}

!0 = !{ptr @__initcall__kmod_snd_soc_smdk_spdif__238_214_smdk_init6, !1, !"__initcall__kmod_snd_soc_smdk_spdif__238_214_smdk_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/samsung/smdk_spdif.c", i32 214, i32 1}
!2 = !{ptr @__exitcall_smdk_exit, !3, !"__exitcall_smdk_exit", i1 false, i1 false}
!3 = !{!"../sound/soc/samsung/smdk_spdif.c", i32 215, i32 1}
!4 = !{ptr @__UNIQUE_ID_author239, !5, !"__UNIQUE_ID_author239", i1 false, i1 false}
!5 = !{!"../sound/soc/samsung/smdk_spdif.c", i32 217, i32 1}
!6 = !{ptr @__UNIQUE_ID_description240, !7, !"__UNIQUE_ID_description240", i1 false, i1 false}
!7 = !{!"../sound/soc/samsung/smdk_spdif.c", i32 218, i32 1}
!8 = !{ptr @__UNIQUE_ID_file241, !9, !"__UNIQUE_ID_file241", i1 false, i1 false}
!9 = !{!"../sound/soc/samsung/smdk_spdif.c", i32 219, i32 1}
!10 = !{ptr @__UNIQUE_ID_license242, !9, !"__UNIQUE_ID_license242", i1 false, i1 false}
!11 = !{ptr @smdk_snd_spdif_dit_device, !12, !"smdk_snd_spdif_dit_device", i1 false, i1 false}
!12 = !{!"../sound/soc/samsung/smdk_spdif.c", i32 164, i32 32}
!13 = !{ptr @smdk_snd_spdif_device, !14, !"smdk_snd_spdif_device", i1 false, i1 false}
!14 = !{!"../sound/soc/samsung/smdk_spdif.c", i32 165, i32 32}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../sound/soc/samsung/smdk_spdif.c", i32 171, i32 52}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/soc/samsung/smdk_spdif.c", i32 179, i32 48}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../sound/soc/samsung/smdk_spdif.c", i32 158, i32 10}
!21 = !{ptr @smdk, !22, !"smdk", i1 false, i1 false}
!22 = !{!"../sound/soc/samsung/smdk_spdif.c", i32 157, i32 28}
!23 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../sound/soc/samsung/smdk_spdif.c", i32 151, i32 10}
!25 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../sound/soc/samsung/smdk_spdif.c", i32 152, i32 17}
!27 = !{ptr @smdk_dai, !28, !"smdk_dai", i1 false, i1 false}
!28 = !{!"../sound/soc/samsung/smdk_spdif.c", i32 150, i32 32}
!29 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/soc/samsung/smdk_spdif.c", i32 145, i32 1}
!31 = !{ptr @spdif_cpus, !30, !"spdif_cpus", i1 false, i1 false}
!32 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @spdif_codecs, !30, !"spdif_codecs", i1 false, i1 false}
!34 = !{ptr @spdif_platforms, !30, !"spdif_platforms", i1 false, i1 false}
!35 = !{ptr @smdk_spdif_ops, !36, !"smdk_spdif_ops", i1 false, i1 false}
!36 = !{!"../sound/soc/samsung/smdk_spdif.c", i32 141, i32 33}
!37 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/soc/samsung/smdk_spdif.c", i32 79, i32 28}
!39 = !{ptr @.str.9, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/soc/samsung/smdk_spdif.c", i32 81, i32 3}
!41 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @set_audio_clock_rate._entry, !40, !"_entry", i1 false, i1 false}
!44 = !{ptr @set_audio_clock_rate._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.12, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/soc/samsung/smdk_spdif.c", i32 88, i32 29}
!47 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/soc/samsung/smdk_spdif.c", i32 90, i32 3}
!49 = !{ptr @set_audio_clock_rate._entry.13, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @set_audio_clock_rate._entry_ptr.15, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/soc/samsung/smdk_spdif.c", i32 25, i32 3}
!53 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @set_audio_clock_heirachy._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @set_audio_clock_heirachy._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.18, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/samsung/smdk_spdif.c", i32 30, i32 28}
!58 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/soc/samsung/smdk_spdif.c", i32 32, i32 3}
!60 = !{ptr @set_audio_clock_heirachy._entry.19, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @set_audio_clock_heirachy._entry_ptr.21, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.22, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/soc/samsung/smdk_spdif.c", i32 38, i32 36}
!64 = !{ptr @.str.24, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/samsung/smdk_spdif.c", i32 40, i32 3}
!66 = !{ptr @set_audio_clock_heirachy._entry.23, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @set_audio_clock_heirachy._entry_ptr.25, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/soc/samsung/smdk_spdif.c", i32 48, i32 3}
!70 = !{ptr @set_audio_clock_heirachy._entry.26, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @set_audio_clock_heirachy._entry_ptr.28, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{i32 1, !"wchar_size", i32 2}
!73 = !{i32 1, !"min_enum_size", i32 4}
!74 = !{i32 8, !"branch-target-enforcement", i32 0}
!75 = !{i32 8, !"sign-return-address", i32 0}
!76 = !{i32 8, !"sign-return-address-all", i32 0}
!77 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!78 = !{i32 7, !"uwtable", i32 1}
!79 = !{i32 7, !"frame-pointer", i32 2}
!80 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
