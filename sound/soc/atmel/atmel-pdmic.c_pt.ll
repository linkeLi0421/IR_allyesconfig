; ModuleID = '/llk/IR_all_yes/sound/soc/atmel/atmel-pdmic.c_pt.bc'
source_filename = "../sound/soc/atmel/atmel-pdmic.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.94, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.94 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_dmaengine_pcm_config = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], ptr, i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.86, i32 }
%union.anon.86 = type { ptr }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.mic_gain = type { i32, i32 }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.atmel_pdmic_pdata = type { i32, i32, i32, ptr }
%struct.atmel_pdmic = type { i32, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }
%struct.snd_soc_dai_link = type { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i24, %struct.snd_soc_dobj }
%struct.snd_soc_dai_link_component = type { ptr, ptr, ptr }
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
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64, %struct.snd_pcm_oss_runtime }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.85, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.85 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.80, [128 x i8] }
%union.anon.80 = type { %union.anon.82 }
%union.anon.82 = type { [64 x i64] }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }

@__initcall__kmod_snd_atmel_soc_pdmic__240_709_atmel_pdmic_driver_init6 = internal global ptr @atmel_pdmic_driver_init, section ".initcall6.init", align 4
@atmel_pdmic_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @atmel_pdmic_probe, ptr @atmel_pdmic_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @atmel_pdmic_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snd_soc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_atmel_pdmic_driver_exit = internal global ptr @atmel_pdmic_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description241 = internal constant [79 x i8] c"snd_atmel_soc_pdmic.description=Atmel PDMIC driver under ALSA SoC architecture\00", section ".modinfo", align 1
@__UNIQUE_ID_author242 = internal constant [61 x i8] c"snd_atmel_soc_pdmic.author=Songjun Wu <songjun.wu@atmel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file243 = internal constant [61 x i8] c"snd_atmel_soc_pdmic.file=sound/soc/atmel/snd-atmel-soc-pdmic\00", section ".modinfo", align 1
@__UNIQUE_ID_license244 = internal constant [35 x i8] c"snd_atmel_soc_pdmic.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"atmel-pdmic\00", [20 x i8] zeroinitializer }, align 32
@atmel_pdmic_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d2-pdmic\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@snd_soc_pm_ops = external dso_local constant %struct.dev_pm_ops, align 4
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pclk\00", [27 x i8] zeroinitializer }, align 32
@atmel_pdmic_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 603, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to get peripheral clock: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"atmel_pdmic_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sound/soc/atmel/atmel-pdmic.c\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@atmel_pdmic_probe._entry_ptr = internal global ptr @atmel_pdmic_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gclk\00", [27 x i8] zeroinitializer }, align 32
@atmel_pdmic_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 610, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to get GCK: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@atmel_pdmic_probe._entry_ptr.10 = internal global ptr @atmel_pdmic_probe._entry.8, section ".printk_index", align 4
@atmel_pdmic_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 619, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to set GCK clock rate: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@atmel_pdmic_probe._entry_ptr.13 = internal global ptr @atmel_pdmic_probe._entry.11, section ".printk_index", align 4
@atmel_pdmic_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@atmel_pdmic_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 292, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"atmel_pdmic:630:(&atmel_pdmic_regmap_config)->lock\00", [45 x i8] zeroinitializer }, align 32
@atmel_pdmic_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 633, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to init register map: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@atmel_pdmic_probe._entry_ptr.17 = internal global ptr @atmel_pdmic_probe._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PDMIC\00", [26 x i8] zeroinitializer }, align 32
@atmel_pdmic_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.3, ptr @.str.4, i32 641, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"can't register ISR for IRQ %u (ret=%i)\0A\00", [56 x i8] zeroinitializer }, align 32
@atmel_pdmic_probe._entry_ptr.21 = internal global ptr @atmel_pdmic_probe._entry.19, section ".printk_index", align 4
@atmel_pdmic_cpu_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr null, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @atmel_pdmic_cpu_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.56, i64 1028, i32 -2147483648, i32 0, i32 0, i32 1, i32 1, i32 0 }, %struct.snd_soc_pcm_stream zeroinitializer, i8 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@atmel_pdmic_cpu_dai_component = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str, ptr @atmel_pdmic_snd_controls, i32 3, ptr null, i32 0, ptr null, i32 0, ptr @atmel_pdmic_component_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 88, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@atmel_pdmic_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.3, ptr @.str.4, i32 655, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"could not register CPU DAI: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@atmel_pdmic_probe._entry_ptr.24 = internal global ptr @atmel_pdmic_probe._entry.22, section ".printk_index", align 4
@atmel_pdmic_dmaengine_pcm_config = internal constant { %struct.snd_dmaengine_pcm_config, [60 x i8] } { %struct.snd_dmaengine_pcm_config { ptr @atmel_pdmic_platform_configure_dma, ptr null, ptr null, ptr null, ptr null, [2 x ptr] zeroinitializer, ptr @atmel_pdmic_hw, i32 65536 }, [60 x i8] zeroinitializer }, align 32
@atmel_pdmic_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.3, ptr @.str.4, i32 664, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"could not register platform: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@atmel_pdmic_probe._entry_ptr.27 = internal global ptr @atmel_pdmic_probe._entry.25, section ".printk_index", align 4
@atmel_pdmic_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.3, ptr @.str.4, i32 679, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to init sound card: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@atmel_pdmic_probe._entry_ptr.30 = internal global ptr @atmel_pdmic_probe._entry.28, section ".printk_index", align 4
@atmel_pdmic_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.3, ptr @.str.4, i32 685, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to register sound card: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@atmel_pdmic_probe._entry_ptr.33 = internal global ptr @atmel_pdmic_probe._entry.31, section ".printk_index", align 4
@atmel_pdmic_dt_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.4, i32 56, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"device node not found\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"atmel_pdmic_dt_init\00", [44 x i8] zeroinitializer }, align 32
@atmel_pdmic_dt_init._entry_ptr = internal global ptr @atmel_pdmic_dt_init._entry, section ".printk_index", align 4
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"atmel,model\00", [20 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"atmel,mic-min-freq\00", [45 x i8] zeroinitializer }, align 32
@atmel_pdmic_dt_init._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.35, ptr @.str.4, i32 69, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to get mic-min-freq\0A\00", [36 x i8] zeroinitializer }, align 32
@atmel_pdmic_dt_init._entry_ptr.40 = internal global ptr @atmel_pdmic_dt_init._entry.38, section ".printk_index", align 4
@.str.41 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"atmel,mic-max-freq\00", [45 x i8] zeroinitializer }, align 32
@atmel_pdmic_dt_init._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.35, ptr @.str.4, i32 75, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to get mic-max-freq\0A\00", [36 x i8] zeroinitializer }, align 32
@atmel_pdmic_dt_init._entry_ptr.44 = internal global ptr @atmel_pdmic_dt_init._entry.42, section ".printk_index", align 4
@atmel_pdmic_dt_init._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.35, ptr @.str.4, i32 81, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"mic-max-freq should not be less than mic-min-freq\0A\00", [45 x i8] zeroinitializer }, align 32
@atmel_pdmic_dt_init._entry_ptr.47 = internal global ptr @atmel_pdmic_dt_init._entry.45, section ".printk_index", align 4
@.str.48 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"atmel,mic-offset\00", [47 x i8] zeroinitializer }, align 32
@atmel_pdmic_dt_init._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.35, ptr @.str.4, i32 91, ptr @.str.51, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"mic-offset value %d is larger than the max value %d, the max value is specified\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@atmel_pdmic_dt_init._entry_ptr.52 = internal global ptr @atmel_pdmic_dt_init._entry.49, section ".printk_index", align 4
@atmel_pdmic_dt_init._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.35, ptr @.str.4, i32 96, ptr @.str.51, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"mic-offset value %d is less than the min value %d, the min value is specified\0A\00", [49 x i8] zeroinitializer }, align 32
@atmel_pdmic_dt_init._entry_ptr.55 = internal global ptr @atmel_pdmic_dt_init._entry.53, section ".printk_index", align 4
@atmel_pdmic_cpu_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @atmel_pdmic_cpu_dai_startup, ptr @atmel_pdmic_cpu_dai_shutdown, ptr @atmel_pdmic_cpu_dai_hw_params, ptr null, ptr @atmel_pdmic_cpu_dai_prepare, ptr @atmel_pdmic_cpu_dai_trigger, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Capture\00", [24 x i8] zeroinitializer }, align 32
@atmel_pdmic_cpu_dai_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.4, i32 372, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"only supports one channel\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"atmel_pdmic_cpu_dai_hw_params\00", [34 x i8] zeroinitializer }, align 32
@atmel_pdmic_cpu_dai_hw_params._entry_ptr = internal global ptr @atmel_pdmic_cpu_dai_hw_params._entry, section ".printk_index", align 4
@atmel_pdmic_cpu_dai_hw_params._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.58, ptr @.str.4, i32 379, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"sample rate is %dHz, min rate is %dHz, max rate is %dHz\0A\00", [39 x i8] zeroinitializer }, align 32
@atmel_pdmic_cpu_dai_hw_params._entry_ptr.61 = internal global ptr @atmel_pdmic_cpu_dai_hw_params._entry.59, section ".printk_index", align 4
@atmel_pdmic_snd_controls = internal constant { [3 x %struct.snd_kcontrol_new], [48 x i8] } { [3 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.62, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @pdmic_get_mic_volsw, ptr @pdmic_put_mic_volsw, %union.anon.86 { ptr @mic_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.63, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.64 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.65, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.66 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Mic Capture Volume\00", [45 x i8] zeroinitializer }, align 32
@mic_gain_tlv = internal constant { [26 x i32], [56 x i8] } { [26 x i32] [i32 3, i32 96, i32 0, i32 1, i32 1, i32 8, i32 -9000, i32 600, i32 2, i32 5, i32 1, i32 8, i32 -8100, i32 300, i32 6, i32 7, i32 1, i32 8, i32 -7000, i32 200, i32 8, i32 163, i32 1, i32 8, i32 -6500, i32 100], [56 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 163, i32 163, i32 92, i32 92, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"High Pass Filter Switch\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.64 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 88, i32 88, i32 1, i32 1, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"SINCC Filter Switch\00", [44 x i8] zeroinitializer }, align 32
@.compoundliteral.66 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 88, i32 88, i32 2, i32 2, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@mic_gain_table = internal constant { [164 x %struct.mic_gain], [320 x i8] } { [164 x %struct.mic_gain] [%struct.mic_gain { i32 1, i32 15 }, %struct.mic_gain { i32 1, i32 14 }, %struct.mic_gain { i32 3, i32 15 }, %struct.mic_gain { i32 1, i32 13 }, %struct.mic_gain { i32 3, i32 14 }, %struct.mic_gain { i32 1, i32 12 }, %struct.mic_gain { i32 5, i32 14 }, %struct.mic_gain { i32 13, i32 15 }, %struct.mic_gain { i32 9, i32 14 }, %struct.mic_gain { i32 21, i32 15 }, %struct.mic_gain { i32 23, i32 15 }, %struct.mic_gain { i32 13, i32 14 }, %struct.mic_gain { i32 29, i32 15 }, %struct.mic_gain { i32 33, i32 15 }, %struct.mic_gain { i32 37, i32 15 }, %struct.mic_gain { i32 41, i32 15 }, %struct.mic_gain { i32 23, i32 14 }, %struct.mic_gain { i32 13, i32 13 }, %struct.mic_gain { i32 58, i32 15 }, %struct.mic_gain { i32 65, i32 15 }, %struct.mic_gain { i32 73, i32 15 }, %struct.mic_gain { i32 41, i32 14 }, %struct.mic_gain { i32 23, i32 13 }, %struct.mic_gain { i32 13, i32 12 }, %struct.mic_gain { i32 29, i32 13 }, %struct.mic_gain { i32 65, i32 14 }, %struct.mic_gain { i32 73, i32 14 }, %struct.mic_gain { i32 41, i32 13 }, %struct.mic_gain { i32 23, i32 12 }, %struct.mic_gain { i32 207, i32 15 }, %struct.mic_gain { i32 29, i32 12 }, %struct.mic_gain { i32 65, i32 13 }, %struct.mic_gain { i32 73, i32 13 }, %struct.mic_gain { i32 41, i32 12 }, %struct.mic_gain { i32 23, i32 11 }, %struct.mic_gain { i32 413, i32 15 }, %struct.mic_gain { i32 463, i32 15 }, %struct.mic_gain { i32 519, i32 15 }, %struct.mic_gain { i32 583, i32 15 }, %struct.mic_gain { i32 327, i32 14 }, %struct.mic_gain { i32 367, i32 14 }, %struct.mic_gain { i32 823, i32 15 }, %struct.mic_gain { i32 231, i32 13 }, %struct.mic_gain { i32 1036, i32 15 }, %struct.mic_gain { i32 1163, i32 15 }, %struct.mic_gain { i32 1305, i32 15 }, %struct.mic_gain { i32 183, i32 12 }, %struct.mic_gain { i32 1642, i32 15 }, %struct.mic_gain { i32 1843, i32 15 }, %struct.mic_gain { i32 2068, i32 15 }, %struct.mic_gain { i32 145, i32 11 }, %struct.mic_gain { i32 2603, i32 15 }, %struct.mic_gain { i32 365, i32 12 }, %struct.mic_gain { i32 3277, i32 15 }, %struct.mic_gain { i32 3677, i32 15 }, %struct.mic_gain { i32 4125, i32 15 }, %struct.mic_gain { i32 4629, i32 15 }, %struct.mic_gain { i32 5193, i32 15 }, %struct.mic_gain { i32 5827, i32 15 }, %struct.mic_gain { i32 3269, i32 14 }, %struct.mic_gain { i32 917, i32 12 }, %struct.mic_gain { i32 8231, i32 15 }, %struct.mic_gain { i32 9235, i32 15 }, %struct.mic_gain { i32 5181, i32 14 }, %struct.mic_gain { i32 11627, i32 15 }, %struct.mic_gain { i32 13045, i32 15 }, %struct.mic_gain { i32 14637, i32 15 }, %struct.mic_gain { i32 16423, i32 15 }, %struct.mic_gain { i32 18427, i32 15 }, %struct.mic_gain { i32 20675, i32 15 }, %struct.mic_gain { i32 5799, i32 13 }, %struct.mic_gain { i32 26029, i32 15 }, %struct.mic_gain { i32 7301, i32 13 }, %struct.mic_gain { i32 1, i32 0 }, %struct.mic_gain { i32 18383, i32 14 }, %struct.mic_gain { i32 10313, i32 13 }, %struct.mic_gain { i32 23143, i32 14 }, %struct.mic_gain { i32 25967, i32 14 }, %struct.mic_gain { i32 29135, i32 14 }, %struct.mic_gain { i32 16345, i32 13 }, %struct.mic_gain { i32 4585, i32 11 }, %struct.mic_gain { i32 20577, i32 13 }, %struct.mic_gain { i32 1443, i32 9 }, %struct.mic_gain { i32 25905, i32 13 }, %struct.mic_gain { i32 14533, i32 12 }, %struct.mic_gain { i32 8153, i32 11 }, %struct.mic_gain { i32 2287, i32 9 }, %struct.mic_gain { i32 20529, i32 12 }, %struct.mic_gain { i32 11517, i32 11 }, %struct.mic_gain { i32 6461, i32 10 }, %struct.mic_gain { i32 28997, i32 12 }, %struct.mic_gain { i32 4067, i32 9 }, %struct.mic_gain { i32 18253, i32 11 }, %struct.mic_gain { i32 10, i32 0 }, %struct.mic_gain { i32 22979, i32 11 }, %struct.mic_gain { i32 25783, i32 11 }, %struct.mic_gain { i32 28929, i32 11 }, %struct.mic_gain { i32 32459, i32 11 }, %struct.mic_gain { i32 9105, i32 9 }, %struct.mic_gain { i32 20431, i32 10 }, %struct.mic_gain { i32 22925, i32 10 }, %struct.mic_gain { i32 12861, i32 9 }, %struct.mic_gain { i32 7215, i32 8 }, %struct.mic_gain { i32 16191, i32 9 }, %struct.mic_gain { i32 9083, i32 8 }, %struct.mic_gain { i32 20383, i32 9 }, %struct.mic_gain { i32 11435, i32 8 }, %struct.mic_gain { i32 6145, i32 7 }, %struct.mic_gain { i32 3599, i32 6 }, %struct.mic_gain { i32 32305, i32 9 }, %struct.mic_gain { i32 18123, i32 8 }, %struct.mic_gain { i32 20335, i32 8 }, %struct.mic_gain { i32 713, i32 3 }, %struct.mic_gain { i32 100, i32 0 }, %struct.mic_gain { i32 7181, i32 6 }, %struct.mic_gain { i32 8057, i32 6 }, %struct.mic_gain { i32 565, i32 2 }, %struct.mic_gain { i32 20287, i32 7 }, %struct.mic_gain { i32 11381, i32 6 }, %struct.mic_gain { i32 25539, i32 7 }, %struct.mic_gain { i32 1791, i32 3 }, %struct.mic_gain { i32 4019, i32 4 }, %struct.mic_gain { i32 9019, i32 5 }, %struct.mic_gain { i32 20239, i32 6 }, %struct.mic_gain { i32 5677, i32 4 }, %struct.mic_gain { i32 25479, i32 6 }, %struct.mic_gain { i32 7147, i32 4 }, %struct.mic_gain { i32 8019, i32 4 }, %struct.mic_gain { i32 17995, i32 5 }, %struct.mic_gain { i32 20191, i32 5 }, %struct.mic_gain { i32 11327, i32 4 }, %struct.mic_gain { i32 12709, i32 4 }, %struct.mic_gain { i32 3565, i32 2 }, %struct.mic_gain { i32 1000, i32 0 }, %struct.mic_gain { i32 1122, i32 0 }, %struct.mic_gain { i32 1259, i32 0 }, %struct.mic_gain { i32 2825, i32 1 }, %struct.mic_gain { i32 12679, i32 3 }, %struct.mic_gain { i32 7113, i32 2 }, %struct.mic_gain { i32 7981, i32 2 }, %struct.mic_gain { i32 8955, i32 2 }, %struct.mic_gain { i32 20095, i32 3 }, %struct.mic_gain { i32 22547, i32 3 }, %struct.mic_gain { i32 12649, i32 2 }, %struct.mic_gain { i32 28385, i32 3 }, %struct.mic_gain { i32 3981, i32 0 }, %struct.mic_gain { i32 17867, i32 2 }, %struct.mic_gain { i32 20047, i32 2 }, %struct.mic_gain { i32 11247, i32 1 }, %struct.mic_gain { i32 12619, i32 1 }, %struct.mic_gain { i32 14159, i32 1 }, %struct.mic_gain { i32 31773, i32 2 }, %struct.mic_gain { i32 17825, i32 1 }, %struct.mic_gain { i32 10000, i32 0 }, %struct.mic_gain { i32 11220, i32 0 }, %struct.mic_gain { i32 12589, i32 0 }, %struct.mic_gain { i32 28251, i32 1 }, %struct.mic_gain { i32 15849, i32 0 }, %struct.mic_gain { i32 17783, i32 0 }, %struct.mic_gain { i32 19953, i32 0 }, %struct.mic_gain { i32 22387, i32 0 }, %struct.mic_gain { i32 25119, i32 0 }, %struct.mic_gain { i32 28184, i32 0 }, %struct.mic_gain { i32 31623, i32 0 }], [320 x i8] zeroinitializer }, align 32
@atmel_pdmic_hw = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 786691, i64 1028, i32 0, i32 0, i32 0, i32 0, i32 0, i32 65536, i32 256, i32 32768, i32 2, i32 256, i32 0 }, [32 x i8] zeroinitializer }, align 32
@atmel_pdmic_platform_configure_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.4, i32 202, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"hw params to dma slave configure failed\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"atmel_pdmic_platform_configure_dma\00", [61 x i8] zeroinitializer }, align 32
@atmel_pdmic_platform_configure_dma._entry_ptr = internal global ptr @atmel_pdmic_platform_configure_dma._entry, section ".printk_index", align 4
@.str.69 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"PDMIC PCM\00", [22 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"snd-soc-dummy-dai\00", [46 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"snd-soc-dummy\00", [18 x i8] zeroinitializer }, align 32
@switch.table.atmel_pdmic_cpu_dai_trigger = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 0, i32 16, i32 16, i32 0, i32 16, i32 0, i32 16], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 32]
@___asan_gen_.72 = private unnamed_addr constant [19 x i8] c"atmel_pdmic_driver\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 700, i32 31 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 702, i32 12 }
@___asan_gen_.78 = private unnamed_addr constant [21 x i8] c"atmel_pdmic_of_match\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 38, i32 34 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 600, i32 31 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 603, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 607, i32 31 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 610, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 619, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.120 = private unnamed_addr constant [26 x i8] c"atmel_pdmic_regmap_config\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 567, i32 35 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 629, i32 15 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 633, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 638, i32 5 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 640, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant [20 x i8] c"atmel_pdmic_cpu_dai\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 466, i32 34 }
@___asan_gen_.144 = private unnamed_addr constant [30 x i8] c"atmel_pdmic_cpu_dai_component\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 477, i32 46 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 655, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant [33 x i8] c"atmel_pdmic_dmaengine_pcm_config\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 214, i32 1 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 664, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 679, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 685, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 56, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 64, i32 34 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 67, i32 31 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 69, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 73, i32 31 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 75, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 80, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 85, i32 31 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 89, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 94, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant [24 x i8] c"atmel_pdmic_cpu_dai_ops\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 457, i32 37 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 468, i32 18 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 371, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 377, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant [25 x i8] c"atmel_pdmic_snd_controls\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 330, i32 38 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 331, i32 1 }
@___asan_gen_.255 = private unnamed_addr constant [13 x i8] c"mic_gain_tlv\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 273, i32 14 }
@___asan_gen_.258 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 335, i32 1 }
@___asan_gen_.262 = private unnamed_addr constant [20 x i8] c".compoundliteral.64\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 338, i32 1 }
@___asan_gen_.266 = private unnamed_addr constant [20 x i8] c".compoundliteral.66\00", align 1
@___asan_gen_.267 = private unnamed_addr constant [15 x i8] c"mic_gain_table\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 228, i32 30 }
@___asan_gen_.270 = private unnamed_addr constant [15 x i8] c"atmel_pdmic_hw\00", align 1
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 175, i32 38 }
@___asan_gen_.273 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 201, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 512, i32 27 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 513, i32 31 }
@___asan_gen_.288 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.289 = private constant [33 x i8] c"../sound/soc/atmel/atmel-pdmic.c\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.289, i32 515, i32 28 }
@___asan_gen_.291 = private unnamed_addr constant [41 x i8] c"switch.table.atmel_pdmic_cpu_dai_trigger\00", align 1
@llvm.compiler.used = appending global [101 x ptr] [ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_description241, ptr @__UNIQUE_ID_file243, ptr @__UNIQUE_ID_license244, ptr @__exitcall_atmel_pdmic_driver_exit, ptr @__initcall__kmod_snd_atmel_soc_pdmic__240_709_atmel_pdmic_driver_init6, ptr @atmel_pdmic_cpu_dai_hw_params._entry, ptr @atmel_pdmic_cpu_dai_hw_params._entry.59, ptr @atmel_pdmic_cpu_dai_hw_params._entry_ptr, ptr @atmel_pdmic_cpu_dai_hw_params._entry_ptr.61, ptr @atmel_pdmic_driver_exit, ptr @atmel_pdmic_dt_init._entry, ptr @atmel_pdmic_dt_init._entry.38, ptr @atmel_pdmic_dt_init._entry.42, ptr @atmel_pdmic_dt_init._entry.45, ptr @atmel_pdmic_dt_init._entry.49, ptr @atmel_pdmic_dt_init._entry.53, ptr @atmel_pdmic_dt_init._entry_ptr, ptr @atmel_pdmic_dt_init._entry_ptr.40, ptr @atmel_pdmic_dt_init._entry_ptr.44, ptr @atmel_pdmic_dt_init._entry_ptr.47, ptr @atmel_pdmic_dt_init._entry_ptr.52, ptr @atmel_pdmic_dt_init._entry_ptr.55, ptr @atmel_pdmic_platform_configure_dma._entry, ptr @atmel_pdmic_platform_configure_dma._entry_ptr, ptr @atmel_pdmic_probe._entry, ptr @atmel_pdmic_probe._entry.11, ptr @atmel_pdmic_probe._entry.15, ptr @atmel_pdmic_probe._entry.19, ptr @atmel_pdmic_probe._entry.22, ptr @atmel_pdmic_probe._entry.25, ptr @atmel_pdmic_probe._entry.28, ptr @atmel_pdmic_probe._entry.31, ptr @atmel_pdmic_probe._entry.8, ptr @atmel_pdmic_probe._entry_ptr, ptr @atmel_pdmic_probe._entry_ptr.10, ptr @atmel_pdmic_probe._entry_ptr.13, ptr @atmel_pdmic_probe._entry_ptr.17, ptr @atmel_pdmic_probe._entry_ptr.21, ptr @atmel_pdmic_probe._entry_ptr.24, ptr @atmel_pdmic_probe._entry_ptr.27, ptr @atmel_pdmic_probe._entry_ptr.30, ptr @atmel_pdmic_probe._entry_ptr.33, ptr @atmel_pdmic_driver, ptr @.str, ptr @atmel_pdmic_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @atmel_pdmic_probe._key, ptr @atmel_pdmic_regmap_config, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @atmel_pdmic_cpu_dai, ptr @atmel_pdmic_cpu_dai_component, ptr @.str.23, ptr @atmel_pdmic_dmaengine_pcm_config, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.54, ptr @atmel_pdmic_cpu_dai_ops, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @atmel_pdmic_snd_controls, ptr @.str.62, ptr @mic_gain_tlv, ptr @.compoundliteral, ptr @.str.63, ptr @.compoundliteral.64, ptr @.str.65, ptr @.compoundliteral.66, ptr @mic_gain_table, ptr @atmel_pdmic_hw, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @switch.table.atmel_pdmic_cpu_dai_trigger], section "llvm.metadata"
@0 = internal global [76 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_pdmic_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_pdmic_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_pdmic_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_pdmic_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_pdmic_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_pdmic_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_pdmic_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_pdmic_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_pdmic_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_pdmic_cpu_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_pdmic_cpu_dai_component to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_pdmic_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_pdmic_dmaengine_pcm_config to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_pdmic_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_pdmic_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_pdmic_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_pdmic_dt_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_pdmic_dt_init._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_pdmic_dt_init._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_pdmic_dt_init._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_pdmic_dt_init._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_pdmic_dt_init._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_pdmic_cpu_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_pdmic_cpu_dai_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_pdmic_cpu_dai_hw_params._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_pdmic_snd_controls to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mic_gain_tlv to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.64 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.66 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mic_gain_table to i32), i32 1312, i32 1632, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_pdmic_hw to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_pdmic_platform_configure_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.atmel_pdmic_cpu_dai_trigger to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_pdmic_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @atmel_pdmic_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @atmel_pdmic_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @atmel_pdmic_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_pdmic_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %res = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %res) #7
  %0 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %res, align 4, !annotation !154
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %1 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node.i, align 8
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %entry.if.then.sink.split_crit_edge, label %if.end.i

