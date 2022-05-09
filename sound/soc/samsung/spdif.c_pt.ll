; ModuleID = '/llk/IR_all_yes/sound/soc/samsung/spdif.c_pt.bc'
source_filename = "../sound/soc/samsung/spdif.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.samsung_spdif_info = type { %struct.spinlock, ptr, ptr, i32, ptr, ptr, i32, i32, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.snd_dmaengine_dai_dma_data = type { i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.95, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.95 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.s3c_audio_pdata = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.samsung_i2s_type }
%struct.samsung_i2s_type = type { i32, i32 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
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

@__initcall__kmod_snd_soc_samsung_spdif__248_487_samsung_spdif_driver_init6 = internal global ptr @samsung_spdif_driver_init, section ".initcall6.init", align 4
@samsung_spdif_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @spdif_probe, ptr @spdif_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_samsung_spdif_driver_exit = internal global ptr @samsung_spdif_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author249 = internal constant [67 x i8] c"snd_soc_samsung_spdif.author=Seungwhan Youn, <sw.youn@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description250 = internal constant [67 x i8] c"snd_soc_samsung_spdif.description=Samsung S/PDIF Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file251 = internal constant [67 x i8] c"snd_soc_samsung_spdif.file=sound/soc/samsung/snd-soc-samsung-spdif\00", section ".modinfo", align 1
@__UNIQUE_ID_license252 = internal constant [34 x i8] c"snd_soc_samsung_spdif.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias253 = internal constant [51 x i8] c"snd_soc_samsung_spdif.alias=platform:samsung-spdif\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"samsung-spdif\00", [18 x i8] zeroinitializer }, align 32
@spdif_probe.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 92, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"snd_soc_samsung_spdif\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"spdif_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sound/soc/samsung/spdif.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Entered %s\0A\00", [20 x i8] zeroinitializer }, align 32
@spdif_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 374, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unable to get register resource.\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@spdif_probe._entry_ptr = internal global ptr @spdif_probe._entry, section ".printk_index", align 4
@spdif_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 380, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Unable to configure GPIO pins\0A\00", [33 x i8] zeroinitializer }, align 32
@spdif_probe._entry_ptr.10 = internal global ptr @spdif_probe._entry.8, section ".printk_index", align 4
@spdif_info = internal global { %struct.samsung_spdif_info, [48 x i8] } zeroinitializer, align 32
@spdif_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&spdif->lock\00", [19 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"spdif\00", [26 x i8] zeroinitializer }, align 32
@spdif_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 391, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get peri-clock\0A\00", [38 x i8] zeroinitializer }, align 32
@spdif_probe._entry_ptr.15 = internal global ptr @spdif_probe._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sclk_spdif\00", [21 x i8] zeroinitializer }, align 32
@spdif_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 401, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to get internal source clock\0A\00", [59 x i8] zeroinitializer }, align 32
@spdif_probe._entry_ptr.19 = internal global ptr @spdif_probe._entry.17, section ".printk_index", align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@spdif_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 412, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Unable to request register region\0A\00", [61 x i8] zeroinitializer }, align 32
@spdif_probe._entry_ptr.22 = internal global ptr @spdif_probe._entry.20, section ".printk_index", align 4
@spdif_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.2, ptr @.str.3, i32 419, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Cannot ioremap registers\0A\00", [38 x i8] zeroinitializer }, align 32
@spdif_probe._entry_ptr.25 = internal global ptr @spdif_probe._entry.23, section ".printk_index", align 4
@spdif_stereo_out = internal global { %struct.snd_dmaengine_dai_dma_data, [60 x i8] } zeroinitializer, align 32
@spdif_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.2, ptr @.str.3, i32 436, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to register DMA: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@spdif_probe._entry_ptr.28 = internal global ptr @spdif_probe._entry.26, section ".printk_index", align 4
@samsung_spdif_component = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str, ptr null, i32 0, ptr null, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @spdif_suspend, ptr @spdif_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@samsung_spdif_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr @.str, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @spdif_dai_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.34, i64 4, i32 1248, i32 0, i32 0, i32 2, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@spdif_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.2, ptr @.str.3, i32 445, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fail to register dai\0A\00", [42 x i8] zeroinitializer }, align 32
@spdif_probe._entry_ptr.31 = internal global ptr @spdif_probe._entry.29, section ".printk_index", align 4
@spdif_suspend.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.32, ptr @.str.3, ptr @.str.4, i8 0, i8 76, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"spdif_suspend\00", [18 x i8] zeroinitializer }, align 32
@spdif_resume.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.33, ptr @.str.3, ptr @.str.4, i8 0, i8 80, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"spdif_resume\00", [19 x i8] zeroinitializer }, align 32
@spdif_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @spdif_set_sysclk, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @spdif_shutdown, ptr @spdif_hw_params, ptr null, ptr null, ptr @spdif_trigger, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"S/PDIF Playback\00", [16 x i8] zeroinitializer }, align 32
@spdif_set_sysclk.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.35, ptr @.str.3, ptr @.str.4, i8 0, i8 31, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"spdif_set_sysclk\00", [47 x i8] zeroinitializer }, align 32
@spdif_shutdown.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.36, ptr @.str.3, ptr @.str.4, i8 0, i8 71, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"spdif_shutdown\00", [17 x i8] zeroinitializer }, align 32
@spdif_hw_params.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.37, ptr @.str.3, ptr @.str.4, i8 0, i8 47, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"spdif_hw_params\00", [16 x i8] zeroinitializer }, align 32
@spdif_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.37, ptr @.str.3, i32 193, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Capture is not supported\0A\00", [38 x i8] zeroinitializer }, align 32
@spdif_hw_params._entry_ptr = internal global ptr @spdif_hw_params._entry, section ".printk_index", align 4
@spdif_hw_params._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.37, ptr @.str.3, i32 216, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unsupported data size.\0A\00", [40 x i8] zeroinitializer }, align 32
@spdif_hw_params._entry_ptr.41 = internal global ptr @spdif_hw_params._entry.39, section ".printk_index", align 4
@spdif_hw_params._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.37, ptr @.str.3, i32 226, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Invalid clock ratio %ld/%d\0A\00", [36 x i8] zeroinitializer }, align 32
@spdif_hw_params._entry_ptr.44 = internal global ptr @spdif_hw_params._entry.42, section ".printk_index", align 4
@spdif_hw_params._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.37, ptr @.str.3, i32 259, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Invalid sampling rate %d\0A\00", [38 x i8] zeroinitializer }, align 32
@spdif_hw_params._entry_ptr.47 = internal global ptr @spdif_hw_params._entry.45, section ".printk_index", align 4
@spdif_trigger.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.48, ptr @.str.3, ptr @.str.4, i8 0, i8 37, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"spdif_trigger\00", [18 x i8] zeroinitializer }, align 32
@spdif_snd_txctrl.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.49, ptr @.str.3, ptr @.str.4, i8 0, i8 27, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"spdif_snd_txctrl\00", [47 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 256, i64 384, i64 512]
@__sancov_gen_cov_switch_values.50 = internal global [6 x i64] [i64 4, i64 32, i64 32000, i64 44100, i64 48000, i64 96000]
@__sancov_gen_cov_switch_values.51 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.52 = private unnamed_addr constant [21 x i8] c"samsung_spdif_driver\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 479, i32 31 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 483, i32 11 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 370, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 374, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 380, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant [11 x i8] c"spdif_info\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 92, i32 34 }
@___asan_gen_.91 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 387, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 389, i32 41 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 391, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 399, i32 41 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 401, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 412, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 419, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant [17 x i8] c"spdif_stereo_out\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 91, i32 42 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 436, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant [24 x i8] c"samsung_spdif_component\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 354, i32 46 }
@___asan_gen_.139 = private unnamed_addr constant [18 x i8] c"samsung_spdif_dai\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 340, i32 34 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 445, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 304, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 320, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant [14 x i8] c"spdif_dai_ops\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 333, i32 37 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 343, i32 18 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 125, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 287, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 188, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 193, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 216, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 225, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 258, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 148, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.197 = private constant [29 x i8] c"../sound/soc/samsung/spdif.c\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 110, i32 2 }
@llvm.compiler.used = appending global [69 x ptr] [ptr @__UNIQUE_ID_alias253, ptr @__UNIQUE_ID_author249, ptr @__UNIQUE_ID_description250, ptr @__UNIQUE_ID_file251, ptr @__UNIQUE_ID_license252, ptr @__exitcall_samsung_spdif_driver_exit, ptr @__initcall__kmod_snd_soc_samsung_spdif__248_487_samsung_spdif_driver_init6, ptr @samsung_spdif_driver_exit, ptr @spdif_hw_params._entry, ptr @spdif_hw_params._entry.39, ptr @spdif_hw_params._entry.42, ptr @spdif_hw_params._entry.45, ptr @spdif_hw_params._entry_ptr, ptr @spdif_hw_params._entry_ptr.41, ptr @spdif_hw_params._entry_ptr.44, ptr @spdif_hw_params._entry_ptr.47, ptr @spdif_probe._entry, ptr @spdif_probe._entry.13, ptr @spdif_probe._entry.17, ptr @spdif_probe._entry.20, ptr @spdif_probe._entry.23, ptr @spdif_probe._entry.26, ptr @spdif_probe._entry.29, ptr @spdif_probe._entry.8, ptr @spdif_probe._entry_ptr, ptr @spdif_probe._entry_ptr.10, ptr @spdif_probe._entry_ptr.15, ptr @spdif_probe._entry_ptr.19, ptr @spdif_probe._entry_ptr.22, ptr @spdif_probe._entry_ptr.25, ptr @spdif_probe._entry_ptr.28, ptr @spdif_probe._entry_ptr.31, ptr @samsung_spdif_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @spdif_info, ptr @spdif_probe.__key, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @spdif_stereo_out, ptr @.str.27, ptr @samsung_spdif_component, ptr @samsung_spdif_dai, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @spdif_dai_ops, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.48, ptr @.str.49], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_spdif_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spdif_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spdif_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spdif_info to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spdif_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spdif_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spdif_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spdif_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spdif_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spdif_stereo_out to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spdif_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_spdif_component to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @samsung_spdif_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spdif_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spdif_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spdif_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spdif_hw_params._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spdif_hw_params._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spdif_hw_params._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @samsung_spdif_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @samsung_spdif_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @samsung_spdif_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @samsung_spdif_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spdif_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spdif_probe.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spdif_probe, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !123

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spdif_probe.__UNIQUE_ID_ddebug247, ptr noundef %dev, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call4 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #5
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %do.end9, label %if.end11

