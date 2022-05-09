; ModuleID = '/llk/IR_all_yes/sound/soc/meson/axg-card.c_pt.bc'
source_filename = "../sound/soc/meson/axg-card.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.meson_card_match_data = type { ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.snd_soc_dai_link = type { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i24, %struct.snd_soc_dobj }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.91, ptr }
%union.anon.91 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_dai_link_component = type { ptr, ptr, ptr }
%struct.meson_card = type { ptr, %struct.snd_soc_card, ptr }
%struct.axg_dai_link_tdm_data = type { i32, i32, i32, ptr, ptr, ptr }
%struct.axg_dai_link_tdm_mask = type { i32, i32 }
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }

@__initcall__kmod_snd_soc_meson_axg_sound_card__246_372_axg_card_pdrv_init6 = internal global ptr @axg_card_pdrv_init, section ".initcall6.init", align 4
@axg_card_pdrv = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @meson_card_probe, ptr @meson_card_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @axg_card_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_axg_card_pdrv_exit = internal global ptr @axg_card_pdrv_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description247 = internal constant [73 x i8] c"snd_soc_meson_axg_sound_card.description=Amlogic AXG ALSA machine driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author248 = internal constant [73 x i8] c"snd_soc_meson_axg_sound_card.author=Jerome Brunet <jbrunet@baylibre.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file249 = internal constant [79 x i8] c"snd_soc_meson_axg_sound_card.file=sound/soc/meson/snd-soc-meson-axg-sound-card\00", section ".modinfo", align 1
@__UNIQUE_ID_license250 = internal constant [44 x i8] c"snd_soc_meson_axg_sound_card.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"axg-sound-card\00", [17 x i8] zeroinitializer }, align 32
@axg_card_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,axg-sound-card\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @axg_card_match_data }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@axg_card_match_data = internal constant { %struct.meson_card_match_data, [28 x i8] } { %struct.meson_card_match_data { ptr @axg_card_add_link }, [28 x i8] zeroinitializer }, align 32
@codec_params = internal constant { %struct.snd_soc_pcm_stream, [56 x i8] } { %struct.snd_soc_pcm_stream { ptr null, i64 64, i32 0, i32 5525, i32 192000, i32 1, i32 8, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"amlogic,axg-frddr\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"amlogic,axg-toddr\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"amlogic,g12a-tohdmitx\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"amlogic,g12a-toacodec\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"amlogic,axg-tdm-iface\00", [42 x i8] zeroinitializer }, align 32
@axg_card_tdm_be_ops = internal constant { %struct.snd_soc_ops, [40 x i8] } { %struct.snd_soc_ops { ptr null, ptr null, ptr @axg_card_tdm_be_hw_params, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mclk-fs\00", [24 x i8] zeroinitializer }, align 32
@axg_card_parse_tdm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 271, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"error parsing tdm link slots\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"axg_card_parse_tdm\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sound/soc/meson/axg-card.c\00", [37 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@axg_card_parse_tdm._entry_ptr = internal global ptr @axg_card_parse_tdm._entry, section ".printk_index", align 4
@axg_card_tdm_dai_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.9, i32 70, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"setting tdm link slots failed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"axg_card_tdm_dai_init\00", [42 x i8] zeroinitializer }, align 32
@axg_card_tdm_dai_init._entry_ptr = internal global ptr @axg_card_tdm_dai_init._entry, section ".printk_index", align 4
@axg_card_tdm_dai_init._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.9, i32 78, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@axg_card_tdm_dai_init._entry_ptr.15 = internal global ptr @axg_card_tdm_dai_init._entry.14, section ".printk_index", align 4
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dai-tdm-slot-tx-mask-%d\00", [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dai-tdm-slot-rx-mask-%d\00", [40 x i8] zeroinitializer }, align 32
@axg_card_parse_cpu_tdm_slots._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.9, i32 195, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tdm link has no cpu slots\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"axg_card_parse_cpu_tdm_slots\00", [35 x i8] zeroinitializer }, align 32
@axg_card_parse_cpu_tdm_slots._entry_ptr = internal global ptr @axg_card_parse_cpu_tdm_slots._entry, section ".printk_index", align 4
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dai-tdm-slot-num\00", [47 x i8] zeroinitializer }, align 32
@axg_card_parse_cpu_tdm_slots._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.19, ptr @.str.9, i32 211, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bad slot number\0A\00", [47 x i8] zeroinitializer }, align 32
@axg_card_parse_cpu_tdm_slots._entry_ptr.23 = internal global ptr @axg_card_parse_cpu_tdm_slots._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dai-tdm-slot-width\00", [45 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dai-tdm-slot-rx-mask\00", [43 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dai-tdm-slot-tx-mask\00", [43 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s-lb\00", [26 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TDM Loopback\00", [19 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"snd-soc-dummy\00", [18 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"snd-soc-dummy-dai\00", [46 x i8] zeroinitializer }, align 32
@axg_card_tdm_dai_lb_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.31, ptr @.str.9, i32 96, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"axg_card_tdm_dai_lb_init\00", [39 x i8] zeroinitializer }, align 32
@axg_card_tdm_dai_lb_init._entry_ptr = internal global ptr @axg_card_tdm_dai_lb_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966772]
@___asan_gen_.32 = private unnamed_addr constant [14 x i8] c"axg_card_pdrv\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 364, i32 31 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 368, i32 11 }
@___asan_gen_.38 = private unnamed_addr constant [18 x i8] c"axg_card_of_match\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 356, i32 34 }
@___asan_gen_.41 = private unnamed_addr constant [20 x i8] c"axg_card_match_data\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 352, i32 43 }
@___asan_gen_.44 = private unnamed_addr constant [13 x i8] c"codec_params\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 32, i32 40 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 296, i32 37 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 291, i32 37 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 306, i32 37 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 307, i32 31 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 301, i32 37 }
@___asan_gen_.62 = private unnamed_addr constant [20 x i8] c"axg_card_tdm_be_ops\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 51, i32 33 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 267, i32 29 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 271, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 69, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 78, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 174, i32 26 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 184, i32 26 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 195, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 199, i32 29 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 211, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 215, i32 29 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 236, i32 32 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 238, i32 32 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 119, i32 51 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 134, i32 23 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 135, i32 21 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 136, i32 25 }
@___asan_gen_.143 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.146 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.147 = private constant [30 x i8] c"../sound/soc/meson/axg-card.c\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.147, i32 96, i32 3 }
@llvm.compiler.used = appending global [52 x ptr] [ptr @__UNIQUE_ID_author248, ptr @__UNIQUE_ID_description247, ptr @__UNIQUE_ID_file249, ptr @__UNIQUE_ID_license250, ptr @__exitcall_axg_card_pdrv_exit, ptr @__initcall__kmod_snd_soc_meson_axg_sound_card__246_372_axg_card_pdrv_init6, ptr @axg_card_parse_cpu_tdm_slots._entry, ptr @axg_card_parse_cpu_tdm_slots._entry.21, ptr @axg_card_parse_cpu_tdm_slots._entry_ptr, ptr @axg_card_parse_cpu_tdm_slots._entry_ptr.23, ptr @axg_card_parse_tdm._entry, ptr @axg_card_parse_tdm._entry_ptr, ptr @axg_card_pdrv_exit, ptr @axg_card_tdm_dai_init._entry, ptr @axg_card_tdm_dai_init._entry.14, ptr @axg_card_tdm_dai_init._entry_ptr, ptr @axg_card_tdm_dai_init._entry_ptr.15, ptr @axg_card_tdm_dai_lb_init._entry, ptr @axg_card_tdm_dai_lb_init._entry_ptr, ptr @axg_card_pdrv, ptr @.str, ptr @axg_card_of_match, ptr @axg_card_match_data, ptr @codec_params, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @axg_card_tdm_be_ops, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axg_card_pdrv to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axg_card_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axg_card_match_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @codec_params to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axg_card_tdm_be_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axg_card_parse_tdm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axg_card_tdm_dai_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axg_card_tdm_dai_init._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axg_card_parse_cpu_tdm_slots._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axg_card_parse_cpu_tdm_slots._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axg_card_tdm_dai_lb_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @axg_card_pdrv_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @axg_card_pdrv, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @axg_card_pdrv_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @axg_card_pdrv) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @meson_card_probe(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @meson_card_remove(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axg_card_add_link(ptr noundef %card, ptr noundef %np, ptr nocapture noundef %index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dai_link1 = getelementptr inbounds %struct.snd_soc_card, ptr %card, i32 0, i32 24
  %0 = ptrtoint ptr %dai_link1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dai_link1, align 4
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %arrayidx = getelementptr %struct.snd_soc_dai_link, ptr %1, i32 %3
  %dev = getelementptr inbounds %struct.snd_soc_card, ptr %card, i32 0, i32 5
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %5, i32 noundef 12, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %cpus = getelementptr %struct.snd_soc_dai_link, ptr %1, i32 %3, i32 2
  %6 = ptrtoint ptr %cpus to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %cpus, align 4
  %num_cpus = getelementptr %struct.snd_soc_dai_link, ptr %1, i32 %3, i32 3
  %7 = ptrtoint ptr %num_cpus to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %num_cpus, align 4
  %nonatomic = getelementptr %struct.snd_soc_dai_link, ptr %1, i32 %3, i32 18
  %8 = ptrtoint ptr %nonatomic to i32
  call void @__asan_load4_noabort(i32 %8)
  %bf.load = load i32, ptr %nonatomic, align 4
  %bf.set = or i32 %bf.load, -2147483648
  store i32 %bf.set, ptr %nonatomic, align 4
  %of_node = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %call.i, i32 0, i32 1
  %dai_name = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %call.i, i32 0, i32 2
  %call4 = tail call i32 @meson_card_parse_dai(ptr noundef %card, ptr noundef %np, ptr noundef %of_node, ptr noundef %dai_name) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %9 = ptrtoint ptr %cpus to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cpus, align 4
  %of_node9 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %of_node9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node9, align 4
  %call.i75 = tail call i32 @of_device_is_compatible(ptr noundef %12, ptr noundef nonnull @.str.1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i75)
  %tobool11.not = icmp eq i32 %call.i75, 0
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %call13 = tail call i32 @meson_card_set_fe_link(ptr noundef %card, ptr noundef %arrayidx, ptr noundef %np, i1 noundef zeroext true) #7
  br label %cleanup

if.else:                                          ; preds = %if.end7
  %13 = ptrtoint ptr %cpus to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cpus, align 4
  %of_node15 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %of_node15 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %of_node15, align 4
  %call.i76 = tail call i32 @of_device_is_compatible(ptr noundef %16, ptr noundef nonnull @.str.2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i76)
  %tobool17.not = icmp eq i32 %call.i76, 0
  br i1 %tobool17.not, label %if.end21, label %if.then18

if.then18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %call19 = tail call i32 @meson_card_set_fe_link(ptr noundef %card, ptr noundef %arrayidx, ptr noundef %np, i1 noundef zeroext false) #7
  br label %cleanup

if.end21:                                         ; preds = %if.else
  %call22 = tail call i32 @meson_card_set_be_link(ptr noundef %card, ptr noundef %arrayidx, ptr noundef %np) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end25:                                         ; preds = %if.end21
  %17 = ptrtoint ptr %cpus to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cpus, align 4
  %of_node27 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %of_node27 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %of_node27, align 4
  %call28 = tail call fastcc i32 @axg_card_cpu_is_codec(ptr noundef %20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.else31, label %if.then30

if.then30:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %params = getelementptr %struct.snd_soc_dai_link, ptr %1, i32 %3, i32 9
  %21 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @codec_params, ptr %params, align 4
  br label %cleanup

if.else31:                                        ; preds = %if.end25
  %22 = ptrtoint ptr %nonatomic to i32
  call void @__asan_load4_noabort(i32 %22)
  %bf.load32 = load i32, ptr %nonatomic, align 4
  %bf.set34 = or i32 %bf.load32, 16777216
  store i32 %bf.set34, ptr %nonatomic, align 4
  tail call void @snd_soc_dai_link_set_capabilities(ptr noundef %arrayidx) #7
  %23 = ptrtoint ptr %cpus to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cpus, align 4
  %of_node36 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %of_node36 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %of_node36, align 4
  %call.i77 = tail call i32 @of_device_is_compatible(ptr noundef %26, ptr noundef nonnull @.str.5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i77)
  %tobool38.not = icmp eq i32 %call.i77, 0
  br i1 %tobool38.not, label %if.else31.cleanup_crit_edge, label %if.then39

if.else31.cleanup_crit_edge:                      ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then39:                                        ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #9
  %call40 = tail call fastcc i32 @axg_card_parse_tdm(ptr noundef %card, ptr noundef %np, ptr noundef %index)
  br label %cleanup

cleanup:                                          ; preds = %if.then39, %if.else31.cleanup_crit_edge, %if.then30, %if.end21.cleanup_crit_edge, %if.then18, %if.then12, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %if.then12 ], [ %call19, %if.then18 ], [ -12, %entry.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ], [ %call22, %if.end21.cleanup_crit_edge ], [ 0, %if.then30 ], [ %call40, %if.then39 ], [ 0, %if.else31.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @meson_card_parse_dai(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @meson_card_set_fe_link(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @meson_card_set_be_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @axg_card_cpu_is_codec(ptr noundef %np) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @of_device_is_compatible(ptr noundef %np, ptr noundef nonnull @.str.3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.rhs, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 @of_device_is_compatible(ptr noundef %np, ptr noundef nonnull @.str.4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2 = icmp ne i32 %call1, 0
  %phi.cast = zext i1 %tobool2 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry.lor.end_crit_edge
  %0 = phi i32 [ 1, %entry.lor.end_crit_edge ], [ %phi.cast, %lor.rhs ]
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_dai_link_set_capabilities(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @axg_card_parse_tdm(ptr noundef %card, ptr noundef %node, ptr nocapture noundef %index) unnamed_addr #2 align 64 {
entry:
  %propname.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %drvdata.i = getelementptr inbounds %struct.snd_soc_card, ptr %card, i32 0, i32 57
  %0 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drvdata.i, align 4
  %dai_link = getelementptr inbounds %struct.snd_soc_card, ptr %card, i32 0, i32 24
  %2 = ptrtoint ptr %dai_link to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dai_link, align 4
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index, align 4
  %dev = getelementptr inbounds %struct.snd_soc_card, ptr %card, i32 0, i32 5
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %7, i32 noundef 24, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %link_data = getelementptr inbounds %struct.meson_card, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %link_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %link_data, align 4
  %10 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %index, align 4
  %arrayidx2 = getelementptr ptr, ptr %9, i32 %11
  %12 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %arrayidx2, align 4
  %ops = getelementptr %struct.snd_soc_dai_link, ptr %3, i32 %5, i32 16
  %13 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @axg_card_tdm_be_ops, ptr %ops, align 4
  %init = getelementptr %struct.snd_soc_dai_link, ptr %3, i32 %5, i32 13
  %14 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @axg_card_tdm_dai_init, ptr %init, align 4
  %cpus = getelementptr %struct.snd_soc_dai_link, ptr %3, i32 %5, i32 2
  %15 = ptrtoint ptr %cpus to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cpus, align 4
  %of_node = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %of_node, align 4
  %call3 = tail call i32 @meson_card_parse_daifmt(ptr noundef %node, ptr noundef %18) #7
  %dai_fmt = getelementptr %struct.snd_soc_dai_link, ptr %3, i32 %5, i32 11
  %19 = ptrtoint ptr %dai_fmt to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call3, ptr %dai_fmt, align 4
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.6, ptr noundef nonnull %call.i, i32 noundef 1, i32 noundef 0) #7
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %propname.i) #7
  %20 = call ptr @memset(ptr %propname.i, i32 255, i32 32)
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %22, i32 noundef 16, i32 noundef 3520) #7
  %tx_mask.i = getelementptr inbounds %struct.axg_dai_link_tdm_data, ptr %call.i, i32 0, i32 3
  %23 = ptrtoint ptr %tx_mask.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call5.i.i.i, ptr %tx_mask.i, align 4
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  %call5.i.i133.i = tail call noalias ptr @devm_kmalloc(ptr noundef %25, i32 noundef 16, i32 noundef 3520) #7
  %rx_mask.i = getelementptr inbounds %struct.axg_dai_link_tdm_data, ptr %call.i, i32 0, i32 4
  %26 = ptrtoint ptr %rx_mask.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call5.i.i133.i, ptr %rx_mask.i, align 4
  %27 = ptrtoint ptr %tx_mask.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tx_mask.i, align 4
  %tobool.not.i = icmp eq ptr %28, null
  %tobool5.not.i = icmp eq ptr %call5.i.i133.i, null
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool5.not.i
  br i1 %or.cond.i, label %if.end.do.end_crit_edge, label %for.body.preheader.i

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

for.body.preheader.i:                             ; preds = %if.end
  %call6.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %propname.i, i32 noundef 32, ptr noundef nonnull @.str.16, i32 noundef 0) #7
  %29 = ptrtoint ptr %tx_mask.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tx_mask.i, align 4
  %call9.i = call i32 @snd_soc_of_get_slot_mask(ptr noundef %node, ptr noundef nonnull %propname.i, ptr noundef %30) #7
  %31 = ptrtoint ptr %tx_mask.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tx_mask.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  %call6.1.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %propname.i, i32 noundef 32, ptr noundef nonnull @.str.16, i32 noundef 1) #7
  %35 = ptrtoint ptr %tx_mask.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tx_mask.i, align 4
  %arrayidx.1.i = getelementptr i32, ptr %36, i32 1
  %call9.1.i = call i32 @snd_soc_of_get_slot_mask(ptr noundef %node, ptr noundef nonnull %propname.i, ptr noundef %arrayidx.1.i) #7
  %37 = ptrtoint ptr %tx_mask.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tx_mask.i, align 4
  %arrayidx11.1.i = getelementptr i32, ptr %38, i32 1
  %39 = ptrtoint ptr %arrayidx11.1.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx11.1.i, align 4
  %41 = call i32 @llvm.umax.i32(i32 %34, i32 %40) #7
  %call6.2.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %propname.i, i32 noundef 32, ptr noundef nonnull @.str.16, i32 noundef 2) #7
  %42 = ptrtoint ptr %tx_mask.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %tx_mask.i, align 4
  %arrayidx.2.i = getelementptr i32, ptr %43, i32 2
  %call9.2.i = call i32 @snd_soc_of_get_slot_mask(ptr noundef %node, ptr noundef nonnull %propname.i, ptr noundef %arrayidx.2.i) #7
  %44 = ptrtoint ptr %tx_mask.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %tx_mask.i, align 4
  %arrayidx11.2.i = getelementptr i32, ptr %45, i32 2
  %46 = ptrtoint ptr %arrayidx11.2.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx11.2.i, align 4
  %48 = call i32 @llvm.umax.i32(i32 %41, i32 %47) #7
  %call6.3.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %propname.i, i32 noundef 32, ptr noundef nonnull @.str.16, i32 noundef 3) #7
  %49 = ptrtoint ptr %tx_mask.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %tx_mask.i, align 4
  %arrayidx.3.i = getelementptr i32, ptr %50, i32 3
  %call9.3.i = call i32 @snd_soc_of_get_slot_mask(ptr noundef %node, ptr noundef nonnull %propname.i, ptr noundef %arrayidx.3.i) #7
  %51 = ptrtoint ptr %tx_mask.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %tx_mask.i, align 4
  %arrayidx11.3.i = getelementptr i32, ptr %52, i32 3
  %53 = ptrtoint ptr %arrayidx11.3.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx11.3.i, align 4
  %55 = call i32 @llvm.umax.i32(i32 %48, i32 %54) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool13.not.i = icmp eq i32 %55, 0
  br i1 %tobool13.not.i, label %if.then14.i, label %for.body.preheader.i.if.end15.i_crit_edge

for.body.preheader.i.if.end15.i_crit_edge:        ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i

if.then14.i:                                      ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  %dpcm_playback.i = getelementptr %struct.snd_soc_dai_link, ptr %3, i32 %5, i32 18
  %56 = ptrtoint ptr %dpcm_playback.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %bf.load.i = load i32, ptr %dpcm_playback.i, align 4
  %bf.clear.i = and i32 %bf.load.i, -2097153
  store i32 %bf.clear.i, ptr %dpcm_playback.i, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then14.i, %for.body.preheader.i.if.end15.i_crit_edge
  %call20.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %propname.i, i32 noundef 32, ptr noundef nonnull @.str.17, i32 noundef 0) #7
  %57 = ptrtoint ptr %rx_mask.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %rx_mask.i, align 4
  %call24.i = call i32 @snd_soc_of_get_slot_mask(ptr noundef %node, ptr noundef nonnull %propname.i, ptr noundef %58) #7
  %59 = ptrtoint ptr %rx_mask.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %rx_mask.i, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %60, align 4
  %call20.1.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %propname.i, i32 noundef 32, ptr noundef nonnull @.str.17, i32 noundef 1) #7
  %63 = ptrtoint ptr %rx_mask.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %rx_mask.i, align 4
  %arrayidx23.1.i = getelementptr i32, ptr %64, i32 1
  %call24.1.i = call i32 @snd_soc_of_get_slot_mask(ptr noundef %node, ptr noundef nonnull %propname.i, ptr noundef %arrayidx23.1.i) #7
  %65 = ptrtoint ptr %rx_mask.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %rx_mask.i, align 4
  %arrayidx26.1.i = getelementptr i32, ptr %66, i32 1
  %67 = ptrtoint ptr %arrayidx26.1.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx26.1.i, align 4
  %69 = call i32 @llvm.umax.i32(i32 %62, i32 %68) #7
  %call20.2.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %propname.i, i32 noundef 32, ptr noundef nonnull @.str.17, i32 noundef 2) #7
  %70 = ptrtoint ptr %rx_mask.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %rx_mask.i, align 4
  %arrayidx23.2.i = getelementptr i32, ptr %71, i32 2
  %call24.2.i = call i32 @snd_soc_of_get_slot_mask(ptr noundef %node, ptr noundef nonnull %propname.i, ptr noundef %arrayidx23.2.i) #7
  %72 = ptrtoint ptr %rx_mask.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %rx_mask.i, align 4
  %arrayidx26.2.i = getelementptr i32, ptr %73, i32 2
  %74 = ptrtoint ptr %arrayidx26.2.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx26.2.i, align 4
  %76 = call i32 @llvm.umax.i32(i32 %69, i32 %75) #7
  %call20.3.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %propname.i, i32 noundef 32, ptr noundef nonnull @.str.17, i32 noundef 3) #7
  %77 = ptrtoint ptr %rx_mask.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %rx_mask.i, align 4
  %arrayidx23.3.i = getelementptr i32, ptr %78, i32 3
  %call24.3.i = call i32 @snd_soc_of_get_slot_mask(ptr noundef %node, ptr noundef nonnull %propname.i, ptr noundef %arrayidx23.3.i) #7
  %79 = ptrtoint ptr %rx_mask.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %rx_mask.i, align 4
  %arrayidx26.3.i = getelementptr i32, ptr %80, i32 3
  %81 = ptrtoint ptr %arrayidx26.3.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx26.3.i, align 4
  %83 = call i32 @llvm.umax.i32(i32 %76, i32 %82) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool36.not.i = icmp eq i32 %83, 0
  br i1 %tobool36.not.i, label %if.end41.i, label %if.end15.i.if.end46.i_crit_edge