entry.if.then.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.sink.split

if.end.i:                                         ; preds = %entry
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 16, i32 noundef 3520) #7
  %tobool2.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool2.not.i, label %if.end.i.if.then_crit_edge, label %if.end5.i

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.end5.i:                                        ; preds = %if.end.i
  %card_name.i = getelementptr inbounds %struct.atmel_pdmic_pdata, ptr %call.i.i, i32 0, i32 3
  %call6.i = tail call i32 @of_property_read_string(ptr noundef nonnull %2, ptr noundef nonnull @.str.36, ptr noundef %card_name.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end5.i.if.end10.i_crit_edge, label %if.then8.i

if.end5.i.if.end10.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10.i

if.then8.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %card_name.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.18, ptr %card_name.i, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then8.i, %if.end5.i.if.end10.i_crit_edge
  %call.i.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %2, ptr noundef nonnull @.str.37, ptr noundef nonnull %call.i.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool12.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool12.not.i, label %if.end18.i, label %if.end10.i.if.then.sink.split_crit_edge

if.end10.i.if.then.sink.split_crit_edge:          ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.sink.split

if.end18.i:                                       ; preds = %if.end10.i
  %mic_max_freq.i = getelementptr inbounds %struct.atmel_pdmic_pdata, ptr %call.i.i, i32 0, i32 1
  %call.i.i86.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %2, ptr noundef nonnull @.str.41, ptr noundef %mic_max_freq.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i86.i)
  %tobool20.not.i = icmp sgt i32 %call.i.i86.i, -1
  br i1 %tobool20.not.i, label %if.end26.i, label %if.end18.i.if.then.sink.split_crit_edge