do.end9:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.5) #8
  br label %cleanup

if.end11:                                         ; preds = %do.end
  %tobool12.not = icmp eq ptr %1, null
  br i1 %tobool12.not, label %if.end11.if.end23_crit_edge, label %land.lhs.true

if.end11.if.end23_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

land.lhs.true:                                    ; preds = %if.end11
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool13.not = icmp eq ptr %3, null
  br i1 %tobool13.not, label %land.lhs.true.if.end23_crit_edge, label %land.lhs.true14

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

land.lhs.true14:                                  ; preds = %land.lhs.true
  %call16 = tail call i32 %3(ptr noundef %pdev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %land.lhs.true14.if.end23_crit_edge, label %do.end21

land.lhs.true14.if.end23_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

do.end21:                                         ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #8
  br label %cleanup

if.end23:                                         ; preds = %land.lhs.true14.if.end23_crit_edge, %land.lhs.true.if.end23_crit_edge, %if.end11.if.end23_crit_edge
  store ptr %dev, ptr getelementptr inbounds (%struct.samsung_spdif_info, ptr @spdif_info, i32 0, i32 1), align 4
  tail call void @__raw_spin_lock_init(ptr noundef nonnull @spdif_info, ptr noundef nonnull @.str.11, ptr noundef nonnull @spdif_probe.__key, i16 noundef signext 3) #5
  %call31 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.12) #5
  store ptr %call31, ptr getelementptr inbounds (%struct.samsung_spdif_info, ptr @spdif_info, i32 0, i32 4), align 4
  %cmp.i = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end37, label %if.end39