if.end15.i.if.end46.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46.i

if.end41.i:                                       ; preds = %if.end15.i
  %dpcm_capture.i = getelementptr %struct.snd_soc_dai_link, ptr %3, i32 %5, i32 18
  %84 = ptrtoint ptr %dpcm_capture.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %bf.load38.i = load i32, ptr %dpcm_capture.i, align 4
  %bf.clear39.i = and i32 %bf.load38.i, -4194305
  store i32 %bf.clear39.i, ptr %dpcm_capture.i, align 4
  br i1 %tobool13.not.i, label %if.end41.i.do.end.sink.split_crit_edge, label %if.end41.i.if.end46.i_crit_edge

if.end41.i.if.end46.i_crit_edge:                  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46.i

if.end41.i.do.end.sink.split_crit_edge:           ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.sink.split

if.end46.i:                                       ; preds = %if.end41.i.if.end46.i_crit_edge, %if.end15.i.if.end46.i_crit_edge
  %slots.i = getelementptr inbounds %struct.axg_dai_link_tdm_data, ptr %call.i, i32 0, i32 1
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.20, ptr noundef %slots.i, i32 noundef 1, i32 noundef 0) #7
  %85 = ptrtoint ptr %slots.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %slots.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool49.not.i = icmp eq i32 %86, 0
  %87 = call i32 @llvm.umax.i32(i32 %55, i32 %83) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool.not.i.i = icmp eq i32 %87, 0
  %88 = call i32 @llvm.ctlz.i32(i32 %87, i1 true) #7, !range !92
  %sub.i.i = sub nuw nsw i32 32, %88
  %cond.i.i = select i1 %tobool.not.i.i, i32 0, i32 %sub.i.i
  br i1 %tobool49.not.i, label %if.then50.i, label %if.else.i

