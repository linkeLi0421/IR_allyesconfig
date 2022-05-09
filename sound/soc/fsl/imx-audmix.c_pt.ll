; ModuleID = '/llk/IR_all_yes/sound/soc/fsl/imx-audmix.c_pt.bc'
source_filename = "../sound/soc/fsl/imx-audmix.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.imx_audmix = type { ptr, %struct.snd_soc_card, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, ptr }
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }
%struct.snd_soc_dai_link = type { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i24, %struct.snd_soc_dobj }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.94, ptr }
%union.anon.94 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_dai_link_component = type { ptr, ptr, ptr }
%struct.snd_soc_codec_conf = type { %struct.snd_soc_dai_link_component, ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
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

@__initcall__kmod_snd_soc_imx_audmix__241_349_imx_audmix_driver_init6 = internal global ptr @imx_audmix_driver_init, section ".initcall6.init", align 4
@imx_audmix_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @imx_audmix_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snd_soc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_imx_audmix_driver_exit = internal global ptr @imx_audmix_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description242 = internal constant [62 x i8] c"snd_soc_imx_audmix.description=NXP AUDMIX ASoC machine driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author243 = internal constant [62 x i8] c"snd_soc_imx_audmix.author=Viorel Suman <viorel.suman@nxp.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias244 = internal constant [45 x i8] c"snd_soc_imx_audmix.alias=platform:imx-audmix\00", section ".modinfo", align 1
@__UNIQUE_ID_file245 = internal constant [57 x i8] c"snd_soc_imx_audmix.file=sound/soc/fsl/snd-soc-imx-audmix\00", section ".modinfo", align 1
@__UNIQUE_ID_license246 = internal constant [34 x i8] c"snd_soc_imx_audmix.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"imx-audmix\00", [21 x i8] zeroinitializer }, align 32
@snd_soc_pm_ops = external dso_local constant %struct.dev_pm_ops, align 4
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"HiFi-AUDMIX-FE-\00", [16 x i8] zeroinitializer }, align 32
@imx_audmix_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 159, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Missing parent device.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"imx_audmix_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sound/soc/fsl/imx-audmix.c\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@imx_audmix_probe._entry_ptr = internal global ptr @imx_audmix_probe._entry, section ".printk_index", align 4
@imx_audmix_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 164, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Missing DT node for parent device.\0A\00", [60 x i8] zeroinitializer }, align 32
@imx_audmix_probe._entry_ptr.9 = internal global ptr @imx_audmix_probe._entry.7, section ".printk_index", align 4
@imx_audmix_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 171, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Missing AUDMIX platform device for %s\0A\00", [57 x i8] zeroinitializer }, align 32
@imx_audmix_probe._entry_ptr.12 = internal global ptr @imx_audmix_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dais\00", [27 x i8] zeroinitializer }, align 32
@imx_audmix_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 179, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Need 2 dais to be provided for %s\0A\00", [61 x i8] zeroinitializer }, align 32
@imx_audmix_probe._entry_ptr.16 = internal global ptr @imx_audmix_probe._entry.14, section ".printk_index", align 4
@imx_audmix_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 218, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"of_parse_phandle_with_args failed\0A\00", [61 x i8] zeroinitializer }, align 32
@imx_audmix_probe._entry_ptr.19 = internal global ptr @imx_audmix_probe._entry.17, section ".printk_index", align 4
@imx_audmix_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.3, ptr @.str.4, i32 224, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to find SAI platform device\0A\00", [60 x i8] zeroinitializer }, align 32
@imx_audmix_probe._entry_ptr.22 = internal global ptr @imx_audmix_probe._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%s%s\00", [27 x i8] zeroinitializer }, align 32
@imx_audmix_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.3, ptr @.str.4, i32 232, ptr @.str.26, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DAI FE name:%s\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@imx_audmix_probe._entry_ptr.27 = internal global ptr @imx_audmix_probe._entry.24, section ".printk_index", align 4
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s %s\00", [26 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CPU-Capture\00", [20 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"HiFi-AUDMIX-FE\00", [17 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"snd-soc-dummy-dai\00", [46 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"snd-soc-dummy\00", [18 x i8] zeroinitializer }, align 32
@imx_audmix_fe_ops = internal constant { %struct.snd_soc_ops, [40 x i8] } { %struct.snd_soc_ops { ptr @imx_audmix_fe_startup, ptr null, ptr @imx_audmix_fe_hw_params, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"audmix-%d\00", [22 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"AUDMIX-Playback-%d\00", [45 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"AUDMIX-Capture-%d\00", [46 x i8] zeroinitializer }, align 32
@imx_audmix_be_ops = internal constant { %struct.snd_soc_ops, [40 x i8] } { %struct.snd_soc_ops { ptr null, ptr null, ptr @imx_audmix_be_hw_params, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"CPU-Playback\00", [19 x i8] zeroinitializer }, align 32
@imx_audmix_probe._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.3, ptr @.str.4, i32 305, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@imx_audmix_probe._entry_ptr.38 = internal global ptr @imx_audmix_probe._entry.37, section ".printk_index", align 4
@.str.39 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mclk1\00", [26 x i8] zeroinitializer }, align 32
@imx_audmix_probe._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.3, ptr @.str.4, i32 313, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to get DAI mclk1: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@imx_audmix_probe._entry_ptr.42 = internal global ptr @imx_audmix_probe._entry.40, section ".printk_index", align 4
@imx_audmix_probe._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.3, ptr @.str.4, i32 335, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"snd_soc_register_card failed\0A\00", [34 x i8] zeroinitializer }, align 32
@imx_audmix_probe._entry_ptr.45 = internal global ptr @imx_audmix_probe._entry.43, section ".printk_index", align 4
@imx_audmix_rate_constraints = internal constant { %struct.snd_pcm_hw_constraint_list, [20 x i8] } { %struct.snd_pcm_hw_constraint_list { ptr @imx_audmix_rates, i32 8, i32 0 }, [20 x i8] zeroinitializer }, align 32
@imx_audmix_fe_startup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.4, i32 61, ptr @.str.48, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"mclk may be not supported %lu\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"imx_audmix_fe_startup\00", [42 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@imx_audmix_fe_startup._entry_ptr = internal global ptr @imx_audmix_fe_startup._entry, section ".printk_index", align 4
@imx_audmix_rates = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 8000, i32 12000, i32 16000, i32 24000, i32 32000, i32 48000, i32 64000, i32 96000], [32 x i8] zeroinitializer }, align 32
@imx_audmix_fe_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.4, i32 90, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to set cpu dai fmt: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"imx_audmix_fe_hw_params\00", [40 x i8] zeroinitializer }, align 32
@imx_audmix_fe_hw_params._entry_ptr = internal global ptr @imx_audmix_fe_hw_params._entry, section ".printk_index", align 4
@imx_audmix_fe_hw_params._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.4, i32 96, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to set cpu sysclk: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@imx_audmix_fe_hw_params._entry_ptr.53 = internal global ptr @imx_audmix_fe_hw_params._entry.51, section ".printk_index", align 4
@imx_audmix_fe_hw_params._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.50, ptr @.str.4, i32 107, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to set cpu dai tdm slot: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@imx_audmix_fe_hw_params._entry_ptr.56 = internal global ptr @imx_audmix_fe_hw_params._entry.54, section ".printk_index", align 4
@imx_audmix_be_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.4, i32 130, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to set AUDMIX DAI fmt: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"imx_audmix_be_hw_params\00", [40 x i8] zeroinitializer }, align 32
@imx_audmix_be_hw_params._entry_ptr = internal global ptr @imx_audmix_be_hw_params._entry, section ".printk_index", align 4
@___asan_gen_.59 = private unnamed_addr constant [18 x i8] c"imx_audmix_driver\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 342, i32 31 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 345, i32 11 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 153, i32 29 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 159, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 164, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 170, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 176, i32 50 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 178, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 218, i32 4 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 224, i32 4 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 229, i32 53 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 232, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 237, i32 44 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 238, i32 23 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 250, i32 30 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 251, i32 35 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 252, i32 31 }
@___asan_gen_.146 = private unnamed_addr constant [18 x i8] c"imx_audmix_fe_ops\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 135, i32 33 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 264, i32 7 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 266, i32 12 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 268, i32 12 }
@___asan_gen_.158 = private unnamed_addr constant [18 x i8] c"imx_audmix_be_ops\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 140, i32 33 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 295, i32 22 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 305, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 310, i32 48 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 313, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 335, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant [28 x i8] c"imx_audmix_rate_constraints\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 40, i32 48 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 61, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant [17 x i8] c"imx_audmix_rates\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 36, i32 18 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 90, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 96, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 107, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.227 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.228 = private constant [30 x i8] c"../sound/soc/fsl/imx-audmix.c\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.228, i32 130, i32 3 }
@llvm.compiler.used = appending global [80 x ptr] [ptr @__UNIQUE_ID_alias244, ptr @__UNIQUE_ID_author243, ptr @__UNIQUE_ID_description242, ptr @__UNIQUE_ID_file245, ptr @__UNIQUE_ID_license246, ptr @__exitcall_imx_audmix_driver_exit, ptr @__initcall__kmod_snd_soc_imx_audmix__241_349_imx_audmix_driver_init6, ptr @imx_audmix_be_hw_params._entry, ptr @imx_audmix_be_hw_params._entry_ptr, ptr @imx_audmix_driver_exit, ptr @imx_audmix_fe_hw_params._entry, ptr @imx_audmix_fe_hw_params._entry.51, ptr @imx_audmix_fe_hw_params._entry.54, ptr @imx_audmix_fe_hw_params._entry_ptr, ptr @imx_audmix_fe_hw_params._entry_ptr.53, ptr @imx_audmix_fe_hw_params._entry_ptr.56, ptr @imx_audmix_fe_startup._entry, ptr @imx_audmix_fe_startup._entry_ptr, ptr @imx_audmix_probe._entry, ptr @imx_audmix_probe._entry.10, ptr @imx_audmix_probe._entry.14, ptr @imx_audmix_probe._entry.17, ptr @imx_audmix_probe._entry.20, ptr @imx_audmix_probe._entry.24, ptr @imx_audmix_probe._entry.37, ptr @imx_audmix_probe._entry.40, ptr @imx_audmix_probe._entry.43, ptr @imx_audmix_probe._entry.7, ptr @imx_audmix_probe._entry_ptr, ptr @imx_audmix_probe._entry_ptr.12, ptr @imx_audmix_probe._entry_ptr.16, ptr @imx_audmix_probe._entry_ptr.19, ptr @imx_audmix_probe._entry_ptr.22, ptr @imx_audmix_probe._entry_ptr.27, ptr @imx_audmix_probe._entry_ptr.38, ptr @imx_audmix_probe._entry_ptr.42, ptr @imx_audmix_probe._entry_ptr.45, ptr @imx_audmix_probe._entry_ptr.9, ptr @imx_audmix_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @imx_audmix_fe_ops, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @imx_audmix_be_ops, ptr @.str.36, ptr @.str.39, ptr @.str.41, ptr @.str.44, ptr @imx_audmix_rate_constraints, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @imx_audmix_rates, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.55, ptr @.str.57, ptr @.str.58], section "llvm.metadata"
@0 = internal global [57 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_audmix_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_audmix_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_audmix_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_audmix_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_audmix_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_audmix_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_audmix_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_audmix_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_audmix_fe_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_audmix_be_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_audmix_probe._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_audmix_probe._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_audmix_probe._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_audmix_rate_constraints to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_audmix_fe_startup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_audmix_rates to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_audmix_fe_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_audmix_fe_hw_params._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_audmix_fe_hw_params._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_audmix_be_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_audmix_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @imx_audmix_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @imx_audmix_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @imx_audmix_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_audmix_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %args = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args) #5
  %2 = call ptr @memset(ptr %args, i32 255, i32 72)
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %parent, align 8
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %do.end, label %if.then

