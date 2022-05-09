; ModuleID = '/llk/IR_all_yes/sound/soc/atmel/atmel-classd.c_pt.bc'
source_filename = "../sound/soc/atmel/atmel-classd.c"
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
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.94, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.94 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_dmaengine_pcm_config = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], ptr, i32 }
%struct.reg_default = type { i32, i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.86, i32 }
%union.anon.86 = type { ptr }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8, %struct.snd_soc_dobj }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.anon.95 = type { i32, i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.atmel_classd_pdata = type { i8, i32, i32, ptr }
%struct.atmel_classd = type { i32, ptr, ptr, ptr, ptr, i32, ptr }
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }
%struct.snd_soc_dai_link = type { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i24, %struct.snd_soc_dobj }
%struct.snd_soc_dai_link_component = type { ptr, ptr, ptr }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
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
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }

@__initcall__kmod_snd_atmel_soc_classd__241_633_atmel_classd_driver_init6 = internal global ptr @atmel_classd_driver_init, section ".initcall6.init", align 4
@atmel_classd_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @atmel_classd_probe, ptr @atmel_classd_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @atmel_classd_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snd_soc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_atmel_classd_driver_exit = internal global ptr @atmel_classd_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description242 = internal constant [81 x i8] c"snd_atmel_soc_classd.description=Atmel ClassD driver under ALSA SoC architecture\00", section ".modinfo", align 1
@__UNIQUE_ID_author243 = internal constant [62 x i8] c"snd_atmel_soc_classd.author=Songjun Wu <songjun.wu@atmel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file244 = internal constant [63 x i8] c"snd_atmel_soc_classd.file=sound/soc/atmel/snd-atmel-soc-classd\00", section ".modinfo", align 1
@__UNIQUE_ID_license245 = internal constant [33 x i8] c"snd_atmel_soc_classd.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"atmel-classd\00", [19 x i8] zeroinitializer }, align 32
@atmel_classd_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d2-classd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@snd_soc_pm_ops = external dso_local constant %struct.dev_pm_ops, align 4
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pclk\00", [27 x i8] zeroinitializer }, align 32
@atmel_classd_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 550, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to get peripheral clock: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"atmel_classd_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"sound/soc/atmel/atmel-classd.c\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@atmel_classd_probe._entry_ptr = internal global ptr @atmel_classd_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gclk\00", [27 x i8] zeroinitializer }, align 32
@atmel_classd_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 557, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to get GCK clock: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@atmel_classd_probe._entry_ptr.10 = internal global ptr @atmel_classd_probe._entry.8, section ".printk_index", align 4
@atmel_classd_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@atmel_classd_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 228, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @atmel_classd_reg_defaults, i32 1, i32 3, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"atmel_classd:569:(&atmel_classd_regmap_config)->lock\00", [43 x i8] zeroinitializer }, align 32
@atmel_classd_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 572, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to init register map: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@atmel_classd_probe._entry_ptr.14 = internal global ptr @atmel_classd_probe._entry.12, section ".printk_index", align 4
@atmel_classd_cpu_dai_component = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str, ptr @atmel_classd_snd_controls, i32 6, ptr null, i32 0, ptr null, i32 0, ptr @atmel_classd_component_probe, ptr null, ptr null, ptr @atmel_classd_component_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 88, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@atmel_classd_cpu_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr null, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @atmel_classd_cpu_dai_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.71, i64 4, i32 1786, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@atmel_classd_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 580, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"could not register CPU DAI: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@atmel_classd_probe._entry_ptr.17 = internal global ptr @atmel_classd_probe._entry.15, section ".printk_index", align 4
@atmel_classd_dmaengine_pcm_config = internal constant { %struct.snd_dmaengine_pcm_config, [60 x i8] } { %struct.snd_dmaengine_pcm_config { ptr @atmel_classd_platform_configure_dma, ptr null, ptr null, ptr null, ptr null, [2 x ptr] zeroinitializer, ptr @atmel_classd_hw, i32 65536 }, [60 x i8] zeroinitializer }, align 32
@atmel_classd_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 588, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"could not register platform: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@atmel_classd_probe._entry_ptr.20 = internal global ptr @atmel_classd_probe._entry.18, section ".printk_index", align 4
@atmel_classd_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.3, ptr @.str.4, i32 603, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to init sound card\0A\00", [37 x i8] zeroinitializer }, align 32
@atmel_classd_probe._entry_ptr.23 = internal global ptr @atmel_classd_probe._entry.21, section ".printk_index", align 4
@atmel_classd_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.3, ptr @.str.4, i32 609, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to register sound card: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@atmel_classd_probe._entry_ptr.26 = internal global ptr @atmel_classd_probe._entry.24, section ".printk_index", align 4
@atmel_classd_dt_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.4, i32 55, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"device node not found\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"atmel_classd_dt_init\00", [43 x i8] zeroinitializer }, align 32
@atmel_classd_dt_init._entry_ptr = internal global ptr @atmel_classd_dt_init._entry, section ".printk_index", align 4
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"atmel,pwm-type\00", [17 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"diff\00", [27 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"atmel,non-overlap-time\00", [41 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"atmel,model\00", [20 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CLASSD\00", [25 x i8] zeroinitializer }, align 32
@atmel_classd_reg_defaults = internal constant { [1 x %struct.reg_default], [24 x i8] } { [1 x %struct.reg_default] [%struct.reg_default { i32 8, i32 3150354 }], [24 x i8] zeroinitializer }, align 32
@atmel_classd_snd_controls = internal constant { [6 x %struct.snd_kcontrol_new], [64 x i8] } { [6 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.34, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.86 { ptr @classd_digital_tlv }, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.35, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.36 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.37, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.38 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.39, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.40 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.41, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @classd_mono_mode_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.42, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_get_enum_double, ptr @snd_soc_put_enum_double, %union.anon.86 zeroinitializer, i32 ptrtoint (ptr @classd_eqcfg_enum to i32) }], [64 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Playback Volume\00", [16 x i8] zeroinitializer }, align 32
@classd_digital_tlv = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -7800, i32 65636], [16 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 78, i32 78, i32 8, i32 8, i32 0, i32 8, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Deemphasis Switch\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.36 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 8, i32 8, i32 18, i32 18, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Mono Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.38 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 8, i32 8, i32 28, i32 28, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Swap Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.40 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 8, i32 8, i32 19, i32 19, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Mono Mode\00", [22 x i8] zeroinitializer }, align 32
@classd_mono_mode_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 8, i8 29, i8 29, i32 4, i32 3, ptr @mono_mode_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"EQ\00", [29 x i8] zeroinitializer }, align 32
@classd_eqcfg_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 8, i8 24, i8 24, i32 13, i32 15, ptr @eqcfg_text, ptr @eqcfg_value, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@mono_mode_text = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46], [16 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mix\00", [28 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sat\00", [28 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"left\00", [27 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"right\00", [26 x i8] zeroinitializer }, align 32
@eqcfg_text = internal constant { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59], [44 x i8] zeroinitializer }, align 32
@eqcfg_value = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 11, i32 12, i32 8, i32 7, i32 3, i32 4, i32 0, i32 2, i32 1, i32 5, i32 6, i32 10, i32 9], [44 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Treble-12dB\00", [20 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Treble-6dB\00", [21 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Medium-8dB\00", [21 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Medium-3dB\00", [21 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Bass-12dB\00", [22 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Bass-6dB\00", [23 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0 dB\00", [27 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Bass+6dB\00", [23 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Bass+12dB\00", [22 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Medium+3dB\00", [21 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Medium+8dB\00", [21 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Treble+6dB\00", [21 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Treble+12dB\00", [20 x i8] zeroinitializer }, align 32
@atmel_classd_component_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.4, i32 268, ptr @.str.62, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"non-overlapping value %d is invalid, the default value 10 is specified\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"atmel_classd_component_probe\00", [35 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@atmel_classd_component_probe._entry_ptr = internal global ptr @atmel_classd_component_probe._entry, section ".printk_index", align 4
@atmel_classd_component_probe._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.61, ptr @.str.4, i32 278, ptr @.str.65, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"PWM modulation type is %s, non-overlapping is %s\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@atmel_classd_component_probe._entry_ptr.66 = internal global ptr @atmel_classd_component_probe._entry.63, section ".printk_index", align 4
@pwm_type = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.69, ptr @.str.70], [24 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Single ended\00", [19 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Differential\00", [19 x i8] zeroinitializer }, align 32
@atmel_classd_cpu_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @atmel_classd_cpu_dai_mute_stream, ptr @atmel_classd_cpu_dai_startup, ptr @atmel_classd_cpu_dai_shutdown, ptr @atmel_classd_cpu_dai_hw_params, ptr null, ptr @atmel_classd_cpu_dai_prepare, ptr @atmel_classd_cpu_dai_trigger, ptr null, ptr null, ptr null, i32 0, i8 -128 }, [32 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Playback\00", [23 x i8] zeroinitializer }, align 32
@sample_rates = internal constant { [8 x %struct.anon.95], [32 x i8] } { [8 x %struct.anon.95] [%struct.anon.95 { i32 8000, i32 0, i32 0, i32 98304000 }, %struct.anon.95 { i32 16000, i32 1, i32 0, i32 98304000 }, %struct.anon.95 { i32 32000, i32 2, i32 0, i32 98304000 }, %struct.anon.95 { i32 48000, i32 3, i32 0, i32 98304000 }, %struct.anon.95 { i32 96000, i32 4, i32 0, i32 98304000 }, %struct.anon.95 { i32 22050, i32 5, i32 1, i32 90316800 }, %struct.anon.95 { i32 44100, i32 6, i32 1, i32 90316800 }, %struct.anon.95 { i32 88200, i32 7, i32 1, i32 90316800 }], [32 x i8] zeroinitializer }, align 32
@atmel_classd_cpu_dai_hw_params.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.72, ptr @.str.73, ptr @.str.4, ptr @.str.74, i8 0, i8 90, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"snd_atmel_soc_classd\00", [43 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"atmel_classd_cpu_dai_hw_params\00", [33 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Selected SAMPLE_RATE of %dHz, GCLK_RATE of %ldHz\0A\00", [46 x i8] zeroinitializer }, align 32
@atmel_classd_hw = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 786691, i64 4, i32 1786, i32 8000, i32 96000, i32 1, i32 2, i32 65536, i32 256, i32 32768, i32 2, i32 256, i32 0 }, [32 x i8] zeroinitializer }, align 32
@atmel_classd_platform_configure_dma._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.4, i32 149, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"only supports 16-bit audio data\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"atmel_classd_platform_configure_dma\00", [60 x i8] zeroinitializer }, align 32
@atmel_classd_platform_configure_dma._entry_ptr = internal global ptr @atmel_classd_platform_configure_dma._entry, section ".printk_index", align 4
@.str.77 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CLASSD PCM\00", [21 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"snd-soc-dummy-dai\00", [46 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"snd-soc-dummy\00", [18 x i8] zeroinitializer }, align 32
@switch.table.atmel_classd_cpu_dai_trigger = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 0, i32 17, i32 17, i32 0, i32 17, i32 0, i32 17], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 5, i64 10, i64 15, i64 20]
@___asan_gen_.80 = private unnamed_addr constant [20 x i8] c"atmel_classd_driver\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 624, i32 31 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 626, i32 12 }
@___asan_gen_.86 = private unnamed_addr constant [22 x i8] c"atmel_classd_of_match\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 38, i32 34 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 547, i32 31 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 550, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 554, i32 31 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 557, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.122 = private unnamed_addr constant [27 x i8] c"atmel_classd_regmap_config\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 509, i32 35 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 568, i32 15 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 572, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant [31 x i8] c"atmel_classd_cpu_dai_component\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 453, i32 46 }
@___asan_gen_.137 = private unnamed_addr constant [21 x i8] c"atmel_classd_cpu_dai\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 442, i32 34 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 580, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant [34 x i8] c"atmel_classd_dmaengine_pcm_config\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 168, i32 1 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 588, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 603, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 609, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 55, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 63, i32 36 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 64, i32 40 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 70, i32 4 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 76, i32 36 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 78, i32 22 }
@___asan_gen_.191 = private unnamed_addr constant [26 x i8] c"atmel_classd_reg_defaults\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 504, i32 33 }
@___asan_gen_.194 = private unnamed_addr constant [26 x i8] c"atmel_classd_snd_controls\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 209, i32 38 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 210, i32 1 }
@___asan_gen_.200 = private unnamed_addr constant [19 x i8] c"classd_digital_tlv\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 207, i32 14 }
@___asan_gen_.203 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 214, i32 1 }
@___asan_gen_.207 = private unnamed_addr constant [20 x i8] c".compoundliteral.36\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 217, i32 1 }
@___asan_gen_.211 = private unnamed_addr constant [20 x i8] c".compoundliteral.38\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 219, i32 1 }
@___asan_gen_.215 = private unnamed_addr constant [20 x i8] c".compoundliteral.40\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 221, i32 1 }
@___asan_gen_.219 = private unnamed_addr constant [22 x i8] c"classd_mono_mode_enum\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 179, i32 8 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 223, i32 1 }
@___asan_gen_.225 = private unnamed_addr constant [18 x i8] c"classd_eqcfg_enum\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 203, i32 8 }
@___asan_gen_.228 = private unnamed_addr constant [15 x i8] c"mono_mode_text\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 175, i32 27 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 176, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 176, i32 9 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 176, i32 16 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 176, i32 24 }
@___asan_gen_.243 = private unnamed_addr constant [11 x i8] c"eqcfg_text\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 183, i32 27 }
@___asan_gen_.246 = private unnamed_addr constant [12 x i8] c"eqcfg_value\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 193, i32 27 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 184, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 184, i32 17 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 185, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 185, i32 16 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 186, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 186, i32 15 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 187, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 188, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 188, i32 14 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 189, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 189, i32 16 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 190, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 190, i32 16 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 266, i32 4 }
@___asan_gen_.309 = private unnamed_addr constant [9 x i8] c"pwm_type\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 226, i32 27 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 275, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 227, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 227, i32 18 }
@___asan_gen_.324 = private unnamed_addr constant [25 x i8] c"atmel_classd_cpu_dai_ops\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 432, i32 37 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 444, i32 18 }
@___asan_gen_.330 = private unnamed_addr constant [13 x i8] c"sample_rates\00", align 1
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 317, i32 9 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 361, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant [16 x i8] c"atmel_classd_hw\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 96, i32 38 }
@___asan_gen_.345 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 148, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 489, i32 27 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 490, i32 31 }
@___asan_gen_.360 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.361 = private constant [34 x i8] c"../sound/soc/atmel/atmel-classd.c\00", align 1
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.361, i32 492, i32 28 }
@___asan_gen_.363 = private unnamed_addr constant [42 x i8] c"switch.table.atmel_classd_cpu_dai_trigger\00", align 1
@llvm.compiler.used = appending global [116 x ptr] [ptr @__UNIQUE_ID_author243, ptr @__UNIQUE_ID_description242, ptr @__UNIQUE_ID_file244, ptr @__UNIQUE_ID_license245, ptr @__exitcall_atmel_classd_driver_exit, ptr @__initcall__kmod_snd_atmel_soc_classd__241_633_atmel_classd_driver_init6, ptr @atmel_classd_component_probe._entry, ptr @atmel_classd_component_probe._entry.63, ptr @atmel_classd_component_probe._entry_ptr, ptr @atmel_classd_component_probe._entry_ptr.66, ptr @atmel_classd_driver_exit, ptr @atmel_classd_dt_init._entry, ptr @atmel_classd_dt_init._entry_ptr, ptr @atmel_classd_platform_configure_dma._entry, ptr @atmel_classd_platform_configure_dma._entry_ptr, ptr @atmel_classd_probe._entry, ptr @atmel_classd_probe._entry.12, ptr @atmel_classd_probe._entry.15, ptr @atmel_classd_probe._entry.18, ptr @atmel_classd_probe._entry.21, ptr @atmel_classd_probe._entry.24, ptr @atmel_classd_probe._entry.8, ptr @atmel_classd_probe._entry_ptr, ptr @atmel_classd_probe._entry_ptr.10, ptr @atmel_classd_probe._entry_ptr.14, ptr @atmel_classd_probe._entry_ptr.17, ptr @atmel_classd_probe._entry_ptr.20, ptr @atmel_classd_probe._entry_ptr.23, ptr @atmel_classd_probe._entry_ptr.26, ptr @atmel_classd_driver, ptr @.str, ptr @atmel_classd_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @atmel_classd_probe._key, ptr @atmel_classd_regmap_config, ptr @.str.11, ptr @.str.13, ptr @atmel_classd_cpu_dai_component, ptr @atmel_classd_cpu_dai, ptr @.str.16, ptr @atmel_classd_dmaengine_pcm_config, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @atmel_classd_reg_defaults, ptr @atmel_classd_snd_controls, ptr @.str.34, ptr @classd_digital_tlv, ptr @.compoundliteral, ptr @.str.35, ptr @.compoundliteral.36, ptr @.str.37, ptr @.compoundliteral.38, ptr @.str.39, ptr @.compoundliteral.40, ptr @.str.41, ptr @classd_mono_mode_enum, ptr @.str.42, ptr @classd_eqcfg_enum, ptr @mono_mode_text, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @eqcfg_text, ptr @eqcfg_value, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @pwm_type, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @atmel_classd_cpu_dai_ops, ptr @.str.71, ptr @sample_rates, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @atmel_classd_hw, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @switch.table.atmel_classd_cpu_dai_trigger], section "llvm.metadata"
@0 = internal global [98 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_classd_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_classd_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_classd_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_classd_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_classd_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_classd_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_classd_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_classd_cpu_dai_component to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_classd_cpu_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_classd_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_classd_dmaengine_pcm_config to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_classd_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_classd_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_classd_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_classd_dt_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_classd_reg_defaults to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_classd_snd_controls to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @classd_digital_tlv to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.36 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.38 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.40 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @classd_mono_mode_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @classd_eqcfg_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mono_mode_text to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eqcfg_text to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eqcfg_value to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_classd_component_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_classd_component_probe._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_type to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_classd_cpu_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sample_rates to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_classd_hw to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_classd_platform_configure_dma._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.atmel_classd_cpu_dai_trigger to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_classd_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @atmel_classd_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @atmel_classd_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @atmel_classd_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_classd_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %pwm_type_s.i = alloca ptr, align 4
  %res = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %res) #8
  %0 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %res, align 4, !annotation !192
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %1 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then:                                          ; preds = %entry
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %3 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pwm_type_s.i) #8
  %5 = ptrtoint ptr %pwm_type_s.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %pwm_type_s.i, align 4, !annotation !192
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.27) #11
  br label %atmel_classd_dt_init.exit.thread

if.end.i:                                         ; preds = %if.then
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 16, i32 noundef 3520) #8
  %tobool2.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool2.not.i, label %if.end.i.atmel_classd_dt_init.exit.thread_crit_edge, label %if.end5.i

