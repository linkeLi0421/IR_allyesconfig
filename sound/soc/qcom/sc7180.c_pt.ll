; ModuleID = '/llk/IR_all_yes/sound/soc/qcom/sc7180.c_pt.bc'
source_filename = "../sound/soc/qcom/sc7180.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.104, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.104 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_soc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.96, i32 }
%union.anon.96 = type { ptr }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8, %struct.snd_soc_dobj }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }
%struct.sc7180_snd_data = type { %struct.snd_soc_card, i32, %struct.snd_soc_jack, %struct.snd_soc_jack, ptr, i32 }
%struct.snd_soc_jack = type { %struct.mutex, ptr, ptr, %struct.list_head, i32, %struct.blocking_notifier_head, %struct.list_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.snd_soc_dai_link = type { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i24, %struct.snd_soc_dobj }
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_jack = type { %struct.list_head, ptr, ptr, ptr, i32, i32, [100 x i8], [6 x i32], i32, ptr, ptr }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.90, [128 x i8] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.90 = type { %union.anon.92 }
%union.anon.92 = type { [64 x i64] }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64, %struct.snd_pcm_oss_runtime }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }

@__initcall__kmod_snd_soc_sc7180__294_402_sc7180_snd_driver_init6 = internal global ptr @sc7180_snd_driver_init, section ".initcall6.init", align 4
@sc7180_snd_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sc7180_snd_platform_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sc7180_snd_device_id, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snd_soc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sc7180_snd_driver_exit = internal global ptr @sc7180_snd_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description295 = internal constant [54 x i8] c"snd_soc_sc7180.description=sc7180 ASoC Machine Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file296 = internal constant [50 x i8] c"snd_soc_sc7180.file=sound/soc/qcom/snd-soc-sc7180\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [30 x i8] c"snd_soc_sc7180.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"msm-snd-sc7180\00", [17 x i8] zeroinitializer }, align 32
@sc7180_snd_device_id = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"google,sc7180-trogdor\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"google,sc7180-coachz\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@snd_soc_pm_ops = external dso_local constant %struct.dev_pm_ops, align 4
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SC7180\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dmic-gpios\00", [21 x i8] zeroinitializer }, align 32
@sc7180_snd_dual_mic_audio_route = internal constant { [2 x %struct.snd_soc_dapm_route], [56 x i8] } { [2 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.14, ptr @.str.17, ptr @.str.13, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.14, ptr @.str.18, ptr @.str.13, ptr null, %struct.snd_soc_dobj zeroinitializer }], [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dmic\00", [27 x i8] zeroinitializer }, align 32
@sc7180_snd_platform_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 359, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"DMIC gpio failed err=%ld\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sc7180_snd_platform_probe\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sound/soc/qcom/sc7180.c\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sc7180_snd_platform_probe._entry_ptr = internal global ptr @sc7180_snd_platform_probe._entry, section ".printk_index", align 4
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"google,sc7180-coachz\00", [43 x i8] zeroinitializer }, align 32
@sc7180_adau7002_ops = internal constant { %struct.snd_soc_ops, [40 x i8] } { %struct.snd_soc_ops { ptr @sc7180_adau7002_snd_startup, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sc7180_ops = internal constant { %struct.snd_soc_ops, [40 x i8] } { %struct.snd_soc_ops { ptr @sc7180_snd_startup, ptr @sc7180_snd_shutdown, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Headphone Jack\00", [17 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Headset Mic\00", [20 x i8] zeroinitializer }, align 32
@sc7180_snd_widgets = internal constant { [2 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [88 x i8] } { [2 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 12, ptr @.str.10, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 11, ptr @.str.11, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [88 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DMIC\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Dmic Mux\00", [23 x i8] zeroinitializer }, align 32
@sc7180_dmic_mux_control = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.16, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @dmic_get, ptr @dmic_set, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @sc7180_dmic_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@sc7180_snd_dual_mic_widgets = internal constant { [4 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [176 x i8] } { [4 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 12, ptr @.str.10, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 11, ptr @.str.11, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 11, ptr @.str.13, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.14, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @sc7180_dmic_mux_control, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [176 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DMIC Select Mux\00", [16 x i8] zeroinitializer }, align 32
@sc7180_dmic_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 -1, i8 0, i8 0, i32 2, i32 1, ptr @dmic_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@dmic_mux_text = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.17, ptr @.str.18], [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Front Mic\00", [22 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Rear Mic\00", [23 x i8] zeroinitializer }, align 32
@sc7180_adau7002_snd_widgets = internal constant { [1 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [44 x i8] } { [1 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 11, ptr @.str.13, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [44 x i8] zeroinitializer }, align 32
@sc7180_adau7002_snd_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.6, i32 280, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: invalid dai id 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sc7180_adau7002_snd_startup\00", [36 x i8] zeroinitializer }, align 32
@sc7180_adau7002_snd_startup._entry_ptr = internal global ptr @sc7180_adau7002_snd_startup._entry, section ".printk_index", align 4
@sc7180_adau7002_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.22, ptr @.str.6, i32 251, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sc7180_adau7002_init\00", [43 x i8] zeroinitializer }, align 32
@sc7180_adau7002_init._entry_ptr = internal global ptr @sc7180_adau7002_init._entry, section ".printk_index", align 4
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"HDMI Jack\00", [22 x i8] zeroinitializer }, align 32
@sc7180_hdmi_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.6, i32 95, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Unable to add HDMI Jack\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sc7180_hdmi_init\00", [47 x i8] zeroinitializer }, align 32
@sc7180_hdmi_init._entry_ptr = internal global ptr @sc7180_hdmi_init._entry, section ".printk_index", align 4
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rt5682-aif1\00", [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rt5682s-aif1\00", [19 x i8] zeroinitializer }, align 32
@sc7180_snd_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.6, i32 166, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"can't set codec pll: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sc7180_snd_startup\00", [45 x i8] zeroinitializer }, align 32
@sc7180_snd_startup._entry_ptr = internal global ptr @sc7180_snd_startup._entry, section ".printk_index", align 4
@sc7180_snd_startup._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.29, ptr @.str.6, i32 175, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"snd_soc_dai_set_sysclk err = %d\0A\00", [63 x i8] zeroinitializer }, align 32
@sc7180_snd_startup._entry_ptr.32 = internal global ptr @sc7180_snd_startup._entry.30, section ".printk_index", align 4
@sc7180_snd_startup._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.29, ptr @.str.6, i32 184, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@sc7180_snd_startup._entry_ptr.34 = internal global ptr @sc7180_snd_startup._entry.33, section ".printk_index", align 4
@sc7180_snd_shutdown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.35, ptr @.str.6, i32 233, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sc7180_snd_shutdown\00", [44 x i8] zeroinitializer }, align 32
@sc7180_snd_shutdown._entry_ptr = internal global ptr @sc7180_snd_shutdown._entry, section ".printk_index", align 4
@sc7180_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.36, ptr @.str.6, i32 119, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sc7180_init\00", [20 x i8] zeroinitializer }, align 32
@sc7180_init._entry_ptr = internal global ptr @sc7180_init._entry, section ".printk_index", align 4
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Headset Jack\00", [19 x i8] zeroinitializer }, align 32
@sc7180_headset_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.6, i32 63, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unable to add Headset Jack\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sc7180_headset_init\00", [44 x i8] zeroinitializer }, align 32
@sc7180_headset_init._entry_ptr = internal global ptr @sc7180_headset_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 5]
@__sancov_gen_cov_switch_values.40 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 5]
@__sancov_gen_cov_switch_values.41 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 5]
@__sancov_gen_cov_switch_values.42 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 5]
@__sancov_gen_cov_switch_values.43 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 5]
@___asan_gen_.44 = private unnamed_addr constant [18 x i8] c"sc7180_snd_driver\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 394, i32 31 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 397, i32 11 }
@___asan_gen_.50 = private unnamed_addr constant [21 x i8] c"sc7180_snd_device_id\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 387, i32 34 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 347, i32 22 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 352, i32 42 }
@___asan_gen_.59 = private unnamed_addr constant [32 x i8] c"sc7180_snd_dual_mic_audio_route\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 323, i32 40 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 357, i32 47 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 359, i32 4 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 364, i32 44 }
@___asan_gen_.86 = private unnamed_addr constant [20 x i8] c"sc7180_adau7002_ops\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 291, i32 33 }
@___asan_gen_.89 = private unnamed_addr constant [11 x i8] c"sc7180_ops\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 286, i32 33 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 296, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 297, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant [19 x i8] c"sc7180_snd_widgets\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 295, i32 41 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 319, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 320, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant [24 x i8] c"sc7180_dmic_mux_control\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 312, i32 38 }
@___asan_gen_.110 = private unnamed_addr constant [28 x i8] c"sc7180_snd_dual_mic_widgets\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 316, i32 41 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 313, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant [17 x i8] c"sc7180_dmic_enum\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 309, i32 8 }
@___asan_gen_.119 = private unnamed_addr constant [14 x i8] c"dmic_mux_text\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 304, i32 27 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 305, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 306, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant [28 x i8] c"sc7180_adau7002_snd_widgets\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 300, i32 41 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 279, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 250, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 90, i32 10 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 95, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 134, i32 31 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 140, i32 38 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 166, i32 4 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 174, i32 4 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 183, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 232, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 118, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 55, i32 10 }
@___asan_gen_.197 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.203 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.204 = private constant [27 x i8] c"../sound/soc/qcom/sc7180.c\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 63, i32 3 }
@llvm.compiler.used = appending global [70 x ptr] [ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_license297, ptr @__exitcall_sc7180_snd_driver_exit, ptr @__initcall__kmod_snd_soc_sc7180__294_402_sc7180_snd_driver_init6, ptr @sc7180_adau7002_init._entry, ptr @sc7180_adau7002_init._entry_ptr, ptr @sc7180_adau7002_snd_startup._entry, ptr @sc7180_adau7002_snd_startup._entry_ptr, ptr @sc7180_hdmi_init._entry, ptr @sc7180_hdmi_init._entry_ptr, ptr @sc7180_headset_init._entry, ptr @sc7180_headset_init._entry_ptr, ptr @sc7180_init._entry, ptr @sc7180_init._entry_ptr, ptr @sc7180_snd_driver_exit, ptr @sc7180_snd_platform_probe._entry, ptr @sc7180_snd_platform_probe._entry_ptr, ptr @sc7180_snd_shutdown._entry, ptr @sc7180_snd_shutdown._entry_ptr, ptr @sc7180_snd_startup._entry, ptr @sc7180_snd_startup._entry.30, ptr @sc7180_snd_startup._entry.33, ptr @sc7180_snd_startup._entry_ptr, ptr @sc7180_snd_startup._entry_ptr.32, ptr @sc7180_snd_startup._entry_ptr.34, ptr @sc7180_snd_driver, ptr @.str, ptr @sc7180_snd_device_id, ptr @.str.1, ptr @.str.2, ptr @sc7180_snd_dual_mic_audio_route, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @sc7180_adau7002_ops, ptr @sc7180_ops, ptr @.str.10, ptr @.str.11, ptr @sc7180_snd_widgets, ptr @.str.13, ptr @.str.14, ptr @sc7180_dmic_mux_control, ptr @sc7180_snd_dual_mic_widgets, ptr @.str.16, ptr @sc7180_dmic_enum, ptr @dmic_mux_text, ptr @.str.17, ptr @.str.18, ptr @sc7180_adau7002_snd_widgets, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7180_snd_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7180_snd_device_id to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7180_snd_dual_mic_audio_route to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7180_snd_platform_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7180_adau7002_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7180_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7180_snd_widgets to i32), i32 360, i32 448, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7180_dmic_mux_control to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7180_snd_dual_mic_widgets to i32), i32 720, i32 896, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7180_dmic_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmic_mux_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7180_adau7002_snd_widgets to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7180_adau7002_snd_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7180_adau7002_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7180_hdmi_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7180_snd_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7180_snd_startup._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7180_snd_startup._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7180_snd_shutdown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7180_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sc7180_headset_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sc7180_snd_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sc7180_snd_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sc7180_snd_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @sc7180_snd_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sc7180_snd_platform_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 1100, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %drvdata.i = getelementptr inbounds %struct.snd_soc_card, ptr %call.i, i32 0, i32 57
  %0 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %drvdata.i, align 4
  %owner = getelementptr inbounds %struct.snd_soc_card, ptr %call.i, i32 0, i32 7
  %1 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %owner, align 4
  %driver_name = getelementptr inbounds %struct.snd_soc_card, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %driver_name to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str.1, ptr %driver_name, align 4
  %dev3 = getelementptr inbounds %struct.snd_soc_card, ptr %call.i, i32 0, i32 5
  %3 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev1, ptr %dev3, align 4
  %dapm_widgets = getelementptr inbounds %struct.snd_soc_card, ptr %call.i, i32 0, i32 35
  %4 = ptrtoint ptr %dapm_widgets to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @sc7180_snd_widgets, ptr %dapm_widgets, align 4
  %num_dapm_widgets = getelementptr inbounds %struct.snd_soc_card, ptr %call.i, i32 0, i32 36
  %5 = ptrtoint ptr %num_dapm_widgets to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %num_dapm_widgets, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %call.i77 = tail call ptr @of_find_property(ptr noundef %7, ptr noundef nonnull @.str.2, ptr noundef null) #5
  %tobool.i.not = icmp eq ptr %call.i77, null
  br i1 %tobool.i.not, label %if.end.if.end19_crit_edge, label %if.then5

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