do.end37:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #8
  br label %cleanup

if.end39:                                         ; preds = %if.end23
  %call.i = tail call i32 @clk_prepare(ptr noundef %call31) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end39.cleanup_crit_edge

if.end39.cleanup_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %if.end39
  %call1.i = tail call i32 @clk_enable(ptr noundef %call31) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end44, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %call31) #5
  br label %cleanup

if.end44:                                         ; preds = %if.end.i
  %call46 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.16) #5
  store ptr %call46, ptr getelementptr inbounds (%struct.samsung_spdif_info, ptr @spdif_info, i32 0, i32 5), align 4
  %cmp.i160 = icmp ugt ptr %call46, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i160, label %do.end52, label %if.end54

do.end52:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #8
  br label %err1

if.end54:                                         ; preds = %if.end44
  %call.i161 = tail call i32 @clk_prepare(ptr noundef %call46) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i161)
  %tobool.not.i162 = icmp eq i32 %call.i161, 0
  br i1 %tobool.not.i162, label %if.end.i165, label %if.end54.err1_crit_edge

if.end54.err1_crit_edge:                          ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  br label %err1

if.end.i165:                                      ; preds = %if.end54
  %call1.i163 = tail call i32 @clk_enable(ptr noundef %call46) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i163)
  %tobool2.not.i164 = icmp eq i32 %call1.i163, 0
  br i1 %tobool2.not.i164, label %if.end59, label %if.then3.i166

if.then3.i166:                                    ; preds = %if.end.i165
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef %call46) #5
  br label %err1

if.end59:                                         ; preds = %if.end.i165
  %4 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call4, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call4, i32 0, i32 1
  %6 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %5
  %add.i = add i32 %sub.i, %7
  %call61 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %5, i32 noundef %add.i, ptr noundef nonnull @.str, i32 noundef 0) #5
  %tobool62.not = icmp eq ptr %call61, null
  br i1 %tobool62.not, label %do.end66, label %if.end68

do.end66:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21) #8
  br label %err2

if.end68:                                         ; preds = %if.end59
  %8 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call4, align 4
  %call70 = tail call ptr @ioremap(i32 noundef %9, i32 noundef 256) #5
  store ptr %call70, ptr getelementptr inbounds (%struct.samsung_spdif_info, ptr @spdif_info, i32 0, i32 2), align 4
  %cmp = icmp eq ptr %call70, null
  br i1 %cmp, label %do.end75, label %if.end77

do.end75:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24) #8
  br label %err3

if.end77:                                         ; preds = %if.end68
  store i32 2, ptr getelementptr inbounds (%struct.snd_dmaengine_dai_dma_data, ptr @spdif_stereo_out, i32 0, i32 1), align 4
  %10 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %call4, align 4
  %add = add i32 %11, 16
  store i32 %add, ptr @spdif_stereo_out, align 4
  br i1 %tobool12.not, label %if.end77.if.end81_crit_edge, label %if.then80

if.end77.if.end81_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end81

if.then80:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #7
  %dma_playback = getelementptr inbounds %struct.s3c_audio_pdata, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %dma_playback to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dma_playback, align 4
  store ptr %13, ptr getelementptr inbounds (%struct.snd_dmaengine_dai_dma_data, ptr @spdif_stereo_out, i32 0, i32 3), align 4
  %dma_filter = getelementptr inbounds %struct.s3c_audio_pdata, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %dma_filter to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dma_filter, align 4
  br label %if.end81

if.end81:                                         ; preds = %if.then80, %if.end77.if.end81_crit_edge
  %filter.0 = phi ptr [ %15, %if.then80 ], [ null, %if.end77.if.end81_crit_edge ]
  store ptr @spdif_stereo_out, ptr getelementptr inbounds (%struct.samsung_spdif_info, ptr @spdif_info, i32 0, i32 9), align 4
  %call84 = tail call i32 @samsung_asoc_dma_platform_register(ptr noundef %dev, ptr noundef %filter.0, ptr noundef null, ptr noundef null, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.end91, label %do.end89

do.end89:                                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27, i32 noundef %call84) #8
  br label %err4