if.end.i.atmel_classd_dt_init.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %atmel_classd_dt_init.exit.thread

if.end5.i:                                        ; preds = %if.end.i
  %call6.i = call i32 @of_property_read_string(ptr noundef nonnull %4, ptr noundef nonnull @.str.29, ptr noundef nonnull %pwm_type_s.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp.i = icmp eq i32 %call6.i, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end5.i.if.else.i_crit_edge

if.end5.i.if.else.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.end5.i
  %6 = ptrtoint ptr %pwm_type_s.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pwm_type_s.i, align 4
  %call7.i = call i32 @strcmp(ptr noundef %7, ptr noundef nonnull dereferenceable(5) @.str.30) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp eq i32 %call7.i, 0
  br i1 %cmp8.i, label %land.lhs.true.i.if.end11.i_crit_edge, label %land.lhs.true.i.if.else.i_crit_edge

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

land.lhs.true.i.if.end11.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.end5.i.if.else.i_crit_edge
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.else.i, %land.lhs.true.i.if.end11.i_crit_edge
  %.sink.i = phi i32 [ 0, %if.else.i ], [ 1, %land.lhs.true.i.if.end11.i_crit_edge ]
  %pwm_type10.i = getelementptr inbounds %struct.atmel_classd_pdata, ptr %call.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %pwm_type10.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %.sink.i, ptr %pwm_type10.i, align 4
  %non_overlap_time.i = getelementptr inbounds %struct.atmel_classd_pdata, ptr %call.i.i, i32 0, i32 1
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %4, ptr noundef nonnull @.str.31, ptr noundef %non_overlap_time.i, i32 noundef 1, i32 noundef 0) #8
  %call.i.i.lobit.i = lshr i32 %call.i.i.i, 31
  %9 = trunc i32 %call.i.i.lobit.i to i8
  %.not.i = xor i8 %9, 1
  %10 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %.not.i, ptr %call.i.i, align 4
  %card_name.i = getelementptr inbounds %struct.atmel_classd_pdata, ptr %call.i.i, i32 0, i32 3
  %call18.i = call i32 @of_property_read_string(ptr noundef nonnull %4, ptr noundef nonnull @.str.32, ptr noundef %card_name.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.end11.i.atmel_classd_dt_init.exit_crit_edge, label %if.then20.i

if.end11.i.atmel_classd_dt_init.exit_crit_edge:   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %atmel_classd_dt_init.exit

if.then20.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %card_name.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.33, ptr %card_name.i, align 4
  br label %atmel_classd_dt_init.exit

atmel_classd_dt_init.exit.thread:                 ; preds = %if.end.i.atmel_classd_dt_init.exit.thread_crit_edge, %do.end.i
  %retval.0.i.ph = phi ptr [ inttoptr (i32 -12 to ptr), %if.end.i.atmel_classd_dt_init.exit.thread_crit_edge ], [ inttoptr (i32 -22 to ptr), %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pwm_type_s.i) #8
  br label %if.then4

atmel_classd_dt_init.exit:                        ; preds = %if.then20.i, %if.end11.i.atmel_classd_dt_init.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pwm_type_s.i) #8
  %cmp.i147 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i147, label %atmel_classd_dt_init.exit.if.then4_crit_edge, label %atmel_classd_dt_init.exit.if.end6_crit_edge