if.then:                                          ; preds = %entry
  %of_node4 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 27
  %5 = ptrtoint ptr %of_node4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node4, align 8
  %tobool6.not = icmp eq ptr %6, null
  br i1 %tobool6.not, label %do.end10, label %if.end12

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #8
  br label %cleanup334

do.end10:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #8
  br label %cleanup334

if.end12:                                         ; preds = %if.then
  %call = tail call ptr @of_find_device_by_node(ptr noundef nonnull %6) #5
  %tobool13.not = icmp eq ptr %call, null
  br i1 %tobool13.not, label %do.end17, label %if.end19

do.end17:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %full_name = getelementptr inbounds %struct.device_node, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %full_name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %full_name, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, ptr noundef %8) #8
  br label %cleanup334

if.end19:                                         ; preds = %if.end12
  %dev20 = getelementptr inbounds %struct.platform_device, ptr %call, i32 0, i32 3
  tail call void @put_device(ptr noundef %dev20) #5
  %call21 = tail call i32 @of_count_phandle_with_args(ptr noundef nonnull %6, ptr noundef nonnull @.str.13, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call21)
  %cmp.not = icmp eq i32 %call21, 2
  br i1 %cmp.not, label %if.end28, label %do.end25

do.end25:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  %full_name27 = getelementptr inbounds %struct.device_node, ptr %6, i32 0, i32 2
  %9 = ptrtoint ptr %full_name27 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %full_name27, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, ptr noundef %10) #8
  br label %cleanup334