if.then50.i:                                      ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #9
  %89 = ptrtoint ptr %slots.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %cond.i.i, ptr %slots.i, align 4
  br label %if.end9

if.else.i:                                        ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_cmp4(i32 %86, i32 %cond.i.i)
  %cmp67.i = icmp ult i32 %86, %cond.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %86)
  %cmp70.i = icmp ugt i32 %86, 32
  %or.cond138.i = or i1 %cmp67.i, %cmp70.i
  br i1 %or.cond138.i, label %if.else.i.do.end.sink.split_crit_edge, label %if.else.i.if.end9_crit_edge

if.else.i.if.end9_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.else.i.do.end.sink.split_crit_edge:            ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.sink.split

do.end.sink.split:                                ; preds = %if.else.i.do.end.sink.split_crit_edge, %if.end41.i.do.end.sink.split_crit_edge
  %.str.22.sink = phi ptr [ @.str.18, %if.end41.i.do.end.sink.split_crit_edge ], [ @.str.22, %if.else.i.do.end.sink.split_crit_edge ]
  %90 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %91, ptr noundef nonnull %.str.22.sink) #10
  br label %do.end

do.end:                                           ; preds = %do.end.sink.split, %if.end.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ -12, %if.end.do.end_crit_edge ], [ -22, %do.end.sink.split ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %propname.i) #7
  %92 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %93, ptr noundef nonnull @.str.7) #10
  br label %cleanup