atmel_classd_dt_init.exit.if.end6_crit_edge:      ; preds = %atmel_classd_dt_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

atmel_classd_dt_init.exit.if.then4_crit_edge:     ; preds = %atmel_classd_dt_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

if.then4:                                         ; preds = %atmel_classd_dt_init.exit.if.then4_crit_edge, %atmel_classd_dt_init.exit.thread
  %retval.0.i162 = phi ptr [ %retval.0.i.ph, %atmel_classd_dt_init.exit.thread ], [ %call.i.i, %atmel_classd_dt_init.exit.if.then4_crit_edge ]
  %12 = ptrtoint ptr %retval.0.i162 to i32
  br label %cleanup

if.end6:                                          ; preds = %atmel_classd_dt_init.exit.if.end6_crit_edge, %entry.if.end6_crit_edge
  %pdata.0 = phi ptr [ %2, %entry.if.end6_crit_edge ], [ %call.i.i, %atmel_classd_dt_init.exit.if.end6_crit_edge ]
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 28, i32 noundef 3520) #8
  %tobool8.not = icmp eq ptr %call.i, null
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %if.end10

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %pdata11 = getelementptr inbounds %struct.atmel_classd, ptr %call.i, i32 0, i32 6
  %13 = ptrtoint ptr %pdata11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %pdata.0, ptr %pdata11, align 4
  %call12 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  %irq = getelementptr inbounds %struct.atmel_classd, ptr %call.i, i32 0, i32 5
  %14 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call12, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp = icmp slt i32 %call12, 0
  br i1 %cmp, label %if.end10.cleanup_crit_edge, label %if.end16

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end10
  %call17 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.1) #8
  %pclk = getelementptr inbounds %struct.atmel_classd, ptr %call.i, i32 0, i32 2
  %15 = ptrtoint ptr %pclk to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call17, ptr %pclk, align 4
  %cmp.i148 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i148, label %if.then20, label %if.end23

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %call17 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef %16) #11
  br label %cleanup