if.end18.i.if.then.sink.split_crit_edge:          ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.sink.split

if.end26.i:                                       ; preds = %if.end18.i
  %4 = ptrtoint ptr %mic_max_freq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mic_max_freq.i, align 4
  %6 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.i = icmp ult i32 %5, %7
  br i1 %cmp.i, label %if.end26.i.if.then.sink.split_crit_edge, label %if.end34.i

if.end26.i.if.then.sink.split_crit_edge:          ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.sink.split

if.end34.i:                                       ; preds = %if.end26.i
  %mic_offset.i = getelementptr inbounds %struct.atmel_pdmic_pdata, ptr %call.i.i, i32 0, i32 2
  %call.i.i.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %2, ptr noundef nonnull @.str.48, ptr noundef %mic_offset.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i.i)
  %tobool36.not.i = icmp sgt i32 %call.i.i.i.i, -1
  br i1 %tobool36.not.i, label %if.end39.i, label %if.end34.i.atmel_pdmic_dt_init.exit.sink.split_crit_edge

if.end34.i.atmel_pdmic_dt_init.exit.sink.split_crit_edge: ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %atmel_pdmic_dt_init.exit.sink.split

if.end39.i:                                       ; preds = %if.end34.i
  %8 = ptrtoint ptr %mic_offset.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pr.i = load i32, ptr %mic_offset.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %.pr.i)
  %cmp41.i = icmp sgt i32 %.pr.i, 32767
  br i1 %cmp41.i, label %do.end45.i, label %if.else.i