if.end9:                                          ; preds = %if.else.i.if.end9_crit_edge, %if.then50.i
  %slot_width.i = getelementptr inbounds %struct.axg_dai_link_tdm_data, ptr %call.i, i32 0, i32 2
  %call.i.i134.i = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.24, ptr noundef %slot_width.i, i32 noundef 1, i32 noundef 0) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %propname.i) #7
  %num_codecs.i = getelementptr %struct.snd_soc_dai_link, ptr %3, i32 %5, i32 5
  %94 = ptrtoint ptr %num_codecs.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %num_codecs.i, align 4
  %96 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %95, i32 8) #7
  %97 = extractvalue { i32, i1 } %96, 1
  br i1 %97, label %if.end9.cleanup_crit_edge, label %devm_kcalloc.exit.i, !prof !93

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

devm_kcalloc.exit.i:                              ; preds = %if.end9
  %98 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev, align 4
  %100 = extractvalue { i32, i1 } %96, 0
  %call5.i.i.i51 = call noalias ptr @devm_kmalloc(ptr noundef %99, i32 noundef %100, i32 noundef 3520) #7
  %tobool.not.i52 = icmp eq ptr %call5.i.i.i51, null
  br i1 %tobool.not.i52, label %devm_kcalloc.exit.i.cleanup_crit_edge, label %if.end.i