if.end23:                                         ; preds = %if.end16
  %call24 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.7) #8
  %gclk = getelementptr inbounds %struct.atmel_classd, ptr %call.i, i32 0, i32 3
  %17 = ptrtoint ptr %gclk to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call24, ptr %gclk, align 4
  %cmp.i149 = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i149, label %if.then27, label %if.end33

if.then27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %call24 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9, i32 noundef %18) #11
  br label %cleanup

if.end33:                                         ; preds = %if.end23
  %call34 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %pdev, i32 noundef 0, ptr noundef nonnull %res) #8
  %cmp.i150 = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i150, label %if.then36, label %if.end38

if.then36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %call34 to i32
  br label %cleanup

if.end38:                                         ; preds = %if.end33
  %20 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %res, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %24 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %call.i, align 4
  %dev39 = getelementptr inbounds %struct.atmel_classd, ptr %call.i, i32 0, i32 4
  %25 = ptrtoint ptr %dev39 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %dev1, ptr %dev39, align 4
  %call40 = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev1, ptr noundef null, ptr noundef %call34, ptr noundef nonnull @atmel_classd_regmap_config, ptr noundef nonnull @atmel_classd_probe._key, ptr noundef nonnull @.str.11) #8
  %regmap = getelementptr inbounds %struct.atmel_classd, ptr %call.i, i32 0, i32 1
  %26 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call40, ptr %regmap, align 4
  %cmp.i151 = icmp ugt ptr %call40, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i151, label %if.then43, label %if.end49

if.then43:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %call40 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13, i32 noundef %27) #11
  br label %cleanup

if.end49:                                         ; preds = %if.end38
  %call50 = call i32 @devm_snd_soc_register_component(ptr noundef %dev1, ptr noundef nonnull @atmel_classd_cpu_dai_component, ptr noundef nonnull @atmel_classd_cpu_dai, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end56, label %do.end55

do.end55:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.16, i32 noundef %call50) #11
  br label %cleanup

if.end56:                                         ; preds = %if.end49
  %call57 = call i32 @devm_snd_dmaengine_pcm_register(ptr noundef %dev1, ptr noundef nonnull @atmel_classd_dmaengine_pcm_config, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end63, label %do.end62

do.end62:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19, i32 noundef %call57) #11
  br label %cleanup

if.end63:                                         ; preds = %if.end56
  %call.i152 = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 648, i32 noundef 3520) #8
  %tobool65.not = icmp eq ptr %call.i152, null
  br i1 %tobool65.not, label %if.end63.cleanup_crit_edge, label %if.end67

if.end63.cleanup_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end67:                                         ; preds = %if.end63
  %drvdata.i = getelementptr inbounds %struct.snd_soc_card, ptr %call.i152, i32 0, i32 57
  %28 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i, ptr %drvdata.i, align 4
  %call.i.i153 = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 116, i32 noundef 3520) #8
  %tobool.not.i154 = icmp eq ptr %call.i.i153, null
  br i1 %tobool.not.i154, label %if.end67.do.end73_crit_edge, label %if.end.i155

if.end67.do.end73_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end73

if.end.i155:                                      ; preds = %if.end67
  %call.i46.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 36, i32 noundef 3520) #8
  %tobool3.not.i = icmp eq ptr %call.i46.i, null
  br i1 %tobool3.not.i, label %if.end.i155.do.end73_crit_edge, label %if.end5.i156

if.end.i155.do.end73_crit_edge:                   ; preds = %if.end.i155
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end73

if.end5.i156:                                     ; preds = %if.end.i155
  %cpus.i = getelementptr inbounds %struct.snd_soc_dai_link, ptr %call.i.i153, i32 0, i32 2
  %29 = ptrtoint ptr %cpus.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i46.i, ptr %cpus.i, align 4
  %arrayidx6.i = getelementptr %struct.snd_soc_dai_link_component, ptr %call.i46.i, i32 1
  %codecs.i = getelementptr inbounds %struct.snd_soc_dai_link, ptr %call.i.i153, i32 0, i32 4
  %30 = ptrtoint ptr %codecs.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %arrayidx6.i, ptr %codecs.i, align 4
  %arrayidx7.i = getelementptr %struct.snd_soc_dai_link_component, ptr %call.i46.i, i32 2
  %platforms.i = getelementptr inbounds %struct.snd_soc_dai_link, ptr %call.i.i153, i32 0, i32 6
  %31 = ptrtoint ptr %platforms.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %arrayidx7.i, ptr %platforms.i, align 4
  %num_cpus.i = getelementptr inbounds %struct.snd_soc_dai_link, ptr %call.i.i153, i32 0, i32 3
  %32 = ptrtoint ptr %num_cpus.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %num_cpus.i, align 4
  %num_codecs.i = getelementptr inbounds %struct.snd_soc_dai_link, ptr %call.i.i153, i32 0, i32 5
  %33 = ptrtoint ptr %num_codecs.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %num_codecs.i, align 4
  %num_platforms.i = getelementptr inbounds %struct.snd_soc_dai_link, ptr %call.i.i153, i32 0, i32 7
  %34 = ptrtoint ptr %num_platforms.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %num_platforms.i, align 4
  %35 = ptrtoint ptr %call.i.i153 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @.str.33, ptr %call.i.i153, align 4
  %stream_name.i = getelementptr inbounds %struct.snd_soc_dai_link, ptr %call.i.i153, i32 0, i32 1
  %36 = ptrtoint ptr %stream_name.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @.str.77, ptr %stream_name.i, align 4
  %dai_name.i = getelementptr %struct.snd_soc_dai_link_component, ptr %call.i46.i, i32 1, i32 2
  %37 = ptrtoint ptr %dai_name.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @.str.78, ptr %dai_name.i, align 4
  %init_name.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %38 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %39, null
  br i1 %tobool.not.i.i, label %if.end.i49.i, label %if.end5.i156.if.end74_crit_edge