if.end28:                                         ; preds = %if.end19
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 688, i32 noundef 3520) #5
  %tobool31.not = icmp eq ptr %call.i, null
  br i1 %tobool31.not, label %if.end28.cleanup334_crit_edge, label %if.end33

if.end28.cleanup334_crit_edge:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup334

if.end33:                                         ; preds = %if.end28
  %num_dai34 = getelementptr inbounds %struct.imx_audmix, ptr %call.i, i32 0, i32 5
  %11 = ptrtoint ptr %num_dai34 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 4, ptr %num_dai34, align 4
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 464, i32 noundef 3520) #5
  %dai = getelementptr inbounds %struct.imx_audmix, ptr %call.i, i32 0, i32 6
  %12 = ptrtoint ptr %dai to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call5.i.i, ptr %dai, align 4
  %tobool39.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool39.not, label %if.end33.cleanup334_crit_edge, label %if.end41

if.end33.cleanup334_crit_edge:                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup334

if.end41:                                         ; preds = %if.end33
  %num_dai_conf = getelementptr inbounds %struct.imx_audmix, ptr %call.i, i32 0, i32 7
  %13 = ptrtoint ptr %num_dai_conf to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %num_dai_conf, align 4
  %call5.i.i563 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 32, i32 noundef 3520) #5
  %dai_conf = getelementptr inbounds %struct.imx_audmix, ptr %call.i, i32 0, i32 8
  %14 = ptrtoint ptr %dai_conf to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call5.i.i563, ptr %dai_conf, align 4
  %tobool46.not = icmp eq ptr %call5.i.i563, null
  br i1 %tobool46.not, label %if.end41.cleanup334_crit_edge, label %if.end48

if.end41.cleanup334_crit_edge:                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup334

if.end48:                                         ; preds = %if.end41
  %num_dapm_routes = getelementptr inbounds %struct.imx_audmix, ptr %call.i, i32 0, i32 9
  %15 = ptrtoint ptr %num_dapm_routes to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 6, ptr %num_dapm_routes, align 4
  %call5.i.i564 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 312, i32 noundef 3520) #5
  %dapm_routes = getelementptr inbounds %struct.imx_audmix, ptr %call.i, i32 0, i32 10
  %16 = ptrtoint ptr %dapm_routes to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call5.i.i564, ptr %dapm_routes, align 4
  %tobool54.not = icmp eq ptr %call5.i.i564, null
  br i1 %tobool54.not, label %if.end48.cleanup334_crit_edge, label %if.end48.for.body_crit_edge

if.end48.for.body_crit_edge:                      ; preds = %if.end48
  br label %for.body

if.end48.cleanup334_crit_edge:                    ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup334

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end48.for.body_crit_edge
  %capture_dai_name.0577 = phi ptr [ %capture_dai_name.1, %for.inc.for.body_crit_edge ], [ inttoptr (i32 -1 to ptr), %if.end48.for.body_crit_edge ]
  %cmp90 = phi i1 [ false, %for.inc.for.body_crit_edge ], [ true, %if.end48.for.body_crit_edge ]
  %i.0576 = phi i32 [ 1, %for.inc.for.body_crit_edge ], [ 0, %if.end48.for.body_crit_edge ]
  %out_cpu_np.0575 = phi ptr [ %out_cpu_np.1, %for.inc.for.body_crit_edge ], [ null, %if.end48.for.body_crit_edge ]
  %call5.i.i565 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 72, i32 noundef 3520) #5
  %tobool60.not = icmp eq ptr %call5.i.i565, null
  br i1 %tobool60.not, label %for.body.cleanup334_crit_edge, label %if.end62

for.body.cleanup334_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup334

if.end62:                                         ; preds = %for.body
  %call.i566 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %6, ptr noundef nonnull @.str.13, ptr noundef null, i32 noundef 0, i32 noundef %i.0576, ptr noundef nonnull %args) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i566)
  %cmp64 = icmp slt i32 %call.i566, 0
  br i1 %cmp64, label %do.end68, label %if.end70

do.end68:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #8
  br label %cleanup334

if.end70:                                         ; preds = %if.end62
  %17 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %args, align 4
  %call72 = call ptr @of_find_device_by_node(ptr noundef %18) #5
  %tobool73.not = icmp eq ptr %call72, null
  br i1 %tobool73.not, label %do.end77, label %if.end79

do.end77:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21) #8
  br label %cleanup334

if.end79:                                         ; preds = %if.end70
  %dev80 = getelementptr inbounds %struct.platform_device, ptr %call72, i32 0, i32 3
  call void @put_device(ptr noundef %dev80) #5
  %19 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %args, align 4
  %full_name83 = getelementptr inbounds %struct.device_node, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %full_name83 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %full_name83, align 4
  %add.ptr = getelementptr i8, ptr %22, i32 1
  %call84 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev, i32 noundef 3264, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.1, ptr noundef %add.ptr) #5
  %23 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %parent, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %24, ptr noundef nonnull @.str.25, ptr noundef %call84) #8
  br i1 %cmp90, label %if.then91, label %if.end79.if.end95_crit_edge

if.end79.if.end95_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end95

if.then91:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %args, align 4
  %call94 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev, i32 noundef 3264, ptr noundef nonnull @.str.28, ptr noundef %call84, ptr noundef nonnull @.str.29) #5
  br label %if.end95