if.then5:                                         ; preds = %if.end
  %8 = ptrtoint ptr %dapm_widgets to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @sc7180_snd_dual_mic_widgets, ptr %dapm_widgets, align 4
  %9 = ptrtoint ptr %num_dapm_widgets to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4, ptr %num_dapm_widgets, align 4
  %dapm_routes = getelementptr inbounds %struct.snd_soc_card, ptr %call.i, i32 0, i32 37
  %10 = ptrtoint ptr %dapm_routes to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @sc7180_snd_dual_mic_audio_route, ptr %dapm_routes, align 4
  %num_dapm_routes = getelementptr inbounds %struct.snd_soc_card, ptr %call.i, i32 0, i32 38
  %11 = ptrtoint ptr %num_dapm_routes to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %num_dapm_routes, align 4
  %call9 = tail call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.3, i32 noundef 3) #5
  %dmic_sel = getelementptr inbounds %struct.sc7180_snd_data, ptr %call.i, i32 0, i32 4
  %12 = ptrtoint ptr %dmic_sel to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call9, ptr %dmic_sel, align 4
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.then5.if.end19_crit_edge

if.then5.if.end19_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

do.end:                                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %call9 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.4, i32 noundef %13) #8
  %14 = ptrtoint ptr %dmic_sel to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dmic_sel, align 4
  %16 = ptrtoint ptr %15 to i32
  br label %cleanup