if.end5.i156.if.end74_crit_edge:                  ; preds = %if.end5.i156
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end74

if.end.i49.i:                                     ; preds = %if.end5.i156
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev1, align 4
  br label %if.end74

do.end73:                                         ; preds = %if.end.i155.do.end73_crit_edge, %if.end67.do.end73_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.22) #11
  br label %cleanup

if.end74:                                         ; preds = %if.end.i49.i, %if.end5.i156.if.end74_crit_edge
  %.sink.i157 = phi ptr [ %41, %if.end.i49.i ], [ %39, %if.end5.i156.if.end74_crit_edge ]
  %42 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %call.i46.i, i32 0, i32 2
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %.sink.i157, ptr %42, align 4
  %44 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @.str.79, ptr %arrayidx6.i, align 4
  %45 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %.sink.i157, ptr %arrayidx7.i, align 4
  %dai_link17.i = getelementptr inbounds %struct.snd_soc_card, ptr %call.i152, i32 0, i32 24
  %46 = ptrtoint ptr %dai_link17.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call.i.i153, ptr %dai_link17.i, align 4
  %num_links.i = getelementptr inbounds %struct.snd_soc_card, ptr %call.i152, i32 0, i32 25
  %47 = ptrtoint ptr %num_links.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %num_links.i, align 4
  %48 = ptrtoint ptr %pdata11 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pdata11, align 4
  %card_name.i158 = getelementptr inbounds %struct.atmel_classd_pdata, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %card_name.i158 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %card_name.i158, align 4
  %52 = ptrtoint ptr %call.i152 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %51, ptr %call.i152, align 4
  %dev19.i = getelementptr inbounds %struct.snd_soc_card, ptr %call.i152, i32 0, i32 5
  %53 = ptrtoint ptr %dev19.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %dev1, ptr %dev19.i, align 4
  %call75 = call i32 @devm_snd_soc_register_card(ptr noundef %dev1, ptr noundef nonnull %call.i152) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end74.cleanup_crit_edge, label %do.end80

if.end74.cleanup_crit_edge:                       ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end80:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.25, i32 noundef %call75) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end80, %if.end74.cleanup_crit_edge, %do.end73, %if.end63.cleanup_crit_edge, %do.end62, %do.end55, %if.then43, %if.then36, %if.then27, %if.then20, %if.end10.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.then4
  %retval.0 = phi i32 [ %16, %if.then20 ], [ %18, %if.then27 ], [ %19, %if.then36 ], [ %27, %if.then43 ], [ %call50, %do.end55 ], [ %call57, %do.end62 ], [ %12, %if.then4 ], [ -12, %if.end6.cleanup_crit_edge ], [ %call12, %if.end10.cleanup_crit_edge ], [ 0, %if.end74.cleanup_crit_edge ], [ -12, %do.end73 ], [ %call75, %do.end80 ], [ -12, %if.end63.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %res) #8
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @atmel_classd_remove(ptr nocapture noundef readnone %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

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

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_classd_component_probe(ptr noundef %component) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %pdata2 = getelementptr inbounds %struct.atmel_classd, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %pdata2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdata2, align 4
  %pwm_type = getelementptr inbounds %struct.atmel_classd_pdata, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %pwm_type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pwm_type, align 4
  %shl = shl i32 %9, 8
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %7, align 4, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %non_overlap_time = getelementptr inbounds %struct.atmel_classd_pdata, ptr %7, i32 0, i32 1
  %12 = ptrtoint ptr %non_overlap_time to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %non_overlap_time, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %13, label %sw.default [
    i32 5, label %sw.bb
    i32 10, label %sw.bb6
    i32 15, label %sw.bb8
    i32 20, label %sw.bb10
  ]

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %or3 = or i32 %shl, 65536
  br label %if.end

sw.bb6:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %or7 = or i32 %shl, 1114112
  br label %if.end

sw.bb8:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %or9 = or i32 %shl, 2162688
  br label %if.end

sw.bb10:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %or11 = or i32 %shl, 3211264
  br label %if.end

sw.default:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %or12 = or i32 %shl, 1114112
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.60, i32 noundef %13) #11
  br label %if.end

if.end:                                           ; preds = %sw.default, %sw.bb10, %sw.bb8, %sw.bb6, %sw.bb, %entry.if.end_crit_edge
  %mask.0 = phi i32 [ 3211520, %sw.default ], [ 3211520, %sw.bb10 ], [ 3211520, %sw.bb8 ], [ 3211520, %sw.bb6 ], [ 3211520, %sw.bb ], [ 65792, %entry.if.end_crit_edge ]
  %val.0 = phi i32 [ %or12, %sw.default ], [ %or11, %sw.bb10 ], [ %or9, %sw.bb8 ], [ %or7, %sw.bb6 ], [ %or3, %sw.bb ], [ %shl, %entry.if.end_crit_edge ]
  %call14 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 4, i32 noundef %mask.0, i32 noundef %val.0) #8
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 4
  %17 = ptrtoint ptr %pwm_type to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %pwm_type, align 4
  %arrayidx = getelementptr [2 x ptr], ptr @pwm_type, i32 0, i32 %18
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx, align 4
  %21 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %7, align 4, !range !193
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool21.not = icmp eq i8 %22, 0
  %cond = select i1 %tobool21.not, ptr @.str.68, ptr @.str.67
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %16, ptr noundef nonnull @.str.64, ptr noundef %20, ptr noundef nonnull %cond) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_classd_component_resume(ptr nocapture noundef readonly %component) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %regmap = getelementptr inbounds %struct.atmel_classd, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call2 = tail call i32 @regcache_sync(ptr noundef %7) #8
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_classd_cpu_dai_mute_stream(ptr nocapture noundef readonly %cpu_dai, i32 noundef %mute, i32 noundef %direction) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mute)
  %tobool.not = icmp eq i32 %mute, 0
  %. = select i1 %tobool.not, i32 0, i32 34
  %call = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 4, i32 noundef 34, i32 noundef %.) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_classd_cpu_dai_startup(ptr nocapture noundef readonly %substream, ptr nocapture noundef readnone %cpu_dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %regmap = getelementptr inbounds %struct.atmel_classd, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call1 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 16, i32 noundef 0) #8
  %pclk = getelementptr inbounds %struct.atmel_classd, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pclk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.end.i.cleanup.sink.split_crit_edge

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end:                                           ; preds = %if.end.i
  %gclk = getelementptr inbounds %struct.atmel_classd, ptr %5, i32 0, i32 3
  %10 = ptrtoint ptr %gclk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %gclk, align 4
  %call.i16 = tail call i32 @clk_prepare(ptr noundef %11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i16)
  %tobool.not.i17 = icmp eq i32 %call.i16, 0
  br i1 %tobool.not.i17, label %if.end.i20, label %if.end.if.then5_crit_edge

if.end.if.then5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then5

