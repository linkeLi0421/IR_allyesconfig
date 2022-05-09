; ModuleID = '/llk/IR_all_yes/sound/soc/ti/n810.c_pt.bc'
source_filename = "../sound/soc/ti/n810.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.96, i32 }
%union.anon.96 = type { ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.104, ptr }
%union.anon.104 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_dai_link_component = type { ptr, ptr, ptr }
%struct.snd_soc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8, %struct.snd_soc_dobj }
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
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.90, [128 x i8] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.90 = type { %union.anon.92 }
%union.anon.92 = type { [64 x i64] }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.95, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%union.anon.95 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }

@sys_clkout2_src = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@sys_clkout2 = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@func96m_clk = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@n810_snd_device = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_snd_soc_n810__294_363_n810_soc_init6 = internal global ptr @n810_soc_init, section ".initcall6.init", align 4
@__exitcall_n810_soc_exit = internal global ptr @n810_soc_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author295 = internal constant [61 x i8] c"snd_soc_n810.author=Jarkko Nikula <jarkko.nikula@bitmer.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description296 = internal constant [45 x i8] c"snd_soc_n810.description=ALSA SoC Nokia N810\00", section ".modinfo", align 1
@__UNIQUE_ID_file297 = internal constant [44 x i8] c"snd_soc_n810.file=sound/soc/ti/snd-soc-n810\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [25 x i8] c"snd_soc_n810.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nokia,n810\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nokia,n810-wimax\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"soc-audio\00", [22 x i8] zeroinitializer }, align 32
@snd_soc_n810 = internal global { %struct.snd_soc_card, [184 x i8] } { %struct.snd_soc_card { ptr @.str.19, ptr null, ptr null, ptr null, [32 x i8] zeroinitializer, ptr null, ptr null, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @n810_dai, i32 1, %struct.list_head zeroinitializer, i32 0, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, ptr @aic33_n810_controls, i32 3, ptr @aic33_dapm_widgets, i32 4, ptr @audio_map, i32 7, ptr null, i32 0, ptr null, i32 0, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.snd_soc_dapm_context zeroinitializer, %struct.snd_soc_dapm_stats zeroinitializer, ptr null, ptr null, %struct.work_struct zeroinitializer, i32 0, i8 32, ptr null }, [184 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_clkout2_src\00", [16 x i8] zeroinitializer }, align 32
@n810_soc_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 307, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Could not get sys_clkout2_src clock\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"n810_soc_init\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sound/soc/ti/n810.c\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@n810_soc_init._entry_ptr = internal global ptr @n810_soc_init._entry, section ".printk_index", align 4
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sys_clkout2\00", [20 x i8] zeroinitializer }, align 32
@n810_soc_init._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.5, ptr @.str.6, i32 313, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Could not get sys_clkout2\0A\00", [37 x i8] zeroinitializer }, align 32
@n810_soc_init._entry_ptr.12 = internal global ptr @n810_soc_init._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"func_96m_ck\00", [20 x i8] zeroinitializer }, align 32
@n810_soc_init._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.5, ptr @.str.6, i32 323, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Could not get func 96M clock\0A\00", [34 x i8] zeroinitializer }, align 32
@n810_soc_init._entry_ptr.16 = internal global ptr @n810_soc_init._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"hs_amp\00", [25 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"spk_amp\00", [24 x i8] zeroinitializer }, align 32
@of_root = external dso_local local_unnamed_addr global ptr, align 4
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"N810\00", [27 x i8] zeroinitializer }, align 32
@aic33_n810_controls = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.30, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @n810_get_spk, ptr @n810_set_spk, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @n810_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.31, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @n810_get_jack, ptr @n810_set_jack, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @n810_enum, i64 64) to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.32, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @n810_get_input, ptr @n810_set_input, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr getelementptr (i8, ptr @n810_enum, i64 128) to i32) }], [48 x i8] zeroinitializer }, align 32
@audio_map = internal constant { [7 x %struct.snd_soc_dapm_route], [84 x i8] } { [7 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.27, ptr null, ptr @.str.41, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.27, ptr null, ptr @.str.42, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.26, ptr null, ptr @.str.43, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.26, ptr null, ptr @.str.44, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.45, ptr null, ptr @.str.29, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.29, ptr null, ptr @.str.46, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.47, ptr null, ptr @.str.28, ptr null, %struct.snd_soc_dobj zeroinitializer }], [84 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TLV320AIC33\00", [20 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AIC33\00", [26 x i8] zeroinitializer }, align 32
@aic33_cpus = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr null, ptr null, ptr @.str.23 }], [20 x i8] zeroinitializer }, align 32
@aic33_codecs = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.24, ptr null, ptr @.str.25 }], [20 x i8] zeroinitializer }, align 32
@aic33_platforms = internal global { [1 x %struct.snd_soc_dai_link_component], [20 x i8] } { [1 x %struct.snd_soc_dai_link_component] [%struct.snd_soc_dai_link_component { ptr @.str.23, ptr null, ptr null }], [20 x i8] zeroinitializer }, align 32
@n810_ops = internal constant { %struct.snd_soc_ops, [40 x i8] } { %struct.snd_soc_ops { ptr @n810_startup, ptr @n810_shutdown, ptr @n810_hw_params, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@n810_dai = internal global { { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj }, [44 x i8] } { { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.snd_soc_dobj } { ptr @.str.20, ptr @.str.21, ptr @aic33_cpus, i32 1, ptr @aic33_codecs, i32 1, ptr @aic33_platforms, i32 1, i32 0, ptr null, i32 0, i32 4097, [2 x i32] zeroinitializer, ptr null, ptr null, ptr null, ptr @n810_ops, ptr null, i8 0, i8 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"48076000.mcbsp\00", [17 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tlv320aic3x-codec.1-0018\00", [39 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tlv320aic3x-hifi\00", [47 x i8] zeroinitializer }, align 32
@n810_jack_func = internal global { i32, [28 x i8] } zeroinitializer, align 32
@n810_spk_func = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Ext Spk\00", [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Headphone Jack\00", [17 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HS Mic\00", [25 x i8] zeroinitializer }, align 32
@n810_dmic_func = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DMic\00", [27 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Speaker Function\00", [47 x i8] zeroinitializer }, align 32
@n810_enum = internal constant { [3 x %struct.soc_enum], [32 x i8] } { [3 x %struct.soc_enum] [%struct.soc_enum { i32 0, i8 0, i8 0, i32 2, i32 0, ptr @spk_function, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, %struct.soc_enum { i32 0, i8 0, i8 0, i32 4, i32 0, ptr @jack_function, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, %struct.soc_enum { i32 0, i8 0, i8 0, i32 2, i32 0, ptr @input_function, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Jack Function\00", [18 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Input Select\00", [19 x i8] zeroinitializer }, align 32
@spk_function = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.33, ptr @.str.34], [24 x i8] zeroinitializer }, align 32
@jack_function = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37], [16 x i8] zeroinitializer }, align 32
@input_function = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.38, ptr @.str.39], [24 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Off\00", [28 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"On\00", [29 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Headphone\00", [22 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Headset\00", [24 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Mic\00", [28 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ADC\00", [28 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Digital Mic\00", [20 x i8] zeroinitializer }, align 32
@aic33_dapm_widgets = internal constant { [4 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [176 x i8] } { [4 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 13, ptr @.str.26, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @n810_spk_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 12, ptr @.str.27, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @n810_jack_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 11, ptr @.str.29, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 11, ptr @.str.28, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [176 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HPLOUT\00", [25 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HPROUT\00", [25 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LLOUT\00", [26 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RLOUT\00", [26 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DMic Rate 64\00", [19 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Mic Bias\00", [23 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"LINE1L\00", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.48 = private unnamed_addr constant [16 x i8] c"sys_clkout2_src\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 35, i32 20 }
@___asan_gen_.51 = private unnamed_addr constant [12 x i8] c"sys_clkout2\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 34, i32 20 }
@___asan_gen_.54 = private unnamed_addr constant [12 x i8] c"func96m_clk\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 36, i32 20 }
@___asan_gen_.57 = private unnamed_addr constant [16 x i8] c"n810_snd_device\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 282, i32 32 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 290, i32 33 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 291, i32 33 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 294, i32 42 }
@___asan_gen_.69 = private unnamed_addr constant [13 x i8] c"snd_soc_n810\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 267, i32 28 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 305, i32 33 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 307, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 311, i32 29 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 313, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 321, i32 29 }
@___asan_gen_.105 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 323, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 330, i32 6 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 268, i32 10 }
@___asan_gen_.120 = private unnamed_addr constant [20 x i8] c"aic33_n810_controls\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 241, i32 38 }
@___asan_gen_.123 = private unnamed_addr constant [10 x i8] c"audio_map\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 215, i32 40 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 258, i32 10 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 259, i32 17 }
@___asan_gen_.132 = private unnamed_addr constant [11 x i8] c"aic33_cpus\00", align 1
@___asan_gen_.135 = private unnamed_addr constant [13 x i8] c"aic33_codecs\00", align 1
@___asan_gen_.138 = private unnamed_addr constant [16 x i8] c"aic33_platforms\00", align 1
@___asan_gen_.141 = private unnamed_addr constant [9 x i8] c"n810_ops\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 114, i32 33 }
@___asan_gen_.144 = private unnamed_addr constant [9 x i8] c"n810_dai\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 257, i32 32 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 251, i32 1 }
@___asan_gen_.156 = private unnamed_addr constant [15 x i8] c"n810_jack_func\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 39, i32 12 }
@___asan_gen_.159 = private unnamed_addr constant [14 x i8] c"n810_spk_func\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 38, i32 12 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 61, i32 42 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 66, i32 42 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 70, i32 42 }
@___asan_gen_.171 = private unnamed_addr constant [15 x i8] c"n810_dmic_func\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 40, i32 12 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 75, i32 42 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 242, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant [10 x i8] c"n810_enum\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 235, i32 30 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 244, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 246, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant [13 x i8] c"spk_function\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 232, i32 20 }
@___asan_gen_.192 = private unnamed_addr constant [14 x i8] c"jack_function\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 233, i32 20 }
@___asan_gen_.195 = private unnamed_addr constant [15 x i8] c"input_function\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 234, i32 20 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 232, i32 38 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 232, i32 45 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 233, i32 46 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 233, i32 59 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 233, i32 70 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 234, i32 40 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 234, i32 47 }
@___asan_gen_.219 = private unnamed_addr constant [19 x i8] c"aic33_dapm_widgets\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 208, i32 41 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 216, i32 27 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 217, i32 27 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 219, i32 20 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 220, i32 20 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 222, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 223, i32 17 }
@___asan_gen_.240 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.241 = private constant [23 x i8] c"../sound/soc/ti/n810.c\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.241, i32 229, i32 3 }
@llvm.compiler.used = appending global [75 x ptr] [ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_description296, ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_license298, ptr @__exitcall_n810_soc_exit, ptr @__initcall__kmod_snd_soc_n810__294_363_n810_soc_init6, ptr @n810_soc_exit, ptr @n810_soc_init._entry, ptr @n810_soc_init._entry.10, ptr @n810_soc_init._entry.14, ptr @n810_soc_init._entry_ptr, ptr @n810_soc_init._entry_ptr.12, ptr @n810_soc_init._entry_ptr.16, ptr @sys_clkout2_src, ptr @sys_clkout2, ptr @func96m_clk, ptr @n810_snd_device, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @snd_soc_n810, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @aic33_n810_controls, ptr @audio_map, ptr @.str.20, ptr @.str.21, ptr @aic33_cpus, ptr @aic33_codecs, ptr @aic33_platforms, ptr @n810_ops, ptr @n810_dai, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @n810_jack_func, ptr @n810_spk_func, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @n810_dmic_func, ptr @.str.29, ptr @.str.30, ptr @n810_enum, ptr @.str.31, ptr @.str.32, ptr @spk_function, ptr @jack_function, ptr @input_function, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @aic33_dapm_widgets, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47], section "llvm.metadata"
@0 = internal global [65 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sys_clkout2_src to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sys_clkout2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @func96m_clk to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n810_snd_device to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_soc_n810 to i32), i32 648, i32 832, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n810_soc_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n810_soc_init._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n810_soc_init._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic33_n810_controls to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_map to i32), i32 364, i32 448, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic33_cpus to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic33_codecs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic33_platforms to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n810_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n810_dai to i32), i32 116, i32 160, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n810_jack_func to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n810_spk_func to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n810_dmic_func to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @n810_enum to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk_function to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jack_function to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @input_function to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aic33_dapm_widgets to i32), i32 720, i32 896, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @n810_soc_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @gpio_free(i32 noundef 101) #5
  tail call void @gpio_free(i32 noundef 10) #5
  %0 = load ptr, ptr @sys_clkout2_src, align 4
  tail call void @clk_put(ptr noundef %0) #5
  %1 = load ptr, ptr @sys_clkout2, align 4
  tail call void @clk_put(ptr noundef %1) #5
  %2 = load ptr, ptr @func96m_clk, align 4
  tail call void @clk_put(ptr noundef %2) #5
  %3 = load ptr, ptr @n810_snd_device, align 4
  tail call void @platform_device_unregister(ptr noundef %3) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpio_free(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @n810_soc_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @of_root to i32))
  %0 = load ptr, ptr @of_root, align 4
  %cmp.i.not = icmp eq ptr %0, null
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call2 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %call4 = tail call ptr @platform_device_alloc(ptr noundef nonnull @.str.2, i32 noundef -1) #5
  store ptr %call4, ptr @n810_snd_device, align 4
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %call4, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @snd_soc_n810, ptr %driver_data.i.i, align 4
  %call8 = tail call i32 @platform_device_add(ptr noundef nonnull %call4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.err1_crit_edge

if.end7.err1_crit_edge:                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %err1

if.end11:                                         ; preds = %if.end7
  %2 = load ptr, ptr @n810_snd_device, align 4
  %dev12 = getelementptr inbounds %struct.platform_device, ptr %2, i32 0, i32 3
  %call13 = tail call ptr @clk_get(ptr noundef %dev12, ptr noundef nonnull @.str.3) #5
  store ptr %call13, ptr @sys_clkout2_src, align 4
  %cmp.i76 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i76, label %do.end, label %if.end17

do.end:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12, ptr noundef nonnull @.str.4) #8
  %3 = load ptr, ptr @sys_clkout2_src, align 4
  %4 = ptrtoint ptr %3 to i32
  br label %err2

if.end17:                                         ; preds = %if.end11
  %call18 = tail call ptr @clk_get(ptr noundef %dev12, ptr noundef nonnull @.str.9) #5
  store ptr %call18, ptr @sys_clkout2, align 4
  %cmp.i77 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i77, label %do.end23, label %if.end25

do.end23:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12, ptr noundef nonnull @.str.11) #8
  %5 = load ptr, ptr @sys_clkout2, align 4
  %6 = ptrtoint ptr %5 to i32
  br label %err3

if.end25:                                         ; preds = %if.end17
  %call26 = tail call ptr @clk_get(ptr noundef %dev12, ptr noundef nonnull @.str.13) #5
  store ptr %call26, ptr @func96m_clk, align 4
  %cmp.i78 = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i78, label %do.end31, label %if.end33

do.end31:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12, ptr noundef nonnull @.str.15) #8
  %7 = load ptr, ptr @func96m_clk, align 4
  %8 = ptrtoint ptr %7 to i32
  br label %err4

if.end33:                                         ; preds = %if.end25
  %9 = load ptr, ptr @sys_clkout2_src, align 4
  %call34 = tail call i32 @clk_set_parent(ptr noundef %9, ptr noundef %call26) #5
  %10 = load ptr, ptr @sys_clkout2, align 4
  %call35 = tail call i32 @clk_set_rate(ptr noundef %10, i32 noundef 12000000) #5
  %call36 = tail call i32 @gpio_request(i32 noundef 10, ptr noundef nonnull @.str.17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp = icmp slt i32 %call36, 0
  br i1 %cmp, label %if.end33.do.end50_crit_edge, label %lor.rhs

if.end33.do.end50_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end50

lor.rhs:                                          ; preds = %if.end33
  %call37 = tail call i32 @gpio_request(i32 noundef 101, ptr noundef nonnull @.str.18) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %lor.rhs.do.end50_crit_edge, label %if.end65, !prof !140

lor.rhs.do.end50_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end50

do.end50:                                         ; preds = %lor.rhs.do.end50_crit_edge, %if.end33.do.end50_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 331, i32 noundef 9, ptr noundef null) #5
  br label %err4

if.end65:                                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call ptr @gpio_to_desc(i32 noundef 10) #5
  %call1.i = tail call i32 @gpiod_direction_output_raw(ptr noundef %call.i, i32 noundef 0) #5
  %call.i79 = tail call ptr @gpio_to_desc(i32 noundef 101) #5
  %call1.i80 = tail call i32 @gpiod_direction_output_raw(ptr noundef %call.i79, i32 noundef 0) #5
  br label %cleanup

err4:                                             ; preds = %do.end50, %do.end31
  %err.0 = phi i32 [ %8, %do.end31 ], [ -22, %do.end50 ]
  %11 = load ptr, ptr @sys_clkout2, align 4
  tail call void @clk_put(ptr noundef %11) #5
  br label %err3

err3:                                             ; preds = %err4, %do.end23
  %err.1 = phi i32 [ %6, %do.end23 ], [ %err.0, %err4 ]
  %12 = load ptr, ptr @sys_clkout2_src, align 4
  tail call void @clk_put(ptr noundef %12) #5
  br label %err2

err2:                                             ; preds = %err3, %do.end
  %err.2 = phi i32 [ %4, %do.end ], [ %err.1, %err3 ]
  %13 = load ptr, ptr @n810_snd_device, align 4
  tail call void @platform_device_del(ptr noundef %13) #5
  br label %err1

err1:                                             ; preds = %err2, %if.end7.err1_crit_edge
  %err.3 = phi i32 [ %call8, %if.end7.err1_crit_edge ], [ %err.2, %err2 ]
  %14 = load ptr, ptr @n810_snd_device, align 4
  tail call void @platform_device_put(ptr noundef %14) #5
  br label %cleanup

cleanup:                                          ; preds = %err1, %if.end65, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.3, %err1 ], [ 0, %if.end65 ], [ -19, %land.lhs.true.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpio_request(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @n810_startup(ptr nocapture noundef readonly %substream) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %0 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %runtime1, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %call.i = tail call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %1, i32 noundef 10, i32 noundef 2, i32 noundef 2) #5
  %card = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %card, align 4
  %dapm = getelementptr inbounds %struct.snd_soc_card, ptr %5, i32 0, i32 50
  tail call fastcc void @n810_ext_control(ptr noundef %dapm)
  %6 = load ptr, ptr @sys_clkout2, align 4
  %call.i4 = tail call i32 @clk_prepare(ptr noundef %6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4)
  %tobool.not.i = icmp eq i32 %call.i4, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %6) #5
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i4, %entry.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ], [ 0, %if.end.i.clk_prepare_enable.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @n810_shutdown(ptr nocapture noundef readnone %substream) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @sys_clkout2, align 4
  tail call void @clk_disable(ptr noundef %0) #5
  tail call void @clk_unprepare(ptr noundef %0) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @n810_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readnone %params) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  %call = tail call i32 @snd_soc_dai_set_sysclk(ptr noundef %7, i32 noundef 0, i32 noundef 12000000, i32 noundef 0) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @n810_ext_control(ptr noundef %dapm) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @n810_jack_func, align 4
  %1 = zext i32 %0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %0, label %entry.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %entry.sw.bb1_crit_edge
    i32 3, label %sw.bb2
  ]

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb1

sw.bb1:                                           ; preds = %sw.bb, %entry.sw.bb1_crit_edge
  %line1l.0 = phi i32 [ 0, %entry.sw.bb1_crit_edge ], [ 1, %sw.bb ]
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %tobool4.not = phi i1 [ true, %entry.sw.epilog_crit_edge ], [ true, %sw.bb2 ], [ false, %sw.bb1 ]
  %line1l.1 = phi i32 [ 0, %entry.sw.epilog_crit_edge ], [ 1, %sw.bb2 ], [ %line1l.0, %sw.bb1 ]
  %card.i = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %dapm, i32 0, i32 4
  %2 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card.i, align 4
  %dapm_mutex.i = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %dapm_mutex.i, i32 noundef 1) #5
  %4 = load i32, ptr @n810_spk_func, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @snd_soc_dapm_enable_pin_unlocked(ptr noundef %dapm, ptr noundef nonnull @.str.26) #5
  br label %if.end

if.else:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %call3 = tail call i32 @snd_soc_dapm_disable_pin_unlocked(ptr noundef %dapm, ptr noundef nonnull @.str.26) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br i1 %tobool4.not, label %if.else7, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call6 = tail call i32 @snd_soc_dapm_enable_pin_unlocked(ptr noundef %dapm, ptr noundef nonnull @.str.27) #5
  br label %if.end9

if.else7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call8 = tail call i32 @snd_soc_dapm_disable_pin_unlocked(ptr noundef %dapm, ptr noundef nonnull @.str.27) #5
  br label %if.end9

if.end9:                                          ; preds = %if.else7, %if.then5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %line1l.1)
  %tobool10.not = icmp eq i32 %line1l.1, 0
  br i1 %tobool10.not, label %if.else13, label %if.then11

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %call12 = tail call i32 @snd_soc_dapm_enable_pin_unlocked(ptr noundef %dapm, ptr noundef nonnull @.str.28) #5
  br label %if.end15