if.end95:                                         ; preds = %if.then91, %if.end79.if.end95_crit_edge
  %bf.shl = phi i32 [ 4194304, %if.then91 ], [ 0, %if.end79.if.end95_crit_edge ]
  %out_cpu_np.1 = phi ptr [ %26, %if.then91 ], [ %out_cpu_np.0575, %if.end79.if.end95_crit_edge ]
  %capture_dai_name.1 = phi ptr [ %call94, %if.then91 ], [ %capture_dai_name.0577, %if.end79.if.end95_crit_edge ]
  %27 = ptrtoint ptr %dai to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dai, align 4
  %cpus = getelementptr %struct.snd_soc_dai_link, ptr %28, i32 %i.0576, i32 2
  %29 = ptrtoint ptr %cpus to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call5.i.i565, ptr %cpus, align 4
  %arrayidx98 = getelementptr %struct.snd_soc_dai_link_component, ptr %call5.i.i565, i32 1
  %30 = load ptr, ptr %dai, align 4
  %codecs = getelementptr %struct.snd_soc_dai_link, ptr %30, i32 %i.0576, i32 4
  %31 = ptrtoint ptr %codecs to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %arrayidx98, ptr %codecs, align 4
  %arrayidx101 = getelementptr %struct.snd_soc_dai_link_component, ptr %call5.i.i565, i32 2
  %32 = load ptr, ptr %dai, align 4
  %platforms = getelementptr %struct.snd_soc_dai_link, ptr %32, i32 %i.0576, i32 6
  %33 = ptrtoint ptr %platforms to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %arrayidx101, ptr %platforms, align 4
  %34 = load ptr, ptr %dai, align 4
  %num_cpus = getelementptr %struct.snd_soc_dai_link, ptr %34, i32 %i.0576, i32 3
  %35 = ptrtoint ptr %num_cpus to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %num_cpus, align 4
  %36 = load ptr, ptr %dai, align 4
  %num_codecs = getelementptr %struct.snd_soc_dai_link, ptr %36, i32 %i.0576, i32 5
  %37 = ptrtoint ptr %num_codecs to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %num_codecs, align 4
  %38 = load ptr, ptr %dai, align 4
  %num_platforms = getelementptr %struct.snd_soc_dai_link, ptr %38, i32 %i.0576, i32 7
  %39 = ptrtoint ptr %num_platforms to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %num_platforms, align 4
  %40 = load ptr, ptr %dai, align 4
  %arrayidx111 = getelementptr %struct.snd_soc_dai_link, ptr %40, i32 %i.0576
  %41 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call84, ptr %arrayidx111, align 4
  %42 = load ptr, ptr %dai, align 4
  %stream_name = getelementptr %struct.snd_soc_dai_link, ptr %42, i32 %i.0576, i32 1
  %43 = ptrtoint ptr %stream_name to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @.str.30, ptr %stream_name, align 4
  %44 = load ptr, ptr %dai, align 4
  %codecs116 = getelementptr %struct.snd_soc_dai_link, ptr %44, i32 %i.0576, i32 4
  %45 = ptrtoint ptr %codecs116 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %codecs116, align 4
  %dai_name117 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %dai_name117 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @.str.31, ptr %dai_name117, align 4
  %48 = load ptr, ptr %dai, align 4
  %codecs120 = getelementptr %struct.snd_soc_dai_link, ptr %48, i32 %i.0576, i32 4
  %49 = ptrtoint ptr %codecs120 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %codecs120, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @.str.32, ptr %50, align 4
  %52 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %args, align 4
  %54 = load ptr, ptr %dai, align 4
  %cpus125 = getelementptr %struct.snd_soc_dai_link, ptr %54, i32 %i.0576, i32 2
  %55 = ptrtoint ptr %cpus125 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cpus125, align 4
  %of_node126 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %of_node126 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %53, ptr %of_node126, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %call72, i32 0, i32 3, i32 3
  %58 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %59, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end95.for.inc_crit_edge