if.end91:                                         ; preds = %if.end81
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %16 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @spdif_info, ptr %driver_data.i, align 4
  %call94 = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @samsung_spdif_component, ptr noundef nonnull @samsung_spdif_dai, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %cmp95.not = icmp eq i32 %call94, 0
  br i1 %cmp95.not, label %if.end91.cleanup_crit_edge, label %do.end99

if.end91.cleanup_crit_edge:                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end99:                                         ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30) #8
  br label %err4

err4:                                             ; preds = %do.end99, %do.end89
  %ret.0 = phi i32 [ %call84, %do.end89 ], [ %call94, %do.end99 ]
  %17 = load ptr, ptr getelementptr inbounds (%struct.samsung_spdif_info, ptr @spdif_info, i32 0, i32 2), align 4
  tail call void @iounmap(ptr noundef %17) #5
  br label %err3

err3:                                             ; preds = %err4, %do.end75
  %ret.1 = phi i32 [ -6, %do.end75 ], [ %ret.0, %err4 ]
  %18 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %call4, align 4
  %20 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %end.i, align 4
  %sub.i170 = sub i32 1, %19
  %add.i171 = add i32 %sub.i170, %21
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %19, i32 noundef %add.i171) #5
  br label %err2

err2:                                             ; preds = %err3, %do.end66
  %ret.2 = phi i32 [ %ret.1, %err3 ], [ -16, %do.end66 ]
  %22 = load ptr, ptr getelementptr inbounds (%struct.samsung_spdif_info, ptr @spdif_info, i32 0, i32 5), align 4
  tail call void @clk_disable(ptr noundef %22) #5
  tail call void @clk_unprepare(ptr noundef %22) #5
  br label %err1

err1:                                             ; preds = %err2, %if.then3.i166, %if.end54.err1_crit_edge, %do.end52
  %ret.3 = phi i32 [ -2, %do.end52 ], [ %ret.2, %err2 ], [ %call1.i163, %if.then3.i166 ], [ %call.i161, %if.end54.err1_crit_edge ]
  %23 = load ptr, ptr getelementptr inbounds (%struct.samsung_spdif_info, ptr @spdif_info, i32 0, i32 4), align 4
  tail call void @clk_disable(ptr noundef %23) #5
  tail call void @clk_unprepare(ptr noundef %23) #5
  br label %cleanup

cleanup:                                          ; preds = %err1, %if.end91.cleanup_crit_edge, %if.then3.i, %if.end39.cleanup_crit_edge, %do.end37, %do.end21, %do.end9
  %retval.0 = phi i32 [ -22, %do.end21 ], [ -6, %do.end9 ], [ 0, %if.end91.cleanup_crit_edge ], [ -2, %do.end37 ], [ %ret.3, %err1 ], [ %call1.i, %if.then3.i ], [ %call.i, %if.end39.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spdif_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.samsung_spdif_info, ptr @spdif_info, i32 0, i32 2), align 4
  tail call void @iounmap(ptr noundef %0) #5
  %call = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %call, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %2
  %add.i = add i32 %sub.i, %4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %2, i32 noundef %add.i) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %5 = load ptr, ptr getelementptr inbounds (%struct.samsung_spdif_info, ptr @spdif_info, i32 0, i32 5), align 4
  tail call void @clk_disable(ptr noundef %5) #5
  tail call void @clk_unprepare(ptr noundef %5) #5
  %6 = load ptr, ptr getelementptr inbounds (%struct.samsung_spdif_info, ptr @spdif_info, i32 0, i32 4), align 4
  tail call void @clk_disable(ptr noundef %6) #5
  tail call void @clk_unprepare(ptr noundef %6) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @samsung_asoc_dma_platform_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spdif_suspend(ptr nocapture noundef readonly %component) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %saved_con = getelementptr inbounds %struct.samsung_spdif_info, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %saved_con to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %saved_con, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spdif_suspend.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spdif_suspend, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !123

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.samsung_spdif_info, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spdif_suspend.__UNIQUE_ID_ddebug245, ptr noundef %7, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.32) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %regs = getelementptr inbounds %struct.samsung_spdif_info, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #5, !srcloc !124
  %11 = lshr i32 %10, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !125
  %and = and i32 %11, 7
  %saved_clkcon = getelementptr inbounds %struct.samsung_spdif_info, ptr %3, i32 0, i32 6
  %12 = ptrtoint ptr %saved_clkcon to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and, ptr %saved_clkcon, align 4
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 4
  %add.ptr10 = getelementptr i8, ptr %14, i32 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #5, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !126
  %16 = and i32 %15, -253
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %18 = ptrtoint ptr %saved_con to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %saved_con, align 4
  %19 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs, align 4
  %add.ptr19 = getelementptr i8, ptr %20, i32 12
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #5, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !127
  %22 = and i32 %21, -193
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %saved_cstas = getelementptr inbounds %struct.samsung_spdif_info, ptr %3, i32 0, i32 8
  %24 = ptrtoint ptr %saved_cstas to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %saved_cstas, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !128
  tail call void @arm_heavy_mb() #5
  %or = or i32 %5, 32
  %25 = tail call i32 @llvm.bswap.i32(i32 %or)
  %26 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs, align 4
  %add.ptr28 = getelementptr i8, ptr %27, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 %25) #5, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !130
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !131
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spdif_resume(ptr nocapture noundef readonly %component) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spdif_resume.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spdif_resume, %if.then)) #5
          to label %do.body4 [label %if.then], !srcloc !123

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.samsung_spdif_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spdif_resume.__UNIQUE_ID_ddebug246, ptr noundef %5, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.33) #5
  br label %do.body4