devm_kcalloc.exit.i.cleanup_crit_edge:            ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %devm_kcalloc.exit.i
  %codec_masks.i = getelementptr inbounds %struct.axg_dai_link_tdm_data, ptr %call.i, i32 0, i32 5
  %101 = ptrtoint ptr %codec_masks.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %call5.i.i.i51, ptr %codec_masks.i, align 4
  %call1.i = call ptr @of_get_next_child(ptr noundef %node, ptr noundef null) #7
  %cmp.not16.i = icmp eq ptr %call1.i, null
  br i1 %cmp.not16.i, label %if.end.i.if.end13_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.if.end13_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %np.018.i = phi ptr [ %call4.i, %for.body.i.for.body.i_crit_edge ], [ %call1.i, %if.end.i.for.body.i_crit_edge ]
  %codec_mask.017.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %call5.i.i.i51, %if.end.i.for.body.i_crit_edge ]
  %rx.i = getelementptr inbounds %struct.axg_dai_link_tdm_mask, ptr %codec_mask.017.i, i32 0, i32 1
  %call2.i = call i32 @snd_soc_of_get_slot_mask(ptr noundef nonnull %np.018.i, ptr noundef nonnull @.str.25, ptr noundef %rx.i) #7
  %call3.i = call i32 @snd_soc_of_get_slot_mask(ptr noundef nonnull %np.018.i, ptr noundef nonnull @.str.26, ptr noundef %codec_mask.017.i) #7
  %incdec.ptr.i = getelementptr %struct.axg_dai_link_tdm_mask, ptr %codec_mask.017.i, i32 1
  %call4.i = call ptr @of_get_next_child(ptr noundef %node, ptr noundef nonnull %np.018.i) #7
  %cmp.not.i = icmp eq ptr %call4.i, null
  br i1 %cmp.not.i, label %for.body.i.if.end13_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.if.end13_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.end13:                                         ; preds = %for.body.i.if.end13_crit_edge, %if.end.i.if.end13_crit_edge
  %dpcm_playback = getelementptr %struct.snd_soc_dai_link, ptr %3, i32 %5, i32 18
  %102 = ptrtoint ptr %dpcm_playback to i32
  call void @__asan_load4_noabort(i32 %102)
  %bf.load = load i32, ptr %dpcm_playback, align 4
  %103 = and i32 %bf.load, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool14.not = icmp eq i32 %103, 0
  br i1 %tobool14.not, label %if.end13.cleanup_crit_edge, label %if.then15

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then15:                                        ; preds = %if.end13
  %104 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %drvdata.i, align 4
  %106 = ptrtoint ptr %dai_link to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dai_link, align 4
  %108 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %index, align 4
  %num_links.i = getelementptr inbounds %struct.snd_soc_card, ptr %card, i32 0, i32 25
  %110 = ptrtoint ptr %num_links.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %num_links.i, align 4
  %add.i = add i32 %111, 1
  %call1.i54 = call i32 @meson_card_reallocate_links(ptr noundef %card, i32 noundef %add.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i54)
  %tobool.not.i55 = icmp eq i32 %call1.i54, 0
  br i1 %tobool.not.i55, label %if.end.i57, label %if.then15.cleanup_crit_edge

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i57:                                       ; preds = %if.then15
  %arrayidx.i = getelementptr %struct.snd_soc_dai_link, ptr %107, i32 %109
  %112 = ptrtoint ptr %dai_link to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dai_link, align 4
  %114 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %index, align 4
  %add3.i = add i32 %115, 1
  %arrayidx4.i = getelementptr %struct.snd_soc_dai_link, ptr %113, i32 %add3.i
  %116 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dev, align 4
  %118 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %arrayidx.i, align 4
  %call5.i = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %117, i32 noundef 3264, ptr noundef nonnull @.str.27, ptr noundef %119) #7
  %120 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %call5.i, ptr %arrayidx4.i, align 4
  %tobool8.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool8.not.i, label %if.end.i57.cleanup_crit_edge, label %if.end10.i