if.end.i20:                                       ; preds = %if.end
  %call1.i18 = tail call i32 @clk_enable(ptr noundef %11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i18)
  %tobool2.not.i19 = icmp eq i32 %call1.i18, 0
  br i1 %tobool2.not.i19, label %if.end.i20.cleanup_crit_edge, label %if.then3.i21

if.end.i20.cleanup_crit_edge:                     ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3.i21:                                     ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %11) #8
  br label %if.then5

if.then5:                                         ; preds = %if.then3.i21, %if.end.if.then5_crit_edge
  %retval.0.i22.ph = phi i32 [ %call1.i18, %if.then3.i21 ], [ %call.i16, %if.end.if.then5_crit_edge ]
  %12 = ptrtoint ptr %pclk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pclk, align 4
  tail call void @clk_disable(ptr noundef %13) #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then5, %if.end.i.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %13, %if.then5 ], [ %9, %if.end.i.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %retval.0.i22.ph, %if.then5 ], [ %call1.i, %if.end.i.cleanup.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.i20.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.i20.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmel_classd_cpu_dai_shutdown(ptr nocapture noundef readonly %substream, ptr nocapture noundef readnone %cpu_dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %gclk = getelementptr inbounds %struct.atmel_classd, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %gclk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gclk, align 4
  tail call void @clk_disable(ptr noundef %7) #8
  tail call void @clk_unprepare(ptr noundef %7) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_classd_cpu_dai_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %cpu_dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i, align 4
  %sub = add i32 %9, -8000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  %sub3 = sub i32 8000, %9
  %cond = select i1 %cmp, i32 %sub3, i32 %sub
  %sub6 = add i32 %9, -16000
  %10 = tail call i32 @llvm.abs.i32(i32 %sub6, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %cond)
  %cmp14 = icmp slt i32 %10, %cond
  %best.1 = zext i1 %cmp14 to i32
  %11 = tail call i32 @llvm.smin.i32(i32 %10, i32 %cond)
  %sub6.1 = add i32 %9, -32000
  %12 = tail call i32 @llvm.abs.i32(i32 %sub6.1, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %11)
  %cmp14.1 = icmp slt i32 %12, %11
  %best.1.1 = select i1 %cmp14.1, i32 2, i32 %best.1
  %13 = tail call i32 @llvm.smin.i32(i32 %12, i32 %11)
  %sub6.2 = add i32 %9, -48000
  %14 = tail call i32 @llvm.abs.i32(i32 %sub6.2, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %13)
  %cmp14.2 = icmp slt i32 %14, %13
  %best.1.2 = select i1 %cmp14.2, i32 3, i32 %best.1.1
  %15 = tail call i32 @llvm.smin.i32(i32 %14, i32 %13)
  %sub6.3 = add i32 %9, -96000
  %16 = tail call i32 @llvm.abs.i32(i32 %sub6.3, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %15)
  %cmp14.3 = icmp slt i32 %16, %15
  %best.1.3 = select i1 %cmp14.3, i32 4, i32 %best.1.2
  %17 = tail call i32 @llvm.smin.i32(i32 %16, i32 %15)
  %sub6.4 = add i32 %9, -22050
  %18 = tail call i32 @llvm.abs.i32(i32 %sub6.4, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %17)
  %cmp14.4 = icmp slt i32 %18, %17
  %best.1.4 = select i1 %cmp14.4, i32 5, i32 %best.1.3
  %19 = tail call i32 @llvm.smin.i32(i32 %18, i32 %17)
  %sub6.5 = add i32 %9, -44100
  %20 = tail call i32 @llvm.abs.i32(i32 %sub6.5, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %19)
  %cmp14.5 = icmp slt i32 %20, %19
  %best.1.5 = select i1 %cmp14.5, i32 6, i32 %best.1.4
  %21 = tail call i32 @llvm.smin.i32(i32 %20, i32 %19)
  %sub6.6 = add i32 %9, -88200
  %22 = tail call i32 @llvm.abs.i32(i32 %sub6.6, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %21)
  %cmp14.6 = icmp slt i32 %22, %21
  %best.1.6 = select i1 %cmp14.6, i32 7, i32 %best.1.5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_classd_cpu_dai_hw_params.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmel_classd_cpu_dai_hw_params, %if.then19)) #8
          to label %do.end [label %if.then19], !srcloc !194

if.then19:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %7, i32 0, i32 3
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  %arrayidx20 = getelementptr [8 x %struct.anon.95], ptr @sample_rates, i32 0, i32 %best.1.6
  %25 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx20, align 4
  %gclk_rate = getelementptr [8 x %struct.anon.95], ptr @sample_rates, i32 0, i32 %best.1.6, i32 3
  %27 = ptrtoint ptr %gclk_rate to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %gclk_rate, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmel_classd_cpu_dai_hw_params.__UNIQUE_ID_ddebug240, ptr noundef %24, ptr noundef nonnull @.str.74, i32 noundef %26, i32 noundef %28) #8
  br label %do.end

do.end:                                           ; preds = %if.then19, %entry
  %gclk = getelementptr inbounds %struct.atmel_classd, ptr %5, i32 0, i32 3
  %29 = ptrtoint ptr %gclk to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %gclk, align 4
  tail call void @clk_disable(ptr noundef %30) #8
  tail call void @clk_unprepare(ptr noundef %30) #8
  %31 = ptrtoint ptr %gclk to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %gclk, align 4
  %gclk_rate26 = getelementptr [8 x %struct.anon.95], ptr @sample_rates, i32 0, i32 %best.1.6, i32 3
  %33 = ptrtoint ptr %gclk_rate26 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %gclk_rate26, align 4
  %call27 = tail call i32 @clk_set_rate(ptr noundef %32, i32 noundef %34) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end30:                                         ; preds = %do.end
  %dsp_clk = getelementptr [8 x %struct.anon.95], ptr @sample_rates, i32 0, i32 %best.1.6, i32 2
  %35 = ptrtoint ptr %dsp_clk to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dsp_clk, align 4
  %shl = shl i32 %36, 16
  %sample_rate = getelementptr [8 x %struct.anon.95], ptr @sample_rates, i32 0, i32 %best.1.6, i32 1
  %37 = ptrtoint ptr %sample_rate to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %sample_rate, align 4
  %shl33 = shl i32 %38, 20
  %or = or i32 %shl33, %shl
  %call34 = tail call i32 @snd_soc_component_update_bits(ptr noundef %7, i32 noundef 8, i32 noundef 7405568, i32 noundef %or) #8
  %39 = ptrtoint ptr %gclk to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %gclk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %40) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end30
  %call1.i = tail call i32 @clk_enable(ptr noundef %40) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.then3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %40) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then3.i, %if.end.i.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call27, %do.end.cleanup_crit_edge ], [ %call.i, %if.end30.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ 0, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_classd_cpu_dai_prepare(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %cpu_dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  %call = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 4, i32 noundef 17, i32 noundef 0) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_classd_cpu_dai_trigger(ptr nocapture noundef readnone %substream, i32 noundef %cmd, ptr nocapture noundef readonly %cpu_dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %cmd)
  %2 = icmp ult i32 %cmd, 7
  br i1 %2, label %switch.hole_check, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %cmd to i8
  %switch.shifted = lshr i8 123, %switch.maskindex
  %3 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %switch.lobit.not = icmp eq i8 %3, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.atmel_classd_cpu_dai_trigger, i32 0, i32 %cmd
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load i32, ptr %switch.gep, align 4
  %call = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 4, i32 noundef 17, i32 noundef %switch.load) #8
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
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_classd_platform_configure_dma(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef writeonly %slave_config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.i.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %entry.if.then.i.i.i_crit_edge

entry.if.then.i.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %entry.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %entry.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %7, %entry.if.then.i.i.i_crit_edge ], [ %10, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %8 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #8, !range !195
  %add.i.i.i = or i32 %8, %i.09.lcssa.i.i.i
  br label %params_physical_width.exit

for.inc.i.i.i:                                    ; preds = %entry
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.1.i.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.1.i.i.i, label %for.inc.i.i.i.params_physical_width.exit_crit_edge, label %for.inc.i.i.i.if.then.i.i.i_crit_edge

for.inc.i.i.i.if.then.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i

for.inc.i.i.i.params_physical_width.exit_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %params_physical_width.exit

params_physical_width.exit:                       ; preds = %for.inc.i.i.i.params_physical_width.exit_crit_edge, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ 0, %for.inc.i.i.i.params_physical_width.exit_crit_edge ]
  %call1.i = tail call i32 @snd_pcm_format_physical_width(i32 noundef %retval.0.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call1.i)
  %cmp.not = icmp eq i32 %call1.i, 16
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %params_physical_width.exit
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.atmel_classd, ptr %5, i32 0, i32 4
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.75) #11
  br label %cleanup