do.body4:                                         ; preds = %if.then, %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !132
  tail call void @arm_heavy_mb() #5
  %saved_clkcon = getelementptr inbounds %struct.samsung_spdif_info, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %saved_clkcon to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %saved_clkcon, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %regs = getelementptr inbounds %struct.samsung_spdif_info, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #5, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !133
  tail call void @arm_heavy_mb() #5
  %saved_con = getelementptr inbounds %struct.samsung_spdif_info, ptr %3, i32 0, i32 7
  %11 = ptrtoint ptr %saved_con to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %saved_con, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 4
  %add.ptr11 = getelementptr i8, ptr %15, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %13) #5, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !134
  tail call void @arm_heavy_mb() #5
  %saved_cstas = getelementptr inbounds %struct.samsung_spdif_info, ptr %3, i32 0, i32 8
  %16 = ptrtoint ptr %saved_cstas to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %saved_cstas, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %19 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs, align 4
  %add.ptr16 = getelementptr i8, ptr %20, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %18) #5, !srcloc !129
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spdif_set_sysclk(ptr nocapture noundef readonly %cpu_dai, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spdif_set_sysclk.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spdif_set_sysclk, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !123

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.samsung_spdif_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spdif_set_sysclk.__UNIQUE_ID_ddebug241, ptr noundef %5, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.35) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %regs = getelementptr inbounds %struct.samsung_spdif_info, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #5, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !135
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clk_id)
  %cmp = icmp eq i32 %clk_id, 0
  %9 = and i32 %8, -67108865
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %masksel = select i1 %cmp, i32 0, i32 4
  %clkcon.0 = or i32 %10, %masksel
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !136
  tail call void @arm_heavy_mb() #5
  %11 = tail call i32 @llvm.bswap.i32(i32 %clkcon.0)
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #5, !srcloc !129
  %clk_rate = getelementptr inbounds %struct.samsung_spdif_info, ptr %3, i32 0, i32 3
  %14 = ptrtoint ptr %clk_rate to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %freq, ptr %clk_rate, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @spdif_shutdown(ptr nocapture noundef readonly %substream, ptr nocapture noundef readnone %dai) #2 align 64 {
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
  %dev.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i.i, align 4
  %regs1 = getelementptr inbounds %struct.samsung_spdif_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spdif_shutdown.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spdif_shutdown, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !123

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.samsung_spdif_info, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spdif_shutdown.__UNIQUE_ID_ddebug244, ptr noundef %13, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.36) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %add.ptr = getelementptr i8, ptr %11, i32 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !137
  %15 = and i32 %14, -536871165
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #5, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !139
  tail call void @arm_heavy_mb() #5
  %17 = or i32 %15, 536870912
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %17) #5, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !140
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #5, !srcloc !141
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !142
  tail call void @arm_heavy_mb() #5
  %and31 = and i32 %16, 100663296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %and31) #5, !srcloc !129
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spdif_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readnone %socdai) #2 align 64 {
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
  %dev.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i.i, align 4
  %regs1 = getelementptr inbounds %struct.samsung_spdif_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spdif_hw_params.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spdif_hw_params, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !123

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.samsung_spdif_info, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spdif_hw_params.__UNIQUE_ID_ddebug243, ptr noundef %13, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.37) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %14 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp = icmp eq i32 %15, 0
  br i1 %cmp, label %if.then5, label %do.end8

if.then5:                                         ; preds = %do.end
  %dma_playback = getelementptr inbounds %struct.samsung_spdif_info, ptr %9, i32 0, i32 9
  %16 = ptrtoint ptr %dma_playback to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dma_playback, align 4
  %18 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dais, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %19, align 4
  %playback_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %21, i32 0, i32 7
  %22 = ptrtoint ptr %playback_dma_data.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %17, ptr %playback_dma_data.i, align 4
  %call18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #5
  %add.ptr = getelementptr i8, ptr %11, i32 4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !143
  %add.ptr28 = getelementptr i8, ptr %11, i32 12
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28) #5, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !144
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #5, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !145
  %and39 = and i32 %25, 117440512
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %26 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i.i.i = icmp eq i32 %27, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %if.then5.if.then.i.i.i_crit_edge

if.then5.if.then.i.i.i_crit_edge:                 ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %if.then5.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %if.then5.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %27, %if.then5.if.then.i.i.i_crit_edge ], [ %30, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %28 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #5, !range !146
  %add.i.i.i = or i32 %28, %i.09.lcssa.i.i.i
  br label %params_width.exit

for.inc.i.i.i:                                    ; preds = %if.then5
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %29 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.1.i.i.i = icmp eq i32 %30, 0
  br i1 %tobool.not.1.i.i.i, label %for.inc.i.i.i.params_width.exit_crit_edge, label %for.inc.i.i.i.if.then.i.i.i_crit_edge

for.inc.i.i.i.if.then.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then.i.i.i

for.inc.i.i.i.params_width.exit_crit_edge:        ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %params_width.exit

params_width.exit:                                ; preds = %for.inc.i.i.i.params_width.exit_crit_edge, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ 0, %for.inc.i.i.i.params_width.exit_crit_edge ]
  %call1.i = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call1.i)
  %cond = icmp eq i32 %call1.i, 16
  br i1 %cond, label %sw.bb, label %do.end48

do.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev9 = getelementptr inbounds %struct.samsung_spdif_info, ptr %9, i32 0, i32 1
  %31 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.38) #8
  br label %cleanup