if.end95.for.inc_crit_edge:                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end.i:                                         ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #7
  %60 = ptrtoint ptr %dev80 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev80, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i, %if.end95.for.inc_crit_edge
  %retval.0.i = phi ptr [ %61, %if.end.i ], [ %59, %if.end95.for.inc_crit_edge ]
  %62 = ptrtoint ptr %dai to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dai, align 4
  %cpus131 = getelementptr %struct.snd_soc_dai_link, ptr %63, i32 %i.0576, i32 2
  %64 = ptrtoint ptr %cpus131 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %cpus131, align 4
  %dai_name132 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %dai_name132 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %retval.0.i, ptr %dai_name132, align 4
  %67 = load ptr, ptr %dai, align 4
  %platforms136 = getelementptr %struct.snd_soc_dai_link, ptr %67, i32 %i.0576, i32 6
  %68 = ptrtoint ptr %platforms136 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %platforms136, align 4
  %of_node137 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %of_node137 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %53, ptr %of_node137, align 4
  %71 = load ptr, ptr %dai, align 4
  %dynamic = getelementptr %struct.snd_soc_dai_link, ptr %71, i32 %i.0576, i32 18
  %72 = ptrtoint ptr %dynamic to i32
  call void @__asan_load4_noabort(i32 %72)
  %bf.load = load i32, ptr %dynamic, align 4
  %bf.set = or i32 %bf.load, 8388608
  store i32 %bf.set, ptr %dynamic, align 4
  %73 = load ptr, ptr %dai, align 4
  %dpcm_playback = getelementptr %struct.snd_soc_dai_link, ptr %73, i32 %i.0576, i32 18
  %74 = ptrtoint ptr %dpcm_playback to i32
  call void @__asan_load4_noabort(i32 %74)
  %bf.load142 = load i32, ptr %dpcm_playback, align 4
  %bf.set144 = or i32 %bf.load142, 2097152
  store i32 %bf.set144, ptr %dpcm_playback, align 4
  %75 = load ptr, ptr %dai, align 4
  %dpcm_capture = getelementptr %struct.snd_soc_dai_link, ptr %75, i32 %i.0576, i32 18
  %76 = ptrtoint ptr %dpcm_capture to i32
  call void @__asan_load4_noabort(i32 %76)
  %bf.load148 = load i32, ptr %dpcm_capture, align 4
  %bf.clear149 = and i32 %bf.load148, -4194305
  %bf.set150 = or i32 %bf.clear149, %bf.shl
  store i32 %bf.set150, ptr %dpcm_capture, align 4
  %77 = load ptr, ptr %dai, align 4
  %ignore_pmdown_time = getelementptr %struct.snd_soc_dai_link, ptr %77, i32 %i.0576, i32 18
  %78 = ptrtoint ptr %ignore_pmdown_time to i32
  call void @__asan_load4_noabort(i32 %78)
  %bf.load153 = load i32, ptr %ignore_pmdown_time, align 4
  %bf.set155 = or i32 %bf.load153, 131072
  store i32 %bf.set155, ptr %ignore_pmdown_time, align 4
  %79 = load ptr, ptr %dai, align 4
  %ops = getelementptr %struct.snd_soc_dai_link, ptr %79, i32 %i.0576, i32 16
  %80 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @imx_audmix_fe_ops, ptr %ops, align 4
  %call159 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev, i32 noundef 3264, ptr noundef nonnull @.str.33, i32 noundef %i.0576) #5
  %call161 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev, i32 noundef 3264, ptr noundef nonnull @.str.34, i32 noundef %i.0576) #5
  %call163 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev, i32 noundef 3264, ptr noundef nonnull @.str.35, i32 noundef %i.0576) #5
  %arrayidx164 = getelementptr %struct.snd_soc_dai_link_component, ptr %call5.i.i565, i32 3
  %81 = ptrtoint ptr %dai to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dai, align 4
  %add = or i32 %i.0576, 2
  %cpus167 = getelementptr %struct.snd_soc_dai_link, ptr %82, i32 %add, i32 2
  %83 = ptrtoint ptr %cpus167 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %arrayidx164, ptr %cpus167, align 4
  %arrayidx168 = getelementptr %struct.snd_soc_dai_link_component, ptr %call5.i.i565, i32 4
  %84 = load ptr, ptr %dai, align 4
  %codecs172 = getelementptr %struct.snd_soc_dai_link, ptr %84, i32 %add, i32 4
  %85 = ptrtoint ptr %codecs172 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %arrayidx168, ptr %codecs172, align 4
  %arrayidx173 = getelementptr %struct.snd_soc_dai_link_component, ptr %call5.i.i565, i32 5
  %86 = load ptr, ptr %dai, align 4
  %platforms177 = getelementptr %struct.snd_soc_dai_link, ptr %86, i32 %add, i32 6
  %87 = ptrtoint ptr %platforms177 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %arrayidx173, ptr %platforms177, align 4
  %88 = load ptr, ptr %dai, align 4
  %num_cpus181 = getelementptr %struct.snd_soc_dai_link, ptr %88, i32 %add, i32 3
  %89 = ptrtoint ptr %num_cpus181 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 1, ptr %num_cpus181, align 4
  %90 = load ptr, ptr %dai, align 4
  %num_codecs185 = getelementptr %struct.snd_soc_dai_link, ptr %90, i32 %add, i32 5
  %91 = ptrtoint ptr %num_codecs185 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 1, ptr %num_codecs185, align 4
  %92 = load ptr, ptr %dai, align 4
  %num_platforms189 = getelementptr %struct.snd_soc_dai_link, ptr %92, i32 %add, i32 7
  %93 = ptrtoint ptr %num_platforms189 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 1, ptr %num_platforms189, align 4
  %94 = load ptr, ptr %dai, align 4
  %arrayidx192 = getelementptr %struct.snd_soc_dai_link, ptr %94, i32 %add
  %95 = ptrtoint ptr %arrayidx192 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %call159, ptr %arrayidx192, align 4
  %96 = load ptr, ptr %dai, align 4
  %codecs197 = getelementptr %struct.snd_soc_dai_link, ptr %96, i32 %add, i32 4
  %97 = ptrtoint ptr %codecs197 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %codecs197, align 4
  %dai_name198 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %98, i32 0, i32 2
  %99 = ptrtoint ptr %dai_name198 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr @.str.31, ptr %dai_name198, align 4
  %100 = load ptr, ptr %dai, align 4
  %codecs202 = getelementptr %struct.snd_soc_dai_link, ptr %100, i32 %add, i32 4
  %101 = ptrtoint ptr %codecs202 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %codecs202, align 4
  %103 = ptrtoint ptr %102 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr @.str.32, ptr %102, align 4
  %104 = load ptr, ptr %dai, align 4
  %cpus207 = getelementptr %struct.snd_soc_dai_link, ptr %104, i32 %add, i32 2
  %105 = ptrtoint ptr %cpus207 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %cpus207, align 4
  %of_node208 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %of_node208 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %6, ptr %of_node208, align 4
  %108 = load ptr, ptr %dai, align 4
  %cpus212 = getelementptr %struct.snd_soc_dai_link, ptr %108, i32 %add, i32 2
  %109 = ptrtoint ptr %cpus212 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %cpus212, align 4
  %dai_name213 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %110, i32 0, i32 2
  %111 = ptrtoint ptr %dai_name213 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %call159, ptr %dai_name213, align 4
  %112 = load ptr, ptr %dai, align 4
  %platforms217 = getelementptr %struct.snd_soc_dai_link, ptr %112, i32 %add, i32 6
  %113 = ptrtoint ptr %platforms217 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %platforms217, align 4
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr @.str.32, ptr %114, align 4
  %116 = load ptr, ptr %dai, align 4
  %no_pcm = getelementptr %struct.snd_soc_dai_link, ptr %116, i32 %add, i32 18
  %117 = ptrtoint ptr %no_pcm to i32
  call void @__asan_load4_noabort(i32 %117)
  %bf.load222 = load i32, ptr %no_pcm, align 4
  %bf.set224 = or i32 %bf.load222, 16777216
  store i32 %bf.set224, ptr %no_pcm, align 4
  %118 = load ptr, ptr %dai, align 4
  %dpcm_playback228 = getelementptr %struct.snd_soc_dai_link, ptr %118, i32 %add, i32 18
  %119 = ptrtoint ptr %dpcm_playback228 to i32
  call void @__asan_load4_noabort(i32 %119)
  %bf.load229 = load i32, ptr %dpcm_playback228, align 4
  %bf.set231 = or i32 %bf.load229, 2097152
  store i32 %bf.set231, ptr %dpcm_playback228, align 4
  %120 = load ptr, ptr %dai, align 4
  %dpcm_capture235 = getelementptr %struct.snd_soc_dai_link, ptr %120, i32 %add, i32 18
  %121 = ptrtoint ptr %dpcm_capture235 to i32
  call void @__asan_load4_noabort(i32 %121)
  %bf.load236 = load i32, ptr %dpcm_capture235, align 4
  %bf.set238 = or i32 %bf.load236, 4194304
  store i32 %bf.set238, ptr %dpcm_capture235, align 4
  %122 = load ptr, ptr %dai, align 4
  %ignore_pmdown_time242 = getelementptr %struct.snd_soc_dai_link, ptr %122, i32 %add, i32 18
  %123 = ptrtoint ptr %ignore_pmdown_time242 to i32
  call void @__asan_load4_noabort(i32 %123)
  %bf.load243 = load i32, ptr %ignore_pmdown_time242, align 4
  %bf.set245 = or i32 %bf.load243, 131072
  store i32 %bf.set245, ptr %ignore_pmdown_time242, align 4
  %124 = load ptr, ptr %dai, align 4
  %ops249 = getelementptr %struct.snd_soc_dai_link, ptr %124, i32 %add, i32 16
  %125 = ptrtoint ptr %ops249 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr @imx_audmix_be_ops, ptr %ops249, align 4
  %126 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %args, align 4
  %128 = ptrtoint ptr %dai_conf to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %dai_conf, align 4
  %of_node254 = getelementptr %struct.snd_soc_codec_conf, ptr %129, i32 %i.0576, i32 0, i32 1
  %130 = ptrtoint ptr %of_node254 to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %127, ptr %of_node254, align 4
  %131 = load ptr, ptr %dai_conf, align 4
  %name_prefix = getelementptr %struct.snd_soc_codec_conf, ptr %131, i32 %i.0576, i32 1
  %132 = ptrtoint ptr %name_prefix to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %call84, ptr %name_prefix, align 4
  %call258 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev, i32 noundef 3264, ptr noundef nonnull @.str.28, ptr noundef %call84, ptr noundef nonnull @.str.36) #5
  %133 = ptrtoint ptr %dapm_routes to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %dapm_routes, align 4
  %source = getelementptr %struct.snd_soc_dapm_route, ptr %134, i32 %i.0576, i32 2
  %135 = ptrtoint ptr %source to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %call258, ptr %source, align 4
  %136 = load ptr, ptr %dapm_routes, align 4
  %arrayidx262 = getelementptr %struct.snd_soc_dapm_route, ptr %136, i32 %i.0576
  %137 = ptrtoint ptr %arrayidx262 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %call161, ptr %arrayidx262, align 4
  %138 = load ptr, ptr %dapm_routes, align 4
  %source266 = getelementptr %struct.snd_soc_dapm_route, ptr %138, i32 %add, i32 2
  %139 = ptrtoint ptr %source266 to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %call161, ptr %source266, align 4
  %140 = load ptr, ptr %dapm_routes, align 4
  %arrayidx269 = getelementptr %struct.snd_soc_dapm_route, ptr %140, i32 %add
  %141 = ptrtoint ptr %arrayidx269 to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %call163, ptr %arrayidx269, align 4
  %142 = load ptr, ptr %dapm_routes, align 4
  %add273 = or i32 %i.0576, 4
  %source275 = getelementptr %struct.snd_soc_dapm_route, ptr %142, i32 %add273, i32 2
  %143 = ptrtoint ptr %source275 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %call163, ptr %source275, align 4
  %144 = load ptr, ptr %dapm_routes, align 4
  %arrayidx279 = getelementptr %struct.snd_soc_dapm_route, ptr %144, i32 %add273
  %145 = ptrtoint ptr %arrayidx279 to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr %capture_dai_name.1, ptr %arrayidx279, align 4
  br i1 %cmp90, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc
  %call281 = call ptr @of_find_device_by_node(ptr noundef %out_cpu_np.1) #5
  %tobool282.not = icmp eq ptr %call281, null
  br i1 %tobool282.not, label %do.end286, label %if.end288