if.end:                                           ; preds = %params_physical_width.exit
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %cmp3 = icmp eq i32 %14, 1
  %spec.select = select i1 %cmp3, i32 2, i32 4
  %15 = getelementptr inbounds %struct.dma_slave_config, ptr %slave_config, i32 0, i32 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %spec.select, ptr %15, align 4
  %17 = ptrtoint ptr %slave_config to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %slave_config, align 4
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %5, align 4
  %add = add i32 %19, 16
  %dst_addr = getelementptr inbounds %struct.dma_slave_config, ptr %slave_config, i32 0, i32 2
  %20 = ptrtoint ptr %dst_addr to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add, ptr %dst_addr, align 4
  %dst_maxburst = getelementptr inbounds %struct.dma_slave_config, ptr %slave_config, i32 0, i32 6
  %21 = ptrtoint ptr %dst_maxburst to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %dst_maxburst, align 4
  %src_maxburst = getelementptr inbounds %struct.dma_slave_config, ptr %slave_config, i32 0, i32 5
  %22 = ptrtoint ptr %src_maxburst to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %src_maxburst, align 4
  %device_fc = getelementptr inbounds %struct.dma_slave_config, ptr %slave_config, i32 0, i32 9
  %23 = ptrtoint ptr %device_fc to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %device_fc, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_physical_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 98)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 98)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !137, !138, !139, !140, !142, !143, !144, !145, !146, !147, !149, !151, !153, !155, !157, !159, !161, !162, !163, !164, !166, !168, !170, !171, !172, !173, !175, !177, !179, !181}
!llvm.module.flags = !{!183, !184, !185, !186, !187, !188, !189, !190}
!llvm.ident = !{!191}