if.end.i57.cleanup_crit_edge:                     ; preds = %if.end.i57
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10.i:                                       ; preds = %if.end.i57
  %121 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %dev, align 4
  %call.i.i58 = call noalias ptr @devm_kmalloc(ptr noundef %122, i32 noundef 24, i32 noundef 3520) #7
  %tobool13.not.i59 = icmp eq ptr %call.i.i58, null
  br i1 %tobool13.not.i59, label %if.end10.i.cleanup_crit_edge, label %axg_card_add_tdm_loopback.exit

if.end10.i.cleanup_crit_edge:                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

axg_card_add_tdm_loopback.exit:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  %cpus.i = getelementptr %struct.snd_soc_dai_link, ptr %113, i32 %add3.i, i32 2
  %123 = ptrtoint ptr %cpus.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %call.i.i58, ptr %cpus.i, align 4
  %arrayidx17.i = getelementptr %struct.snd_soc_dai_link_component, ptr %call.i.i58, i32 1
  %codecs.i = getelementptr %struct.snd_soc_dai_link, ptr %113, i32 %add3.i, i32 4
  %124 = ptrtoint ptr %codecs.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %arrayidx17.i, ptr %codecs.i, align 4
  %num_cpus.i = getelementptr %struct.snd_soc_dai_link, ptr %113, i32 %add3.i, i32 3
  %125 = ptrtoint ptr %num_cpus.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 1, ptr %num_cpus.i, align 4
  %num_codecs.i60 = getelementptr %struct.snd_soc_dai_link, ptr %113, i32 %add3.i, i32 5
  %126 = ptrtoint ptr %num_codecs.i60 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 1, ptr %num_codecs.i60, align 4
  %127 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %arrayidx4.i, align 4
  %stream_name.i = getelementptr %struct.snd_soc_dai_link, ptr %113, i32 %add3.i, i32 1
  %129 = ptrtoint ptr %stream_name.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %128, ptr %stream_name.i, align 4
  %cpus19.i = getelementptr %struct.snd_soc_dai_link, ptr %107, i32 %109, i32 2
  %130 = ptrtoint ptr %cpus19.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %cpus19.i, align 4
  %of_node.i = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %131, i32 0, i32 1
  %132 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %of_node.i, align 4
  %of_node21.i = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %call.i.i58, i32 0, i32 1
  %134 = ptrtoint ptr %of_node21.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %133, ptr %of_node21.i, align 4
  %135 = load ptr, ptr %cpus.i, align 4
  %dai_name.i = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %135, i32 0, i32 2
  %136 = ptrtoint ptr %dai_name.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr @.str.28, ptr %dai_name.i, align 4
  %137 = load ptr, ptr %codecs.i, align 4
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr @.str.29, ptr %137, align 4
  %139 = load ptr, ptr %codecs.i, align 4
  %dai_name26.i = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %139, i32 0, i32 2
  %140 = ptrtoint ptr %dai_name26.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr @.str.30, ptr %dai_name26.i, align 4
  %dpcm_capture.i61 = getelementptr %struct.snd_soc_dai_link, ptr %113, i32 %add3.i, i32 18
  %141 = ptrtoint ptr %dpcm_capture.i61 to i32
  call void @__asan_load4_noabort(i32 %141)
  %bf.load.i62 = load i32, ptr %dpcm_capture.i61, align 4
  %bf.set29.i = or i32 %bf.load.i62, 20971520
  store i32 %bf.set29.i, ptr %dpcm_capture.i61, align 4
  %ops.i = getelementptr %struct.snd_soc_dai_link, ptr %113, i32 %add3.i, i32 16
  %142 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr @axg_card_tdm_be_ops, ptr %ops.i, align 4
  %init.i = getelementptr %struct.snd_soc_dai_link, ptr %113, i32 %add3.i, i32 13
  %143 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr @axg_card_tdm_dai_lb_init, ptr %init.i, align 4
  %link_data.i = getelementptr inbounds %struct.meson_card, ptr %105, i32 0, i32 2
  %144 = ptrtoint ptr %link_data.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %link_data.i, align 4
  %146 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %index, align 4
  %arrayidx30.i = getelementptr ptr, ptr %145, i32 %147
  %148 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %arrayidx30.i, align 4
  %add32.i = add i32 %147, 1
  %arrayidx33.i = getelementptr ptr, ptr %145, i32 %add32.i
  %150 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %149, ptr %arrayidx33.i, align 4
  %151 = load ptr, ptr %cpus.i, align 4
  %of_node35.i = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %151, i32 0, i32 1
  %152 = ptrtoint ptr %of_node35.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %of_node35.i, align 4
  %call36.i = call ptr @of_node_get(ptr noundef %153) #7
  %154 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %index, align 4
  %add37.i = add i32 %155, 1
  store i32 %add37.i, ptr %index, align 4
  br label %cleanup