do.end286:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21) #8
  br label %cleanup334

if.end288:                                        ; preds = %for.end
  %dev289 = getelementptr inbounds %struct.platform_device, ptr %call281, i32 0, i32 3
  call void @put_device(ptr noundef %dev289) #5
  %call291 = call ptr @devm_clk_get(ptr noundef %dev289, ptr noundef nonnull @.str.39) #5
  %cpu_mclk = getelementptr inbounds %struct.imx_audmix, ptr %call.i, i32 0, i32 4
  %146 = ptrtoint ptr %cpu_mclk to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %call291, ptr %cpu_mclk, align 4
  %cmp.i = icmp ugt ptr %call291, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then294, label %if.end301

if.then294:                                       ; preds = %if.end288
  call void @__sanitizer_cov_trace_pc() #7
  %147 = ptrtoint ptr %call291 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev289, ptr noundef nonnull @.str.41, i32 noundef %147) #8
  br label %cleanup334

if.end301:                                        ; preds = %if.end288
  %audmix_pdev302 = getelementptr inbounds %struct.imx_audmix, ptr %call.i, i32 0, i32 2
  %148 = ptrtoint ptr %audmix_pdev302 to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %call, ptr %audmix_pdev302, align 4
  %out_pdev = getelementptr inbounds %struct.imx_audmix, ptr %call.i, i32 0, i32 3
  %149 = ptrtoint ptr %out_pdev to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %call281, ptr %out_pdev, align 4
  %150 = ptrtoint ptr %dai to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %dai, align 4
  %card = getelementptr inbounds %struct.imx_audmix, ptr %call.i, i32 0, i32 1
  %dai_link = getelementptr inbounds %struct.imx_audmix, ptr %call.i, i32 0, i32 1, i32 24
  %152 = ptrtoint ptr %dai_link to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %151, ptr %dai_link, align 4
  %153 = ptrtoint ptr %num_dai34 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %num_dai34, align 4
  %num_links = getelementptr inbounds %struct.imx_audmix, ptr %call.i, i32 0, i32 1, i32 25
  %155 = ptrtoint ptr %num_links to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %154, ptr %num_links, align 4
  %156 = ptrtoint ptr %dai_conf to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %dai_conf, align 4
  %codec_conf = getelementptr inbounds %struct.imx_audmix, ptr %call.i, i32 0, i32 1, i32 28
  %158 = ptrtoint ptr %codec_conf to i32
  call void @__asan_store4_noabort(i32 %158)
  store ptr %157, ptr %codec_conf, align 4
  %159 = ptrtoint ptr %num_dai_conf to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %num_dai_conf, align 4
  %num_configs = getelementptr inbounds %struct.imx_audmix, ptr %call.i, i32 0, i32 1, i32 29
  %161 = ptrtoint ptr %num_configs to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %160, ptr %num_configs, align 4
  %162 = ptrtoint ptr %dapm_routes to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %dapm_routes, align 4
  %dapm_routes312 = getelementptr inbounds %struct.imx_audmix, ptr %call.i, i32 0, i32 1, i32 37
  %164 = ptrtoint ptr %dapm_routes312 to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr %163, ptr %dapm_routes312, align 4
  %165 = ptrtoint ptr %num_dapm_routes to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %num_dapm_routes, align 4
  %num_dapm_routes315 = getelementptr inbounds %struct.imx_audmix, ptr %call.i, i32 0, i32 1, i32 38
  %167 = ptrtoint ptr %num_dapm_routes315 to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %166, ptr %num_dapm_routes315, align 4
  %dev318 = getelementptr inbounds %struct.imx_audmix, ptr %call.i, i32 0, i32 1, i32 5
  %168 = ptrtoint ptr %dev318 to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %dev, ptr %dev318, align 4
  %owner = getelementptr inbounds %struct.imx_audmix, ptr %call.i, i32 0, i32 1, i32 7
  %169 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr null, ptr %owner, align 4
  %170 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr @.str, ptr %card, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %171 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr %card, ptr %driver_data.i.i, align 4
  %drvdata.i = getelementptr inbounds %struct.imx_audmix, ptr %call.i, i32 0, i32 1, i32 57
  %172 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %call.i, ptr %drvdata.i, align 4
  %call326 = call i32 @devm_snd_soc_register_card(ptr noundef %dev, ptr noundef %card) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call326)
  %tobool327.not = icmp eq i32 %call326, 0
  br i1 %tobool327.not, label %if.end301.cleanup334_crit_edge, label %do.end331