!0 = !{ptr @__initcall__kmod_snd_atmel_soc_classd__241_633_atmel_classd_driver_init6, !1, !"__initcall__kmod_snd_atmel_soc_classd__241_633_atmel_classd_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/atmel/atmel-classd.c", i32 633, i32 1}
!2 = !{ptr @__exitcall_atmel_classd_driver_exit, !1, !"__exitcall_atmel_classd_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description242, !4, !"__UNIQUE_ID_description242", i1 false, i1 false}
!4 = !{!"../sound/soc/atmel/atmel-classd.c", i32 635, i32 1}
!5 = !{ptr @__UNIQUE_ID_author243, !6, !"__UNIQUE_ID_author243", i1 false, i1 false}
!6 = !{!"../sound/soc/atmel/atmel-classd.c", i32 636, i32 1}
!7 = !{ptr @__UNIQUE_ID_file244, !8, !"__UNIQUE_ID_file244", i1 false, i1 false}
!8 = !{!"../sound/soc/atmel/atmel-classd.c", i32 637, i32 1}
!9 = !{ptr @__UNIQUE_ID_license245, !8, !"__UNIQUE_ID_license245", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/atmel/atmel-classd.c", i32 626, i32 12}
!12 = !{ptr @atmel_classd_driver, !13, !"atmel_classd_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/atmel/atmel-classd.c", i32 624, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/atmel/atmel-classd.c", i32 547, i32 31}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/atmel/atmel-classd.c", i32 550, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @atmel_classd_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @atmel_classd_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/atmel/atmel-classd.c", i32 554, i32 31}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/atmel/atmel-classd.c", i32 557, i32 3}
!28 = !{ptr @atmel_classd_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @atmel_classd_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @atmel_classd_probe._key, !31, !"_key", i1 false, i1 false}
!31 = !{!"../sound/soc/atmel/atmel-classd.c", i32 568, i32 15}
!32 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/soc/atmel/atmel-classd.c", i32 572, i32 3}
!35 = !{ptr @atmel_classd_probe._entry.12, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @atmel_classd_probe._entry_ptr.14, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/soc/atmel/atmel-classd.c", i32 580, i32 3}
!39 = !{ptr @atmel_classd_probe._entry.15, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @atmel_classd_probe._entry_ptr.17, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/soc/atmel/atmel-classd.c", i32 588, i32 3}
!43 = !{ptr @atmel_classd_probe._entry.18, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @atmel_classd_probe._entry_ptr.20, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/soc/atmel/atmel-classd.c", i32 603, i32 3}
!47 = !{ptr @atmel_classd_probe._entry.21, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @atmel_classd_probe._entry_ptr.23, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/soc/atmel/atmel-classd.c", i32 609, i32 3}
!51 = !{ptr @atmel_classd_probe._entry.24, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @atmel_classd_probe._entry_ptr.26, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/soc/atmel/atmel-classd.c", i32 55, i32 3}
!55 = !{ptr @.str.28, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @atmel_classd_dt_init._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @atmel_classd_dt_init._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/soc/atmel/atmel-classd.c", i32 63, i32 36}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/atmel/atmel-classd.c", i32 64, i32 40}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/soc/atmel/atmel-classd.c", i32 70, i32 4}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/atmel/atmel-classd.c", i32 76, i32 36}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/soc/atmel/atmel-classd.c", i32 78, i32 22}
!68 = !{ptr @atmel_classd_regmap_config, !69, !"atmel_classd_regmap_config", i1 false, i1 false}
!69 = !{!"../sound/soc/atmel/atmel-classd.c", i32 509, i32 35}
!70 = !{ptr @atmel_classd_reg_defaults, !71, !"atmel_classd_reg_defaults", i1 false, i1 false}
!71 = !{!"../sound/soc/atmel/atmel-classd.c", i32 504, i32 33}
!72 = !{ptr @atmel_classd_cpu_dai_component, !73, !"atmel_classd_cpu_dai_component", i1 false, i1 false}
!73 = !{!"../sound/soc/atmel/atmel-classd.c", i32 453, i32 46}
!74 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/soc/atmel/atmel-classd.c", i32 210, i32 1}
!76 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/atmel/atmel-classd.c", i32 214, i32 1}
!78 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/atmel/atmel-classd.c", i32 217, i32 1}
!80 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/soc/atmel/atmel-classd.c", i32 219, i32 1}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/atmel/atmel-classd.c", i32 221, i32 1}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/soc/atmel/atmel-classd.c", i32 223, i32 1}
!86 = !{ptr @atmel_classd_snd_controls, !87, !"atmel_classd_snd_controls", i1 false, i1 false}
!87 = !{!"../sound/soc/atmel/atmel-classd.c", i32 209, i32 38}
!88 = !{ptr @classd_digital_tlv, !89, !"classd_digital_tlv", i1 false, i1 false}
!89 = !{!"../sound/soc/atmel/atmel-classd.c", i32 207, i32 14}
!90 = !{ptr @classd_mono_mode_enum, !91, !"classd_mono_mode_enum", i1 false, i1 false}
!91 = !{!"../sound/soc/atmel/atmel-classd.c", i32 179, i32 8}
!92 = !{ptr @.str.43, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/soc/atmel/atmel-classd.c", i32 176, i32 2}
!94 = !{ptr @.str.44, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/soc/atmel/atmel-classd.c", i32 176, i32 9}
!96 = !{ptr @.str.45, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/soc/atmel/atmel-classd.c", i32 176, i32 16}
!98 = !{ptr @.str.46, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/soc/atmel/atmel-classd.c", i32 176, i32 24}
!100 = !{ptr @mono_mode_text, !101, !"mono_mode_text", i1 false, i1 false}
!101 = !{!"../sound/soc/atmel/atmel-classd.c", i32 175, i32 27}
!102 = !{ptr @classd_eqcfg_enum, !103, !"classd_eqcfg_enum", i1 false, i1 false}
!103 = !{!"../sound/soc/atmel/atmel-classd.c", i32 203, i32 8}
!104 = !{ptr @.str.47, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/soc/atmel/atmel-classd.c", i32 184, i32 2}
!106 = !{ptr @.str.48, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/soc/atmel/atmel-classd.c", i32 184, i32 17}
!108 = !{ptr @.str.49, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/soc/atmel/atmel-classd.c", i32 185, i32 2}
!110 = !{ptr @.str.50, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/soc/atmel/atmel-classd.c", i32 185, i32 16}
!112 = !{ptr @.str.51, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/soc/atmel/atmel-classd.c", i32 186, i32 2}
!114 = !{ptr @.str.52, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/soc/atmel/atmel-classd.c", i32 186, i32 15}
!116 = !{ptr @.str.53, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/soc/atmel/atmel-classd.c", i32 187, i32 2}
!118 = !{ptr @.str.54, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/soc/atmel/atmel-classd.c", i32 188, i32 2}
!120 = !{ptr @.str.55, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/soc/atmel/atmel-classd.c", i32 188, i32 14}
!122 = !{ptr @.str.56, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/soc/atmel/atmel-classd.c", i32 189, i32 2}
!124 = !{ptr @.str.57, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/soc/atmel/atmel-classd.c", i32 189, i32 16}
!126 = !{ptr @.str.58, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/soc/atmel/atmel-classd.c", i32 190, i32 2}
!128 = !{ptr @.str.59, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/soc/atmel/atmel-classd.c", i32 190, i32 16}
!130 = !{ptr @eqcfg_text, !131, !"eqcfg_text", i1 false, i1 false}
!131 = !{!"../sound/soc/atmel/atmel-classd.c", i32 183, i32 27}
!132 = !{ptr @eqcfg_value, !133, !"eqcfg_value", i1 false, i1 false}
!133 = !{!"../sound/soc/atmel/atmel-classd.c", i32 193, i32 27}
!134 = !{ptr @.str.60, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../sound/soc/atmel/atmel-classd.c", i32 266, i32 4}
!136 = !{ptr @.str.61, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @.str.62, !135, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @atmel_classd_component_probe._entry, !135, !"_entry", i1 false, i1 false}
!139 = !{ptr @atmel_classd_component_probe._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.64, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../sound/soc/atmel/atmel-classd.c", i32 275, i32 2}
!142 = !{ptr @.str.65, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @atmel_classd_component_probe._entry.63, !141, !"_entry", i1 false, i1 false}
!144 = !{ptr @atmel_classd_component_probe._entry_ptr.66, !141, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.67, !141, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @.str.68, !141, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @.str.69, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../sound/soc/atmel/atmel-classd.c", i32 227, i32 2}
!149 = !{ptr @.str.70, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../sound/soc/atmel/atmel-classd.c", i32 227, i32 18}
!151 = !{ptr @pwm_type, !152, !"pwm_type", i1 false, i1 false}
!152 = !{!"../sound/soc/atmel/atmel-classd.c", i32 226, i32 27}
!153 = !{ptr @.str.71, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../sound/soc/atmel/atmel-classd.c", i32 444, i32 18}
!155 = !{ptr @atmel_classd_cpu_dai, !156, !"atmel_classd_cpu_dai", i1 false, i1 false}
!156 = !{!"../sound/soc/atmel/atmel-classd.c", i32 442, i32 34}
!157 = !{ptr @atmel_classd_cpu_dai_ops, !158, !"atmel_classd_cpu_dai_ops", i1 false, i1 false}
!158 = !{!"../sound/soc/atmel/atmel-classd.c", i32 432, i32 37}
!159 = !{ptr @.str.72, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../sound/soc/atmel/atmel-classd.c", i32 361, i32 2}
!161 = !{ptr @.str.73, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @.str.74, !160, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @atmel_classd_cpu_dai_hw_params.__UNIQUE_ID_ddebug240, !160, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!164 = !{ptr @sample_rates, !165, !"sample_rates", i1 false, i1 false}
!165 = !{!"../sound/soc/atmel/atmel-classd.c", i32 317, i32 9}
!166 = !{ptr @atmel_classd_dmaengine_pcm_config, !167, !"atmel_classd_dmaengine_pcm_config", i1 false, i1 false}
!167 = !{!"../sound/soc/atmel/atmel-classd.c", i32 168, i32 1}
!168 = !{ptr @.str.75, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../sound/soc/atmel/atmel-classd.c", i32 148, i32 3}
!170 = !{ptr @.str.76, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @atmel_classd_platform_configure_dma._entry, !169, !"_entry", i1 false, i1 false}
!172 = !{ptr @atmel_classd_platform_configure_dma._entry_ptr, !169, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @atmel_classd_hw, !174, !"atmel_classd_hw", i1 false, i1 false}
!174 = !{!"../sound/soc/atmel/atmel-classd.c", i32 96, i32 38}
!175 = !{ptr @.str.77, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../sound/soc/atmel/atmel-classd.c", i32 489, i32 27}
!177 = !{ptr @.str.78, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../sound/soc/atmel/atmel-classd.c", i32 490, i32 31}
!179 = !{ptr @.str.79, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../sound/soc/atmel/atmel-classd.c", i32 492, i32 28}
!181 = !{ptr @atmel_classd_of_match, !182, !"atmel_classd_of_match", i1 false, i1 false}
!182 = !{!"../sound/soc/atmel/atmel-classd.c", i32 38, i32 34}
!183 = !{i32 1, !"wchar_size", i32 2}
!184 = !{i32 1, !"min_enum_size", i32 4}
!185 = !{i32 8, !"branch-target-enforcement", i32 0}
!186 = !{i32 8, !"sign-return-address", i32 0}
!187 = !{i32 8, !"sign-return-address-all", i32 0}
!188 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!189 = !{i32 7, !"uwtable", i32 1}
!190 = !{i32 7, !"frame-pointer", i32 2}
!191 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!192 = !{!"auto-init"}
!193 = !{i8 0, i8 2}
!194 = !{i64 2148872950, i64 2148872955, i64 2148872968, i64 2148873012, i64 2148873046, i64 2148873067}
!195 = !{i32 0, i32 33}