do.end45.i:                                       ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.50, i32 noundef %.pr.i, i32 noundef 32767) #10
  br label %atmel_pdmic_dt_init.exit.sink.split

if.else.i:                                        ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32768, i32 %.pr.i)
  %cmp49.i = icmp slt i32 %.pr.i, -32768
  br i1 %cmp49.i, label %do.end53.i, label %if.else.i.atmel_pdmic_dt_init.exit_crit_edge

if.else.i.atmel_pdmic_dt_init.exit_crit_edge:     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %atmel_pdmic_dt_init.exit

do.end53.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.54, i32 noundef %.pr.i, i32 noundef -32768) #10
  br label %atmel_pdmic_dt_init.exit.sink.split

atmel_pdmic_dt_init.exit.sink.split:              ; preds = %do.end53.i, %do.end45.i, %if.end34.i.atmel_pdmic_dt_init.exit.sink.split_crit_edge
  %.sink = phi i32 [ 32767, %do.end45.i ], [ -32768, %do.end53.i ], [ 0, %if.end34.i.atmel_pdmic_dt_init.exit.sink.split_crit_edge ]
  %9 = ptrtoint ptr %mic_offset.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %.sink, ptr %mic_offset.i, align 4
  br label %atmel_pdmic_dt_init.exit

atmel_pdmic_dt_init.exit:                         ; preds = %atmel_pdmic_dt_init.exit.sink.split, %if.else.i.atmel_pdmic_dt_init.exit_crit_edge
  %cmp.i178 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i178, label %atmel_pdmic_dt_init.exit.if.then_crit_edge, label %if.end

atmel_pdmic_dt_init.exit.if.then_crit_edge:       ; preds = %atmel_pdmic_dt_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then.sink.split:                               ; preds = %if.end26.i.if.then.sink.split_crit_edge, %if.end18.i.if.then.sink.split_crit_edge, %if.end10.i.if.then.sink.split_crit_edge, %entry.if.then.sink.split_crit_edge
  %.str.34.sink = phi ptr [ @.str.34, %entry.if.then.sink.split_crit_edge ], [ @.str.39, %if.end10.i.if.then.sink.split_crit_edge ], [ @.str.43, %if.end18.i.if.then.sink.split_crit_edge ], [ @.str.46, %if.end26.i.if.then.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull %.str.34.sink) #10
  br label %if.then

if.then:                                          ; preds = %if.then.sink.split, %atmel_pdmic_dt_init.exit.if.then_crit_edge, %if.end.i.if.then_crit_edge
  %retval.0.i195 = phi ptr [ %call.i.i, %atmel_pdmic_dt_init.exit.if.then_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i.if.then_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.then.sink.split ]
  %10 = ptrtoint ptr %retval.0.i195 to i32
  br label %cleanup

if.end:                                           ; preds = %atmel_pdmic_dt_init.exit
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 32, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %pdata7 = getelementptr inbounds %struct.atmel_pdmic, ptr %call.i, i32 0, i32 7
  %11 = ptrtoint ptr %pdata7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i.i, ptr %pdata7, align 4
  %dev8 = getelementptr inbounds %struct.atmel_pdmic, ptr %call.i, i32 0, i32 4
  %12 = ptrtoint ptr %dev8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dev1, ptr %dev8, align 4
  %call9 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  %irq = getelementptr inbounds %struct.atmel_pdmic, ptr %call.i, i32 0, i32 5
  %13 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call9, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %if.end6.cleanup_crit_edge, label %if.end13

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  %call14 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.1) #7
  %pclk = getelementptr inbounds %struct.atmel_pdmic, ptr %call.i, i32 0, i32 2
  %14 = ptrtoint ptr %pclk to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call14, ptr %pclk, align 4
  %cmp.i179 = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i179, label %if.then17, label %if.end20

if.then17:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %call14 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef %15) #10
  br label %cleanup

if.end20:                                         ; preds = %if.end13
  %call21 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.7) #7
  %gclk = getelementptr inbounds %struct.atmel_pdmic, ptr %call.i, i32 0, i32 3
  %16 = ptrtoint ptr %gclk to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call21, ptr %gclk, align 4
  %cmp.i180 = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i180, label %if.then24, label %if.end30

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %call21 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9, i32 noundef %17) #10
  br label %cleanup