sw.bb:                                            ; preds = %params_width.exit
  %clk_rate = getelementptr inbounds %struct.samsung_spdif_info, ptr %9, i32 0, i32 3
  %33 = ptrtoint ptr %clk_rate to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %clk_rate, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %35 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.i.i, align 4
  %div = udiv i32 %34, %36
  %37 = zext i32 %div to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values)
  switch i32 %div, label %do.end63 [
    i32 512, label %sw.bb73
    i32 384, label %sw.bb71
    i32 256, label %if.end67.thread
  ]

do.end48:                                         ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #7
  %dev49 = getelementptr inbounds %struct.samsung_spdif_info, ptr %9, i32 0, i32 1
  %38 = ptrtoint ptr %dev49 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev49, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.40) #8
  br label %err

if.end67.thread:                                  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %40 = and i32 %23, -521156861
  %41 = or i32 %40, 17840128
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  br label %sw.epilog75

do.end63:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %dev64 = getelementptr inbounds %struct.samsung_spdif_info, ptr %9, i32 0, i32 1
  %43 = ptrtoint ptr %dev64 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev64, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.43, i32 noundef %34, i32 noundef %36) #8
  br label %err

sw.bb71:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %45 = and i32 %23, -521156861
  %46 = or i32 %45, 152057856
  %47 = call i32 @llvm.bswap.i32(i32 %46)
  br label %sw.epilog75

sw.bb73:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %48 = and i32 %23, -521156861
  %49 = or i32 %48, 286275584
  %50 = call i32 @llvm.bswap.i32(i32 %49)
  br label %sw.epilog75

sw.epilog75:                                      ; preds = %sw.bb73, %sw.bb71, %if.end67.thread
  %con.0 = phi i32 [ %50, %sw.bb73 ], [ %47, %sw.bb71 ], [ %42, %if.end67.thread ]
  %51 = and i32 %24, -208
  %52 = tail call i32 @llvm.bswap.i32(i32 %51)
  %53 = zext i32 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %36, label %do.end89 [
    i32 44100, label %sw.epilog75.sw.epilog92_crit_edge
    i32 48000, label %sw.bb80
    i32 32000, label %sw.bb82
    i32 96000, label %sw.bb84
  ]

sw.epilog75.sw.epilog92_crit_edge:                ; preds = %sw.epilog75
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog92

sw.bb80:                                          ; preds = %sw.epilog75
  call void @__sanitizer_cov_trace_pc() #7
  %or81 = or i32 %52, 33554432
  br label %sw.epilog92

sw.bb82:                                          ; preds = %sw.epilog75
  call void @__sanitizer_cov_trace_pc() #7
  %or83 = or i32 %52, 50331648
  br label %sw.epilog92

sw.bb84:                                          ; preds = %sw.epilog75
  call void @__sanitizer_cov_trace_pc() #7
  %or85 = or i32 %52, 167772160
  br label %sw.epilog92

do.end89:                                         ; preds = %sw.epilog75
  call void @__sanitizer_cov_trace_pc() #7
  %dev90 = getelementptr inbounds %struct.samsung_spdif_info, ptr %9, i32 0, i32 1
  %54 = ptrtoint ptr %dev90 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev90, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.46, i32 noundef %36) #8
  br label %err

sw.epilog92:                                      ; preds = %sw.bb84, %sw.bb82, %sw.bb80, %sw.epilog75.sw.epilog92_crit_edge
  %cstas.0 = phi i32 [ %or85, %sw.bb84 ], [ %or83, %sw.bb82 ], [ %or81, %sw.bb80 ], [ %52, %sw.epilog75.sw.epilog92_crit_edge ]
  %and93 = and i32 %cstas.0, -65285
  %or95 = or i32 %and93, 260
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !147
  tail call void @arm_heavy_mb() #5
  %56 = tail call i32 @llvm.bswap.i32(i32 %con.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %56) #5, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !148
  tail call void @arm_heavy_mb() #5
  %57 = tail call i32 @llvm.bswap.i32(i32 %or95)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 %57) #5, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !149
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %and39) #5, !srcloc !129
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %call18) #5
  br label %cleanup

err:                                              ; preds = %do.end89, %do.end63, %do.end48
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %call18) #5
  br label %cleanup

cleanup:                                          ; preds = %err, %sw.epilog92, %do.end8
  %retval.0 = phi i32 [ -22, %err ], [ 0, %sw.epilog92 ], [ -22, %do.end8 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spdif_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd, ptr nocapture noundef readnone %dai) #2 align 64 {
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
  %dev.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spdif_trigger.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spdif_trigger, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !123

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.samsung_spdif_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spdif_trigger.__UNIQUE_ID_ddebug242, ptr noundef %11, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.48) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %12 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %cmd, label %do.end.cleanup_crit_edge [
    i32 1, label %do.end.do.body5_crit_edge
    i32 6, label %do.end.do.body5_crit_edge44
    i32 4, label %do.end.do.body5_crit_edge45
    i32 0, label %do.end.do.body16_crit_edge
    i32 5, label %do.end.do.body16_crit_edge46
    i32 3, label %do.end.do.body16_crit_edge47
  ]

do.end.do.body16_crit_edge47:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body16

do.end.do.body16_crit_edge46:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body16

do.end.do.body16_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body16

do.end.do.body5_crit_edge45:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body5

do.end.do.body5_crit_edge44:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body5