if.end301.cleanup334_crit_edge:                   ; preds = %if.end301
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup334

do.end331:                                        ; preds = %if.end301
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.44) #8
  br label %cleanup334

cleanup334:                                       ; preds = %do.end331, %if.end301.cleanup334_crit_edge, %if.then294, %do.end286, %do.end77, %do.end68, %for.body.cleanup334_crit_edge, %if.end48.cleanup334_crit_edge, %if.end41.cleanup334_crit_edge, %if.end33.cleanup334_crit_edge, %if.end28.cleanup334_crit_edge, %do.end25, %do.end17, %do.end10, %do.end
  %retval.2 = phi i32 [ -22, %do.end25 ], [ -22, %if.then294 ], [ %call326, %do.end331 ], [ -22, %do.end286 ], [ -22, %do.end17 ], [ -22, %do.end10 ], [ -22, %do.end ], [ -12, %if.end28.cleanup334_crit_edge ], [ -12, %if.end33.cleanup334_crit_edge ], [ -12, %if.end41.cleanup334_crit_edge ], [ -12, %if.end48.cleanup334_crit_edge ], [ 0, %if.end301.cleanup334_crit_edge ], [ -22, %do.end77 ], [ %call.i566, %do.end68 ], [ -12, %for.body.cleanup334_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args) #5
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_count_phandle_with_args(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_card(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_audmix_fe_startup(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %6 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %runtime1, align 4
  %dev3 = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 5
  %8 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev3, align 4
  %cpu_mclk = getelementptr inbounds %struct.imx_audmix, ptr %5, i32 0, i32 4
  %10 = ptrtoint ptr %cpu_mclk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cpu_mclk, align 4
  %call4 = tail call i32 @clk_get_rate(ptr noundef %11) #5
  %rem = urem i32 %call4, 24576000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp = icmp eq i32 %rem, 0
  br i1 %cmp, label %if.then, label %do.end

if.then:                                          ; preds = %entry
  %call5 = tail call i32 @snd_pcm_hw_constraint_list(ptr noundef %7, i32 noundef 0, i32 noundef 11, ptr noundef nonnull @imx_audmix_rate_constraints) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then.cleanup_crit_edge, label %if.then.if.end8_crit_edge

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.46, i32 noundef %call4) #8
  br label %if.end8

if.end8:                                          ; preds = %do.end, %if.then.if.end8_crit_edge
  %call9 = tail call i32 @snd_pcm_hw_constraint_minmax(ptr noundef %7, i32 noundef 10, i32 noundef 1, i32 noundef 8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %call13 = tail call i32 @snd_pcm_hw_constraint_mask64(ptr noundef %7, i32 noundef 1, i64 noundef 1092) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end8.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %if.end12 ], [ %call5, %if.then.cleanup_crit_edge ], [ %call9, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_audmix_fe_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %card = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 4
  %dev1 = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %6 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i, align 4
  %or = select i1 %cmp, i32 16388, i32 4100
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  %10 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dais, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %call4 = tail call i32 @snd_soc_dai_set_fmt(ptr noundef %13, i32 noundef %or) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.49, i32 noundef %call4) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %cond3 = zext i1 %cmp to i32
  %14 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dais, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %call8 = tail call i32 @snd_soc_dai_set_sysclk(ptr noundef %17, i32 noundef 1, i32 noundef 0, i32 noundef %cond3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end14, label %do.end13

do.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.52, i32 noundef %call8) #8
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %18 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dais, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %notmask = shl nsw i32 -1, %9
  %sub = xor i32 %notmask, -1
  %call19 = tail call i32 @snd_soc_dai_set_tdm_slot(ptr noundef %21, i32 noundef %sub, i32 noundef %sub, i32 noundef 8, i32 noundef 32) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end14.cleanup_crit_edge, label %do.end24

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end24:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.55, i32 noundef %call19) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end24, %if.end14.cleanup_crit_edge, %do.end13, %do.end
  %retval.0 = phi i32 [ %call4, %do.end ], [ %call8, %do.end13 ], [ %call19, %do.end24 ], [ 0, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_list(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_minmax(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_mask64(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_set_fmt(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_set_sysclk(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_set_tdm_slot(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_audmix_be_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readnone %params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %card = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 4
  %dev1 = getelementptr inbounds %struct.snd_soc_card, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %6 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  br i1 %cmp, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dais, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %call = tail call i32 @snd_soc_dai_set_fmt(ptr noundef %11, i32 noundef 4100) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.57, i32 noundef %call) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !52, !53, !54, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !76, !78, !80, !81, !82, !84, !85, !86, !88, !90, !91, !92, !93, !94, !96, !98, !100, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !115, !116, !117}
!llvm.module.flags = !{!118, !119, !120, !121, !122, !123, !124, !125}
!llvm.ident = !{!126}

!0 = !{ptr @__initcall__kmod_snd_soc_imx_audmix__241_349_imx_audmix_driver_init6, !1, !"__initcall__kmod_snd_soc_imx_audmix__241_349_imx_audmix_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/fsl/imx-audmix.c", i32 349, i32 1}
!2 = !{ptr @__exitcall_imx_audmix_driver_exit, !1, !"__exitcall_imx_audmix_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description242, !4, !"__UNIQUE_ID_description242", i1 false, i1 false}
!4 = !{!"../sound/soc/fsl/imx-audmix.c", i32 351, i32 1}
!5 = !{ptr @__UNIQUE_ID_author243, !6, !"__UNIQUE_ID_author243", i1 false, i1 false}
!6 = !{!"../sound/soc/fsl/imx-audmix.c", i32 352, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias244, !8, !"__UNIQUE_ID_alias244", i1 false, i1 false}
!8 = !{!"../sound/soc/fsl/imx-audmix.c", i32 353, i32 1}
!9 = !{ptr @__UNIQUE_ID_file245, !10, !"__UNIQUE_ID_file245", i1 false, i1 false}
!10 = !{!"../sound/soc/fsl/imx-audmix.c", i32 354, i32 1}
!11 = !{ptr @__UNIQUE_ID_license246, !10, !"__UNIQUE_ID_license246", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/fsl/imx-audmix.c", i32 345, i32 11}
!14 = !{ptr @imx_audmix_driver, !15, !"imx_audmix_driver", i1 false, i1 false}
!15 = !{!"../sound/soc/fsl/imx-audmix.c", i32 342, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/fsl/imx-audmix.c", i32 153, i32 29}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/fsl/imx-audmix.c", i32 159, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @imx_audmix_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @imx_audmix_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/fsl/imx-audmix.c", i32 164, i32 3}
!28 = !{ptr @imx_audmix_probe._entry.7, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @imx_audmix_probe._entry_ptr.9, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/soc/fsl/imx-audmix.c", i32 170, i32 3}
!32 = !{ptr @imx_audmix_probe._entry.10, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @imx_audmix_probe._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/soc/fsl/imx-audmix.c", i32 176, i32 50}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/soc/fsl/imx-audmix.c", i32 178, i32 3}
!38 = !{ptr @imx_audmix_probe._entry.14, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @imx_audmix_probe._entry_ptr.16, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/fsl/imx-audmix.c", i32 218, i32 4}
!42 = !{ptr @imx_audmix_probe._entry.17, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @imx_audmix_probe._entry_ptr.19, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/fsl/imx-audmix.c", i32 224, i32 4}
!46 = !{ptr @imx_audmix_probe._entry.20, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @imx_audmix_probe._entry_ptr.22, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/soc/fsl/imx-audmix.c", i32 229, i32 53}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/fsl/imx-audmix.c", i32 232, i32 3}
!52 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @imx_audmix_probe._entry.24, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @imx_audmix_probe._entry_ptr.27, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/soc/fsl/imx-audmix.c", i32 237, i32 44}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/soc/fsl/imx-audmix.c", i32 238, i32 23}
!59 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/soc/fsl/imx-audmix.c", i32 250, i32 30}
!61 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/soc/fsl/imx-audmix.c", i32 251, i32 35}
!63 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/soc/fsl/imx-audmix.c", i32 252, i32 31}
!65 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/soc/fsl/imx-audmix.c", i32 264, i32 7}
!67 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/soc/fsl/imx-audmix.c", i32 266, i32 12}
!69 = !{ptr @.str.35, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/soc/fsl/imx-audmix.c", i32 268, i32 12}
!71 = !{ptr @.str.36, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/soc/fsl/imx-audmix.c", i32 295, i32 22}
!73 = !{ptr @imx_audmix_probe._entry.37, !74, !"_entry", i1 false, i1 false}
!74 = !{!"../sound/soc/fsl/imx-audmix.c", i32 305, i32 3}
!75 = !{ptr @imx_audmix_probe._entry_ptr.38, !74, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.39, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/fsl/imx-audmix.c", i32 310, i32 48}
!78 = !{ptr @.str.41, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/fsl/imx-audmix.c", i32 313, i32 3}
!80 = !{ptr @imx_audmix_probe._entry.40, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @imx_audmix_probe._entry_ptr.42, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.44, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/fsl/imx-audmix.c", i32 335, i32 3}
!84 = !{ptr @imx_audmix_probe._entry.43, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @imx_audmix_probe._entry_ptr.45, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @imx_audmix_fe_ops, !87, !"imx_audmix_fe_ops", i1 false, i1 false}
!87 = !{!"../sound/soc/fsl/imx-audmix.c", i32 135, i32 33}
!88 = !{ptr @.str.46, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/soc/fsl/imx-audmix.c", i32 61, i32 3}
!90 = !{ptr @.str.47, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.48, !89, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @imx_audmix_fe_startup._entry, !89, !"_entry", i1 false, i1 false}
!93 = !{ptr @imx_audmix_fe_startup._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @imx_audmix_rate_constraints, !95, !"imx_audmix_rate_constraints", i1 false, i1 false}
!95 = !{!"../sound/soc/fsl/imx-audmix.c", i32 40, i32 48}
!96 = !{ptr @imx_audmix_rates, !97, !"imx_audmix_rates", i1 false, i1 false}
!97 = !{!"../sound/soc/fsl/imx-audmix.c", i32 36, i32 18}
!98 = !{ptr @.str.49, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/soc/fsl/imx-audmix.c", i32 90, i32 3}
!100 = !{ptr @.str.50, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @imx_audmix_fe_hw_params._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @imx_audmix_fe_hw_params._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.52, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../sound/soc/fsl/imx-audmix.c", i32 96, i32 3}
!105 = !{ptr @imx_audmix_fe_hw_params._entry.51, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @imx_audmix_fe_hw_params._entry_ptr.53, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.55, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../sound/soc/fsl/imx-audmix.c", i32 107, i32 3}
!109 = !{ptr @imx_audmix_fe_hw_params._entry.54, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @imx_audmix_fe_hw_params._entry_ptr.56, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @imx_audmix_be_ops, !112, !"imx_audmix_be_ops", i1 false, i1 false}
!112 = !{!"../sound/soc/fsl/imx-audmix.c", i32 140, i32 33}
!113 = !{ptr @.str.57, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../sound/soc/fsl/imx-audmix.c", i32 130, i32 3}
!115 = !{ptr @.str.58, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @imx_audmix_be_hw_params._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @imx_audmix_be_hw_params._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{i32 1, !"wchar_size", i32 2}
!119 = !{i32 1, !"min_enum_size", i32 4}
!120 = !{i32 8, !"branch-target-enforcement", i32 0}
!121 = !{i32 8, !"sign-return-address", i32 0}
!122 = !{i32 8, !"sign-return-address-all", i32 0}
!123 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!124 = !{i32 7, !"uwtable", i32 1}
!125 = !{i32 7, !"frame-pointer", i32 2}
!126 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