if.end30:                                         ; preds = %if.end20
  %18 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pclk, align 4
  %call33 = tail call i32 @clk_get_rate(ptr noundef %19) #7
  %div = udiv i32 %call33, 3
  %call34 = tail call i32 @clk_set_rate(ptr noundef %call21, i32 noundef %div) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end40, label %do.end39

do.end39:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12, i32 noundef %call34) #10
  br label %cleanup

if.end40:                                         ; preds = %if.end30
  %call41 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %pdev, i32 noundef 0, ptr noundef nonnull %res) #7
  %cmp.i181 = icmp ugt ptr %call41, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i181, label %if.then43, label %if.end45

if.then43:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %call41 to i32
  br label %cleanup

if.end45:                                         ; preds = %if.end40
  %21 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %res, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  %25 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %call.i, align 4
  %call46 = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev1, ptr noundef null, ptr noundef %call41, ptr noundef nonnull @atmel_pdmic_regmap_config, ptr noundef nonnull @atmel_pdmic_probe._key, ptr noundef nonnull @.str.14) #7
  %regmap = getelementptr inbounds %struct.atmel_pdmic, ptr %call.i, i32 0, i32 1
  %26 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call46, ptr %regmap, align 4
  %cmp.i182 = icmp ugt ptr %call46, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i182, label %if.then49, label %if.end55

if.then49:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %call46 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16, i32 noundef %27) #10
  br label %cleanup

if.end55:                                         ; preds = %if.end45
  %28 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %irq, align 4
  %call.i183 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %29, ptr noundef nonnull @atmel_pdmic_interrupt, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.18, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i183)
  %cmp58 = icmp slt i32 %call.i183, 0
  br i1 %cmp58, label %do.end62, label %if.end64

do.end62:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20, i32 noundef %31, i32 noundef %call.i183) #10
  br label %cleanup

if.end64:                                         ; preds = %if.end55
  %32 = ptrtoint ptr %pdata7 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pdata7, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  %mic_max_freq3.i = getelementptr inbounds %struct.atmel_pdmic_pdata, ptr %33, i32 0, i32 1
  %36 = ptrtoint ptr %mic_max_freq3.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mic_max_freq3.i, align 4
  %38 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pclk, align 4
  %call.i184 = call i32 @clk_get_rate(ptr noundef %39) #7
  %shr.i = lshr i32 %call.i184, 1
  %40 = ptrtoint ptr %gclk to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %gclk, align 4
  %call4.i = call i32 @clk_get_rate(ptr noundef %41) #7
  %shr5.i = lshr i32 %call4.i, 8
  %42 = call i32 @llvm.umin.i32(i32 %37, i32 %shr.i) #7
  %43 = call i32 @llvm.umax.i32(i32 %35, i32 %shr5.i) #7
  %add.i = add i32 %43, 64
  %div920.i = lshr i32 %add.i, 7
  %shr10.i = lshr i32 %42, 6
  store i32 %div920.i, ptr getelementptr inbounds (%struct.snd_soc_dai_driver, ptr @atmel_pdmic_cpu_dai, i32 0, i32 10, i32 3), align 4
  store i32 %shr10.i, ptr getelementptr inbounds (%struct.snd_soc_dai_driver, ptr @atmel_pdmic_cpu_dai, i32 0, i32 10, i32 4), align 8
  %call65 = call i32 @devm_snd_soc_register_component(ptr noundef %dev1, ptr noundef nonnull @atmel_pdmic_cpu_dai_component, ptr noundef nonnull @atmel_pdmic_cpu_dai, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end71, label %do.end70

do.end70:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.23, i32 noundef %call65) #10
  br label %cleanup

if.end71:                                         ; preds = %if.end64
  %call72 = call i32 @devm_snd_dmaengine_pcm_register(ptr noundef %dev1, ptr noundef nonnull @atmel_pdmic_dmaengine_pcm_config, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end78, label %do.end77

do.end77:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.26, i32 noundef %call72) #10
  br label %cleanup

if.end78:                                         ; preds = %if.end71
  %call.i185 = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 648, i32 noundef 3520) #7
  %tobool80.not = icmp eq ptr %call.i185, null
  br i1 %tobool80.not, label %if.end78.cleanup_crit_edge, label %if.end82

if.end78.cleanup_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end82:                                         ; preds = %if.end78
  %drvdata.i = getelementptr inbounds %struct.snd_soc_card, ptr %call.i185, i32 0, i32 57
  %44 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call.i, ptr %drvdata.i, align 4
  %call.i.i186 = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 116, i32 noundef 3520) #7
  %tobool.not.i187 = icmp eq ptr %call.i.i186, null
  br i1 %tobool.not.i187, label %if.end82.do.end88_crit_edge, label %if.end.i188

if.end82.do.end88_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end88

if.end.i188:                                      ; preds = %if.end82
  %call.i46.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 36, i32 noundef 3520) #7
  %tobool3.not.i = icmp eq ptr %call.i46.i, null
  br i1 %tobool3.not.i, label %if.end.i188.do.end88_crit_edge, label %if.end5.i189

if.end.i188.do.end88_crit_edge:                   ; preds = %if.end.i188
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end88

if.end5.i189:                                     ; preds = %if.end.i188
  %cpus.i = getelementptr inbounds %struct.snd_soc_dai_link, ptr %call.i.i186, i32 0, i32 2
  %45 = ptrtoint ptr %cpus.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call.i46.i, ptr %cpus.i, align 4
  %arrayidx6.i = getelementptr %struct.snd_soc_dai_link_component, ptr %call.i46.i, i32 1
  %codecs.i = getelementptr inbounds %struct.snd_soc_dai_link, ptr %call.i.i186, i32 0, i32 4
  %46 = ptrtoint ptr %codecs.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %arrayidx6.i, ptr %codecs.i, align 4
  %arrayidx7.i = getelementptr %struct.snd_soc_dai_link_component, ptr %call.i46.i, i32 2
  %platforms.i = getelementptr inbounds %struct.snd_soc_dai_link, ptr %call.i.i186, i32 0, i32 6
  %47 = ptrtoint ptr %platforms.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %arrayidx7.i, ptr %platforms.i, align 4
  %num_cpus.i = getelementptr inbounds %struct.snd_soc_dai_link, ptr %call.i.i186, i32 0, i32 3
  %48 = ptrtoint ptr %num_cpus.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %num_cpus.i, align 4
  %num_codecs.i = getelementptr inbounds %struct.snd_soc_dai_link, ptr %call.i.i186, i32 0, i32 5
  %49 = ptrtoint ptr %num_codecs.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1, ptr %num_codecs.i, align 4
  %num_platforms.i = getelementptr inbounds %struct.snd_soc_dai_link, ptr %call.i.i186, i32 0, i32 7
  %50 = ptrtoint ptr %num_platforms.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %num_platforms.i, align 4
  %51 = ptrtoint ptr %call.i.i186 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @.str.18, ptr %call.i.i186, align 4
  %stream_name.i = getelementptr inbounds %struct.snd_soc_dai_link, ptr %call.i.i186, i32 0, i32 1
  %52 = ptrtoint ptr %stream_name.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @.str.69, ptr %stream_name.i, align 4
  %dai_name.i = getelementptr %struct.snd_soc_dai_link_component, ptr %call.i46.i, i32 1, i32 2
  %53 = ptrtoint ptr %dai_name.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @.str.70, ptr %dai_name.i, align 4
  %init_name.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %54 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %55, null
  br i1 %tobool.not.i.i, label %if.end.i49.i, label %if.end5.i189.if.end89_crit_edge

if.end5.i189.if.end89_crit_edge:                  ; preds = %if.end5.i189
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end89

if.end.i49.i:                                     ; preds = %if.end5.i189
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev1, align 4
  br label %if.end89

do.end88:                                         ; preds = %if.end.i188.do.end88_crit_edge, %if.end82.do.end88_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.29, i32 noundef -12) #10
  br label %cleanup