cleanup:                                          ; preds = %axg_card_add_tdm_loopback.exit, %if.end10.i.cleanup_crit_edge, %if.end.i57.cleanup_crit_edge, %if.then15.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %devm_kcalloc.exit.i.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.i.cleanup_crit_edge ], [ -12, %if.end9.cleanup_crit_edge ], [ 0, %axg_card_add_tdm_loopback.exit ], [ 0, %if.end13.cleanup_crit_edge ], [ -12, %if.end10.i.cleanup_crit_edge ], [ -12, %if.end.i57.cleanup_crit_edge ], [ %call1.i54, %if.then15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axg_card_tdm_dai_init(ptr nocapture noundef readonly %rtd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %card = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 1
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  %drvdata.i = getelementptr inbounds %struct.snd_soc_card, ptr %1, i32 0, i32 57
  %2 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drvdata.i, align 4
  %link_data = getelementptr inbounds %struct.meson_card, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %link_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %link_data, align 4
  %num = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 17
  %6 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num, align 4
  %arrayidx = getelementptr ptr, ptr %5, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %num_codecs = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 10
  %10 = ptrtoint ptr %num_codecs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_codecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp48.not = icmp eq i32 %11, 0
  br i1 %cmp48.not, label %entry.for.end_crit_edge, label %land.rhs.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

land.rhs.lr.ph:                                   ; preds = %entry
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 9
  %num_cpus = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 11
  %codec_masks = getelementptr inbounds %struct.axg_dai_link_tdm_data, ptr %9, i32 0, i32 5
  %slots = getelementptr inbounds %struct.axg_dai_link_tdm_data, ptr %9, i32 0, i32 1
  %slot_width = getelementptr inbounds %struct.axg_dai_link_tdm_data, ptr %9, i32 0, i32 2
  br label %land.rhs

land.rhs:                                         ; preds = %for.inc.land.rhs_crit_edge, %land.rhs.lr.ph
  %i.049 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc, %for.inc.land.rhs_crit_edge ]
  %12 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dais, align 4
  %14 = ptrtoint ptr %num_cpus to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_cpus, align 4
  %add = add i32 %15, %i.049
  %arrayidx1 = getelementptr ptr, ptr %13, i32 %add
  %16 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx1, align 4
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %land.rhs.for.end_crit_edge, label %for.body

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %land.rhs
  %18 = ptrtoint ptr %codec_masks to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %codec_masks, align 4
  %arrayidx2 = getelementptr %struct.axg_dai_link_tdm_mask, ptr %19, i32 %i.049
  %20 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx2, align 4
  %rx = getelementptr %struct.axg_dai_link_tdm_mask, ptr %19, i32 %i.049, i32 1
  %22 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rx, align 4
  %24 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %slots, align 4
  %26 = ptrtoint ptr %slot_width to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %slot_width, align 4
  %call5 = tail call i32 @snd_soc_dai_set_tdm_slot(ptr noundef nonnull %17, i32 noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %27) #7
  %28 = zext i32 %call5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call5, label %for.body.cleanup.sink.split_crit_edge [
    i32 0, label %for.body.for.inc_crit_edge
    i32 -524, label %for.body.for.inc_crit_edge55
  ]

for.body.for.inc_crit_edge55:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.body.cleanup.sink.split_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

for.inc:                                          ; preds = %for.body.for.inc_crit_edge, %for.body.for.inc_crit_edge55
  %inc = add nuw i32 %i.049, 1
  %29 = ptrtoint ptr %num_codecs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_codecs, align 4
  %cmp = icmp ult i32 %inc, %30
  br i1 %cmp, label %for.inc.land.rhs_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.land.rhs_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.rhs.for.end_crit_edge, %entry.for.end_crit_edge
  %dais8 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 9
  %31 = ptrtoint ptr %dais8 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dais8, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %32, align 4
  %tx_mask = getelementptr inbounds %struct.axg_dai_link_tdm_data, ptr %9, i32 0, i32 3
  %35 = ptrtoint ptr %tx_mask to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tx_mask, align 4
  %rx_mask = getelementptr inbounds %struct.axg_dai_link_tdm_data, ptr %9, i32 0, i32 4
  %37 = ptrtoint ptr %rx_mask to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %rx_mask, align 4
  %slots10 = getelementptr inbounds %struct.axg_dai_link_tdm_data, ptr %9, i32 0, i32 1
  %39 = ptrtoint ptr %slots10 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %slots10, align 4
  %slot_width11 = getelementptr inbounds %struct.axg_dai_link_tdm_data, ptr %9, i32 0, i32 2
  %41 = ptrtoint ptr %slot_width11 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %slot_width11, align 4
  %call12 = tail call i32 @axg_tdm_set_tdm_slots(ptr noundef %34, ptr noundef %36, ptr noundef %38, i32 noundef %40, i32 noundef %42) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %for.end.cleanup_crit_edge, label %do.end17

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end17:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %dais8 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dais8, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end17, %for.body.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %46, %do.end17 ], [ %17, %for.body.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call12, %do.end17 ], [ %call5, %for.body.cleanup.sink.split_crit_edge ]
  %dev20 = getelementptr inbounds %struct.snd_soc_dai, ptr %.sink, i32 0, i32 2
  %47 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev20, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %48, ptr noundef nonnull @.str.12) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @meson_card_parse_daifmt(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axg_card_tdm_be_hw_params(ptr noundef %substream, ptr noundef %params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %card = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 4
  %drvdata.i = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 57
  %4 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drvdata.i, align 4
  %link_data = getelementptr inbounds %struct.meson_card, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %link_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %link_data, align 4
  %num = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 17
  %8 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num, align 4
  %arrayidx = getelementptr ptr, ptr %7, i32 %9
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %call1 = tail call i32 @meson_card_i2s_set_sysclk(ptr noundef %substream, ptr noundef %params, i32 noundef %13) #7
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @meson_card_i2s_set_sysclk(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_set_tdm_slot(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @axg_tdm_set_tdm_slots(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_of_get_slot_mask(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @meson_card_reallocate_links(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @axg_card_tdm_dai_lb_init(ptr nocapture noundef readonly %rtd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %card = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 1
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  %drvdata.i = getelementptr inbounds %struct.snd_soc_card, ptr %1, i32 0, i32 57
  %2 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drvdata.i, align 4
  %link_data = getelementptr inbounds %struct.meson_card, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %link_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %link_data, align 4
  %num = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 17
  %6 = ptrtoint ptr %num to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num, align 4
  %arrayidx = getelementptr ptr, ptr %5, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 9
  %10 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dais, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %tx_mask = getelementptr inbounds %struct.axg_dai_link_tdm_data, ptr %9, i32 0, i32 3
  %14 = ptrtoint ptr %tx_mask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tx_mask, align 4
  %slots = getelementptr inbounds %struct.axg_dai_link_tdm_data, ptr %9, i32 0, i32 1
  %16 = ptrtoint ptr %slots to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %slots, align 4
  %slot_width = getelementptr inbounds %struct.axg_dai_link_tdm_data, ptr %9, i32 0, i32 2
  %18 = ptrtoint ptr %slot_width to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %slot_width, align 4
  %call2 = tail call i32 @axg_tdm_set_tdm_slots(ptr noundef %13, ptr noundef null, ptr noundef %15, i32 noundef %17, i32 noundef %19) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dais, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.12) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !35, !36, !37, !38, !39, !40, !42, !44, !45, !46, !47, !49, !50, !52, !54, !56, !57, !58, !59, !61, !63, !64, !65, !67, !69, !71, !73, !75, !77, !79, !81, !82}
!llvm.module.flags = !{!83, !84, !85, !86, !87, !88, !89, !90}
!llvm.ident = !{!91}

!0 = !{ptr @__initcall__kmod_snd_soc_meson_axg_sound_card__246_372_axg_card_pdrv_init6, !1, !"__initcall__kmod_snd_soc_meson_axg_sound_card__246_372_axg_card_pdrv_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/meson/axg-card.c", i32 372, i32 1}
!2 = !{ptr @__exitcall_axg_card_pdrv_exit, !1, !"__exitcall_axg_card_pdrv_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description247, !4, !"__UNIQUE_ID_description247", i1 false, i1 false}
!4 = !{!"../sound/soc/meson/axg-card.c", i32 374, i32 1}
!5 = !{ptr @__UNIQUE_ID_author248, !6, !"__UNIQUE_ID_author248", i1 false, i1 false}
!6 = !{!"../sound/soc/meson/axg-card.c", i32 375, i32 1}
!7 = !{ptr @__UNIQUE_ID_file249, !8, !"__UNIQUE_ID_file249", i1 false, i1 false}
!8 = !{!"../sound/soc/meson/axg-card.c", i32 376, i32 1}
!9 = !{ptr @__UNIQUE_ID_license250, !8, !"__UNIQUE_ID_license250", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/meson/axg-card.c", i32 368, i32 11}
!12 = !{ptr @axg_card_pdrv, !13, !"axg_card_pdrv", i1 false, i1 false}
!13 = !{!"../sound/soc/meson/axg-card.c", i32 364, i32 31}
!14 = !{ptr @axg_card_of_match, !15, !"axg_card_of_match", i1 false, i1 false}
!15 = !{!"../sound/soc/meson/axg-card.c", i32 356, i32 34}
!16 = !{ptr @axg_card_match_data, !17, !"axg_card_match_data", i1 false, i1 false}
!17 = !{!"../sound/soc/meson/axg-card.c", i32 352, i32 43}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/meson/axg-card.c", i32 296, i32 37}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/soc/meson/axg-card.c", i32 291, i32 37}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/soc/meson/axg-card.c", i32 306, i32 37}
!24 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/meson/axg-card.c", i32 307, i32 31}
!26 = !{ptr @codec_params, !27, !"codec_params", i1 false, i1 false}
!27 = !{!"../sound/soc/meson/axg-card.c", i32 32, i32 40}
!28 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/meson/axg-card.c", i32 301, i32 37}
!30 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/soc/meson/axg-card.c", i32 267, i32 29}
!32 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/soc/meson/axg-card.c", i32 271, i32 3}
!34 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @axg_card_parse_tdm._entry, !33, !"_entry", i1 false, i1 false}
!39 = !{ptr @axg_card_parse_tdm._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @axg_card_tdm_be_ops, !41, !"axg_card_tdm_be_ops", i1 false, i1 false}
!41 = !{!"../sound/soc/meson/axg-card.c", i32 51, i32 33}
!42 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/soc/meson/axg-card.c", i32 69, i32 4}
!44 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @axg_card_tdm_dai_init._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @axg_card_tdm_dai_init._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @axg_card_tdm_dai_init._entry.14, !48, !"_entry", i1 false, i1 false}
!48 = !{!"../sound/soc/meson/axg-card.c", i32 78, i32 3}
!49 = !{ptr @axg_card_tdm_dai_init._entry_ptr.15, !48, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/meson/axg-card.c", i32 174, i32 26}
!52 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/soc/meson/axg-card.c", i32 184, i32 26}
!54 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/meson/axg-card.c", i32 195, i32 3}
!56 = !{ptr @.str.19, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @axg_card_parse_cpu_tdm_slots._entry, !55, !"_entry", i1 false, i1 false}
!58 = !{ptr @axg_card_parse_cpu_tdm_slots._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.20, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/soc/meson/axg-card.c", i32 199, i32 29}
!61 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/soc/meson/axg-card.c", i32 211, i32 3}
!63 = !{ptr @axg_card_parse_cpu_tdm_slots._entry.21, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @axg_card_parse_cpu_tdm_slots._entry_ptr.23, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.24, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/soc/meson/axg-card.c", i32 215, i32 29}
!67 = !{ptr @.str.25, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/soc/meson/axg-card.c", i32 236, i32 32}
!69 = !{ptr @.str.26, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/soc/meson/axg-card.c", i32 238, i32 32}
!71 = !{ptr @.str.27, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/soc/meson/axg-card.c", i32 119, i32 51}
!73 = !{ptr @.str.28, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/soc/meson/axg-card.c", i32 134, i32 23}
!75 = !{ptr @.str.29, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/soc/meson/axg-card.c", i32 135, i32 21}
!77 = !{ptr @.str.30, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../sound/soc/meson/axg-card.c", i32 136, i32 25}
!79 = !{ptr @.str.31, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/soc/meson/axg-card.c", i32 96, i32 3}
!81 = !{ptr @axg_card_tdm_dai_lb_init._entry, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @axg_card_tdm_dai_lb_init._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{i32 1, !"wchar_size", i32 2}
!84 = !{i32 1, !"min_enum_size", i32 4}
!85 = !{i32 8, !"branch-target-enforcement", i32 0}
!86 = !{i32 8, !"sign-return-address", i32 0}
!87 = !{i32 8, !"sign-return-address-all", i32 0}
!88 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!89 = !{i32 7, !"uwtable", i32 1}
!90 = !{i32 7, !"frame-pointer", i32 2}
!91 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!92 = !{i32 0, i32 33}
!93 = !{!"branch_weights", i32 1, i32 2000}