if.else13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %call14 = tail call i32 @snd_soc_dapm_disable_pin_unlocked(ptr noundef %dapm, ptr noundef nonnull @.str.28) #5
  br label %if.end15

if.end15:                                         ; preds = %if.else13, %if.then11
  %5 = load i32, ptr @n810_dmic_func, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool16.not = icmp eq i32 %5, 0
  br i1 %tobool16.not, label %if.else19, label %if.then17

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  %call18 = tail call i32 @snd_soc_dapm_enable_pin_unlocked(ptr noundef %dapm, ptr noundef nonnull @.str.29) #5
  br label %if.end21

if.else19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  %call20 = tail call i32 @snd_soc_dapm_disable_pin_unlocked(ptr noundef %dapm, ptr noundef nonnull @.str.29) #5
  br label %if.end21

if.end21:                                         ; preds = %if.else19, %if.then17
  %call22 = tail call i32 @snd_soc_dapm_sync_unlocked(ptr noundef %dapm) #5
  %6 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %card.i, align 4
  %dapm_mutex.i34 = getelementptr inbounds %struct.snd_soc_card, ptr %7, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %dapm_mutex.i34) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_minmax(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_enable_pin_unlocked(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_disable_pin_unlocked(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_sync_unlocked(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_set_sysclk(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @n810_get_spk(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %ucontrol) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @n810_spk_func, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %1 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @n810_set_spk(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @n810_spk_func, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %1 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %2)
  %cmp = icmp eq i32 %0, %2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %3 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private_data, align 4
  store i32 %2, ptr @n810_spk_func, align 4
  %dapm = getelementptr inbounds %struct.snd_soc_card, ptr %4, i32 0, i32 50
  tail call fastcc void @n810_ext_control(ptr noundef %dapm)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @n810_get_jack(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %ucontrol) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @n810_jack_func, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %1 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @n810_set_jack(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @n810_jack_func, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %1 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %2)
  %cmp = icmp eq i32 %0, %2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %3 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private_data, align 4
  store i32 %2, ptr @n810_jack_func, align 4
  %dapm = getelementptr inbounds %struct.snd_soc_card, ptr %4, i32 0, i32 50
  tail call fastcc void @n810_ext_control(ptr noundef %dapm)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @n810_get_input(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %ucontrol) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @n810_dmic_func, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %1 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @n810_set_input(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @n810_dmic_func, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %1 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %2)
  %cmp = icmp eq i32 %0, %2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %3 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private_data, align 4
  store i32 %2, ptr @n810_dmic_func, align 4
  %dapm = getelementptr inbounds %struct.snd_soc_card, ptr %4, i32 0, i32 50
  tail call fastcc void @n810_ext_control(ptr noundef %dapm)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @n810_spk_event(ptr nocapture noundef readnone %w, ptr nocapture noundef readnone %k, i32 noundef %event) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %event, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  %call.i1 = tail call ptr @gpio_to_desc(i32 noundef 101) #5
  %. = zext i1 %tobool.not to i32
  tail call void @gpiod_set_raw_value(ptr noundef %call.i1, i32 noundef %.) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @n810_jack_event(ptr nocapture noundef readnone %w, ptr nocapture noundef readnone %k, i32 noundef %event) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %event, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  %call.i1 = tail call ptr @gpio_to_desc(i32 noundef 10) #5
  %. = zext i1 %tobool.not to i32
  tail call void @gpiod_set_raw_value(ptr noundef %call.i1, i32 noundef %.) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_raw_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output_raw(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !30, !31, !32, !33, !34, !35, !37, !39, !40, !41, !43, !45, !46, !47, !49, !50, !52, !54, !56, !58, !60, !62, !63, !64, !65, !66, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129}
!llvm.module.flags = !{!131, !132, !133, !134, !135, !136, !137, !138}
!llvm.ident = !{!139}

!0 = !{ptr @__initcall__kmod_snd_soc_n810__294_363_n810_soc_init6, !1, !"__initcall__kmod_snd_soc_n810__294_363_n810_soc_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/ti/n810.c", i32 363, i32 1}
!2 = !{ptr @__exitcall_n810_soc_exit, !3, !"__exitcall_n810_soc_exit", i1 false, i1 false}
!3 = !{!"../sound/soc/ti/n810.c", i32 364, i32 1}
!4 = !{ptr @__UNIQUE_ID_author295, !5, !"__UNIQUE_ID_author295", i1 false, i1 false}
!5 = !{!"../sound/soc/ti/n810.c", i32 366, i32 1}
!6 = !{ptr @__UNIQUE_ID_description296, !7, !"__UNIQUE_ID_description296", i1 false, i1 false}
!7 = !{!"../sound/soc/ti/n810.c", i32 367, i32 1}
!8 = !{ptr @__UNIQUE_ID_file297, !9, !"__UNIQUE_ID_file297", i1 false, i1 false}
!9 = !{!"../sound/soc/ti/n810.c", i32 368, i32 1}
!10 = !{ptr @__UNIQUE_ID_license298, !9, !"__UNIQUE_ID_license298", i1 false, i1 false}
!11 = !{ptr @sys_clkout2, !12, !"sys_clkout2", i1 false, i1 false}
!12 = !{!"../sound/soc/ti/n810.c", i32 34, i32 20}
!13 = !{ptr @sys_clkout2_src, !14, !"sys_clkout2_src", i1 false, i1 false}
!14 = !{!"../sound/soc/ti/n810.c", i32 35, i32 20}
!15 = !{ptr @func96m_clk, !16, !"func96m_clk", i1 false, i1 false}
!16 = !{!"../sound/soc/ti/n810.c", i32 36, i32 20}
!17 = !{ptr @n810_snd_device, !18, !"n810_snd_device", i1 false, i1 false}
!18 = !{!"../sound/soc/ti/n810.c", i32 282, i32 32}
!19 = !{ptr @.str, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../sound/soc/ti/n810.c", i32 290, i32 33}
!21 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../sound/soc/ti/n810.c", i32 291, i32 33}
!23 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../sound/soc/ti/n810.c", i32 294, i32 42}
!25 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../sound/soc/ti/n810.c", i32 305, i32 33}
!27 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/soc/ti/n810.c", i32 307, i32 3}
!29 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @n810_soc_init._entry, !28, !"_entry", i1 false, i1 false}
!34 = !{ptr @n810_soc_init._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/soc/ti/n810.c", i32 311, i32 29}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/soc/ti/n810.c", i32 313, i32 3}
!39 = !{ptr @n810_soc_init._entry.10, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @n810_soc_init._entry_ptr.12, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/soc/ti/n810.c", i32 321, i32 29}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/soc/ti/n810.c", i32 323, i32 3}
!45 = !{ptr @n810_soc_init._entry.14, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @n810_soc_init._entry_ptr.16, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/soc/ti/n810.c", i32 330, i32 6}
!49 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/ti/n810.c", i32 268, i32 10}
!52 = !{ptr @snd_soc_n810, !53, !"snd_soc_n810", i1 false, i1 false}
!53 = !{!"../sound/soc/ti/n810.c", i32 267, i32 28}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/ti/n810.c", i32 258, i32 10}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/ti/n810.c", i32 259, i32 17}
!58 = !{ptr @n810_dai, !59, !"n810_dai", i1 false, i1 false}
!59 = !{!"../sound/soc/ti/n810.c", i32 257, i32 32}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/ti/n810.c", i32 251, i32 1}
!62 = !{ptr @aic33_cpus, !61, !"aic33_cpus", i1 false, i1 false}
!63 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @aic33_codecs, !61, !"aic33_codecs", i1 false, i1 false}
!66 = !{ptr @aic33_platforms, !61, !"aic33_platforms", i1 false, i1 false}
!67 = !{ptr @n810_ops, !68, !"n810_ops", i1 false, i1 false}
!68 = !{!"../sound/soc/ti/n810.c", i32 114, i32 33}
!69 = !{ptr @.str.26, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/soc/ti/n810.c", i32 61, i32 42}
!71 = !{ptr @.str.27, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/soc/ti/n810.c", i32 66, i32 42}
!73 = !{ptr @.str.28, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/soc/ti/n810.c", i32 70, i32 42}
!75 = !{ptr @.str.29, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/soc/ti/n810.c", i32 75, i32 42}
!77 = !{ptr @n810_jack_func, !78, !"n810_jack_func", i1 false, i1 false}
!78 = !{!"../sound/soc/ti/n810.c", i32 39, i32 12}
!79 = !{ptr @n810_spk_func, !80, !"n810_spk_func", i1 false, i1 false}
!80 = !{!"../sound/soc/ti/n810.c", i32 38, i32 12}
!81 = !{ptr @n810_dmic_func, !82, !"n810_dmic_func", i1 false, i1 false}
!82 = !{!"../sound/soc/ti/n810.c", i32 40, i32 12}
!83 = !{ptr @.str.30, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/soc/ti/n810.c", i32 242, i32 2}
!85 = !{ptr @.str.31, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../sound/soc/ti/n810.c", i32 244, i32 2}
!87 = !{ptr @.str.32, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../sound/soc/ti/n810.c", i32 246, i32 2}
!89 = !{ptr @aic33_n810_controls, !90, !"aic33_n810_controls", i1 false, i1 false}
!90 = !{!"../sound/soc/ti/n810.c", i32 241, i32 38}
!91 = !{ptr @n810_enum, !92, !"n810_enum", i1 false, i1 false}
!92 = !{!"../sound/soc/ti/n810.c", i32 235, i32 30}
!93 = !{ptr @.str.33, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/soc/ti/n810.c", i32 232, i32 38}
!95 = !{ptr @.str.34, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/soc/ti/n810.c", i32 232, i32 45}
!97 = !{ptr @spk_function, !98, !"spk_function", i1 false, i1 false}
!98 = !{!"../sound/soc/ti/n810.c", i32 232, i32 20}
!99 = !{ptr @.str.35, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/soc/ti/n810.c", i32 233, i32 46}
!101 = !{ptr @.str.36, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../sound/soc/ti/n810.c", i32 233, i32 59}
!103 = !{ptr @.str.37, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../sound/soc/ti/n810.c", i32 233, i32 70}
!105 = !{ptr @jack_function, !106, !"jack_function", i1 false, i1 false}
!106 = !{!"../sound/soc/ti/n810.c", i32 233, i32 20}
!107 = !{ptr @.str.38, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../sound/soc/ti/n810.c", i32 234, i32 40}
!109 = !{ptr @.str.39, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../sound/soc/ti/n810.c", i32 234, i32 47}
!111 = !{ptr @input_function, !112, !"input_function", i1 false, i1 false}
!112 = !{!"../sound/soc/ti/n810.c", i32 234, i32 20}
!113 = !{ptr @aic33_dapm_widgets, !114, !"aic33_dapm_widgets", i1 false, i1 false}
!114 = !{!"../sound/soc/ti/n810.c", i32 208, i32 41}
!115 = !{ptr @.str.41, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../sound/soc/ti/n810.c", i32 216, i32 27}
!117 = !{ptr @.str.42, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../sound/soc/ti/n810.c", i32 217, i32 27}
!119 = !{ptr @.str.43, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../sound/soc/ti/n810.c", i32 219, i32 20}
!121 = !{ptr @.str.44, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../sound/soc/ti/n810.c", i32 220, i32 20}
!123 = !{ptr @.str.45, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../sound/soc/ti/n810.c", i32 222, i32 3}
!125 = !{ptr @.str.46, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../sound/soc/ti/n810.c", i32 223, i32 17}
!127 = !{ptr @.str.47, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../sound/soc/ti/n810.c", i32 229, i32 3}
!129 = !{ptr @audio_map, !130, !"audio_map", i1 false, i1 false}
!130 = !{!"../sound/soc/ti/n810.c", i32 215, i32 40}
!131 = !{i32 1, !"wchar_size", i32 2}
!132 = !{i32 1, !"min_enum_size", i32 4}
!133 = !{i32 8, !"branch-target-enforcement", i32 0}
!134 = !{i32 8, !"sign-return-address", i32 0}
!135 = !{i32 8, !"sign-return-address-all", i32 0}
!136 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!137 = !{i32 7, !"uwtable", i32 1}
!138 = !{i32 7, !"frame-pointer", i32 2}
!139 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!140 = !{!"branch_weights", i32 1, i32 2000}