if.end89:                                         ; preds = %if.end.i49.i, %if.end5.i189.if.end89_crit_edge
  %.sink.i = phi ptr [ %57, %if.end.i49.i ], [ %55, %if.end5.i189.if.end89_crit_edge ]
  %58 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %call.i46.i, i32 0, i32 2
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %.sink.i, ptr %58, align 4
  %60 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @.str.71, ptr %arrayidx6.i, align 4
  %61 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %.sink.i, ptr %arrayidx7.i, align 4
  %dai_link17.i = getelementptr inbounds %struct.snd_soc_card, ptr %call.i185, i32 0, i32 24
  %62 = ptrtoint ptr %dai_link17.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call.i.i186, ptr %dai_link17.i, align 4
  %num_links.i = getelementptr inbounds %struct.snd_soc_card, ptr %call.i185, i32 0, i32 25
  %63 = ptrtoint ptr %num_links.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 1, ptr %num_links.i, align 4
  %64 = ptrtoint ptr %pdata7 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pdata7, align 4
  %card_name.i191 = getelementptr inbounds %struct.atmel_pdmic_pdata, ptr %65, i32 0, i32 3
  %66 = ptrtoint ptr %card_name.i191 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %card_name.i191, align 4
  %68 = ptrtoint ptr %call.i185 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %67, ptr %call.i185, align 4
  %dev19.i = getelementptr inbounds %struct.snd_soc_card, ptr %call.i185, i32 0, i32 5
  %69 = ptrtoint ptr %dev19.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %dev1, ptr %dev19.i, align 4
  %call90 = call i32 @devm_snd_soc_register_card(ptr noundef %dev1, ptr noundef nonnull %call.i185) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.end89.cleanup_crit_edge, label %do.end95

if.end89.cleanup_crit_edge:                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end95:                                         ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.32, i32 noundef %call90) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end95, %if.end89.cleanup_crit_edge, %do.end88, %if.end78.cleanup_crit_edge, %do.end77, %do.end70, %do.end62, %if.then49, %if.then43, %do.end39, %if.then24, %if.then17, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %10, %if.then ], [ %15, %if.then17 ], [ %17, %if.then24 ], [ %call34, %do.end39 ], [ %20, %if.then43 ], [ %27, %if.then49 ], [ %call.i183, %do.end62 ], [ %call65, %do.end70 ], [ %call72, %do.end77 ], [ -12, %if.end.cleanup_crit_edge ], [ %call9, %if.end6.cleanup_crit_edge ], [ 0, %if.end89.cleanup_crit_edge ], [ -12, %do.end88 ], [ %call90, %do.end95 ], [ -12, %if.end78.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res) #7
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @atmel_pdmic_remove(ptr nocapture noundef readnone %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_pdmic_interrupt(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  %pdmic_isr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pdmic_isr) #7
  %0 = ptrtoint ptr %pdmic_isr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %pdmic_isr, align 4, !annotation !154
  %regmap = getelementptr inbounds %struct.atmel_pdmic, ptr %dev_id, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 36, ptr noundef nonnull %pdmic_isr) #7
  %3 = ptrtoint ptr %pdmic_isr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pdmic_isr, align 4
  %and = and i32 %4, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 0, i32 noundef 16, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %substream = getelementptr inbounds %struct.atmel_pdmic, ptr %dev_id, i32 0, i32 6
  %7 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %substream, align 4
  %call3 = call i32 @snd_pcm_stop_xrun(ptr noundef %8) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ 1, %if.then ], [ 0, %entry.if.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pdmic_isr) #7
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_dmaengine_pcm_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_card(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_stop_xrun(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_pdmic_cpu_dai_startup(ptr noundef %substream, ptr nocapture noundef readnone %cpu_dai) #2 align 64 {
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
  %gclk = getelementptr inbounds %struct.atmel_pdmic, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %gclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gclk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %7) #7
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %pclk = getelementptr inbounds %struct.atmel_pdmic, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pclk, align 4
  %call.i22 = tail call i32 @clk_prepare(ptr noundef %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22)
  %tobool.not.i23 = icmp eq i32 %call.i22, 0
  br i1 %tobool.not.i23, label %if.end.i26, label %if.end.if.then4_crit_edge

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then4

if.end.i26:                                       ; preds = %if.end
  %call1.i24 = tail call i32 @clk_enable(ptr noundef %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i24)
  %tobool2.not.i25 = icmp eq i32 %call1.i24, 0
  br i1 %tobool2.not.i25, label %if.end6, label %if.then3.i27

if.then3.i27:                                     ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %9) #7
  br label %if.then4

if.then4:                                         ; preds = %if.then3.i27, %if.end.if.then4_crit_edge
  %retval.0.i28.ph = phi i32 [ %call1.i24, %if.then3.i27 ], [ %call.i22, %if.end.if.then4_crit_edge ]
  %10 = ptrtoint ptr %gclk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %gclk, align 4
  tail call void @clk_disable(ptr noundef %11) #7
  tail call void @clk_unprepare(ptr noundef %11) #7
  br label %cleanup

if.end6:                                          ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #9
  %regmap = getelementptr inbounds %struct.atmel_pdmic, ptr %5, i32 0, i32 1
  %12 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap, align 4
  %call7 = tail call i32 @regmap_write(ptr noundef %13, i32 noundef 0, i32 noundef 0) #7
  %substream8 = getelementptr inbounds %struct.atmel_pdmic, ptr %5, i32 0, i32 6
  %14 = ptrtoint ptr %substream8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %substream, ptr %substream8, align 4
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %call10 = tail call i32 @regmap_write(ptr noundef %16, i32 noundef 24, i32 noundef 33554432) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then4, %if.then3.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i28.ph, %if.then4 ], [ 0, %if.end6 ], [ %call1.i, %if.then3.i ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmel_pdmic_cpu_dai_shutdown(ptr nocapture noundef readonly %substream, ptr nocapture noundef readnone %cpu_dai) #2 align 64 {
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
  %regmap = getelementptr inbounds %struct.atmel_pdmic, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call1 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 28, i32 noundef 33554432) #7
  %gclk = getelementptr inbounds %struct.atmel_pdmic, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %gclk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gclk, align 4
  tail call void @clk_disable(ptr noundef %9) #7
  tail call void @clk_unprepare(ptr noundef %9) #7
  %pclk = getelementptr inbounds %struct.atmel_pdmic, ptr %5, i32 0, i32 2
  %10 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pclk, align 4
  tail call void @clk_disable(ptr noundef %11) #7
  tail call void @clk_unprepare(ptr noundef %11) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_pdmic_cpu_dai_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %cpu_dai) #2 align 64 {
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
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 12
  %6 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %component1, align 4
  %runtime = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %8 = ptrtoint ptr %runtime to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %runtime, align 4
  %rate_min2 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %9, i32 0, i32 46, i32 3
  %10 = ptrtoint ptr %rate_min2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rate_min2, align 4
  %rate_max5 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %9, i32 0, i32 46, i32 4
  %12 = ptrtoint ptr %rate_max5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rate_max5, align 8
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i.i.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %entry.if.then.i.i.i_crit_edge

entry.if.then.i.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %entry.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %entry.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %17, %entry.if.then.i.i.i_crit_edge ], [ %20, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %18 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #7, !range !155
  %add.i.i.i = or i32 %18, %i.09.lcssa.i.i.i
  br label %params_width.exit

for.inc.i.i.i:                                    ; preds = %entry
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %19 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.1.i.i.i = icmp eq i32 %20, 0
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
  %arrayidx.i.i87 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %21 = ptrtoint ptr %arrayidx.i.i87 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i.i87, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp.not = icmp eq i32 %22, 1
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %7, i32 0, i32 3
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.57) #10
  br label %cleanup

if.end:                                           ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %11)
  %cmp9 = icmp ult i32 %15, %11
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %13)
  %cmp10 = icmp ugt i32 %15, %13
  %or.cond = select i1 %cmp9, i1 true, i1 %cmp10
  br i1 %or.cond, label %do.end14, label %if.end16

do.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev15 = getelementptr inbounds %struct.snd_soc_component, ptr %7, i32 0, i32 3
  %25 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev15, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.60, i32 noundef %15, i32 noundef %11, i32 noundef %13) #10
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %27 = zext i32 %call1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call1.i, label %if.end16.cleanup_crit_edge [
    i32 16, label %if.end16.sw.epilog_crit_edge
    i32 32, label %sw.bb17
  ]

if.end16.sw.epilog_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb17:                                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb17, %if.end16.sw.epilog_crit_edge
  %dspr0_val.0 = phi i32 [ 8, %sw.bb17 ], [ 0, %if.end16.sw.epilog_crit_edge ]
  %shl = shl i32 %15, 7
  %shl18 = shl i32 %13, 6
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %shl18)
  %cmp19 = icmp ugt i32 %shl, %shl18
  %shl21 = shl i32 %15, 6
  %or = or i32 %dspr0_val.0, 16
  %f_pdmic.0 = select i1 %cmp19, i32 %shl21, i32 %shl
  %dspr0_val.1 = select i1 %cmp19, i32 %or, i32 %dspr0_val.0
  %pclk = getelementptr inbounds %struct.atmel_pdmic, ptr %5, i32 0, i32 2
  %28 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pclk, align 4
  %call25 = tail call i32 @clk_get_rate(ptr noundef %29) #7
  %gclk = getelementptr inbounds %struct.atmel_pdmic, ptr %5, i32 0, i32 3
  %30 = ptrtoint ptr %gclk to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %gclk, align 4
  %call26 = tail call i32 @clk_get_rate(ptr noundef %31) #7
  %shl27 = shl i32 %f_pdmic.0, 1
  %div = udiv i32 %call25, %shl27
  %sub = add i32 %div, -1
  %div29 = udiv i32 %call26, %shl27
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %sub)
  %cmp31 = icmp ugt i32 %sub, 127
  br i1 %cmp31, label %sw.epilog.if.then39_crit_edge, label %lor.lhs.false32