if.end19:                                         ; preds = %if.then5.if.end19_crit_edge, %if.end.if.end19_crit_edge
  %17 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %of_node, align 8
  %call21 = tail call i32 @of_device_is_compatible(ptr noundef %18, ptr noundef nonnull @.str.9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end19.if.end26_crit_edge, label %if.then23

if.end19.if.end26_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %dapm_widgets to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @sc7180_adau7002_snd_widgets, ptr %dapm_widgets, align 4
  %20 = ptrtoint ptr %num_dapm_widgets to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %num_dapm_widgets, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.end19.if.end26_crit_edge
  %call27 = tail call i32 @qcom_snd_parse_of(ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %for.cond.preheader, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end26
  %dai_link = getelementptr inbounds %struct.snd_soc_card, ptr %call.i, i32 0, i32 24
  %num_links = getelementptr inbounds %struct.snd_soc_card, ptr %call.i, i32 0, i32 25
  %21 = ptrtoint ptr %num_links to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_links, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp78 = icmp sgt i32 %22, 0
  br i1 %cmp78, label %land.rhs.preheader, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

land.rhs.preheader:                               ; preds = %for.cond.preheader
  %spec.select = select i1 %tobool22.not, ptr @sc7180_ops, ptr @sc7180_adau7002_ops
  %spec.select81 = select i1 %tobool22.not, ptr @sc7180_init, ptr @sc7180_adau7002_init
  br label %land.rhs

land.rhs:                                         ; preds = %for.body.land.rhs_crit_edge, %land.rhs.preheader
  %i.079 = phi i32 [ %inc, %for.body.land.rhs_crit_edge ], [ 0, %land.rhs.preheader ]
  %23 = ptrtoint ptr %dai_link to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dai_link, align 4
  %arrayidx = getelementptr %struct.snd_soc_dai_link, ptr %24, i32 %i.079
  %tobool31.not = icmp eq ptr %arrayidx, null
  br i1 %tobool31.not, label %land.rhs.for.end_crit_edge, label %for.body

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %land.rhs
  %25 = getelementptr %struct.snd_soc_dai_link, ptr %24, i32 %i.079, i32 16
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %spec.select, ptr %25, align 4
  %27 = getelementptr %struct.snd_soc_dai_link, ptr %24, i32 %i.079, i32 13
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %spec.select81, ptr %27, align 4
  %inc = add nuw nsw i32 %i.079, 1
  %29 = ptrtoint ptr %num_links to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_links, align 4
  %cmp = icmp slt i32 %inc, %30
  br i1 %cmp, label %for.body.land.rhs_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs

for.end:                                          ; preds = %for.body.for.end_crit_edge, %land.rhs.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %call37 = tail call i32 @devm_snd_soc_register_card(ptr noundef %dev1, ptr noundef nonnull %call.i) #5
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end26.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %16, %do.end ], [ %call37, %for.end ], [ -12, %entry.cleanup_crit_edge ], [ %call27, %if.end26.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_snd_parse_of(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sc7180_adau7002_init(ptr nocapture noundef readonly %rtd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 9
  %0 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dais, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %do.end [
    i32 0, label %entry.cleanup_crit_edge
    i32 1, label %entry.cleanup_crit_edge7
    i32 5, label %sw.bb2
  ]

entry.cleanup_crit_edge7:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %card1.i = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 1
  %7 = ptrtoint ptr %card1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %card1.i, align 4
  %drvdata.i.i = getelementptr inbounds %struct.snd_soc_card, ptr %8, i32 0, i32 57
  %9 = ptrtoint ptr %drvdata.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %drvdata.i.i, align 4
  %num_cpus.i = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 11
  %11 = ptrtoint ptr %num_cpus.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_cpus.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %1, i32 %12
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i, align 4
  %component2.i = getelementptr inbounds %struct.snd_soc_dai, ptr %14, i32 0, i32 12
  %15 = ptrtoint ptr %component2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %component2.i, align 4
  %hdmi_jack.i = getelementptr inbounds %struct.sc7180_snd_data, ptr %10, i32 0, i32 3
  %call3.i = tail call i32 @snd_soc_card_jack_new(ptr noundef %8, ptr noundef nonnull @.str.23, i32 noundef 4, ptr noundef %hdmi_jack.i, ptr noundef null, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp slt i32 %call3.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.snd_soc_card, ptr %8, i32 0, i32 5
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.24) #8
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #7
  %jack5.i = getelementptr inbounds %struct.sc7180_snd_data, ptr %10, i32 0, i32 3, i32 1
  %19 = ptrtoint ptr %jack5.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %jack5.i, align 4
  %private_data.i = getelementptr inbounds %struct.snd_jack, ptr %20, i32 0, i32 9
  %21 = ptrtoint ptr %private_data.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %16, ptr %private_data.i, align 4
  %private_free.i = getelementptr inbounds %struct.snd_jack, ptr %20, i32 0, i32 10
  %22 = ptrtoint ptr %private_free.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @sc7180_jack_free, ptr %private_free.i, align 4
  %call7.i = tail call i32 @snd_soc_component_set_jack(ptr noundef %16, ptr noundef %hdmi_jack.i, ptr noundef null) #5
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %rtd to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rtd, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.22, i32 noundef %5) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.i, %do.end.i, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge7
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge7 ], [ %call3.i, %do.end.i ], [ %call7.i, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sc7180_init(ptr nocapture noundef readonly %rtd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 9
  %0 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dais, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %5, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %entry.cleanup_crit_edge
    i32 5, label %sw.bb2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %card1.i = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 1
  %7 = ptrtoint ptr %card1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %card1.i, align 4
  %drvdata.i.i = getelementptr inbounds %struct.snd_soc_card, ptr %8, i32 0, i32 57
  %9 = ptrtoint ptr %drvdata.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %drvdata.i.i, align 4
  %num_cpus.i = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 11
  %11 = ptrtoint ptr %num_cpus.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_cpus.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %1, i32 %12
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i, align 4
  %component2.i = getelementptr inbounds %struct.snd_soc_dai, ptr %14, i32 0, i32 12
  %15 = ptrtoint ptr %component2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %component2.i, align 4
  %hs_jack.i = getelementptr inbounds %struct.sc7180_snd_data, ptr %10, i32 0, i32 2
  %call3.i = tail call i32 @snd_soc_card_jack_new(ptr noundef %8, ptr noundef nonnull @.str.37, i32 noundef 30723, ptr noundef %hs_jack.i, ptr noundef null, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp slt i32 %call3.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.snd_soc_card, ptr %8, i32 0, i32 5
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.38) #8
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %jack5.i = getelementptr inbounds %struct.sc7180_snd_data, ptr %10, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %jack5.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %jack5.i, align 4
  %call6.i = tail call i32 @snd_jack_set_key(ptr noundef %20, i32 noundef 16384, i32 noundef 164) #5
  %call7.i = tail call i32 @snd_jack_set_key(ptr noundef %20, i32 noundef 8192, i32 noundef 582) #5
  %call8.i = tail call i32 @snd_jack_set_key(ptr noundef %20, i32 noundef 4096, i32 noundef 115) #5
  %call9.i = tail call i32 @snd_jack_set_key(ptr noundef %20, i32 noundef 2048, i32 noundef 114) #5
  %private_data.i = getelementptr inbounds %struct.snd_jack, ptr %20, i32 0, i32 9
  %21 = ptrtoint ptr %private_data.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %16, ptr %private_data.i, align 4
  %private_free.i = getelementptr inbounds %struct.snd_jack, ptr %20, i32 0, i32 10
  %22 = ptrtoint ptr %private_free.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @sc7180_jack_free, ptr %private_free.i, align 4
  %call11.i = tail call i32 @snd_soc_component_set_jack(ptr noundef %16, ptr noundef %hs_jack.i, ptr noundef null) #5
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %card1.i9 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 1
  %23 = ptrtoint ptr %card1.i9 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %card1.i9, align 4
  %drvdata.i.i10 = getelementptr inbounds %struct.snd_soc_card, ptr %24, i32 0, i32 57
  %25 = ptrtoint ptr %drvdata.i.i10 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %drvdata.i.i10, align 4
  %num_cpus.i12 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 11
  %27 = ptrtoint ptr %num_cpus.i12 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_cpus.i12, align 4
  %arrayidx.i13 = getelementptr ptr, ptr %1, i32 %28
  %29 = ptrtoint ptr %arrayidx.i13 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i13, align 4
  %component2.i14 = getelementptr inbounds %struct.snd_soc_dai, ptr %30, i32 0, i32 12
  %31 = ptrtoint ptr %component2.i14 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %component2.i14, align 4
  %hdmi_jack.i = getelementptr inbounds %struct.sc7180_snd_data, ptr %26, i32 0, i32 3
  %call3.i15 = tail call i32 @snd_soc_card_jack_new(ptr noundef %24, ptr noundef nonnull @.str.23, i32 noundef 4, ptr noundef %hdmi_jack.i, ptr noundef null, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i15)
  %cmp.i16 = icmp slt i32 %call3.i15, 0
  br i1 %cmp.i16, label %do.end.i18, label %if.end.i23

do.end.i18:                                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i17 = getelementptr inbounds %struct.snd_soc_card, ptr %24, i32 0, i32 5
  %33 = ptrtoint ptr %dev.i17 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i17, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.24) #8
  br label %cleanup

if.end.i23:                                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #7
  %jack5.i19 = getelementptr inbounds %struct.sc7180_snd_data, ptr %26, i32 0, i32 3, i32 1
  %35 = ptrtoint ptr %jack5.i19 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %jack5.i19, align 4
  %private_data.i20 = getelementptr inbounds %struct.snd_jack, ptr %36, i32 0, i32 9
  %37 = ptrtoint ptr %private_data.i20 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %32, ptr %private_data.i20, align 4
  %private_free.i21 = getelementptr inbounds %struct.snd_jack, ptr %36, i32 0, i32 10
  %38 = ptrtoint ptr %private_free.i21 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @sc7180_jack_free, ptr %private_free.i21, align 4
  %call7.i22 = tail call i32 @snd_soc_component_set_jack(ptr noundef %32, ptr noundef %hdmi_jack.i, ptr noundef null) #5
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %39 = ptrtoint ptr %rtd to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %rtd, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.36, i32 noundef %5) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.i23, %do.end.i18, %if.end.i, %do.end.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ %call3.i, %do.end.i ], [ %call11.i, %if.end.i ], [ %call3.i15, %do.end.i18 ], [ %call7.i22, %if.end.i23 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_card(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dmic_get(ptr noundef %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @snd_soc_dapm_kcontrol_dapm(ptr noundef %kcontrol) #5
  %card = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  %drvdata.i = getelementptr inbounds %struct.snd_soc_card, ptr %1, i32 0, i32 57
  %2 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drvdata.i, align 4
  %dmic_switch = getelementptr inbounds %struct.sc7180_snd_data, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dmic_switch to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dmic_switch, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dmic_set(ptr noundef %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @snd_soc_dapm_kcontrol_dapm(ptr noundef %kcontrol) #5
  %card = getelementptr inbounds %struct.snd_soc_dapm_context, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  %drvdata.i = getelementptr inbounds %struct.snd_soc_card, ptr %1, i32 0, i32 57
  %2 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drvdata.i, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value, align 8
  %dmic_switch = getelementptr inbounds %struct.sc7180_snd_data, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %dmic_switch to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %dmic_switch, align 4
  %dmic_sel = getelementptr inbounds %struct.sc7180_snd_data, ptr %3, i32 0, i32 4
  %7 = ptrtoint ptr %dmic_sel to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dmic_sel, align 4
  tail call void @gpiod_set_value(ptr noundef %8, i32 noundef %5) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_soc_dapm_kcontrol_dapm(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sc7180_adau7002_snd_startup(ptr nocapture noundef readonly %substream) #2 align 64 {
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
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %7, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %entry.cleanup_crit_edge
    i32 5, label %entry.cleanup_crit_edge15
  ]

entry.cleanup_crit_edge15:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %runtime3 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %9 = ptrtoint ptr %runtime3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %runtime3, align 4
  %num_cpus = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 11
  %11 = ptrtoint ptr %num_cpus to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_cpus, align 4
  %arrayidx2 = getelementptr ptr, ptr %3, i32 %12
  %13 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx2, align 4
  %call = tail call i32 @snd_soc_dai_set_fmt(ptr noundef %14, i32 noundef 16385) #5
  %formats = getelementptr inbounds %struct.snd_pcm_runtime, ptr %10, i32 0, i32 46, i32 1
  %15 = ptrtoint ptr %formats to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 1024, ptr %formats, align 8
  %call4 = tail call i32 @snd_pcm_hw_constraint_msbits(ptr noundef %10, i32 noundef 0, i32 noundef 32, i32 noundef 32) #5
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef %7) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.bb, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge15
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge15 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_set_fmt(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_msbits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_card_jack_new(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sc7180_jack_free(ptr nocapture noundef readonly %jack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_jack, ptr %jack, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call i32 @snd_soc_component_set_jack(ptr noundef %1, ptr noundef null, ptr noundef null) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_set_jack(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sc7180_snd_startup(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %card1 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card1, align 4
  %drvdata.i = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 57
  %4 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drvdata.i, align 4
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dais, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %num_cpus = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 11
  %10 = ptrtoint ptr %num_cpus to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_cpus, align 4
  %arrayidx3 = getelementptr ptr, ptr %7, i32 %11
  %12 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx3, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %call4 = tail call i32 @strcmp(ptr noundef %15, ptr noundef nonnull dereferenceable(12) @.str.26) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %if.else

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.else:                                          ; preds = %entry
  %call6 = tail call i32 @strcmp(ptr noundef %15, ptr noundef nonnull dereferenceable(13) @.str.27) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then8, label %if.else.if.end9_crit_edge

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.else.if.end9_crit_edge, %entry.if.end9_crit_edge
  %pll_id.0 = phi i32 [ -1, %if.else.if.end9_crit_edge ], [ 1, %if.then8 ], [ 0, %entry.if.end9_crit_edge ]
  %pll_source.0 = phi i32 [ -1, %if.else.if.end9_crit_edge ], [ 0, %if.then8 ], [ 0, %entry.if.end9_crit_edge ]
  %pll_in.0 = phi i32 [ -1, %if.else.if.end9_crit_edge ], [ 19200000, %if.then8 ], [ 19200000, %entry.if.end9_crit_edge ]
  %pll_out.0 = phi i32 [ -1, %if.else.if.end9_crit_edge ], [ 24576000, %if.then8 ], [ 24576000, %entry.if.end9_crit_edge ]
  %clk_id.0 = phi i32 [ -1, %if.else.if.end9_crit_edge ], [ 2, %if.then8 ], [ 1, %entry.if.end9_crit_edge ]
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %9, i32 0, i32 1
  %16 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %17, label %do.end28 [
    i32 0, label %sw.bb
    i32 1, label %if.end9.cleanup_crit_edge
    i32 5, label %if.end9.cleanup_crit_edge58
  ]

if.end9.cleanup_crit_edge58:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %if.end9
  %pri_mi2s_clk_count = getelementptr inbounds %struct.sc7180_snd_data, ptr %5, i32 0, i32 1
  %19 = ptrtoint ptr %pri_mi2s_clk_count to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pri_mi2s_clk_count, align 4
  %inc = add i32 %20, 1
  store i32 %inc, ptr %pri_mi2s_clk_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp = icmp eq i32 %20, 0
  br i1 %cmp, label %if.then10, label %sw.bb.if.end12_crit_edge

sw.bb.if.end12_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then10:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %call11 = tail call i32 @snd_soc_dai_set_sysclk(ptr noundef %9, i32 noundef 0, i32 noundef 19200000, i32 noundef 0) #5
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %sw.bb.if.end12_crit_edge
  %call13 = tail call i32 @snd_soc_dai_set_fmt(ptr noundef %13, i32 noundef 16385) #5
  %call14 = tail call i32 @snd_soc_dai_set_pll(ptr noundef %13, i32 noundef %pll_id.0, i32 noundef %pll_source.0, i32 noundef %pll_in.0, i32 noundef %pll_out.0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %do.end

do.end:                                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.28, i32 noundef %call14) #8
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  %call18 = tail call i32 @snd_soc_dai_set_sysclk(ptr noundef %13, i32 noundef %clk_id.0, i32 noundef %pll_out.0, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end17.cleanup_crit_edge, label %do.end23

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end23:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.31, i32 noundef %call18) #8
  br label %cleanup

do.end28:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.29, i32 noundef %17) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end28, %do.end23, %if.end17.cleanup_crit_edge, %do.end, %if.end9.cleanup_crit_edge, %if.end9.cleanup_crit_edge58
  %retval.0 = phi i32 [ -22, %do.end28 ], [ %call14, %do.end ], [ 0, %if.end17.cleanup_crit_edge ], [ 0, %do.end23 ], [ 0, %if.end9.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge58 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sc7180_snd_shutdown(ptr nocapture noundef readonly %substream) #2 align 64 {
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
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %7, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %entry.sw.epilog_crit_edge
    i32 5, label %entry.sw.epilog_crit_edge8
  ]

entry.sw.epilog_crit_edge8:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %card1 = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %card1, align 4
  %drvdata.i = getelementptr inbounds %struct.snd_soc_card, ptr %10, i32 0, i32 57
  %11 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %drvdata.i, align 4
  %pri_mi2s_clk_count = getelementptr inbounds %struct.sc7180_snd_data, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %pri_mi2s_clk_count to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pri_mi2s_clk_count, align 4
  %dec = add i32 %14, -1
  store i32 %dec, ptr %pri_mi2s_clk_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %call2 = tail call i32 @snd_soc_dai_set_sysclk(ptr noundef %5, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.35, i32 noundef %7) #8
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %if.then, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_set_sysclk(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_set_pll(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_jack_set_key(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

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
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !61, !62, !63, !65, !66, !67, !69, !71, !72, !73, !74, !76, !78, !80, !82, !83, !84, !85, !87, !88, !89, !91, !92, !94, !95, !96, !98, !99, !100, !102, !104, !105, !106, !107}
!llvm.module.flags = !{!109, !110, !111, !112, !113, !114, !115, !116}
!llvm.ident = !{!117}

!0 = !{ptr @__initcall__kmod_snd_soc_sc7180__294_402_sc7180_snd_driver_init6, !1, !"__initcall__kmod_snd_soc_sc7180__294_402_sc7180_snd_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/qcom/sc7180.c", i32 402, i32 1}
!2 = !{ptr @__exitcall_sc7180_snd_driver_exit, !1, !"__exitcall_sc7180_snd_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description295, !4, !"__UNIQUE_ID_description295", i1 false, i1 false}
!4 = !{!"../sound/soc/qcom/sc7180.c", i32 404, i32 1}
!5 = !{ptr @__UNIQUE_ID_file296, !6, !"__UNIQUE_ID_file296", i1 false, i1 false}
!6 = !{!"../sound/soc/qcom/sc7180.c", i32 405, i32 1}
!7 = !{ptr @__UNIQUE_ID_license297, !6, !"__UNIQUE_ID_license297", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/soc/qcom/sc7180.c", i32 397, i32 11}
!10 = !{ptr @sc7180_snd_driver, !11, !"sc7180_snd_driver", i1 false, i1 false}
!11 = !{!"../sound/soc/qcom/sc7180.c", i32 394, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/qcom/sc7180.c", i32 347, i32 22}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/qcom/sc7180.c", i32 352, i32 42}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/qcom/sc7180.c", i32 357, i32 47}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/qcom/sc7180.c", i32 359, i32 4}
!20 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @sc7180_snd_platform_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @sc7180_snd_platform_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/qcom/sc7180.c", i32 364, i32 44}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/qcom/sc7180.c", i32 296, i32 2}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/soc/qcom/sc7180.c", i32 297, i32 2}
!32 = !{ptr @sc7180_snd_widgets, !33, !"sc7180_snd_widgets", i1 false, i1 false}
!33 = !{!"../sound/soc/qcom/sc7180.c", i32 295, i32 41}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/soc/qcom/sc7180.c", i32 319, i32 2}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/soc/qcom/sc7180.c", i32 320, i32 2}
!38 = !{ptr @sc7180_snd_dual_mic_widgets, !39, !"sc7180_snd_dual_mic_widgets", i1 false, i1 false}
!39 = !{!"../sound/soc/qcom/sc7180.c", i32 316, i32 41}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/qcom/sc7180.c", i32 313, i32 2}
!42 = !{ptr @sc7180_dmic_mux_control, !43, !"sc7180_dmic_mux_control", i1 false, i1 false}
!43 = !{!"../sound/soc/qcom/sc7180.c", i32 312, i32 38}
!44 = !{ptr @sc7180_dmic_enum, !45, !"sc7180_dmic_enum", i1 false, i1 false}
!45 = !{!"../sound/soc/qcom/sc7180.c", i32 309, i32 8}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/soc/qcom/sc7180.c", i32 305, i32 2}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/soc/qcom/sc7180.c", i32 306, i32 2}
!50 = !{ptr @dmic_mux_text, !51, !"dmic_mux_text", i1 false, i1 false}
!51 = !{!"../sound/soc/qcom/sc7180.c", i32 304, i32 27}
!52 = !{ptr @sc7180_snd_dual_mic_audio_route, !53, !"sc7180_snd_dual_mic_audio_route", i1 false, i1 false}
!53 = !{!"../sound/soc/qcom/sc7180.c", i32 323, i32 40}
!54 = !{ptr @sc7180_adau7002_snd_widgets, !55, !"sc7180_adau7002_snd_widgets", i1 false, i1 false}
!55 = !{!"../sound/soc/qcom/sc7180.c", i32 300, i32 41}
!56 = !{ptr @sc7180_adau7002_ops, !57, !"sc7180_adau7002_ops", i1 false, i1 false}
!57 = !{!"../sound/soc/qcom/sc7180.c", i32 291, i32 33}
!58 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/soc/qcom/sc7180.c", i32 279, i32 3}
!60 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @sc7180_adau7002_snd_startup._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @sc7180_adau7002_snd_startup._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.22, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/soc/qcom/sc7180.c", i32 250, i32 3}
!65 = !{ptr @sc7180_adau7002_init._entry, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @sc7180_adau7002_init._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.23, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/soc/qcom/sc7180.c", i32 90, i32 10}
!69 = !{ptr @.str.24, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/soc/qcom/sc7180.c", i32 95, i32 3}
!71 = !{ptr @.str.25, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @sc7180_hdmi_init._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @sc7180_hdmi_init._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @sc7180_ops, !75, !"sc7180_ops", i1 false, i1 false}
!75 = !{!"../sound/soc/qcom/sc7180.c", i32 286, i32 33}
!76 = !{ptr @.str.26, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/qcom/sc7180.c", i32 134, i32 31}
!78 = !{ptr @.str.27, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/qcom/sc7180.c", i32 140, i32 38}
!80 = !{ptr @.str.28, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/soc/qcom/sc7180.c", i32 166, i32 4}
!82 = !{ptr @.str.29, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @sc7180_snd_startup._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @sc7180_snd_startup._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.31, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../sound/soc/qcom/sc7180.c", i32 174, i32 4}
!87 = !{ptr @sc7180_snd_startup._entry.30, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @sc7180_snd_startup._entry_ptr.32, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @sc7180_snd_startup._entry.33, !90, !"_entry", i1 false, i1 false}
!90 = !{!"../sound/soc/qcom/sc7180.c", i32 183, i32 3}
!91 = !{ptr @sc7180_snd_startup._entry_ptr.34, !90, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.35, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/soc/qcom/sc7180.c", i32 232, i32 3}
!94 = !{ptr @sc7180_snd_shutdown._entry, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @sc7180_snd_shutdown._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.36, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/soc/qcom/sc7180.c", i32 118, i32 3}
!98 = !{ptr @sc7180_init._entry, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @sc7180_init._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.37, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/soc/qcom/sc7180.c", i32 55, i32 10}
!102 = !{ptr @.str.38, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/soc/qcom/sc7180.c", i32 63, i32 3}
!104 = !{ptr @.str.39, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @sc7180_headset_init._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @sc7180_headset_init._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @sc7180_snd_device_id, !108, !"sc7180_snd_device_id", i1 false, i1 false}
!108 = !{!"../sound/soc/qcom/sc7180.c", i32 387, i32 34}
!109 = !{i32 1, !"wchar_size", i32 2}
!110 = !{i32 1, !"min_enum_size", i32 4}
!111 = !{i32 8, !"branch-target-enforcement", i32 0}
!112 = !{i32 8, !"sign-return-address", i32 0}
!113 = !{i32 8, !"sign-return-address-all", i32 0}
!114 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!115 = !{i32 7, !"uwtable", i32 1}
!116 = !{i32 7, !"frame-pointer", i32 2}
!117 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