do.end.do.body5_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body5

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body5:                                         ; preds = %do.end.do.body5_crit_edge, %do.end.do.body5_crit_edge44, %do.end.do.body5_crit_edge45
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #5
  %regs1.i = getelementptr inbounds %struct.samsung_spdif_info, ptr %9, i32 0, i32 2
  %13 = ptrtoint ptr %regs1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs1.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spdif_snd_txctrl.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spdif_trigger, %if.then.i)) #5
          to label %spdif_snd_txctrl.exit [label %if.then.i], !srcloc !123

if.then.i:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.samsung_spdif_info, ptr %9, i32 0, i32 1
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spdif_snd_txctrl.__UNIQUE_ID_ddebug240, ptr noundef %16, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.49) #5
  br label %spdif_snd_txctrl.exit

spdif_snd_txctrl.exit:                            ; preds = %if.then.i, %do.body5
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #5, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !150
  %and.i = and i32 %17, 100663296
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !151
  tail call void @arm_heavy_mb() #5
  %or.i = or i32 %and.i, 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %or.i) #5, !srcloc !129
  br label %cleanup.sink.split

do.body16:                                        ; preds = %do.end.do.body16_crit_edge, %do.end.do.body16_crit_edge46, %do.end.do.body16_crit_edge47
  %call24 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #5
  %regs1.i39 = getelementptr inbounds %struct.samsung_spdif_info, ptr %9, i32 0, i32 2
  %18 = ptrtoint ptr %regs1.i39 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs1.i39, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spdif_snd_txctrl.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spdif_trigger, %if.then.i41)) #5
          to label %spdif_snd_txctrl.exit42 [label %if.then.i41], !srcloc !123

if.then.i41:                                      ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i40 = getelementptr inbounds %struct.samsung_spdif_info, ptr %9, i32 0, i32 1
  %20 = ptrtoint ptr %dev.i40 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i40, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spdif_snd_txctrl.__UNIQUE_ID_ddebug240, ptr noundef %21, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.49) #5
  br label %spdif_snd_txctrl.exit42

spdif_snd_txctrl.exit42:                          ; preds = %if.then.i41, %do.body16
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #5, !srcloc !124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !150
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !152
  tail call void @arm_heavy_mb() #5
  %23 = and i32 %22, 100663296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %23) #5, !srcloc !129
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %spdif_snd_txctrl.exit42, %spdif_snd_txctrl.exit
  %call8.sink = phi i32 [ %call8, %spdif_snd_txctrl.exit ], [ %call24, %spdif_snd_txctrl.exit42 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %call8.sink) #5
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !24, !25, !26, !27, !28, !30, !31, !32, !34, !35, !37, !39, !40, !41, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !67, !69, !71, !72, !74, !75, !77, !79, !81, !83, !84, !86, !87, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !110, !111, !113}
!llvm.module.flags = !{!114, !115, !116, !117, !118, !119, !120, !121}
!llvm.ident = !{!122}