sw.epilog.if.then39_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then39

lor.lhs.false32:                                  ; preds = %sw.epilog
  %shl33 = shl i32 %div29, 1
  %div34 = udiv i32 %call26, %shl33
  %shl36 = shl nuw nsw i32 %div, 1
  %div37 = udiv i32 %call25, %shl36
  call void @__sanitizer_cov_trace_cmp4(i32 %div34, i32 %div37)
  %cmp38 = icmp ult i32 %div34, %div37
  br i1 %cmp38, label %lor.lhs.false32.if.then39_crit_edge, label %if.else42

lor.lhs.false32.if.then39_crit_edge:              ; preds = %lor.lhs.false32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then39

if.then39:                                        ; preds = %lor.lhs.false32.if.then39_crit_edge, %sw.epilog.if.then39_crit_edge
  %sub30 = shl i32 %div29, 8
  %or41 = add i32 %sub30, -240
  br label %if.end45

if.else42:                                        ; preds = %lor.lhs.false32
  call void @__sanitizer_cov_trace_pc() #9
  %shl43 = shl nuw nsw i32 %sub, 8
  br label %if.end45

if.end45:                                         ; preds = %if.else42, %if.then39
  %mr_val.0 = phi i32 [ %or41, %if.then39 ], [ %shl43, %if.else42 ]
  %call46 = tail call i32 @snd_soc_component_update_bits(ptr noundef %7, i32 noundef 4, i32 noundef 32528, i32 noundef %mr_val.0) #7
  %call47 = tail call i32 @snd_soc_component_update_bits(ptr noundef %7, i32 noundef 88, i32 noundef 120, i32 noundef %dspr0_val.1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %if.end16.cleanup_crit_edge, %do.end14, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end14 ], [ 0, %if.end45 ], [ -22, %if.end16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_pdmic_cpu_dai_prepare(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %cpu_dai) #2 align 64 {
entry:
  %val = alloca i32, align 4
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
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 12
  %6 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %component1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %val, align 4, !annotation !154
  %regmap = getelementptr inbounds %struct.atmel_pdmic, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call2 = call i32 @regmap_read(ptr noundef %10, i32 noundef 20, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = call i32 @snd_soc_component_update_bits(ptr noundef %7, i32 noundef 0, i32 noundef 16, i32 noundef 0) #7
  %11 = call i32 @llvm.smin.i32(i32 %call3, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %11, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_pdmic_cpu_dai_trigger(ptr nocapture noundef readnone %substream, i32 noundef %cmd, ptr nocapture noundef readonly %cpu_dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %cmd)
  %2 = icmp ult i32 %cmd, 7
  br i1 %2, label %switch.hole_check, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %cmd to i8
  %switch.shifted = lshr i8 123, %switch.maskindex
  %3 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %switch.lobit.not = icmp eq i8 %3, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.atmel_pdmic_cpu_dai_trigger, i32 0, i32 %cmd
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load i32, ptr %switch.gep, align 4
  %call = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 0, i32 noundef 16, i32 noundef %switch.load) #7
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %switch.hole_check.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %switch.lookup ], [ -22, %entry.cleanup_crit_edge ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_pdmic_component_probe(ptr noundef %component) #2 align 64 {
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
  %drvdata.i = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 57
  %4 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %drvdata.i, align 4
  %pdata = getelementptr inbounds %struct.atmel_pdmic, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdata, align 4
  %mic_offset = getelementptr inbounds %struct.atmel_pdmic_pdata, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %mic_offset to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mic_offset, align 4
  %shl = shl i32 %9, 16
  %call2 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 92, i32 noundef -65536, i32 noundef %shl) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pdmic_get_mic_volsw(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %call1 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 92) #7
  %and = and i32 %call1, 32767
  %call2 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 88) #7
  %and3 = lshr i32 %call2, 8
  %shr4 = and i32 %and3, 15
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.014 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [164 x %struct.mic_gain], ptr @mic_gain_table, i32 0, i32 %i.014
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %and)
  %cmp5 = icmp eq i32 %3, %and
  br i1 %cmp5, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %scale = getelementptr [164 x %struct.mic_gain], ptr @mic_gain_table, i32 0, i32 %i.014, i32 1
  %4 = ptrtoint ptr %scale to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %scale, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %shr4)
  %cmp7 = icmp eq i32 %5, %shr4
  br i1 %cmp7, label %if.then, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %i.014, ptr %value, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.014, 1
  %exitcond.not = icmp eq i32 %inc, 164
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pdmic_put_mic_volsw(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %2 = inttoptr i32 %1 to ptr
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %3 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private_data.i, align 4
  %max1 = getelementptr inbounds %struct.soc_mixer_control, ptr %2, i32 0, i32 1
  %5 = ptrtoint ptr %max1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max1, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %7 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %6)
  %cmp = icmp ugt i32 %8, %6
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx2 = getelementptr [164 x %struct.mic_gain], ptr @mic_gain_table, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx2, align 4
  %call3 = tail call i32 @snd_soc_component_update_bits(ptr noundef %4, i32 noundef 92, i32 noundef 32767, i32 noundef %10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %scale = getelementptr [164 x %struct.mic_gain], ptr @mic_gain_table, i32 0, i32 %8, i32 1
  %11 = ptrtoint ptr %scale to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %scale, align 4
  %shl8 = shl i32 %12, 8
  %call9 = tail call i32 @snd_soc_component_update_bits(ptr noundef %4, i32 noundef 88, i32 noundef 3840, i32 noundef %shl8) #7
  %13 = tail call i32 @llvm.smin.i32(i32 %call9, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ %13, %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_pdmic_platform_configure_dma(ptr noundef %substream, ptr noundef %params, ptr noundef %slave_config) #2 align 64 {
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
  %call1 = tail call i32 @snd_hwparams_to_dma_slave_config(ptr noundef %substream, ptr noundef %params, ptr noundef %slave_config) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.atmel_pdmic, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.67) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %5, align 4
  %add = add i32 %9, 20
  %src_addr = getelementptr inbounds %struct.dma_slave_config, ptr %slave_config, i32 0, i32 1
  %10 = ptrtoint ptr %src_addr to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add, ptr %src_addr, align 4
  %src_maxburst = getelementptr inbounds %struct.dma_slave_config, ptr %slave_config, i32 0, i32 5
  %11 = ptrtoint ptr %src_maxburst to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %src_maxburst, align 4
  %dst_maxburst = getelementptr inbounds %struct.dma_slave_config, ptr %slave_config, i32 0, i32 6
  %12 = ptrtoint ptr %dst_maxburst to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %dst_maxburst, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_hwparams_to_dma_slave_config(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !32, !33, !34, !36, !37, !39, !40, !41, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !68, !70, !72, !74, !75, !76, !78, !80, !81, !82, !84, !85, !86, !88, !90, !91, !92, !93, !95, !96, !97, !99, !101, !103, !105, !107, !108, !109, !110, !112, !113, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !133, !134, !135, !137, !139, !141, !143}
!llvm.module.flags = !{!145, !146, !147, !148, !149, !150, !151, !152}
!llvm.ident = !{!153}

!0 = !{ptr @__initcall__kmod_snd_atmel_soc_pdmic__240_709_atmel_pdmic_driver_init6, !1, !"__initcall__kmod_snd_atmel_soc_pdmic__240_709_atmel_pdmic_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/atmel/atmel-pdmic.c", i32 709, i32 1}
!2 = !{ptr @__exitcall_atmel_pdmic_driver_exit, !1, !"__exitcall_atmel_pdmic_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description241, !4, !"__UNIQUE_ID_description241", i1 false, i1 false}
!4 = !{!"../sound/soc/atmel/atmel-pdmic.c", i32 711, i32 1}
!5 = !{ptr @__UNIQUE_ID_author242, !6, !"__UNIQUE_ID_author242", i1 false, i1 false}
!6 = !{!"../sound/soc/atmel/atmel-pdmic.c", i32 712, i32 1}
!7 = !{ptr @__UNIQUE_ID_file243, !8, !"__UNIQUE_ID_file243", i1 false, i1 false}
!8 = !{!"../sound/soc/atmel/atmel-pdmic.c", i32 713, i32 1}
!9 = !{ptr @__UNIQUE_ID_license244, !8, !"__UNIQUE_ID_license244", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/atmel/atmel-pdmic.c", i32 702, i32 12}
!12 = !{ptr @atmel_pdmic_driver, !13, !"atmel_pdmic_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/atmel/atmel-pdmic.c", i32 700, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/atmel/atmel-pdmic.c", i32 600, i32 31}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/atmel/atmel-pdmic.c", i32 603, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @atmel_pdmic_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @atmel_pdmic_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/atmel/atmel-pdmic.c", i32 607, i32 31}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/atmel/atmel-pdmic.c", i32 610, i32 3}
!28 = !{ptr @atmel_pdmic_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @atmel_pdmic_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/soc/atmel/atmel-pdmic.c", i32 619, i32 3}
!32 = !{ptr @atmel_pdmic_probe._entry.11, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @atmel_pdmic_probe._entry_ptr.13, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @atmel_pdmic_probe._key, !35, !"_key", i1 false, i1 false}
!35 = !{!"../sound/soc/atmel/atmel-pdmic.c", i32 629, i32 15}
!36 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/soc/atmel/atmel-pdmic.c", i32 633, i32 3}
!39 = !{ptr @atmel_pdmic_probe._entry.15, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @atmel_pdmic_probe._entry_ptr.17, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/soc/atmel/atmel-pdmic.c", i32 638, i32 5}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/soc/atmel/atmel-pdmic.c", i32 640, i32 3}
!45 = !{ptr @atmel_pdmic_probe._entry.19, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @atmel_pdmic_probe._entry_ptr.21, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/soc/atmel/atmel-pdmic.c", i32 655, i32 3}
!49 = !{ptr @atmel_pdmic_probe._entry.22, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @atmel_pdmic_probe._entry_ptr.24, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/soc/atmel/atmel-pdmic.c", i32 664, i32 3}
!53 = !{ptr @atmel_pdmic_probe._entry.25, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @atmel_pdmic_probe._entry_ptr.27, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/soc/atmel/atmel-pdmic.c", i32 679, i32 3}
!57 = !{ptr @atmel_pdmic_probe._entry.28, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @atmel_pdmic_probe._entry_ptr.30, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.32, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/soc/atmel/atmel-pdmic.c", i32 685, i32 3}
!61 = !{ptr @atmel_pdmic_probe._entry.31, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @atmel_pdmic_probe._entry_ptr.33, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.34, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/soc/atmel/atmel-pdmic.c", i32 56, i32 3}
!65 = !{ptr @.str.35, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @atmel_pdmic_dt_init._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @atmel_pdmic_dt_init._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.36, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/soc/atmel/atmel-pdmic.c", i32 64, i32 34}
!70 = !{ptr @.str.37, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/soc/atmel/atmel-pdmic.c", i32 67, i32 31}
!72 = !{ptr @.str.39, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/soc/atmel/atmel-pdmic.c", i32 69, i32 3}
!74 = !{ptr @atmel_pdmic_dt_init._entry.38, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @atmel_pdmic_dt_init._entry_ptr.40, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.41, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/atmel/atmel-pdmic.c", i32 73, i32 31}
!78 = !{ptr @.str.43, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/atmel/atmel-pdmic.c", i32 75, i32 3}
!80 = !{ptr @atmel_pdmic_dt_init._entry.42, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @atmel_pdmic_dt_init._entry_ptr.44, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.46, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/atmel/atmel-pdmic.c", i32 80, i32 3}
!84 = !{ptr @atmel_pdmic_dt_init._entry.45, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @atmel_pdmic_dt_init._entry_ptr.47, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.48, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/soc/atmel/atmel-pdmic.c", i32 85, i32 31}
!88 = !{ptr @.str.50, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/soc/atmel/atmel-pdmic.c", i32 89, i32 3}
!90 = !{ptr @.str.51, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @atmel_pdmic_dt_init._entry.49, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @atmel_pdmic_dt_init._entry_ptr.52, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.54, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/soc/atmel/atmel-pdmic.c", i32 94, i32 3}
!95 = !{ptr @atmel_pdmic_dt_init._entry.53, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @atmel_pdmic_dt_init._entry_ptr.55, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @atmel_pdmic_regmap_config, !98, !"atmel_pdmic_regmap_config", i1 false, i1 false}
!98 = !{!"../sound/soc/atmel/atmel-pdmic.c", i32 567, i32 35}
!99 = !{ptr @.str.56, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/soc/atmel/atmel-pdmic.c", i32 468, i32 18}
!101 = !{ptr @atmel_pdmic_cpu_dai, !102, !"atmel_pdmic_cpu_dai", i1 false, i1 false}
!102 = !{!"../sound/soc/atmel/atmel-pdmic.c", i32 466, i32 34}
!103 = !{ptr @atmel_pdmic_cpu_dai_ops, !104, !"atmel_pdmic_cpu_dai_ops", i1 false, i1 false}
!104 = !{!"../sound/soc/atmel/atmel-pdmic.c", i32 457, i32 37}
!105 = !{ptr @.str.57, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../sound/soc/atmel/atmel-pdmic.c", i32 371, i32 3}
!107 = !{ptr @.str.58, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @atmel_pdmic_cpu_dai_hw_params._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @atmel_pdmic_cpu_dai_hw_params._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.60, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/soc/atmel/atmel-pdmic.c", i32 377, i32 3}
!112 = !{ptr @atmel_pdmic_cpu_dai_hw_params._entry.59, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @atmel_pdmic_cpu_dai_hw_params._entry_ptr.61, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @atmel_pdmic_cpu_dai_component, !115, !"atmel_pdmic_cpu_dai_component", i1 false, i1 false}
!115 = !{!"../sound/soc/atmel/atmel-pdmic.c", i32 477, i32 46}
!116 = !{ptr @.str.62, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/soc/atmel/atmel-pdmic.c", i32 331, i32 1}
!118 = !{ptr @.str.63, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/soc/atmel/atmel-pdmic.c", i32 335, i32 1}
!120 = !{ptr @.str.65, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/soc/atmel/atmel-pdmic.c", i32 338, i32 1}
!122 = !{ptr @atmel_pdmic_snd_controls, !123, !"atmel_pdmic_snd_controls", i1 false, i1 false}
!123 = !{!"../sound/soc/atmel/atmel-pdmic.c", i32 330, i32 38}
!124 = !{ptr @mic_gain_table, !125, !"mic_gain_table", i1 false, i1 false}
!125 = !{!"../sound/soc/atmel/atmel-pdmic.c", i32 228, i32 30}
!126 = !{ptr @mic_gain_tlv, !127, !"mic_gain_tlv", i1 false, i1 false}
!127 = !{!"../sound/soc/atmel/atmel-pdmic.c", i32 273, i32 14}
!128 = !{ptr @atmel_pdmic_dmaengine_pcm_config, !129, !"atmel_pdmic_dmaengine_pcm_config", i1 false, i1 false}
!129 = !{!"../sound/soc/atmel/atmel-pdmic.c", i32 214, i32 1}
!130 = !{ptr @.str.67, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/soc/atmel/atmel-pdmic.c", i32 201, i32 3}
!132 = !{ptr @.str.68, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @atmel_pdmic_platform_configure_dma._entry, !131, !"_entry", i1 false, i1 false}
!134 = !{ptr @atmel_pdmic_platform_configure_dma._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @atmel_pdmic_hw, !136, !"atmel_pdmic_hw", i1 false, i1 false}
!136 = !{!"../sound/soc/atmel/atmel-pdmic.c", i32 175, i32 38}
!137 = !{ptr @.str.69, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../sound/soc/atmel/atmel-pdmic.c", i32 512, i32 27}
!139 = !{ptr @.str.70, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../sound/soc/atmel/atmel-pdmic.c", i32 513, i32 31}
!141 = !{ptr @.str.71, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../sound/soc/atmel/atmel-pdmic.c", i32 515, i32 28}
!143 = !{ptr @atmel_pdmic_of_match, !144, !"atmel_pdmic_of_match", i1 false, i1 false}
!144 = !{!"../sound/soc/atmel/atmel-pdmic.c", i32 38, i32 34}
!145 = !{i32 1, !"wchar_size", i32 2}
!146 = !{i32 1, !"min_enum_size", i32 4}
!147 = !{i32 8, !"branch-target-enforcement", i32 0}
!148 = !{i32 8, !"sign-return-address", i32 0}
!149 = !{i32 8, !"sign-return-address-all", i32 0}
!150 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!151 = !{i32 7, !"uwtable", i32 1}
!152 = !{i32 7, !"frame-pointer", i32 2}
!153 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!154 = !{!"auto-init"}
!155 = !{i32 0, i32 33}