!0 = !{ptr @__initcall__kmod_snd_soc_samsung_spdif__248_487_samsung_spdif_driver_init6, !1, !"__initcall__kmod_snd_soc_samsung_spdif__248_487_samsung_spdif_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/samsung/spdif.c", i32 487, i32 1}
!2 = !{ptr @__exitcall_samsung_spdif_driver_exit, !1, !"__exitcall_samsung_spdif_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author249, !4, !"__UNIQUE_ID_author249", i1 false, i1 false}
!4 = !{!"../sound/soc/samsung/spdif.c", i32 489, i32 1}
!5 = !{ptr @__UNIQUE_ID_description250, !6, !"__UNIQUE_ID_description250", i1 false, i1 false}
!6 = !{!"../sound/soc/samsung/spdif.c", i32 490, i32 1}
!7 = !{ptr @__UNIQUE_ID_file251, !8, !"__UNIQUE_ID_file251", i1 false, i1 false}
!8 = !{!"../sound/soc/samsung/spdif.c", i32 491, i32 1}
!9 = !{ptr @__UNIQUE_ID_license252, !8, !"__UNIQUE_ID_license252", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias253, !11, !"__UNIQUE_ID_alias253", i1 false, i1 false}
!11 = !{!"../sound/soc/samsung/spdif.c", i32 492, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/samsung/spdif.c", i32 483, i32 11}
!14 = !{ptr @samsung_spdif_driver, !15, !"samsung_spdif_driver", i1 false, i1 false}
!15 = !{!"../sound/soc/samsung/spdif.c", i32 479, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/samsung/spdif.c", i32 370, i32 2}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @spdif_probe.__UNIQUE_ID_ddebug247, !17, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/soc/samsung/spdif.c", i32 374, i32 3}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @spdif_probe._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @spdif_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/samsung/spdif.c", i32 380, i32 3}
!30 = !{ptr @spdif_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @spdif_probe._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @spdif_probe.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../sound/soc/samsung/spdif.c", i32 387, i32 2}
!34 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/soc/samsung/spdif.c", i32 389, i32 41}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/soc/samsung/spdif.c", i32 391, i32 3}
!39 = !{ptr @spdif_probe._entry.13, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @spdif_probe._entry_ptr.15, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/soc/samsung/spdif.c", i32 399, i32 41}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/soc/samsung/spdif.c", i32 401, i32 3}
!45 = !{ptr @spdif_probe._entry.17, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @spdif_probe._entry_ptr.19, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/soc/samsung/spdif.c", i32 412, i32 3}
!49 = !{ptr @spdif_probe._entry.20, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @spdif_probe._entry_ptr.22, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/soc/samsung/spdif.c", i32 419, i32 3}
!53 = !{ptr @spdif_probe._entry.23, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @spdif_probe._entry_ptr.25, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/soc/samsung/spdif.c", i32 436, i32 3}
!57 = !{ptr @spdif_probe._entry.26, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @spdif_probe._entry_ptr.28, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/soc/samsung/spdif.c", i32 445, i32 3}
!61 = !{ptr @spdif_probe._entry.29, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @spdif_probe._entry_ptr.31, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @spdif_info, !64, !"spdif_info", i1 false, i1 false}
!64 = !{!"../sound/soc/samsung/spdif.c", i32 92, i32 34}
!65 = !{ptr @spdif_stereo_out, !66, !"spdif_stereo_out", i1 false, i1 false}
!66 = !{!"../sound/soc/samsung/spdif.c", i32 91, i32 42}
!67 = !{ptr @samsung_spdif_component, !68, !"samsung_spdif_component", i1 false, i1 false}
!68 = !{!"../sound/soc/samsung/spdif.c", i32 354, i32 46}
!69 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/soc/samsung/spdif.c", i32 304, i32 2}
!71 = !{ptr @spdif_suspend.__UNIQUE_ID_ddebug245, !70, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!72 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/soc/samsung/spdif.c", i32 320, i32 2}
!74 = !{ptr @spdif_resume.__UNIQUE_ID_ddebug246, !73, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!75 = !{ptr @.str.34, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/soc/samsung/spdif.c", i32 343, i32 18}
!77 = !{ptr @samsung_spdif_dai, !78, !"samsung_spdif_dai", i1 false, i1 false}
!78 = !{!"../sound/soc/samsung/spdif.c", i32 340, i32 34}
!79 = !{ptr @spdif_dai_ops, !80, !"spdif_dai_ops", i1 false, i1 false}
!80 = !{!"../sound/soc/samsung/spdif.c", i32 333, i32 37}
!81 = !{ptr @.str.35, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/soc/samsung/spdif.c", i32 125, i32 2}
!83 = !{ptr @spdif_set_sysclk.__UNIQUE_ID_ddebug241, !82, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!84 = !{ptr @.str.36, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/soc/samsung/spdif.c", i32 287, i32 2}
!86 = !{ptr @spdif_shutdown.__UNIQUE_ID_ddebug244, !85, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!87 = !{ptr @.str.37, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../sound/soc/samsung/spdif.c", i32 188, i32 2}
!89 = !{ptr @spdif_hw_params.__UNIQUE_ID_ddebug243, !88, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!90 = !{ptr @.str.38, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/soc/samsung/spdif.c", i32 193, i32 3}
!92 = !{ptr @spdif_hw_params._entry, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @spdif_hw_params._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.40, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/soc/samsung/spdif.c", i32 216, i32 3}
!96 = !{ptr @spdif_hw_params._entry.39, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @spdif_hw_params._entry_ptr.41, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.43, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/soc/samsung/spdif.c", i32 225, i32 3}
!100 = !{ptr @spdif_hw_params._entry.42, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @spdif_hw_params._entry_ptr.44, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.46, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/soc/samsung/spdif.c", i32 258, i32 3}
!104 = !{ptr @spdif_hw_params._entry.45, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @spdif_hw_params._entry_ptr.47, !103, !"_entry_ptr", i1 false, i1 false}
!106 = distinct !{null, !107, !"spdif_sysclk_ratios", i1 false, i1 false}
!107 = !{!"../sound/soc/samsung/spdif.c", i32 172, i32 12}
!108 = !{ptr @.str.48, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/soc/samsung/spdif.c", i32 148, i32 2}
!110 = !{ptr @spdif_trigger.__UNIQUE_ID_ddebug242, !109, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!111 = !{ptr @.str.49, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../sound/soc/samsung/spdif.c", i32 110, i32 2}
!113 = !{ptr @spdif_snd_txctrl.__UNIQUE_ID_ddebug240, !112, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!114 = !{i32 1, !"wchar_size", i32 2}
!115 = !{i32 1, !"min_enum_size", i32 4}
!116 = !{i32 8, !"branch-target-enforcement", i32 0}
!117 = !{i32 8, !"sign-return-address", i32 0}
!118 = !{i32 8, !"sign-return-address-all", i32 0}
!119 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!120 = !{i32 7, !"uwtable", i32 1}
!121 = !{i32 7, !"frame-pointer", i32 2}
!122 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!123 = !{i64 2148732048, i64 2148732053, i64 2148732066, i64 2148732110, i64 2148732144, i64 2148732165}
!124 = !{i64 2039556}
!125 = !{i64 2154956772}
!126 = !{i64 2154957271}
!127 = !{i64 2154957776}
!128 = !{i64 2154958031}
!129 = !{i64 2039138}
!130 = !{i64 2154958521}
!131 = !{i64 2154958363}
!132 = !{i64 2154960955}
!133 = !{i64 2154961412}
!134 = !{i64 2154961862}
!135 = !{i64 2154929103}
!136 = !{i64 2154929350}
!137 = !{i64 2154952413}
!138 = !{i64 2154952890}
!139 = !{i64 2154953131}
!140 = !{i64 2154953614}
!141 = !{i64 2154953456}
!142 = !{i64 2154953856}
!143 = !{i64 2154941443}
!144 = !{i64 2154941920}
!145 = !{i64 2154942398}
!146 = !{i32 0, i32 33}
!147 = !{i64 2154948659}
!148 = !{i64 2154949043}
!149 = !{i64 2154949434}
!150 = !{i64 2154925484}
!151 = !{i64 2154925728}
!152 = !{i64 2154926187}
